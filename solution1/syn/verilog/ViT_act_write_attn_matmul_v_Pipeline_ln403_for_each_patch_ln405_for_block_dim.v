// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module ViT_act_write_attn_matmul_v_Pipeline_ln403_for_each_patch_ln405_for_block_dim (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        attn_matmul_v_stream_dout,
        attn_matmul_v_stream_num_data_valid,
        attn_matmul_v_stream_fifo_cap,
        attn_matmul_v_stream_empty_n,
        attn_matmul_v_stream_read,
        m_axi_inout1_AWVALID,
        m_axi_inout1_AWREADY,
        m_axi_inout1_AWADDR,
        m_axi_inout1_AWID,
        m_axi_inout1_AWLEN,
        m_axi_inout1_AWSIZE,
        m_axi_inout1_AWBURST,
        m_axi_inout1_AWLOCK,
        m_axi_inout1_AWCACHE,
        m_axi_inout1_AWPROT,
        m_axi_inout1_AWQOS,
        m_axi_inout1_AWREGION,
        m_axi_inout1_AWUSER,
        m_axi_inout1_WVALID,
        m_axi_inout1_WREADY,
        m_axi_inout1_WDATA,
        m_axi_inout1_WSTRB,
        m_axi_inout1_WLAST,
        m_axi_inout1_WID,
        m_axi_inout1_WUSER,
        m_axi_inout1_ARVALID,
        m_axi_inout1_ARREADY,
        m_axi_inout1_ARADDR,
        m_axi_inout1_ARID,
        m_axi_inout1_ARLEN,
        m_axi_inout1_ARSIZE,
        m_axi_inout1_ARBURST,
        m_axi_inout1_ARLOCK,
        m_axi_inout1_ARCACHE,
        m_axi_inout1_ARPROT,
        m_axi_inout1_ARQOS,
        m_axi_inout1_ARREGION,
        m_axi_inout1_ARUSER,
        m_axi_inout1_RVALID,
        m_axi_inout1_RREADY,
        m_axi_inout1_RDATA,
        m_axi_inout1_RLAST,
        m_axi_inout1_RID,
        m_axi_inout1_RFIFONUM,
        m_axi_inout1_RUSER,
        m_axi_inout1_RRESP,
        m_axi_inout1_BVALID,
        m_axi_inout1_BREADY,
        m_axi_inout1_BRESP,
        m_axi_inout1_BID,
        m_axi_inout1_BUSER,
        sext_ln403
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [255:0] attn_matmul_v_stream_dout;
input  [1:0] attn_matmul_v_stream_num_data_valid;
input  [1:0] attn_matmul_v_stream_fifo_cap;
input   attn_matmul_v_stream_empty_n;
output   attn_matmul_v_stream_read;
output   m_axi_inout1_AWVALID;
input   m_axi_inout1_AWREADY;
output  [63:0] m_axi_inout1_AWADDR;
output  [0:0] m_axi_inout1_AWID;
output  [31:0] m_axi_inout1_AWLEN;
output  [2:0] m_axi_inout1_AWSIZE;
output  [1:0] m_axi_inout1_AWBURST;
output  [1:0] m_axi_inout1_AWLOCK;
output  [3:0] m_axi_inout1_AWCACHE;
output  [2:0] m_axi_inout1_AWPROT;
output  [3:0] m_axi_inout1_AWQOS;
output  [3:0] m_axi_inout1_AWREGION;
output  [0:0] m_axi_inout1_AWUSER;
output   m_axi_inout1_WVALID;
input   m_axi_inout1_WREADY;
output  [255:0] m_axi_inout1_WDATA;
output  [31:0] m_axi_inout1_WSTRB;
output   m_axi_inout1_WLAST;
output  [0:0] m_axi_inout1_WID;
output  [0:0] m_axi_inout1_WUSER;
output   m_axi_inout1_ARVALID;
input   m_axi_inout1_ARREADY;
output  [63:0] m_axi_inout1_ARADDR;
output  [0:0] m_axi_inout1_ARID;
output  [31:0] m_axi_inout1_ARLEN;
output  [2:0] m_axi_inout1_ARSIZE;
output  [1:0] m_axi_inout1_ARBURST;
output  [1:0] m_axi_inout1_ARLOCK;
output  [3:0] m_axi_inout1_ARCACHE;
output  [2:0] m_axi_inout1_ARPROT;
output  [3:0] m_axi_inout1_ARQOS;
output  [3:0] m_axi_inout1_ARREGION;
output  [0:0] m_axi_inout1_ARUSER;
input   m_axi_inout1_RVALID;
output   m_axi_inout1_RREADY;
input  [255:0] m_axi_inout1_RDATA;
input   m_axi_inout1_RLAST;
input  [0:0] m_axi_inout1_RID;
input  [8:0] m_axi_inout1_RFIFONUM;
input  [0:0] m_axi_inout1_RUSER;
input  [1:0] m_axi_inout1_RRESP;
input   m_axi_inout1_BVALID;
output   m_axi_inout1_BREADY;
input  [1:0] m_axi_inout1_BRESP;
input  [0:0] m_axi_inout1_BID;
input  [0:0] m_axi_inout1_BUSER;
input  [58:0] sext_ln403;

