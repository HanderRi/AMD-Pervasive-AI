set SynModuleInfo {
  {SRCNAME load_one_time_weights_Pipeline__ln13_for_block_dim_out MODELNAME load_one_time_weights_Pipeline_ln13_for_block_dim_out RTLNAME ViT_act_load_one_time_weights_Pipeline_ln13_for_block_dim_out
    SUBMODULES {
      {MODELNAME ViT_act_flow_control_loop_pipe_sequential_init RTLNAME ViT_act_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME ViT_act_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME load_one_time_weights_Pipeline__ln29_for_each_channel__ln33_for_block_dim_out__l MODELNAME load_one_time_weights_Pipeline_ln29_for_each_channel_ln33_for_block_dim_out_l RTLNAME ViT_act_load_one_time_weights_Pipeline_ln29_for_each_channel_ln33_for_block_dim_out_l}
  {SRCNAME load_one_time_weights MODELNAME load_one_time_weights RTLNAME ViT_act_load_one_time_weights}
  {SRCNAME {patch_embed_accumulate<16u, 128u, 8u>_Block_entry2_proc8} MODELNAME patch_embed_accumulate_16u_128u_8u_Block_entry2_proc8 RTLNAME ViT_act_patch_embed_accumulate_16u_128u_8u_Block_entry2_proc8}
  {SRCNAME {patch_embed_accumulate_read<16u, 128u, 8u>} MODELNAME patch_embed_accumulate_read_16u_128u_8u_s RTLNAME ViT_act_patch_embed_accumulate_read_16u_128u_8u_s}
  {SRCNAME {patch_embed_accumulate_compute<16u, 128u, 8u>} MODELNAME patch_embed_accumulate_compute_16u_128u_8u_s RTLNAME ViT_act_patch_embed_accumulate_compute_16u_128u_8u_s
    SUBMODULES {
      {MODELNAME ViT_act_mul_mul_16s_8ns_24_4_1 RTLNAME ViT_act_mul_mul_16s_8ns_24_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME ViT_act_mul_mul_8ns_16s_24_4_1 RTLNAME ViT_act_mul_mul_8ns_16s_24_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME ViT_act_mac_muladd_16s_8ns_24s_25_4_1 RTLNAME ViT_act_mac_muladd_16s_8ns_24s_25_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME ViT_act_mac_muladd_8ns_16s_24s_25_4_1 RTLNAME ViT_act_mac_muladd_8ns_16s_24s_25_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME ViT_act_mac_muladd_8ns_16s_25s_26_4_1 RTLNAME ViT_act_mac_muladd_8ns_16s_25s_26_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME ViT_act_mac_muladd_8ns_16s_26s_34_4_1 RTLNAME ViT_act_mac_muladd_8ns_16s_26s_34_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME ViT_act_mac_muladd_8ns_16s_34s_34_4_1 RTLNAME ViT_act_mac_muladd_8ns_16s_34s_34_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME ViT_act_mac_muladd_16s_8ns_34s_34_4_1 RTLNAME ViT_act_mac_muladd_16s_8ns_34s_34_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME ViT_act_flow_control_loop_delay_pipe RTLNAME ViT_act_flow_control_loop_delay_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME ViT_act_flow_control_loop_delay_pipe_U}
    }
  }
  {SRCNAME {patch_embed_accumulate<16u, 128u, 8u>} MODELNAME patch_embed_accumulate_16u_128u_8u_s RTLNAME ViT_act_patch_embed_accumulate_16u_128u_8u_s
    SUBMODULES {
      {MODELNAME ViT_act_fifo_w7_d2_S RTLNAME ViT_act_fifo_w7_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME tmp_U}
      {MODELNAME ViT_act_fifo_w256_d2_S RTLNAME ViT_act_fifo_w256_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME image_stream_i_U}
    }
  }
  {SRCNAME patch_embed_output_Pipeline__ln147_for_each_patch_x__ln149_for_block_dim MODELNAME patch_embed_output_Pipeline_ln147_for_each_patch_x_ln149_for_block_dim RTLNAME ViT_act_patch_embed_output_Pipeline_ln147_for_each_patch_x_ln149_for_block_dim}
  {SRCNAME patch_embed_output MODELNAME patch_embed_output RTLNAME ViT_act_patch_embed_output}
  {SRCNAME dataflow_in_loop__ln171_for_block_y MODELNAME dataflow_in_loop_ln171_for_block_y RTLNAME ViT_act_dataflow_in_loop_ln171_for_block_y
    SUBMODULES {
      {MODELNAME ViT_act_dataflow_in_loop_ln171_for_block_y_patches31_RAM_AUTO_1R1W_memcore RTLNAME ViT_act_dataflow_in_loop_ln171_for_block_y_patches31_RAM_AUTO_1R1W_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ViT_act_dataflow_in_loop_ln171_for_block_y_patches31_RAM_AUTO_1R1W RTLNAME ViT_act_dataflow_in_loop_ln171_for_block_y_patches31_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dataflow_parent_loop_proc MODELNAME dataflow_parent_loop_proc RTLNAME ViT_act_dataflow_parent_loop_proc}
  {SRCNAME compute_patch_embed_Pipeline__ln184_for_block_dim MODELNAME compute_patch_embed_Pipeline_ln184_for_block_dim RTLNAME ViT_act_compute_patch_embed_Pipeline_ln184_for_block_dim}
  {SRCNAME compute_patch_embed MODELNAME compute_patch_embed RTLNAME ViT_act_compute_patch_embed}
  {SRCNAME load_norms_Pipeline__ln16_for_block_dim_out MODELNAME load_norms_Pipeline_ln16_for_block_dim_out RTLNAME ViT_act_load_norms_Pipeline_ln16_for_block_dim_out}
  {SRCNAME load_norms_Pipeline__ln28_for_block_dim_out MODELNAME load_norms_Pipeline_ln28_for_block_dim_out RTLNAME ViT_act_load_norms_Pipeline_ln28_for_block_dim_out}
  {SRCNAME load_norms_Pipeline__ln40_for_block_dim_out MODELNAME load_norms_Pipeline_ln40_for_block_dim_out RTLNAME ViT_act_load_norms_Pipeline_ln40_for_block_dim_out}
  {SRCNAME load_norms_Pipeline__ln52_for_block_dim_out MODELNAME load_norms_Pipeline_ln52_for_block_dim_out RTLNAME ViT_act_load_norms_Pipeline_ln52_for_block_dim_out}
  {SRCNAME load_norms MODELNAME load_norms RTLNAME ViT_act_load_norms}
  {SRCNAME layernorm_accumulate MODELNAME layernorm_accumulate RTLNAME ViT_act_layernorm_accumulate
    SUBMODULES {
      {MODELNAME ViT_act_mul_32s_16ns_48_1_1 RTLNAME ViT_act_mul_32s_16ns_48_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME ViT_act_mul_32s_26s_54_1_1 RTLNAME ViT_act_mul_32s_26s_54_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {sqrt_fixed<32, 10>} MODELNAME sqrt_fixed_32_10_s RTLNAME ViT_act_sqrt_fixed_32_10_s}
  {SRCNAME layernorm_output MODELNAME layernorm_output RTLNAME ViT_act_layernorm_output
    SUBMODULES {
      {MODELNAME ViT_act_mul_32s_32s_54_1_1 RTLNAME ViT_act_mul_32s_32s_54_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME ViT_act_udiv_45s_27ns_32_49_1 RTLNAME ViT_act_udiv_45s_27ns_32_49_1 BINDTYPE op TYPE udiv IMPL auto LATENCY 48 ALLOW_PRAGMA 1}
      {MODELNAME ViT_act_mul_32s_54s_54_1_1 RTLNAME ViT_act_mul_32s_54s_54_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME ViT_act_mul_32s_16s_43_1_1 RTLNAME ViT_act_mul_32s_16s_43_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dataflow_in_loop__ln131_for_each_patch MODELNAME dataflow_in_loop_ln131_for_each_patch RTLNAME ViT_act_dataflow_in_loop_ln131_for_each_patch
    SUBMODULES {
      {MODELNAME ViT_act_dataflow_in_loop_ln131_for_each_patch_x_patch_data_M_elems_V_RAM_AUTO_1R1W_memcore RTLNAME ViT_act_dataflow_in_loop_ln131_for_each_patch_x_patch_data_M_elems_V_RAM_AUTO_1R1W_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ViT_act_dataflow_in_loop_ln131_for_each_patch_x_patch_data_M_elems_V_RAM_AUTO_1R1W RTLNAME ViT_act_dataflow_in_loop_ln131_for_each_patch_x_patch_data_M_elems_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ViT_act_fifo_w32_d2_S RTLNAME ViT_act_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME mean_V_U}
      {MODELNAME ViT_act_fifo_w32_d2_S RTLNAME ViT_act_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME mean_sq_V_U}
    }
  }
  {SRCNAME compute_norm MODELNAME compute_norm RTLNAME ViT_act_compute_norm}
  {SRCNAME load_linear_weights_Pipeline__ln46_for_each_src_block MODELNAME load_linear_weights_Pipeline_ln46_for_each_src_block RTLNAME ViT_act_load_linear_weights_Pipeline_ln46_for_each_src_block
    SUBMODULES {
      {MODELNAME ViT_act_load_linear_weights_Pipeline_ln46_for_each_src_block_weights_cache_data_M_elebkb RTLNAME ViT_act_load_linear_weights_Pipeline_ln46_for_each_src_block_weights_cache_data_M_elebkb BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME load_linear_weights MODELNAME load_linear_weights RTLNAME ViT_act_load_linear_weights
    SUBMODULES {
      {MODELNAME ViT_act_mul_mul_6ns_10ns_16_4_1 RTLNAME ViT_act_mul_mul_6ns_10ns_16_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {load_linear_bias<ap_fixed<16, 7, 5, 3, 0> >_Pipeline__ln130_for_each_src_block} MODELNAME load_linear_bias_ap_fixed_16_7_5_3_0_Pipeline_ln130_for_each_src_block RTLNAME ViT_act_load_linear_bias_ap_fixed_16_7_5_3_0_Pipeline_ln130_for_each_src_block}
  {SRCNAME {load_linear_bias<ap_fixed<16, 7, 5, 3, 0> >} MODELNAME load_linear_bias_ap_fixed_16_7_5_3_0_s RTLNAME ViT_act_load_linear_bias_ap_fixed_16_7_5_3_0_s}
  {SRCNAME entry_proc24 MODELNAME entry_proc24 RTLNAME ViT_act_entry_proc24}
  {SRCNAME read_in_stream_direct_Pipeline__ln181_for_each_i MODELNAME read_in_stream_direct_Pipeline_ln181_for_each_i RTLNAME ViT_act_read_in_stream_direct_Pipeline_ln181_for_each_i}
  {SRCNAME read_in_stream_direct MODELNAME read_in_stream_direct RTLNAME ViT_act_read_in_stream_direct}
  {SRCNAME gelu MODELNAME gelu RTLNAME ViT_act_gelu
    SUBMODULES {
      {MODELNAME ViT_act_mul_22ns_21s_43_1_1 RTLNAME ViT_act_mul_22ns_21s_43_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME ViT_act_gelu_GELU_DELTA_TABLE_V_ROM_NP_BRAM_1R RTLNAME ViT_act_gelu_GELU_DELTA_TABLE_V_ROM_NP_BRAM_1R BINDTYPE storage TYPE rom_np IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME compute_linear_on_stream_Pipeline__ln290_for_each_i MODELNAME compute_linear_on_stream_Pipeline_ln290_for_each_i RTLNAME ViT_act_compute_linear_on_stream_Pipeline_ln290_for_each_i
    SUBMODULES {
      {MODELNAME ViT_act_mul_32s_16s_46_1_1 RTLNAME ViT_act_mul_32s_16s_46_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME ViT_act_compute_linear_on_stream_Pipeline_ln290_for_each_i_in_blocks_data_M_elems_V_0ejP RTLNAME ViT_act_compute_linear_on_stream_Pipeline_ln290_for_each_i_in_blocks_data_M_elems_V_0ejP BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME compute_linear_on_stream MODELNAME compute_linear_on_stream RTLNAME ViT_act_compute_linear_on_stream
    SUBMODULES {
      {MODELNAME ViT_act_mul_7ns_7ns_14_1_1 RTLNAME ViT_act_mul_7ns_7ns_14_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME write_out_stream_direct_Pipeline__ln231_for_each_i MODELNAME write_out_stream_direct_Pipeline_ln231_for_each_i RTLNAME ViT_act_write_out_stream_direct_Pipeline_ln231_for_each_i
    SUBMODULES {
      {MODELNAME ViT_act_mux_21_32_1_1 RTLNAME ViT_act_mux_21_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME write_out_stream_direct MODELNAME write_out_stream_direct RTLNAME ViT_act_write_out_stream_direct}
  {SRCNAME compute_linear MODELNAME compute_linear RTLNAME ViT_act_compute_linear
    SUBMODULES {
      {MODELNAME ViT_act_fifo_w64_d4_S RTLNAME ViT_act_fifo_w64_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME dst_c_U}
      {MODELNAME ViT_act_fifo_w512_d48_A RTLNAME ViT_act_fifo_w512_d48_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME in_stream_U}
      {MODELNAME ViT_act_fifo_w512_d2_S RTLNAME ViT_act_fifo_w512_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME out_stream_U}
      {MODELNAME ViT_act_fifo_w10_d2_S RTLNAME ViT_act_fifo_w10_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME out_dim_offset_c_U}
      {MODELNAME ViT_act_start_for_write_out_stream_direct_U0 RTLNAME ViT_act_start_for_write_out_stream_direct_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_write_out_stream_direct_U0_U}
    }
  }
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME ViT_act_entry_proc}
  {SRCNAME read_x_Pipeline__ln18_for_each_patch__ln20_for_block_in_dim MODELNAME read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim RTLNAME ViT_act_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim}
  {SRCNAME read_x MODELNAME read_x RTLNAME ViT_act_read_x}
  {SRCNAME read_k_v MODELNAME read_k_v RTLNAME ViT_act_read_k_v
    SUBMODULES {
      {MODELNAME ViT_act_flow_control_loop_pipe RTLNAME ViT_act_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME ViT_act_flow_control_loop_pipe_U}
    }
  }
  {SRCNAME compute_q_matmul_k.5 MODELNAME compute_q_matmul_k_5 RTLNAME ViT_act_compute_q_matmul_k_5
    SUBMODULES {
      {MODELNAME ViT_act_mul_32s_20ns_52_1_1 RTLNAME ViT_act_mul_32s_20ns_52_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME ViT_act_mux_32_32_1_1 RTLNAME ViT_act_mux_32_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME ViT_act_compute_q_matmul_k_5_q_blocks_data_M_elems_V_0_RAM_AUTO_1R1W RTLNAME ViT_act_compute_q_matmul_k_5_q_blocks_data_M_elems_V_0_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {exp<32, 10>} MODELNAME exp_32_10_s RTLNAME ViT_act_exp_32_10_s
    SUBMODULES {
      {MODELNAME ViT_act_mul_44ns_42ns_86_1_1 RTLNAME ViT_act_mul_44ns_42ns_86_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME ViT_act_mul_50ns_48ns_98_1_1 RTLNAME ViT_act_mul_50ns_48ns_98_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME ViT_act_mul_50ns_50ns_100_1_1 RTLNAME ViT_act_mul_50ns_50ns_100_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME ViT_act_mac_muladd_3ns_4ns_9ns_10_4_1 RTLNAME ViT_act_mac_muladd_3ns_4ns_9ns_10_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME ViT_act_exp_32_10_s_f_x_msb_4_h_table_V_ROM_AUTO_1R RTLNAME ViT_act_exp_32_10_s_f_x_msb_4_h_table_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ViT_act_exp_32_10_s_f_x_msb_4_l_table_V_ROM_AUTO_1R RTLNAME ViT_act_exp_32_10_s_f_x_msb_4_l_table_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ViT_act_exp_32_10_s_f_x_lsb_table_V_ROM_AUTO_1R RTLNAME ViT_act_exp_32_10_s_f_x_lsb_table_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ViT_act_exp_32_10_s_f_x_msb_3_table_V_ROM_AUTO_1R RTLNAME ViT_act_exp_32_10_s_f_x_msb_3_table_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ViT_act_exp_32_10_s_f_x_msb_2_table_V_ROM_AUTO_1R RTLNAME ViT_act_exp_32_10_s_f_x_msb_2_table_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ViT_act_exp_32_10_s_exp_x_msb_1_table_V_ROM_AUTO_1R RTLNAME ViT_act_exp_32_10_s_exp_x_msb_1_table_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {recip_fixed<32, 10>} MODELNAME recip_fixed_32_10_s RTLNAME ViT_act_recip_fixed_32_10_s
    SUBMODULES {
      {MODELNAME ViT_act_sdiv_46ns_32s_32_50_0 RTLNAME ViT_act_sdiv_46ns_32s_32_50_0 BINDTYPE op TYPE sdiv IMPL auto LATENCY 49 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME finalize_attn MODELNAME finalize_attn RTLNAME ViT_act_finalize_attn
    SUBMODULES {
      {MODELNAME ViT_act_mux_42_32_1_1 RTLNAME ViT_act_mux_42_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME ViT_act_mul_31ns_32s_54_1_1 RTLNAME ViT_act_mul_31ns_32s_54_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME write_attn_Pipeline__ln245_for_each_q_patch_block__ln247_for_each_k_patch__ln249 MODELNAME write_attn_Pipeline_ln245_for_each_q_patch_block_ln247_for_each_k_patch_ln249 RTLNAME ViT_act_write_attn_Pipeline_ln245_for_each_q_patch_block_ln247_for_each_k_patch_ln249}
  {SRCNAME write_attn MODELNAME write_attn RTLNAME ViT_act_write_attn}
  {SRCNAME write_attn_softmax_info_Pipeline__ln277_for_each_q_patch MODELNAME write_attn_softmax_info_Pipeline_ln277_for_each_q_patch RTLNAME ViT_act_write_attn_softmax_info_Pipeline_ln277_for_each_q_patch}
  {SRCNAME write_attn_softmax_info MODELNAME write_attn_softmax_info RTLNAME ViT_act_write_attn_softmax_info}
  {SRCNAME compute_q_matmul_k MODELNAME compute_q_matmul_k RTLNAME ViT_act_compute_q_matmul_k
    SUBMODULES {
      {MODELNAME ViT_act_fifo_w64_d5_S RTLNAME ViT_act_fifo_w64_d5_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME attn_c_U}
      {MODELNAME ViT_act_fifo_w64_d5_S RTLNAME ViT_act_fifo_w64_d5_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME attn_softmax_info_c_U}
      {MODELNAME ViT_act_fifo_w256_d2_S_x RTLNAME ViT_act_fifo_w256_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME q_stream_U}
      {MODELNAME ViT_act_fifo_w256_d2_S_x RTLNAME ViT_act_fifo_w256_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME k_stream_U}
      {MODELNAME ViT_act_fifo_w512_d2_S_x RTLNAME ViT_act_fifo_w512_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME qxk_stream_U}
      {MODELNAME ViT_act_fifo_w128_d2_S RTLNAME ViT_act_fifo_w128_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME attn_stream_U}
      {MODELNAME ViT_act_fifo_w256_d2_S_x RTLNAME ViT_act_fifo_w256_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME attn_softmax_info_stream_U}
      {MODELNAME ViT_act_start_for_write_attn_U0 RTLNAME ViT_act_start_for_write_attn_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_write_attn_U0_U}
      {MODELNAME ViT_act_start_for_write_attn_softmax_info_U0 RTLNAME ViT_act_start_for_write_attn_softmax_info_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_write_attn_softmax_info_U0_U}
      {MODELNAME ViT_act_start_for_finalize_attn_U0 RTLNAME ViT_act_start_for_finalize_attn_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_finalize_attn_U0_U}
    }
  }
  {SRCNAME entry_proc25 MODELNAME entry_proc25 RTLNAME ViT_act_entry_proc25}
  {SRCNAME read_k_v.6 MODELNAME read_k_v_6 RTLNAME ViT_act_read_k_v_6}
  {SRCNAME read_attn MODELNAME read_attn RTLNAME ViT_act_read_attn}
  {SRCNAME read_attn_softmax_info_Pipeline__ln388_for_each_q_patch MODELNAME read_attn_softmax_info_Pipeline_ln388_for_each_q_patch RTLNAME ViT_act_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch}
  {SRCNAME read_attn_softmax_info MODELNAME read_attn_softmax_info RTLNAME ViT_act_read_attn_softmax_info}
  {SRCNAME prepare_attn MODELNAME prepare_attn RTLNAME ViT_act_prepare_attn}
  {SRCNAME compute_attn_matmul_v.7 MODELNAME compute_attn_matmul_v_7 RTLNAME ViT_act_compute_attn_matmul_v_7
    SUBMODULES {
      {MODELNAME ViT_act_compute_attn_matmul_v_7_acc_blocks_0_RAM_AUTO_1R1W RTLNAME ViT_act_compute_attn_matmul_v_7_acc_blocks_0_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME write_attn_matmul_v_Pipeline__ln403_for_each_patch__ln405_for_block_dim MODELNAME write_attn_matmul_v_Pipeline_ln403_for_each_patch_ln405_for_block_dim RTLNAME ViT_act_write_attn_matmul_v_Pipeline_ln403_for_each_patch_ln405_for_block_dim}
  {SRCNAME write_attn_matmul_v MODELNAME write_attn_matmul_v RTLNAME ViT_act_write_attn_matmul_v}
  {SRCNAME compute_attn_matmul_v MODELNAME compute_attn_matmul_v RTLNAME ViT_act_compute_attn_matmul_v
    SUBMODULES {
      {MODELNAME ViT_act_fifo_w64_d5_S_x RTLNAME ViT_act_fifo_w64_d5_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME attn_matmul_v_c_U}
      {MODELNAME ViT_act_fifo_w256_d2_S_x0 RTLNAME ViT_act_fifo_w256_d2_S_x0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_stream_U}
      {MODELNAME ViT_act_fifo_w128_d2_S_x RTLNAME ViT_act_fifo_w128_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME attn_stream_U}
      {MODELNAME ViT_act_fifo_w256_d2_S_x0 RTLNAME ViT_act_fifo_w256_d2_S_x0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME attn_softmax_info_stream_U}
      {MODELNAME ViT_act_fifo_w512_d2_S_x0 RTLNAME ViT_act_fifo_w512_d2_S_x0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME qxk_out_stream_U}
      {MODELNAME ViT_act_fifo_w256_d2_S_x0 RTLNAME ViT_act_fifo_w256_d2_S_x0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME attn_matmul_v_stream_U}
      {MODELNAME ViT_act_start_for_write_attn_matmul_v_U0 RTLNAME ViT_act_start_for_write_attn_matmul_v_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_write_attn_matmul_v_U0_U}
      {MODELNAME ViT_act_start_for_compute_attn_matmul_v_7_U0 RTLNAME ViT_act_start_for_compute_attn_matmul_v_7_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_compute_attn_matmul_v_7_U0_U}
      {MODELNAME ViT_act_start_for_prepare_attn_U0 RTLNAME ViT_act_start_for_prepare_attn_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_prepare_attn_U0_U}
    }
  }
  {SRCNAME compute_add MODELNAME compute_add RTLNAME ViT_act_compute_add}
  {SRCNAME {load_linear_bias<ap_fixed<16, 5, 5, 3, 0> >_Pipeline__ln130_for_each_src_block} MODELNAME load_linear_bias_ap_fixed_16_5_5_3_0_Pipeline_ln130_for_each_src_block RTLNAME ViT_act_load_linear_bias_ap_fixed_16_5_5_3_0_Pipeline_ln130_for_each_src_block}
  {SRCNAME {load_linear_bias<ap_fixed<16, 5, 5, 3, 0> >} MODELNAME load_linear_bias_ap_fixed_16_5_5_3_0_s RTLNAME ViT_act_load_linear_bias_ap_fixed_16_5_5_3_0_s}
  {SRCNAME ViT_act MODELNAME ViT_act RTLNAME ViT_act IS_TOP 1
    SUBMODULES {
      {MODELNAME ViT_act_patch_embed_bias_r_RAM_AUTO_1R1W RTLNAME ViT_act_patch_embed_bias_r_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ViT_act_patch_embed_weights_r_RAM_AUTO_1R1W RTLNAME ViT_act_patch_embed_weights_r_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ViT_act_linear_weights_ping_data_RAM_AUTO_1R1W RTLNAME ViT_act_linear_weights_ping_data_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ViT_act_linear_bias_ping_data_RAM_AUTO_1R1W RTLNAME ViT_act_linear_bias_ping_data_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ViT_act_norm2_weights_RAM_AUTO_1R1W RTLNAME ViT_act_norm2_weights_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ViT_act_inout1_m_axi RTLNAME ViT_act_inout1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME ViT_act_inout2_m_axi RTLNAME ViT_act_inout2_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME ViT_act_inout3_m_axi RTLNAME ViT_act_inout3_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME ViT_act_inout4_m_axi RTLNAME ViT_act_inout4_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME ViT_act_weights_m_axi RTLNAME ViT_act_weights_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME ViT_act_control_s_axi RTLNAME ViT_act_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
