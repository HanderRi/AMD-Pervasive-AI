// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================

extern "C" void AESL_WRAP_ViT_act (
int num_images,
char reload_on_time_weights,
volatile void* images,
volatile void* x,
volatile void* tmp1,
volatile void* tmp2,
volatile void* tmp3,
volatile void* tmp_hidden,
volatile void* attn,
volatile void* attn_softmax_info,
volatile void* patch_embed_weights,
volatile void* patch_embed_bias,
volatile void* pos_embed,
volatile void* attn_weights,
volatile void* attn_bias,
volatile void* vit_weights_l1,
volatile void* vit_bias_l1,
volatile void* vit_weights_l2,
volatile void* vit_bias_l2,
volatile void* norm_weights,
volatile void* norm_bias);
