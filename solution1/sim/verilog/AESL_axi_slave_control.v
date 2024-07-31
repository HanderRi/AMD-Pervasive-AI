// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

module AESL_axi_slave_control (
    clk,
    reset,
    TRAN_s_axi_control_AWADDR,
    TRAN_s_axi_control_AWVALID,
    TRAN_s_axi_control_AWREADY,
    TRAN_s_axi_control_WVALID,
    TRAN_s_axi_control_WREADY,
    TRAN_s_axi_control_WDATA,
    TRAN_s_axi_control_WSTRB,
    TRAN_s_axi_control_ARADDR,
    TRAN_s_axi_control_ARVALID,
    TRAN_s_axi_control_ARREADY,
    TRAN_s_axi_control_RVALID,
    TRAN_s_axi_control_RREADY,
    TRAN_s_axi_control_RDATA,
    TRAN_s_axi_control_RRESP,
    TRAN_s_axi_control_BVALID,
    TRAN_s_axi_control_BREADY,
    TRAN_s_axi_control_BRESP,
    TRAN_control_write_data_finish,
    TRAN_control_start_in,
    TRAN_control_idle_out,
    TRAN_control_ready_out,
    TRAN_control_ready_in,
    TRAN_control_done_out,
    TRAN_control_write_start_in   ,
    TRAN_control_write_start_finish,
    TRAN_control_interrupt,
    TRAN_control_transaction_done_in
    );

