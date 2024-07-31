// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module ViT_act_recip_fixed_32_10_s (
        ap_clk,
        ap_rst,
        x,
        ap_return,
        ap_ce
);


input   ap_clk;
input   ap_rst;
input  [31:0] x;
output  [31:0] ap_return;
input   ap_ce;

reg[31:0] ap_return;

wire   [0:0] icmp_ln1653_fu_31_p2;
reg   [0:0] icmp_ln1653_reg_52;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
wire    ap_block_state6_pp0_stage0_iter5;
wire    ap_block_state7_pp0_stage0_iter6;
wire    ap_block_state8_pp0_stage0_iter7;
wire    ap_block_state9_pp0_stage0_iter8;
wire    ap_block_state10_pp0_stage0_iter9;
wire    ap_block_state11_pp0_stage0_iter10;
wire    ap_block_state12_pp0_stage0_iter11;
wire    ap_block_state13_pp0_stage0_iter12;
wire    ap_block_state14_pp0_stage0_iter13;
wire    ap_block_state15_pp0_stage0_iter14;
wire    ap_block_state16_pp0_stage0_iter15;
wire    ap_block_state17_pp0_stage0_iter16;
wire    ap_block_state18_pp0_stage0_iter17;
wire    ap_block_state19_pp0_stage0_iter18;
wire    ap_block_state20_pp0_stage0_iter19;
wire    ap_block_state21_pp0_stage0_iter20;
wire    ap_block_state22_pp0_stage0_iter21;
wire    ap_block_state23_pp0_stage0_iter22;
wire    ap_block_state24_pp0_stage0_iter23;
wire    ap_block_state25_pp0_stage0_iter24;
wire    ap_block_state26_pp0_stage0_iter25;
wire    ap_block_state27_pp0_stage0_iter26;
wire    ap_block_state28_pp0_stage0_iter27;
wire    ap_block_state29_pp0_stage0_iter28;
wire    ap_block_state30_pp0_stage0_iter29;
wire    ap_block_state31_pp0_stage0_iter30;
wire    ap_block_state32_pp0_stage0_iter31;
wire    ap_block_state33_pp0_stage0_iter32;
wire    ap_block_state34_pp0_stage0_iter33;
wire    ap_block_state35_pp0_stage0_iter34;
wire    ap_block_state36_pp0_stage0_iter35;
wire    ap_block_state37_pp0_stage0_iter36;
wire    ap_block_state38_pp0_stage0_iter37;
wire    ap_block_state39_pp0_stage0_iter38;
wire    ap_block_state40_pp0_stage0_iter39;
wire    ap_block_state41_pp0_stage0_iter40;
wire    ap_block_state42_pp0_stage0_iter41;
wire    ap_block_state43_pp0_stage0_iter42;
wire    ap_block_state44_pp0_stage0_iter43;
wire    ap_block_state45_pp0_stage0_iter44;
wire    ap_block_state46_pp0_stage0_iter45;
wire    ap_block_state47_pp0_stage0_iter46;
wire    ap_block_state48_pp0_stage0_iter47;
wire    ap_block_state49_pp0_stage0_iter48;
wire    ap_block_state50_pp0_stage0_iter49;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln1653_reg_52_pp0_iter1_reg;
reg   [0:0] icmp_ln1653_reg_52_pp0_iter2_reg;
reg   [0:0] icmp_ln1653_reg_52_pp0_iter3_reg;
reg   [0:0] icmp_ln1653_reg_52_pp0_iter4_reg;
reg   [0:0] icmp_ln1653_reg_52_pp0_iter5_reg;
reg   [0:0] icmp_ln1653_reg_52_pp0_iter6_reg;
reg   [0:0] icmp_ln1653_reg_52_pp0_iter7_reg;
reg   [0:0] icmp_ln1653_reg_52_pp0_iter8_reg;
reg   [0:0] icmp_ln1653_reg_52_pp0_iter9_reg;
reg   [0:0] icmp_ln1653_reg_52_pp0_iter10_reg;
reg   [0:0] icmp_ln1653_reg_52_pp0_iter11_reg;
reg   [0:0] icmp_ln1653_reg_52_pp0_iter12_reg;
reg   [0:0] icmp_ln1653_reg_52_pp0_iter13_reg;
reg   [0:0] icmp_ln1653_reg_52_pp0_iter14_reg;
reg   [0:0] icmp_ln1653_reg_52_pp0_iter15_reg;
reg   [0:0] icmp_ln1653_reg_52_pp0_iter16_reg;
reg   [0:0] icmp_ln1653_reg_52_pp0_iter17_reg;
reg   [0:0] icmp_ln1653_reg_52_pp0_iter18_reg;
reg   [0:0] icmp_ln1653_reg_52_pp0_iter19_reg;
reg   [0:0] icmp_ln1653_reg_52_pp0_iter20_reg;
reg   [0:0] icmp_ln1653_reg_52_pp0_iter21_reg;
reg   [0:0] icmp_ln1653_reg_52_pp0_iter22_reg;
reg   [0:0] icmp_ln1653_reg_52_pp0_iter23_reg;
reg   [0:0] icmp_ln1653_reg_52_pp0_iter24_reg;
reg   [0:0] icmp_ln1653_reg_52_pp0_iter25_reg;
reg   [0:0] icmp_ln1653_reg_52_pp0_iter26_reg;
reg   [0:0] icmp_ln1653_reg_52_pp0_iter27_reg;
reg   [0:0] icmp_ln1653_reg_52_pp0_iter28_reg;
reg   [0:0] icmp_ln1653_reg_52_pp0_iter29_reg;
reg   [0:0] icmp_ln1653_reg_52_pp0_iter30_reg;
reg   [0:0] icmp_ln1653_reg_52_pp0_iter31_reg;
reg   [0:0] icmp_ln1653_reg_52_pp0_iter32_reg;
reg   [0:0] icmp_ln1653_reg_52_pp0_iter33_reg;
reg   [0:0] icmp_ln1653_reg_52_pp0_iter34_reg;
reg   [0:0] icmp_ln1653_reg_52_pp0_iter35_reg;
reg   [0:0] icmp_ln1653_reg_52_pp0_iter36_reg;
reg   [0:0] icmp_ln1653_reg_52_pp0_iter37_reg;
reg   [0:0] icmp_ln1653_reg_52_pp0_iter38_reg;
reg   [0:0] icmp_ln1653_reg_52_pp0_iter39_reg;
reg   [0:0] icmp_ln1653_reg_52_pp0_iter40_reg;
reg   [0:0] icmp_ln1653_reg_52_pp0_iter41_reg;
reg   [0:0] icmp_ln1653_reg_52_pp0_iter42_reg;
reg   [0:0] icmp_ln1653_reg_52_pp0_iter43_reg;
reg   [0:0] icmp_ln1653_reg_52_pp0_iter44_reg;
reg   [0:0] icmp_ln1653_reg_52_pp0_iter45_reg;
reg   [0:0] icmp_ln1653_reg_52_pp0_iter46_reg;
reg   [0:0] icmp_ln1653_reg_52_pp0_iter47_reg;
reg   [0:0] icmp_ln1653_reg_52_pp0_iter48_reg;
reg   [31:0] ap_phi_mux_agg_result_0_phi_fu_24_p4;
wire   [31:0] trunc_ln813_fu_47_p1;
reg   [31:0] ap_phi_reg_pp0_iter49_agg_result_0_reg_20;
wire   [31:0] ap_phi_reg_pp0_iter0_agg_result_0_reg_20;
reg   [31:0] ap_phi_reg_pp0_iter1_agg_result_0_reg_20;
reg   [31:0] ap_phi_reg_pp0_iter2_agg_result_0_reg_20;
reg   [31:0] ap_phi_reg_pp0_iter3_agg_result_0_reg_20;
reg   [31:0] ap_phi_reg_pp0_iter4_agg_result_0_reg_20;
reg   [31:0] ap_phi_reg_pp0_iter5_agg_result_0_reg_20;
reg   [31:0] ap_phi_reg_pp0_iter6_agg_result_0_reg_20;
reg   [31:0] ap_phi_reg_pp0_iter7_agg_result_0_reg_20;
reg   [31:0] ap_phi_reg_pp0_iter8_agg_result_0_reg_20;
reg   [31:0] ap_phi_reg_pp0_iter9_agg_result_0_reg_20;
reg   [31:0] ap_phi_reg_pp0_iter10_agg_result_0_reg_20;
reg   [31:0] ap_phi_reg_pp0_iter11_agg_result_0_reg_20;
reg   [31:0] ap_phi_reg_pp0_iter12_agg_result_0_reg_20;
reg   [31:0] ap_phi_reg_pp0_iter13_agg_result_0_reg_20;
reg   [31:0] ap_phi_reg_pp0_iter14_agg_result_0_reg_20;
reg   [31:0] ap_phi_reg_pp0_iter15_agg_result_0_reg_20;
reg   [31:0] ap_phi_reg_pp0_iter16_agg_result_0_reg_20;
reg   [31:0] ap_phi_reg_pp0_iter17_agg_result_0_reg_20;
reg   [31:0] ap_phi_reg_pp0_iter18_agg_result_0_reg_20;
reg   [31:0] ap_phi_reg_pp0_iter19_agg_result_0_reg_20;
reg   [31:0] ap_phi_reg_pp0_iter20_agg_result_0_reg_20;
reg   [31:0] ap_phi_reg_pp0_iter21_agg_result_0_reg_20;
reg   [31:0] ap_phi_reg_pp0_iter22_agg_result_0_reg_20;
reg   [31:0] ap_phi_reg_pp0_iter23_agg_result_0_reg_20;
reg   [31:0] ap_phi_reg_pp0_iter24_agg_result_0_reg_20;
reg   [31:0] ap_phi_reg_pp0_iter25_agg_result_0_reg_20;
reg   [31:0] ap_phi_reg_pp0_iter26_agg_result_0_reg_20;
reg   [31:0] ap_phi_reg_pp0_iter27_agg_result_0_reg_20;
reg   [31:0] ap_phi_reg_pp0_iter28_agg_result_0_reg_20;
reg   [31:0] ap_phi_reg_pp0_iter29_agg_result_0_reg_20;
reg   [31:0] ap_phi_reg_pp0_iter30_agg_result_0_reg_20;
reg   [31:0] ap_phi_reg_pp0_iter31_agg_result_0_reg_20;
reg   [31:0] ap_phi_reg_pp0_iter32_agg_result_0_reg_20;
reg   [31:0] ap_phi_reg_pp0_iter33_agg_result_0_reg_20;
reg   [31:0] ap_phi_reg_pp0_iter34_agg_result_0_reg_20;
reg   [31:0] ap_phi_reg_pp0_iter35_agg_result_0_reg_20;
reg   [31:0] ap_phi_reg_pp0_iter36_agg_result_0_reg_20;
reg   [31:0] ap_phi_reg_pp0_iter37_agg_result_0_reg_20;
reg   [31:0] ap_phi_reg_pp0_iter38_agg_result_0_reg_20;
reg   [31:0] ap_phi_reg_pp0_iter39_agg_result_0_reg_20;
reg   [31:0] ap_phi_reg_pp0_iter40_agg_result_0_reg_20;
reg   [31:0] ap_phi_reg_pp0_iter41_agg_result_0_reg_20;
reg   [31:0] ap_phi_reg_pp0_iter42_agg_result_0_reg_20;
reg   [31:0] ap_phi_reg_pp0_iter43_agg_result_0_reg_20;
reg   [31:0] ap_phi_reg_pp0_iter44_agg_result_0_reg_20;
reg   [31:0] ap_phi_reg_pp0_iter45_agg_result_0_reg_20;
reg   [31:0] ap_phi_reg_pp0_iter46_agg_result_0_reg_20;
reg   [31:0] ap_phi_reg_pp0_iter47_agg_result_0_reg_20;
reg   [31:0] ap_phi_reg_pp0_iter48_agg_result_0_reg_20;
wire  signed [31:0] icmp_ln1653_fu_31_p0;
wire    ap_block_pp0_stage0;
wire   [31:0] grp_fu_41_p2;
reg    grp_fu_41_ce;
reg    ap_ce_reg;
reg  signed [31:0] x_int_reg;
reg   [31:0] ap_return_int_reg;

