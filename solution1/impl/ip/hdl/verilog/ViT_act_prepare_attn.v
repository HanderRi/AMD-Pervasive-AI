// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module ViT_act_prepare_attn (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        attn_stream_dout,
        attn_stream_num_data_valid,
        attn_stream_fifo_cap,
        attn_stream_empty_n,
        attn_stream_read,
        qxk_out_stream_din,
        qxk_out_stream_num_data_valid,
        qxk_out_stream_fifo_cap,
        qxk_out_stream_full_n,
        qxk_out_stream_write
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [127:0] attn_stream_dout;
input  [1:0] attn_stream_num_data_valid;
input  [1:0] attn_stream_fifo_cap;
input   attn_stream_empty_n;
output   attn_stream_read;
output  [511:0] qxk_out_stream_din;
input  [1:0] qxk_out_stream_num_data_valid;
input  [1:0] qxk_out_stream_fifo_cap;
input   qxk_out_stream_full_n;
output   qxk_out_stream_write;

reg ap_idle;
reg attn_stream_read;
reg qxk_out_stream_write;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg   [0:0] icmp_ln365_reg_777;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln354_fu_198_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    attn_stream_blk_n;
wire    ap_block_pp0_stage0;
reg    qxk_out_stream_blk_n;
wire   [1:0] trunc_ln364_1_fu_251_p1;
reg   [1:0] trunc_ln364_1_reg_770;
reg    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln365_fu_255_p2;
reg   [2:0] q_patch_offset_fu_88;
wire   [2:0] add_ln358_fu_261_p2;
wire    ap_loop_init;
reg   [2:0] ap_sig_allocacmp_q_patch_offset_load;
reg   [31:0] p_0_0_0_0_0_021_fu_92;
wire   [31:0] select_ln364_15_fu_525_p3;
reg   [31:0] p_0_0_1_0_0_03673_fu_96;
wire   [31:0] select_ln364_14_fu_517_p3;
reg   [31:0] p_0_0_2_0_0_04755_fu_100;
wire   [31:0] select_ln364_13_fu_509_p3;
reg   [31:0] p_0_0_3_0_0_05837_fu_104;
wire   [31:0] select_ln364_12_fu_501_p3;
reg   [31:0] p_0_0_0_0_0_029_fu_108;
wire   [31:0] select_ln364_11_fu_493_p3;
reg   [31:0] p_0_0_1_0_0_036711_fu_112;
wire   [31:0] select_ln364_10_fu_485_p3;
reg   [31:0] p_0_0_2_0_0_047513_fu_116;
wire   [31:0] select_ln364_9_fu_477_p3;
reg   [31:0] p_0_0_3_0_0_058315_fu_120;
wire   [31:0] select_ln364_8_fu_469_p3;
reg   [31:0] p_0_0_0_0_0_0217_fu_124;
wire   [31:0] select_ln364_7_fu_461_p3;
reg   [31:0] p_0_0_1_0_0_036719_fu_128;
wire   [31:0] select_ln364_6_fu_453_p3;
reg   [31:0] p_0_0_2_0_0_047521_fu_132;
wire   [31:0] select_ln364_5_fu_445_p3;
reg   [31:0] p_0_0_3_0_0_058323_fu_136;
wire   [31:0] select_ln364_4_fu_437_p3;
reg   [31:0] p_0_0_0_0_0_0225_fu_140;
wire   [31:0] select_ln364_3_fu_429_p3;
reg   [31:0] p_0_0_1_0_0_036727_fu_144;
wire   [31:0] select_ln364_2_fu_421_p3;
reg   [31:0] p_0_0_2_0_0_047529_fu_148;
wire   [31:0] select_ln364_1_fu_413_p3;
reg   [31:0] p_0_0_3_0_0_058331_fu_152;
wire   [31:0] select_ln364_fu_405_p3;
reg   [10:0] indvar_flatten_fu_156;
wire   [10:0] select_ln356_1_fu_273_p3;
reg   [10:0] ap_sig_allocacmp_indvar_flatten_load;
reg   [14:0] indvar_flatten43_fu_160;
wire   [14:0] add_ln354_fu_204_p2;
reg   [14:0] ap_sig_allocacmp_indvar_flatten43_load;
reg    ap_block_pp0_stage0_01001;
wire   [0:0] icmp_ln356_fu_213_p2;
wire   [0:0] icmp_ln358_fu_225_p2;
wire   [0:0] xor_ln354_fu_219_p2;
wire   [0:0] and_ln354_fu_231_p2;
wire   [0:0] or_ln356_fu_237_p2;
wire   [2:0] select_ln356_fu_243_p3;
wire   [10:0] add_ln356_fu_267_p2;
wire   [0:0] icmp_ln364_1_fu_383_p2;
wire   [0:0] icmp_ln364_2_fu_388_p2;
wire   [0:0] or_ln364_fu_393_p2;
wire   [0:0] icmp_ln364_fu_378_p2;
wire   [0:0] or_ln364_1_fu_399_p2;
wire   [31:0] trunc_ln364_3_fu_358_p4;
wire   [31:0] trunc_ln364_2_fu_348_p4;
wire   [31:0] tmp_fu_368_p4;
wire   [31:0] trunc_ln364_fu_344_p1;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
reg    ap_condition_98;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
end

