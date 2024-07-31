; ModuleID = 'E:/DeiTCPP/Deit_cpp/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_uint<8>" = type { %"struct.ap_int_base<8, false>" }
%"struct.ap_int_base<8, false>" = type { %"struct.ssdm_int<8, false>" }
%"struct.ssdm_int<8, false>" = type { i8 }
%"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>" = type { %"struct.std::array<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>" }
%"struct.std::array<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>" = type { [8 x %"struct.ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>"] }
%"struct.ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<32, 10, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<32, 10, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<32, true>" }
%"struct.ssdm_int<32, true>" = type { i32 }
%"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 4>" = type { %"struct.std::array<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 4>" }
%"struct.std::array<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 4>" = type { [4 x %"struct.ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>"] }
%"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<16, 2, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<16, 2, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<16, true>" }
%"struct.ssdm_int<16, true>" = type { i16 }

; Function Attrs: noinline
define void @apatb_ViT_act_ir(i32 %num_images, i1 zeroext %reload_on_time_weights, [3 x [128 x [256 x %"struct.ap_uint<8>"]]]* noalias nocapture nonnull readonly %images, [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]* noalias nocapture nonnull %x, [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]* noalias nocapture nonnull "fpga.decayed.dim.hint"="129" %tmp1, [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]* noalias nocapture nonnull "fpga.decayed.dim.hint"="129" %tmp2, [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]* noalias nonnull "fpga.decayed.dim.hint"="129" %tmp3, %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"* noalias nocapture nonnull align 32 "fpga.decayed.dim.hint"="12384" %tmp_hidden, [129 x [4 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 4>"]]* noalias nocapture nonnull "fpga.decayed.dim.hint"="33" %attn, %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"* noalias nocapture nonnull align 32 "fpga.decayed.dim.hint"="129" %attn_softmax_info, [3 x [16 x [16 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="192" %patch_embed_weights, %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="192" %patch_embed_bias, [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]* noalias nonnull readonly "fpga.decayed.dim.hint"="129" %pos_embed, [4 x [192 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="12" %attn_weights, [4 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="12" %attn_bias, [768 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="6" %vit_weights_l1, [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="6" %vit_bias_l1, [192 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="6" %vit_weights_l2, [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="6" %vit_bias_l2, [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="12" %norm_weights, [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="12" %norm_bias) local_unnamed_addr #0 {
entry:
  %malloccall = call i8* @malloc(i64 98304)
  %images_copy = bitcast i8* %malloccall to [1 x [3 x [128 x [256 x i8]]]]*
  %malloccall1 = call i8* @malloc(i64 99072)
  %x_copy = bitcast i8* %malloccall1 to [1 x [129 x [24 x i256]]]*
  %malloccall2 = call i8* @malloc(i64 99072)
  %tmp1_copy = bitcast i8* %malloccall2 to [129 x [24 x i256]]*
  %malloccall3 = call i8* @malloc(i64 99072)
  %tmp2_copy = bitcast i8* %malloccall3 to [129 x [24 x i256]]*
  %malloccall4 = call i8* @malloc(i64 99072)
  %tmp3_copy = bitcast i8* %malloccall4 to [129 x [24 x i256]]*
  %malloccall5 = call i8* @malloc(i64 396288)
  %tmp_hidden_copy = bitcast i8* %malloccall5 to [12384 x i256]*
  %malloccall6 = call i8* @malloc(i64 272448)
  %attn_copy = bitcast i8* %malloccall6 to [33 x [129 x [4 x i128]]]*
  %malloccall7 = call i8* @malloc(i64 4128)
  %attn_softmax_info_copy = bitcast i8* %malloccall7 to [129 x i256]*
  %malloccall8 = tail call i8* @malloc(i64 294912)
  %patch_embed_weights_copy = bitcast i8* %malloccall8 to [192 x [3 x [16 x [16 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]]*
  %patch_embed_bias_copy = alloca [192 x i16], align 512
  %malloccall9 = call i8* @malloc(i64 99072)
  %pos_embed_copy = bitcast i8* %malloccall9 to [129 x [24 x i256]]*
  %malloccall10 = tail call i8* @malloc(i64 3538944)
  %attn_weights_copy = bitcast i8* %malloccall10 to [12 x [4 x [192 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]]*
  %malloccall11 = tail call i8* @malloc(i64 18432)
  %attn_bias_copy = bitcast i8* %malloccall11 to [12 x [4 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]*
  %malloccall12 = tail call i8* @malloc(i64 1769472)
  %vit_weights_l1_copy = bitcast i8* %malloccall12 to [6 x [768 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]*
  %malloccall13 = tail call i8* @malloc(i64 9216)
  %vit_bias_l1_copy = bitcast i8* %malloccall13 to [6 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]*
  %malloccall14 = tail call i8* @malloc(i64 1769472)
  %vit_weights_l2_copy = bitcast i8* %malloccall14 to [6 x [192 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]*
  %vit_bias_l2_copy = alloca [6 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]], align 512
  %malloccall15 = tail call i8* @malloc(i64 9216)
  %norm_weights_copy = bitcast i8* %malloccall15 to [12 x [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]*
  %malloccall16 = tail call i8* @malloc(i64 9216)
  %norm_bias_copy = bitcast i8* %malloccall16 to [12 x [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]*
  %0 = bitcast [3 x [128 x [256 x %"struct.ap_uint<8>"]]]* %images to [1 x [3 x [128 x [256 x %"struct.ap_uint<8>"]]]]*
  %1 = bitcast [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]* %x to [1 x [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]]*
  %2 = bitcast [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]* %tmp1 to [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]*
  %3 = bitcast [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]* %tmp2 to [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]*
  %4 = bitcast [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]* %tmp3 to [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]*
  %5 = bitcast %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"* %tmp_hidden to [12384 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]*
  %6 = bitcast [129 x [4 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 4>"]]* %attn to [33 x [129 x [4 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 4>"]]]*
  %7 = bitcast %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"* %attn_softmax_info to [129 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]*
  %8 = bitcast [3 x [16 x [16 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %patch_embed_weights to [192 x [3 x [16 x [16 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]]*
  %9 = bitcast %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"* %patch_embed_bias to [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]*
  %10 = bitcast [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]* %pos_embed to [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]*
  %11 = bitcast [4 x [192 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %attn_weights to [12 x [4 x [192 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]]*
  %12 = bitcast [4 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* %attn_bias to [12 x [4 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]*
  %13 = bitcast [768 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* %vit_weights_l1 to [6 x [768 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]*
  %14 = bitcast [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* %vit_bias_l1 to [6 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]*
  %15 = bitcast [192 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* %vit_weights_l2 to [6 x [192 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]*
  %16 = bitcast [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* %vit_bias_l2 to [6 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]*
  %17 = bitcast [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* %norm_weights to [12 x [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]*
  %18 = bitcast [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* %norm_bias to [12 x [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]*
  call fastcc void @copy_in([1 x [3 x [128 x [256 x %"struct.ap_uint<8>"]]]]* nonnull %0, [1 x [3 x [128 x [256 x i8]]]]* %images_copy, [1 x [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]]* nonnull %1, [1 x [129 x [24 x i256]]]* %x_copy, [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]* nonnull %2, [129 x [24 x i256]]* %tmp1_copy, [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]* nonnull %3, [129 x [24 x i256]]* %tmp2_copy, [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]* nonnull %4, [129 x [24 x i256]]* %tmp3_copy, [12384 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]* nonnull align 32 %5, [12384 x i256]* %tmp_hidden_copy, [33 x [129 x [4 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 4>"]]]* nonnull %6, [33 x [129 x [4 x i128]]]* %attn_copy, [129 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]* nonnull align 32 %7, [129 x i256]* %attn_softmax_info_copy, [192 x [3 x [16 x [16 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]]* nonnull %8, [192 x [3 x [16 x [16 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]]* %patch_embed_weights_copy, [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* nonnull %9, [192 x i16]* nonnull align 512 %patch_embed_bias_copy, [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]* nonnull %10, [129 x [24 x i256]]* %pos_embed_copy, [12 x [4 x [192 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]]* nonnull %11, [12 x [4 x [192 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]]* %attn_weights_copy, [12 x [4 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* nonnull %12, [12 x [4 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %attn_bias_copy, [6 x [768 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* nonnull %13, [6 x [768 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %vit_weights_l1_copy, [6 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* nonnull %14, [6 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* %vit_bias_l1_copy, [6 x [192 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* nonnull %15, [6 x [192 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %vit_weights_l2_copy, [6 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* nonnull %16, [6 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* nonnull align 512 %vit_bias_l2_copy, [12 x [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* nonnull %17, [12 x [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %norm_weights_copy, [12 x [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* nonnull %18, [12 x [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %norm_bias_copy)
  %19 = getelementptr [1 x [3 x [128 x [256 x i8]]]], [1 x [3 x [128 x [256 x i8]]]]* %images_copy, i32 0, i32 0
  %20 = getelementptr [1 x [129 x [24 x i256]]], [1 x [129 x [24 x i256]]]* %x_copy, i32 0, i32 0
  %21 = getelementptr [129 x [24 x i256]], [129 x [24 x i256]]* %tmp1_copy, i32 0, i32 0
  %22 = getelementptr [129 x [24 x i256]], [129 x [24 x i256]]* %tmp2_copy, i32 0, i32 0
  %23 = getelementptr [129 x [24 x i256]], [129 x [24 x i256]]* %tmp3_copy, i32 0, i32 0
  %24 = getelementptr [12384 x i256], [12384 x i256]* %tmp_hidden_copy, i32 0, i32 0
  %25 = getelementptr [33 x [129 x [4 x i128]]], [33 x [129 x [4 x i128]]]* %attn_copy, i32 0, i32 0
  %26 = getelementptr [129 x i256], [129 x i256]* %attn_softmax_info_copy, i32 0, i32 0
  %27 = getelementptr inbounds [192 x [3 x [16 x [16 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]], [192 x [3 x [16 x [16 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]]* %patch_embed_weights_copy, i32 0, i32 0
  %28 = getelementptr [192 x i16], [192 x i16]* %patch_embed_bias_copy, i32 0, i32 0
  %29 = getelementptr [129 x [24 x i256]], [129 x [24 x i256]]* %pos_embed_copy, i32 0, i32 0
  %30 = getelementptr inbounds [12 x [4 x [192 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]], [12 x [4 x [192 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]]* %attn_weights_copy, i32 0, i32 0
  %31 = getelementptr inbounds [12 x [4 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]], [12 x [4 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %attn_bias_copy, i32 0, i32 0
  %32 = getelementptr inbounds [6 x [768 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]], [6 x [768 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %vit_weights_l1_copy, i32 0, i32 0
  %33 = getelementptr inbounds [6 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]], [6 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* %vit_bias_l1_copy, i32 0, i32 0
  %34 = getelementptr inbounds [6 x [192 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]], [6 x [192 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %vit_weights_l2_copy, i32 0, i32 0
  %35 = getelementptr inbounds [6 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]], [6 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* %vit_bias_l2_copy, i32 0, i32 0
  %36 = getelementptr inbounds [12 x [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]], [12 x [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %norm_weights_copy, i32 0, i32 0
  %37 = getelementptr inbounds [12 x [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]], [12 x [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %norm_bias_copy, i32 0, i32 0
  call void @apatb_ViT_act_hw(i32 %num_images, i1 %reload_on_time_weights, [3 x [128 x [256 x i8]]]* %19, [129 x [24 x i256]]* %20, [24 x i256]* %21, [24 x i256]* %22, [24 x i256]* %23, i256* %24, [129 x [4 x i128]]* %25, i256* %26, [3 x [16 x [16 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %27, i16* %28, [24 x i256]* %29, [4 x [192 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %30, [4 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* %31, [768 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* %32, [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* %33, [192 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* %34, [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* %35, [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* %36, [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* %37)
  call void @copy_back([1 x [3 x [128 x [256 x %"struct.ap_uint<8>"]]]]* %0, [1 x [3 x [128 x [256 x i8]]]]* %images_copy, [1 x [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]]* %1, [1 x [129 x [24 x i256]]]* %x_copy, [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]* %2, [129 x [24 x i256]]* %tmp1_copy, [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]* %3, [129 x [24 x i256]]* %tmp2_copy, [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]* %4, [129 x [24 x i256]]* %tmp3_copy, [12384 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]* %5, [12384 x i256]* %tmp_hidden_copy, [33 x [129 x [4 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 4>"]]]* %6, [33 x [129 x [4 x i128]]]* %attn_copy, [129 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]* %7, [129 x i256]* %attn_softmax_info_copy, [192 x [3 x [16 x [16 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]]* %8, [192 x [3 x [16 x [16 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]]* %patch_embed_weights_copy, [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* %9, [192 x i16]* %patch_embed_bias_copy, [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]* %10, [129 x [24 x i256]]* %pos_embed_copy, [12 x [4 x [192 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]]* %11, [12 x [4 x [192 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]]* %attn_weights_copy, [12 x [4 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %12, [12 x [4 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %attn_bias_copy, [6 x [768 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %13, [6 x [768 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %vit_weights_l1_copy, [6 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* %14, [6 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* %vit_bias_l1_copy, [6 x [192 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %15, [6 x [192 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %vit_weights_l2_copy, [6 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* %16, [6 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* %vit_bias_l2_copy, [12 x [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %17, [12 x [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %norm_weights_copy, [12 x [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %18, [12 x [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %norm_bias_copy)
  call void @free(i8* %malloccall)
  call void @free(i8* %malloccall1)
  call void @free(i8* %malloccall2)
  call void @free(i8* %malloccall3)
  call void @free(i8* %malloccall4)
  call void @free(i8* %malloccall5)
  call void @free(i8* %malloccall6)
  call void @free(i8* %malloccall7)
  tail call void @free(i8* %malloccall8)
  call void @free(i8* %malloccall9)
  tail call void @free(i8* %malloccall10)
  tail call void @free(i8* %malloccall11)
  tail call void @free(i8* %malloccall12)
  tail call void @free(i8* %malloccall13)
  tail call void @free(i8* %malloccall14)
  tail call void @free(i8* %malloccall15)
  tail call void @free(i8* %malloccall16)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([1 x [3 x [128 x [256 x %"struct.ap_uint<8>"]]]]* noalias readonly "unpacked"="0", [1 x [3 x [128 x [256 x i8]]]]* noalias "unpacked"="1", [1 x [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]]* noalias readonly "unpacked"="2", [1 x [129 x [24 x i256]]]* noalias "unpacked"="3", [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]* noalias readonly "unpacked"="4", [129 x [24 x i256]]* noalias "unpacked"="5", [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]* noalias readonly "unpacked"="6", [129 x [24 x i256]]* noalias "unpacked"="7", [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]* noalias readonly "unpacked"="8", [129 x [24 x i256]]* noalias "unpacked"="9", [12384 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]* noalias readonly align 32 "unpacked"="10", [12384 x i256]* noalias "unpacked"="11", [33 x [129 x [4 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 4>"]]]* noalias readonly "unpacked"="12", [33 x [129 x [4 x i128]]]* noalias "unpacked"="13", [129 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]* noalias readonly align 32 "unpacked"="14", [129 x i256]* noalias "unpacked"="15", [192 x [3 x [16 x [16 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]]* noalias readonly "unpacked"="16", [192 x [3 x [16 x [16 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]]* noalias "unpacked"="17", [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* noalias readonly "unpacked"="18", [192 x i16]* noalias nocapture align 512 "unpacked"="19.0.0.0", [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]* noalias readonly "unpacked"="20", [129 x [24 x i256]]* noalias "unpacked"="21", [12 x [4 x [192 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]]* noalias readonly "unpacked"="22", [12 x [4 x [192 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]]* noalias "unpacked"="23", [12 x [4 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* noalias readonly "unpacked"="24", [12 x [4 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* noalias "unpacked"="25", [6 x [768 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* noalias readonly "unpacked"="26", [6 x [768 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* noalias "unpacked"="27", [6 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* noalias readonly "unpacked"="28", [6 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* noalias "unpacked"="29", [6 x [192 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* noalias readonly "unpacked"="30", [6 x [192 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* noalias "unpacked"="31", [6 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* noalias readonly "unpacked"="32", [6 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* noalias align 512 "unpacked"="33", [12 x [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* noalias readonly "unpacked"="34", [12 x [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* noalias "unpacked"="35", [12 x [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* noalias readonly "unpacked"="36", [12 x [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* noalias "unpacked"="37") unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a1a3a128a256struct.ap_uint<8>.412"([1 x [3 x [128 x [256 x i8]]]]* %1, [1 x [3 x [128 x [256 x %"struct.ap_uint<8>"]]]]* %0)
  call fastcc void @"onebyonecpy_hls.p0a1a129a24class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"([1 x [129 x [24 x i256]]]* %3, [1 x [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]]* %2)
  call fastcc void @"onebyonecpy_hls.p0a129a24class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>.351"([129 x [24 x i256]]* %5, [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]* %4)
  call fastcc void @"onebyonecpy_hls.p0a129a24class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>.351"([129 x [24 x i256]]* %7, [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]* %6)
  call fastcc void @"onebyonecpy_hls.p0a129a24class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>.351"([129 x [24 x i256]]* %9, [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]* %8)
  call fastcc void @"onebyonecpy_hls.p0a12384class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"([12384 x i256]* %11, [12384 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]* align 32 %10)
  call fastcc void @"onebyonecpy_hls.p0a33a129a4class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 4>.336"([33 x [129 x [4 x i128]]]* %13, [33 x [129 x [4 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 4>"]]]* %12)
  call fastcc void @"onebyonecpy_hls.p0a129class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>.430"([129 x i256]* %15, [129 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]* align 32 %14)
  call fastcc void @"onebyonecpy_hls.p0a192a3a16a16struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"([192 x [3 x [16 x [16 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]]* %17, [192 x [3 x [16 x [16 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]]* %16)
  call fastcc void @"onebyonecpy_hls.p0a192struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"([192 x i16]* align 512 %19, [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* %18)
  call fastcc void @"onebyonecpy_hls.p0a129a24class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>.351"([129 x [24 x i256]]* %21, [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]* %20)
  call fastcc void @"onebyonecpy_hls.p0a12a4a192a192struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"([12 x [4 x [192 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]]* %23, [12 x [4 x [192 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]]* %22)
  call fastcc void @"onebyonecpy_hls.p0a12a4a192struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"([12 x [4 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %25, [12 x [4 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %24)
  call fastcc void @"onebyonecpy_hls.p0a6a768a192struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"([6 x [768 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %27, [6 x [768 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %26)
  call fastcc void @"onebyonecpy_hls.p0a6a768struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"([6 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* %29, [6 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* %28)
  call fastcc void @"onebyonecpy_hls.p0a6a192a768struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"([6 x [192 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %31, [6 x [192 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %30)
  call fastcc void @"onebyonecpy_hls.p0a6a192struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"([6 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* align 512 %33, [6 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* %32)
  call fastcc void @"onebyonecpy_hls.p0a12a2a192struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"([12 x [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %35, [12 x [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %34)
  call fastcc void @"onebyonecpy_hls.p0a12a2a192struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"([12 x [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %37, [12 x [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %36)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a1a3a128a256struct.ap_uint<8>"([1 x [3 x [128 x [256 x %"struct.ap_uint<8>"]]]]* noalias, [1 x [3 x [128 x [256 x i8]]]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [1 x [3 x [128 x [256 x %"struct.ap_uint<8>"]]]]* %0, null
  %3 = icmp eq [1 x [3 x [128 x [256 x i8]]]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %for.loop

for.loop:                                         ; preds = %entry
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2.split, %for.loop
  %for.loop.idx333 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2.split ]
  br label %for.loop8

for.loop8:                                        ; preds = %for.loop8.split, %for.loop2
  %for.loop.idx932 = phi i64 [ 0, %for.loop2 ], [ %for.loop.idx9.next, %for.loop8.split ]
  br label %for.loop14

for.loop14:                                       ; preds = %for.loop14, %for.loop8
  %for.loop.idx1531 = phi i64 [ 0, %for.loop8 ], [ %for.loop.idx15.next, %for.loop14 ]
  %5 = getelementptr [1 x [3 x [128 x [256 x i8]]]], [1 x [3 x [128 x [256 x i8]]]]* %1, i64 0, i64 0, i64 %for.loop.idx333, i64 %for.loop.idx932, i64 %for.loop.idx1531
  %dst.addr17.0.0.030 = getelementptr [1 x [3 x [128 x [256 x %"struct.ap_uint<8>"]]]], [1 x [3 x [128 x [256 x %"struct.ap_uint<8>"]]]]* %0, i64 0, i64 0, i64 %for.loop.idx333, i64 %for.loop.idx932, i64 %for.loop.idx1531, i32 0, i32 0, i32 0
  %6 = load i8, i8* %5, align 1
  store i8 %6, i8* %dst.addr17.0.0.030, align 1
  %for.loop.idx15.next = add nuw nsw i64 %for.loop.idx1531, 1
  %exitcond = icmp ne i64 %for.loop.idx15.next, 256
  br i1 %exitcond, label %for.loop14, label %for.loop8.split

for.loop8.split:                                  ; preds = %for.loop14
  %for.loop.idx9.next = add nuw nsw i64 %for.loop.idx932, 1
  %exitcond35 = icmp ne i64 %for.loop.idx9.next, 128
  br i1 %exitcond35, label %for.loop8, label %for.loop2.split

for.loop2.split:                                  ; preds = %for.loop8.split
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx333, 1
  %exitcond36 = icmp ne i64 %for.loop.idx3.next, 3
  br i1 %exitcond36, label %for.loop2, label %ret

ret:                                              ; preds = %for.loop2.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a1a129a24class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"([1 x [129 x [24 x i256]]]* noalias, [1 x [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [1 x [129 x [24 x i256]]]* %0, null
  %3 = icmp eq [1 x [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %for.loop

for.loop:                                         ; preds = %entry
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2.split, %for.loop
  %for.loop.idx337 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2.split ]
  br label %for.loop8

for.loop8:                                        ; preds = %for.loop8.split, %for.loop2
  %for.loop.idx936 = phi i64 [ 0, %for.loop2 ], [ %for.loop.idx9.next, %for.loop8.split ]
  %5 = getelementptr [1 x [129 x [24 x i256]]], [1 x [129 x [24 x i256]]]* %0, i64 0, i64 0, i64 %for.loop.idx337, i64 %for.loop.idx936
  %.promoted = load i256, i256* %5, align 4
  br label %for.loop14

for.loop14:                                       ; preds = %for.loop14, %for.loop8
  %.partset1 = phi i256 [ %.promoted, %for.loop8 ], [ %.partset, %for.loop14 ]
  %for.loop.idx1535 = phi i64 [ 0, %for.loop8 ], [ %for.loop.idx15.next, %for.loop14 ]
  %src.addr18.0.0.033 = getelementptr [1 x [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]], [1 x [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]]* %1, i64 0, i64 0, i64 %for.loop.idx337, i64 %for.loop.idx936, i32 0, i32 0, i64 %for.loop.idx1535, i32 0, i32 0, i32 0
  %6 = mul nuw nsw i64 32, %for.loop.idx1535
  %7 = load i32, i32* %src.addr18.0.0.033, align 4
  %8 = zext i64 %6 to i256
  %9 = shl i256 4294967295, %8
  %10 = zext i32 %7 to i256
  %11 = shl i256 %10, %8
  %12 = xor i256 %9, -1
  %13 = and i256 %.partset1, %12
  %.partset = or i256 %13, %11
  %for.loop.idx15.next = add nuw nsw i64 %for.loop.idx1535, 1
  %exitcond = icmp ne i64 %for.loop.idx15.next, 8
  br i1 %exitcond, label %for.loop14, label %for.loop8.split

for.loop8.split:                                  ; preds = %for.loop14
  store i256 %.partset, i256* %5, align 4
  %for.loop.idx9.next = add nuw nsw i64 %for.loop.idx936, 1
  %exitcond39 = icmp ne i64 %for.loop.idx9.next, 24
  br i1 %exitcond39, label %for.loop8, label %for.loop2.split

for.loop2.split:                                  ; preds = %for.loop8.split
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx337, 1
  %exitcond40 = icmp ne i64 %for.loop.idx3.next, 129
  br i1 %exitcond40, label %for.loop2, label %ret

ret:                                              ; preds = %for.loop2.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a12384class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"([12384 x i256]* noalias, [12384 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]* noalias readonly align 32) unnamed_addr #2 {
entry:
  %2 = icmp eq [12384 x i256]* %0, null
  %3 = icmp eq [12384 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx20 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  %5 = getelementptr [12384 x i256], [12384 x i256]* %0, i64 0, i64 %for.loop.idx20
  %.promoted = load i256, i256* %5, align 4
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %.partset1 = phi i256 [ %.promoted, %for.loop ], [ %.partset, %for.loop2 ]
  %for.loop.idx319 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %src.addr6.0.0.017 = getelementptr [12384 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"], [12384 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]* %1, i64 0, i64 %for.loop.idx20, i32 0, i32 0, i64 %for.loop.idx319, i32 0, i32 0, i32 0
  %6 = mul nuw nsw i64 32, %for.loop.idx319
  %7 = load i32, i32* %src.addr6.0.0.017, align 4
  %8 = zext i64 %6 to i256
  %9 = shl i256 4294967295, %8
  %10 = zext i32 %7 to i256
  %11 = shl i256 %10, %8
  %12 = xor i256 %9, -1
  %13 = and i256 %.partset1, %12
  %.partset = or i256 %13, %11
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx319, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 8
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  store i256 %.partset, i256* %5, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx20, 1
  %exitcond21 = icmp ne i64 %for.loop.idx.next, 12384
  br i1 %exitcond21, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a33a129a4class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 4>"([33 x [129 x [4 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 4>"]]]* noalias, [33 x [129 x [4 x i128]]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [33 x [129 x [4 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 4>"]]]* %0, null
  %3 = icmp eq [33 x [129 x [4 x i128]]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx38 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2.split, %for.loop
  %for.loop.idx337 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2.split ]
  br label %for.loop8

for.loop8:                                        ; preds = %for.loop8.split, %for.loop2
  %for.loop.idx936 = phi i64 [ 0, %for.loop2 ], [ %for.loop.idx9.next, %for.loop8.split ]
  %5 = getelementptr [33 x [129 x [4 x i128]]], [33 x [129 x [4 x i128]]]* %1, i64 0, i64 %for.loop.idx38, i64 %for.loop.idx337, i64 %for.loop.idx936
  %6 = load i128, i128* %5, align 4
  br label %for.loop14

for.loop14:                                       ; preds = %for.loop14, %for.loop8
  %for.loop.idx1535 = phi i64 [ 0, %for.loop8 ], [ %for.loop.idx15.next, %for.loop14 ]
  %7 = mul nuw nsw i64 32, %for.loop.idx1535
  %dst.addr17.0.0.034 = getelementptr [33 x [129 x [4 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 4>"]]], [33 x [129 x [4 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 4>"]]]* %0, i64 0, i64 %for.loop.idx38, i64 %for.loop.idx337, i64 %for.loop.idx936, i32 0, i32 0, i64 %for.loop.idx1535, i32 0, i32 0, i32 0
  %8 = zext i64 %7 to i128
  %9 = lshr i128 %6, %8
  %.partselect = trunc i128 %9 to i32
  store i32 %.partselect, i32* %dst.addr17.0.0.034, align 4
  %for.loop.idx15.next = add nuw nsw i64 %for.loop.idx1535, 1
  %exitcond = icmp ne i64 %for.loop.idx15.next, 4
  br i1 %exitcond, label %for.loop14, label %for.loop8.split

for.loop8.split:                                  ; preds = %for.loop14
  %for.loop.idx9.next = add nuw nsw i64 %for.loop.idx936, 1
  %exitcond39 = icmp ne i64 %for.loop.idx9.next, 4
  br i1 %exitcond39, label %for.loop8, label %for.loop2.split

for.loop2.split:                                  ; preds = %for.loop8.split
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx337, 1
  %exitcond40 = icmp ne i64 %for.loop.idx3.next, 129
  br i1 %exitcond40, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2.split
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx38, 1
  %exitcond41 = icmp ne i64 %for.loop.idx.next, 33
  br i1 %exitcond41, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a129class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"([129 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]* noalias align 32, [129 x i256]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [129 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]* %0, null
  %3 = icmp eq [129 x i256]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx20 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  %5 = getelementptr [129 x i256], [129 x i256]* %1, i64 0, i64 %for.loop.idx20
  %6 = load i256, i256* %5, align 4
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx319 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %7 = mul nuw nsw i64 32, %for.loop.idx319
  %dst.addr5.0.0.018 = getelementptr [129 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"], [129 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]* %0, i64 0, i64 %for.loop.idx20, i32 0, i32 0, i64 %for.loop.idx319, i32 0, i32 0, i32 0
  %8 = zext i64 %7 to i256
  %9 = lshr i256 %6, %8
  %.partselect = trunc i256 %9 to i32
  store i32 %.partselect, i32* %dst.addr5.0.0.018, align 4
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx319, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 8
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx20, 1
  %exitcond21 = icmp ne i64 %for.loop.idx.next, 129
  br i1 %exitcond21, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a192a3a16a16struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"([192 x [3 x [16 x [16 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]]* noalias, [192 x [3 x [16 x [16 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [192 x [3 x [16 x [16 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]]* %0, null
  %3 = icmp eq [192 x [3 x [16 x [16 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx34 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2.split, %for.loop
  %for.loop.idx333 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2.split ]
  br label %for.loop8

for.loop8:                                        ; preds = %for.loop8.split, %for.loop2
  %for.loop.idx932 = phi i64 [ 0, %for.loop2 ], [ %for.loop.idx9.next, %for.loop8.split ]
  br label %for.loop14

for.loop14:                                       ; preds = %for.loop14, %for.loop8
  %for.loop.idx1531 = phi i64 [ 0, %for.loop8 ], [ %for.loop.idx15.next, %for.loop14 ]
  %src.addr18.0.0.029 = getelementptr [192 x [3 x [16 x [16 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]], [192 x [3 x [16 x [16 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]]* %1, i64 0, i64 %for.loop.idx34, i64 %for.loop.idx333, i64 %for.loop.idx932, i64 %for.loop.idx1531, i32 0, i32 0, i32 0
  %dst.addr17.0.0.030 = getelementptr [192 x [3 x [16 x [16 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]], [192 x [3 x [16 x [16 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]]* %0, i64 0, i64 %for.loop.idx34, i64 %for.loop.idx333, i64 %for.loop.idx932, i64 %for.loop.idx1531, i32 0, i32 0, i32 0
  %5 = load i16, i16* %src.addr18.0.0.029, align 2
  store i16 %5, i16* %dst.addr17.0.0.030, align 2
  %for.loop.idx15.next = add nuw nsw i64 %for.loop.idx1531, 1
  %exitcond = icmp ne i64 %for.loop.idx15.next, 16
  br i1 %exitcond, label %for.loop14, label %for.loop8.split

for.loop8.split:                                  ; preds = %for.loop14
  %for.loop.idx9.next = add nuw nsw i64 %for.loop.idx932, 1
  %exitcond35 = icmp ne i64 %for.loop.idx9.next, 16
  br i1 %exitcond35, label %for.loop8, label %for.loop2.split

for.loop2.split:                                  ; preds = %for.loop8.split
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx333, 1
  %exitcond36 = icmp ne i64 %for.loop.idx3.next, 3
  br i1 %exitcond36, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2.split
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx34, 1
  %exitcond37 = icmp ne i64 %for.loop.idx.next, 192
  br i1 %exitcond37, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a12a4a192a192struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"([12 x [4 x [192 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]]* noalias, [12 x [4 x [192 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [12 x [4 x [192 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]]* %0, null
  %3 = icmp eq [12 x [4 x [192 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx34 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2.split, %for.loop
  %for.loop.idx333 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2.split ]
  br label %for.loop8

for.loop8:                                        ; preds = %for.loop8.split, %for.loop2
  %for.loop.idx932 = phi i64 [ 0, %for.loop2 ], [ %for.loop.idx9.next, %for.loop8.split ]
  br label %for.loop14

for.loop14:                                       ; preds = %for.loop14, %for.loop8
  %for.loop.idx1531 = phi i64 [ 0, %for.loop8 ], [ %for.loop.idx15.next, %for.loop14 ]
  %src.addr18.0.0.029 = getelementptr [12 x [4 x [192 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]], [12 x [4 x [192 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]]* %1, i64 0, i64 %for.loop.idx34, i64 %for.loop.idx333, i64 %for.loop.idx932, i64 %for.loop.idx1531, i32 0, i32 0, i32 0
  %dst.addr17.0.0.030 = getelementptr [12 x [4 x [192 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]], [12 x [4 x [192 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]]* %0, i64 0, i64 %for.loop.idx34, i64 %for.loop.idx333, i64 %for.loop.idx932, i64 %for.loop.idx1531, i32 0, i32 0, i32 0
  %5 = load i16, i16* %src.addr18.0.0.029, align 2
  store i16 %5, i16* %dst.addr17.0.0.030, align 2
  %for.loop.idx15.next = add nuw nsw i64 %for.loop.idx1531, 1
  %exitcond = icmp ne i64 %for.loop.idx15.next, 192
  br i1 %exitcond, label %for.loop14, label %for.loop8.split

for.loop8.split:                                  ; preds = %for.loop14
  %for.loop.idx9.next = add nuw nsw i64 %for.loop.idx932, 1
  %exitcond35 = icmp ne i64 %for.loop.idx9.next, 192
  br i1 %exitcond35, label %for.loop8, label %for.loop2.split

for.loop2.split:                                  ; preds = %for.loop8.split
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx333, 1
  %exitcond36 = icmp ne i64 %for.loop.idx3.next, 4
  br i1 %exitcond36, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2.split
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx34, 1
  %exitcond37 = icmp ne i64 %for.loop.idx.next, 12
  br i1 %exitcond37, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a12a4a192struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"([12 x [4 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* noalias, [12 x [4 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [12 x [4 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %0, null
  %3 = icmp eq [12 x [4 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx25 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2.split, %for.loop
  %for.loop.idx324 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2.split ]
  br label %for.loop8

for.loop8:                                        ; preds = %for.loop8, %for.loop2
  %for.loop.idx923 = phi i64 [ 0, %for.loop2 ], [ %for.loop.idx9.next, %for.loop8 ]
  %src.addr12.0.0.021 = getelementptr [12 x [4 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]], [12 x [4 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %1, i64 0, i64 %for.loop.idx25, i64 %for.loop.idx324, i64 %for.loop.idx923, i32 0, i32 0, i32 0
  %dst.addr11.0.0.022 = getelementptr [12 x [4 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]], [12 x [4 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %0, i64 0, i64 %for.loop.idx25, i64 %for.loop.idx324, i64 %for.loop.idx923, i32 0, i32 0, i32 0
  %5 = load i16, i16* %src.addr12.0.0.021, align 2
  store i16 %5, i16* %dst.addr11.0.0.022, align 2
  %for.loop.idx9.next = add nuw nsw i64 %for.loop.idx923, 1
  %exitcond = icmp ne i64 %for.loop.idx9.next, 192
  br i1 %exitcond, label %for.loop8, label %for.loop2.split

for.loop2.split:                                  ; preds = %for.loop8
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx324, 1
  %exitcond26 = icmp ne i64 %for.loop.idx3.next, 4
  br i1 %exitcond26, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2.split
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx25, 1
  %exitcond27 = icmp ne i64 %for.loop.idx.next, 12
  br i1 %exitcond27, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a6a768a192struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"([6 x [768 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* noalias, [6 x [768 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [6 x [768 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %0, null
  %3 = icmp eq [6 x [768 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx25 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2.split, %for.loop
  %for.loop.idx324 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2.split ]
  br label %for.loop8

for.loop8:                                        ; preds = %for.loop8, %for.loop2
  %for.loop.idx923 = phi i64 [ 0, %for.loop2 ], [ %for.loop.idx9.next, %for.loop8 ]
  %src.addr12.0.0.021 = getelementptr [6 x [768 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]], [6 x [768 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %1, i64 0, i64 %for.loop.idx25, i64 %for.loop.idx324, i64 %for.loop.idx923, i32 0, i32 0, i32 0
  %dst.addr11.0.0.022 = getelementptr [6 x [768 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]], [6 x [768 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %0, i64 0, i64 %for.loop.idx25, i64 %for.loop.idx324, i64 %for.loop.idx923, i32 0, i32 0, i32 0
  %5 = load i16, i16* %src.addr12.0.0.021, align 2
  store i16 %5, i16* %dst.addr11.0.0.022, align 2
  %for.loop.idx9.next = add nuw nsw i64 %for.loop.idx923, 1
  %exitcond = icmp ne i64 %for.loop.idx9.next, 192
  br i1 %exitcond, label %for.loop8, label %for.loop2.split

for.loop2.split:                                  ; preds = %for.loop8
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx324, 1
  %exitcond26 = icmp ne i64 %for.loop.idx3.next, 768
  br i1 %exitcond26, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2.split
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx25, 1
  %exitcond27 = icmp ne i64 %for.loop.idx.next, 6
  br i1 %exitcond27, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a6a768struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"([6 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* noalias, [6 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [6 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* %0, null
  %3 = icmp eq [6 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx16 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx315 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %src.addr6.0.0.013 = getelementptr [6 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]], [6 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* %1, i64 0, i64 %for.loop.idx16, i64 %for.loop.idx315, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014 = getelementptr [6 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]], [6 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* %0, i64 0, i64 %for.loop.idx16, i64 %for.loop.idx315, i32 0, i32 0, i32 0
  %5 = load i16, i16* %src.addr6.0.0.013, align 2
  store i16 %5, i16* %dst.addr5.0.0.014, align 2
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx315, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 768
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx16, 1
  %exitcond17 = icmp ne i64 %for.loop.idx.next, 6
  br i1 %exitcond17, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a6a192a768struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"([6 x [192 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* noalias, [6 x [192 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [6 x [192 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %0, null
  %3 = icmp eq [6 x [192 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx25 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2.split, %for.loop
  %for.loop.idx324 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2.split ]
  br label %for.loop8

for.loop8:                                        ; preds = %for.loop8, %for.loop2
  %for.loop.idx923 = phi i64 [ 0, %for.loop2 ], [ %for.loop.idx9.next, %for.loop8 ]
  %src.addr12.0.0.021 = getelementptr [6 x [192 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]], [6 x [192 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %1, i64 0, i64 %for.loop.idx25, i64 %for.loop.idx324, i64 %for.loop.idx923, i32 0, i32 0, i32 0
  %dst.addr11.0.0.022 = getelementptr [6 x [192 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]], [6 x [192 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %0, i64 0, i64 %for.loop.idx25, i64 %for.loop.idx324, i64 %for.loop.idx923, i32 0, i32 0, i32 0
  %5 = load i16, i16* %src.addr12.0.0.021, align 2
  store i16 %5, i16* %dst.addr11.0.0.022, align 2
  %for.loop.idx9.next = add nuw nsw i64 %for.loop.idx923, 1
  %exitcond = icmp ne i64 %for.loop.idx9.next, 768
  br i1 %exitcond, label %for.loop8, label %for.loop2.split

for.loop2.split:                                  ; preds = %for.loop8
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx324, 1
  %exitcond26 = icmp ne i64 %for.loop.idx3.next, 192
  br i1 %exitcond26, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2.split
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx25, 1
  %exitcond27 = icmp ne i64 %for.loop.idx.next, 6
  br i1 %exitcond27, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a6a192struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"([6 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* noalias align 512, [6 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [6 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* %0, null
  %3 = icmp eq [6 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx16 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx315 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %src.addr6.0.0.013 = getelementptr [6 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]], [6 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* %1, i64 0, i64 %for.loop.idx16, i64 %for.loop.idx315, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014 = getelementptr [6 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]], [6 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* %0, i64 0, i64 %for.loop.idx16, i64 %for.loop.idx315, i32 0, i32 0, i32 0
  %5 = load i16, i16* %src.addr6.0.0.013, align 2
  store i16 %5, i16* %dst.addr5.0.0.014, align 2
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx315, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 192
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx16, 1
  %exitcond17 = icmp ne i64 %for.loop.idx.next, 6
  br i1 %exitcond17, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a12a2a192struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"([12 x [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* noalias, [12 x [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [12 x [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %0, null
  %3 = icmp eq [12 x [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx25 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2.split, %for.loop
  %for.loop.idx324 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2.split ]
  br label %for.loop8

for.loop8:                                        ; preds = %for.loop8, %for.loop2
  %for.loop.idx923 = phi i64 [ 0, %for.loop2 ], [ %for.loop.idx9.next, %for.loop8 ]
  %src.addr12.0.0.021 = getelementptr [12 x [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]], [12 x [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %1, i64 0, i64 %for.loop.idx25, i64 %for.loop.idx324, i64 %for.loop.idx923, i32 0, i32 0, i32 0
  %dst.addr11.0.0.022 = getelementptr [12 x [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]], [12 x [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %0, i64 0, i64 %for.loop.idx25, i64 %for.loop.idx324, i64 %for.loop.idx923, i32 0, i32 0, i32 0
  %5 = load i16, i16* %src.addr12.0.0.021, align 2
  store i16 %5, i16* %dst.addr11.0.0.022, align 2
  %for.loop.idx9.next = add nuw nsw i64 %for.loop.idx923, 1
  %exitcond = icmp ne i64 %for.loop.idx9.next, 192
  br i1 %exitcond, label %for.loop8, label %for.loop2.split

for.loop2.split:                                  ; preds = %for.loop8
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx324, 1
  %exitcond26 = icmp ne i64 %for.loop.idx3.next, 2
  br i1 %exitcond26, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2.split
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx25, 1
  %exitcond27 = icmp ne i64 %for.loop.idx.next, 12
  br i1 %exitcond27, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([1 x [3 x [128 x [256 x %"struct.ap_uint<8>"]]]]* noalias "unpacked"="0", [1 x [3 x [128 x [256 x i8]]]]* noalias readonly "unpacked"="1", [1 x [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]]* noalias "unpacked"="2", [1 x [129 x [24 x i256]]]* noalias readonly "unpacked"="3", [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]* noalias "unpacked"="4", [129 x [24 x i256]]* noalias readonly "unpacked"="5", [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]* noalias "unpacked"="6", [129 x [24 x i256]]* noalias readonly "unpacked"="7", [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]* noalias "unpacked"="8", [129 x [24 x i256]]* noalias readonly "unpacked"="9", [12384 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]* noalias align 32 "unpacked"="10", [12384 x i256]* noalias readonly "unpacked"="11", [33 x [129 x [4 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 4>"]]]* noalias "unpacked"="12", [33 x [129 x [4 x i128]]]* noalias readonly "unpacked"="13", [129 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]* noalias align 32 "unpacked"="14", [129 x i256]* noalias readonly "unpacked"="15", [192 x [3 x [16 x [16 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]]* noalias "unpacked"="16", [192 x [3 x [16 x [16 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]]* noalias readonly "unpacked"="17", [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="18", [192 x i16]* noalias nocapture readonly align 512 "unpacked"="19.0.0.0", [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]* noalias "unpacked"="20", [129 x [24 x i256]]* noalias readonly "unpacked"="21", [12 x [4 x [192 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]]* noalias "unpacked"="22", [12 x [4 x [192 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]]* noalias readonly "unpacked"="23", [12 x [4 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* noalias "unpacked"="24", [12 x [4 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* noalias readonly "unpacked"="25", [6 x [768 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* noalias "unpacked"="26", [6 x [768 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* noalias readonly "unpacked"="27", [6 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* noalias "unpacked"="28", [6 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* noalias readonly "unpacked"="29", [6 x [192 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* noalias "unpacked"="30", [6 x [192 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* noalias readonly "unpacked"="31", [6 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* noalias "unpacked"="32", [6 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* noalias readonly align 512 "unpacked"="33", [12 x [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* noalias "unpacked"="34", [12 x [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* noalias readonly "unpacked"="35", [12 x [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* noalias "unpacked"="36", [12 x [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* noalias readonly "unpacked"="37") unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a1a3a128a256struct.ap_uint<8>"([1 x [3 x [128 x [256 x %"struct.ap_uint<8>"]]]]* %0, [1 x [3 x [128 x [256 x i8]]]]* %1)
  call fastcc void @"onebyonecpy_hls.p0a1a129a24class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>.388"([1 x [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]]* %2, [1 x [129 x [24 x i256]]]* %3)
  call fastcc void @"onebyonecpy_hls.p0a129a24class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"([129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]* %4, [129 x [24 x i256]]* %5)
  call fastcc void @"onebyonecpy_hls.p0a129a24class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"([129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]* %6, [129 x [24 x i256]]* %7)
  call fastcc void @"onebyonecpy_hls.p0a129a24class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"([129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]* %8, [129 x [24 x i256]]* %9)
  call fastcc void @"onebyonecpy_hls.p0a12384class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>.422"([12384 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]* align 32 %10, [12384 x i256]* %11)
  call fastcc void @"onebyonecpy_hls.p0a33a129a4class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 4>"([33 x [129 x [4 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 4>"]]]* %12, [33 x [129 x [4 x i128]]]* %13)
  call fastcc void @"onebyonecpy_hls.p0a129class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"([129 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]* align 32 %14, [129 x i256]* %15)
  call fastcc void @"onebyonecpy_hls.p0a192a3a16a16struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"([192 x [3 x [16 x [16 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]]* %16, [192 x [3 x [16 x [16 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]]* %17)
  call fastcc void @"onebyonecpy_hls.p0a192struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>.270"([192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* %18, [192 x i16]* align 512 %19)
  call fastcc void @"onebyonecpy_hls.p0a129a24class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"([129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]* %20, [129 x [24 x i256]]* %21)
  call fastcc void @"onebyonecpy_hls.p0a12a4a192a192struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"([12 x [4 x [192 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]]* %22, [12 x [4 x [192 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]]* %23)
  call fastcc void @"onebyonecpy_hls.p0a12a4a192struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"([12 x [4 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %24, [12 x [4 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %25)
  call fastcc void @"onebyonecpy_hls.p0a6a768a192struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"([6 x [768 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %26, [6 x [768 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %27)
  call fastcc void @"onebyonecpy_hls.p0a6a768struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"([6 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* %28, [6 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* %29)
  call fastcc void @"onebyonecpy_hls.p0a6a192a768struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"([6 x [192 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %30, [6 x [192 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %31)
  call fastcc void @"onebyonecpy_hls.p0a6a192struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"([6 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* %32, [6 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* align 512 %33)
  call fastcc void @"onebyonecpy_hls.p0a12a2a192struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"([12 x [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %34, [12 x [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %35)
  call fastcc void @"onebyonecpy_hls.p0a12a2a192struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"([12 x [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %36, [12 x [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %37)
  ret void
}

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a192struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>.270"([192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="0", [192 x i16]* noalias nocapture readonly align 512 "unpacked"="1.0.0.0") unnamed_addr #2 {
entry:
  %2 = icmp eq [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* %0, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [192 x i16], [192 x i16]* %1, i64 0, i64 %for.loop.idx1
  %dst.addr.0.0.06 = getelementptr [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"], [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* %0, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %3 = load i16, i16* %src.addr.0.0.05, align 2
  store i16 %3, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 192
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a192struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"([192 x i16]* noalias nocapture align 512 "unpacked"="0.0.0.0", [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* noalias readonly "unpacked"="1") unnamed_addr #2 {
entry:
  %2 = icmp eq [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* %1, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"], [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* %1, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [192 x i16], [192 x i16]* %0, i64 0, i64 %for.loop.idx1
  %3 = load i16, i16* %src.addr.0.0.05, align 2
  store i16 %3, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 192
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a33a129a4class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 4>.336"([33 x [129 x [4 x i128]]]* noalias, [33 x [129 x [4 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 4>"]]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [33 x [129 x [4 x i128]]]* %0, null
  %3 = icmp eq [33 x [129 x [4 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 4>"]]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx38 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2.split, %for.loop
  %for.loop.idx337 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2.split ]
  br label %for.loop8

for.loop8:                                        ; preds = %for.loop8.split, %for.loop2
  %for.loop.idx936 = phi i64 [ 0, %for.loop2 ], [ %for.loop.idx9.next, %for.loop8.split ]
  %5 = getelementptr [33 x [129 x [4 x i128]]], [33 x [129 x [4 x i128]]]* %0, i64 0, i64 %for.loop.idx38, i64 %for.loop.idx337, i64 %for.loop.idx936
  %.promoted = load i128, i128* %5, align 4
  br label %for.loop14

for.loop14:                                       ; preds = %for.loop14, %for.loop8
  %.partset1 = phi i128 [ %.promoted, %for.loop8 ], [ %.partset, %for.loop14 ]
  %for.loop.idx1535 = phi i64 [ 0, %for.loop8 ], [ %for.loop.idx15.next, %for.loop14 ]
  %src.addr18.0.0.033 = getelementptr [33 x [129 x [4 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 4>"]]], [33 x [129 x [4 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 4>"]]]* %1, i64 0, i64 %for.loop.idx38, i64 %for.loop.idx337, i64 %for.loop.idx936, i32 0, i32 0, i64 %for.loop.idx1535, i32 0, i32 0, i32 0
  %6 = mul nuw nsw i64 32, %for.loop.idx1535
  %7 = load i32, i32* %src.addr18.0.0.033, align 4
  %8 = zext i64 %6 to i128
  %9 = shl i128 4294967295, %8
  %10 = zext i32 %7 to i128
  %11 = shl i128 %10, %8
  %12 = xor i128 %9, -1
  %13 = and i128 %.partset1, %12
  %.partset = or i128 %13, %11
  %for.loop.idx15.next = add nuw nsw i64 %for.loop.idx1535, 1
  %exitcond = icmp ne i64 %for.loop.idx15.next, 4
  br i1 %exitcond, label %for.loop14, label %for.loop8.split

for.loop8.split:                                  ; preds = %for.loop14
  store i128 %.partset, i128* %5, align 4
  %for.loop.idx9.next = add nuw nsw i64 %for.loop.idx936, 1
  %exitcond39 = icmp ne i64 %for.loop.idx9.next, 4
  br i1 %exitcond39, label %for.loop8, label %for.loop2.split

for.loop2.split:                                  ; preds = %for.loop8.split
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx337, 1
  %exitcond40 = icmp ne i64 %for.loop.idx3.next, 129
  br i1 %exitcond40, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2.split
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx38, 1
  %exitcond41 = icmp ne i64 %for.loop.idx.next, 33
  br i1 %exitcond41, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a129a24class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"([129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]* noalias, [129 x [24 x i256]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]* %0, null
  %3 = icmp eq [129 x [24 x i256]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx29 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2.split, %for.loop
  %for.loop.idx328 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2.split ]
  %5 = getelementptr [129 x [24 x i256]], [129 x [24 x i256]]* %1, i64 0, i64 %for.loop.idx29, i64 %for.loop.idx328
  %6 = load i256, i256* %5, align 4
  br label %for.loop8

for.loop8:                                        ; preds = %for.loop8, %for.loop2
  %for.loop.idx927 = phi i64 [ 0, %for.loop2 ], [ %for.loop.idx9.next, %for.loop8 ]
  %7 = mul nuw nsw i64 32, %for.loop.idx927
  %dst.addr11.0.0.026 = getelementptr [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]], [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]* %0, i64 0, i64 %for.loop.idx29, i64 %for.loop.idx328, i32 0, i32 0, i64 %for.loop.idx927, i32 0, i32 0, i32 0
  %8 = zext i64 %7 to i256
  %9 = lshr i256 %6, %8
  %.partselect = trunc i256 %9 to i32
  store i32 %.partselect, i32* %dst.addr11.0.0.026, align 4
  %for.loop.idx9.next = add nuw nsw i64 %for.loop.idx927, 1
  %exitcond = icmp ne i64 %for.loop.idx9.next, 8
  br i1 %exitcond, label %for.loop8, label %for.loop2.split

for.loop2.split:                                  ; preds = %for.loop8
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx328, 1
  %exitcond30 = icmp ne i64 %for.loop.idx3.next, 24
  br i1 %exitcond30, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2.split
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx29, 1
  %exitcond31 = icmp ne i64 %for.loop.idx.next, 129
  br i1 %exitcond31, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a129a24class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>.351"([129 x [24 x i256]]* noalias, [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [129 x [24 x i256]]* %0, null
  %3 = icmp eq [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx29 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2.split, %for.loop
  %for.loop.idx328 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2.split ]
  %5 = getelementptr [129 x [24 x i256]], [129 x [24 x i256]]* %0, i64 0, i64 %for.loop.idx29, i64 %for.loop.idx328
  %.promoted = load i256, i256* %5, align 4
  br label %for.loop8

for.loop8:                                        ; preds = %for.loop8, %for.loop2
  %.partset1 = phi i256 [ %.promoted, %for.loop2 ], [ %.partset, %for.loop8 ]
  %for.loop.idx927 = phi i64 [ 0, %for.loop2 ], [ %for.loop.idx9.next, %for.loop8 ]
  %src.addr12.0.0.025 = getelementptr [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]], [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]* %1, i64 0, i64 %for.loop.idx29, i64 %for.loop.idx328, i32 0, i32 0, i64 %for.loop.idx927, i32 0, i32 0, i32 0
  %6 = mul nuw nsw i64 32, %for.loop.idx927
  %7 = load i32, i32* %src.addr12.0.0.025, align 4
  %8 = zext i64 %6 to i256
  %9 = shl i256 4294967295, %8
  %10 = zext i32 %7 to i256
  %11 = shl i256 %10, %8
  %12 = xor i256 %9, -1
  %13 = and i256 %.partset1, %12
  %.partset = or i256 %13, %11
  %for.loop.idx9.next = add nuw nsw i64 %for.loop.idx927, 1
  %exitcond = icmp ne i64 %for.loop.idx9.next, 8
  br i1 %exitcond, label %for.loop8, label %for.loop2.split

for.loop2.split:                                  ; preds = %for.loop8
  store i256 %.partset, i256* %5, align 4
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx328, 1
  %exitcond30 = icmp ne i64 %for.loop.idx3.next, 24
  br i1 %exitcond30, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2.split
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx29, 1
  %exitcond31 = icmp ne i64 %for.loop.idx.next, 129
  br i1 %exitcond31, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a1a129a24class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>.388"([1 x [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]]* noalias, [1 x [129 x [24 x i256]]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [1 x [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]]* %0, null
  %3 = icmp eq [1 x [129 x [24 x i256]]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %for.loop

for.loop:                                         ; preds = %entry
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2.split, %for.loop
  %for.loop.idx337 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2.split ]
  br label %for.loop8

for.loop8:                                        ; preds = %for.loop8.split, %for.loop2
  %for.loop.idx936 = phi i64 [ 0, %for.loop2 ], [ %for.loop.idx9.next, %for.loop8.split ]
  %5 = getelementptr [1 x [129 x [24 x i256]]], [1 x [129 x [24 x i256]]]* %1, i64 0, i64 0, i64 %for.loop.idx337, i64 %for.loop.idx936
  %6 = load i256, i256* %5, align 4
  br label %for.loop14

for.loop14:                                       ; preds = %for.loop14, %for.loop8
  %for.loop.idx1535 = phi i64 [ 0, %for.loop8 ], [ %for.loop.idx15.next, %for.loop14 ]
  %7 = mul nuw nsw i64 32, %for.loop.idx1535
  %dst.addr17.0.0.034 = getelementptr [1 x [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]], [1 x [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]]* %0, i64 0, i64 0, i64 %for.loop.idx337, i64 %for.loop.idx936, i32 0, i32 0, i64 %for.loop.idx1535, i32 0, i32 0, i32 0
  %8 = zext i64 %7 to i256
  %9 = lshr i256 %6, %8
  %.partselect = trunc i256 %9 to i32
  store i32 %.partselect, i32* %dst.addr17.0.0.034, align 4
  %for.loop.idx15.next = add nuw nsw i64 %for.loop.idx1535, 1
  %exitcond = icmp ne i64 %for.loop.idx15.next, 8
  br i1 %exitcond, label %for.loop14, label %for.loop8.split

for.loop8.split:                                  ; preds = %for.loop14
  %for.loop.idx9.next = add nuw nsw i64 %for.loop.idx936, 1
  %exitcond39 = icmp ne i64 %for.loop.idx9.next, 24
  br i1 %exitcond39, label %for.loop8, label %for.loop2.split

for.loop2.split:                                  ; preds = %for.loop8.split
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx337, 1
  %exitcond40 = icmp ne i64 %for.loop.idx3.next, 129
  br i1 %exitcond40, label %for.loop2, label %ret

ret:                                              ; preds = %for.loop2.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a1a3a128a256struct.ap_uint<8>.412"([1 x [3 x [128 x [256 x i8]]]]* noalias, [1 x [3 x [128 x [256 x %"struct.ap_uint<8>"]]]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [1 x [3 x [128 x [256 x i8]]]]* %0, null
  %3 = icmp eq [1 x [3 x [128 x [256 x %"struct.ap_uint<8>"]]]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %for.loop

for.loop:                                         ; preds = %entry
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2.split, %for.loop
  %for.loop.idx333 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2.split ]
  br label %for.loop8

for.loop8:                                        ; preds = %for.loop8.split, %for.loop2
  %for.loop.idx932 = phi i64 [ 0, %for.loop2 ], [ %for.loop.idx9.next, %for.loop8.split ]
  br label %for.loop14

for.loop14:                                       ; preds = %for.loop14, %for.loop8
  %for.loop.idx1531 = phi i64 [ 0, %for.loop8 ], [ %for.loop.idx15.next, %for.loop14 ]
  %src.addr18.0.0.029 = getelementptr [1 x [3 x [128 x [256 x %"struct.ap_uint<8>"]]]], [1 x [3 x [128 x [256 x %"struct.ap_uint<8>"]]]]* %1, i64 0, i64 0, i64 %for.loop.idx333, i64 %for.loop.idx932, i64 %for.loop.idx1531, i32 0, i32 0, i32 0
  %5 = getelementptr [1 x [3 x [128 x [256 x i8]]]], [1 x [3 x [128 x [256 x i8]]]]* %0, i64 0, i64 0, i64 %for.loop.idx333, i64 %for.loop.idx932, i64 %for.loop.idx1531
  %6 = load i8, i8* %src.addr18.0.0.029, align 1
  store i8 %6, i8* %5, align 1
  %for.loop.idx15.next = add nuw nsw i64 %for.loop.idx1531, 1
  %exitcond = icmp ne i64 %for.loop.idx15.next, 256
  br i1 %exitcond, label %for.loop14, label %for.loop8.split

for.loop8.split:                                  ; preds = %for.loop14
  %for.loop.idx9.next = add nuw nsw i64 %for.loop.idx932, 1
  %exitcond35 = icmp ne i64 %for.loop.idx9.next, 128
  br i1 %exitcond35, label %for.loop8, label %for.loop2.split

for.loop2.split:                                  ; preds = %for.loop8.split
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx333, 1
  %exitcond36 = icmp ne i64 %for.loop.idx3.next, 3
  br i1 %exitcond36, label %for.loop2, label %ret

ret:                                              ; preds = %for.loop2.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a12384class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>.422"([12384 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]* noalias align 32, [12384 x i256]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [12384 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]* %0, null
  %3 = icmp eq [12384 x i256]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx20 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  %5 = getelementptr [12384 x i256], [12384 x i256]* %1, i64 0, i64 %for.loop.idx20
  %6 = load i256, i256* %5, align 4
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx319 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %7 = mul nuw nsw i64 32, %for.loop.idx319
  %dst.addr5.0.0.018 = getelementptr [12384 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"], [12384 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]* %0, i64 0, i64 %for.loop.idx20, i32 0, i32 0, i64 %for.loop.idx319, i32 0, i32 0, i32 0
  %8 = zext i64 %7 to i256
  %9 = lshr i256 %6, %8
  %.partselect = trunc i256 %9 to i32
  store i32 %.partselect, i32* %dst.addr5.0.0.018, align 4
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx319, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 8
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx20, 1
  %exitcond21 = icmp ne i64 %for.loop.idx.next, 12384
  br i1 %exitcond21, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a129class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>.430"([129 x i256]* noalias, [129 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]* noalias readonly align 32) unnamed_addr #2 {
entry:
  %2 = icmp eq [129 x i256]* %0, null
  %3 = icmp eq [129 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx20 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  %5 = getelementptr [129 x i256], [129 x i256]* %0, i64 0, i64 %for.loop.idx20
  %.promoted = load i256, i256* %5, align 4
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %.partset1 = phi i256 [ %.promoted, %for.loop ], [ %.partset, %for.loop2 ]
  %for.loop.idx319 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %src.addr6.0.0.017 = getelementptr [129 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"], [129 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]* %1, i64 0, i64 %for.loop.idx20, i32 0, i32 0, i64 %for.loop.idx319, i32 0, i32 0, i32 0
  %6 = mul nuw nsw i64 32, %for.loop.idx319
  %7 = load i32, i32* %src.addr6.0.0.017, align 4
  %8 = zext i64 %6 to i256
  %9 = shl i256 4294967295, %8
  %10 = zext i32 %7 to i256
  %11 = shl i256 %10, %8
  %12 = xor i256 %9, -1
  %13 = and i256 %.partset1, %12
  %.partset = or i256 %13, %11
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx319, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 8
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  store i256 %.partset, i256* %5, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx20, 1
  %exitcond21 = icmp ne i64 %for.loop.idx.next, 129
  br i1 %exitcond21, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

declare void @apatb_ViT_act_hw(i32, i1, [3 x [128 x [256 x i8]]]*, [129 x [24 x i256]]*, [24 x i256]*, [24 x i256]*, [24 x i256]*, i256*, [129 x [4 x i128]]*, i256*, [3 x [16 x [16 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]*, i16*, [24 x i256]*, [4 x [192 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]*, [4 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]*, [768 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]*, [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]*, [192 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]*, [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]*, [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]*, [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([1 x [3 x [128 x [256 x %"struct.ap_uint<8>"]]]]* noalias "unpacked"="0", [1 x [3 x [128 x [256 x i8]]]]* noalias readonly "unpacked"="1", [1 x [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]]* noalias "unpacked"="2", [1 x [129 x [24 x i256]]]* noalias readonly "unpacked"="3", [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]* noalias "unpacked"="4", [129 x [24 x i256]]* noalias readonly "unpacked"="5", [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]* noalias "unpacked"="6", [129 x [24 x i256]]* noalias readonly "unpacked"="7", [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]* noalias "unpacked"="8", [129 x [24 x i256]]* noalias readonly "unpacked"="9", [12384 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]* noalias align 32 "unpacked"="10", [12384 x i256]* noalias readonly "unpacked"="11", [33 x [129 x [4 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 4>"]]]* noalias "unpacked"="12", [33 x [129 x [4 x i128]]]* noalias readonly "unpacked"="13", [129 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]* noalias align 32 "unpacked"="14", [129 x i256]* noalias readonly "unpacked"="15", [192 x [3 x [16 x [16 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]]* noalias "unpacked"="16", [192 x [3 x [16 x [16 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]]* noalias readonly "unpacked"="17", [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="18", [192 x i16]* noalias nocapture readonly align 512 "unpacked"="19.0.0.0", [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]* noalias "unpacked"="20", [129 x [24 x i256]]* noalias readonly "unpacked"="21", [12 x [4 x [192 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]]* noalias "unpacked"="22", [12 x [4 x [192 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]]* noalias readonly "unpacked"="23", [12 x [4 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* noalias "unpacked"="24", [12 x [4 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* noalias readonly "unpacked"="25", [6 x [768 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* noalias "unpacked"="26", [6 x [768 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* noalias readonly "unpacked"="27", [6 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* noalias "unpacked"="28", [6 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* noalias readonly "unpacked"="29", [6 x [192 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* noalias "unpacked"="30", [6 x [192 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* noalias readonly "unpacked"="31", [6 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* noalias "unpacked"="32", [6 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* noalias readonly align 512 "unpacked"="33", [12 x [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* noalias "unpacked"="34", [12 x [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* noalias readonly "unpacked"="35", [12 x [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* noalias "unpacked"="36", [12 x [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* noalias readonly "unpacked"="37") unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a1a129a24class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>.388"([1 x [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]]* %2, [1 x [129 x [24 x i256]]]* %3)
  call fastcc void @"onebyonecpy_hls.p0a129a24class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"([129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]* %4, [129 x [24 x i256]]* %5)
  call fastcc void @"onebyonecpy_hls.p0a129a24class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"([129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]* %6, [129 x [24 x i256]]* %7)
  call fastcc void @"onebyonecpy_hls.p0a129a24class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"([129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]* %8, [129 x [24 x i256]]* %9)
  call fastcc void @"onebyonecpy_hls.p0a12384class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>.422"([12384 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]* align 32 %10, [12384 x i256]* %11)
  call fastcc void @"onebyonecpy_hls.p0a33a129a4class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 4>"([33 x [129 x [4 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 4>"]]]* %12, [33 x [129 x [4 x i128]]]* %13)
  call fastcc void @"onebyonecpy_hls.p0a129class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"([129 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]* align 32 %14, [129 x i256]* %15)
  ret void
}

define void @ViT_act_hw_stub_wrapper(i32, i1, [3 x [128 x [256 x i8]]]*, [129 x [24 x i256]]*, [24 x i256]*, [24 x i256]*, [24 x i256]*, i256*, [129 x [4 x i128]]*, i256*, [3 x [16 x [16 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]*, i16*, [24 x i256]*, [4 x [192 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]*, [4 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]*, [768 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]*, [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]*, [192 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]*, [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]*, [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]*, [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]*) #4 {
entry:
  %malloccall = tail call i8* @malloc(i64 98304)
  %21 = bitcast i8* %malloccall to [1 x [3 x [128 x [256 x %"struct.ap_uint<8>"]]]]*
  %malloccall1 = tail call i8* @malloc(i64 99072)
  %22 = bitcast i8* %malloccall1 to [1 x [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]]*
  %malloccall2 = tail call i8* @malloc(i64 99072)
  %23 = bitcast i8* %malloccall2 to [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]*
  %malloccall3 = tail call i8* @malloc(i64 99072)
  %24 = bitcast i8* %malloccall3 to [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]*
  %malloccall4 = tail call i8* @malloc(i64 99072)
  %25 = bitcast i8* %malloccall4 to [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]*
  %malloccall5 = tail call i8* @malloc(i64 396288)
  %26 = bitcast i8* %malloccall5 to [12384 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]*
  %malloccall6 = tail call i8* @malloc(i64 272448)
  %27 = bitcast i8* %malloccall6 to [33 x [129 x [4 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 4>"]]]*
  %malloccall7 = tail call i8* @malloc(i64 4128)
  %28 = bitcast i8* %malloccall7 to [129 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]*
  %29 = alloca [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]
  %malloccall8 = tail call i8* @malloc(i64 99072)
  %30 = bitcast i8* %malloccall8 to [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]*
  %31 = bitcast [3 x [128 x [256 x i8]]]* %2 to [1 x [3 x [128 x [256 x i8]]]]*
  %32 = bitcast [129 x [24 x i256]]* %3 to [1 x [129 x [24 x i256]]]*
  %33 = bitcast [24 x i256]* %4 to [129 x [24 x i256]]*
  %34 = bitcast [24 x i256]* %5 to [129 x [24 x i256]]*
  %35 = bitcast [24 x i256]* %6 to [129 x [24 x i256]]*
  %36 = bitcast i256* %7 to [12384 x i256]*
  %37 = bitcast [129 x [4 x i128]]* %8 to [33 x [129 x [4 x i128]]]*
  %38 = bitcast i256* %9 to [129 x i256]*
  %39 = bitcast [3 x [16 x [16 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %10 to [192 x [3 x [16 x [16 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]]*
  %40 = bitcast i16* %11 to [192 x i16]*
  %41 = bitcast [24 x i256]* %12 to [129 x [24 x i256]]*
  %42 = bitcast [4 x [192 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %13 to [12 x [4 x [192 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]]*
  %43 = bitcast [4 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* %14 to [12 x [4 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]*
  %44 = bitcast [768 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* %15 to [6 x [768 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]*
  %45 = bitcast [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* %16 to [6 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]*
  %46 = bitcast [192 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* %17 to [6 x [192 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]*
  %47 = bitcast [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* %18 to [6 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]*
  %48 = bitcast [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* %19 to [12 x [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]*
  %49 = bitcast [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* %20 to [12 x [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]*
  call void @copy_out([1 x [3 x [128 x [256 x %"struct.ap_uint<8>"]]]]* %21, [1 x [3 x [128 x [256 x i8]]]]* %31, [1 x [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]]* %22, [1 x [129 x [24 x i256]]]* %32, [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]* %23, [129 x [24 x i256]]* %33, [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]* %24, [129 x [24 x i256]]* %34, [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]* %25, [129 x [24 x i256]]* %35, [12384 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]* %26, [12384 x i256]* %36, [33 x [129 x [4 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 4>"]]]* %27, [33 x [129 x [4 x i128]]]* %37, [129 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]* %28, [129 x i256]* %38, [192 x [3 x [16 x [16 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]]* null, [192 x [3 x [16 x [16 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]]* %39, [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* %29, [192 x i16]* %40, [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]* %30, [129 x [24 x i256]]* %41, [12 x [4 x [192 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]]* null, [12 x [4 x [192 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]]* %42, [12 x [4 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* null, [12 x [4 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %43, [6 x [768 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* null, [6 x [768 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %44, [6 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* null, [6 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* %45, [6 x [192 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* null, [6 x [192 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %46, [6 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* null, [6 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* %47, [12 x [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* null, [12 x [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %48, [12 x [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* null, [12 x [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %49)
  %50 = bitcast [1 x [3 x [128 x [256 x %"struct.ap_uint<8>"]]]]* %21 to [3 x [128 x [256 x %"struct.ap_uint<8>"]]]*
  %51 = bitcast [1 x [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]]* %22 to [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]*
  %52 = bitcast [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]* %23 to [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]*
  %53 = bitcast [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]* %24 to [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]*
  %54 = bitcast [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]* %25 to [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]*
  %55 = bitcast [12384 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]* %26 to %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"*
  %56 = bitcast [33 x [129 x [4 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 4>"]]]* %27 to [129 x [4 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 4>"]]*
  %57 = bitcast [129 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]* %28 to %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"*
  %58 = bitcast [192 x [3 x [16 x [16 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]]* %39 to [3 x [16 x [16 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]*
  %59 = bitcast [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* %29 to %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"*
  %60 = bitcast [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]* %30 to [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]*
  %61 = bitcast [12 x [4 x [192 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]]* %42 to [4 x [192 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]*
  %62 = bitcast [12 x [4 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %43 to [4 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]*
  %63 = bitcast [6 x [768 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %44 to [768 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]*
  %64 = bitcast [6 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* %45 to [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]*
  %65 = bitcast [6 x [192 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %46 to [192 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]*
  %66 = bitcast [6 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* %47 to [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]*
  %67 = bitcast [12 x [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %48 to [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]*
  %68 = bitcast [12 x [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %49 to [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]*
  call void @ViT_act_hw_stub(i32 %0, i1 %1, [3 x [128 x [256 x %"struct.ap_uint<8>"]]]* %50, [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]* %51, [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]* %52, [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]* %53, [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]* %54, %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"* %55, [129 x [4 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 4>"]]* %56, %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"* %57, [3 x [16 x [16 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %58, %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"* %59, [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]* %60, [4 x [192 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %61, [4 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* %62, [768 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* %63, [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* %64, [192 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* %65, [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* %66, [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* %67, [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* %68)
  call void @copy_in([1 x [3 x [128 x [256 x %"struct.ap_uint<8>"]]]]* %21, [1 x [3 x [128 x [256 x i8]]]]* %31, [1 x [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]]* %22, [1 x [129 x [24 x i256]]]* %32, [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]* %23, [129 x [24 x i256]]* %33, [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]* %24, [129 x [24 x i256]]* %34, [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]* %25, [129 x [24 x i256]]* %35, [12384 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]* %26, [12384 x i256]* %36, [33 x [129 x [4 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 4>"]]]* %27, [33 x [129 x [4 x i128]]]* %37, [129 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]* %28, [129 x i256]* %38, [192 x [3 x [16 x [16 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]]* null, [192 x [3 x [16 x [16 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]]* %39, [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* %29, [192 x i16]* %40, [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]* %30, [129 x [24 x i256]]* %41, [12 x [4 x [192 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]]* null, [12 x [4 x [192 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]]* %42, [12 x [4 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* null, [12 x [4 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %43, [6 x [768 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* null, [6 x [768 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %44, [6 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* null, [6 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* %45, [6 x [192 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* null, [6 x [192 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %46, [6 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* null, [6 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]* %47, [12 x [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* null, [12 x [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %48, [12 x [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* null, [12 x [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]* %49)
  ret void
}

declare void @ViT_act_hw_stub(i32, i1, [3 x [128 x [256 x %"struct.ap_uint<8>"]]]*, [129 x [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]]*, [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]*, [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]*, [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]*, %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"*, [129 x [4 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 4>"]]*, %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"*, [3 x [16 x [16 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]*, %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"*, [24 x %"class.hls::vector<ap_fixed<32, 10, AP_TRN, AP_WRAP, 0>, 8>"]*, [4 x [192 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]]*, [4 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]*, [768 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]*, [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]*, [192 x [768 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]*, [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]*, [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]*, [2 x [192 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]]*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
