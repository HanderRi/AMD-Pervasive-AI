// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module ViT_act_exp_32_10_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        ap_ce,
        x,
        ap_return
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input   ap_ce;
input  [31:0] x;
output  [30:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
wire    ap_block_state6_pp0_stage0_iter5;
reg    ap_block_pp0_stage0_subdone;
wire   [2:0] f_x_msb_4_h_table_V_address0;
reg    f_x_msb_4_h_table_V_ce0;
wire   [5:0] f_x_msb_4_h_table_V_q0;
wire   [2:0] f_x_msb_4_l_table_V_address0;
reg    f_x_msb_4_l_table_V_ce0;
wire   [6:0] f_x_msb_4_l_table_V_q0;
wire   [3:0] f_x_lsb_table_V_address0;
reg    f_x_lsb_table_V_ce0;
wire   [7:0] f_x_lsb_table_V_q0;
wire   [4:0] f_x_msb_3_table_V_address0;
reg    f_x_msb_3_table_V_ce0;
wire   [31:0] f_x_msb_3_table_V_q0;
wire   [7:0] f_x_msb_2_table_V_address0;
reg    f_x_msb_2_table_V_ce0;
wire   [45:0] f_x_msb_2_table_V_q0;
wire   [7:0] exp_x_msb_1_table_V_address0;
reg    exp_x_msb_1_table_V_ce0;
wire   [49:0] exp_x_msb_1_table_V_q0;
wire   [0:0] p_Result_s_fu_282_p3;
reg   [0:0] p_Result_s_reg_974;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] p_Result_s_reg_974_pp0_iter1_reg;
reg   [0:0] p_Result_s_reg_974_pp0_iter2_reg;
reg   [0:0] p_Result_s_reg_974_pp0_iter3_reg;
reg   [0:0] p_Result_s_reg_974_pp0_iter4_reg;
reg   [6:0] tmp_reg_980;
reg   [6:0] tmp_reg_980_pp0_iter1_reg;
reg   [6:0] tmp_reg_980_pp0_iter2_reg;
reg   [7:0] tmp_470_reg_985;
reg   [7:0] tmp_470_reg_985_pp0_iter1_reg;
reg   [7:0] tmp_470_reg_985_pp0_iter2_reg;
reg   [4:0] x_msb_ind_3_V_reg_991;
reg   [4:0] x_msb_ind_3_V_reg_991_pp0_iter1_reg;
reg   [4:0] x_msb_ind_3_V_reg_991_pp0_iter2_reg;
wire   [2:0] x_msb_ind_4_V_fu_408_p4;
reg   [2:0] x_msb_ind_4_V_reg_998;
wire   [3:0] x_lsb_ind_V_fu_422_p3;
reg   [3:0] x_lsb_ind_V_reg_1003;
wire   [5:0] trunc_ln594_2_fu_438_p1;
reg   [5:0] trunc_ln594_2_reg_1018;
reg   [5:0] trunc_ln594_2_reg_1018_pp0_iter1_reg;
reg   [5:0] trunc_ln594_2_reg_1018_pp0_iter2_reg;
wire   [0:0] or_ln300_1_fu_448_p2;
reg   [0:0] or_ln300_1_reg_1023;
reg   [0:0] or_ln300_1_reg_1023_pp0_iter1_reg;
reg   [0:0] or_ln300_1_reg_1023_pp0_iter2_reg;
reg   [0:0] or_ln300_1_reg_1023_pp0_iter3_reg;
reg   [0:0] or_ln300_1_reg_1023_pp0_iter4_reg;
wire   [0:0] or_ln300_3_fu_460_p2;
reg   [0:0] or_ln300_3_reg_1028;
reg   [0:0] or_ln300_3_reg_1028_pp0_iter1_reg;
reg   [0:0] or_ln300_3_reg_1028_pp0_iter2_reg;
reg   [0:0] or_ln300_3_reg_1028_pp0_iter3_reg;
reg   [0:0] or_ln300_3_reg_1028_pp0_iter4_reg;
reg   [6:0] f_x_msb_4_l_V_reg_1048;
wire   [4:0] trunc_ln594_3_fu_497_p1;
reg   [4:0] trunc_ln594_3_reg_1058;
wire   [47:0] exp_x_msb_3_4_lsb_m_1_V_fu_593_p2;
reg   [47:0] exp_x_msb_3_4_lsb_m_1_V_reg_1073;
wire   [8:0] ret_V_254_fu_616_p2;
reg   [8:0] ret_V_254_reg_1079;
wire   [40:0] trunc_ln594_4_fu_622_p1;
reg   [40:0] trunc_ln594_4_reg_1085;
reg   [49:0] exp_x_msb_2_3_4_lsb_m_1_V_reg_1096;
reg   [49:0] exp_x_msb_1_V_reg_1101;
wire   [63:0] zext_ln541_fu_466_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln541_2_fu_471_p1;
wire   [63:0] zext_ln541_3_fu_501_p1;
wire   [63:0] zext_ln541_4_fu_505_p1;
wire   [63:0] zext_ln541_5_fu_626_p1;
wire   [21:0] trunc_ln594_fu_270_p1;
wire   [0:0] p_Result_82_fu_290_p3;
wire   [0:0] p_Result_83_fu_304_p3;
wire   [0:0] p_Result_84_fu_318_p3;
wire   [0:0] p_Result_85_fu_332_p3;
wire   [0:0] p_Result_86_fu_346_p3;
wire   [4:0] x_l_int_fu_260_p4;
wire   [22:0] x_l_fract_fu_274_p3;
wire   [0:0] icmp_ln1653_fu_360_p2;
wire   [0:0] icmp_ln1651_fu_366_p2;
wire   [2:0] trunc_ln594_1_fu_418_p1;
wire   [0:0] overf_fu_298_p2;
wire   [0:0] xor_ln176_1_fu_326_p2;
wire   [0:0] or_ln300_fu_442_p2;
wire   [0:0] xor_ln176_fu_312_p2;
wire   [0:0] xor_ln176_3_fu_354_p2;
wire   [0:0] and_ln300_fu_372_p2;
wire   [0:0] or_ln300_2_fu_454_p2;
wire   [0:0] xor_ln176_2_fu_340_p2;
wire   [2:0] tmp_45_fu_475_p4;
wire   [8:0] p_Result_112_fu_485_p3;
wire   [9:0] grp_fu_965_p3;
wire   [43:0] p_Result_114_fu_527_p4;
wire   [41:0] p_Result_113_fu_515_p7;
wire   [43:0] r_V_553_fu_544_p0;
wire   [41:0] r_V_553_fu_544_p1;
wire   [85:0] r_V_553_fu_544_p2;
wire   [30:0] trunc_ln_fu_550_p4;
wire   [46:0] rhs_256_fu_564_p5;
wire   [42:0] zext_ln813_15_fu_579_p1;
wire   [42:0] zext_ln1347_fu_560_p1;
wire   [42:0] add_ln813_fu_583_p2;
wire   [47:0] zext_ln813_16_fu_589_p1;
wire   [47:0] zext_ln1347_1_fu_575_p1;
wire   [4:0] f_x_msb_2_h_V_fu_599_p4;
wire   [8:0] zext_ln813_18_fu_613_p1;
wire   [8:0] zext_ln813_17_fu_609_p1;
wire   [7:0] p_Result_111_fu_509_p3;
wire   [49:0] p_Result_115_fu_631_p3;
wire   [49:0] r_V_554_fu_644_p0;
wire   [47:0] r_V_554_fu_644_p1;
wire   [97:0] r_V_554_fu_644_p2;
wire   [45:0] trunc_ln1347_1_fu_650_p4;
wire   [47:0] zext_ln1347_2_fu_660_p1;
wire   [47:0] add_ln1347_fu_672_p2;
wire   [55:0] zext_ln1347_3_fu_677_p1;
wire   [55:0] rhs_258_fu_664_p4;
wire   [55:0] ret_V_fu_681_p2;
wire   [0:0] y_V_fu_697_p2;
wire   [49:0] r_V_fu_716_p0;
wire   [49:0] r_V_fu_716_p1;
wire   [99:0] r_V_fu_716_p2;
wire   [47:0] trunc_ln813_s_fu_722_p4;
wire   [49:0] zext_ln813_19_fu_732_p1;
wire   [49:0] y_l_V_fu_736_p2;
wire   [0:0] or_ln300_4_fu_751_p2;
wire   [45:0] select_ln288_fu_702_p3;
wire   [45:0] y_V_1_fu_741_p4;
wire   [45:0] p_Val2_144_fu_755_p3;
wire   [1:0] tmp_457_fu_763_p4;
wire   [0:0] overf_1_fu_773_p2;
wire   [0:0] p_Result_100_fu_787_p3;
wire   [0:0] or_ln533_fu_875_p2;
wire   [0:0] p_Result_99_fu_779_p3;
wire   [0:0] p_Result_102_fu_803_p3;
wire   [0:0] p_Result_103_fu_811_p3;
wire   [0:0] or_ln533_2_fu_887_p2;
wire   [0:0] p_Result_101_fu_795_p3;
wire   [0:0] or_ln533_3_fu_893_p2;
wire   [0:0] or_ln533_1_fu_881_p2;
wire   [0:0] p_Result_105_fu_827_p3;
wire   [0:0] p_Result_106_fu_835_p3;
wire   [0:0] or_ln533_5_fu_905_p2;
wire   [0:0] p_Result_104_fu_819_p3;
wire   [0:0] p_Result_107_fu_843_p3;
wire   [0:0] p_Result_108_fu_851_p3;
wire   [0:0] p_Result_109_fu_859_p3;
wire   [0:0] p_Result_110_fu_867_p3;
wire   [0:0] or_ln533_8_fu_923_p2;
wire   [0:0] or_ln533_7_fu_917_p2;
wire   [0:0] or_ln533_9_fu_929_p2;
wire   [0:0] or_ln533_6_fu_911_p2;
wire   [0:0] or_ln533_10_fu_935_p2;
wire   [0:0] or_ln533_4_fu_899_p2;
wire   [0:0] overf_2_fu_941_p2;
wire   [30:0] tmp_s_fu_947_p4;
wire   [2:0] grp_fu_965_p0;
wire   [3:0] grp_fu_965_p1;
wire   [8:0] grp_fu_965_p2;
reg    grp_fu_965_ce;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to4;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
wire   [6:0] grp_fu_965_p00;
wire   [6:0] grp_fu_965_p10;
wire   [9:0] grp_fu_965_p20;
wire   [85:0] r_V_553_fu_544_p00;
wire   [85:0] r_V_553_fu_544_p10;
wire   [97:0] r_V_554_fu_644_p00;
wire   [97:0] r_V_554_fu_644_p10;
wire   [99:0] r_V_fu_716_p00;
wire   [99:0] r_V_fu_716_p10;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
end

