-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ViT_act_read_in_stream_direct is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    in_stream_din : OUT STD_LOGIC_VECTOR (511 downto 0);
    in_stream_num_data_valid : IN STD_LOGIC_VECTOR (6 downto 0);
    in_stream_fifo_cap : IN STD_LOGIC_VECTOR (6 downto 0);
    in_stream_full_n : IN STD_LOGIC;
    in_stream_write : OUT STD_LOGIC;
    m_axi_inout1_AWVALID : OUT STD_LOGIC;
    m_axi_inout1_AWREADY : IN STD_LOGIC;
    m_axi_inout1_AWADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
    m_axi_inout1_AWID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_inout1_AWLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_inout1_AWSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_inout1_AWBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_inout1_AWLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_inout1_AWCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_inout1_AWPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_inout1_AWQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_inout1_AWREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_inout1_AWUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_inout1_WVALID : OUT STD_LOGIC;
    m_axi_inout1_WREADY : IN STD_LOGIC;
    m_axi_inout1_WDATA : OUT STD_LOGIC_VECTOR (255 downto 0);
    m_axi_inout1_WSTRB : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_inout1_WLAST : OUT STD_LOGIC;
    m_axi_inout1_WID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_inout1_WUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_inout1_ARVALID : OUT STD_LOGIC;
    m_axi_inout1_ARREADY : IN STD_LOGIC;
    m_axi_inout1_ARADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
    m_axi_inout1_ARID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_inout1_ARLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_inout1_ARSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_inout1_ARBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_inout1_ARLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_inout1_ARCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_inout1_ARPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_inout1_ARQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_inout1_ARREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_inout1_ARUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_inout1_RVALID : IN STD_LOGIC;
    m_axi_inout1_RREADY : OUT STD_LOGIC;
    m_axi_inout1_RDATA : IN STD_LOGIC_VECTOR (255 downto 0);
    m_axi_inout1_RLAST : IN STD_LOGIC;
    m_axi_inout1_RID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_inout1_RFIFONUM : IN STD_LOGIC_VECTOR (8 downto 0);
    m_axi_inout1_RUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_inout1_RRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_inout1_BVALID : IN STD_LOGIC;
    m_axi_inout1_BREADY : OUT STD_LOGIC;
    m_axi_inout1_BRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_inout1_BID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_inout1_BUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    src : IN STD_LOGIC_VECTOR (63 downto 0);
    in_dim_offset : IN STD_LOGIC_VECTOR (9 downto 0) );
end;


architecture behav of ViT_act_read_in_stream_direct is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (9 downto 0) := "0000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (9 downto 0) := "0000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (9 downto 0) := "0000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (9 downto 0) := "0000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (9 downto 0) := "0000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (9 downto 0) := "0001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (9 downto 0) := "0010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (9 downto 0) := "0100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (9 downto 0) := "1000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv256_lc_1 : STD_LOGIC_VECTOR (255 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv11_7 : STD_LOGIC_VECTOR (10 downto 0) := "00000000111";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";

