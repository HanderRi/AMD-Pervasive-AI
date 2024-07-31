#include "../include/attention.hpp"
#include "../include/linear.hpp"
#include <hls_math.h>
#include <hls_stream.h>

static constexpr unsigned int DIM_PER_HEAD = FEATURE_DIM / NUM_HEADS;

fm_t attn_scale;

//读取patch�? 写入到流�?
/// @brief 
/// @param x_stream 接收patch块的�?
/// @param x 图像�?
void read_x(hls::stream<fm_block_t>& x_stream, patch_blocks_t x)
{
    #pragma HLS inline off

    FOR_EACH(patch, NUM_PATCHES)
    {
        FOR_BLOCK(in_dim, FEATURE_DIM, FEATURE_BLOCK_SIZE)
        {
            #pragma HLS pipeline

            x_stream << x[patch][in_dim_block];
        }
    }
}

//可用于读取key �? value 向量 写入流中
/// @brief 
/// @param k_stream 接收key value向量的流
/// @param k k v向量
void read_k_v(hls::stream<fm_block_t>& k_stream, patch_blocks_t k)
{
    #pragma HLS inline off

    FOR_BLOCK(q_patch, NUM_PATCHES + ATTN_MATMUL_PARALLEL - 1, ATTN_MATMUL_PARALLEL)
    {
        FOR_EACH(k_patch, NUM_PATCHES)
        {
            FOR_BLOCK(dim, FEATURE_DIM, FEATURE_BLOCK_SIZE)
            {
                #pragma HLS pipeline
                constexpr unsigned int overflow_iters = q_patch_limit % q_patch_step;
                if (overflow_iters > 0 && q_patch_base >= NUM_PATCHES && k_patch >= overflow_iters) return;//�?测是否超出边�?

                k_stream << k[k_patch][dim_block];//�? k 中的每个补丁的特征维度块写入�? k_stream
            }
        }
    }
}

//计算Q*K 注意力得�?
/// @brief 
/// @param attn_stream 存储结果的流(注意力矩�? 结果用于softmax)
/// @param q_stream 保存q向量的流
/// @param k_stream 保存k向量的流
void compute_q_matmul_k(
    hls::stream<attn_parallel_t>& attn_stream,
    hls::stream<fm_block_t>& q_stream,
    hls::stream<fm_block_t>& k_stream
)
{
    #pragma HLS inline off

    fm_blocks_t q_blocks[ATTN_MATMUL_PARALLEL];
    #pragma HLS array_partition variable=q_blocks complete dim=1

    fm_t attn_blocks[ATTN_MATMUL_PARALLEL][NUM_HEADS];
    #pragma HLS array_partition variable=attn_blocks complete dim=1
    #pragma HLS array_partition variable=attn_blocks complete dim=2

    static_assert(ATTN_MATMUL_PARALLEL < NUM_PATCHES, "ATTN_MATMUL_PARALLEL must be less than NUM_PATCHES");

    FOR_BLOCK(q_patch, NUM_PATCHES + ATTN_MATMUL_PARALLEL - 1, ATTN_MATMUL_PARALLEL)
    {
        FOR_EACH(k_patch, NUM_PATCHES)
        {
            FOR_BLOCK(dim, FEATURE_DIM, FEATURE_BLOCK_SIZE)
            {
                #pragma HLS pipeline
                constexpr unsigned int overflow_iters = q_patch_limit % q_patch_step;
                if (overflow_iters > 0 && q_patch_base >= NUM_PATCHES && k_patch >= overflow_iters) return;

                if (k_patch < ATTN_MATMUL_PARALLEL && q_patch_base + k_patch < NUM_PATCHES)
                {
                    q_stream >> q_blocks[k_patch][dim_block];
                }

                fm_block_t k_block;
                k_stream >> k_block;

                if (dim_block == 0)
                {
                    #pragma HLS occurrence cycle=dim_iters

                    FOR_OFFSET_UNSAFE(q_patch)
                    {
                        FOR_EACH(head, NUM_HEADS)
                        {
                            attn_blocks[q_patch_offset][head] = 0;//初始化注意力块为0
                        }
                    }
                }

                static_assert(DIM_PER_HEAD % FEATURE_BLOCK_SIZE == 0, "DIM_PER_HEAD must be a multiple of FEATURE_BLOCK_SIZE");//确保每个头的维度是特征块大小的整数�??
                unsigned int head = dim_block / (DIM_PER_HEAD / FEATURE_BLOCK_SIZE);
                FOR_OFFSET_UNSAFE(q_patch)
                {
                    fm_block_t q_block = q_blocks[q_patch_offset][dim_block];

                    fm_t attn_addend = 0;
                    FOR_OFFSET(dim)
                    {
                        attn_addend += q_block[dim_offset] * k_block[dim_offset];
                    }
                    attn_addend *= attn_scale; //缩放
                    attn_blocks[q_patch_offset][head] += attn_addend;
                }

                if (dim_block == dim_iters - 1)
                {
                    #pragma HLS occurrence cycle=dim_iters

                    attn_parallel_t finalized;//存储�?终的注意力块
                    FOR_OFFSET_UNSAFE(q_patch)
                    {
                        FOR_EACH(head, NUM_HEADS)
                        {
                            finalized[q_patch_offset][head] = attn_blocks[q_patch_offset][head];
                        }
                    }
                    attn_stream << finalized;
                }
            }
        }
    }
}

