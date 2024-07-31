// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module ViT_act_read_attn_softmax_info (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        attn_softmax_info_stream_din,
        attn_softmax_info_stream_num_data_valid,
        attn_softmax_info_stream_fifo_cap,
        attn_softmax_info_stream_full_n,
        attn_softmax_info_stream_write,
        m_axi_inout4_AWVALID,
        m_axi_inout4_AWREADY,
        m_axi_inout4_AWADDR,
        m_axi_inout4_AWID,
        m_axi_inout4_AWLEN,
        m_axi_inout4_AWSIZE,
        m_axi_inout4_AWBURST,
        m_axi_inout4_AWLOCK,
        m_axi_inout4_AWCACHE,
        m_axi_inout4_AWPROT,
        m_axi_inout4_AWQOS,
        m_axi_inout4_AWREGION,
        m_axi_inout4_AWUSER,
        m_axi_inout4_WVALID,
        m_axi_inout4_WREADY,
        m_axi_inout4_WDATA,
        m_axi_inout4_WSTRB,
        m_axi_inout4_WLAST,
        m_axi_inout4_WID,
        m_axi_inout4_WUSER,
        m_axi_inout4_ARVALID,
        m_axi_inout4_ARREADY,
        m_axi_inout4_ARADDR,
        m_axi_inout4_ARID,
        m_axi_inout4_ARLEN,
        m_axi_inout4_ARSIZE,
        m_axi_inout4_ARBURST,
        m_axi_inout4_ARLOCK,
        m_axi_inout4_ARCACHE,
        m_axi_inout4_ARPROT,
        m_axi_inout4_ARQOS,
        m_axi_inout4_ARREGION,
        m_axi_inout4_ARUSER,
        m_axi_inout4_RVALID,
        m_axi_inout4_RREADY,
        m_axi_inout4_RDATA,
        m_axi_inout4_RLAST,
        m_axi_inout4_RID,
        m_axi_inout4_RFIFONUM,
        m_axi_inout4_RUSER,
        m_axi_inout4_RRESP,
        m_axi_inout4_BVALID,
        m_axi_inout4_BREADY,
        m_axi_inout4_BRESP,
        m_axi_inout4_BID,
        m_axi_inout4_BUSER,
        attn_softmax_info
);

