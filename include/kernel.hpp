#ifndef __KERNEL_HPP__
#define __KERNEL_HPP__

#include "gmp.h"
#define __gmp_const const

#include "util.hpp"
#include "datatypes.hpp"
#include "model.hpp"
#include "hardware.hpp"
#include "attention.hpp"
#include "layernorm.hpp"

extern "C"
{
    void ViT_act(
        unsigned int num_images,
        bool reload_one_time_weights,
        image_t images[],//输入图像
        patch_blocks_t x[],//特征块
        patch_blocks_t tmp1,
        patch_blocks_t tmp2,
        patch_blocks_t tmp3,
        fm_block_t tmp_hidden[NUM_PATCHES * ceildiv(VIT_HIDDEN_DIM, FEATURE_BLOCK_SIZE)],
        qxk_out_t attn,
        softmax_info_t attn_softmax_info,
        wt_patch_embed_t patch_embed_weights[FEATURE_DIM][INPUT_CHANNELS][PATCH_HEIGHT][PATCH_WIDTH],//Patch嵌入层的权重
        wt_bias_t patch_embed_bias[FEATURE_DIM],//Patch嵌入层的偏置
        patch_blocks_t pos_embed,//位置嵌入矩阵
        wt_linear_t attn_weights[NUM_LAYERS][NUM_ATTN_LINEAR][FEATURE_DIM][FEATURE_DIM],//注意力层的权重
        wt_attn_bias_t attn_bias[NUM_LAYERS][NUM_ATTN_LINEAR][FEATURE_DIM],//注意力层的偏置
        wt_linear_t vit_weights_l1[max_ab((NUM_LAYERS + 1) / 2, 1U)][VIT_HIDDEN_DIM][FEATURE_DIM],//ViT第一层全连接层权重
        wt_bias_t vit_bias_l1[max_ab((NUM_LAYERS + 1) / 2, 1U)][VIT_HIDDEN_DIM],//第一层全连接层偏置
        wt_linear_t vit_weights_l2[max_ab((NUM_LAYERS + 1) / 2, 1U)][FEATURE_DIM][VIT_HIDDEN_DIM],//ViT第二层全连接层权重
        wt_bias_t vit_bias_l2[max_ab((NUM_LAYERS + 1) / 2, 1U)][FEATURE_DIM],//ViT第二层全连接层偏置
        wt_norm_t norm_weights[NUM_LAYERS][NUM_LAYER_NORMS][FEATURE_DIM],//层归一化的权重
        wt_bias_t norm_bias[NUM_LAYERS][NUM_LAYER_NORMS][FEATURE_DIM]//层归一化的偏置
    );
}

#endif