//softmax 的计算和注意力分数的规范�? 写入attn_stream
/// @brief 
/// @param qxk_stream qk点积结果的流
/// @param attn_stream 注意力块的流
/// @param attn_softmax_info_stream 存储softmax信息的流
void finalize_attn(
    hls::stream<attn_parallel_t>& qxk_stream,
    hls::stream<heads_t>& attn_stream,
    hls::stream<softmax_info_row_t>& attn_softmax_info_stream
)
{
    #pragma HLS inline off

    fm_t softmax_sums[ATTN_MATMUL_PARALLEL][NUM_HEADS];//存储softmax�?
    #pragma HLS array_partition variable=softmax_sums complete dim=1
    #pragma HLS array_partition variable=softmax_sums complete dim=2
    fm_t softmax_biases[ATTN_MATMUL_PARALLEL][NUM_HEADS];//存储 softmax 偏置
    #pragma HLS array_partition variable=softmax_biases complete dim=1
    #pragma HLS array_partition variable=softmax_biases complete dim=2

    heads_t attn_blocks[ATTN_MATMUL_PARALLEL];
    #pragma HLS array_partition variable=attn_blocks complete dim=1

    FOR_BLOCK(q_patch_unadjusted, NUM_PATCHES + ATTN_MATMUL_PARALLEL - 1, ATTN_MATMUL_PARALLEL)
    {
        FOR_EACH(k_patch, NUM_PATCHES)
        {
            FOR_OFFSET_UNSAFE(q_patch_unadjusted)
            {
                #pragma HLS pipeline
                #pragma HLS dependence variable=softmax_sums inter true distance=q_patch_unadjusted_step
                #pragma HLS dependence variable=softmax_biases inter true distance=q_patch_unadjusted_step
                constexpr unsigned int overflow_iters = q_patch_unadjusted_limit % q_patch_unadjusted_step;
                if (overflow_iters > 0 && q_patch_unadjusted_base >= NUM_PATCHES && k_patch >= overflow_iters) return;

                if (q_patch_unadjusted_offset == 0)
                {
                    #pragma HLS occurrence cycle=q_patch_unadjusted_step
                    attn_parallel_t attn_blocks_packed;
                    qxk_stream >> attn_blocks_packed;
                    FOR_EACH(unpack_idx, ATTN_MATMUL_PARALLEL)
                    {
                        attn_blocks[unpack_idx] = attn_blocks_packed[unpack_idx];
                    }
                }

                softmax_info_row_t softmax_info_row;
                FOR_EACH(head, NUM_HEADS)
                {
                    fm_t attn_head = attn_blocks[q_patch_unadjusted_offset][head];
                    fm_t curr_softmax_sum = 0.0;
                    fm_t curr_softmax_bias = ap_fixed_min<fm_t>();
                    if (k_patch != q_patch_unadjusted_offset)
                    {
                        curr_softmax_sum = softmax_sums[q_patch_unadjusted_offset][head];
                        curr_softmax_bias = softmax_biases[q_patch_unadjusted_offset][head];
                    }

                    auto exp_arg_noclip = curr_softmax_bias - attn_head;
                    bool is_new_bias = hls::signbit(exp_arg_noclip);
                    fm_t exp_arg = (is_new_bias) ? fm_t(exp_arg_noclip) : fm_t(-exp_arg_noclip);
                    fm_t exp = hls::exp(exp_arg);
                    if (is_new_bias)
                    {
                        curr_softmax_sum *= exp;
                        curr_softmax_sum += 1;
                        curr_softmax_bias = attn_head;
                    }
                    else
                    {
                        curr_softmax_sum += exp;
                    }

                    fm_t curr_softmax_sum_recip = hls::recip(curr_softmax_sum);//当前 softmax 和的倒数
                    softmax_sums[q_patch_unadjusted_offset][head] = curr_softmax_sum;//更新 softmax �?
                    softmax_biases[q_patch_unadjusted_offset][head] = curr_softmax_bias;//更新 softmax 偏置
                    softmax_info_row[head * 2] = curr_softmax_sum_recip;//存储当前 softmax 和的倒数
                    softmax_info_row[head * 2 + 1] = curr_softmax_bias;//存储当前 softmax 偏置
                }

                unsigned int q_patch = (k_patch >= q_patch_unadjusted_offset) ? q_patch_unadjusted : q_patch_unadjusted - ATTN_MATMUL_PARALLEL;
                bool q_patch_valid = ((k_patch >= q_patch_unadjusted_offset) || (q_patch_unadjusted_block > 0)) && (q_patch < NUM_PATCHES);
                if (q_patch_valid && k_patch == ((q_patch_unadjusted_offset == 0) ? (NUM_PATCHES - 1) : (q_patch_unadjusted_offset - 1)))//查询补丁有效且键补丁等于未调整的查询补丁偏移
                {
                    #pragma HLS occurrence cycle=(NUM_PATCHES + 1)
                    attn_softmax_info_stream << softmax_info_row;
                }
                attn_stream << attn_blocks[q_patch_unadjusted_offset];
            }
        }
    }
}

