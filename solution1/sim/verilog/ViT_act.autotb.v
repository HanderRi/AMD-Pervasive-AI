// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      ViT_act
`define AUTOTB_DUT_INST AESL_inst_ViT_act
`define AUTOTB_TOP      apatb_ViT_act_top
`define AUTOTB_LAT_RESULT_FILE "ViT_act.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "ViT_act.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_ViT_act_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 5.00

`define AESL_DEPTH_inout1 1
`define AESL_DEPTH_inout2 1
`define AESL_DEPTH_inout3 1
`define AESL_DEPTH_inout4 1
`define AESL_DEPTH_weights 1
`define AESL_DEPTH_num_images 1
`define AESL_DEPTH_reload_on_time_weights 1
`define AESL_DEPTH_images 1
`define AESL_DEPTH_x 1
`define AESL_DEPTH_tmp1 1
`define AESL_DEPTH_tmp2 1
`define AESL_DEPTH_tmp3 1
`define AESL_DEPTH_tmp_hidden 1
`define AESL_DEPTH_attn 1
`define AESL_DEPTH_attn_softmax_info 1
`define AESL_DEPTH_patch_embed_weights 1
`define AESL_DEPTH_patch_embed_bias 1
`define AESL_DEPTH_pos_embed 1
`define AESL_DEPTH_attn_weights 1
`define AESL_DEPTH_attn_bias 1
`define AESL_DEPTH_vit_weights_l1 1
`define AESL_DEPTH_vit_bias_l1 1
`define AESL_DEPTH_vit_weights_l2 1
`define AESL_DEPTH_vit_bias_l2 1
`define AESL_DEPTH_norm_weights 1
`define AESL_DEPTH_norm_bias 1
`define AUTOTB_TVIN_inout1  "../tv/cdatafile/c.ViT_act.autotvin_inout1.dat"
`define AUTOTB_TVIN_inout2  "../tv/cdatafile/c.ViT_act.autotvin_inout2.dat"
`define AUTOTB_TVIN_inout3  "../tv/cdatafile/c.ViT_act.autotvin_inout3.dat"
`define AUTOTB_TVIN_inout4  "../tv/cdatafile/c.ViT_act.autotvin_inout4.dat"
`define AUTOTB_TVIN_weights  "../tv/cdatafile/c.ViT_act.autotvin_weights.dat"
`define AUTOTB_TVIN_num_images  "../tv/cdatafile/c.ViT_act.autotvin_num_images.dat"
`define AUTOTB_TVIN_reload_on_time_weights  "../tv/cdatafile/c.ViT_act.autotvin_reload_on_time_weights.dat"
`define AUTOTB_TVIN_images  "../tv/cdatafile/c.ViT_act.autotvin_images.dat"
`define AUTOTB_TVIN_x  "../tv/cdatafile/c.ViT_act.autotvin_x.dat"
`define AUTOTB_TVIN_tmp1  "../tv/cdatafile/c.ViT_act.autotvin_tmp1.dat"
`define AUTOTB_TVIN_tmp2  "../tv/cdatafile/c.ViT_act.autotvin_tmp2.dat"
`define AUTOTB_TVIN_tmp3  "../tv/cdatafile/c.ViT_act.autotvin_tmp3.dat"
`define AUTOTB_TVIN_tmp_hidden  "../tv/cdatafile/c.ViT_act.autotvin_tmp_hidden.dat"
`define AUTOTB_TVIN_attn  "../tv/cdatafile/c.ViT_act.autotvin_attn.dat"
`define AUTOTB_TVIN_attn_softmax_info  "../tv/cdatafile/c.ViT_act.autotvin_attn_softmax_info.dat"
`define AUTOTB_TVIN_patch_embed_weights  "../tv/cdatafile/c.ViT_act.autotvin_patch_embed_weights.dat"
`define AUTOTB_TVIN_patch_embed_bias  "../tv/cdatafile/c.ViT_act.autotvin_patch_embed_bias.dat"
`define AUTOTB_TVIN_pos_embed  "../tv/cdatafile/c.ViT_act.autotvin_pos_embed.dat"
`define AUTOTB_TVIN_attn_weights  "../tv/cdatafile/c.ViT_act.autotvin_attn_weights.dat"
`define AUTOTB_TVIN_attn_bias  "../tv/cdatafile/c.ViT_act.autotvin_attn_bias.dat"
`define AUTOTB_TVIN_vit_weights_l1  "../tv/cdatafile/c.ViT_act.autotvin_vit_weights_l1.dat"
`define AUTOTB_TVIN_vit_bias_l1  "../tv/cdatafile/c.ViT_act.autotvin_vit_bias_l1.dat"
`define AUTOTB_TVIN_vit_weights_l2  "../tv/cdatafile/c.ViT_act.autotvin_vit_weights_l2.dat"
`define AUTOTB_TVIN_vit_bias_l2  "../tv/cdatafile/c.ViT_act.autotvin_vit_bias_l2.dat"
`define AUTOTB_TVIN_norm_weights  "../tv/cdatafile/c.ViT_act.autotvin_norm_weights.dat"
`define AUTOTB_TVIN_norm_bias  "../tv/cdatafile/c.ViT_act.autotvin_norm_bias.dat"
`define AUTOTB_TVIN_inout1_out_wrapc  "../tv/rtldatafile/rtl.ViT_act.autotvin_inout1.dat"
`define AUTOTB_TVIN_inout2_out_wrapc  "../tv/rtldatafile/rtl.ViT_act.autotvin_inout2.dat"
`define AUTOTB_TVIN_inout3_out_wrapc  "../tv/rtldatafile/rtl.ViT_act.autotvin_inout3.dat"
`define AUTOTB_TVIN_inout4_out_wrapc  "../tv/rtldatafile/rtl.ViT_act.autotvin_inout4.dat"
`define AUTOTB_TVIN_weights_out_wrapc  "../tv/rtldatafile/rtl.ViT_act.autotvin_weights.dat"
`define AUTOTB_TVIN_num_images_out_wrapc  "../tv/rtldatafile/rtl.ViT_act.autotvin_num_images.dat"
`define AUTOTB_TVIN_reload_on_time_weights_out_wrapc  "../tv/rtldatafile/rtl.ViT_act.autotvin_reload_on_time_weights.dat"
`define AUTOTB_TVIN_images_out_wrapc  "../tv/rtldatafile/rtl.ViT_act.autotvin_images.dat"
`define AUTOTB_TVIN_x_out_wrapc  "../tv/rtldatafile/rtl.ViT_act.autotvin_x.dat"
`define AUTOTB_TVIN_tmp1_out_wrapc  "../tv/rtldatafile/rtl.ViT_act.autotvin_tmp1.dat"
`define AUTOTB_TVIN_tmp2_out_wrapc  "../tv/rtldatafile/rtl.ViT_act.autotvin_tmp2.dat"
`define AUTOTB_TVIN_tmp3_out_wrapc  "../tv/rtldatafile/rtl.ViT_act.autotvin_tmp3.dat"
`define AUTOTB_TVIN_tmp_hidden_out_wrapc  "../tv/rtldatafile/rtl.ViT_act.autotvin_tmp_hidden.dat"
`define AUTOTB_TVIN_attn_out_wrapc  "../tv/rtldatafile/rtl.ViT_act.autotvin_attn.dat"
`define AUTOTB_TVIN_attn_softmax_info_out_wrapc  "../tv/rtldatafile/rtl.ViT_act.autotvin_attn_softmax_info.dat"
`define AUTOTB_TVIN_patch_embed_weights_out_wrapc  "../tv/rtldatafile/rtl.ViT_act.autotvin_patch_embed_weights.dat"
`define AUTOTB_TVIN_patch_embed_bias_out_wrapc  "../tv/rtldatafile/rtl.ViT_act.autotvin_patch_embed_bias.dat"
`define AUTOTB_TVIN_pos_embed_out_wrapc  "../tv/rtldatafile/rtl.ViT_act.autotvin_pos_embed.dat"
`define AUTOTB_TVIN_attn_weights_out_wrapc  "../tv/rtldatafile/rtl.ViT_act.autotvin_attn_weights.dat"
`define AUTOTB_TVIN_attn_bias_out_wrapc  "../tv/rtldatafile/rtl.ViT_act.autotvin_attn_bias.dat"
`define AUTOTB_TVIN_vit_weights_l1_out_wrapc  "../tv/rtldatafile/rtl.ViT_act.autotvin_vit_weights_l1.dat"
`define AUTOTB_TVIN_vit_bias_l1_out_wrapc  "../tv/rtldatafile/rtl.ViT_act.autotvin_vit_bias_l1.dat"
`define AUTOTB_TVIN_vit_weights_l2_out_wrapc  "../tv/rtldatafile/rtl.ViT_act.autotvin_vit_weights_l2.dat"
`define AUTOTB_TVIN_vit_bias_l2_out_wrapc  "../tv/rtldatafile/rtl.ViT_act.autotvin_vit_bias_l2.dat"
`define AUTOTB_TVIN_norm_weights_out_wrapc  "../tv/rtldatafile/rtl.ViT_act.autotvin_norm_weights.dat"
`define AUTOTB_TVIN_norm_bias_out_wrapc  "../tv/rtldatafile/rtl.ViT_act.autotvin_norm_bias.dat"
`define AUTOTB_TVOUT_inout1  "../tv/cdatafile/c.ViT_act.autotvout_inout1.dat"
`define AUTOTB_TVOUT_inout2  "../tv/cdatafile/c.ViT_act.autotvout_inout2.dat"
`define AUTOTB_TVOUT_inout3  "../tv/cdatafile/c.ViT_act.autotvout_inout3.dat"
`define AUTOTB_TVOUT_inout4  "../tv/cdatafile/c.ViT_act.autotvout_inout4.dat"
`define AUTOTB_TVOUT_inout1_out_wrapc  "../tv/rtldatafile/rtl.ViT_act.autotvout_inout1.dat"
`define AUTOTB_TVOUT_inout2_out_wrapc  "../tv/rtldatafile/rtl.ViT_act.autotvout_inout2.dat"
`define AUTOTB_TVOUT_inout3_out_wrapc  "../tv/rtldatafile/rtl.ViT_act.autotvout_inout3.dat"
`define AUTOTB_TVOUT_inout4_out_wrapc  "../tv/rtldatafile/rtl.ViT_act.autotvout_inout4.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 1;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = -1;
parameter LENGTH_attn = 1;
parameter LENGTH_attn_bias = 1;
parameter LENGTH_attn_softmax_info = 1;
parameter LENGTH_attn_weights = 1;
parameter LENGTH_images = 1;
parameter LENGTH_inout1 = 14682;
parameter LENGTH_inout2 = 6192;
parameter LENGTH_inout3 = 3096;
parameter LENGTH_inout4 = 12513;
parameter LENGTH_norm_bias = 1;
parameter LENGTH_norm_weights = 1;
parameter LENGTH_num_images = 1;
parameter LENGTH_patch_embed_bias = 1;
parameter LENGTH_patch_embed_weights = 1;
parameter LENGTH_pos_embed = 1;
parameter LENGTH_reload_on_time_weights = 1;
parameter LENGTH_tmp1 = 1;
parameter LENGTH_tmp2 = 1;
parameter LENGTH_tmp3 = 1;
parameter LENGTH_tmp_hidden = 1;
parameter LENGTH_vit_bias_l1 = 1;
parameter LENGTH_vit_bias_l2 = 1;
parameter LENGTH_vit_weights_l1 = 1;
parameter LENGTH_vit_weights_l2 = 1;
parameter LENGTH_weights = 235020;
parameter LENGTH_x = 1;

task read_token;
    input integer fp;
    output reg [535 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

reg AESL_clock;
reg rst;
reg dut_rst;
reg start;
reg ce;
reg tb_continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
wire AESL_done;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire [7 : 0] control_AWADDR;
wire  control_AWVALID;
wire  control_AWREADY;
wire  control_WVALID;
wire  control_WREADY;
wire [31 : 0] control_WDATA;
wire [3 : 0] control_WSTRB;
wire [7 : 0] control_ARADDR;
wire  control_ARVALID;
wire  control_ARREADY;
wire  control_RVALID;
wire  control_RREADY;
wire [31 : 0] control_RDATA;
wire [1 : 0] control_RRESP;
wire  control_BVALID;
wire  control_BREADY;
wire [1 : 0] control_BRESP;
wire  control_INTERRUPT;
wire  inout1_AWVALID;
wire  inout1_AWREADY;
wire [63 : 0] inout1_AWADDR;
wire [0 : 0] inout1_AWID;
wire [7 : 0] inout1_AWLEN;
wire [2 : 0] inout1_AWSIZE;
wire [1 : 0] inout1_AWBURST;
wire [1 : 0] inout1_AWLOCK;
wire [3 : 0] inout1_AWCACHE;
wire [2 : 0] inout1_AWPROT;
wire [3 : 0] inout1_AWQOS;
wire [3 : 0] inout1_AWREGION;
wire [0 : 0] inout1_AWUSER;
wire  inout1_WVALID;
wire  inout1_WREADY;
wire [255 : 0] inout1_WDATA;
wire [31 : 0] inout1_WSTRB;
wire  inout1_WLAST;
wire [0 : 0] inout1_WID;
wire [0 : 0] inout1_WUSER;
wire  inout1_ARVALID;
wire  inout1_ARREADY;
wire [63 : 0] inout1_ARADDR;
wire [0 : 0] inout1_ARID;
wire [7 : 0] inout1_ARLEN;
wire [2 : 0] inout1_ARSIZE;
wire [1 : 0] inout1_ARBURST;
wire [1 : 0] inout1_ARLOCK;
wire [3 : 0] inout1_ARCACHE;
wire [2 : 0] inout1_ARPROT;
wire [3 : 0] inout1_ARQOS;
wire [3 : 0] inout1_ARREGION;
wire [0 : 0] inout1_ARUSER;
wire  inout1_RVALID;
wire  inout1_RREADY;
wire [255 : 0] inout1_RDATA;
wire  inout1_RLAST;
wire [0 : 0] inout1_RID;
wire [0 : 0] inout1_RUSER;
wire [1 : 0] inout1_RRESP;
wire  inout1_BVALID;
wire  inout1_BREADY;
wire [1 : 0] inout1_BRESP;
wire [0 : 0] inout1_BID;
wire [0 : 0] inout1_BUSER;
wire  inout2_AWVALID;
wire  inout2_AWREADY;
wire [63 : 0] inout2_AWADDR;
wire [0 : 0] inout2_AWID;
wire [7 : 0] inout2_AWLEN;
wire [2 : 0] inout2_AWSIZE;
wire [1 : 0] inout2_AWBURST;
wire [1 : 0] inout2_AWLOCK;
wire [3 : 0] inout2_AWCACHE;
wire [2 : 0] inout2_AWPROT;
wire [3 : 0] inout2_AWQOS;
wire [3 : 0] inout2_AWREGION;
wire [0 : 0] inout2_AWUSER;
wire  inout2_WVALID;
wire  inout2_WREADY;
wire [255 : 0] inout2_WDATA;
wire [31 : 0] inout2_WSTRB;
wire  inout2_WLAST;
wire [0 : 0] inout2_WID;
wire [0 : 0] inout2_WUSER;
wire  inout2_ARVALID;
wire  inout2_ARREADY;
wire [63 : 0] inout2_ARADDR;
wire [0 : 0] inout2_ARID;
wire [7 : 0] inout2_ARLEN;
wire [2 : 0] inout2_ARSIZE;
wire [1 : 0] inout2_ARBURST;
wire [1 : 0] inout2_ARLOCK;
wire [3 : 0] inout2_ARCACHE;
wire [2 : 0] inout2_ARPROT;
wire [3 : 0] inout2_ARQOS;
wire [3 : 0] inout2_ARREGION;
wire [0 : 0] inout2_ARUSER;
wire  inout2_RVALID;
wire  inout2_RREADY;
wire [255 : 0] inout2_RDATA;
wire  inout2_RLAST;
wire [0 : 0] inout2_RID;
wire [0 : 0] inout2_RUSER;
wire [1 : 0] inout2_RRESP;
wire  inout2_BVALID;
wire  inout2_BREADY;
wire [1 : 0] inout2_BRESP;
wire [0 : 0] inout2_BID;
wire [0 : 0] inout2_BUSER;
wire  inout3_AWVALID;
wire  inout3_AWREADY;
wire [63 : 0] inout3_AWADDR;
wire [0 : 0] inout3_AWID;
wire [7 : 0] inout3_AWLEN;
wire [2 : 0] inout3_AWSIZE;
wire [1 : 0] inout3_AWBURST;
wire [1 : 0] inout3_AWLOCK;
wire [3 : 0] inout3_AWCACHE;
wire [2 : 0] inout3_AWPROT;
wire [3 : 0] inout3_AWQOS;
wire [3 : 0] inout3_AWREGION;
wire [0 : 0] inout3_AWUSER;
wire  inout3_WVALID;
wire  inout3_WREADY;
wire [255 : 0] inout3_WDATA;
wire [31 : 0] inout3_WSTRB;
wire  inout3_WLAST;
wire [0 : 0] inout3_WID;
wire [0 : 0] inout3_WUSER;
wire  inout3_ARVALID;
wire  inout3_ARREADY;
wire [63 : 0] inout3_ARADDR;
wire [0 : 0] inout3_ARID;
wire [7 : 0] inout3_ARLEN;
wire [2 : 0] inout3_ARSIZE;
wire [1 : 0] inout3_ARBURST;
wire [1 : 0] inout3_ARLOCK;
wire [3 : 0] inout3_ARCACHE;
wire [2 : 0] inout3_ARPROT;
wire [3 : 0] inout3_ARQOS;
wire [3 : 0] inout3_ARREGION;
wire [0 : 0] inout3_ARUSER;
wire  inout3_RVALID;
wire  inout3_RREADY;
wire [255 : 0] inout3_RDATA;
wire  inout3_RLAST;
wire [0 : 0] inout3_RID;
wire [0 : 0] inout3_RUSER;
wire [1 : 0] inout3_RRESP;
wire  inout3_BVALID;
wire  inout3_BREADY;
wire [1 : 0] inout3_BRESP;
wire [0 : 0] inout3_BID;
wire [0 : 0] inout3_BUSER;
wire  inout4_AWVALID;
wire  inout4_AWREADY;
wire [63 : 0] inout4_AWADDR;
wire [0 : 0] inout4_AWID;
wire [7 : 0] inout4_AWLEN;
wire [2 : 0] inout4_AWSIZE;
wire [1 : 0] inout4_AWBURST;
wire [1 : 0] inout4_AWLOCK;
wire [3 : 0] inout4_AWCACHE;
wire [2 : 0] inout4_AWPROT;
wire [3 : 0] inout4_AWQOS;
wire [3 : 0] inout4_AWREGION;
wire [0 : 0] inout4_AWUSER;
wire  inout4_WVALID;
wire  inout4_WREADY;
wire [255 : 0] inout4_WDATA;
wire [31 : 0] inout4_WSTRB;
wire  inout4_WLAST;
wire [0 : 0] inout4_WID;
wire [0 : 0] inout4_WUSER;
wire  inout4_ARVALID;
wire  inout4_ARREADY;
wire [63 : 0] inout4_ARADDR;
wire [0 : 0] inout4_ARID;
wire [7 : 0] inout4_ARLEN;
wire [2 : 0] inout4_ARSIZE;
wire [1 : 0] inout4_ARBURST;
wire [1 : 0] inout4_ARLOCK;
wire [3 : 0] inout4_ARCACHE;
wire [2 : 0] inout4_ARPROT;
wire [3 : 0] inout4_ARQOS;
wire [3 : 0] inout4_ARREGION;
wire [0 : 0] inout4_ARUSER;
wire  inout4_RVALID;
wire  inout4_RREADY;
wire [255 : 0] inout4_RDATA;
wire  inout4_RLAST;
wire [0 : 0] inout4_RID;
wire [0 : 0] inout4_RUSER;
wire [1 : 0] inout4_RRESP;
wire  inout4_BVALID;
wire  inout4_BREADY;
wire [1 : 0] inout4_BRESP;
wire [0 : 0] inout4_BID;
wire [0 : 0] inout4_BUSER;
wire  weights_AWVALID;
wire  weights_AWREADY;
wire [63 : 0] weights_AWADDR;
wire [0 : 0] weights_AWID;
wire [7 : 0] weights_AWLEN;
wire [2 : 0] weights_AWSIZE;
wire [1 : 0] weights_AWBURST;
wire [1 : 0] weights_AWLOCK;
wire [3 : 0] weights_AWCACHE;
wire [2 : 0] weights_AWPROT;
wire [3 : 0] weights_AWQOS;
wire [3 : 0] weights_AWREGION;
wire [0 : 0] weights_AWUSER;
wire  weights_WVALID;
wire  weights_WREADY;
wire [255 : 0] weights_WDATA;
wire [31 : 0] weights_WSTRB;
wire  weights_WLAST;
wire [0 : 0] weights_WID;
wire [0 : 0] weights_WUSER;
wire  weights_ARVALID;
wire  weights_ARREADY;
wire [63 : 0] weights_ARADDR;
wire [0 : 0] weights_ARID;
wire [7 : 0] weights_ARLEN;
wire [2 : 0] weights_ARSIZE;
wire [1 : 0] weights_ARBURST;
wire [1 : 0] weights_ARLOCK;
wire [3 : 0] weights_ARCACHE;
wire [2 : 0] weights_ARPROT;
wire [3 : 0] weights_ARQOS;
wire [3 : 0] weights_ARREGION;
wire [0 : 0] weights_ARUSER;
wire  weights_RVALID;
wire  weights_RREADY;
wire [255 : 0] weights_RDATA;
wire  weights_RLAST;
wire [0 : 0] weights_RID;
wire [0 : 0] weights_RUSER;
wire [1 : 0] weights_RRESP;
wire  weights_BVALID;
wire  weights_BREADY;
wire [1 : 0] weights_BRESP;
wire [0 : 0] weights_BID;
wire [0 : 0] weights_BUSER;
wire [31 : 0] num_images;
wire  reload_on_time_weights;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;
wire control_write_data_finish;
wire AESL_slave_start;
reg AESL_slave_start_lock = 0;
wire AESL_slave_write_start_in;
wire AESL_slave_write_start_finish;
reg AESL_slave_ready;
wire AESL_slave_output_done;
wire AESL_slave_done;
reg ready_rise = 0;
reg start_rise = 0;
reg slave_start_status = 0;
reg slave_done_status = 0;
reg ap_done_lock = 0;


wire ap_clk;
wire ap_rst_n;
wire ap_rst_n_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .s_axi_control_AWADDR(control_AWADDR),
    .s_axi_control_AWVALID(control_AWVALID),
    .s_axi_control_AWREADY(control_AWREADY),
    .s_axi_control_WVALID(control_WVALID),
    .s_axi_control_WREADY(control_WREADY),
    .s_axi_control_WDATA(control_WDATA),
    .s_axi_control_WSTRB(control_WSTRB),
    .s_axi_control_ARADDR(control_ARADDR),
    .s_axi_control_ARVALID(control_ARVALID),
    .s_axi_control_ARREADY(control_ARREADY),
    .s_axi_control_RVALID(control_RVALID),
    .s_axi_control_RREADY(control_RREADY),
    .s_axi_control_RDATA(control_RDATA),
    .s_axi_control_RRESP(control_RRESP),
    .s_axi_control_BVALID(control_BVALID),
    .s_axi_control_BREADY(control_BREADY),
    .s_axi_control_BRESP(control_BRESP),
    .interrupt(control_INTERRUPT),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .m_axi_inout1_AWVALID(inout1_AWVALID),
    .m_axi_inout1_AWREADY(inout1_AWREADY),
    .m_axi_inout1_AWADDR(inout1_AWADDR),
    .m_axi_inout1_AWID(inout1_AWID),
    .m_axi_inout1_AWLEN(inout1_AWLEN),
    .m_axi_inout1_AWSIZE(inout1_AWSIZE),
    .m_axi_inout1_AWBURST(inout1_AWBURST),
    .m_axi_inout1_AWLOCK(inout1_AWLOCK),
    .m_axi_inout1_AWCACHE(inout1_AWCACHE),
    .m_axi_inout1_AWPROT(inout1_AWPROT),
    .m_axi_inout1_AWQOS(inout1_AWQOS),
    .m_axi_inout1_AWREGION(inout1_AWREGION),
    .m_axi_inout1_AWUSER(inout1_AWUSER),
    .m_axi_inout1_WVALID(inout1_WVALID),
    .m_axi_inout1_WREADY(inout1_WREADY),
    .m_axi_inout1_WDATA(inout1_WDATA),
    .m_axi_inout1_WSTRB(inout1_WSTRB),
    .m_axi_inout1_WLAST(inout1_WLAST),
    .m_axi_inout1_WID(inout1_WID),
    .m_axi_inout1_WUSER(inout1_WUSER),
    .m_axi_inout1_ARVALID(inout1_ARVALID),
    .m_axi_inout1_ARREADY(inout1_ARREADY),
    .m_axi_inout1_ARADDR(inout1_ARADDR),
    .m_axi_inout1_ARID(inout1_ARID),
    .m_axi_inout1_ARLEN(inout1_ARLEN),
    .m_axi_inout1_ARSIZE(inout1_ARSIZE),
    .m_axi_inout1_ARBURST(inout1_ARBURST),
    .m_axi_inout1_ARLOCK(inout1_ARLOCK),
    .m_axi_inout1_ARCACHE(inout1_ARCACHE),
    .m_axi_inout1_ARPROT(inout1_ARPROT),
    .m_axi_inout1_ARQOS(inout1_ARQOS),
    .m_axi_inout1_ARREGION(inout1_ARREGION),
    .m_axi_inout1_ARUSER(inout1_ARUSER),
    .m_axi_inout1_RVALID(inout1_RVALID),
    .m_axi_inout1_RREADY(inout1_RREADY),
    .m_axi_inout1_RDATA(inout1_RDATA),
    .m_axi_inout1_RLAST(inout1_RLAST),
    .m_axi_inout1_RID(inout1_RID),
    .m_axi_inout1_RUSER(inout1_RUSER),
    .m_axi_inout1_RRESP(inout1_RRESP),
    .m_axi_inout1_BVALID(inout1_BVALID),
    .m_axi_inout1_BREADY(inout1_BREADY),
    .m_axi_inout1_BRESP(inout1_BRESP),
    .m_axi_inout1_BID(inout1_BID),
    .m_axi_inout1_BUSER(inout1_BUSER),
    .m_axi_inout2_AWVALID(inout2_AWVALID),
    .m_axi_inout2_AWREADY(inout2_AWREADY),
    .m_axi_inout2_AWADDR(inout2_AWADDR),
    .m_axi_inout2_AWID(inout2_AWID),
    .m_axi_inout2_AWLEN(inout2_AWLEN),
    .m_axi_inout2_AWSIZE(inout2_AWSIZE),
    .m_axi_inout2_AWBURST(inout2_AWBURST),
    .m_axi_inout2_AWLOCK(inout2_AWLOCK),
    .m_axi_inout2_AWCACHE(inout2_AWCACHE),
    .m_axi_inout2_AWPROT(inout2_AWPROT),
    .m_axi_inout2_AWQOS(inout2_AWQOS),
    .m_axi_inout2_AWREGION(inout2_AWREGION),
    .m_axi_inout2_AWUSER(inout2_AWUSER),
    .m_axi_inout2_WVALID(inout2_WVALID),
    .m_axi_inout2_WREADY(inout2_WREADY),
    .m_axi_inout2_WDATA(inout2_WDATA),
    .m_axi_inout2_WSTRB(inout2_WSTRB),
    .m_axi_inout2_WLAST(inout2_WLAST),
    .m_axi_inout2_WID(inout2_WID),
    .m_axi_inout2_WUSER(inout2_WUSER),
    .m_axi_inout2_ARVALID(inout2_ARVALID),
    .m_axi_inout2_ARREADY(inout2_ARREADY),
    .m_axi_inout2_ARADDR(inout2_ARADDR),
    .m_axi_inout2_ARID(inout2_ARID),
    .m_axi_inout2_ARLEN(inout2_ARLEN),
    .m_axi_inout2_ARSIZE(inout2_ARSIZE),
    .m_axi_inout2_ARBURST(inout2_ARBURST),
    .m_axi_inout2_ARLOCK(inout2_ARLOCK),
    .m_axi_inout2_ARCACHE(inout2_ARCACHE),
    .m_axi_inout2_ARPROT(inout2_ARPROT),
    .m_axi_inout2_ARQOS(inout2_ARQOS),
    .m_axi_inout2_ARREGION(inout2_ARREGION),
    .m_axi_inout2_ARUSER(inout2_ARUSER),
    .m_axi_inout2_RVALID(inout2_RVALID),
    .m_axi_inout2_RREADY(inout2_RREADY),
    .m_axi_inout2_RDATA(inout2_RDATA),
    .m_axi_inout2_RLAST(inout2_RLAST),
    .m_axi_inout2_RID(inout2_RID),
    .m_axi_inout2_RUSER(inout2_RUSER),
    .m_axi_inout2_RRESP(inout2_RRESP),
    .m_axi_inout2_BVALID(inout2_BVALID),
    .m_axi_inout2_BREADY(inout2_BREADY),
    .m_axi_inout2_BRESP(inout2_BRESP),
    .m_axi_inout2_BID(inout2_BID),
    .m_axi_inout2_BUSER(inout2_BUSER),
    .m_axi_inout3_AWVALID(inout3_AWVALID),
    .m_axi_inout3_AWREADY(inout3_AWREADY),
    .m_axi_inout3_AWADDR(inout3_AWADDR),
    .m_axi_inout3_AWID(inout3_AWID),
    .m_axi_inout3_AWLEN(inout3_AWLEN),
    .m_axi_inout3_AWSIZE(inout3_AWSIZE),
    .m_axi_inout3_AWBURST(inout3_AWBURST),
    .m_axi_inout3_AWLOCK(inout3_AWLOCK),
    .m_axi_inout3_AWCACHE(inout3_AWCACHE),
    .m_axi_inout3_AWPROT(inout3_AWPROT),
    .m_axi_inout3_AWQOS(inout3_AWQOS),
    .m_axi_inout3_AWREGION(inout3_AWREGION),
    .m_axi_inout3_AWUSER(inout3_AWUSER),
    .m_axi_inout3_WVALID(inout3_WVALID),
    .m_axi_inout3_WREADY(inout3_WREADY),
    .m_axi_inout3_WDATA(inout3_WDATA),
    .m_axi_inout3_WSTRB(inout3_WSTRB),
    .m_axi_inout3_WLAST(inout3_WLAST),
    .m_axi_inout3_WID(inout3_WID),
    .m_axi_inout3_WUSER(inout3_WUSER),
    .m_axi_inout3_ARVALID(inout3_ARVALID),
    .m_axi_inout3_ARREADY(inout3_ARREADY),
    .m_axi_inout3_ARADDR(inout3_ARADDR),
    .m_axi_inout3_ARID(inout3_ARID),
    .m_axi_inout3_ARLEN(inout3_ARLEN),
    .m_axi_inout3_ARSIZE(inout3_ARSIZE),
    .m_axi_inout3_ARBURST(inout3_ARBURST),
    .m_axi_inout3_ARLOCK(inout3_ARLOCK),
    .m_axi_inout3_ARCACHE(inout3_ARCACHE),
    .m_axi_inout3_ARPROT(inout3_ARPROT),
    .m_axi_inout3_ARQOS(inout3_ARQOS),
    .m_axi_inout3_ARREGION(inout3_ARREGION),
    .m_axi_inout3_ARUSER(inout3_ARUSER),
    .m_axi_inout3_RVALID(inout3_RVALID),
    .m_axi_inout3_RREADY(inout3_RREADY),
    .m_axi_inout3_RDATA(inout3_RDATA),
    .m_axi_inout3_RLAST(inout3_RLAST),
    .m_axi_inout3_RID(inout3_RID),
    .m_axi_inout3_RUSER(inout3_RUSER),
    .m_axi_inout3_RRESP(inout3_RRESP),
    .m_axi_inout3_BVALID(inout3_BVALID),
    .m_axi_inout3_BREADY(inout3_BREADY),
    .m_axi_inout3_BRESP(inout3_BRESP),
    .m_axi_inout3_BID(inout3_BID),
    .m_axi_inout3_BUSER(inout3_BUSER),
    .m_axi_inout4_AWVALID(inout4_AWVALID),
    .m_axi_inout4_AWREADY(inout4_AWREADY),
    .m_axi_inout4_AWADDR(inout4_AWADDR),
    .m_axi_inout4_AWID(inout4_AWID),
    .m_axi_inout4_AWLEN(inout4_AWLEN),
    .m_axi_inout4_AWSIZE(inout4_AWSIZE),
    .m_axi_inout4_AWBURST(inout4_AWBURST),
    .m_axi_inout4_AWLOCK(inout4_AWLOCK),
    .m_axi_inout4_AWCACHE(inout4_AWCACHE),
    .m_axi_inout4_AWPROT(inout4_AWPROT),
    .m_axi_inout4_AWQOS(inout4_AWQOS),
    .m_axi_inout4_AWREGION(inout4_AWREGION),
    .m_axi_inout4_AWUSER(inout4_AWUSER),
    .m_axi_inout4_WVALID(inout4_WVALID),
    .m_axi_inout4_WREADY(inout4_WREADY),
    .m_axi_inout4_WDATA(inout4_WDATA),
    .m_axi_inout4_WSTRB(inout4_WSTRB),
    .m_axi_inout4_WLAST(inout4_WLAST),
    .m_axi_inout4_WID(inout4_WID),
    .m_axi_inout4_WUSER(inout4_WUSER),
    .m_axi_inout4_ARVALID(inout4_ARVALID),
    .m_axi_inout4_ARREADY(inout4_ARREADY),
    .m_axi_inout4_ARADDR(inout4_ARADDR),
    .m_axi_inout4_ARID(inout4_ARID),
    .m_axi_inout4_ARLEN(inout4_ARLEN),
    .m_axi_inout4_ARSIZE(inout4_ARSIZE),
    .m_axi_inout4_ARBURST(inout4_ARBURST),
    .m_axi_inout4_ARLOCK(inout4_ARLOCK),
    .m_axi_inout4_ARCACHE(inout4_ARCACHE),
    .m_axi_inout4_ARPROT(inout4_ARPROT),
    .m_axi_inout4_ARQOS(inout4_ARQOS),
    .m_axi_inout4_ARREGION(inout4_ARREGION),
    .m_axi_inout4_ARUSER(inout4_ARUSER),
    .m_axi_inout4_RVALID(inout4_RVALID),
    .m_axi_inout4_RREADY(inout4_RREADY),
    .m_axi_inout4_RDATA(inout4_RDATA),
    .m_axi_inout4_RLAST(inout4_RLAST),
    .m_axi_inout4_RID(inout4_RID),
    .m_axi_inout4_RUSER(inout4_RUSER),
    .m_axi_inout4_RRESP(inout4_RRESP),
    .m_axi_inout4_BVALID(inout4_BVALID),
    .m_axi_inout4_BREADY(inout4_BREADY),
    .m_axi_inout4_BRESP(inout4_BRESP),
    .m_axi_inout4_BID(inout4_BID),
    .m_axi_inout4_BUSER(inout4_BUSER),
    .m_axi_weights_AWVALID(weights_AWVALID),
    .m_axi_weights_AWREADY(weights_AWREADY),
    .m_axi_weights_AWADDR(weights_AWADDR),
    .m_axi_weights_AWID(weights_AWID),
    .m_axi_weights_AWLEN(weights_AWLEN),
    .m_axi_weights_AWSIZE(weights_AWSIZE),
    .m_axi_weights_AWBURST(weights_AWBURST),
    .m_axi_weights_AWLOCK(weights_AWLOCK),
    .m_axi_weights_AWCACHE(weights_AWCACHE),
    .m_axi_weights_AWPROT(weights_AWPROT),
    .m_axi_weights_AWQOS(weights_AWQOS),
    .m_axi_weights_AWREGION(weights_AWREGION),
    .m_axi_weights_AWUSER(weights_AWUSER),
    .m_axi_weights_WVALID(weights_WVALID),
    .m_axi_weights_WREADY(weights_WREADY),
    .m_axi_weights_WDATA(weights_WDATA),
    .m_axi_weights_WSTRB(weights_WSTRB),
    .m_axi_weights_WLAST(weights_WLAST),
    .m_axi_weights_WID(weights_WID),
    .m_axi_weights_WUSER(weights_WUSER),
    .m_axi_weights_ARVALID(weights_ARVALID),
    .m_axi_weights_ARREADY(weights_ARREADY),
    .m_axi_weights_ARADDR(weights_ARADDR),
    .m_axi_weights_ARID(weights_ARID),
    .m_axi_weights_ARLEN(weights_ARLEN),
    .m_axi_weights_ARSIZE(weights_ARSIZE),
    .m_axi_weights_ARBURST(weights_ARBURST),
    .m_axi_weights_ARLOCK(weights_ARLOCK),
    .m_axi_weights_ARCACHE(weights_ARCACHE),
    .m_axi_weights_ARPROT(weights_ARPROT),
    .m_axi_weights_ARQOS(weights_ARQOS),
    .m_axi_weights_ARREGION(weights_ARREGION),
    .m_axi_weights_ARUSER(weights_ARUSER),
    .m_axi_weights_RVALID(weights_RVALID),
    .m_axi_weights_RREADY(weights_RREADY),
    .m_axi_weights_RDATA(weights_RDATA),
    .m_axi_weights_RLAST(weights_RLAST),
    .m_axi_weights_RID(weights_RID),
    .m_axi_weights_RUSER(weights_RUSER),
    .m_axi_weights_RRESP(weights_RRESP),
    .m_axi_weights_BVALID(weights_BVALID),
    .m_axi_weights_BREADY(weights_BREADY),
    .m_axi_weights_BRESP(weights_BRESP),
    .m_axi_weights_BID(weights_BID),
    .m_axi_weights_BUSER(weights_BUSER),
    .num_images(num_images),
    .reload_on_time_weights(reload_on_time_weights));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst_n = dut_rst;
assign ap_rst_n_n = ~dut_rst;
assign AESL_reset = rst;
assign AESL_start = start;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
  assign AESL_slave_write_start_in = slave_start_status  & control_write_data_finish;
  assign AESL_slave_start = AESL_slave_write_start_finish;
  assign AESL_done = slave_done_status ;

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        slave_start_status <= 1;
    end
    else begin
        if (AESL_start == 1 ) begin
            start_rise = 1;
        end
        if (start_rise == 1 && AESL_done == 1 ) begin
            slave_start_status <= 1;
        end
        if (AESL_slave_write_start_in == 1 && AESL_done == 0) begin 
            slave_start_status <= 0;
            start_rise = 0;
        end
    end
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        AESL_slave_ready <= 0;
        ready_rise = 0;
    end
    else begin
        if (AESL_ready == 1 ) begin
            ready_rise = 1;
        end
        if (ready_rise == 1 && AESL_done_delay == 1 ) begin
            AESL_slave_ready <= 1;
        end
        if (AESL_slave_ready == 1) begin 
            AESL_slave_ready <= 0;
            ready_rise = 0;
        end
    end
end

always @ (posedge AESL_clock)
begin
    if (AESL_done == 1) begin
        slave_done_status <= 0;
    end
    else if (AESL_slave_output_done == 1 ) begin
        slave_done_status <= 1;
    end
end





// The signal of port num_images
reg [31: 0] AESL_REG_num_images = 0;
assign num_images = AESL_REG_num_images;
initial begin : read_file_process_num_images
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [535  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 1);
    fp = $fopen(`AUTOTB_TVIN_num_images,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_num_images);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_num_images);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port reload_on_time_weights