ViT_act_exp_32_10_s_f_x_msb_4_h_table_V_ROM_AUTO_1R #(
    .DataWidth( 6 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
f_x_msb_4_h_table_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(f_x_msb_4_h_table_V_address0),
    .ce0(f_x_msb_4_h_table_V_ce0),
    .q0(f_x_msb_4_h_table_V_q0)
);

ViT_act_exp_32_10_s_f_x_msb_4_l_table_V_ROM_AUTO_1R #(
    .DataWidth( 7 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
f_x_msb_4_l_table_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(f_x_msb_4_l_table_V_address0),
    .ce0(f_x_msb_4_l_table_V_ce0),
    .q0(f_x_msb_4_l_table_V_q0)
);

ViT_act_exp_32_10_s_f_x_lsb_table_V_ROM_AUTO_1R #(
    .DataWidth( 8 ),
    .AddressRange( 16 ),
    .AddressWidth( 4 ))
f_x_lsb_table_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(f_x_lsb_table_V_address0),
    .ce0(f_x_lsb_table_V_ce0),
    .q0(f_x_lsb_table_V_q0)
);

ViT_act_exp_32_10_s_f_x_msb_3_table_V_ROM_AUTO_1R #(
    .DataWidth( 32 ),
    .AddressRange( 32 ),
    .AddressWidth( 5 ))
