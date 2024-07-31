// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module ViT_act_compute_patch_embed_Pipeline_ln184_for_block_dim (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        m_axi_weights_AWVALID,
        m_axi_weights_AWREADY,
        m_axi_weights_AWADDR,
        m_axi_weights_AWID,
        m_axi_weights_AWLEN,
        m_axi_weights_AWSIZE,
        m_axi_weights_AWBURST,
        m_axi_weights_AWLOCK,
        m_axi_weights_AWCACHE,
        m_axi_weights_AWPROT,
        m_axi_weights_AWQOS,
        m_axi_weights_AWREGION,
        m_axi_weights_AWUSER,
        m_axi_weights_WVALID,
        m_axi_weights_WREADY,
        m_axi_weights_WDATA,
        m_axi_weights_WSTRB,
        m_axi_weights_WLAST,
        m_axi_weights_WID,
        m_axi_weights_WUSER,
        m_axi_weights_ARVALID,
        m_axi_weights_ARREADY,
        m_axi_weights_ARADDR,
        m_axi_weights_ARID,
        m_axi_weights_ARLEN,
        m_axi_weights_ARSIZE,
        m_axi_weights_ARBURST,
        m_axi_weights_ARLOCK,
        m_axi_weights_ARCACHE,
        m_axi_weights_ARPROT,
        m_axi_weights_ARQOS,
        m_axi_weights_ARREGION,
        m_axi_weights_ARUSER,
        m_axi_weights_RVALID,
        m_axi_weights_RREADY,
        m_axi_weights_RDATA,
        m_axi_weights_RLAST,
        m_axi_weights_RID,
        m_axi_weights_RFIFONUM,
        m_axi_weights_RUSER,
        m_axi_weights_RRESP,
        m_axi_weights_BVALID,
        m_axi_weights_BREADY,
        m_axi_weights_BRESP,
        m_axi_weights_BID,
        m_axi_weights_BUSER,
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
        sext_ln184_1,
        sext_ln184
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output   m_axi_weights_AWVALID;
input   m_axi_weights_AWREADY;
output  [63:0] m_axi_weights_AWADDR;
output  [0:0] m_axi_weights_AWID;
output  [31:0] m_axi_weights_AWLEN;
output  [2:0] m_axi_weights_AWSIZE;
output  [1:0] m_axi_weights_AWBURST;
output  [1:0] m_axi_weights_AWLOCK;
output  [3:0] m_axi_weights_AWCACHE;
output  [2:0] m_axi_weights_AWPROT;
output  [3:0] m_axi_weights_AWQOS;
output  [3:0] m_axi_weights_AWREGION;
output  [0:0] m_axi_weights_AWUSER;
output   m_axi_weights_WVALID;
input   m_axi_weights_WREADY;
output  [255:0] m_axi_weights_WDATA;
output  [31:0] m_axi_weights_WSTRB;
output   m_axi_weights_WLAST;
output  [0:0] m_axi_weights_WID;
output  [0:0] m_axi_weights_WUSER;
output   m_axi_weights_ARVALID;
input   m_axi_weights_ARREADY;
output  [63:0] m_axi_weights_ARADDR;
output  [0:0] m_axi_weights_ARID;
output  [31:0] m_axi_weights_ARLEN;
output  [2:0] m_axi_weights_ARSIZE;
output  [1:0] m_axi_weights_ARBURST;
output  [1:0] m_axi_weights_ARLOCK;
output  [3:0] m_axi_weights_ARCACHE;
output  [2:0] m_axi_weights_ARPROT;
output  [3:0] m_axi_weights_ARQOS;
output  [3:0] m_axi_weights_ARREGION;
output  [0:0] m_axi_weights_ARUSER;
input   m_axi_weights_RVALID;
output   m_axi_weights_RREADY;
input  [255:0] m_axi_weights_RDATA;
input   m_axi_weights_RLAST;
input  [0:0] m_axi_weights_RID;
input  [8:0] m_axi_weights_RFIFONUM;
input  [0:0] m_axi_weights_RUSER;
input  [1:0] m_axi_weights_RRESP;
input   m_axi_weights_BVALID;
output   m_axi_weights_BREADY;
input  [1:0] m_axi_weights_BRESP;
input  [0:0] m_axi_weights_BID;
input  [0:0] m_axi_weights_BUSER;
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
input  [58:0] sext_ln184_1;
input  [58:0] sext_ln184;

reg ap_idle;
reg m_axi_weights_RREADY;
reg m_axi_inout2_WVALID;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
reg   [0:0] icmp_ln184_reg_140;
reg    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln184_fu_95_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    inout2_blk_n_W;
wire    ap_block_pp0_stage0;
reg    weights_blk_n_R;
reg    ap_block_pp0_stage0_11001;
reg   [255:0] weights_addr_read_reg_149;
reg    ap_condition_exit_pp0_iter1_stage0;
reg    ap_block_pp0_stage0_01001;
reg   [4:0] dim_block_fu_50;
wire   [4:0] add_ln184_fu_101_p2;
wire    ap_loop_init;
reg   [4:0] ap_sig_allocacmp_dim_block_3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
end

