#ifndef __ATTENTION_HPP__
#define __ATTENTION_HPP__

#include "util.hpp"
#include "datatypes.hpp"
#include "model.hpp"
#include "hardware.hpp"
#include "linear.hpp"

//定义了注意力机制中的四种线性变换操作
enum AttentionLinear {
    ATTN_Q = 0,//查询向量 (Query) 的线性变换
    ATTN_K = 1,//键向量 (Key) 的线性变换
    ATTN_V = 2,//值向量 (Value) 的线性变换
    ATTN_PROJ = 3,//投影向量 (Projection) 的线性变换
    NUM_ATTN_LINEAR//线性变换的数量
};

extern fm_t attn_scale;//存储注意力机制中的缩放因子

//计算q向量和k向量的矩阵乘法，并存储结果到 attn
void compute_q_matmul_k(
    patch_blocks_t q,
    patch_blocks_t k,
    qxk_out_t attn,
    softmax_info_t attn_softmax_info
);

//计算attn和v向量的矩阵乘法，并存储结果到 attn_matmul_v
void compute_attn_matmul_v(
    patch_blocks_t v,
    qxk_out_t attn,
    softmax_info_t attn_softmax_info,
    patch_blocks_t attn_matmul_v
);

#endif