void write_attn(
    hls::stream<heads_t>& attn_stream,
    qxk_out_t attn
)
{
    #pragma HLS inline off

    constexpr unsigned int q_patch_limit = NUM_PATCHES + ATTN_MATMUL_PARALLEL - 1;//定义查询补丁限制
    constexpr unsigned int q_patch_step = ATTN_MATMUL_PARALLEL;//定义查询补丁步长
    constexpr unsigned int q_patch_block_limit = q_patch_limit / q_patch_step;//查询补丁块限�?
    constexpr unsigned int overflow_iters = q_patch_limit % q_patch_step;//溢出迭代次数

    FOR_EACH(q_patch_block, q_patch_block_limit)
    {
        FOR_EACH(k_patch, NUM_PATCHES)
        {
            FOR_EACH(q_patch_offset, q_patch_step)
            {
                #pragma HLS pipeline
                attn_stream >> attn[q_patch_block][k_patch][q_patch_offset];
            }
        }
    }
    FOR_EACH(k_patch, overflow_iters)
    {
        FOR_EACH(q_patch_offset, q_patch_step)
        {
            #pragma HLS pipeline
            attn_stream >> attn[q_patch_block_limit][k_patch][q_patch_offset];
        }
    }
}

//将流中的softmax信息写入attn_softmax_info
/// @brief 
/// @param attn_softmax_info_stream 存储softmax信息的流
/// @param attn_softmax_info 接收流数�?
void write_attn_softmax_info(
    hls::stream<softmax_info_row_t>& attn_softmax_info_stream,
    softmax_info_t attn_softmax_info
)
{
    #pragma HLS inline off

    FOR_EACH(q_patch, NUM_PATCHES)
    {
        #pragma HLS pipeline
        attn_softmax_info_stream >> attn_softmax_info[q_patch];
    }
}

//完整计算注意力块 Q*K softmax
void compute_q_matmul_k(
    patch_blocks_t q,
    patch_blocks_t k,
    qxk_out_t attn,
    softmax_info_t attn_softmax_info
)
{
    #pragma HLS inline off
    #pragma HLS dataflow

    hls::stream<fm_block_t> q_stream("q_stream");
    hls::stream<fm_block_t> k_stream("k_stream");
    hls::stream<attn_parallel_t> qxk_stream("qxk_stream");
    hls::stream<heads_t> attn_stream("attn_stream");
    hls::stream<softmax_info_row_t> attn_softmax_info_stream("attn_softmax_info_stream");

    read_x(q_stream, q);//读取query块到�?
    read_k_v(k_stream, k);//读取key块到�?
    compute_q_matmul_k(qxk_stream, q_stream, k_stream);//计算Q*K
    finalize_attn(qxk_stream, attn_stream, attn_softmax_info_stream);//softmax计算
    write_attn(attn_stream, attn);
    write_attn_softmax_info(attn_softmax_info_stream, attn_softmax_info);
}

