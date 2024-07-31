//计算卷积 嵌入
#include "../include/conv.hpp"
#include <hls_stream.h>

//常量: �?个图像块的大�?
constexpr unsigned int IMAGE_BLOCK_SIZE = (AXI_XFER_BIT_WIDTH/ pixel_t::width);
//类型别名: �?个包含若干像素的图像�?
typedef hls::vector<pixel_t,IMAGE_BLOCK_SIZE> image_block_t;

//全局变量: patch嵌入的权�?
wt_patch_embed_t patch_embed_weights[FEATURE_DIM][INPUT_CHANNELS][PATCH_HEIGHT][PATCH_WIDTH];

//全局变量: patch嵌入的偏�?
wt_bias_t patch_embed_bias[FEATURE_DIM];


/// @brief 
/// @param image 输入图像
/// @param image_stream 存储图像数据块的hls�?
/// @param y_base 基准�? y �?
template<unsigned int y_step, unsigned int y_limit, unsigned int y_iters>
//将图像数据按块形式写入到 HLS �? image_stream �?
void patch_embed_accumulate_read(
    image_t image,
    hls::stream<image_block_t>& image_stream,
    unsigned int y_base
)
{
    #pragma HLS inline off
    //将输入图�? image 转换为指向三维数�? image_block_t 的指�?
    image_block_t (*image_ptr)[INPUT_HEIGHT][INPUT_WIDTH / IMAGE_BLOCK_SIZE] = reinterpret_cast<image_block_t (*)[INPUT_HEIGHT][INPUT_WIDTH / IMAGE_BLOCK_SIZE]>(image);

    FOR_EACH(channel, INPUT_CHANNELS)
//效果为for (unsigned int channel = 0; channel < INPUT_CHANNELS; channel++)
    {
        FOR_OFFSET(y)
//效果为for ( unsigned int y_offset = 0, y = y_base; y_offset < y_step; y_offset++, y++ ) if (y_limit % y_step == 0 || y < y_limit)
        {
            FOR_BLOCK(patch_x, INPUT_WIDTH / PATCH_WIDTH, IMAGE_BLOCK_SIZE / PATCH_WIDTH)
            {
                image_stream << image_ptr[channel][y][patch_x_block];
            }
        }
    }
}

template<unsigned int y_step, unsigned int y_limit, unsigned int y_iters>
//将图像数据块�? image_stream 中读取并进行卷积操作，计算输出特征图�? patches
void patch_embed_accumulate_compute(
    hls::stream<image_block_t>& image_stream,
    fm_blocks_t patches[INPUT_WIDTH / PATCH_WIDTH],
    unsigned int y_base
)
{
    #pragma HLS inline off
    #pragma HLS array_reshape variable=patches cyclic factor=(IMAGE_BLOCK_SIZE / PATCH_WIDTH) dim=1
    #pragma HLS array_reshape variable=patch_embed_weights cyclic factor=FEATURE_BLOCK_SIZE dim=1
    #pragma HLS array_reshape variable=patch_embed_weights cyclic factor=PATCH_WIDTH dim=4
    #pragma HLS array_reshape variable=patch_embed_bias cyclic factor=FEATURE_BLOCK_SIZE dim=1

    image_block_t image_block;

    FOR_EACH(channel, INPUT_CHANNELS)
    {
        FOR_OFFSET(y)
        {
            FOR_BLOCK(patch_x, INPUT_WIDTH / PATCH_WIDTH, IMAGE_BLOCK_SIZE / PATCH_WIDTH)
            {
                FOR_BLOCK(dim, FEATURE_DIM, FEATURE_BLOCK_SIZE)
                {
                    #pragma HLS pipeline

                    if (dim_block == 0)
                    {
                        #pragma HLS occurrence cycle=dim_iters

                        image_stream >> image_block;
                    }

                    if (channel == 0 && y_offset == 0)
                    {
                        fm_block_t bias_block;
                        FOR_OFFSET(dim)
                        {
                            bias_block[dim_offset] = patch_embed_bias[dim];
                        }

                        FOR_BLOCK(x, IMAGE_BLOCK_SIZE, PATCH_WIDTH)
                        {
                            unsigned int patch_x = patch_x_base + x_block;
                            patches[patch_x][dim_block] = bias_block;
                        }
                    }

                    FOR_BLOCK(x, IMAGE_BLOCK_SIZE, PATCH_WIDTH)
                    {
                        unsigned int patch_x = patch_x_base + x_block;
                        fm_block_t addend;
                        FOR_OFFSET(dim)
                        {
                            fm_t addend_dim = 0.0;
                            FOR_OFFSET(x)
                            {
                                addend_dim += image_block[x] * patch_embed_weights[dim][channel][y_offset][x_offset];
                            }
                            addend[dim_offset] = addend_dim;
                        }
                        patches[patch_x][dim_block] += addend;
                    }
                }
            }
        }
    }
}