attribute shreg_extract : string;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal inout1_blk_n_AR : STD_LOGIC;
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal iters_fu_120_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal iters_reg_151 : STD_LOGIC_VECTOR (15 downto 0);
    signal zext_ln179_2_fu_126_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln_i_fu_130_p4 : STD_LOGIC_VECTOR (58 downto 0);
    signal trunc_ln_i_reg_162 : STD_LOGIC_VECTOR (58 downto 0);
    signal grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_ap_start : STD_LOGIC;
    signal grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_ap_done : STD_LOGIC;
    signal grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_ap_idle : STD_LOGIC;
    signal grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_ap_ready : STD_LOGIC;
    signal grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_AWVALID : STD_LOGIC;
    signal grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_AWADDR : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_AWID : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_AWLEN : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_AWSIZE : STD_LOGIC_VECTOR (2 downto 0);
    signal grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_AWBURST : STD_LOGIC_VECTOR (1 downto 0);
    signal grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_AWLOCK : STD_LOGIC_VECTOR (1 downto 0);
    signal grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_AWCACHE : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_AWPROT : STD_LOGIC_VECTOR (2 downto 0);
    signal grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_AWQOS : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_AWREGION : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_AWUSER : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_WVALID : STD_LOGIC;
    signal grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_WDATA : STD_LOGIC_VECTOR (255 downto 0);
    signal grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_WSTRB : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_WLAST : STD_LOGIC;
    signal grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_WID : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_WUSER : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_ARVALID : STD_LOGIC;
    signal grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_ARADDR : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_ARID : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_ARLEN : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_ARSIZE : STD_LOGIC_VECTOR (2 downto 0);
    signal grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_ARBURST : STD_LOGIC_VECTOR (1 downto 0);
    signal grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_ARLOCK : STD_LOGIC_VECTOR (1 downto 0);
    signal grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_ARCACHE : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_ARPROT : STD_LOGIC_VECTOR (2 downto 0);
    signal grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_ARQOS : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_ARREGION : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_ARUSER : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_RREADY : STD_LOGIC;
    signal grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_BREADY : STD_LOGIC;
    signal grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_in_stream_din : STD_LOGIC_VECTOR (511 downto 0);
    signal grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_in_stream_write : STD_LOGIC;
    signal grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal ap_CS_fsm_state10 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state10 : signal is "none";
    signal sext_ln181_fu_140_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal in_dim_cast_i_i_fu_84_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal add_ln70_fu_88_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal lshr_ln_i_fu_94_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal and_ln_i_fu_108_p3 : STD_LOGIC_VECTOR (14 downto 0);
    signal zext_ln179_1_fu_116_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal zext_ln179_fu_104_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ST_fsm_state3_blk : STD_LOGIC;
    signal ap_ST_fsm_state4_blk : STD_LOGIC;
    signal ap_ST_fsm_state5_blk : STD_LOGIC;
    signal ap_ST_fsm_state6_blk : STD_LOGIC;
    signal ap_ST_fsm_state7_blk : STD_LOGIC;
    signal ap_ST_fsm_state8_blk : STD_LOGIC;
    signal ap_ST_fsm_state9_blk : STD_LOGIC;
    signal ap_ST_fsm_state10_blk : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component ViT_act_read_in_stream_direct_Pipeline_ln181_for_each_i IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        m_axi_inout1_AWVALID : OUT STD_LOGIC;
        m_axi_inout1_AWREADY : IN STD_LOGIC;
        m_axi_inout1_AWADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
        m_axi_inout1_AWID : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axi_inout1_AWLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
        m_axi_inout1_AWSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
        m_axi_inout1_AWBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
        m_axi_inout1_AWLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
        m_axi_inout1_AWCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
        m_axi_inout1_AWPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
        m_axi_inout1_AWQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
        m_axi_inout1_AWREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
        m_axi_inout1_AWUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axi_inout1_WVALID : OUT STD_LOGIC;
        m_axi_inout1_WREADY : IN STD_LOGIC;
        m_axi_inout1_WDATA : OUT STD_LOGIC_VECTOR (255 downto 0);
        m_axi_inout1_WSTRB : OUT STD_LOGIC_VECTOR (31 downto 0);
        m_axi_inout1_WLAST : OUT STD_LOGIC;
        m_axi_inout1_WID : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axi_inout1_WUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axi_inout1_ARVALID : OUT STD_LOGIC;
        m_axi_inout1_ARREADY : IN STD_LOGIC;
        m_axi_inout1_ARADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
        m_axi_inout1_ARID : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axi_inout1_ARLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
        m_axi_inout1_ARSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
        m_axi_inout1_ARBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
        m_axi_inout1_ARLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
        m_axi_inout1_ARCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
        m_axi_inout1_ARPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
        m_axi_inout1_ARQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
        m_axi_inout1_ARREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
        m_axi_inout1_ARUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axi_inout1_RVALID : IN STD_LOGIC;
        m_axi_inout1_RREADY : OUT STD_LOGIC;
        m_axi_inout1_RDATA : IN STD_LOGIC_VECTOR (255 downto 0);
        m_axi_inout1_RLAST : IN STD_LOGIC;
        m_axi_inout1_RID : IN STD_LOGIC_VECTOR (0 downto 0);
        m_axi_inout1_RFIFONUM : IN STD_LOGIC_VECTOR (8 downto 0);
        m_axi_inout1_RUSER : IN STD_LOGIC_VECTOR (0 downto 0);
        m_axi_inout1_RRESP : IN STD_LOGIC_VECTOR (1 downto 0);
        m_axi_inout1_BVALID : IN STD_LOGIC;
        m_axi_inout1_BREADY : OUT STD_LOGIC;
        m_axi_inout1_BRESP : IN STD_LOGIC_VECTOR (1 downto 0);
        m_axi_inout1_BID : IN STD_LOGIC_VECTOR (0 downto 0);
        m_axi_inout1_BUSER : IN STD_LOGIC_VECTOR (0 downto 0);
        in_stream_din : OUT STD_LOGIC_VECTOR (511 downto 0);
        in_stream_num_data_valid : IN STD_LOGIC_VECTOR (6 downto 0);
        in_stream_fifo_cap : IN STD_LOGIC_VECTOR (6 downto 0);
        in_stream_full_n : IN STD_LOGIC;
        in_stream_write : OUT STD_LOGIC;
        sext_ln181_i : IN STD_LOGIC_VECTOR (58 downto 0);
        iters_i : IN STD_LOGIC_VECTOR (15 downto 0) );
    end component;