parameter    ap_ST_fsm_state1 = 9'd1;
parameter    ap_ST_fsm_state2 = 9'd2;
parameter    ap_ST_fsm_state3 = 9'd4;
parameter    ap_ST_fsm_state4 = 9'd8;
parameter    ap_ST_fsm_state5 = 9'd16;
parameter    ap_ST_fsm_state6 = 9'd32;
parameter    ap_ST_fsm_state7 = 9'd64;
parameter    ap_ST_fsm_state8 = 9'd128;
parameter    ap_ST_fsm_state9 = 9'd256;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [255:0] attn_softmax_info_stream_din;
input  [1:0] attn_softmax_info_stream_num_data_valid;
input  [1:0] attn_softmax_info_stream_fifo_cap;
input   attn_softmax_info_stream_full_n;
output   attn_softmax_info_stream_write;
output   m_axi_inout4_AWVALID;
input   m_axi_inout4_AWREADY;
output  [63:0] m_axi_inout4_AWADDR;
output  [0:0] m_axi_inout4_AWID;
output  [31:0] m_axi_inout4_AWLEN;
output  [2:0] m_axi_inout4_AWSIZE;
output  [1:0] m_axi_inout4_AWBURST;
output  [1:0] m_axi_inout4_AWLOCK;
output  [3:0] m_axi_inout4_AWCACHE;
output  [2:0] m_axi_inout4_AWPROT;
output  [3:0] m_axi_inout4_AWQOS;
output  [3:0] m_axi_inout4_AWREGION;
output  [0:0] m_axi_inout4_AWUSER;
output   m_axi_inout4_WVALID;
input   m_axi_inout4_WREADY;
output  [255:0] m_axi_inout4_WDATA;
output  [31:0] m_axi_inout4_WSTRB;
output   m_axi_inout4_WLAST;
output  [0:0] m_axi_inout4_WID;
output  [0:0] m_axi_inout4_WUSER;
output   m_axi_inout4_ARVALID;
input   m_axi_inout4_ARREADY;
output  [63:0] m_axi_inout4_ARADDR;
output  [0:0] m_axi_inout4_ARID;
output  [31:0] m_axi_inout4_ARLEN;
output  [2:0] m_axi_inout4_ARSIZE;
output  [1:0] m_axi_inout4_ARBURST;
output  [1:0] m_axi_inout4_ARLOCK;
output  [3:0] m_axi_inout4_ARCACHE;
output  [2:0] m_axi_inout4_ARPROT;
output  [3:0] m_axi_inout4_ARQOS;
output  [3:0] m_axi_inout4_ARREGION;
output  [0:0] m_axi_inout4_ARUSER;
input   m_axi_inout4_RVALID;
output   m_axi_inout4_RREADY;
input  [255:0] m_axi_inout4_RDATA;
input   m_axi_inout4_RLAST;
input  [0:0] m_axi_inout4_RID;
input  [8:0] m_axi_inout4_RFIFONUM;
input  [0:0] m_axi_inout4_RUSER;
input  [1:0] m_axi_inout4_RRESP;
input   m_axi_inout4_BVALID;
output   m_axi_inout4_BREADY;
input  [1:0] m_axi_inout4_BRESP;
input  [0:0] m_axi_inout4_BID;
input  [0:0] m_axi_inout4_BUSER;
input  [63:0] attn_softmax_info;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg attn_softmax_info_stream_write;
reg m_axi_inout4_ARVALID;
reg[63:0] m_axi_inout4_ARADDR;
reg[0:0] m_axi_inout4_ARID;
reg[31:0] m_axi_inout4_ARLEN;
reg[2:0] m_axi_inout4_ARSIZE;
reg[1:0] m_axi_inout4_ARBURST;
reg[1:0] m_axi_inout4_ARLOCK;
reg[3:0] m_axi_inout4_ARCACHE;
reg[2:0] m_axi_inout4_ARPROT;
reg[3:0] m_axi_inout4_ARQOS;
reg[3:0] m_axi_inout4_ARREGION;
reg[0:0] m_axi_inout4_ARUSER;
reg m_axi_inout4_RREADY;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    inout4_blk_n_AR;
wire  signed [58:0] trunc_ln_fu_64_p4;
reg   [58:0] trunc_ln_reg_85;
wire    grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_ap_start;
wire    grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_ap_done;
wire    grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_ap_idle;
wire    grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_ap_ready;
wire    grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_AWVALID;
wire   [63:0] grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_AWADDR;
wire   [0:0] grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_AWID;
wire   [31:0] grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_AWLEN;
wire   [2:0] grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_AWSIZE;
wire   [1:0] grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_AWBURST;
wire   [1:0] grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_AWLOCK;
wire   [3:0] grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_AWCACHE;
wire   [2:0] grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_AWPROT;
wire   [3:0] grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_AWQOS;
wire   [3:0] grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_AWREGION;
wire   [0:0] grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_AWUSER;
wire    grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_WVALID;
wire   [255:0] grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_WDATA;
wire   [31:0] grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_WSTRB;
wire    grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_WLAST;
wire   [0:0] grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_WID;
wire   [0:0] grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_WUSER;
wire    grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_ARVALID;
wire   [63:0] grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_ARADDR;
wire   [0:0] grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_ARID;
wire   [31:0] grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_ARLEN;
wire   [2:0] grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_ARSIZE;
wire   [1:0] grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_ARBURST;
wire   [1:0] grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_ARLOCK;
wire   [3:0] grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_ARCACHE;
wire   [2:0] grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_ARPROT;
wire   [3:0] grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_ARQOS;
wire   [3:0] grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_ARREGION;
wire   [0:0] grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_ARUSER;
wire    grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_RREADY;
wire    grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_BREADY;
wire   [255:0] grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_attn_softmax_info_stream_din;
wire    grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_attn_softmax_info_stream_write;
reg    grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_ap_start_reg;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state9;
wire  signed [63:0] sext_ln388_fu_74_p1;
reg    ap_block_state1;
reg   [8:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
reg    ap_ST_fsm_state9_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 9'd1;
#0 grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_ap_start_reg = 1'b0;
end

ViT_act_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_ap_start),
    .ap_done(grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_ap_done),
    .ap_idle(grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_ap_idle),
    .ap_ready(grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_ap_ready),
    .m_axi_inout4_AWVALID(grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_AWVALID),
    .m_axi_inout4_AWREADY(1'b0),
    .m_axi_inout4_AWADDR(grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_AWADDR),
    .m_axi_inout4_AWID(grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_AWID),
    .m_axi_inout4_AWLEN(grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_AWLEN),
    .m_axi_inout4_AWSIZE(grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_AWSIZE),
    .m_axi_inout4_AWBURST(grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_AWBURST),
    .m_axi_inout4_AWLOCK(grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_AWLOCK),
    .m_axi_inout4_AWCACHE(grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_AWCACHE),
    .m_axi_inout4_AWPROT(grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_AWPROT),
    .m_axi_inout4_AWQOS(grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_AWQOS),
    .m_axi_inout4_AWREGION(grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_AWREGION),
    .m_axi_inout4_AWUSER(grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_AWUSER),
    .m_axi_inout4_WVALID(grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_WVALID),
    .m_axi_inout4_WREADY(1'b0),
    .m_axi_inout4_WDATA(grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_WDATA),
    .m_axi_inout4_WSTRB(grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_WSTRB),
    .m_axi_inout4_WLAST(grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_WLAST),
    .m_axi_inout4_WID(grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_WID),
    .m_axi_inout4_WUSER(grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_WUSER),
    .m_axi_inout4_ARVALID(grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_ARVALID),
    .m_axi_inout4_ARREADY(m_axi_inout4_ARREADY),
    .m_axi_inout4_ARADDR(grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_ARADDR),
    .m_axi_inout4_ARID(grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_ARID),
    .m_axi_inout4_ARLEN(grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_ARLEN),
    .m_axi_inout4_ARSIZE(grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_ARSIZE),
    .m_axi_inout4_ARBURST(grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_ARBURST),
    .m_axi_inout4_ARLOCK(grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_ARLOCK),
    .m_axi_inout4_ARCACHE(grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_ARCACHE),
    .m_axi_inout4_ARPROT(grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_ARPROT),
    .m_axi_inout4_ARQOS(grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_ARQOS),
    .m_axi_inout4_ARREGION(grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_ARREGION),
    .m_axi_inout4_ARUSER(grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_ARUSER),
    .m_axi_inout4_RVALID(m_axi_inout4_RVALID),
    .m_axi_inout4_RREADY(grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_RREADY),
    .m_axi_inout4_RDATA(m_axi_inout4_RDATA),
    .m_axi_inout4_RLAST(m_axi_inout4_RLAST),
    .m_axi_inout4_RID(m_axi_inout4_RID),
    .m_axi_inout4_RFIFONUM(m_axi_inout4_RFIFONUM),
    .m_axi_inout4_RUSER(m_axi_inout4_RUSER),
    .m_axi_inout4_RRESP(m_axi_inout4_RRESP),
    .m_axi_inout4_BVALID(1'b0),
    .m_axi_inout4_BREADY(grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_BREADY),
    .m_axi_inout4_BRESP(2'd0),
    .m_axi_inout4_BID(1'd0),
    .m_axi_inout4_BUSER(1'd0),
    .attn_softmax_info_stream_din(grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_attn_softmax_info_stream_din),
    .attn_softmax_info_stream_num_data_valid(2'd0),
    .attn_softmax_info_stream_fifo_cap(2'd0),
    .attn_softmax_info_stream_full_n(attn_softmax_info_stream_full_n),
    .attn_softmax_info_stream_write(grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_attn_softmax_info_stream_write),
    .sext_ln388(trunc_ln_reg_85)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state9) & (grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_ap_done == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state8)) begin
            grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_ap_start_reg <= 1'b1;
        end else if ((grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_ap_ready == 1'b1)) begin
            grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        trunc_ln_reg_85 <= {{attn_softmax_info[63:5]}};
    end
end

always @ (*) begin
    if (((m_axi_inout4_ARREADY == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

assign ap_ST_fsm_state3_blk = 1'b0;

assign ap_ST_fsm_state4_blk = 1'b0;

assign ap_ST_fsm_state5_blk = 1'b0;

assign ap_ST_fsm_state6_blk = 1'b0;

assign ap_ST_fsm_state7_blk = 1'b0;

assign ap_ST_fsm_state8_blk = 1'b0;

always @ (*) begin
    if ((grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_ap_done == 1'b0)) begin
        ap_ST_fsm_state9_blk = 1'b1;
    end else begin
        ap_ST_fsm_state9_blk = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) & (grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_ap_done == 1'b1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) & (grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        attn_softmax_info_stream_write = grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_attn_softmax_info_stream_write;
    end else begin
        attn_softmax_info_stream_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        inout4_blk_n_AR = m_axi_inout4_ARREADY;
    end else begin
        inout4_blk_n_AR = 1'b1;
    end
end

always @ (*) begin
    if ((~((m_axi_inout4_ARREADY == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        m_axi_inout4_ARADDR = sext_ln388_fu_74_p1;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        m_axi_inout4_ARADDR = grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_ARADDR;
    end else begin
        m_axi_inout4_ARADDR = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        m_axi_inout4_ARBURST = grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_ARBURST;
    end else begin
        m_axi_inout4_ARBURST = 2'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        m_axi_inout4_ARCACHE = grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_ARCACHE;
    end else begin
        m_axi_inout4_ARCACHE = 4'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        m_axi_inout4_ARID = grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_ARID;
    end else begin
        m_axi_inout4_ARID = 1'd0;
    end
end

always @ (*) begin
    if ((~((m_axi_inout4_ARREADY == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        m_axi_inout4_ARLEN = 32'd129;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        m_axi_inout4_ARLEN = grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_ARLEN;
    end else begin
        m_axi_inout4_ARLEN = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        m_axi_inout4_ARLOCK = grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_ARLOCK;
    end else begin
        m_axi_inout4_ARLOCK = 2'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        m_axi_inout4_ARPROT = grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_ARPROT;
    end else begin
        m_axi_inout4_ARPROT = 3'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        m_axi_inout4_ARQOS = grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_ARQOS;
    end else begin
        m_axi_inout4_ARQOS = 4'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        m_axi_inout4_ARREGION = grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_ARREGION;
    end else begin
        m_axi_inout4_ARREGION = 4'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        m_axi_inout4_ARSIZE = grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_ARSIZE;
    end else begin
        m_axi_inout4_ARSIZE = 3'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        m_axi_inout4_ARUSER = grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_ARUSER;
    end else begin
        m_axi_inout4_ARUSER = 1'd0;
    end
end

always @ (*) begin
    if ((~((m_axi_inout4_ARREADY == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        m_axi_inout4_ARVALID = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        m_axi_inout4_ARVALID = grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_ARVALID;
    end else begin
        m_axi_inout4_ARVALID = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        m_axi_inout4_RREADY = grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_m_axi_inout4_RREADY;
    end else begin
        m_axi_inout4_RREADY = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((m_axi_inout4_ARREADY == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            if (((1'b1 == ap_CS_fsm_state9) & (grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end

assign attn_softmax_info_stream_din = grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_attn_softmax_info_stream_din;

assign grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_ap_start = grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55_ap_start_reg;

assign m_axi_inout4_AWADDR = 64'd0;

assign m_axi_inout4_AWBURST = 2'd0;

assign m_axi_inout4_AWCACHE = 4'd0;

assign m_axi_inout4_AWID = 1'd0;

assign m_axi_inout4_AWLEN = 32'd0;

assign m_axi_inout4_AWLOCK = 2'd0;

assign m_axi_inout4_AWPROT = 3'd0;

assign m_axi_inout4_AWQOS = 4'd0;

assign m_axi_inout4_AWREGION = 4'd0;

assign m_axi_inout4_AWSIZE = 3'd0;

assign m_axi_inout4_AWUSER = 1'd0;

assign m_axi_inout4_AWVALID = 1'b0;

assign m_axi_inout4_BREADY = 1'b0;

assign m_axi_inout4_WDATA = 256'd0;

assign m_axi_inout4_WID = 1'd0;

assign m_axi_inout4_WLAST = 1'b0;

assign m_axi_inout4_WSTRB = 32'd0;

assign m_axi_inout4_WUSER = 1'd0;

assign m_axi_inout4_WVALID = 1'b0;

assign sext_ln388_fu_74_p1 = trunc_ln_fu_64_p4;

assign trunc_ln_fu_64_p4 = {{attn_softmax_info[63:5]}};

endmodule //ViT_act_read_attn_softmax_info