ViT_act_sdiv_46ns_32s_32_50_0 #(
    .ID( 1 ),
    .NUM_STAGE( 50 ),
    .din0_WIDTH( 46 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
sdiv_46ns_32s_32_50_0_U912(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(46'd17592186044416),
    .din1(x_int_reg),
    .ce(grp_fu_41_ce),
    .dout(grp_fu_41_p2)
);

always @ (posedge ap_clk) begin
    ap_ce_reg <= ap_ce;
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce_reg))) begin
        if ((icmp_ln1653_fu_31_p2 == 1'd1)) begin
            ap_phi_reg_pp0_iter1_agg_result_0_reg_20 <= 32'd0;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_agg_result_0_reg_20 <= ap_phi_reg_pp0_iter0_agg_result_0_reg_20;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce_reg))) begin
        ap_phi_reg_pp0_iter10_agg_result_0_reg_20 <= ap_phi_reg_pp0_iter9_agg_result_0_reg_20;
        ap_phi_reg_pp0_iter11_agg_result_0_reg_20 <= ap_phi_reg_pp0_iter10_agg_result_0_reg_20;
        ap_phi_reg_pp0_iter12_agg_result_0_reg_20 <= ap_phi_reg_pp0_iter11_agg_result_0_reg_20;
        ap_phi_reg_pp0_iter13_agg_result_0_reg_20 <= ap_phi_reg_pp0_iter12_agg_result_0_reg_20;
        ap_phi_reg_pp0_iter14_agg_result_0_reg_20 <= ap_phi_reg_pp0_iter13_agg_result_0_reg_20;
        ap_phi_reg_pp0_iter15_agg_result_0_reg_20 <= ap_phi_reg_pp0_iter14_agg_result_0_reg_20;
        ap_phi_reg_pp0_iter16_agg_result_0_reg_20 <= ap_phi_reg_pp0_iter15_agg_result_0_reg_20;
        ap_phi_reg_pp0_iter17_agg_result_0_reg_20 <= ap_phi_reg_pp0_iter16_agg_result_0_reg_20;
        ap_phi_reg_pp0_iter18_agg_result_0_reg_20 <= ap_phi_reg_pp0_iter17_agg_result_0_reg_20;
        ap_phi_reg_pp0_iter19_agg_result_0_reg_20 <= ap_phi_reg_pp0_iter18_agg_result_0_reg_20;
        ap_phi_reg_pp0_iter20_agg_result_0_reg_20 <= ap_phi_reg_pp0_iter19_agg_result_0_reg_20;
        ap_phi_reg_pp0_iter21_agg_result_0_reg_20 <= ap_phi_reg_pp0_iter20_agg_result_0_reg_20;
        ap_phi_reg_pp0_iter22_agg_result_0_reg_20 <= ap_phi_reg_pp0_iter21_agg_result_0_reg_20;
        ap_phi_reg_pp0_iter23_agg_result_0_reg_20 <= ap_phi_reg_pp0_iter22_agg_result_0_reg_20;
        ap_phi_reg_pp0_iter24_agg_result_0_reg_20 <= ap_phi_reg_pp0_iter23_agg_result_0_reg_20;
        ap_phi_reg_pp0_iter25_agg_result_0_reg_20 <= ap_phi_reg_pp0_iter24_agg_result_0_reg_20;
        ap_phi_reg_pp0_iter26_agg_result_0_reg_20 <= ap_phi_reg_pp0_iter25_agg_result_0_reg_20;
        ap_phi_reg_pp0_iter27_agg_result_0_reg_20 <= ap_phi_reg_pp0_iter26_agg_result_0_reg_20;
        ap_phi_reg_pp0_iter28_agg_result_0_reg_20 <= ap_phi_reg_pp0_iter27_agg_result_0_reg_20;
        ap_phi_reg_pp0_iter29_agg_result_0_reg_20 <= ap_phi_reg_pp0_iter28_agg_result_0_reg_20;
        ap_phi_reg_pp0_iter2_agg_result_0_reg_20 <= ap_phi_reg_pp0_iter1_agg_result_0_reg_20;
        ap_phi_reg_pp0_iter30_agg_result_0_reg_20 <= ap_phi_reg_pp0_iter29_agg_result_0_reg_20;
        ap_phi_reg_pp0_iter31_agg_result_0_reg_20 <= ap_phi_reg_pp0_iter30_agg_result_0_reg_20;
        ap_phi_reg_pp0_iter32_agg_result_0_reg_20 <= ap_phi_reg_pp0_iter31_agg_result_0_reg_20;
        ap_phi_reg_pp0_iter33_agg_result_0_reg_20 <= ap_phi_reg_pp0_iter32_agg_result_0_reg_20;
        ap_phi_reg_pp0_iter34_agg_result_0_reg_20 <= ap_phi_reg_pp0_iter33_agg_result_0_reg_20;
        ap_phi_reg_pp0_iter35_agg_result_0_reg_20 <= ap_phi_reg_pp0_iter34_agg_result_0_reg_20;
        ap_phi_reg_pp0_iter36_agg_result_0_reg_20 <= ap_phi_reg_pp0_iter35_agg_result_0_reg_20;
        ap_phi_reg_pp0_iter37_agg_result_0_reg_20 <= ap_phi_reg_pp0_iter36_agg_result_0_reg_20;
        ap_phi_reg_pp0_iter38_agg_result_0_reg_20 <= ap_phi_reg_pp0_iter37_agg_result_0_reg_20;
        ap_phi_reg_pp0_iter39_agg_result_0_reg_20 <= ap_phi_reg_pp0_iter38_agg_result_0_reg_20;
        ap_phi_reg_pp0_iter3_agg_result_0_reg_20 <= ap_phi_reg_pp0_iter2_agg_result_0_reg_20;
        ap_phi_reg_pp0_iter40_agg_result_0_reg_20 <= ap_phi_reg_pp0_iter39_agg_result_0_reg_20;
        ap_phi_reg_pp0_iter41_agg_result_0_reg_20 <= ap_phi_reg_pp0_iter40_agg_result_0_reg_20;
        ap_phi_reg_pp0_iter42_agg_result_0_reg_20 <= ap_phi_reg_pp0_iter41_agg_result_0_reg_20;
        ap_phi_reg_pp0_iter43_agg_result_0_reg_20 <= ap_phi_reg_pp0_iter42_agg_result_0_reg_20;
        ap_phi_reg_pp0_iter44_agg_result_0_reg_20 <= ap_phi_reg_pp0_iter43_agg_result_0_reg_20;
        ap_phi_reg_pp0_iter45_agg_result_0_reg_20 <= ap_phi_reg_pp0_iter44_agg_result_0_reg_20;
        ap_phi_reg_pp0_iter46_agg_result_0_reg_20 <= ap_phi_reg_pp0_iter45_agg_result_0_reg_20;
        ap_phi_reg_pp0_iter47_agg_result_0_reg_20 <= ap_phi_reg_pp0_iter46_agg_result_0_reg_20;
        ap_phi_reg_pp0_iter48_agg_result_0_reg_20 <= ap_phi_reg_pp0_iter47_agg_result_0_reg_20;
        ap_phi_reg_pp0_iter49_agg_result_0_reg_20 <= ap_phi_reg_pp0_iter48_agg_result_0_reg_20;
        ap_phi_reg_pp0_iter4_agg_result_0_reg_20 <= ap_phi_reg_pp0_iter3_agg_result_0_reg_20;
        ap_phi_reg_pp0_iter5_agg_result_0_reg_20 <= ap_phi_reg_pp0_iter4_agg_result_0_reg_20;
        ap_phi_reg_pp0_iter6_agg_result_0_reg_20 <= ap_phi_reg_pp0_iter5_agg_result_0_reg_20;
        ap_phi_reg_pp0_iter7_agg_result_0_reg_20 <= ap_phi_reg_pp0_iter6_agg_result_0_reg_20;
        ap_phi_reg_pp0_iter8_agg_result_0_reg_20 <= ap_phi_reg_pp0_iter7_agg_result_0_reg_20;
        ap_phi_reg_pp0_iter9_agg_result_0_reg_20 <= ap_phi_reg_pp0_iter8_agg_result_0_reg_20;
        icmp_ln1653_reg_52 <= icmp_ln1653_fu_31_p2;
        icmp_ln1653_reg_52_pp0_iter10_reg <= icmp_ln1653_reg_52_pp0_iter9_reg;
        icmp_ln1653_reg_52_pp0_iter11_reg <= icmp_ln1653_reg_52_pp0_iter10_reg;
        icmp_ln1653_reg_52_pp0_iter12_reg <= icmp_ln1653_reg_52_pp0_iter11_reg;
        icmp_ln1653_reg_52_pp0_iter13_reg <= icmp_ln1653_reg_52_pp0_iter12_reg;
        icmp_ln1653_reg_52_pp0_iter14_reg <= icmp_ln1653_reg_52_pp0_iter13_reg;
        icmp_ln1653_reg_52_pp0_iter15_reg <= icmp_ln1653_reg_52_pp0_iter14_reg;
        icmp_ln1653_reg_52_pp0_iter16_reg <= icmp_ln1653_reg_52_pp0_iter15_reg;
        icmp_ln1653_reg_52_pp0_iter17_reg <= icmp_ln1653_reg_52_pp0_iter16_reg;
        icmp_ln1653_reg_52_pp0_iter18_reg <= icmp_ln1653_reg_52_pp0_iter17_reg;
        icmp_ln1653_reg_52_pp0_iter19_reg <= icmp_ln1653_reg_52_pp0_iter18_reg;
        icmp_ln1653_reg_52_pp0_iter1_reg <= icmp_ln1653_reg_52;
        icmp_ln1653_reg_52_pp0_iter20_reg <= icmp_ln1653_reg_52_pp0_iter19_reg;
        icmp_ln1653_reg_52_pp0_iter21_reg <= icmp_ln1653_reg_52_pp0_iter20_reg;
        icmp_ln1653_reg_52_pp0_iter22_reg <= icmp_ln1653_reg_52_pp0_iter21_reg;
        icmp_ln1653_reg_52_pp0_iter23_reg <= icmp_ln1653_reg_52_pp0_iter22_reg;
        icmp_ln1653_reg_52_pp0_iter24_reg <= icmp_ln1653_reg_52_pp0_iter23_reg;
        icmp_ln1653_reg_52_pp0_iter25_reg <= icmp_ln1653_reg_52_pp0_iter24_reg;
        icmp_ln1653_reg_52_pp0_iter26_reg <= icmp_ln1653_reg_52_pp0_iter25_reg;
        icmp_ln1653_reg_52_pp0_iter27_reg <= icmp_ln1653_reg_52_pp0_iter26_reg;
        icmp_ln1653_reg_52_pp0_iter28_reg <= icmp_ln1653_reg_52_pp0_iter27_reg;
        icmp_ln1653_reg_52_pp0_iter29_reg <= icmp_ln1653_reg_52_pp0_iter28_reg;
        icmp_ln1653_reg_52_pp0_iter2_reg <= icmp_ln1653_reg_52_pp0_iter1_reg;
        icmp_ln1653_reg_52_pp0_iter30_reg <= icmp_ln1653_reg_52_pp0_iter29_reg;
        icmp_ln1653_reg_52_pp0_iter31_reg <= icmp_ln1653_reg_52_pp0_iter30_reg;
        icmp_ln1653_reg_52_pp0_iter32_reg <= icmp_ln1653_reg_52_pp0_iter31_reg;
        icmp_ln1653_reg_52_pp0_iter33_reg <= icmp_ln1653_reg_52_pp0_iter32_reg;
        icmp_ln1653_reg_52_pp0_iter34_reg <= icmp_ln1653_reg_52_pp0_iter33_reg;
        icmp_ln1653_reg_52_pp0_iter35_reg <= icmp_ln1653_reg_52_pp0_iter34_reg;
        icmp_ln1653_reg_52_pp0_iter36_reg <= icmp_ln1653_reg_52_pp0_iter35_reg;
        icmp_ln1653_reg_52_pp0_iter37_reg <= icmp_ln1653_reg_52_pp0_iter36_reg;
        icmp_ln1653_reg_52_pp0_iter38_reg <= icmp_ln1653_reg_52_pp0_iter37_reg;
        icmp_ln1653_reg_52_pp0_iter39_reg <= icmp_ln1653_reg_52_pp0_iter38_reg;
        icmp_ln1653_reg_52_pp0_iter3_reg <= icmp_ln1653_reg_52_pp0_iter2_reg;
        icmp_ln1653_reg_52_pp0_iter40_reg <= icmp_ln1653_reg_52_pp0_iter39_reg;
        icmp_ln1653_reg_52_pp0_iter41_reg <= icmp_ln1653_reg_52_pp0_iter40_reg;
        icmp_ln1653_reg_52_pp0_iter42_reg <= icmp_ln1653_reg_52_pp0_iter41_reg;
        icmp_ln1653_reg_52_pp0_iter43_reg <= icmp_ln1653_reg_52_pp0_iter42_reg;
        icmp_ln1653_reg_52_pp0_iter44_reg <= icmp_ln1653_reg_52_pp0_iter43_reg;
        icmp_ln1653_reg_52_pp0_iter45_reg <= icmp_ln1653_reg_52_pp0_iter44_reg;
        icmp_ln1653_reg_52_pp0_iter46_reg <= icmp_ln1653_reg_52_pp0_iter45_reg;
        icmp_ln1653_reg_52_pp0_iter47_reg <= icmp_ln1653_reg_52_pp0_iter46_reg;
        icmp_ln1653_reg_52_pp0_iter48_reg <= icmp_ln1653_reg_52_pp0_iter47_reg;
        icmp_ln1653_reg_52_pp0_iter4_reg <= icmp_ln1653_reg_52_pp0_iter3_reg;
        icmp_ln1653_reg_52_pp0_iter5_reg <= icmp_ln1653_reg_52_pp0_iter4_reg;
        icmp_ln1653_reg_52_pp0_iter6_reg <= icmp_ln1653_reg_52_pp0_iter5_reg;
        icmp_ln1653_reg_52_pp0_iter7_reg <= icmp_ln1653_reg_52_pp0_iter6_reg;
        icmp_ln1653_reg_52_pp0_iter8_reg <= icmp_ln1653_reg_52_pp0_iter7_reg;
        icmp_ln1653_reg_52_pp0_iter9_reg <= icmp_ln1653_reg_52_pp0_iter8_reg;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_ce_reg)) begin
        ap_return_int_reg <= ap_phi_mux_agg_result_0_phi_fu_24_p4;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_ce)) begin
        x_int_reg <= x;
    end
