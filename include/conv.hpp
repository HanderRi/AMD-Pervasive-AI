#ifndef __CONV_HPP__
#define __CONV_HPP__

#include "util.hpp"
#include "datatypes.hpp"
#include "model.hpp"
#include "hardware.hpp"

extern wt_patch_embed_t patch_embed_weights[FEATURE_DIM][INPUT_CHANNELS][PATCH_HEIGHT][PATCH_WIDTH];
//外部变量 用于补丁嵌入的权重 四维数组

extern wt_bias_t patch_embed_bias[FEATURE_DIM];
//外部变量 用于补丁嵌入的偏置 一维数组

/// @brief 
/// @param x 输入图像
/// @param out 输出的补丁嵌入数据
/// @param pos_embed 位置嵌入数据
void compute_patch_embed(image_t x, patch_blocks_t out, patch_blocks_t pos_embed);
//计算补丁嵌入 
#endif