f_x_msb_3_table_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(f_x_msb_3_table_V_address0),
    .ce0(f_x_msb_3_table_V_ce0),
    .q0(f_x_msb_3_table_V_q0)
);

ViT_act_exp_32_10_s_f_x_msb_2_table_V_ROM_AUTO_1R #(
    .DataWidth( 46 ),
    .AddressRange( 256 ),
    .AddressWidth( 8 ))
f_x_msb_2_table_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(f_x_msb_2_table_V_address0),
    .ce0(f_x_msb_2_table_V_ce0),
    .q0(f_x_msb_2_table_V_q0)
);

ViT_act_exp_32_10_s_exp_x_msb_1_table_V_ROM_AUTO_1R #(
    .DataWidth( 50 ),
    .AddressRange( 256 ),
    .AddressWidth( 8 ))
exp_x_msb_1_table_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(exp_x_msb_1_table_V_address0),
    .ce0(exp_x_msb_1_table_V_ce0),
    .q0(exp_x_msb_1_table_V_q0)
);

ViT_act_mul_44ns_42ns_86_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 44 ),
    .din1_WIDTH( 42 ),
    .dout_WIDTH( 86 ))
mul_44ns_42ns_86_1_1_U897(
    .din0(r_V_553_fu_544_p0),
    .din1(r_V_553_fu_544_p1),
    .dout(r_V_553_fu_544_p2)
);