//------------------------Parameter----------------------
`define TV_IN_images "../tv/cdatafile/c.ViT_act.autotvin_images.dat"
`define TV_IN_x "../tv/cdatafile/c.ViT_act.autotvin_x.dat"
`define TV_IN_tmp1 "../tv/cdatafile/c.ViT_act.autotvin_tmp1.dat"
`define TV_IN_tmp2 "../tv/cdatafile/c.ViT_act.autotvin_tmp2.dat"
`define TV_IN_tmp3 "../tv/cdatafile/c.ViT_act.autotvin_tmp3.dat"
`define TV_IN_tmp_hidden "../tv/cdatafile/c.ViT_act.autotvin_tmp_hidden.dat"
`define TV_IN_attn "../tv/cdatafile/c.ViT_act.autotvin_attn.dat"
`define TV_IN_attn_softmax_info "../tv/cdatafile/c.ViT_act.autotvin_attn_softmax_info.dat"
`define TV_IN_patch_embed_weights "../tv/cdatafile/c.ViT_act.autotvin_patch_embed_weights.dat"
`define TV_IN_patch_embed_bias "../tv/cdatafile/c.ViT_act.autotvin_patch_embed_bias.dat"
`define TV_IN_pos_embed "../tv/cdatafile/c.ViT_act.autotvin_pos_embed.dat"
`define TV_IN_attn_weights "../tv/cdatafile/c.ViT_act.autotvin_attn_weights.dat"
`define TV_IN_attn_bias "../tv/cdatafile/c.ViT_act.autotvin_attn_bias.dat"
`define TV_IN_vit_weights_l1 "../tv/cdatafile/c.ViT_act.autotvin_vit_weights_l1.dat"
`define TV_IN_vit_bias_l1 "../tv/cdatafile/c.ViT_act.autotvin_vit_bias_l1.dat"
`define TV_IN_vit_weights_l2 "../tv/cdatafile/c.ViT_act.autotvin_vit_weights_l2.dat"
`define TV_IN_vit_bias_l2 "../tv/cdatafile/c.ViT_act.autotvin_vit_bias_l2.dat"
`define TV_IN_norm_weights "../tv/cdatafile/c.ViT_act.autotvin_norm_weights.dat"
`define TV_IN_norm_bias "../tv/cdatafile/c.ViT_act.autotvin_norm_bias.dat"
parameter ADDR_WIDTH = 8;
parameter DATA_WIDTH = 32;
parameter images_DEPTH = 1;
reg [31 : 0] images_OPERATE_DEPTH = 0;
parameter images_c_bitwidth = 64;
parameter x_DEPTH = 1;
reg [31 : 0] x_OPERATE_DEPTH = 0;
parameter x_c_bitwidth = 64;
parameter tmp1_DEPTH = 1;
reg [31 : 0] tmp1_OPERATE_DEPTH = 0;
parameter tmp1_c_bitwidth = 64;
parameter tmp2_DEPTH = 1;
reg [31 : 0] tmp2_OPERATE_DEPTH = 0;
parameter tmp2_c_bitwidth = 64;
parameter tmp3_DEPTH = 1;
reg [31 : 0] tmp3_OPERATE_DEPTH = 0;
parameter tmp3_c_bitwidth = 64;
parameter tmp_hidden_DEPTH = 1;
reg [31 : 0] tmp_hidden_OPERATE_DEPTH = 0;
parameter tmp_hidden_c_bitwidth = 64;
parameter attn_DEPTH = 1;
reg [31 : 0] attn_OPERATE_DEPTH = 0;
parameter attn_c_bitwidth = 64;
parameter attn_softmax_info_DEPTH = 1;
reg [31 : 0] attn_softmax_info_OPERATE_DEPTH = 0;
parameter attn_softmax_info_c_bitwidth = 64;
parameter patch_embed_weights_DEPTH = 1;
reg [31 : 0] patch_embed_weights_OPERATE_DEPTH = 0;
parameter patch_embed_weights_c_bitwidth = 64;
parameter patch_embed_bias_DEPTH = 1;
reg [31 : 0] patch_embed_bias_OPERATE_DEPTH = 0;
parameter patch_embed_bias_c_bitwidth = 64;
parameter pos_embed_DEPTH = 1;
reg [31 : 0] pos_embed_OPERATE_DEPTH = 0;
parameter pos_embed_c_bitwidth = 64;
parameter attn_weights_DEPTH = 1;
reg [31 : 0] attn_weights_OPERATE_DEPTH = 0;
parameter attn_weights_c_bitwidth = 64;
parameter attn_bias_DEPTH = 1;
reg [31 : 0] attn_bias_OPERATE_DEPTH = 0;
parameter attn_bias_c_bitwidth = 64;
parameter vit_weights_l1_DEPTH = 1;
reg [31 : 0] vit_weights_l1_OPERATE_DEPTH = 0;
parameter vit_weights_l1_c_bitwidth = 64;
parameter vit_bias_l1_DEPTH = 1;
reg [31 : 0] vit_bias_l1_OPERATE_DEPTH = 0;
parameter vit_bias_l1_c_bitwidth = 64;
parameter vit_weights_l2_DEPTH = 1;
reg [31 : 0] vit_weights_l2_OPERATE_DEPTH = 0;
parameter vit_weights_l2_c_bitwidth = 64;
parameter vit_bias_l2_DEPTH = 1;
reg [31 : 0] vit_bias_l2_OPERATE_DEPTH = 0;
parameter vit_bias_l2_c_bitwidth = 64;
parameter norm_weights_DEPTH = 1;
reg [31 : 0] norm_weights_OPERATE_DEPTH = 0;
parameter norm_weights_c_bitwidth = 64;
parameter norm_bias_DEPTH = 1;
reg [31 : 0] norm_bias_OPERATE_DEPTH = 0;
parameter norm_bias_c_bitwidth = 64;
parameter START_ADDR = 0;
parameter ViT_act_continue_addr = 0;
parameter ViT_act_auto_start_addr = 0;
parameter images_data_in_addr = 16;
parameter x_data_in_addr = 28;
parameter tmp1_data_in_addr = 40;
parameter tmp2_data_in_addr = 52;
parameter tmp3_data_in_addr = 64;
parameter tmp_hidden_data_in_addr = 76;
parameter attn_data_in_addr = 88;
parameter attn_softmax_info_data_in_addr = 100;
parameter patch_embed_weights_data_in_addr = 112;
parameter patch_embed_bias_data_in_addr = 124;
parameter pos_embed_data_in_addr = 136;
parameter attn_weights_data_in_addr = 148;
parameter attn_bias_data_in_addr = 160;
parameter vit_weights_l1_data_in_addr = 172;
parameter vit_bias_l1_data_in_addr = 184;
parameter vit_weights_l2_data_in_addr = 196;
parameter vit_bias_l2_data_in_addr = 208;
parameter norm_weights_data_in_addr = 220;
parameter norm_bias_data_in_addr = 232;
parameter STATUS_ADDR = 0;

output [ADDR_WIDTH - 1 : 0] TRAN_s_axi_control_AWADDR;
output  TRAN_s_axi_control_AWVALID;
input  TRAN_s_axi_control_AWREADY;
output  TRAN_s_axi_control_WVALID;
input  TRAN_s_axi_control_WREADY;
output [DATA_WIDTH - 1 : 0] TRAN_s_axi_control_WDATA;
output [DATA_WIDTH/8 - 1 : 0] TRAN_s_axi_control_WSTRB;
output [ADDR_WIDTH - 1 : 0] TRAN_s_axi_control_ARADDR;
output  TRAN_s_axi_control_ARVALID;
input  TRAN_s_axi_control_ARREADY;
input  TRAN_s_axi_control_RVALID;
output  TRAN_s_axi_control_RREADY;
input [DATA_WIDTH - 1 : 0] TRAN_s_axi_control_RDATA;
input [2 - 1 : 0] TRAN_s_axi_control_RRESP;
input  TRAN_s_axi_control_BVALID;
output  TRAN_s_axi_control_BREADY;
input [2 - 1 : 0] TRAN_s_axi_control_BRESP;
output TRAN_control_write_data_finish;
input     clk;
input     reset;
input     TRAN_control_start_in;
output    TRAN_control_done_out;
output    TRAN_control_ready_out;
input     TRAN_control_ready_in;
output    TRAN_control_idle_out;
input  TRAN_control_write_start_in   ;
output TRAN_control_write_start_finish;
input     TRAN_control_interrupt;
input     TRAN_control_transaction_done_in;

reg [ADDR_WIDTH - 1 : 0] AWADDR_reg = 0;
reg  AWVALID_reg = 0;
reg  WVALID_reg = 0;
reg [DATA_WIDTH - 1 : 0] WDATA_reg = 0;
reg [DATA_WIDTH/8 - 1 : 0] WSTRB_reg = 0;
reg [ADDR_WIDTH - 1 : 0] ARADDR_reg = 0;
reg  ARVALID_reg = 0;
reg  RREADY_reg = 0;
reg [DATA_WIDTH - 1 : 0] RDATA_reg = 0;
reg  BREADY_reg = 0;
reg [images_c_bitwidth - 1 : 0] mem_images [images_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_images [ (images_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * images_DEPTH -1 : 0] = '{default : 'hz};
reg images_write_data_finish;
reg [x_c_bitwidth - 1 : 0] mem_x [x_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_x [ (x_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * x_DEPTH -1 : 0] = '{default : 'hz};
reg x_write_data_finish;
reg [tmp1_c_bitwidth - 1 : 0] mem_tmp1 [tmp1_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_tmp1 [ (tmp1_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * tmp1_DEPTH -1 : 0] = '{default : 'hz};
reg tmp1_write_data_finish;
reg [tmp2_c_bitwidth - 1 : 0] mem_tmp2 [tmp2_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_tmp2 [ (tmp2_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * tmp2_DEPTH -1 : 0] = '{default : 'hz};
reg tmp2_write_data_finish;
reg [tmp3_c_bitwidth - 1 : 0] mem_tmp3 [tmp3_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_tmp3 [ (tmp3_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * tmp3_DEPTH -1 : 0] = '{default : 'hz};
reg tmp3_write_data_finish;
reg [tmp_hidden_c_bitwidth - 1 : 0] mem_tmp_hidden [tmp_hidden_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_tmp_hidden [ (tmp_hidden_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * tmp_hidden_DEPTH -1 : 0] = '{default : 'hz};
reg tmp_hidden_write_data_finish;
reg [attn_c_bitwidth - 1 : 0] mem_attn [attn_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_attn [ (attn_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * attn_DEPTH -1 : 0] = '{default : 'hz};
reg attn_write_data_finish;
reg [attn_softmax_info_c_bitwidth - 1 : 0] mem_attn_softmax_info [attn_softmax_info_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_attn_softmax_info [ (attn_softmax_info_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * attn_softmax_info_DEPTH -1 : 0] = '{default : 'hz};
reg attn_softmax_info_write_data_finish;
reg [patch_embed_weights_c_bitwidth - 1 : 0] mem_patch_embed_weights [patch_embed_weights_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_patch_embed_weights [ (patch_embed_weights_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * patch_embed_weights_DEPTH -1 : 0] = '{default : 'hz};
reg patch_embed_weights_write_data_finish;
reg [patch_embed_bias_c_bitwidth - 1 : 0] mem_patch_embed_bias [patch_embed_bias_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_patch_embed_bias [ (patch_embed_bias_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * patch_embed_bias_DEPTH -1 : 0] = '{default : 'hz};
reg patch_embed_bias_write_data_finish;
reg [pos_embed_c_bitwidth - 1 : 0] mem_pos_embed [pos_embed_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_pos_embed [ (pos_embed_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * pos_embed_DEPTH -1 : 0] = '{default : 'hz};
reg pos_embed_write_data_finish;
reg [attn_weights_c_bitwidth - 1 : 0] mem_attn_weights [attn_weights_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_attn_weights [ (attn_weights_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * attn_weights_DEPTH -1 : 0] = '{default : 'hz};
reg attn_weights_write_data_finish;
reg [attn_bias_c_bitwidth - 1 : 0] mem_attn_bias [attn_bias_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_attn_bias [ (attn_bias_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * attn_bias_DEPTH -1 : 0] = '{default : 'hz};
reg attn_bias_write_data_finish;
reg [vit_weights_l1_c_bitwidth - 1 : 0] mem_vit_weights_l1 [vit_weights_l1_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_vit_weights_l1 [ (vit_weights_l1_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * vit_weights_l1_DEPTH -1 : 0] = '{default : 'hz};
reg vit_weights_l1_write_data_finish;
reg [vit_bias_l1_c_bitwidth - 1 : 0] mem_vit_bias_l1 [vit_bias_l1_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_vit_bias_l1 [ (vit_bias_l1_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * vit_bias_l1_DEPTH -1 : 0] = '{default : 'hz};
reg vit_bias_l1_write_data_finish;
reg [vit_weights_l2_c_bitwidth - 1 : 0] mem_vit_weights_l2 [vit_weights_l2_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_vit_weights_l2 [ (vit_weights_l2_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * vit_weights_l2_DEPTH -1 : 0] = '{default : 'hz};
reg vit_weights_l2_write_data_finish;
reg [vit_bias_l2_c_bitwidth - 1 : 0] mem_vit_bias_l2 [vit_bias_l2_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_vit_bias_l2 [ (vit_bias_l2_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * vit_bias_l2_DEPTH -1 : 0] = '{default : 'hz};
reg vit_bias_l2_write_data_finish;
reg [norm_weights_c_bitwidth - 1 : 0] mem_norm_weights [norm_weights_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_norm_weights [ (norm_weights_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * norm_weights_DEPTH -1 : 0] = '{default : 'hz};
reg norm_weights_write_data_finish;
reg [norm_bias_c_bitwidth - 1 : 0] mem_norm_bias [norm_bias_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_norm_bias [ (norm_bias_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * norm_bias_DEPTH -1 : 0] = '{default : 'hz};
reg norm_bias_write_data_finish;
reg AESL_ready_out_index_reg = 0;
reg AESL_write_start_finish = 0;
reg AESL_ready_reg;
reg ready_initial;
reg AESL_done_index_reg = 0;
reg AESL_idle_index_reg = 0;
reg AESL_auto_restart_index_reg;
reg process_0_finish = 0;
reg process_1_finish = 0;
reg process_2_finish = 0;
reg process_3_finish = 0;
reg process_4_finish = 0;
reg process_5_finish = 0;
reg process_6_finish = 0;
reg process_7_finish = 0;
reg process_8_finish = 0;
reg process_9_finish = 0;
reg process_10_finish = 0;
reg process_11_finish = 0;
reg process_12_finish = 0;
reg process_13_finish = 0;
reg process_14_finish = 0;
reg process_15_finish = 0;
reg process_16_finish = 0;
reg process_17_finish = 0;
reg process_18_finish = 0;
reg process_19_finish = 0;
reg process_20_finish = 0;
//write images reg
reg [31 : 0] write_images_count = 0;
reg write_images_run_flag = 0;
reg write_one_images_data_done = 0;
//write x reg
reg [31 : 0] write_x_count = 0;
reg write_x_run_flag = 0;
reg write_one_x_data_done = 0;
//write tmp1 reg
reg [31 : 0] write_tmp1_count = 0;
reg write_tmp1_run_flag = 0;
reg write_one_tmp1_data_done = 0;
//write tmp2 reg
reg [31 : 0] write_tmp2_count = 0;
reg write_tmp2_run_flag = 0;
reg write_one_tmp2_data_done = 0;
//write tmp3 reg
reg [31 : 0] write_tmp3_count = 0;
reg write_tmp3_run_flag = 0;
reg write_one_tmp3_data_done = 0;
//write tmp_hidden reg
reg [31 : 0] write_tmp_hidden_count = 0;
reg write_tmp_hidden_run_flag = 0;
reg write_one_tmp_hidden_data_done = 0;
//write attn reg
reg [31 : 0] write_attn_count = 0;
reg write_attn_run_flag = 0;
reg write_one_attn_data_done = 0;
//write attn_softmax_info reg
reg [31 : 0] write_attn_softmax_info_count = 0;
reg write_attn_softmax_info_run_flag = 0;
reg write_one_attn_softmax_info_data_done = 0;
//write patch_embed_weights reg
reg [31 : 0] write_patch_embed_weights_count = 0;
reg write_patch_embed_weights_run_flag = 0;
reg write_one_patch_embed_weights_data_done = 0;
//write patch_embed_bias reg
reg [31 : 0] write_patch_embed_bias_count = 0;
reg write_patch_embed_bias_run_flag = 0;
reg write_one_patch_embed_bias_data_done = 0;
//write pos_embed reg
reg [31 : 0] write_pos_embed_count = 0;
reg write_pos_embed_run_flag = 0;
reg write_one_pos_embed_data_done = 0;
//write attn_weights reg
reg [31 : 0] write_attn_weights_count = 0;
reg write_attn_weights_run_flag = 0;
reg write_one_attn_weights_data_done = 0;
//write attn_bias reg
reg [31 : 0] write_attn_bias_count = 0;
reg write_attn_bias_run_flag = 0;
reg write_one_attn_bias_data_done = 0;
//write vit_weights_l1 reg
reg [31 : 0] write_vit_weights_l1_count = 0;
reg write_vit_weights_l1_run_flag = 0;
reg write_one_vit_weights_l1_data_done = 0;
//write vit_bias_l1 reg
reg [31 : 0] write_vit_bias_l1_count = 0;
reg write_vit_bias_l1_run_flag = 0;
reg write_one_vit_bias_l1_data_done = 0;
//write vit_weights_l2 reg
reg [31 : 0] write_vit_weights_l2_count = 0;
reg write_vit_weights_l2_run_flag = 0;
reg write_one_vit_weights_l2_data_done = 0;
//write vit_bias_l2 reg
reg [31 : 0] write_vit_bias_l2_count = 0;
reg write_vit_bias_l2_run_flag = 0;
reg write_one_vit_bias_l2_data_done = 0;
//write norm_weights reg
reg [31 : 0] write_norm_weights_count = 0;
reg write_norm_weights_run_flag = 0;
reg write_one_norm_weights_data_done = 0;
//write norm_bias reg
reg [31 : 0] write_norm_bias_count = 0;
reg write_norm_bias_run_flag = 0;
reg write_one_norm_bias_data_done = 0;
reg [31 : 0] write_start_count = 0;
reg write_start_run_flag = 0;

//===================process control=================
reg [31 : 0] ongoing_process_number = 0;
//process number depends on how much processes needed.
reg process_busy = 0;

//=================== signal connection ==============
assign TRAN_s_axi_control_AWADDR = AWADDR_reg;
assign TRAN_s_axi_control_AWVALID = AWVALID_reg;
assign TRAN_s_axi_control_WVALID = WVALID_reg;
assign TRAN_s_axi_control_WDATA = WDATA_reg;
assign TRAN_s_axi_control_WSTRB = WSTRB_reg;
assign TRAN_s_axi_control_ARADDR = ARADDR_reg;
assign TRAN_s_axi_control_ARVALID = ARVALID_reg;
assign TRAN_s_axi_control_RREADY = RREADY_reg;
assign TRAN_s_axi_control_BREADY = BREADY_reg;
assign TRAN_control_write_start_finish = AESL_write_start_finish;
assign TRAN_control_done_out = AESL_done_index_reg;
assign TRAN_control_ready_out = AESL_ready_out_index_reg;
assign TRAN_control_idle_out = AESL_idle_index_reg;
assign TRAN_control_write_data_finish = 1 & images_write_data_finish & x_write_data_finish & tmp1_write_data_finish & tmp2_write_data_finish & tmp3_write_data_finish & tmp_hidden_write_data_finish & attn_write_data_finish & attn_softmax_info_write_data_finish & patch_embed_weights_write_data_finish & patch_embed_bias_write_data_finish & pos_embed_write_data_finish & attn_weights_write_data_finish & attn_bias_write_data_finish & vit_weights_l1_write_data_finish & vit_bias_l1_write_data_finish & vit_weights_l2_write_data_finish & vit_bias_l2_write_data_finish & norm_weights_write_data_finish & norm_bias_write_data_finish;
always @(TRAN_control_ready_in or ready_initial) 
begin
    AESL_ready_reg <= TRAN_control_ready_in | ready_initial;
end

always @(reset or process_0_finish or process_1_finish or process_2_finish or process_3_finish or process_4_finish or process_5_finish or process_6_finish or process_7_finish or process_8_finish or process_9_finish or process_10_finish or process_11_finish or process_12_finish or process_13_finish or process_14_finish or process_15_finish or process_16_finish or process_17_finish or process_18_finish or process_19_finish or process_20_finish ) begin
    if (reset == 0) begin
        ongoing_process_number <= 0;
    end
    else if (ongoing_process_number == 0 && process_0_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 1 && process_1_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 2 && process_2_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 3 && process_3_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 4 && process_4_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 5 && process_5_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 6 && process_6_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 7 && process_7_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 8 && process_8_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 9 && process_9_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 10 && process_10_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 11 && process_11_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 12 && process_12_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 13 && process_13_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 14 && process_14_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 15 && process_15_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 16 && process_16_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 17 && process_17_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 18 && process_18_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 19 && process_19_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 20 && process_20_finish == 1) begin
            ongoing_process_number <= 0;
    end
end

task count_c_data_four_byte_num_by_bitwidth;
input  integer bitwidth;
output integer num;
integer factor;
integer i;
begin
    factor = 32;
    for (i = 1; i <= 1024; i = i + 1) begin
        if (bitwidth <= factor && bitwidth > factor - 32) begin
            num = i;
        end
        factor = factor + 32;
    end
end    
endtask

task count_seperate_factor_by_bitwidth;
input  integer bitwidth;
output integer factor;
begin
    if (bitwidth <= 8) begin
        factor=4;
    end
    if (bitwidth <= 16 & bitwidth > 8 ) begin
        factor=2;
    end
    if (bitwidth <= 32 & bitwidth > 16 ) begin
        factor=1;
    end
    if (bitwidth > 32 ) begin
        factor=1;
    end
end    
endtask

task count_operate_depth_by_bitwidth_and_depth;
input  integer bitwidth;
input  integer depth;
output integer operate_depth;
integer factor;
integer remain;
begin
    count_seperate_factor_by_bitwidth (bitwidth , factor);
    operate_depth = depth / factor;
    remain = depth % factor;
    if (remain > 0) begin
        operate_depth = operate_depth + 1;
    end
end    
endtask

task write; /*{{{*/
    input  reg [ADDR_WIDTH - 1:0] waddr;   // write address
    input  reg [DATA_WIDTH - 1:0] wdata;   // write data
    output reg wresp;
    reg aw_flag;
    reg w_flag;
    reg [DATA_WIDTH/8 - 1:0] wstrb_reg;
    integer i;
begin 
    wresp = 0;
    aw_flag = 0;
    w_flag = 0;
//=======================one single write operate======================
    AWADDR_reg <= waddr;
    AWVALID_reg <= 1;
    WDATA_reg <= wdata;
    WVALID_reg <= 1;
    for (i = 0; i < DATA_WIDTH/8; i = i + 1) begin
        wstrb_reg [i] = 1;
    end    
    WSTRB_reg <= wstrb_reg;
    while (!(aw_flag && w_flag)) begin
        @(posedge clk);
        if (aw_flag != 1)
            aw_flag = TRAN_s_axi_control_AWREADY & AWVALID_reg;
        if (w_flag != 1)
            w_flag = TRAN_s_axi_control_WREADY & WVALID_reg;
        AWVALID_reg <= !aw_flag;
        WVALID_reg <= !w_flag;
    end

    BREADY_reg <= 1;
    while (TRAN_s_axi_control_BVALID != 1) begin
        //wait for response 
        @(posedge clk);
    end
    @(posedge clk);
    BREADY_reg <= 0;
    if (TRAN_s_axi_control_BRESP === 2'b00) begin
        wresp = 1;
        //input success. in fact BRESP is always 2'b00
    end   
//=======================one single write operate======================

end
endtask/*}}}*/

task read (/*{{{*/
    input  [ADDR_WIDTH - 1:0] raddr ,   // write address
    output [DATA_WIDTH - 1:0] RDATA_result ,
    output rresp
);
begin 
    rresp = 0;
//=======================one single read operate======================
    ARADDR_reg <= raddr;
    ARVALID_reg <= 1;
    while (TRAN_s_axi_control_ARREADY !== 1) begin
        @(posedge clk);
    end
    @(posedge clk);
    ARVALID_reg <= 0;
    RREADY_reg <= 1;
    while (TRAN_s_axi_control_RVALID !== 1) begin
        //wait for response 
        @(posedge clk);
    end
    @(posedge clk);
    RDATA_result  <= TRAN_s_axi_control_RDATA;
    RREADY_reg <= 0;
    if (TRAN_s_axi_control_RRESP === 2'b00 ) begin
        rresp <= 1;
        //output success. in fact RRESP is always 2'b00
    end  
    @(posedge clk);

//=======================one single read operate end======================

end
endtask/*}}}*/

initial begin : ready_initial_process
    ready_initial = 0;
    wait(reset === 1);
    @(posedge clk);
    ready_initial = 1;
    @(posedge clk);
    ready_initial = 0;
end

initial begin : update_status
    integer process_num ;
    integer read_status_resp;
    wait(reset === 1);
    @(posedge clk);
    process_num = 0;
    while (1) begin
        process_0_finish = 0;
        AESL_done_index_reg         <= 0;
        AESL_ready_out_index_reg        <= 0;
        if (ongoing_process_number === process_num && process_busy === 0) begin
            process_busy = 1;
            read (STATUS_ADDR, RDATA_reg, read_status_resp);
                AESL_done_index_reg         <= RDATA_reg[1 : 1];
                AESL_ready_out_index_reg    <= RDATA_reg[1 : 1];
                AESL_idle_index_reg         <= RDATA_reg[2 : 2];
            process_0_finish = 1;
            process_busy = 0;
        end 
        @(posedge clk);
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        images_write_data_finish <= 0;
        write_images_run_flag <= 0; 
        write_images_count = 0;
        count_operate_depth_by_bitwidth_and_depth (images_c_bitwidth, images_DEPTH, images_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            images_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_images_run_flag <= 1; 
            write_images_count = 0;
        end
        if (write_one_images_data_done === 1) begin
            write_images_count = write_images_count + 1;
            if (write_images_count == images_OPERATE_DEPTH) begin
                write_images_run_flag <= 0; 
                images_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_images
    integer write_images_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] images_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = images_c_bitwidth;
    process_num = 1;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_1_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_images_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write images data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (images_c_bitwidth < 32) begin
                        images_data_tmp_reg = mem_images[write_images_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < images_c_bitwidth) begin
                                images_data_tmp_reg[j] = mem_images[write_images_count][i*32 + j];
                            end
                            else begin
                                images_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_images[write_images_count * four_byte_num  + i]!==images_data_tmp_reg) begin
                    write (images_data_in_addr + write_images_count * four_byte_num * 4 + i * 4, images_data_tmp_reg, write_images_resp);
                    image_mem_images[write_images_count * four_byte_num + i]=images_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_images_data_done <= 1;
                @(posedge clk);
                write_one_images_data_done <= 0;
            end   
            process_1_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        x_write_data_finish <= 0;
        write_x_run_flag <= 0; 
        write_x_count = 0;
        count_operate_depth_by_bitwidth_and_depth (x_c_bitwidth, x_DEPTH, x_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            x_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_x_run_flag <= 1; 
            write_x_count = 0;
        end
        if (write_one_x_data_done === 1) begin
            write_x_count = write_x_count + 1;
            if (write_x_count == x_OPERATE_DEPTH) begin
                write_x_run_flag <= 0; 
                x_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_x
    integer write_x_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] x_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = x_c_bitwidth;
    process_num = 2;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_2_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_x_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write x data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (x_c_bitwidth < 32) begin
                        x_data_tmp_reg = mem_x[write_x_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < x_c_bitwidth) begin
                                x_data_tmp_reg[j] = mem_x[write_x_count][i*32 + j];
                            end
                            else begin
                                x_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_x[write_x_count * four_byte_num  + i]!==x_data_tmp_reg) begin
                    write (x_data_in_addr + write_x_count * four_byte_num * 4 + i * 4, x_data_tmp_reg, write_x_resp);
                    image_mem_x[write_x_count * four_byte_num + i]=x_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_x_data_done <= 1;
                @(posedge clk);
                write_one_x_data_done <= 0;
            end   
            process_2_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        tmp1_write_data_finish <= 0;
        write_tmp1_run_flag <= 0; 
        write_tmp1_count = 0;
        count_operate_depth_by_bitwidth_and_depth (tmp1_c_bitwidth, tmp1_DEPTH, tmp1_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            tmp1_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_tmp1_run_flag <= 1; 
            write_tmp1_count = 0;
        end
        if (write_one_tmp1_data_done === 1) begin
            write_tmp1_count = write_tmp1_count + 1;
            if (write_tmp1_count == tmp1_OPERATE_DEPTH) begin
                write_tmp1_run_flag <= 0; 
                tmp1_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_tmp1
    integer write_tmp1_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] tmp1_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = tmp1_c_bitwidth;
    process_num = 3;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_3_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_tmp1_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write tmp1 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (tmp1_c_bitwidth < 32) begin
                        tmp1_data_tmp_reg = mem_tmp1[write_tmp1_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < tmp1_c_bitwidth) begin
                                tmp1_data_tmp_reg[j] = mem_tmp1[write_tmp1_count][i*32 + j];
                            end
                            else begin
                                tmp1_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_tmp1[write_tmp1_count * four_byte_num  + i]!==tmp1_data_tmp_reg) begin
                    write (tmp1_data_in_addr + write_tmp1_count * four_byte_num * 4 + i * 4, tmp1_data_tmp_reg, write_tmp1_resp);
                    image_mem_tmp1[write_tmp1_count * four_byte_num + i]=tmp1_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_tmp1_data_done <= 1;
                @(posedge clk);
                write_one_tmp1_data_done <= 0;
            end   
            process_3_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        tmp2_write_data_finish <= 0;
        write_tmp2_run_flag <= 0; 
        write_tmp2_count = 0;
        count_operate_depth_by_bitwidth_and_depth (tmp2_c_bitwidth, tmp2_DEPTH, tmp2_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            tmp2_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_tmp2_run_flag <= 1; 
            write_tmp2_count = 0;
        end
        if (write_one_tmp2_data_done === 1) begin
            write_tmp2_count = write_tmp2_count + 1;
            if (write_tmp2_count == tmp2_OPERATE_DEPTH) begin
                write_tmp2_run_flag <= 0; 
                tmp2_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_tmp2
    integer write_tmp2_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] tmp2_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = tmp2_c_bitwidth;
    process_num = 4;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_4_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_tmp2_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write tmp2 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (tmp2_c_bitwidth < 32) begin
                        tmp2_data_tmp_reg = mem_tmp2[write_tmp2_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < tmp2_c_bitwidth) begin
                                tmp2_data_tmp_reg[j] = mem_tmp2[write_tmp2_count][i*32 + j];
                            end
                            else begin
                                tmp2_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_tmp2[write_tmp2_count * four_byte_num  + i]!==tmp2_data_tmp_reg) begin
                    write (tmp2_data_in_addr + write_tmp2_count * four_byte_num * 4 + i * 4, tmp2_data_tmp_reg, write_tmp2_resp);
                    image_mem_tmp2[write_tmp2_count * four_byte_num + i]=tmp2_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_tmp2_data_done <= 1;
                @(posedge clk);
                write_one_tmp2_data_done <= 0;
            end   
            process_4_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        tmp3_write_data_finish <= 0;
        write_tmp3_run_flag <= 0; 
        write_tmp3_count = 0;
        count_operate_depth_by_bitwidth_and_depth (tmp3_c_bitwidth, tmp3_DEPTH, tmp3_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            tmp3_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_tmp3_run_flag <= 1; 
            write_tmp3_count = 0;
        end
        if (write_one_tmp3_data_done === 1) begin
            write_tmp3_count = write_tmp3_count + 1;
            if (write_tmp3_count == tmp3_OPERATE_DEPTH) begin
                write_tmp3_run_flag <= 0; 
                tmp3_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_tmp3
    integer write_tmp3_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] tmp3_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = tmp3_c_bitwidth;
    process_num = 5;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_5_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_tmp3_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write tmp3 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (tmp3_c_bitwidth < 32) begin
                        tmp3_data_tmp_reg = mem_tmp3[write_tmp3_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < tmp3_c_bitwidth) begin
                                tmp3_data_tmp_reg[j] = mem_tmp3[write_tmp3_count][i*32 + j];
                            end
                            else begin
                                tmp3_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_tmp3[write_tmp3_count * four_byte_num  + i]!==tmp3_data_tmp_reg) begin
                    write (tmp3_data_in_addr + write_tmp3_count * four_byte_num * 4 + i * 4, tmp3_data_tmp_reg, write_tmp3_resp);
                    image_mem_tmp3[write_tmp3_count * four_byte_num + i]=tmp3_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_tmp3_data_done <= 1;
                @(posedge clk);
                write_one_tmp3_data_done <= 0;
            end   
            process_5_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        tmp_hidden_write_data_finish <= 0;
        write_tmp_hidden_run_flag <= 0; 
        write_tmp_hidden_count = 0;
        count_operate_depth_by_bitwidth_and_depth (tmp_hidden_c_bitwidth, tmp_hidden_DEPTH, tmp_hidden_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            tmp_hidden_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_tmp_hidden_run_flag <= 1; 
            write_tmp_hidden_count = 0;
        end
        if (write_one_tmp_hidden_data_done === 1) begin
            write_tmp_hidden_count = write_tmp_hidden_count + 1;
            if (write_tmp_hidden_count == tmp_hidden_OPERATE_DEPTH) begin
                write_tmp_hidden_run_flag <= 0; 
                tmp_hidden_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_tmp_hidden
    integer write_tmp_hidden_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] tmp_hidden_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = tmp_hidden_c_bitwidth;
    process_num = 6;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_6_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_tmp_hidden_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write tmp_hidden data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (tmp_hidden_c_bitwidth < 32) begin
                        tmp_hidden_data_tmp_reg = mem_tmp_hidden[write_tmp_hidden_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < tmp_hidden_c_bitwidth) begin
                                tmp_hidden_data_tmp_reg[j] = mem_tmp_hidden[write_tmp_hidden_count][i*32 + j];
                            end
                            else begin
                                tmp_hidden_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_tmp_hidden[write_tmp_hidden_count * four_byte_num  + i]!==tmp_hidden_data_tmp_reg) begin
                    write (tmp_hidden_data_in_addr + write_tmp_hidden_count * four_byte_num * 4 + i * 4, tmp_hidden_data_tmp_reg, write_tmp_hidden_resp);
                    image_mem_tmp_hidden[write_tmp_hidden_count * four_byte_num + i]=tmp_hidden_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_tmp_hidden_data_done <= 1;
                @(posedge clk);
                write_one_tmp_hidden_data_done <= 0;
            end   
            process_6_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        attn_write_data_finish <= 0;
        write_attn_run_flag <= 0; 
        write_attn_count = 0;
        count_operate_depth_by_bitwidth_and_depth (attn_c_bitwidth, attn_DEPTH, attn_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            attn_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_attn_run_flag <= 1; 
            write_attn_count = 0;
        end
        if (write_one_attn_data_done === 1) begin
            write_attn_count = write_attn_count + 1;
            if (write_attn_count == attn_OPERATE_DEPTH) begin
                write_attn_run_flag <= 0; 
                attn_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_attn
    integer write_attn_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] attn_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = attn_c_bitwidth;
    process_num = 7;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_7_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_attn_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write attn data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (attn_c_bitwidth < 32) begin
                        attn_data_tmp_reg = mem_attn[write_attn_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < attn_c_bitwidth) begin
                                attn_data_tmp_reg[j] = mem_attn[write_attn_count][i*32 + j];
                            end
                            else begin
                                attn_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_attn[write_attn_count * four_byte_num  + i]!==attn_data_tmp_reg) begin
                    write (attn_data_in_addr + write_attn_count * four_byte_num * 4 + i * 4, attn_data_tmp_reg, write_attn_resp);
                    image_mem_attn[write_attn_count * four_byte_num + i]=attn_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_attn_data_done <= 1;
                @(posedge clk);
                write_one_attn_data_done <= 0;
            end   
            process_7_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        attn_softmax_info_write_data_finish <= 0;
        write_attn_softmax_info_run_flag <= 0; 
        write_attn_softmax_info_count = 0;
        count_operate_depth_by_bitwidth_and_depth (attn_softmax_info_c_bitwidth, attn_softmax_info_DEPTH, attn_softmax_info_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            attn_softmax_info_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_attn_softmax_info_run_flag <= 1; 
            write_attn_softmax_info_count = 0;
        end
        if (write_one_attn_softmax_info_data_done === 1) begin
            write_attn_softmax_info_count = write_attn_softmax_info_count + 1;
            if (write_attn_softmax_info_count == attn_softmax_info_OPERATE_DEPTH) begin
                write_attn_softmax_info_run_flag <= 0; 
                attn_softmax_info_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_attn_softmax_info
    integer write_attn_softmax_info_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] attn_softmax_info_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = attn_softmax_info_c_bitwidth;
    process_num = 8;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_8_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_attn_softmax_info_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write attn_softmax_info data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (attn_softmax_info_c_bitwidth < 32) begin
                        attn_softmax_info_data_tmp_reg = mem_attn_softmax_info[write_attn_softmax_info_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < attn_softmax_info_c_bitwidth) begin
                                attn_softmax_info_data_tmp_reg[j] = mem_attn_softmax_info[write_attn_softmax_info_count][i*32 + j];
                            end
                            else begin
                                attn_softmax_info_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_attn_softmax_info[write_attn_softmax_info_count * four_byte_num  + i]!==attn_softmax_info_data_tmp_reg) begin
                    write (attn_softmax_info_data_in_addr + write_attn_softmax_info_count * four_byte_num * 4 + i * 4, attn_softmax_info_data_tmp_reg, write_attn_softmax_info_resp);
                    image_mem_attn_softmax_info[write_attn_softmax_info_count * four_byte_num + i]=attn_softmax_info_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_attn_softmax_info_data_done <= 1;
                @(posedge clk);
                write_one_attn_softmax_info_data_done <= 0;
            end   
            process_8_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        patch_embed_weights_write_data_finish <= 0;
        write_patch_embed_weights_run_flag <= 0; 
        write_patch_embed_weights_count = 0;
        count_operate_depth_by_bitwidth_and_depth (patch_embed_weights_c_bitwidth, patch_embed_weights_DEPTH, patch_embed_weights_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            patch_embed_weights_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_patch_embed_weights_run_flag <= 1; 
            write_patch_embed_weights_count = 0;
        end
        if (write_one_patch_embed_weights_data_done === 1) begin
            write_patch_embed_weights_count = write_patch_embed_weights_count + 1;
            if (write_patch_embed_weights_count == patch_embed_weights_OPERATE_DEPTH) begin
                write_patch_embed_weights_run_flag <= 0; 
                patch_embed_weights_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_patch_embed_weights
    integer write_patch_embed_weights_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] patch_embed_weights_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = patch_embed_weights_c_bitwidth;
    process_num = 9;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_9_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_patch_embed_weights_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write patch_embed_weights data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (patch_embed_weights_c_bitwidth < 32) begin
                        patch_embed_weights_data_tmp_reg = mem_patch_embed_weights[write_patch_embed_weights_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < patch_embed_weights_c_bitwidth) begin
                                patch_embed_weights_data_tmp_reg[j] = mem_patch_embed_weights[write_patch_embed_weights_count][i*32 + j];
                            end
                            else begin
                                patch_embed_weights_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_patch_embed_weights[write_patch_embed_weights_count * four_byte_num  + i]!==patch_embed_weights_data_tmp_reg) begin
                    write (patch_embed_weights_data_in_addr + write_patch_embed_weights_count * four_byte_num * 4 + i * 4, patch_embed_weights_data_tmp_reg, write_patch_embed_weights_resp);
                    image_mem_patch_embed_weights[write_patch_embed_weights_count * four_byte_num + i]=patch_embed_weights_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_patch_embed_weights_data_done <= 1;
                @(posedge clk);
                write_one_patch_embed_weights_data_done <= 0;
            end   
            process_9_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        patch_embed_bias_write_data_finish <= 0;
        write_patch_embed_bias_run_flag <= 0; 
        write_patch_embed_bias_count = 0;
        count_operate_depth_by_bitwidth_and_depth (patch_embed_bias_c_bitwidth, patch_embed_bias_DEPTH, patch_embed_bias_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            patch_embed_bias_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_patch_embed_bias_run_flag <= 1; 
            write_patch_embed_bias_count = 0;
        end
        if (write_one_patch_embed_bias_data_done === 1) begin
            write_patch_embed_bias_count = write_patch_embed_bias_count + 1;
            if (write_patch_embed_bias_count == patch_embed_bias_OPERATE_DEPTH) begin
                write_patch_embed_bias_run_flag <= 0; 
                patch_embed_bias_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_patch_embed_bias
    integer write_patch_embed_bias_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] patch_embed_bias_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = patch_embed_bias_c_bitwidth;
    process_num = 10;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_10_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_patch_embed_bias_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write patch_embed_bias data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (patch_embed_bias_c_bitwidth < 32) begin
                        patch_embed_bias_data_tmp_reg = mem_patch_embed_bias[write_patch_embed_bias_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < patch_embed_bias_c_bitwidth) begin
                                patch_embed_bias_data_tmp_reg[j] = mem_patch_embed_bias[write_patch_embed_bias_count][i*32 + j];
                            end
                            else begin
                                patch_embed_bias_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_patch_embed_bias[write_patch_embed_bias_count * four_byte_num  + i]!==patch_embed_bias_data_tmp_reg) begin
                    write (patch_embed_bias_data_in_addr + write_patch_embed_bias_count * four_byte_num * 4 + i * 4, patch_embed_bias_data_tmp_reg, write_patch_embed_bias_resp);
                    image_mem_patch_embed_bias[write_patch_embed_bias_count * four_byte_num + i]=patch_embed_bias_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_patch_embed_bias_data_done <= 1;
                @(posedge clk);
                write_one_patch_embed_bias_data_done <= 0;
            end   
            process_10_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        pos_embed_write_data_finish <= 0;
        write_pos_embed_run_flag <= 0; 
        write_pos_embed_count = 0;
        count_operate_depth_by_bitwidth_and_depth (pos_embed_c_bitwidth, pos_embed_DEPTH, pos_embed_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            pos_embed_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_pos_embed_run_flag <= 1; 
            write_pos_embed_count = 0;
        end
        if (write_one_pos_embed_data_done === 1) begin
            write_pos_embed_count = write_pos_embed_count + 1;
            if (write_pos_embed_count == pos_embed_OPERATE_DEPTH) begin
                write_pos_embed_run_flag <= 0; 
                pos_embed_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_pos_embed
    integer write_pos_embed_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] pos_embed_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = pos_embed_c_bitwidth;
    process_num = 11;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_11_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_pos_embed_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write pos_embed data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (pos_embed_c_bitwidth < 32) begin
                        pos_embed_data_tmp_reg = mem_pos_embed[write_pos_embed_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < pos_embed_c_bitwidth) begin
                                pos_embed_data_tmp_reg[j] = mem_pos_embed[write_pos_embed_count][i*32 + j];
                            end
                            else begin
                                pos_embed_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_pos_embed[write_pos_embed_count * four_byte_num  + i]!==pos_embed_data_tmp_reg) begin
                    write (pos_embed_data_in_addr + write_pos_embed_count * four_byte_num * 4 + i * 4, pos_embed_data_tmp_reg, write_pos_embed_resp);
                    image_mem_pos_embed[write_pos_embed_count * four_byte_num + i]=pos_embed_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_pos_embed_data_done <= 1;
                @(posedge clk);
                write_one_pos_embed_data_done <= 0;
            end   
            process_11_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        attn_weights_write_data_finish <= 0;
        write_attn_weights_run_flag <= 0; 
        write_attn_weights_count = 0;
        count_operate_depth_by_bitwidth_and_depth (attn_weights_c_bitwidth, attn_weights_DEPTH, attn_weights_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            attn_weights_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_attn_weights_run_flag <= 1; 
            write_attn_weights_count = 0;
        end
        if (write_one_attn_weights_data_done === 1) begin
            write_attn_weights_count = write_attn_weights_count + 1;
            if (write_attn_weights_count == attn_weights_OPERATE_DEPTH) begin
                write_attn_weights_run_flag <= 0; 
                attn_weights_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_attn_weights
    integer write_attn_weights_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] attn_weights_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = attn_weights_c_bitwidth;
    process_num = 12;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_12_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_attn_weights_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write attn_weights data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (attn_weights_c_bitwidth < 32) begin
                        attn_weights_data_tmp_reg = mem_attn_weights[write_attn_weights_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < attn_weights_c_bitwidth) begin
                                attn_weights_data_tmp_reg[j] = mem_attn_weights[write_attn_weights_count][i*32 + j];
                            end
                            else begin
                                attn_weights_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_attn_weights[write_attn_weights_count * four_byte_num  + i]!==attn_weights_data_tmp_reg) begin
                    write (attn_weights_data_in_addr + write_attn_weights_count * four_byte_num * 4 + i * 4, attn_weights_data_tmp_reg, write_attn_weights_resp);
                    image_mem_attn_weights[write_attn_weights_count * four_byte_num + i]=attn_weights_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_attn_weights_data_done <= 1;
                @(posedge clk);
                write_one_attn_weights_data_done <= 0;
            end   
            process_12_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        attn_bias_write_data_finish <= 0;
        write_attn_bias_run_flag <= 0; 
        write_attn_bias_count = 0;
        count_operate_depth_by_bitwidth_and_depth (attn_bias_c_bitwidth, attn_bias_DEPTH, attn_bias_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            attn_bias_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_attn_bias_run_flag <= 1; 
            write_attn_bias_count = 0;
        end
        if (write_one_attn_bias_data_done === 1) begin
            write_attn_bias_count = write_attn_bias_count + 1;
            if (write_attn_bias_count == attn_bias_OPERATE_DEPTH) begin
                write_attn_bias_run_flag <= 0; 
                attn_bias_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_attn_bias
    integer write_attn_bias_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] attn_bias_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = attn_bias_c_bitwidth;
    process_num = 13;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_13_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_attn_bias_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write attn_bias data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (attn_bias_c_bitwidth < 32) begin
                        attn_bias_data_tmp_reg = mem_attn_bias[write_attn_bias_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < attn_bias_c_bitwidth) begin
                                attn_bias_data_tmp_reg[j] = mem_attn_bias[write_attn_bias_count][i*32 + j];
                            end
                            else begin
                                attn_bias_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_attn_bias[write_attn_bias_count * four_byte_num  + i]!==attn_bias_data_tmp_reg) begin
                    write (attn_bias_data_in_addr + write_attn_bias_count * four_byte_num * 4 + i * 4, attn_bias_data_tmp_reg, write_attn_bias_resp);
                    image_mem_attn_bias[write_attn_bias_count * four_byte_num + i]=attn_bias_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_attn_bias_data_done <= 1;
                @(posedge clk);
                write_one_attn_bias_data_done <= 0;
            end   
            process_13_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        vit_weights_l1_write_data_finish <= 0;
        write_vit_weights_l1_run_flag <= 0; 
        write_vit_weights_l1_count = 0;
        count_operate_depth_by_bitwidth_and_depth (vit_weights_l1_c_bitwidth, vit_weights_l1_DEPTH, vit_weights_l1_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            vit_weights_l1_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_vit_weights_l1_run_flag <= 1; 
            write_vit_weights_l1_count = 0;
        end
        if (write_one_vit_weights_l1_data_done === 1) begin
            write_vit_weights_l1_count = write_vit_weights_l1_count + 1;
            if (write_vit_weights_l1_count == vit_weights_l1_OPERATE_DEPTH) begin
                write_vit_weights_l1_run_flag <= 0; 
                vit_weights_l1_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_vit_weights_l1
    integer write_vit_weights_l1_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] vit_weights_l1_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = vit_weights_l1_c_bitwidth;
    process_num = 14;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_14_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_vit_weights_l1_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write vit_weights_l1 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (vit_weights_l1_c_bitwidth < 32) begin
                        vit_weights_l1_data_tmp_reg = mem_vit_weights_l1[write_vit_weights_l1_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < vit_weights_l1_c_bitwidth) begin
                                vit_weights_l1_data_tmp_reg[j] = mem_vit_weights_l1[write_vit_weights_l1_count][i*32 + j];
                            end
                            else begin
                                vit_weights_l1_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_vit_weights_l1[write_vit_weights_l1_count * four_byte_num  + i]!==vit_weights_l1_data_tmp_reg) begin
                    write (vit_weights_l1_data_in_addr + write_vit_weights_l1_count * four_byte_num * 4 + i * 4, vit_weights_l1_data_tmp_reg, write_vit_weights_l1_resp);
                    image_mem_vit_weights_l1[write_vit_weights_l1_count * four_byte_num + i]=vit_weights_l1_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_vit_weights_l1_data_done <= 1;
                @(posedge clk);
                write_one_vit_weights_l1_data_done <= 0;
            end   
            process_14_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        vit_bias_l1_write_data_finish <= 0;
        write_vit_bias_l1_run_flag <= 0; 
        write_vit_bias_l1_count = 0;
        count_operate_depth_by_bitwidth_and_depth (vit_bias_l1_c_bitwidth, vit_bias_l1_DEPTH, vit_bias_l1_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            vit_bias_l1_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_vit_bias_l1_run_flag <= 1; 
            write_vit_bias_l1_count = 0;
        end
        if (write_one_vit_bias_l1_data_done === 1) begin
            write_vit_bias_l1_count = write_vit_bias_l1_count + 1;
            if (write_vit_bias_l1_count == vit_bias_l1_OPERATE_DEPTH) begin
                write_vit_bias_l1_run_flag <= 0; 
                vit_bias_l1_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_vit_bias_l1
    integer write_vit_bias_l1_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] vit_bias_l1_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = vit_bias_l1_c_bitwidth;
    process_num = 15;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_15_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_vit_bias_l1_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write vit_bias_l1 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (vit_bias_l1_c_bitwidth < 32) begin
                        vit_bias_l1_data_tmp_reg = mem_vit_bias_l1[write_vit_bias_l1_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < vit_bias_l1_c_bitwidth) begin
                                vit_bias_l1_data_tmp_reg[j] = mem_vit_bias_l1[write_vit_bias_l1_count][i*32 + j];
                            end
                            else begin
                                vit_bias_l1_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_vit_bias_l1[write_vit_bias_l1_count * four_byte_num  + i]!==vit_bias_l1_data_tmp_reg) begin
                    write (vit_bias_l1_data_in_addr + write_vit_bias_l1_count * four_byte_num * 4 + i * 4, vit_bias_l1_data_tmp_reg, write_vit_bias_l1_resp);
                    image_mem_vit_bias_l1[write_vit_bias_l1_count * four_byte_num + i]=vit_bias_l1_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_vit_bias_l1_data_done <= 1;
                @(posedge clk);
                write_one_vit_bias_l1_data_done <= 0;
            end   
            process_15_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        vit_weights_l2_write_data_finish <= 0;
        write_vit_weights_l2_run_flag <= 0; 
        write_vit_weights_l2_count = 0;
        count_operate_depth_by_bitwidth_and_depth (vit_weights_l2_c_bitwidth, vit_weights_l2_DEPTH, vit_weights_l2_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            vit_weights_l2_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_vit_weights_l2_run_flag <= 1; 
            write_vit_weights_l2_count = 0;
        end
        if (write_one_vit_weights_l2_data_done === 1) begin
            write_vit_weights_l2_count = write_vit_weights_l2_count + 1;
            if (write_vit_weights_l2_count == vit_weights_l2_OPERATE_DEPTH) begin
                write_vit_weights_l2_run_flag <= 0; 
                vit_weights_l2_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_vit_weights_l2
    integer write_vit_weights_l2_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] vit_weights_l2_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = vit_weights_l2_c_bitwidth;
    process_num = 16;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_16_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_vit_weights_l2_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write vit_weights_l2 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (vit_weights_l2_c_bitwidth < 32) begin
                        vit_weights_l2_data_tmp_reg = mem_vit_weights_l2[write_vit_weights_l2_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < vit_weights_l2_c_bitwidth) begin
                                vit_weights_l2_data_tmp_reg[j] = mem_vit_weights_l2[write_vit_weights_l2_count][i*32 + j];
                            end
                            else begin
                                vit_weights_l2_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_vit_weights_l2[write_vit_weights_l2_count * four_byte_num  + i]!==vit_weights_l2_data_tmp_reg) begin
                    write (vit_weights_l2_data_in_addr + write_vit_weights_l2_count * four_byte_num * 4 + i * 4, vit_weights_l2_data_tmp_reg, write_vit_weights_l2_resp);
                    image_mem_vit_weights_l2[write_vit_weights_l2_count * four_byte_num + i]=vit_weights_l2_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_vit_weights_l2_data_done <= 1;
                @(posedge clk);
                write_one_vit_weights_l2_data_done <= 0;
            end   
            process_16_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        vit_bias_l2_write_data_finish <= 0;
        write_vit_bias_l2_run_flag <= 0; 
        write_vit_bias_l2_count = 0;
        count_operate_depth_by_bitwidth_and_depth (vit_bias_l2_c_bitwidth, vit_bias_l2_DEPTH, vit_bias_l2_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            vit_bias_l2_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_vit_bias_l2_run_flag <= 1; 
            write_vit_bias_l2_count = 0;
        end
        if (write_one_vit_bias_l2_data_done === 1) begin
            write_vit_bias_l2_count = write_vit_bias_l2_count + 1;
            if (write_vit_bias_l2_count == vit_bias_l2_OPERATE_DEPTH) begin
                write_vit_bias_l2_run_flag <= 0; 
                vit_bias_l2_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_vit_bias_l2
    integer write_vit_bias_l2_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] vit_bias_l2_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = vit_bias_l2_c_bitwidth;
    process_num = 17;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_17_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_vit_bias_l2_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write vit_bias_l2 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (vit_bias_l2_c_bitwidth < 32) begin
                        vit_bias_l2_data_tmp_reg = mem_vit_bias_l2[write_vit_bias_l2_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < vit_bias_l2_c_bitwidth) begin
                                vit_bias_l2_data_tmp_reg[j] = mem_vit_bias_l2[write_vit_bias_l2_count][i*32 + j];
                            end
                            else begin
                                vit_bias_l2_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_vit_bias_l2[write_vit_bias_l2_count * four_byte_num  + i]!==vit_bias_l2_data_tmp_reg) begin
                    write (vit_bias_l2_data_in_addr + write_vit_bias_l2_count * four_byte_num * 4 + i * 4, vit_bias_l2_data_tmp_reg, write_vit_bias_l2_resp);
                    image_mem_vit_bias_l2[write_vit_bias_l2_count * four_byte_num + i]=vit_bias_l2_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_vit_bias_l2_data_done <= 1;
                @(posedge clk);
                write_one_vit_bias_l2_data_done <= 0;
            end   
            process_17_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        norm_weights_write_data_finish <= 0;
        write_norm_weights_run_flag <= 0; 
        write_norm_weights_count = 0;
        count_operate_depth_by_bitwidth_and_depth (norm_weights_c_bitwidth, norm_weights_DEPTH, norm_weights_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            norm_weights_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_norm_weights_run_flag <= 1; 
            write_norm_weights_count = 0;
        end
        if (write_one_norm_weights_data_done === 1) begin
            write_norm_weights_count = write_norm_weights_count + 1;
            if (write_norm_weights_count == norm_weights_OPERATE_DEPTH) begin
                write_norm_weights_run_flag <= 0; 
                norm_weights_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_norm_weights
    integer write_norm_weights_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] norm_weights_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = norm_weights_c_bitwidth;
    process_num = 18;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_18_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_norm_weights_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write norm_weights data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (norm_weights_c_bitwidth < 32) begin
                        norm_weights_data_tmp_reg = mem_norm_weights[write_norm_weights_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < norm_weights_c_bitwidth) begin
                                norm_weights_data_tmp_reg[j] = mem_norm_weights[write_norm_weights_count][i*32 + j];
                            end
                            else begin
                                norm_weights_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_norm_weights[write_norm_weights_count * four_byte_num  + i]!==norm_weights_data_tmp_reg) begin
                    write (norm_weights_data_in_addr + write_norm_weights_count * four_byte_num * 4 + i * 4, norm_weights_data_tmp_reg, write_norm_weights_resp);
                    image_mem_norm_weights[write_norm_weights_count * four_byte_num + i]=norm_weights_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_norm_weights_data_done <= 1;
                @(posedge clk);
                write_one_norm_weights_data_done <= 0;
            end   
            process_18_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        norm_bias_write_data_finish <= 0;
        write_norm_bias_run_flag <= 0; 
        write_norm_bias_count = 0;
        count_operate_depth_by_bitwidth_and_depth (norm_bias_c_bitwidth, norm_bias_DEPTH, norm_bias_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            norm_bias_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_norm_bias_run_flag <= 1; 
            write_norm_bias_count = 0;
        end
        if (write_one_norm_bias_data_done === 1) begin
            write_norm_bias_count = write_norm_bias_count + 1;
            if (write_norm_bias_count == norm_bias_OPERATE_DEPTH) begin
                write_norm_bias_run_flag <= 0; 
                norm_bias_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_norm_bias
    integer write_norm_bias_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] norm_bias_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = norm_bias_c_bitwidth;
    process_num = 19;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_19_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_norm_bias_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write norm_bias data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (norm_bias_c_bitwidth < 32) begin
                        norm_bias_data_tmp_reg = mem_norm_bias[write_norm_bias_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < norm_bias_c_bitwidth) begin
                                norm_bias_data_tmp_reg[j] = mem_norm_bias[write_norm_bias_count][i*32 + j];
                            end
                            else begin
                                norm_bias_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_norm_bias[write_norm_bias_count * four_byte_num  + i]!==norm_bias_data_tmp_reg) begin
                    write (norm_bias_data_in_addr + write_norm_bias_count * four_byte_num * 4 + i * 4, norm_bias_data_tmp_reg, write_norm_bias_resp);
                    image_mem_norm_bias[write_norm_bias_count * four_byte_num + i]=norm_bias_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_norm_bias_data_done <= 1;
                @(posedge clk);
                write_one_norm_bias_data_done <= 0;
            end   
            process_19_finish <= 1;
        end
        @(posedge clk);
    end    
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_start_run_flag <= 0; 
        write_start_count <= 0;
    end
    else begin
        if (write_start_count >= 1) begin
            write_start_run_flag <= 0; 
        end
        else if (TRAN_control_write_start_in === 1) begin
            write_start_run_flag <= 1; 
        end
        if (AESL_write_start_finish === 1) begin
            write_start_count <= write_start_count + 1;
            write_start_run_flag <= 0; 
        end
    end
end

initial begin : write_start
    reg [DATA_WIDTH - 1 : 0] write_start_tmp;
    integer process_num;
    integer write_start_resp;
    wait(reset === 1);
    @(posedge clk);
    process_num = 20;
    while (1) begin
        process_20_finish = 0;
        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            if (write_start_run_flag === 1) begin
                process_busy = 1;
                write_start_tmp=0;
                write_start_tmp[0 : 0] = 1;
                write (START_ADDR, write_start_tmp, write_start_resp);
                process_busy = 0;
                AESL_write_start_finish <= 1;
                @(posedge clk);
                AESL_write_start_finish <= 0;
            end
            process_20_finish <= 1;
        end 
        @(posedge clk);
    end
end

//------------------------Task and function-------------- 
task read_token; 
    input integer fp; 
    output reg [151 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end 
endtask 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_images_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [images_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (images_c_bitwidth , factor);
  fp = $fopen(`TV_IN_images ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_images); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < images_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_images [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_images [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_images [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_images [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_images [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_images;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_x_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [x_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (x_c_bitwidth , factor);
  fp = $fopen(`TV_IN_x ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_x); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < x_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_x [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_x [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_x [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_x [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_x [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_x;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_tmp1_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [tmp1_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (tmp1_c_bitwidth , factor);
  fp = $fopen(`TV_IN_tmp1 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_tmp1); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < tmp1_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_tmp1 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_tmp1 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_tmp1 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_tmp1 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_tmp1 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_tmp1;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_tmp2_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [tmp2_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (tmp2_c_bitwidth , factor);
  fp = $fopen(`TV_IN_tmp2 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_tmp2); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < tmp2_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_tmp2 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_tmp2 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_tmp2 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_tmp2 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_tmp2 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_tmp2;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_tmp3_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [tmp3_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (tmp3_c_bitwidth , factor);
  fp = $fopen(`TV_IN_tmp3 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_tmp3); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < tmp3_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_tmp3 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_tmp3 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_tmp3 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_tmp3 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_tmp3 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_tmp3;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_tmp_hidden_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [tmp_hidden_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (tmp_hidden_c_bitwidth , factor);
  fp = $fopen(`TV_IN_tmp_hidden ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_tmp_hidden); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < tmp_hidden_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_tmp_hidden [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_tmp_hidden [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_tmp_hidden [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_tmp_hidden [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_tmp_hidden [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_tmp_hidden;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_attn_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [attn_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (attn_c_bitwidth , factor);
  fp = $fopen(`TV_IN_attn ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_attn); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < attn_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_attn [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_attn [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_attn [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_attn [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_attn [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_attn;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_attn_softmax_info_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [attn_softmax_info_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (attn_softmax_info_c_bitwidth , factor);
  fp = $fopen(`TV_IN_attn_softmax_info ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_attn_softmax_info); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < attn_softmax_info_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_attn_softmax_info [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_attn_softmax_info [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_attn_softmax_info [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_attn_softmax_info [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_attn_softmax_info [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_attn_softmax_info;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_patch_embed_weights_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [patch_embed_weights_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (patch_embed_weights_c_bitwidth , factor);
  fp = $fopen(`TV_IN_patch_embed_weights ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_patch_embed_weights); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < patch_embed_weights_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_patch_embed_weights [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_patch_embed_weights [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_patch_embed_weights [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_patch_embed_weights [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_patch_embed_weights [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_patch_embed_weights;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_patch_embed_bias_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [patch_embed_bias_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (patch_embed_bias_c_bitwidth , factor);
  fp = $fopen(`TV_IN_patch_embed_bias ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_patch_embed_bias); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < patch_embed_bias_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_patch_embed_bias [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_patch_embed_bias [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_patch_embed_bias [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_patch_embed_bias [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_patch_embed_bias [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_patch_embed_bias;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_pos_embed_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [pos_embed_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (pos_embed_c_bitwidth , factor);
  fp = $fopen(`TV_IN_pos_embed ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_pos_embed); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < pos_embed_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_pos_embed [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_pos_embed [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_pos_embed [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_pos_embed [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_pos_embed [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_pos_embed;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_attn_weights_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [attn_weights_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (attn_weights_c_bitwidth , factor);
  fp = $fopen(`TV_IN_attn_weights ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_attn_weights); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < attn_weights_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_attn_weights [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_attn_weights [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_attn_weights [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_attn_weights [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_attn_weights [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_attn_weights;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_attn_bias_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [attn_bias_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (attn_bias_c_bitwidth , factor);
  fp = $fopen(`TV_IN_attn_bias ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_attn_bias); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < attn_bias_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_attn_bias [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_attn_bias [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_attn_bias [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_attn_bias [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_attn_bias [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_attn_bias;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_vit_weights_l1_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [vit_weights_l1_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (vit_weights_l1_c_bitwidth , factor);
  fp = $fopen(`TV_IN_vit_weights_l1 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_vit_weights_l1); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < vit_weights_l1_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_vit_weights_l1 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_vit_weights_l1 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_vit_weights_l1 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_vit_weights_l1 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_vit_weights_l1 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_vit_weights_l1;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_vit_bias_l1_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [vit_bias_l1_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (vit_bias_l1_c_bitwidth , factor);
  fp = $fopen(`TV_IN_vit_bias_l1 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_vit_bias_l1); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < vit_bias_l1_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_vit_bias_l1 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_vit_bias_l1 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_vit_bias_l1 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_vit_bias_l1 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_vit_bias_l1 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_vit_bias_l1;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_vit_weights_l2_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [vit_weights_l2_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (vit_weights_l2_c_bitwidth , factor);
  fp = $fopen(`TV_IN_vit_weights_l2 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_vit_weights_l2); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < vit_weights_l2_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_vit_weights_l2 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_vit_weights_l2 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_vit_weights_l2 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_vit_weights_l2 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_vit_weights_l2 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_vit_weights_l2;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_vit_bias_l2_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [vit_bias_l2_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (vit_bias_l2_c_bitwidth , factor);
  fp = $fopen(`TV_IN_vit_bias_l2 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_vit_bias_l2); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < vit_bias_l2_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_vit_bias_l2 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_vit_bias_l2 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_vit_bias_l2 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_vit_bias_l2 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_vit_bias_l2 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_vit_bias_l2;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_norm_weights_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [norm_weights_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (norm_weights_c_bitwidth , factor);
  fp = $fopen(`TV_IN_norm_weights ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_norm_weights); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < norm_weights_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_norm_weights [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_norm_weights [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_norm_weights [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_norm_weights [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_norm_weights [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_norm_weights;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_norm_bias_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [norm_bias_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (norm_bias_c_bitwidth , factor);
  fp = $fopen(`TV_IN_norm_bias ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_norm_bias); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < norm_bias_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_norm_bias [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_norm_bias [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_norm_bias [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_norm_bias [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_norm_bias [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_norm_bias;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;
endmodule