//将attn数据读入attn_stream
void read_attn(
    hls::stream<heads_t>& attn_stream,
    qxk_out_t attn
)
{
    #pragma HLS inline off

    constexpr unsigned int q_patch_limit = NUM_PATCHES + ATTN_MATMUL_PARALLEL - 1;
    constexpr unsigned int q_patch_step = ATTN_MATMUL_PARALLEL;
    constexpr unsigned int q_patch_block_limit = q_patch_limit / q_patch_step;
    constexpr unsigned int overflow_iters = q_patch_limit % q_patch_step;

    FOR_EACH(q_patch_block, q_patch_block_limit)
    {
        FOR_EACH(k_patch, NUM_PATCHES)
        {
            FOR_EACH(q_patch_offset, q_patch_step)
            {
                #pragma HLS pipeline
                attn_stream << attn[q_patch_block][k_patch][q_patch_offset];
            }
        }
    }
    FOR_EACH(k_patch, overflow_iters)
    {
        FOR_EACH(q_patch_offset, q_patch_step)
        {
            #pragma HLS pipeline
            attn_stream << attn[q_patch_block_limit][k_patch][q_patch_offset];
        }
    }
}

//将attn_stream打包到qxk_out_stream
void prepare_attn(
    hls::stream<heads_t>& attn_stream,
    hls::stream<attn_parallel_t>& qxk_out_stream
)
{
    #pragma HLS inline off

    heads_t attn_blocks[ATTN_MATMUL_PARALLEL];
    #pragma HLS array_partition variable=attn_blocks complete dim=1

    FOR_BLOCK(q_patch, NUM_PATCHES + ATTN_MATMUL_PARALLEL - 1, ATTN_MATMUL_PARALLEL)
    {
        FOR_EACH(k_patch, NUM_PATCHES)
        {
            FOR_OFFSET_UNSAFE(q_patch)
            {
                #pragma HLS pipeline
                constexpr unsigned int overflow_iters = q_patch_limit % q_patch_step;
                if (overflow_iters > 0 && q_patch_base >= NUM_PATCHES && k_patch >= overflow_iters) return;

                attn_stream >> attn_blocks[q_patch_offset];
                if (q_patch_offset == q_patch_step - 1)
                {
                    #pragma HLS occurrence cycle=q_patch_step
                    attn_parallel_t attn_packed;
                    FOR_EACH(pack_idx, ATTN_MATMUL_PARALLEL)
                    {
                        attn_packed[pack_idx] = attn_blocks[pack_idx];
                    }
                    qxk_out_stream << attn_packed;
                }
            }
        }
    }
}

//将attn_softmax_info读入attn_softmax_info_stream
void read_attn_softmax_info(
    hls::stream<softmax_info_row_t>& attn_softmax_info_stream,
    softmax_info_t attn_softmax_info
)
{
    #pragma HLS inline off

    FOR_EACH(q_patch, NUM_PATCHES)
    {
        #pragma HLS pipeline
        attn_softmax_info_stream << attn_softmax_info[q_patch];
    }
}

//将attn_matmul_v_stream写出到attn_matmul_v
void write_attn_matmul_v(
    patch_blocks_t attn_matmul_v,
    hls::stream<fm_block_t>& attn_matmul_v_stream
)
{
    #pragma HLS inline off

    FOR_EACH(patch, NUM_PATCHES)
    {
        FOR_BLOCK(dim, FEATURE_DIM, FEATURE_BLOCK_SIZE)
        {
            #pragma HLS pipeline

            attn_matmul_v_stream >> attn_matmul_v[patch][dim_block];
        }
    }
}