ViT_act_mul_50ns_48ns_98_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 50 ),
    .din1_WIDTH( 48 ),
    .dout_WIDTH( 98 ))
mul_50ns_48ns_98_1_1_U898(
    .din0(r_V_554_fu_644_p0),
    .din1(r_V_554_fu_644_p1),
    .dout(r_V_554_fu_644_p2)
);

ViT_act_mul_50ns_50ns_100_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 50 ),
    .din1_WIDTH( 50 ),
    .dout_WIDTH( 100 ))
mul_50ns_50ns_100_1_1_U899(
    .din0(r_V_fu_716_p0),
    .din1(r_V_fu_716_p1),
    .dout(r_V_fu_716_p2)
);

ViT_act_mac_muladd_3ns_4ns_9ns_10_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 3 ),
    .din1_WIDTH( 4 ),
    .din2_WIDTH( 9 ),
    .dout_WIDTH( 10 ))
mac_muladd_3ns_4ns_9ns_10_4_1_U900(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_965_p0),
    .din1(grp_fu_965_p1),
    .din2(grp_fu_965_p2),
    .ce(grp_fu_965_ce),
    .dout(grp_fu_965_p3)
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
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce))) begin
        exp_x_msb_1_V_reg_1101 <= exp_x_msb_1_table_V_q0;
        exp_x_msb_2_3_4_lsb_m_1_V_reg_1096 <= {{ret_V_fu_681_p2[55:6]}};
        exp_x_msb_3_4_lsb_m_1_V_reg_1073 <= exp_x_msb_3_4_lsb_m_1_V_fu_593_p2;
        f_x_msb_4_l_V_reg_1048 <= f_x_msb_4_l_table_V_q0;
        or_ln300_1_reg_1023_pp0_iter2_reg <= or_ln300_1_reg_1023_pp0_iter1_reg;
        or_ln300_1_reg_1023_pp0_iter3_reg <= or_ln300_1_reg_1023_pp0_iter2_reg;
        or_ln300_1_reg_1023_pp0_iter4_reg <= or_ln300_1_reg_1023_pp0_iter3_reg;
        or_ln300_3_reg_1028_pp0_iter2_reg <= or_ln300_3_reg_1028_pp0_iter1_reg;
        or_ln300_3_reg_1028_pp0_iter3_reg <= or_ln300_3_reg_1028_pp0_iter2_reg;
        or_ln300_3_reg_1028_pp0_iter4_reg <= or_ln300_3_reg_1028_pp0_iter3_reg;
        p_Result_s_reg_974_pp0_iter2_reg <= p_Result_s_reg_974_pp0_iter1_reg;
        p_Result_s_reg_974_pp0_iter3_reg <= p_Result_s_reg_974_pp0_iter2_reg;
        p_Result_s_reg_974_pp0_iter4_reg <= p_Result_s_reg_974_pp0_iter3_reg;
        ret_V_254_reg_1079 <= ret_V_254_fu_616_p2;
        tmp_470_reg_985_pp0_iter2_reg <= tmp_470_reg_985_pp0_iter1_reg;
        tmp_reg_980_pp0_iter2_reg <= tmp_reg_980_pp0_iter1_reg;
        trunc_ln594_2_reg_1018_pp0_iter2_reg <= trunc_ln594_2_reg_1018_pp0_iter1_reg;
        trunc_ln594_3_reg_1058 <= trunc_ln594_3_fu_497_p1;
        trunc_ln594_4_reg_1085 <= trunc_ln594_4_fu_622_p1;
        x_msb_ind_3_V_reg_991_pp0_iter2_reg <= x_msb_ind_3_V_reg_991_pp0_iter1_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        or_ln300_1_reg_1023 <= or_ln300_1_fu_448_p2;
        or_ln300_1_reg_1023_pp0_iter1_reg <= or_ln300_1_reg_1023;
        or_ln300_3_reg_1028 <= or_ln300_3_fu_460_p2;
        or_ln300_3_reg_1028_pp0_iter1_reg <= or_ln300_3_reg_1028;
        p_Result_s_reg_974 <= x[32'd31];
        p_Result_s_reg_974_pp0_iter1_reg <= p_Result_s_reg_974;
        tmp_470_reg_985 <= {{x[18:11]}};
        tmp_470_reg_985_pp0_iter1_reg <= tmp_470_reg_985;
        tmp_reg_980 <= {{x[25:19]}};
        tmp_reg_980_pp0_iter1_reg <= tmp_reg_980;
        trunc_ln594_2_reg_1018 <= trunc_ln594_2_fu_438_p1;
        trunc_ln594_2_reg_1018_pp0_iter1_reg <= trunc_ln594_2_reg_1018;
        x_lsb_ind_V_reg_1003[3 : 1] <= x_lsb_ind_V_fu_422_p3[3 : 1];
        x_msb_ind_3_V_reg_991 <= {{x[10:6]}};
        x_msb_ind_3_V_reg_991_pp0_iter1_reg <= x_msb_ind_3_V_reg_991;
        x_msb_ind_4_V_reg_998 <= {{x[5:3]}};
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to4 = 1'b1;
    end else begin
        ap_idle_pp0_0to4 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to4 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_ce))) begin
        exp_x_msb_1_table_V_ce0 = 1'b1;
    end else begin
        exp_x_msb_1_table_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        f_x_lsb_table_V_ce0 = 1'b1;
    end else begin
        f_x_lsb_table_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_ce))) begin
        f_x_msb_2_table_V_ce0 = 1'b1;
    end else begin
        f_x_msb_2_table_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_ce))) begin
        f_x_msb_3_table_V_ce0 = 1'b1;
    end else begin
        f_x_msb_3_table_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        f_x_msb_4_h_table_V_ce0 = 1'b1;
    end else begin
        f_x_msb_4_h_table_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        f_x_msb_4_l_table_V_ce0 = 1'b1;
    end else begin
        f_x_msb_4_l_table_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_965_ce = 1'b1;
    end else begin
        grp_fu_965_ce = 1'b0;
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

