#ifndef __DATATYPES_HPP__
#define __DATATYPES_HPP__

#include "model.hpp"
#include <ap_fixed.h>
#include <hls_vector.h>

typedef ap_fixed<32, 10> fm_t;
// typedef ap_fixed<16, 10> fm_t;
//特征映射 定点数 32位 10位用于整数部分，其余22位用于小数部分

// typedef ap_fixed<16, 2> wt_linear_t;
typedef ap_fixed<16, 2> wt_linear_t;
//线性层权重 定点数 16位 2位用于整数部分

typedef ap_fixed<16, 7> wt_attn_bias_t;
//注意力层的偏置 定点数 16位 7位用于整数部分

typedef ap_fixed<16, 5> wt_bias_t;
//一般偏置 定点数 16位 5位用于整数部分

typedef ap_fixed<16, 5> wt_norm_t;
//归一化层权重 定点数 16位 5位用于整数部分

typedef ap_fixed<16, 0> wt_patch_embed_t;
//补丁嵌入的权重 定点数 16位 所有16位用于小数部分

typedef ap_ufixed<8, 0> pixel_t;
//图像的像素值 无符号定点数 8位的定点数 所有8位用于小数部分

typedef pixel_t image_t[INPUT_CHANNELS][INPUT_HEIGHT][INPUT_WIDTH];
//图像数据 三维数组 每个元素是'pixel_t'类型
#endif