end

always @ (*) begin
    if ((icmp_ln1653_reg_52_pp0_iter48_reg == 1'd0)) begin
        ap_phi_mux_agg_result_0_phi_fu_24_p4 = trunc_ln813_fu_47_p1;
    end else begin
        ap_phi_mux_agg_result_0_phi_fu_24_p4 = ap_phi_reg_pp0_iter49_agg_result_0_reg_20;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce_reg)) begin
        ap_return = ap_return_int_reg;
    end else if ((1'b1 == ap_ce_reg)) begin
        ap_return = ap_phi_mux_agg_result_0_phi_fu_24_p4;
    end else begin
        ap_return = 'bx;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce_reg))) begin
        grp_fu_41_ce = 1'b1;
    end else begin
        grp_fu_41_ce = 1'b0;
    end
end

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage0_iter9 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter10 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage0_iter11 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter12 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage0_iter13 = ~(1'b1 == 1'b1);

assign ap_block_state15_pp0_stage0_iter14 = ~(1'b1 == 1'b1);

assign ap_block_state16_pp0_stage0_iter15 = ~(1'b1 == 1'b1);

assign ap_block_state17_pp0_stage0_iter16 = ~(1'b1 == 1'b1);

assign ap_block_state18_pp0_stage0_iter17 = ~(1'b1 == 1'b1);

assign ap_block_state19_pp0_stage0_iter18 = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state20_pp0_stage0_iter19 = ~(1'b1 == 1'b1);

assign ap_block_state21_pp0_stage0_iter20 = ~(1'b1 == 1'b1);

assign ap_block_state22_pp0_stage0_iter21 = ~(1'b1 == 1'b1);

assign ap_block_state23_pp0_stage0_iter22 = ~(1'b1 == 1'b1);

assign ap_block_state24_pp0_stage0_iter23 = ~(1'b1 == 1'b1);

assign ap_block_state25_pp0_stage0_iter24 = ~(1'b1 == 1'b1);

assign ap_block_state26_pp0_stage0_iter25 = ~(1'b1 == 1'b1);

assign ap_block_state27_pp0_stage0_iter26 = ~(1'b1 == 1'b1);

assign ap_block_state28_pp0_stage0_iter27 = ~(1'b1 == 1'b1);

assign ap_block_state29_pp0_stage0_iter28 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state30_pp0_stage0_iter29 = ~(1'b1 == 1'b1);

assign ap_block_state31_pp0_stage0_iter30 = ~(1'b1 == 1'b1);

assign ap_block_state32_pp0_stage0_iter31 = ~(1'b1 == 1'b1);

assign ap_block_state33_pp0_stage0_iter32 = ~(1'b1 == 1'b1);

assign ap_block_state34_pp0_stage0_iter33 = ~(1'b1 == 1'b1);

assign ap_block_state35_pp0_stage0_iter34 = ~(1'b1 == 1'b1);

assign ap_block_state36_pp0_stage0_iter35 = ~(1'b1 == 1'b1);

assign ap_block_state37_pp0_stage0_iter36 = ~(1'b1 == 1'b1);

assign ap_block_state38_pp0_stage0_iter37 = ~(1'b1 == 1'b1);

assign ap_block_state39_pp0_stage0_iter38 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state40_pp0_stage0_iter39 = ~(1'b1 == 1'b1);

assign ap_block_state41_pp0_stage0_iter40 = ~(1'b1 == 1'b1);

assign ap_block_state42_pp0_stage0_iter41 = ~(1'b1 == 1'b1);

assign ap_block_state43_pp0_stage0_iter42 = ~(1'b1 == 1'b1);

assign ap_block_state44_pp0_stage0_iter43 = ~(1'b1 == 1'b1);

assign ap_block_state45_pp0_stage0_iter44 = ~(1'b1 == 1'b1);

assign ap_block_state46_pp0_stage0_iter45 = ~(1'b1 == 1'b1);

assign ap_block_state47_pp0_stage0_iter46 = ~(1'b1 == 1'b1);

assign ap_block_state48_pp0_stage0_iter47 = ~(1'b1 == 1'b1);

assign ap_block_state49_pp0_stage0_iter48 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state50_pp0_stage0_iter49 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter6 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter7 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter8 = ~(1'b1 == 1'b1);

assign ap_phi_reg_pp0_iter0_agg_result_0_reg_20 = 'bx;

assign icmp_ln1653_fu_31_p0 = x_int_reg;

assign icmp_ln1653_fu_31_p2 = ((icmp_ln1653_fu_31_p0 == 32'd0) ? 1'b1 : 1'b0);

assign trunc_ln813_fu_47_p1 = grp_fu_41_p2[31:0];

endmodule //ViT_act_recip_fixed_32_10_s