ViT_act_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln184_fu_95_p2 == 1'd0))) begin
            dim_block_fu_50 <= add_ln184_fu_101_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            dim_block_fu_50 <= 5'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        icmp_ln184_reg_140 <= icmp_ln184_fu_95_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln184_reg_140 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        weights_addr_read_reg_149 <= m_axi_weights_RDATA;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln184_fu_95_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln184_reg_140 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_dim_block_3 = 5'd0;
    end else begin
        ap_sig_allocacmp_dim_block_3 = dim_block_fu_50;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        inout2_blk_n_W = m_axi_inout2_WREADY;
    end else begin
        inout2_blk_n_W = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        m_axi_inout2_WVALID = 1'b1;
    end else begin
        m_axi_inout2_WVALID = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln184_reg_140 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        m_axi_weights_RREADY = 1'b1;
    end else begin
        m_axi_weights_RREADY = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln184_reg_140 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        weights_blk_n_R = m_axi_weights_RVALID;
    end else begin
        weights_blk_n_R = 1'b1;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln184_fu_101_p2 = (ap_sig_allocacmp_dim_block_3 + 5'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((icmp_ln184_reg_140 == 1'd0) & (m_axi_weights_RVALID == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((icmp_ln184_reg_140 == 1'd0) & (m_axi_weights_RVALID == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (m_axi_inout2_WREADY == 1'b0)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((icmp_ln184_reg_140 == 1'd0) & (m_axi_weights_RVALID == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (m_axi_inout2_WREADY == 1'b0)));
end

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = ((icmp_ln184_reg_140 == 1'd0) & (m_axi_weights_RVALID == 1'b0));
end

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign icmp_ln184_fu_95_p2 = ((ap_sig_allocacmp_dim_block_3 == 5'd24) ? 1'b1 : 1'b0);

assign m_axi_inout2_ARADDR = 64'd0;

assign m_axi_inout2_ARBURST = 2'd0;

assign m_axi_inout2_ARCACHE = 4'd0;

assign m_axi_inout2_ARID = 1'd0;

assign m_axi_inout2_ARLEN = 32'd0;

assign m_axi_inout2_ARLOCK = 2'd0;

assign m_axi_inout2_ARPROT = 3'd0;

assign m_axi_inout2_ARQOS = 4'd0;

assign m_axi_inout2_ARREGION = 4'd0;

assign m_axi_inout2_ARSIZE = 3'd0;

assign m_axi_inout2_ARUSER = 1'd0;

assign m_axi_inout2_ARVALID = 1'b0;

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

assign m_axi_inout2_RREADY = 1'b0;

assign m_axi_inout2_WDATA = weights_addr_read_reg_149;

assign m_axi_inout2_WID = 1'd0;

assign m_axi_inout2_WLAST = 1'b0;

assign m_axi_inout2_WSTRB = 32'd4294967295;

assign m_axi_inout2_WUSER = 1'd0;

assign m_axi_weights_ARADDR = 64'd0;

assign m_axi_weights_ARBURST = 2'd0;

assign m_axi_weights_ARCACHE = 4'd0;

assign m_axi_weights_ARID = 1'd0;

assign m_axi_weights_ARLEN = 32'd0;

assign m_axi_weights_ARLOCK = 2'd0;

assign m_axi_weights_ARPROT = 3'd0;

assign m_axi_weights_ARQOS = 4'd0;

assign m_axi_weights_ARREGION = 4'd0;

assign m_axi_weights_ARSIZE = 3'd0;

assign m_axi_weights_ARUSER = 1'd0;

assign m_axi_weights_ARVALID = 1'b0;

assign m_axi_weights_AWADDR = 64'd0;

assign m_axi_weights_AWBURST = 2'd0;

assign m_axi_weights_AWCACHE = 4'd0;

assign m_axi_weights_AWID = 1'd0;

assign m_axi_weights_AWLEN = 32'd0;

assign m_axi_weights_AWLOCK = 2'd0;

assign m_axi_weights_AWPROT = 3'd0;

assign m_axi_weights_AWQOS = 4'd0;

assign m_axi_weights_AWREGION = 4'd0;

assign m_axi_weights_AWSIZE = 3'd0;

assign m_axi_weights_AWUSER = 1'd0;

assign m_axi_weights_AWVALID = 1'b0;

assign m_axi_weights_BREADY = 1'b0;

assign m_axi_weights_WDATA = 256'd0;

assign m_axi_weights_WID = 1'd0;

assign m_axi_weights_WLAST = 1'b0;

assign m_axi_weights_WSTRB = 32'd0;

assign m_axi_weights_WUSER = 1'd0;

assign m_axi_weights_WVALID = 1'b0;

endmodule //ViT_act_compute_patch_embed_Pipeline_ln184_for_block_dim
