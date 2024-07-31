// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module ViT_act_read_x (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        q_stream_din,
        q_stream_num_data_valid,
        q_stream_fifo_cap,
        q_stream_full_n,
        q_stream_write,
        m_axi_inout2_AWVALID,
        m_axi_inout2_AWREADY,
        m_axi_inout2_AWADDR,
        m_axi_inout2_AWID,
        m_axi_inout2_AWLEN,
        m_axi_inout2_AWSIZE,
        m_axi_inout2_AWBURST,
        m_axi_inout2_AWLOCK,
        m_axi_inout2_AWCACHE,
        m_axi_inout2_AWPROT,
        m_axi_inout2_AWQOS,
        m_axi_inout2_AWREGION,
        m_axi_inout2_AWUSER,
        m_axi_inout2_WVALID,
        m_axi_inout2_WREADY,
        m_axi_inout2_WDATA,
        m_axi_inout2_WSTRB,
        m_axi_inout2_WLAST,
        m_axi_inout2_WID,
        m_axi_inout2_WUSER,
        m_axi_inout2_ARVALID,
        m_axi_inout2_ARREADY,
        m_axi_inout2_ARADDR,
        m_axi_inout2_ARID,
        m_axi_inout2_ARLEN,
        m_axi_inout2_ARSIZE,
        m_axi_inout2_ARBURST,
        m_axi_inout2_ARLOCK,
        m_axi_inout2_ARCACHE,
        m_axi_inout2_ARPROT,
        m_axi_inout2_ARQOS,
        m_axi_inout2_ARREGION,
        m_axi_inout2_ARUSER,
        m_axi_inout2_RVALID,
        m_axi_inout2_RREADY,
        m_axi_inout2_RDATA,
        m_axi_inout2_RLAST,
        m_axi_inout2_RID,
        m_axi_inout2_RFIFONUM,
        m_axi_inout2_RUSER,
        m_axi_inout2_RRESP,
        m_axi_inout2_BVALID,
        m_axi_inout2_BREADY,
        m_axi_inout2_BRESP,
        m_axi_inout2_BID,
        m_axi_inout2_BUSER,
        x
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
output  [255:0] q_stream_din;
input  [1:0] q_stream_num_data_valid;
input  [1:0] q_stream_fifo_cap;
input   q_stream_full_n;
output   q_stream_write;
output   m_axi_inout2_AWVALID;
input   m_axi_inout2_AWREADY;
output  [63:0] m_axi_inout2_AWADDR;
output  [0:0] m_axi_inout2_AWID;
output  [31:0] m_axi_inout2_AWLEN;
output  [2:0] m_axi_inout2_AWSIZE;
output  [1:0] m_axi_inout2_AWBURST;
output  [1:0] m_axi_inout2_AWLOCK;
output  [3:0] m_axi_inout2_AWCACHE;
output  [2:0] m_axi_inout2_AWPROT;
output  [3:0] m_axi_inout2_AWQOS;
output  [3:0] m_axi_inout2_AWREGION;
output  [0:0] m_axi_inout2_AWUSER;
output   m_axi_inout2_WVALID;
input   m_axi_inout2_WREADY;
output  [255:0] m_axi_inout2_WDATA;
output  [31:0] m_axi_inout2_WSTRB;
output   m_axi_inout2_WLAST;
output  [0:0] m_axi_inout2_WID;
output  [0:0] m_axi_inout2_WUSER;
output   m_axi_inout2_ARVALID;
input   m_axi_inout2_ARREADY;
output  [63:0] m_axi_inout2_ARADDR;
output  [0:0] m_axi_inout2_ARID;
output  [31:0] m_axi_inout2_ARLEN;
output  [2:0] m_axi_inout2_ARSIZE;
output  [1:0] m_axi_inout2_ARBURST;
output  [1:0] m_axi_inout2_ARLOCK;
output  [3:0] m_axi_inout2_ARCACHE;
output  [2:0] m_axi_inout2_ARPROT;
output  [3:0] m_axi_inout2_ARQOS;
output  [3:0] m_axi_inout2_ARREGION;
output  [0:0] m_axi_inout2_ARUSER;
input   m_axi_inout2_RVALID;
output   m_axi_inout2_RREADY;
input  [255:0] m_axi_inout2_RDATA;
input   m_axi_inout2_RLAST;
input  [0:0] m_axi_inout2_RID;
input  [8:0] m_axi_inout2_RFIFONUM;
input  [0:0] m_axi_inout2_RUSER;
input  [1:0] m_axi_inout2_RRESP;
input   m_axi_inout2_BVALID;
output   m_axi_inout2_BREADY;
input  [1:0] m_axi_inout2_BRESP;
input  [0:0] m_axi_inout2_BID;
input  [0:0] m_axi_inout2_BUSER;
input  [63:0] x;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg q_stream_write;
reg m_axi_inout2_ARVALID;
reg[63:0] m_axi_inout2_ARADDR;
reg[0:0] m_axi_inout2_ARID;
reg[31:0] m_axi_inout2_ARLEN;
reg[2:0] m_axi_inout2_ARSIZE;
reg[1:0] m_axi_inout2_ARBURST;
reg[1:0] m_axi_inout2_ARLOCK;
reg[3:0] m_axi_inout2_ARCACHE;
reg[2:0] m_axi_inout2_ARPROT;
reg[3:0] m_axi_inout2_ARQOS;
reg[3:0] m_axi_inout2_ARREGION;
reg[0:0] m_axi_inout2_ARUSER;
reg m_axi_inout2_RREADY;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    inout2_blk_n_AR;
wire  signed [58:0] trunc_ln_fu_64_p4;
reg   [58:0] trunc_ln_reg_85;
wire    grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_ap_start;
wire    grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_ap_done;
wire    grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_ap_idle;
wire    grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_ap_ready;
wire    grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_AWVALID;
wire   [63:0] grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_AWADDR;
wire   [0:0] grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_AWID;
wire   [31:0] grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_AWLEN;
wire   [2:0] grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_AWSIZE;
wire   [1:0] grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_AWBURST;
wire   [1:0] grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_AWLOCK;
wire   [3:0] grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_AWCACHE;
wire   [2:0] grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_AWPROT;
wire   [3:0] grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_AWQOS;
wire   [3:0] grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_AWREGION;
wire   [0:0] grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_AWUSER;
wire    grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_WVALID;
wire   [255:0] grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_WDATA;
wire   [31:0] grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_WSTRB;
wire    grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_WLAST;
wire   [0:0] grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_WID;
wire   [0:0] grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_WUSER;
wire    grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_ARVALID;
wire   [63:0] grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_ARADDR;
wire   [0:0] grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_ARID;
wire   [31:0] grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_ARLEN;
wire   [2:0] grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_ARSIZE;
wire   [1:0] grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_ARBURST;
wire   [1:0] grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_ARLOCK;
wire   [3:0] grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_ARCACHE;
wire   [2:0] grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_ARPROT;
wire   [3:0] grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_ARQOS;
wire   [3:0] grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_ARREGION;
wire   [0:0] grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_ARUSER;
wire    grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_RREADY;
wire    grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_BREADY;
wire   [255:0] grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_q_stream_din;
wire    grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_q_stream_write;
reg    grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_ap_start_reg;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state9;
wire  signed [63:0] sext_ln18_fu_74_p1;
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
#0 grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_ap_start_reg = 1'b0;
end