template<unsigned int y_step, unsigned int y_limit, unsigned int y_iters>
//读取输入图像并计算特征图�?
void patch_embed_accumulate(
    image_t image,
    fm_blocks_t patches[INPUT_WIDTH / PATCH_WIDTH],
    unsigned int y_block
)
{
    #pragma HLS inline off
    #pragma HLS dataflow

    unsigned int y_base = y_block * PATCH_HEIGHT;
    hls::stream<image_block_t> image_stream;

    patch_embed_accumulate_read<y_step, y_limit, y_iters>(image, image_stream, y_base);
    patch_embed_accumulate_compute<y_step, y_limit, y_iters>(image_stream, patches, y_base);
}

//特征图块（patches）输出到�?终的输出数组 out 中，并加上位置嵌入（pos_embed�?
void patch_embed_output(
    fm_blocks_t patches[INPUT_WIDTH / PATCH_WIDTH],
    patch_blocks_t out,
    patch_blocks_t pos_embed,
    unsigned int y_block
)
{
    #pragma HLS inline off

    unsigned int patch_base = y_block * (INPUT_WIDTH / PATCH_WIDTH) + 1;
    // +1 因为第一个patch�? cls_token

    FOR_EACH(patch_x, INPUT_WIDTH / PATCH_WIDTH)
    {
        FOR_BLOCK(dim, FEATURE_DIM, FEATURE_BLOCK_SIZE)
        {
            #pragma HLS pipeline

            unsigned int patch = patch_base + patch_x;

            out[patch][dim_block] = patches[patch_x][dim_block] + pos_embed[patch][dim_block];
        }
    }
}


//计算输入图像的特征图块，并将其输出到 out 数组�?
void compute_patch_embed(image_t x, patch_blocks_t out, patch_blocks_t pos_embed)
{
    #pragma HLS inline off
    // 确保输入宽度是图像块大小的�?�数
    static_assert(INPUT_WIDTH % IMAGE_BLOCK_SIZE == 0, "INPUT_WIDTH must be a multiple of IMAGE_BLOCK_SIZE");
    // 确保图像块大小是补丁宽度的�?�数
    static_assert(IMAGE_BLOCK_SIZE % PATCH_WIDTH == 0, "IMAGE_BLOCK_SIZE must be a multiple of PATCH_WIDTH");

    // 遍历图像高度，每次处理一个补丁高度的�?
    FOR_BLOCK(y, INPUT_HEIGHT, PATCH_HEIGHT)
    {
        #pragma HLS dataflow
        //存储当前块的特征图块�?
        fm_blocks_t patches[INPUT_WIDTH / PATCH_WIDTH];

        // 调用 patch_embed_accumulate 函数计算当前块的特征图块
        patch_embed_accumulate<y_step, y_limit, y_iters>(x, patches, y_block);
        // 调用 patch_embed_output 函数将特征图块输出到�?终结�?
        patch_embed_output(patches, out, pos_embed, y_block);
    }

    // 处理 cls_token 的特征图块，添加位置嵌入
    FOR_BLOCK(dim, FEATURE_DIM, FEATURE_BLOCK_SIZE)
    {
        #pragma HLS pipeline

        out[0][dim_block] = pos_embed[0][dim_block];
    }
}