begin
    grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74 : component ViT_act_read_in_stream_direct_Pipeline_ln181_for_each_i
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_ap_start,
        ap_done => grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_ap_done,
        ap_idle => grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_ap_idle,
        ap_ready => grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_ap_ready,
        m_axi_inout1_AWVALID => grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_AWVALID,
        m_axi_inout1_AWREADY => ap_const_logic_0,
        m_axi_inout1_AWADDR => grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_AWADDR,
        m_axi_inout1_AWID => grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_AWID,
        m_axi_inout1_AWLEN => grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_AWLEN,
        m_axi_inout1_AWSIZE => grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_AWSIZE,
        m_axi_inout1_AWBURST => grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_AWBURST,
        m_axi_inout1_AWLOCK => grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_AWLOCK,
        m_axi_inout1_AWCACHE => grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_AWCACHE,
        m_axi_inout1_AWPROT => grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_AWPROT,
        m_axi_inout1_AWQOS => grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_AWQOS,
        m_axi_inout1_AWREGION => grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_AWREGION,
        m_axi_inout1_AWUSER => grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_AWUSER,
        m_axi_inout1_WVALID => grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_WVALID,
        m_axi_inout1_WREADY => ap_const_logic_0,
        m_axi_inout1_WDATA => grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_WDATA,
        m_axi_inout1_WSTRB => grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_WSTRB,
        m_axi_inout1_WLAST => grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_WLAST,
        m_axi_inout1_WID => grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_WID,
        m_axi_inout1_WUSER => grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_WUSER,
        m_axi_inout1_ARVALID => grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_ARVALID,
        m_axi_inout1_ARREADY => m_axi_inout1_ARREADY,
        m_axi_inout1_ARADDR => grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_ARADDR,
        m_axi_inout1_ARID => grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_ARID,
        m_axi_inout1_ARLEN => grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_ARLEN,
        m_axi_inout1_ARSIZE => grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_ARSIZE,
        m_axi_inout1_ARBURST => grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_ARBURST,
        m_axi_inout1_ARLOCK => grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_ARLOCK,
        m_axi_inout1_ARCACHE => grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_ARCACHE,
        m_axi_inout1_ARPROT => grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_ARPROT,
        m_axi_inout1_ARQOS => grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_ARQOS,
        m_axi_inout1_ARREGION => grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_ARREGION,
        m_axi_inout1_ARUSER => grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_ARUSER,
        m_axi_inout1_RVALID => m_axi_inout1_RVALID,
        m_axi_inout1_RREADY => grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_RREADY,
        m_axi_inout1_RDATA => m_axi_inout1_RDATA,
        m_axi_inout1_RLAST => m_axi_inout1_RLAST,
        m_axi_inout1_RID => m_axi_inout1_RID,
        m_axi_inout1_RFIFONUM => m_axi_inout1_RFIFONUM,
        m_axi_inout1_RUSER => m_axi_inout1_RUSER,
        m_axi_inout1_RRESP => m_axi_inout1_RRESP,
        m_axi_inout1_BVALID => ap_const_logic_0,
        m_axi_inout1_BREADY => grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_BREADY,
        m_axi_inout1_BRESP => ap_const_lv2_0,
        m_axi_inout1_BID => ap_const_lv1_0,
        m_axi_inout1_BUSER => ap_const_lv1_0,
        in_stream_din => grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_in_stream_din,
        in_stream_num_data_valid => ap_const_lv7_0,
        in_stream_fifo_cap => ap_const_lv7_0,
        in_stream_full_n => in_stream_full_n,
        in_stream_write => grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_in_stream_write,
        sext_ln181_i => trunc_ln_i_reg_162,
        iters_i => iters_reg_151);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state10) and (grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_ap_done = ap_const_logic_1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_ap_start_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
                    grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_ap_ready = ap_const_logic_1)) then 
                    grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state1)) then
                iters_reg_151 <= iters_fu_120_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                trunc_ln_i_reg_162 <= src(63 downto 5);
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, m_axi_inout1_ARREADY, ap_CS_fsm_state2, grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_ap_done, ap_CS_fsm_state10)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((m_axi_inout1_ARREADY = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state10;
            when ap_ST_fsm_state10 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state10) and (grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_ap_done = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state10;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXX";
        end case;
    end process;
    add_ln70_fu_88_p2 <= std_logic_vector(unsigned(in_dim_cast_i_i_fu_84_p1) + unsigned(ap_const_lv11_7));
    and_ln_i_fu_108_p3 <= (lshr_ln_i_fu_94_p4 & ap_const_lv7_0);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state10 <= ap_CS_fsm(9);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state9 <= ap_CS_fsm(8);

    ap_ST_fsm_state10_blk_assign_proc : process(grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_ap_done)
    begin
        if ((grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_ap_done = ap_const_logic_0)) then 
            ap_ST_fsm_state10_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state10_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_ST_fsm_state1_blk_assign_proc : process(ap_start, ap_done_reg)
    begin
        if (((ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_ST_fsm_state2_blk_assign_proc : process(m_axi_inout1_ARREADY)
    begin
        if ((m_axi_inout1_ARREADY = ap_const_logic_0)) then 
            ap_ST_fsm_state2_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state2_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state3_blk <= ap_const_logic_0;
    ap_ST_fsm_state4_blk <= ap_const_logic_0;
    ap_ST_fsm_state5_blk <= ap_const_logic_0;
    ap_ST_fsm_state6_blk <= ap_const_logic_0;
    ap_ST_fsm_state7_blk <= ap_const_logic_0;
    ap_ST_fsm_state8_blk <= ap_const_logic_0;
    ap_ST_fsm_state9_blk <= ap_const_logic_0;

    ap_block_state1_assign_proc : process(ap_start, ap_done_reg)
    begin
                ap_block_state1 <= ((ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0));
    end process;


    ap_done_assign_proc : process(ap_done_reg, grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_ap_done, ap_CS_fsm_state10)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state10) and (grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_ap_done = ap_const_logic_1))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_ap_done, ap_CS_fsm_state10)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state10) and (grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_ap_done = ap_const_logic_1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_ap_start <= grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_ap_start_reg;
    in_dim_cast_i_i_fu_84_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(in_dim_offset),11));
    in_stream_din <= grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_in_stream_din;

    in_stream_write_assign_proc : process(grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_in_stream_write, ap_CS_fsm_state10)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            in_stream_write <= grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_in_stream_write;
        else 
            in_stream_write <= ap_const_logic_0;
        end if; 
    end process;


    inout1_blk_n_AR_assign_proc : process(m_axi_inout1_ARREADY, ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            inout1_blk_n_AR <= m_axi_inout1_ARREADY;
        else 
            inout1_blk_n_AR <= ap_const_logic_1;
        end if; 
    end process;

    iters_fu_120_p2 <= std_logic_vector(unsigned(zext_ln179_1_fu_116_p1) + unsigned(zext_ln179_fu_104_p1));
    lshr_ln_i_fu_94_p4 <= add_ln70_fu_88_p2(10 downto 3);

    m_axi_inout1_ARADDR_assign_proc : process(m_axi_inout1_ARREADY, ap_CS_fsm_state2, grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_ARADDR, ap_CS_fsm_state9, ap_CS_fsm_state10, sext_ln181_fu_140_p1)
    begin
        if (((m_axi_inout1_ARREADY = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            m_axi_inout1_ARADDR <= sext_ln181_fu_140_p1;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state9))) then 
            m_axi_inout1_ARADDR <= grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_ARADDR;
        else 
            m_axi_inout1_ARADDR <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    m_axi_inout1_ARBURST_assign_proc : process(grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_ARBURST, ap_CS_fsm_state9, ap_CS_fsm_state10)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state9))) then 
            m_axi_inout1_ARBURST <= grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_ARBURST;
        else 
            m_axi_inout1_ARBURST <= ap_const_lv2_0;
        end if; 
    end process;


    m_axi_inout1_ARCACHE_assign_proc : process(grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_ARCACHE, ap_CS_fsm_state9, ap_CS_fsm_state10)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state9))) then 
            m_axi_inout1_ARCACHE <= grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_ARCACHE;
        else 
            m_axi_inout1_ARCACHE <= ap_const_lv4_0;
        end if; 
    end process;


    m_axi_inout1_ARID_assign_proc : process(grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_ARID, ap_CS_fsm_state9, ap_CS_fsm_state10)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state9))) then 
            m_axi_inout1_ARID <= grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_ARID;
        else 
            m_axi_inout1_ARID <= ap_const_lv1_0;
        end if; 
    end process;


    m_axi_inout1_ARLEN_assign_proc : process(m_axi_inout1_ARREADY, ap_CS_fsm_state2, zext_ln179_2_fu_126_p1, grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_ARLEN, ap_CS_fsm_state9, ap_CS_fsm_state10)
    begin
        if (((m_axi_inout1_ARREADY = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            m_axi_inout1_ARLEN <= zext_ln179_2_fu_126_p1;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state9))) then 
            m_axi_inout1_ARLEN <= grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_ARLEN;
        else 
            m_axi_inout1_ARLEN <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    m_axi_inout1_ARLOCK_assign_proc : process(grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_ARLOCK, ap_CS_fsm_state9, ap_CS_fsm_state10)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state9))) then 
            m_axi_inout1_ARLOCK <= grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_ARLOCK;
        else 
            m_axi_inout1_ARLOCK <= ap_const_lv2_0;
        end if; 
    end process;


    m_axi_inout1_ARPROT_assign_proc : process(grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_ARPROT, ap_CS_fsm_state9, ap_CS_fsm_state10)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state9))) then 
            m_axi_inout1_ARPROT <= grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_ARPROT;
        else 
            m_axi_inout1_ARPROT <= ap_const_lv3_0;
        end if; 
    end process;


    m_axi_inout1_ARQOS_assign_proc : process(grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_ARQOS, ap_CS_fsm_state9, ap_CS_fsm_state10)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state9))) then 
            m_axi_inout1_ARQOS <= grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_ARQOS;
        else 
            m_axi_inout1_ARQOS <= ap_const_lv4_0;
        end if; 
    end process;


    m_axi_inout1_ARREGION_assign_proc : process(grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_ARREGION, ap_CS_fsm_state9, ap_CS_fsm_state10)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state9))) then 
            m_axi_inout1_ARREGION <= grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_ARREGION;
        else 
            m_axi_inout1_ARREGION <= ap_const_lv4_0;
        end if; 
    end process;


    m_axi_inout1_ARSIZE_assign_proc : process(grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_ARSIZE, ap_CS_fsm_state9, ap_CS_fsm_state10)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state9))) then 
            m_axi_inout1_ARSIZE <= grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_ARSIZE;
        else 
            m_axi_inout1_ARSIZE <= ap_const_lv3_0;
        end if; 
    end process;


    m_axi_inout1_ARUSER_assign_proc : process(grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_ARUSER, ap_CS_fsm_state9, ap_CS_fsm_state10)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state9))) then 
            m_axi_inout1_ARUSER <= grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_ARUSER;
        else 
            m_axi_inout1_ARUSER <= ap_const_lv1_0;
        end if; 
    end process;


    m_axi_inout1_ARVALID_assign_proc : process(m_axi_inout1_ARREADY, ap_CS_fsm_state2, grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_ARVALID, ap_CS_fsm_state9, ap_CS_fsm_state10)
    begin
        if (((m_axi_inout1_ARREADY = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            m_axi_inout1_ARVALID <= ap_const_logic_1;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state9))) then 
            m_axi_inout1_ARVALID <= grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_ARVALID;
        else 
            m_axi_inout1_ARVALID <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_inout1_AWADDR <= ap_const_lv64_0;
    m_axi_inout1_AWBURST <= ap_const_lv2_0;
    m_axi_inout1_AWCACHE <= ap_const_lv4_0;
    m_axi_inout1_AWID <= ap_const_lv1_0;
    m_axi_inout1_AWLEN <= ap_const_lv32_0;
    m_axi_inout1_AWLOCK <= ap_const_lv2_0;
    m_axi_inout1_AWPROT <= ap_const_lv3_0;
    m_axi_inout1_AWQOS <= ap_const_lv4_0;
    m_axi_inout1_AWREGION <= ap_const_lv4_0;
    m_axi_inout1_AWSIZE <= ap_const_lv3_0;
    m_axi_inout1_AWUSER <= ap_const_lv1_0;
    m_axi_inout1_AWVALID <= ap_const_logic_0;
    m_axi_inout1_BREADY <= ap_const_logic_0;

    m_axi_inout1_RREADY_assign_proc : process(grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_RREADY, ap_CS_fsm_state9, ap_CS_fsm_state10)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state9))) then 
            m_axi_inout1_RREADY <= grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74_m_axi_inout1_RREADY;
        else 
            m_axi_inout1_RREADY <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_inout1_WDATA <= ap_const_lv256_lc_1;
    m_axi_inout1_WID <= ap_const_lv1_0;
    m_axi_inout1_WLAST <= ap_const_logic_0;
    m_axi_inout1_WSTRB <= ap_const_lv32_0;
    m_axi_inout1_WUSER <= ap_const_lv1_0;
    m_axi_inout1_WVALID <= ap_const_logic_0;
        sext_ln181_fu_140_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(trunc_ln_i_fu_130_p4),64));

    trunc_ln_i_fu_130_p4 <= src(63 downto 5);
    zext_ln179_1_fu_116_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(and_ln_i_fu_108_p3),16));
    zext_ln179_2_fu_126_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(iters_reg_151),32));
    zext_ln179_fu_104_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(lshr_ln_i_fu_94_p4),16));
end behav;
