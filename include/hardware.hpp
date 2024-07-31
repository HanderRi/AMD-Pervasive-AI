#ifndef __HARDWARE_HPP__
#define __HARDWARE_HPP__

#include "datatypes.hpp"
#include "model.hpp"
#include "util.hpp"
#include "hls_vector.h"

constexpr unsigned int AXI_XFER_BIT_WIDTH = 256;
//AXI 总线传输的位宽为 256 位

constexpr unsigned int FEATURE_BLOCK_SIZE = (AXI_XFER_BIT_WIDTH / fm_t::width);
//特征块大小  AXI 总线的位宽除以定点数 fm_t 的位宽得到特征块大小

constexpr unsigned int NUM_FEATURE_BLOCKS = ceildiv(FEATURE_DIM, FEATURE_BLOCK_SIZE);
//特征维度需要的块数量 

// constexpr unsigned int LINEAR_IN_SIZE = 1 * FEATURE_BLOCK_SIZE;
constexpr unsigned int LINEAR_IN_SIZE = 2 * FEATURE_BLOCK_SIZE;
//定义线性输入大小为特征块大小的两倍

// constexpr unsigned int LINEAR_OUT_SIZE = 1 * FEATURE_BLOCK_SIZE;
constexpr unsigned int LINEAR_OUT_SIZE = 2 * FEATURE_BLOCK_SIZE;
//定义线性输出大小为特征块大小的两倍

constexpr unsigned int ATTN_MATMUL_PARALLEL = 4;
//定义注意力矩阵乘法并行度为 4

typedef hls::vector<fm_t, FEATURE_BLOCK_SIZE> fm_block_t;
//包含 FEATURE_BLOCK_SIZE 个 fm_t 类型的 HLS 向量

typedef fm_block_t fm_blocks_t[NUM_FEATURE_BLOCKS];
//包含NUM_FEATURE_BLOCKS 个 fm_block_t 类型的数组

typedef fm_blocks_t patch_blocks_t[NUM_PATCHES];
//包含 NUM_PATCHES 个 fm_blocks_t 类型的数组

typedef hls::vector<fm_t, LINEAR_IN_SIZE> linear_in_t;
typedef hls::vector<fm_t, LINEAR_OUT_SIZE> linear_out_t;
//线性层输入输出类型

typedef hls::vector<fm_t, roundup_p2(NUM_HEADS)> heads_t;
typedef hls::vector<heads_t, ATTN_MATMUL_PARALLEL> attn_parallel_t;


typedef heads_t qxk_out_t[ceildiv(NUM_PATCHES + ATTN_MATMUL_PARALLEL - 1, ATTN_MATMUL_PARALLEL)][NUM_PATCHES][ATTN_MATMUL_PARALLEL];
typedef hls::vector<fm_t, roundup_p2(NUM_HEADS * 2)> softmax_info_row_t;
typedef softmax_info_row_t softmax_info_t[NUM_PATCHES];

#endif