ViT_act_flow_control_loop_pipe flow_control_loop_pipe_U(
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
    .ap_done_int(ap_done_int),
    .ap_continue(ap_continue)
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_98)) begin
        if ((icmp_ln354_fu_198_p2 == 1'd0)) begin
            indvar_flatten43_fu_160 <= add_ln354_fu_204_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten43_fu_160 <= 15'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_98)) begin
        if ((icmp_ln354_fu_198_p2 == 1'd0)) begin
            indvar_flatten_fu_156 <= select_ln356_1_fu_273_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_156 <= 11'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_98)) begin
        if ((icmp_ln354_fu_198_p2 == 1'd0)) begin
            q_patch_offset_fu_88 <= add_ln358_fu_261_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            q_patch_offset_fu_88 <= 3'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln354_fu_198_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln365_reg_777 <= icmp_ln365_fu_255_p2;
        trunc_ln364_1_reg_770 <= trunc_ln364_1_fu_251_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_0_0_0_0_0_0217_fu_124 <= select_ln364_7_fu_461_p3;
        p_0_0_0_0_0_021_fu_92 <= select_ln364_15_fu_525_p3;
        p_0_0_0_0_0_0225_fu_140 <= select_ln364_3_fu_429_p3;
        p_0_0_0_0_0_029_fu_108 <= select_ln364_11_fu_493_p3;
        p_0_0_1_0_0_036711_fu_112 <= select_ln364_10_fu_485_p3;
        p_0_0_1_0_0_036719_fu_128 <= select_ln364_6_fu_453_p3;
        p_0_0_1_0_0_036727_fu_144 <= select_ln364_2_fu_421_p3;
        p_0_0_1_0_0_03673_fu_96 <= select_ln364_14_fu_517_p3;
        p_0_0_2_0_0_047513_fu_116 <= select_ln364_9_fu_477_p3;
        p_0_0_2_0_0_047521_fu_132 <= select_ln364_5_fu_445_p3;
        p_0_0_2_0_0_047529_fu_148 <= select_ln364_1_fu_413_p3;
        p_0_0_2_0_0_04755_fu_100 <= select_ln364_13_fu_509_p3;
        p_0_0_3_0_0_058315_fu_120 <= select_ln364_8_fu_469_p3;
        p_0_0_3_0_0_058323_fu_136 <= select_ln364_4_fu_437_p3;
        p_0_0_3_0_0_058331_fu_152 <= select_ln364_fu_405_p3;
        p_0_0_3_0_0_05837_fu_104 <= select_ln364_12_fu_501_p3;
    end
end

always @ (*) begin
    if (((icmp_ln354_fu_198_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten43_load = 15'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten43_load = indvar_flatten43_fu_160;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 11'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_156;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_q_patch_offset_load = 3'd0;
    end else begin
        ap_sig_allocacmp_q_patch_offset_load = q_patch_offset_fu_88;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        attn_stream_blk_n = attn_stream_empty_n;
    end else begin
        attn_stream_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        attn_stream_read = 1'b1;
    end else begin
        attn_stream_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln365_reg_777 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        qxk_out_stream_blk_n = qxk_out_stream_full_n;
    end else begin
        qxk_out_stream_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln365_reg_777 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        qxk_out_stream_write = 1'b1;
    end else begin
        qxk_out_stream_write = 1'b0;
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

assign add_ln354_fu_204_p2 = (ap_sig_allocacmp_indvar_flatten43_load + 15'd1);

assign add_ln356_fu_267_p2 = (ap_sig_allocacmp_indvar_flatten_load + 11'd1);

assign add_ln358_fu_261_p2 = (select_ln356_fu_243_p3 + 3'd1);

assign and_ln354_fu_231_p2 = (xor_ln354_fu_219_p2 & icmp_ln358_fu_225_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((attn_stream_empty_n == 1'b0) | ((icmp_ln365_reg_777 == 1'd1) & (qxk_out_stream_full_n == 1'b0)))) | ((ap_done_reg == 1'b1) & (ap_start_int == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((attn_stream_empty_n == 1'b0) | ((icmp_ln365_reg_777 == 1'd1) & (qxk_out_stream_full_n == 1'b0)))) | ((ap_done_reg == 1'b1) & (ap_start_int == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((attn_stream_empty_n == 1'b0) | ((icmp_ln365_reg_777 == 1'd1) & (qxk_out_stream_full_n == 1'b0)))) | ((ap_done_reg == 1'b1) & (ap_start_int == 1'b1)));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_done_reg == 1'b1);
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = ((attn_stream_empty_n == 1'b0) | ((icmp_ln365_reg_777 == 1'd1) & (qxk_out_stream_full_n == 1'b0)));
end

always @ (*) begin
    ap_condition_98 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign icmp_ln354_fu_198_p2 = ((ap_sig_allocacmp_indvar_flatten43_load == 15'd17028) ? 1'b1 : 1'b0);

assign icmp_ln356_fu_213_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 11'd516) ? 1'b1 : 1'b0);

assign icmp_ln358_fu_225_p2 = ((ap_sig_allocacmp_q_patch_offset_load == 3'd4) ? 1'b1 : 1'b0);

assign icmp_ln364_1_fu_383_p2 = ((trunc_ln364_1_reg_770 == 2'd1) ? 1'b1 : 1'b0);

assign icmp_ln364_2_fu_388_p2 = ((trunc_ln364_1_reg_770 == 2'd2) ? 1'b1 : 1'b0);

assign icmp_ln364_fu_378_p2 = ((trunc_ln364_1_reg_770 == 2'd0) ? 1'b1 : 1'b0);

assign icmp_ln365_fu_255_p2 = ((select_ln356_fu_243_p3 == 3'd3) ? 1'b1 : 1'b0);

assign or_ln356_fu_237_p2 = (icmp_ln356_fu_213_p2 | and_ln354_fu_231_p2);

assign or_ln364_1_fu_399_p2 = (or_ln364_fu_393_p2 | icmp_ln364_fu_378_p2);

assign or_ln364_fu_393_p2 = (icmp_ln364_2_fu_388_p2 | icmp_ln364_1_fu_383_p2);

assign qxk_out_stream_din = {{{{{{{{{{{{{{{{select_ln364_fu_405_p3}, {select_ln364_1_fu_413_p3}}, {select_ln364_2_fu_421_p3}}, {select_ln364_3_fu_429_p3}}, {select_ln364_12_fu_501_p3}}, {select_ln364_13_fu_509_p3}}, {select_ln364_14_fu_517_p3}}, {select_ln364_15_fu_525_p3}}, {select_ln364_8_fu_469_p3}}, {select_ln364_9_fu_477_p3}}, {select_ln364_10_fu_485_p3}}, {select_ln364_11_fu_493_p3}}, {select_ln364_4_fu_437_p3}}, {select_ln364_5_fu_445_p3}}, {select_ln364_6_fu_453_p3}}, {select_ln364_7_fu_461_p3}};

assign select_ln356_1_fu_273_p3 = ((icmp_ln356_fu_213_p2[0:0] == 1'b1) ? 11'd1 : add_ln356_fu_267_p2);

assign select_ln356_fu_243_p3 = ((or_ln356_fu_237_p2[0:0] == 1'b1) ? 3'd0 : ap_sig_allocacmp_q_patch_offset_load);

assign select_ln364_10_fu_485_p3 = ((icmp_ln364_1_fu_383_p2[0:0] == 1'b1) ? tmp_fu_368_p4 : p_0_0_1_0_0_036711_fu_112);

assign select_ln364_11_fu_493_p3 = ((icmp_ln364_1_fu_383_p2[0:0] == 1'b1) ? trunc_ln364_fu_344_p1 : p_0_0_0_0_0_029_fu_108);

assign select_ln364_12_fu_501_p3 = ((icmp_ln364_2_fu_388_p2[0:0] == 1'b1) ? trunc_ln364_3_fu_358_p4 : p_0_0_3_0_0_05837_fu_104);

assign select_ln364_13_fu_509_p3 = ((icmp_ln364_2_fu_388_p2[0:0] == 1'b1) ? trunc_ln364_2_fu_348_p4 : p_0_0_2_0_0_04755_fu_100);

assign select_ln364_14_fu_517_p3 = ((icmp_ln364_2_fu_388_p2[0:0] == 1'b1) ? tmp_fu_368_p4 : p_0_0_1_0_0_03673_fu_96);

assign select_ln364_15_fu_525_p3 = ((icmp_ln364_2_fu_388_p2[0:0] == 1'b1) ? trunc_ln364_fu_344_p1 : p_0_0_0_0_0_021_fu_92);

assign select_ln364_1_fu_413_p3 = ((or_ln364_1_fu_399_p2[0:0] == 1'b1) ? p_0_0_2_0_0_047529_fu_148 : trunc_ln364_2_fu_348_p4);

assign select_ln364_2_fu_421_p3 = ((or_ln364_1_fu_399_p2[0:0] == 1'b1) ? p_0_0_1_0_0_036727_fu_144 : tmp_fu_368_p4);

assign select_ln364_3_fu_429_p3 = ((or_ln364_1_fu_399_p2[0:0] == 1'b1) ? p_0_0_0_0_0_0225_fu_140 : trunc_ln364_fu_344_p1);

assign select_ln364_4_fu_437_p3 = ((icmp_ln364_fu_378_p2[0:0] == 1'b1) ? trunc_ln364_3_fu_358_p4 : p_0_0_3_0_0_058323_fu_136);

assign select_ln364_5_fu_445_p3 = ((icmp_ln364_fu_378_p2[0:0] == 1'b1) ? trunc_ln364_2_fu_348_p4 : p_0_0_2_0_0_047521_fu_132);

assign select_ln364_6_fu_453_p3 = ((icmp_ln364_fu_378_p2[0:0] == 1'b1) ? tmp_fu_368_p4 : p_0_0_1_0_0_036719_fu_128);

assign select_ln364_7_fu_461_p3 = ((icmp_ln364_fu_378_p2[0:0] == 1'b1) ? trunc_ln364_fu_344_p1 : p_0_0_0_0_0_0217_fu_124);

assign select_ln364_8_fu_469_p3 = ((icmp_ln364_1_fu_383_p2[0:0] == 1'b1) ? trunc_ln364_3_fu_358_p4 : p_0_0_3_0_0_058315_fu_120);

assign select_ln364_9_fu_477_p3 = ((icmp_ln364_1_fu_383_p2[0:0] == 1'b1) ? trunc_ln364_2_fu_348_p4 : p_0_0_2_0_0_047513_fu_116);

assign select_ln364_fu_405_p3 = ((or_ln364_1_fu_399_p2[0:0] == 1'b1) ? p_0_0_3_0_0_058331_fu_152 : trunc_ln364_3_fu_358_p4);

assign tmp_fu_368_p4 = {{attn_stream_dout[63:32]}};

assign trunc_ln364_1_fu_251_p1 = select_ln356_fu_243_p3[1:0];

assign trunc_ln364_2_fu_348_p4 = {{attn_stream_dout[95:64]}};

assign trunc_ln364_3_fu_358_p4 = {{attn_stream_dout[127:96]}};

assign trunc_ln364_fu_344_p1 = attn_stream_dout[31:0];

assign xor_ln354_fu_219_p2 = (icmp_ln356_fu_213_p2 ^ 1'd1);

endmodule //ViT_act_prepare_attn