assign add_ln1347_fu_672_p2 = (exp_x_msb_3_4_lsb_m_1_V_reg_1073 + zext_ln1347_2_fu_660_p1);

assign add_ln813_fu_583_p2 = (zext_ln813_15_fu_579_p1 + zext_ln1347_fu_560_p1);

assign and_ln300_fu_372_p2 = (icmp_ln1653_fu_360_p2 & icmp_ln1651_fu_366_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_subdone = (1'b0 == ap_ce);
end

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign ap_return = ((overf_2_fu_941_p2[0:0] == 1'b1) ? 31'd2147483647 : tmp_s_fu_947_p4);

assign exp_x_msb_1_table_V_address0 = zext_ln541_5_fu_626_p1;

assign exp_x_msb_3_4_lsb_m_1_V_fu_593_p2 = (zext_ln813_16_fu_589_p1 + zext_ln1347_1_fu_575_p1);

assign f_x_lsb_table_V_address0 = zext_ln541_2_fu_471_p1;

assign f_x_msb_2_h_V_fu_599_p4 = {{f_x_msb_2_table_V_q0[45:41]}};

assign f_x_msb_2_table_V_address0 = zext_ln541_4_fu_505_p1;

assign f_x_msb_3_table_V_address0 = zext_ln541_3_fu_501_p1;

assign f_x_msb_4_h_table_V_address0 = zext_ln541_fu_466_p1;

assign f_x_msb_4_l_table_V_address0 = zext_ln541_fu_466_p1;

assign grp_fu_965_p0 = grp_fu_965_p00;

assign grp_fu_965_p00 = x_msb_ind_4_V_fu_408_p4;

assign grp_fu_965_p1 = grp_fu_965_p10;

assign grp_fu_965_p10 = x_lsb_ind_V_fu_422_p3;

assign grp_fu_965_p2 = grp_fu_965_p20;

assign grp_fu_965_p20 = p_Result_112_fu_485_p3;

assign icmp_ln1651_fu_366_p2 = ((x_l_fract_fu_274_p3 > 23'd7905299) ? 1'b1 : 1'b0);

assign icmp_ln1653_fu_360_p2 = ((x_l_int_fu_260_p4 == 5'd15) ? 1'b1 : 1'b0);

assign or_ln300_1_fu_448_p2 = (xor_ln176_fu_312_p2 | or_ln300_fu_442_p2);

assign or_ln300_2_fu_454_p2 = (xor_ln176_3_fu_354_p2 | and_ln300_fu_372_p2);

assign or_ln300_3_fu_460_p2 = (xor_ln176_2_fu_340_p2 | or_ln300_2_fu_454_p2);

assign or_ln300_4_fu_751_p2 = (or_ln300_3_reg_1028_pp0_iter4_reg | or_ln300_1_reg_1023_pp0_iter4_reg);

assign or_ln300_fu_442_p2 = (xor_ln176_1_fu_326_p2 | overf_fu_298_p2);

assign or_ln533_10_fu_935_p2 = (or_ln533_9_fu_929_p2 | or_ln533_6_fu_911_p2);

assign or_ln533_1_fu_881_p2 = (p_Result_99_fu_779_p3 | or_ln533_fu_875_p2);

assign or_ln533_2_fu_887_p2 = (p_Result_103_fu_811_p3 | p_Result_102_fu_803_p3);

assign or_ln533_3_fu_893_p2 = (p_Result_101_fu_795_p3 | or_ln533_2_fu_887_p2);

assign or_ln533_4_fu_899_p2 = (or_ln533_3_fu_893_p2 | or_ln533_1_fu_881_p2);

assign or_ln533_5_fu_905_p2 = (p_Result_106_fu_835_p3 | p_Result_105_fu_827_p3);

assign or_ln533_6_fu_911_p2 = (p_Result_104_fu_819_p3 | or_ln533_5_fu_905_p2);

assign or_ln533_7_fu_917_p2 = (p_Result_108_fu_851_p3 | p_Result_107_fu_843_p3);

assign or_ln533_8_fu_923_p2 = (p_Result_110_fu_867_p3 | p_Result_109_fu_859_p3);

assign or_ln533_9_fu_929_p2 = (or_ln533_8_fu_923_p2 | or_ln533_7_fu_917_p2);

assign or_ln533_fu_875_p2 = (p_Result_100_fu_787_p3 | overf_1_fu_773_p2);

assign overf_1_fu_773_p2 = ((tmp_457_fu_763_p4 != 2'd0) ? 1'b1 : 1'b0);

assign overf_2_fu_941_p2 = (or_ln533_4_fu_899_p2 | or_ln533_10_fu_935_p2);

assign overf_fu_298_p2 = (p_Result_s_fu_282_p3 ^ p_Result_82_fu_290_p3);

assign p_Result_100_fu_787_p3 = p_Val2_144_fu_755_p3[32'd42];

assign p_Result_101_fu_795_p3 = p_Val2_144_fu_755_p3[32'd41];

assign p_Result_102_fu_803_p3 = p_Val2_144_fu_755_p3[32'd40];

assign p_Result_103_fu_811_p3 = p_Val2_144_fu_755_p3[32'd39];

assign p_Result_104_fu_819_p3 = p_Val2_144_fu_755_p3[32'd38];

assign p_Result_105_fu_827_p3 = p_Val2_144_fu_755_p3[32'd37];

assign p_Result_106_fu_835_p3 = p_Val2_144_fu_755_p3[32'd36];

assign p_Result_107_fu_843_p3 = p_Val2_144_fu_755_p3[32'd35];

assign p_Result_108_fu_851_p3 = p_Val2_144_fu_755_p3[32'd34];

assign p_Result_109_fu_859_p3 = p_Val2_144_fu_755_p3[32'd33];

assign p_Result_110_fu_867_p3 = p_Val2_144_fu_755_p3[32'd32];

assign p_Result_111_fu_509_p3 = {{p_Result_s_reg_974_pp0_iter2_reg}, {tmp_reg_980_pp0_iter2_reg}};

assign p_Result_112_fu_485_p3 = {{f_x_msb_4_h_table_V_q0}, {tmp_45_fu_475_p4}};

assign p_Result_113_fu_515_p7 = {{{{{{trunc_ln594_2_reg_1018_pp0_iter2_reg}, {10'd0}}, {grp_fu_965_p3}}, {trunc_ln594_3_reg_1058}}, {4'd0}}, {f_x_msb_4_l_V_reg_1048}};

assign p_Result_114_fu_527_p4 = {{{x_msb_ind_3_V_reg_991_pp0_iter2_reg}, {7'd0}}, {f_x_msb_3_table_V_q0}};

assign p_Result_115_fu_631_p3 = {{ret_V_254_reg_1079}, {trunc_ln594_4_reg_1085}};

assign p_Result_82_fu_290_p3 = x[32'd26];

assign p_Result_83_fu_304_p3 = x[32'd27];

assign p_Result_84_fu_318_p3 = x[32'd28];

assign p_Result_85_fu_332_p3 = x[32'd29];

assign p_Result_86_fu_346_p3 = x[32'd30];

assign p_Result_99_fu_779_p3 = p_Val2_144_fu_755_p3[32'd43];

assign p_Result_s_fu_282_p3 = x[32'd31];

assign p_Val2_144_fu_755_p3 = ((or_ln300_4_fu_751_p2[0:0] == 1'b1) ? select_ln288_fu_702_p3 : y_V_1_fu_741_p4);

assign r_V_553_fu_544_p0 = r_V_553_fu_544_p00;

assign r_V_553_fu_544_p00 = p_Result_114_fu_527_p4;

assign r_V_553_fu_544_p1 = r_V_553_fu_544_p10;

assign r_V_553_fu_544_p10 = p_Result_113_fu_515_p7;

assign r_V_554_fu_644_p0 = r_V_554_fu_644_p00;

assign r_V_554_fu_644_p00 = p_Result_115_fu_631_p3;

assign r_V_554_fu_644_p1 = r_V_554_fu_644_p10;

assign r_V_554_fu_644_p10 = exp_x_msb_3_4_lsb_m_1_V_reg_1073;

assign r_V_fu_716_p0 = r_V_fu_716_p00;

assign r_V_fu_716_p00 = exp_x_msb_2_3_4_lsb_m_1_V_reg_1096;

assign r_V_fu_716_p1 = r_V_fu_716_p10;

assign r_V_fu_716_p10 = exp_x_msb_1_V_reg_1101;

assign ret_V_254_fu_616_p2 = (zext_ln813_18_fu_613_p1 + zext_ln813_17_fu_609_p1);

assign ret_V_fu_681_p2 = (zext_ln1347_3_fu_677_p1 + rhs_258_fu_664_p4);

assign rhs_256_fu_564_p5 = {{{{x_msb_ind_3_V_reg_991_pp0_iter2_reg}, {7'd0}}, {f_x_msb_3_table_V_q0}}, {3'd0}};

assign rhs_258_fu_664_p4 = {{{ret_V_254_reg_1079}, {trunc_ln594_4_reg_1085}}, {6'd0}};

assign select_ln288_fu_702_p3 = ((y_V_fu_697_p2[0:0] == 1'b1) ? 46'd70368744177663 : 46'd0);

assign tmp_457_fu_763_p4 = {{p_Val2_144_fu_755_p3[45:44]}};

assign tmp_45_fu_475_p4 = {{f_x_lsb_table_V_q0[7:5]}};

assign tmp_s_fu_947_p4 = {{p_Val2_144_fu_755_p3[31:1]}};

assign trunc_ln1347_1_fu_650_p4 = {{r_V_554_fu_644_p2[97:52]}};

assign trunc_ln594_1_fu_418_p1 = x[2:0];

assign trunc_ln594_2_fu_438_p1 = x[5:0];

assign trunc_ln594_3_fu_497_p1 = f_x_lsb_table_V_q0[4:0];

assign trunc_ln594_4_fu_622_p1 = f_x_msb_2_table_V_q0[40:0];

assign trunc_ln594_fu_270_p1 = x[21:0];

assign trunc_ln813_s_fu_722_p4 = {{r_V_fu_716_p2[99:52]}};

assign trunc_ln_fu_550_p4 = {{r_V_553_fu_544_p2[85:55]}};

assign x_l_fract_fu_274_p3 = {{trunc_ln594_fu_270_p1}, {1'd0}};

assign x_l_int_fu_260_p4 = {{x[26:22]}};

assign x_lsb_ind_V_fu_422_p3 = {{trunc_ln594_1_fu_418_p1}, {1'd0}};

assign x_msb_ind_4_V_fu_408_p4 = {{x[5:3]}};

assign xor_ln176_1_fu_326_p2 = (p_Result_s_fu_282_p3 ^ p_Result_84_fu_318_p3);

assign xor_ln176_2_fu_340_p2 = (p_Result_s_fu_282_p3 ^ p_Result_85_fu_332_p3);

assign xor_ln176_3_fu_354_p2 = (p_Result_s_fu_282_p3 ^ p_Result_86_fu_346_p3);

assign xor_ln176_fu_312_p2 = (p_Result_s_fu_282_p3 ^ p_Result_83_fu_304_p3);

assign y_V_1_fu_741_p4 = {{y_l_V_fu_736_p2[49:4]}};

assign y_V_fu_697_p2 = (p_Result_s_reg_974_pp0_iter4_reg ^ 1'd1);

assign y_l_V_fu_736_p2 = (exp_x_msb_1_V_reg_1101 + zext_ln813_19_fu_732_p1);

assign zext_ln1347_1_fu_575_p1 = rhs_256_fu_564_p5;

assign zext_ln1347_2_fu_660_p1 = trunc_ln1347_1_fu_650_p4;

assign zext_ln1347_3_fu_677_p1 = add_ln1347_fu_672_p2;

assign zext_ln1347_fu_560_p1 = trunc_ln_fu_550_p4;

assign zext_ln541_2_fu_471_p1 = x_lsb_ind_V_reg_1003;

assign zext_ln541_3_fu_501_p1 = x_msb_ind_3_V_reg_991_pp0_iter1_reg;

assign zext_ln541_4_fu_505_p1 = tmp_470_reg_985_pp0_iter1_reg;

assign zext_ln541_5_fu_626_p1 = p_Result_111_fu_509_p3;

assign zext_ln541_fu_466_p1 = x_msb_ind_4_V_reg_998;

assign zext_ln813_15_fu_579_p1 = p_Result_113_fu_515_p7;

assign zext_ln813_16_fu_589_p1 = add_ln813_fu_583_p2;

assign zext_ln813_17_fu_609_p1 = f_x_msb_2_h_V_fu_599_p4;

assign zext_ln813_18_fu_613_p1 = tmp_470_reg_985_pp0_iter2_reg;

assign zext_ln813_19_fu_732_p1 = trunc_ln813_s_fu_722_p4;

always @ (posedge ap_clk) begin
    x_lsb_ind_V_reg_1003[0] <= 1'b0;
end

endmodule //ViT_act_exp_32_10_s