//计算MxV
void compute_attn_matmul_v(
    hls::stream<fm_block_t>& attn_matmul_v_stream,
    hls::stream<attn_parallel_t>& qxk_out_stream,
    hls::stream<softmax_info_row_t>& attn_softmax_info_stream,
    hls::stream<fm_block_t>& v_stream
)
{
    #pragma HLS inline off

    fm_blocks_t acc_blocks[ATTN_MATMUL_PARALLEL];
    #pragma HLS array_partition variable=acc_blocks complete dim=1
    fm_t attn[ATTN_MATMUL_PARALLEL][NUM_HEADS];
    #pragma HLS array_partition variable=attn complete dim=1
    #pragma HLS array_partition variable=attn complete dim=2
    softmax_info_row_t attn_softmax_info[ATTN_MATMUL_PARALLEL];
    #pragma HLS array_partition variable=attn_softmax_info complete dim=1

    FOR_BLOCK(attn_patch, NUM_PATCHES + ATTN_MATMUL_PARALLEL - 1, ATTN_MATMUL_PARALLEL)
    {
        FOR_EACH(v_patch, NUM_PATCHES)
        {
            FOR_BLOCK(dim, FEATURE_DIM, FEATURE_BLOCK_SIZE)
            {
                #pragma HLS pipeline
                constexpr unsigned int overflow_iters = attn_patch_limit % attn_patch_step;
                if (overflow_iters > 0 && attn_patch_base >= NUM_PATCHES && v_patch >= overflow_iters) return;

                if (dim_block == 0)
                {
                    #pragma HLS occurrence cycle=dim_iters

                    if (v_patch < ATTN_MATMUL_PARALLEL && attn_patch_base + v_patch < NUM_PATCHES)
                    {
                        attn_softmax_info_stream >> attn_softmax_info[v_patch];
                    }

                    attn_parallel_t attn_packed;
                    qxk_out_stream >> attn_packed;
                    FOR_OFFSET_UNSAFE(attn_patch)
                    {
                        FOR_EACH(head, NUM_HEADS)
                        {
                            fm_t softmax_sum_recip = attn_softmax_info[attn_patch_offset][head * 2];
                            fm_t softmax_bias = attn_softmax_info[attn_patch_offset][head * 2 + 1];
                            attn[attn_patch_offset][head] = (
                                hls::exp(fm_t(attn_packed[attn_patch_offset][head] - softmax_bias))
                                * softmax_sum_recip
                            );
                        }
                    }
                }

                fm_block_t v_block;
                v_stream >> v_block;

                static_assert(DIM_PER_HEAD % FEATURE_BLOCK_SIZE == 0, "DIM_PER_HEAD must be a multiple of FEATURE_BLOCK_SIZE");
                unsigned int head = dim_block / (DIM_PER_HEAD / FEATURE_BLOCK_SIZE);
                FOR_OFFSET_UNSAFE(attn_patch)
                {
                    fm_block_t acc_block;
                    FOR_OFFSET(dim)
                    {
                        acc_block[dim_offset] = v_block[dim_offset] * attn[attn_patch_offset][head];
                    }

                    if (v_patch != attn_patch_offset)
                    {
                        acc_block += acc_blocks[attn_patch_offset][dim_block];
                    }
                    acc_blocks[attn_patch_offset][dim_block] = acc_block;
                }

                if (v_patch == NUM_PATCHES - 1)//�?后一个patch
                {
                    attn_matmul_v_stream << acc_blocks[0][dim_block];
                }
                else if (v_patch < ATTN_MATMUL_PARALLEL - 1 && attn_patch_block > 0)
                {
                    attn_matmul_v_stream << acc_blocks[v_patch + 1][dim_block];
                }
            }
        }
    }
}

void compute_attn_matmul_v(
    patch_blocks_t v,
    qxk_out_t attn,
    softmax_info_t attn_softmax_info,
    patch_blocks_t attn_matmul_v
)
{
    #pragma HLS inline off
    #pragma HLS dataflow

    hls::stream<fm_block_t> attn_matmul_v_stream("attn_matmul_v_stream");
    hls::stream<heads_t> attn_stream("attn_stream");
    hls::stream<attn_parallel_t> qxk_out_stream("qxk_out_stream");
    hls::stream<softmax_info_row_t> attn_softmax_info_stream("attn_softmax_info_stream");
    hls::stream<fm_block_t> v_stream("v_stream");

    read_k_v(v_stream, v);
    read_attn(attn_stream, attn);
    read_attn_softmax_info(attn_softmax_info_stream, attn_softmax_info);
    prepare_attn(attn_stream, qxk_out_stream);
    compute_attn_matmul_v(attn_matmul_v_stream, qxk_out_stream, attn_softmax_info_stream, v_stream);
    write_attn_matmul_v(attn_matmul_v, attn_matmul_v_stream);
}
