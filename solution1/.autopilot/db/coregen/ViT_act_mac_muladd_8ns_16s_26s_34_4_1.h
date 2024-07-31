// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __ViT_act_mac_muladd_8ns_16s_26s_34_4_1__HH__
#define __ViT_act_mac_muladd_8ns_16s_26s_34_4_1__HH__
#include "ViT_act_mac_muladd_8ns_16s_26s_34_4_1_DSP48_5.h"

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int din2_WIDTH,
    int dout_WIDTH>
SC_MODULE(ViT_act_mac_muladd_8ns_16s_26s_34_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_in< sc_dt::sc_lv<din2_WIDTH> >   din2;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    ViT_act_mac_muladd_8ns_16s_26s_34_4_1_DSP48_5 ViT_act_mac_muladd_8ns_16s_26s_34_4_1_DSP48_5_U;

    SC_CTOR(ViT_act_mac_muladd_8ns_16s_26s_34_4_1):  ViT_act_mac_muladd_8ns_16s_26s_34_4_1_DSP48_5_U ("ViT_act_mac_muladd_8ns_16s_26s_34_4_1_DSP48_5_U") {
        ViT_act_mac_muladd_8ns_16s_26s_34_4_1_DSP48_5_U.clk(clk);
        ViT_act_mac_muladd_8ns_16s_26s_34_4_1_DSP48_5_U.rst(reset);
        ViT_act_mac_muladd_8ns_16s_26s_34_4_1_DSP48_5_U.ce(ce);
        ViT_act_mac_muladd_8ns_16s_26s_34_4_1_DSP48_5_U.in0(din0);
        ViT_act_mac_muladd_8ns_16s_26s_34_4_1_DSP48_5_U.in1(din1);
        ViT_act_mac_muladd_8ns_16s_26s_34_4_1_DSP48_5_U.in2(din2);
        ViT_act_mac_muladd_8ns_16s_26s_34_4_1_DSP48_5_U.dout(dout);

    }

};

#endif //
