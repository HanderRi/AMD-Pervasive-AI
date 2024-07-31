#ifndef __LINEAR_HPP__
#define __LINEAR_HPP__

#include "util.hpp"
#include "datatypes.hpp"
#include "model.hpp"
#include "hardware.hpp"
#include "hls_stream.h"

//线性层输入维度最大值
constexpr unsigned int MAX_LINEAR_IN_DIM = VIT_HIDDEN_DIM;
//线性层输出维度最大值
constexpr unsigned int MAX_LINEAR_OUT_DIM = VIT_HIDDEN_DIM;
//线性层维度空间
constexpr unsigned int MAX_LINEAR_DIM_PRODUCT = VIT_HIDDEN_DIM * FEATURE_DIM;

//偏置的类型 使用最大位宽和整数位宽来定义
typedef ap_fixed<max_ab(wt_attn_bias_t::width - wt_attn_bias_t::iwidth, wt_bias_t::width - wt_bias_t::iwidth) + max_ab(wt_attn_bias_t::iwidth, wt_bias_t::iwidth), max_ab(wt_attn_bias_t::iwidth, wt_bias_t::iwidth)> wt_wbias_t;

//线性层的权重块，尺寸为 LINEAR_OUT_SIZE x LINEAR_IN_SIZE
typedef hls::vector<hls::vector<wt_linear_t, LINEAR_IN_SIZE>, LINEAR_OUT_SIZE> wt_linear_block_t;

//线性层偏置块
typedef hls::vector<wt_wbias_t, LINEAR_OUT_SIZE> wt_bias_block_t;

//外部变量声明 用于存储线性层的权重和偏置数据 分别用于不同的计算阶段（ping-pong 机制）
extern wt_linear_block_t linear_weights_ping[ceildiv(MAX_LINEAR_DIM_PRODUCT, LINEAR_IN_SIZE * LINEAR_OUT_SIZE)];
extern wt_bias_block_t linear_bias_ping[ceildiv(MAX_LINEAR_OUT_DIM, LINEAR_OUT_SIZE)];
extern wt_linear_block_t linear_weights_pong[ceildiv(MAX_LINEAR_DIM_PRODUCT, LINEAR_IN_SIZE * LINEAR_OUT_SIZE)];
extern wt_bias_block_t linear_bias_pong[ceildiv(MAX_LINEAR_OUT_DIM, LINEAR_OUT_SIZE)];

//加载线性层的权重
/// @brief 
/// @param weights_dst 目标权重数组
/// @param weights_src 源权重数组
/// @param out_dim 输出维度
/// @param in_dim 输入维度
void load_linear_weights(
    wt_linear_block_t weights_dst[ceildiv(MAX_LINEAR_DIM_PRODUCT, LINEAR_IN_SIZE * LINEAR_OUT_SIZE)],
    wt_linear_t weights_src[],
    unsigned int out_dim,
    unsigned int in_dim
);

//加载线性层偏置
/// @brief 
/// @tparam T 
/// @param bias_dst 目标偏置数组
/// @param bias_src 源偏置数组
/// @param out_dim 输出维度
template<typename T>
void load_linear_bias(
    wt_bias_block_t bias_dst[ceildiv(MAX_LINEAR_OUT_DIM, LINEAR_OUT_SIZE)],
    T bias_src[],
    unsigned int out_dim
);

//计算线性变换
/// @brief 
/// @param dst 目标特征图数组
/// @param src 源特征图数组
/// @param weights 权重数组
/// @param bias 偏置数组
/// @param out_dim 输出维度
/// @param in_dim 输入维度
/// @param use_gelu 控制计算行为
void compute_linear(
    fm_block_t dst[],
    const fm_block_t src[],
    const wt_linear_block_t weights[],
    const wt_bias_block_t bias[],
    unsigned int out_dim,
    unsigned int in_dim,
    bool use_gelu
);

#endif