reg ap_idle;
reg attn_matmul_v_stream_read;
reg m_axi_inout1_WVALID;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
reg   [0:0] icmp_ln403_reg_120;
reg    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln403_fu_86_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    inout1_blk_n_W;
wire    ap_block_pp0_stage0;
reg    attn_matmul_v_stream_blk_n;
reg    ap_block_pp0_stage0_11001;
reg   [255:0] attn_matmul_v_stream_read_reg_129;
reg    ap_condition_exit_pp0_iter1_stage0;
reg    ap_block_pp0_stage0_01001;
reg   [11:0] indvar_flatten_fu_50;
wire   [11:0] add_ln403_fu_92_p2;
wire    ap_loop_init;
reg   [11:0] ap_sig_allocacmp_indvar_flatten_load;
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
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln403_fu_86_p2 == 1'd0))) begin
            indvar_flatten_fu_50 <= add_ln403_fu_92_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_50 <= 12'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        icmp_ln403_reg_120 <= icmp_ln403_fu_86_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln403_reg_120 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        attn_matmul_v_stream_read_reg_129 <= attn_matmul_v_stream_dout;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln403_fu_86_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln403_reg_120 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_50;
    end
end

always @ (*) begin
    if (((icmp_ln403_reg_120 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        attn_matmul_v_stream_blk_n = attn_matmul_v_stream_empty_n;
    end else begin
        attn_matmul_v_stream_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln403_reg_120 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        attn_matmul_v_stream_read = 1'b1;
    end else begin
        attn_matmul_v_stream_read = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        inout1_blk_n_W = m_axi_inout1_WREADY;
    end else begin
        inout1_blk_n_W = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        m_axi_inout1_WVALID = 1'b1;
    end else begin
        m_axi_inout1_WVALID = 1'b0;
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

assign add_ln403_fu_92_p2 = (ap_sig_allocacmp_indvar_flatten_load + 12'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((icmp_ln403_reg_120 == 1'd0) & (attn_matmul_v_stream_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((icmp_ln403_reg_120 == 1'd0) & (attn_matmul_v_stream_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((m_axi_inout1_WREADY == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((icmp_ln403_reg_120 == 1'd0) & (attn_matmul_v_stream_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((m_axi_inout1_WREADY == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)));
end

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = ((icmp_ln403_reg_120 == 1'd0) & (attn_matmul_v_stream_empty_n == 1'b0));
end

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign icmp_ln403_fu_86_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 12'd3096) ? 1'b1 : 1'b0);

assign m_axi_inout1_ARADDR = 64'd0;

assign m_axi_inout1_ARBURST = 2'd0;

assign m_axi_inout1_ARCACHE = 4'd0;

assign m_axi_inout1_ARID = 1'd0;

assign m_axi_inout1_ARLEN = 32'd0;

assign m_axi_inout1_ARLOCK = 2'd0;

assign m_axi_inout1_ARPROT = 3'd0;

assign m_axi_inout1_ARQOS = 4'd0;

assign m_axi_inout1_ARREGION = 4'd0;

assign m_axi_inout1_ARSIZE = 3'd0;

assign m_axi_inout1_ARUSER = 1'd0;

assign m_axi_inout1_ARVALID = 1'b0;

assign m_axi_inout1_AWADDR = 64'd0;

assign m_axi_inout1_AWBURST = 2'd0;

assign m_axi_inout1_AWCACHE = 4'd0;

assign m_axi_inout1_AWID = 1'd0;

assign m_axi_inout1_AWLEN = 32'd0;

assign m_axi_inout1_AWLOCK = 2'd0;

assign m_axi_inout1_AWPROT = 3'd0;

assign m_axi_inout1_AWQOS = 4'd0;

assign m_axi_inout1_AWREGION = 4'd0;

assign m_axi_inout1_AWSIZE = 3'd0;

assign m_axi_inout1_AWUSER = 1'd0;

assign m_axi_inout1_AWVALID = 1'b0;

assign m_axi_inout1_BREADY = 1'b0;

assign m_axi_inout1_RREADY = 1'b0;

assign m_axi_inout1_WDATA = attn_matmul_v_stream_read_reg_129;

assign m_axi_inout1_WID = 1'd0;

assign m_axi_inout1_WLAST = 1'b0;

assign m_axi_inout1_WSTRB = 32'd4294967295;

assign m_axi_inout1_WUSER = 1'd0;

endmodule //ViT_act_write_attn_matmul_v_Pipeline_ln403_for_each_patch_ln405_for_block_dim