ViT_act_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_ap_start),
    .ap_done(grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_ap_done),
    .ap_idle(grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_ap_idle),
    .ap_ready(grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_ap_ready),
    .m_axi_inout2_AWVALID(grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_AWVALID),
    .m_axi_inout2_AWREADY(1'b0),
    .m_axi_inout2_AWADDR(grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_AWADDR),
    .m_axi_inout2_AWID(grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_AWID),
    .m_axi_inout2_AWLEN(grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_AWLEN),
    .m_axi_inout2_AWSIZE(grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_AWSIZE),
    .m_axi_inout2_AWBURST(grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_AWBURST),
    .m_axi_inout2_AWLOCK(grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_AWLOCK),
    .m_axi_inout2_AWCACHE(grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_AWCACHE),
    .m_axi_inout2_AWPROT(grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_AWPROT),
    .m_axi_inout2_AWQOS(grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_AWQOS),
    .m_axi_inout2_AWREGION(grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_AWREGION),
    .m_axi_inout2_AWUSER(grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_AWUSER),
    .m_axi_inout2_WVALID(grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_WVALID),
    .m_axi_inout2_WREADY(1'b0),
    .m_axi_inout2_WDATA(grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_WDATA),
    .m_axi_inout2_WSTRB(grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_WSTRB),
    .m_axi_inout2_WLAST(grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_WLAST),
    .m_axi_inout2_WID(grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_WID),
    .m_axi_inout2_WUSER(grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_WUSER),
    .m_axi_inout2_ARVALID(grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_ARVALID),
    .m_axi_inout2_ARREADY(m_axi_inout2_ARREADY),
    .m_axi_inout2_ARADDR(grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_ARADDR),
    .m_axi_inout2_ARID(grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_ARID),
    .m_axi_inout2_ARLEN(grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_ARLEN),
    .m_axi_inout2_ARSIZE(grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_ARSIZE),
    .m_axi_inout2_ARBURST(grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_ARBURST),
    .m_axi_inout2_ARLOCK(grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_ARLOCK),
    .m_axi_inout2_ARCACHE(grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_ARCACHE),
    .m_axi_inout2_ARPROT(grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_ARPROT),
    .m_axi_inout2_ARQOS(grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_ARQOS),
    .m_axi_inout2_ARREGION(grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_ARREGION),
    .m_axi_inout2_ARUSER(grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_ARUSER),
    .m_axi_inout2_RVALID(m_axi_inout2_RVALID),
    .m_axi_inout2_RREADY(grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_RREADY),
    .m_axi_inout2_RDATA(m_axi_inout2_RDATA),
    .m_axi_inout2_RLAST(m_axi_inout2_RLAST),
    .m_axi_inout2_RID(m_axi_inout2_RID),
    .m_axi_inout2_RFIFONUM(m_axi_inout2_RFIFONUM),
    .m_axi_inout2_RUSER(m_axi_inout2_RUSER),
    .m_axi_inout2_RRESP(m_axi_inout2_RRESP),
    .m_axi_inout2_BVALID(1'b0),
    .m_axi_inout2_BREADY(grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_BREADY),
    .m_axi_inout2_BRESP(2'd0),
    .m_axi_inout2_BID(1'd0),
    .m_axi_inout2_BUSER(1'd0),
    .q_stream_din(grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_q_stream_din),
    .q_stream_num_data_valid(2'd0),
    .q_stream_fifo_cap(2'd0),
    .q_stream_full_n(q_stream_full_n),
    .q_stream_write(grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_q_stream_write),
    .sext_ln18(trunc_ln_reg_85)
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
        end else if (((1'b1 == ap_CS_fsm_state9) & (grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_ap_done == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state8)) begin
            grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_ap_start_reg <= 1'b1;
        end else if ((grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_ap_ready == 1'b1)) begin
            grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        trunc_ln_reg_85 <= {{x[63:5]}};
    end
end

always @ (*) begin
    if (((m_axi_inout2_ARREADY == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0))) begin
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
    if ((grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_ap_done == 1'b0)) begin
        ap_ST_fsm_state9_blk = 1'b1;
    end else begin
        ap_ST_fsm_state9_blk = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) & (grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state9) & (grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        inout2_blk_n_AR = m_axi_inout2_ARREADY;
    end else begin
        inout2_blk_n_AR = 1'b1;
    end
end

always @ (*) begin
    if ((~((m_axi_inout2_ARREADY == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        m_axi_inout2_ARADDR = sext_ln18_fu_74_p1;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        m_axi_inout2_ARADDR = grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_ARADDR;
    end else begin
        m_axi_inout2_ARADDR = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        m_axi_inout2_ARBURST = grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_ARBURST;
    end else begin
        m_axi_inout2_ARBURST = 2'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        m_axi_inout2_ARCACHE = grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_ARCACHE;
    end else begin
        m_axi_inout2_ARCACHE = 4'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        m_axi_inout2_ARID = grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_ARID;
    end else begin
        m_axi_inout2_ARID = 1'd0;
    end
end

always @ (*) begin
    if ((~((m_axi_inout2_ARREADY == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        m_axi_inout2_ARLEN = 32'd3096;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        m_axi_inout2_ARLEN = grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_ARLEN;
    end else begin
        m_axi_inout2_ARLEN = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        m_axi_inout2_ARLOCK = grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_ARLOCK;
    end else begin
        m_axi_inout2_ARLOCK = 2'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        m_axi_inout2_ARPROT = grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_ARPROT;
    end else begin
        m_axi_inout2_ARPROT = 3'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        m_axi_inout2_ARQOS = grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_ARQOS;
    end else begin
        m_axi_inout2_ARQOS = 4'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        m_axi_inout2_ARREGION = grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_ARREGION;
    end else begin
        m_axi_inout2_ARREGION = 4'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        m_axi_inout2_ARSIZE = grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_ARSIZE;
    end else begin
        m_axi_inout2_ARSIZE = 3'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        m_axi_inout2_ARUSER = grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_ARUSER;
    end else begin
        m_axi_inout2_ARUSER = 1'd0;
    end
end

always @ (*) begin
    if ((~((m_axi_inout2_ARREADY == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        m_axi_inout2_ARVALID = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        m_axi_inout2_ARVALID = grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_ARVALID;
    end else begin
        m_axi_inout2_ARVALID = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        m_axi_inout2_RREADY = grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_m_axi_inout2_RREADY;
    end else begin
        m_axi_inout2_RREADY = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        q_stream_write = grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_q_stream_write;
    end else begin
        q_stream_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((m_axi_inout2_ARREADY == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
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
            if (((1'b1 == ap_CS_fsm_state9) & (grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_ap_done == 1'b1))) begin
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

assign grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_ap_start = grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_ap_start_reg;

assign m_axi_inout2_AWADDR = 64'd0;

assign m_axi_inout2_AWBURST = 2'd0;

assign m_axi_inout2_AWCACHE = 4'd0;

assign m_axi_inout2_AWID = 1'd0;

assign m_axi_inout2_AWLEN = 32'd0;

assign m_axi_inout2_AWLOCK = 2'd0;

assign m_axi_inout2_AWPROT = 3'd0;

assign m_axi_inout2_AWQOS = 4'd0;

assign m_axi_inout2_AWREGION = 4'd0;

assign m_axi_inout2_AWSIZE = 3'd0;

assign m_axi_inout2_AWUSER = 1'd0;

assign m_axi_inout2_AWVALID = 1'b0;

assign m_axi_inout2_BREADY = 1'b0;

assign m_axi_inout2_WDATA = 256'd0;

assign m_axi_inout2_WID = 1'd0;

assign m_axi_inout2_WLAST = 1'b0;

assign m_axi_inout2_WSTRB = 32'd0;

assign m_axi_inout2_WUSER = 1'd0;

assign m_axi_inout2_WVALID = 1'b0;

assign q_stream_din = grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55_q_stream_din;

assign sext_ln18_fu_74_p1 = trunc_ln_fu_64_p4;

assign trunc_ln_fu_64_p4 = {{x[63:5]}};

endmodule //ViT_act_read_x