reg [0: 0] AESL_REG_reload_on_time_weights = 0;
assign reload_on_time_weights = AESL_REG_reload_on_time_weights;
initial begin : read_file_process_reload_on_time_weights
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [535  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 1);
    fp = $fopen(`AUTOTB_TVIN_reload_on_time_weights,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_reload_on_time_weights);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_reload_on_time_weights);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end





















wire    AESL_axi_master_inout1_ready;
wire    AESL_axi_master_inout1_done;
AESL_axi_master_inout1 AESL_AXI_MASTER_inout1(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_inout1_AWVALID (inout1_AWVALID),
    .TRAN_inout1_AWREADY (inout1_AWREADY),
    .TRAN_inout1_AWADDR (inout1_AWADDR),
    .TRAN_inout1_AWID (inout1_AWID),
    .TRAN_inout1_AWLEN (inout1_AWLEN),
    .TRAN_inout1_AWSIZE (inout1_AWSIZE),
    .TRAN_inout1_AWBURST (inout1_AWBURST),
    .TRAN_inout1_AWLOCK (inout1_AWLOCK),
    .TRAN_inout1_AWCACHE (inout1_AWCACHE),
    .TRAN_inout1_AWPROT (inout1_AWPROT),
    .TRAN_inout1_AWQOS (inout1_AWQOS),
    .TRAN_inout1_AWREGION (inout1_AWREGION),
    .TRAN_inout1_AWUSER (inout1_AWUSER),
    .TRAN_inout1_WVALID (inout1_WVALID),
    .TRAN_inout1_WREADY (inout1_WREADY),
    .TRAN_inout1_WDATA (inout1_WDATA),
    .TRAN_inout1_WSTRB (inout1_WSTRB),
    .TRAN_inout1_WLAST (inout1_WLAST),
    .TRAN_inout1_WID (inout1_WID),
    .TRAN_inout1_WUSER (inout1_WUSER),
    .TRAN_inout1_ARVALID (inout1_ARVALID),
    .TRAN_inout1_ARREADY (inout1_ARREADY),
    .TRAN_inout1_ARADDR (inout1_ARADDR),
    .TRAN_inout1_ARID (inout1_ARID),
    .TRAN_inout1_ARLEN (inout1_ARLEN),
    .TRAN_inout1_ARSIZE (inout1_ARSIZE),
    .TRAN_inout1_ARBURST (inout1_ARBURST),
    .TRAN_inout1_ARLOCK (inout1_ARLOCK),
    .TRAN_inout1_ARCACHE (inout1_ARCACHE),
    .TRAN_inout1_ARPROT (inout1_ARPROT),
    .TRAN_inout1_ARQOS (inout1_ARQOS),
    .TRAN_inout1_ARREGION (inout1_ARREGION),
    .TRAN_inout1_ARUSER (inout1_ARUSER),
    .TRAN_inout1_RVALID (inout1_RVALID),
    .TRAN_inout1_RREADY (inout1_RREADY),
    .TRAN_inout1_RDATA (inout1_RDATA),
    .TRAN_inout1_RLAST (inout1_RLAST),
    .TRAN_inout1_RID (inout1_RID),
    .TRAN_inout1_RUSER (inout1_RUSER),
    .TRAN_inout1_RRESP (inout1_RRESP),
    .TRAN_inout1_BVALID (inout1_BVALID),
    .TRAN_inout1_BREADY (inout1_BREADY),
    .TRAN_inout1_BRESP (inout1_BRESP),
    .TRAN_inout1_BID (inout1_BID),
    .TRAN_inout1_BUSER (inout1_BUSER),
    .ready (AESL_axi_master_inout1_ready),
    .done  (AESL_axi_master_inout1_done)
);
assign    AESL_axi_master_inout1_ready    =   ready;
assign    AESL_axi_master_inout1_done    =   AESL_done_delay;
wire    AESL_axi_master_inout2_ready;
wire    AESL_axi_master_inout2_done;
AESL_axi_master_inout2 AESL_AXI_MASTER_inout2(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_inout2_AWVALID (inout2_AWVALID),
    .TRAN_inout2_AWREADY (inout2_AWREADY),
    .TRAN_inout2_AWADDR (inout2_AWADDR),
    .TRAN_inout2_AWID (inout2_AWID),
    .TRAN_inout2_AWLEN (inout2_AWLEN),
    .TRAN_inout2_AWSIZE (inout2_AWSIZE),
    .TRAN_inout2_AWBURST (inout2_AWBURST),
    .TRAN_inout2_AWLOCK (inout2_AWLOCK),
    .TRAN_inout2_AWCACHE (inout2_AWCACHE),
    .TRAN_inout2_AWPROT (inout2_AWPROT),
    .TRAN_inout2_AWQOS (inout2_AWQOS),
    .TRAN_inout2_AWREGION (inout2_AWREGION),
    .TRAN_inout2_AWUSER (inout2_AWUSER),
    .TRAN_inout2_WVALID (inout2_WVALID),
    .TRAN_inout2_WREADY (inout2_WREADY),
    .TRAN_inout2_WDATA (inout2_WDATA),
    .TRAN_inout2_WSTRB (inout2_WSTRB),
    .TRAN_inout2_WLAST (inout2_WLAST),
    .TRAN_inout2_WID (inout2_WID),
    .TRAN_inout2_WUSER (inout2_WUSER),
    .TRAN_inout2_ARVALID (inout2_ARVALID),
    .TRAN_inout2_ARREADY (inout2_ARREADY),
    .TRAN_inout2_ARADDR (inout2_ARADDR),
    .TRAN_inout2_ARID (inout2_ARID),
    .TRAN_inout2_ARLEN (inout2_ARLEN),
    .TRAN_inout2_ARSIZE (inout2_ARSIZE),
    .TRAN_inout2_ARBURST (inout2_ARBURST),
    .TRAN_inout2_ARLOCK (inout2_ARLOCK),
    .TRAN_inout2_ARCACHE (inout2_ARCACHE),
    .TRAN_inout2_ARPROT (inout2_ARPROT),
    .TRAN_inout2_ARQOS (inout2_ARQOS),
    .TRAN_inout2_ARREGION (inout2_ARREGION),
    .TRAN_inout2_ARUSER (inout2_ARUSER),
    .TRAN_inout2_RVALID (inout2_RVALID),
    .TRAN_inout2_RREADY (inout2_RREADY),
    .TRAN_inout2_RDATA (inout2_RDATA),
    .TRAN_inout2_RLAST (inout2_RLAST),
    .TRAN_inout2_RID (inout2_RID),
    .TRAN_inout2_RUSER (inout2_RUSER),
    .TRAN_inout2_RRESP (inout2_RRESP),
    .TRAN_inout2_BVALID (inout2_BVALID),
    .TRAN_inout2_BREADY (inout2_BREADY),
    .TRAN_inout2_BRESP (inout2_BRESP),
    .TRAN_inout2_BID (inout2_BID),
    .TRAN_inout2_BUSER (inout2_BUSER),
    .ready (AESL_axi_master_inout2_ready),
    .done  (AESL_axi_master_inout2_done)
);
assign    AESL_axi_master_inout2_ready    =   ready;
assign    AESL_axi_master_inout2_done    =   AESL_done_delay;
wire    AESL_axi_master_inout3_ready;
wire    AESL_axi_master_inout3_done;
AESL_axi_master_inout3 AESL_AXI_MASTER_inout3(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_inout3_AWVALID (inout3_AWVALID),
    .TRAN_inout3_AWREADY (inout3_AWREADY),
    .TRAN_inout3_AWADDR (inout3_AWADDR),
    .TRAN_inout3_AWID (inout3_AWID),
    .TRAN_inout3_AWLEN (inout3_AWLEN),
    .TRAN_inout3_AWSIZE (inout3_AWSIZE),
    .TRAN_inout3_AWBURST (inout3_AWBURST),
    .TRAN_inout3_AWLOCK (inout3_AWLOCK),
    .TRAN_inout3_AWCACHE (inout3_AWCACHE),
    .TRAN_inout3_AWPROT (inout3_AWPROT),
    .TRAN_inout3_AWQOS (inout3_AWQOS),
    .TRAN_inout3_AWREGION (inout3_AWREGION),
    .TRAN_inout3_AWUSER (inout3_AWUSER),
    .TRAN_inout3_WVALID (inout3_WVALID),
    .TRAN_inout3_WREADY (inout3_WREADY),
    .TRAN_inout3_WDATA (inout3_WDATA),
    .TRAN_inout3_WSTRB (inout3_WSTRB),
    .TRAN_inout3_WLAST (inout3_WLAST),
    .TRAN_inout3_WID (inout3_WID),
    .TRAN_inout3_WUSER (inout3_WUSER),
    .TRAN_inout3_ARVALID (inout3_ARVALID),
    .TRAN_inout3_ARREADY (inout3_ARREADY),
    .TRAN_inout3_ARADDR (inout3_ARADDR),
    .TRAN_inout3_ARID (inout3_ARID),
    .TRAN_inout3_ARLEN (inout3_ARLEN),
    .TRAN_inout3_ARSIZE (inout3_ARSIZE),
    .TRAN_inout3_ARBURST (inout3_ARBURST),
    .TRAN_inout3_ARLOCK (inout3_ARLOCK),
    .TRAN_inout3_ARCACHE (inout3_ARCACHE),
    .TRAN_inout3_ARPROT (inout3_ARPROT),
    .TRAN_inout3_ARQOS (inout3_ARQOS),
    .TRAN_inout3_ARREGION (inout3_ARREGION),
    .TRAN_inout3_ARUSER (inout3_ARUSER),
    .TRAN_inout3_RVALID (inout3_RVALID),
    .TRAN_inout3_RREADY (inout3_RREADY),
    .TRAN_inout3_RDATA (inout3_RDATA),
    .TRAN_inout3_RLAST (inout3_RLAST),
    .TRAN_inout3_RID (inout3_RID),
    .TRAN_inout3_RUSER (inout3_RUSER),
    .TRAN_inout3_RRESP (inout3_RRESP),
    .TRAN_inout3_BVALID (inout3_BVALID),
    .TRAN_inout3_BREADY (inout3_BREADY),
    .TRAN_inout3_BRESP (inout3_BRESP),
    .TRAN_inout3_BID (inout3_BID),
    .TRAN_inout3_BUSER (inout3_BUSER),
    .ready (AESL_axi_master_inout3_ready),
    .done  (AESL_axi_master_inout3_done)
);
assign    AESL_axi_master_inout3_ready    =   ready;
assign    AESL_axi_master_inout3_done    =   AESL_done_delay;
wire    AESL_axi_master_inout4_ready;
wire    AESL_axi_master_inout4_done;
AESL_axi_master_inout4 AESL_AXI_MASTER_inout4(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_inout4_AWVALID (inout4_AWVALID),
    .TRAN_inout4_AWREADY (inout4_AWREADY),
    .TRAN_inout4_AWADDR (inout4_AWADDR),
    .TRAN_inout4_AWID (inout4_AWID),
    .TRAN_inout4_AWLEN (inout4_AWLEN),
    .TRAN_inout4_AWSIZE (inout4_AWSIZE),
    .TRAN_inout4_AWBURST (inout4_AWBURST),
    .TRAN_inout4_AWLOCK (inout4_AWLOCK),
    .TRAN_inout4_AWCACHE (inout4_AWCACHE),
    .TRAN_inout4_AWPROT (inout4_AWPROT),
    .TRAN_inout4_AWQOS (inout4_AWQOS),
    .TRAN_inout4_AWREGION (inout4_AWREGION),
    .TRAN_inout4_AWUSER (inout4_AWUSER),
    .TRAN_inout4_WVALID (inout4_WVALID),
    .TRAN_inout4_WREADY (inout4_WREADY),
    .TRAN_inout4_WDATA (inout4_WDATA),
    .TRAN_inout4_WSTRB (inout4_WSTRB),
    .TRAN_inout4_WLAST (inout4_WLAST),
    .TRAN_inout4_WID (inout4_WID),
    .TRAN_inout4_WUSER (inout4_WUSER),
    .TRAN_inout4_ARVALID (inout4_ARVALID),
    .TRAN_inout4_ARREADY (inout4_ARREADY),
    .TRAN_inout4_ARADDR (inout4_ARADDR),
    .TRAN_inout4_ARID (inout4_ARID),
    .TRAN_inout4_ARLEN (inout4_ARLEN),
    .TRAN_inout4_ARSIZE (inout4_ARSIZE),
    .TRAN_inout4_ARBURST (inout4_ARBURST),
    .TRAN_inout4_ARLOCK (inout4_ARLOCK),
    .TRAN_inout4_ARCACHE (inout4_ARCACHE),
    .TRAN_inout4_ARPROT (inout4_ARPROT),
    .TRAN_inout4_ARQOS (inout4_ARQOS),
    .TRAN_inout4_ARREGION (inout4_ARREGION),
    .TRAN_inout4_ARUSER (inout4_ARUSER),
    .TRAN_inout4_RVALID (inout4_RVALID),
    .TRAN_inout4_RREADY (inout4_RREADY),
    .TRAN_inout4_RDATA (inout4_RDATA),
    .TRAN_inout4_RLAST (inout4_RLAST),
    .TRAN_inout4_RID (inout4_RID),
    .TRAN_inout4_RUSER (inout4_RUSER),
    .TRAN_inout4_RRESP (inout4_RRESP),
    .TRAN_inout4_BVALID (inout4_BVALID),
    .TRAN_inout4_BREADY (inout4_BREADY),
    .TRAN_inout4_BRESP (inout4_BRESP),
    .TRAN_inout4_BID (inout4_BID),
    .TRAN_inout4_BUSER (inout4_BUSER),
    .ready (AESL_axi_master_inout4_ready),
    .done  (AESL_axi_master_inout4_done)
);
assign    AESL_axi_master_inout4_ready    =   ready;
assign    AESL_axi_master_inout4_done    =   AESL_done_delay;
wire    AESL_axi_master_weights_ready;
wire    AESL_axi_master_weights_done;
AESL_axi_master_weights AESL_AXI_MASTER_weights(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_weights_AWVALID (weights_AWVALID),
    .TRAN_weights_AWREADY (weights_AWREADY),
    .TRAN_weights_AWADDR (weights_AWADDR),
    .TRAN_weights_AWID (weights_AWID),
    .TRAN_weights_AWLEN (weights_AWLEN),
    .TRAN_weights_AWSIZE (weights_AWSIZE),
    .TRAN_weights_AWBURST (weights_AWBURST),
    .TRAN_weights_AWLOCK (weights_AWLOCK),
    .TRAN_weights_AWCACHE (weights_AWCACHE),
    .TRAN_weights_AWPROT (weights_AWPROT),
    .TRAN_weights_AWQOS (weights_AWQOS),
    .TRAN_weights_AWREGION (weights_AWREGION),
    .TRAN_weights_AWUSER (weights_AWUSER),
    .TRAN_weights_WVALID (weights_WVALID),
    .TRAN_weights_WREADY (weights_WREADY),
    .TRAN_weights_WDATA (weights_WDATA),
    .TRAN_weights_WSTRB (weights_WSTRB),
    .TRAN_weights_WLAST (weights_WLAST),
    .TRAN_weights_WID (weights_WID),
    .TRAN_weights_WUSER (weights_WUSER),
    .TRAN_weights_ARVALID (weights_ARVALID),
    .TRAN_weights_ARREADY (weights_ARREADY),
    .TRAN_weights_ARADDR (weights_ARADDR),
    .TRAN_weights_ARID (weights_ARID),
    .TRAN_weights_ARLEN (weights_ARLEN),
    .TRAN_weights_ARSIZE (weights_ARSIZE),
    .TRAN_weights_ARBURST (weights_ARBURST),
    .TRAN_weights_ARLOCK (weights_ARLOCK),
    .TRAN_weights_ARCACHE (weights_ARCACHE),
    .TRAN_weights_ARPROT (weights_ARPROT),
    .TRAN_weights_ARQOS (weights_ARQOS),
    .TRAN_weights_ARREGION (weights_ARREGION),
    .TRAN_weights_ARUSER (weights_ARUSER),
    .TRAN_weights_RVALID (weights_RVALID),
    .TRAN_weights_RREADY (weights_RREADY),
    .TRAN_weights_RDATA (weights_RDATA),
    .TRAN_weights_RLAST (weights_RLAST),
    .TRAN_weights_RID (weights_RID),
    .TRAN_weights_RUSER (weights_RUSER),
    .TRAN_weights_RRESP (weights_RRESP),
    .TRAN_weights_BVALID (weights_BVALID),
    .TRAN_weights_BREADY (weights_BREADY),
    .TRAN_weights_BRESP (weights_BRESP),
    .TRAN_weights_BID (weights_BID),
    .TRAN_weights_BUSER (weights_BUSER),
    .ready (AESL_axi_master_weights_ready),
    .done  (AESL_axi_master_weights_done)
);
assign    AESL_axi_master_weights_ready    =   ready;
assign    AESL_axi_master_weights_done    =   AESL_done_delay;

AESL_axi_slave_control AESL_AXI_SLAVE_control(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_s_axi_control_AWADDR (control_AWADDR),
    .TRAN_s_axi_control_AWVALID (control_AWVALID),
    .TRAN_s_axi_control_AWREADY (control_AWREADY),
    .TRAN_s_axi_control_WVALID (control_WVALID),
    .TRAN_s_axi_control_WREADY (control_WREADY),
    .TRAN_s_axi_control_WDATA (control_WDATA),
    .TRAN_s_axi_control_WSTRB (control_WSTRB),
    .TRAN_s_axi_control_ARADDR (control_ARADDR),
    .TRAN_s_axi_control_ARVALID (control_ARVALID),
    .TRAN_s_axi_control_ARREADY (control_ARREADY),
    .TRAN_s_axi_control_RVALID (control_RVALID),
    .TRAN_s_axi_control_RREADY (control_RREADY),
    .TRAN_s_axi_control_RDATA (control_RDATA),
    .TRAN_s_axi_control_RRESP (control_RRESP),
    .TRAN_s_axi_control_BVALID (control_BVALID),
    .TRAN_s_axi_control_BREADY (control_BREADY),
    .TRAN_s_axi_control_BRESP (control_BRESP),
    .TRAN_control_interrupt (control_INTERRUPT),
    .TRAN_control_write_data_finish(control_write_data_finish),
    .TRAN_control_ready_out (AESL_ready),
    .TRAN_control_ready_in (AESL_slave_ready),
    .TRAN_control_done_out (AESL_slave_output_done),
    .TRAN_control_idle_out (AESL_idle),
    .TRAN_control_write_start_in     (AESL_slave_write_start_in),
    .TRAN_control_write_start_finish (AESL_slave_write_start_finish),
    .TRAN_control_transaction_done_in (AESL_done_delay),
    .TRAN_control_start_in  (AESL_slave_start)
);

initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 1);
    while(AESL_ready_cnt != AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

    event next_trigger_ready_cnt;
    
    initial begin : gen_ready_cnt
        ready_cnt = 0;
        wait (AESL_reset === 1);
        forever begin
            @ (posedge AESL_clock);
            if (ready == 1) begin
                if (ready_cnt < AUTOTB_TRANSACTION_NUM) begin
                    ready_cnt = ready_cnt + 1;
                end
            end
            -> next_trigger_ready_cnt;
        end
    end
    
    wire all_finish = (done_cnt == AUTOTB_TRANSACTION_NUM);
    
    // done_cnt
    always @ (posedge AESL_clock) begin
        if (~AESL_reset) begin
            done_cnt <= 0;
        end else begin
            if (AESL_done == 1) begin
                if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
                    done_cnt <= done_cnt + 1;
                end
            end
        end
    end
    
    initial begin : finish_simulation
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        repeat(6) @ (posedge AESL_clock);
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_inout1;
reg [31:0] size_inout1;
reg [31:0] size_inout1_backup;
reg end_inout2;
reg [31:0] size_inout2;
reg [31:0] size_inout2_backup;
reg end_inout3;
reg [31:0] size_inout3;
reg [31:0] size_inout3_backup;
reg end_inout4;
reg [31:0] size_inout4;
reg [31:0] size_inout4_backup;
reg end_weights;
reg [31:0] size_weights;
reg [31:0] size_weights_backup;
reg end_num_images;
reg [31:0] size_num_images;
reg [31:0] size_num_images_backup;
reg end_reload_on_time_weights;
reg [31:0] size_reload_on_time_weights;
reg [31:0] size_reload_on_time_weights_backup;
reg end_images;
reg [31:0] size_images;
reg [31:0] size_images_backup;
reg end_x;
reg [31:0] size_x;
reg [31:0] size_x_backup;
reg end_tmp1;
reg [31:0] size_tmp1;
reg [31:0] size_tmp1_backup;
reg end_tmp2;
reg [31:0] size_tmp2;
reg [31:0] size_tmp2_backup;
reg end_tmp3;
reg [31:0] size_tmp3;
reg [31:0] size_tmp3_backup;
reg end_tmp_hidden;
reg [31:0] size_tmp_hidden;
reg [31:0] size_tmp_hidden_backup;
reg end_attn;
reg [31:0] size_attn;
reg [31:0] size_attn_backup;
reg end_attn_softmax_info;
reg [31:0] size_attn_softmax_info;
reg [31:0] size_attn_softmax_info_backup;
reg end_patch_embed_weights;
reg [31:0] size_patch_embed_weights;
reg [31:0] size_patch_embed_weights_backup;
reg end_patch_embed_bias;
reg [31:0] size_patch_embed_bias;
reg [31:0] size_patch_embed_bias_backup;
reg end_pos_embed;
reg [31:0] size_pos_embed;
reg [31:0] size_pos_embed_backup;
reg end_attn_weights;
reg [31:0] size_attn_weights;
reg [31:0] size_attn_weights_backup;
reg end_attn_bias;
reg [31:0] size_attn_bias;
reg [31:0] size_attn_bias_backup;
reg end_vit_weights_l1;
reg [31:0] size_vit_weights_l1;
reg [31:0] size_vit_weights_l1_backup;
reg end_vit_bias_l1;
reg [31:0] size_vit_bias_l1;
reg [31:0] size_vit_bias_l1_backup;
reg end_vit_weights_l2;
reg [31:0] size_vit_weights_l2;
reg [31:0] size_vit_weights_l2_backup;
reg end_vit_bias_l2;
reg [31:0] size_vit_bias_l2;
reg [31:0] size_vit_bias_l2_backup;
reg end_norm_weights;
reg [31:0] size_norm_weights;
reg [31:0] size_norm_weights_backup;
reg end_norm_bias;
reg [31:0] size_norm_bias;
reg [31:0] size_norm_bias_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 0;
    # 100;
    repeat(0+3) @ (posedge AESL_clock);
    rst = 1;
end
initial begin : initial_process_for_dut_rst
    integer proc_rand;
    dut_rst = 0;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    dut_rst = 1;
end
initial begin : start_process
    integer proc_rand;
    reg [31:0] start_cnt;
    ce = 1;
    start = 0;
    start_cnt = 0;
    wait (AESL_reset === 1);
    @ (posedge AESL_clock);
    #0 start = 1;
    start_cnt = start_cnt + 1;
    forever begin
        if (start_cnt >= AUTOTB_TRANSACTION_NUM + 1) begin
            #0 start = 0;
        end
        @ (posedge AESL_clock);
        if (AESL_ready) begin
            start_cnt = start_cnt + 1;
        end
    end
end

always @(AESL_done)
begin
    tb_continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait (AESL_start === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      AESL_ready_delay = 0;
  else
      AESL_ready_delay = AESL_ready;
end
initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready = (ready_initial | AESL_ready_delay);
assign ready_wire = ready_initial | AESL_ready_delay;
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end
task write_binary;
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

reg dump_tvout_finish_inout1;

initial begin : dump_tvout_runtime_sign_inout1
    integer fp;
    dump_tvout_finish_inout1 = 0;
    fp = $fopen(`AUTOTB_TVOUT_inout1_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_inout1_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_inout1_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_inout1_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_inout1 = 1;
end


reg dump_tvout_finish_inout2;

initial begin : dump_tvout_runtime_sign_inout2
    integer fp;
    dump_tvout_finish_inout2 = 0;
    fp = $fopen(`AUTOTB_TVOUT_inout2_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_inout2_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_inout2_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_inout2_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_inout2 = 1;
end


reg dump_tvout_finish_inout3;

initial begin : dump_tvout_runtime_sign_inout3
    integer fp;
    dump_tvout_finish_inout3 = 0;
    fp = $fopen(`AUTOTB_TVOUT_inout3_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_inout3_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_inout3_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_inout3_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_inout3 = 1;
end


reg dump_tvout_finish_inout4;

initial begin : dump_tvout_runtime_sign_inout4
    integer fp;
    dump_tvout_finish_inout4 = 0;
    fp = $fopen(`AUTOTB_TVOUT_inout4_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_inout4_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_inout4_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_inout4_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_inout4 = 1;
end


////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;
reg AESL_start_p1;

always @ (posedge AESL_clock) begin
    if (AESL_reset == 0) begin
        clk_cnt <= 32'h0;
        AESL_ready_p1 <= 1'b0;
        AESL_start_p1 <= 1'b0;
    end
    else begin
        clk_cnt <= clk_cnt + 1;
        AESL_ready_p1 <= AESL_ready;
        AESL_start_p1 <= AESL_start;
    end
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
reg [31:0] lat_total;
event report_progress;

always @(posedge AESL_clock)
begin
    if (finish_cnt == AUTOTB_TRANSACTION_NUM - 1 && AESL_done == 1'b1)
        lat_total = clk_cnt - start_timestamp[0];
end

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 1);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if ((AESL_start && AESL_ready_p1)||(AESL_start && ~AESL_start_p1)) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (ap_ready_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start_p1 && AESL_ready_p1) begin
                ready_timestamp[ap_ready_cnt] = clk_cnt;
                ap_ready_cnt = ap_ready_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin : simulation_progress
    real intra_progress;
    wait (AESL_reset == 1);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("//");
    $display("// RTL Simulation : \"Inter-Transaction Progress\" [\"Intra-Transaction Progress\"] @ \"Simulation Time\"");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                print_progress();
                progress_timeout = PROGRESS_TIMEOUT;
            end else begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
            end
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task get_intra_progress(output real intra_progress);
    begin
        if (start_cnt > finish_cnt) begin
            intra_progress = clk_cnt - start_timestamp[finish_cnt];
        end else if(finish_cnt > 0) begin
            intra_progress = LATENCY_ESTIMATION;
        end else begin
            intra_progress = 0;
        end
        intra_progress = intra_progress / LATENCY_ESTIMATION;
    end
endtask

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            get_intra_progress(intra_progress);
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress * 100, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [n/a] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    reg [31:0] total_execute_time;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;
        total_execute_time = lat_total;

        for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
            // calculate latency
            latency[i] = finish_timestamp[i] - start_timestamp[i];
            if (latency[i] > latency_max) latency_max = latency[i];
            if (latency[i] < latency_min) latency_min = latency[i];
            latency_total = latency_total + latency[i];
            // calculate interval
            if (AUTOTB_TRANSACTION_NUM == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                interval[i] = start_timestamp[i + 1] - start_timestamp[i];
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        latency_average = latency_total / AUTOTB_TRANSACTION_NUM;
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (AUTOTB_TRANSACTION_NUM - 1);
        end

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);
        $fdisplay(fp, "$TOTAL_EXECUTE_TIME = \"%0d\"", total_execute_time);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
                if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
    end
endtask


////////////////////////////////////////////
// Dependence Check
////////////////////////////////////////////

`ifndef POST_SYN

`endif

AESL_deadlock_detector deadlock_detector(
    .dl_reset(AESL_reset),
    .all_finish(all_finish),
    .dl_clock(AESL_clock));

