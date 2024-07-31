# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ViT_act_fifo_w64_d5_S_x BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {attn_matmul_v_c_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ViT_act_fifo_w256_d2_S_x0 BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {v_stream_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ViT_act_fifo_w128_d2_S_x BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {attn_stream_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ViT_act_fifo_w256_d2_S_x0 BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {attn_softmax_info_stream_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ViT_act_fifo_w512_d2_S_x0 BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {qxk_out_stream_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ViT_act_fifo_w256_d2_S_x0 BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {attn_matmul_v_stream_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ViT_act_start_for_write_attn_matmul_v_U0 BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {start_for_write_attn_matmul_v_U0_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ViT_act_start_for_compute_attn_matmul_v_7_U0 BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {start_for_compute_attn_matmul_v_7_U0_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ViT_act_start_for_prepare_attn_U0 BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {start_for_prepare_attn_U0_U}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1057 \
    name inout2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_inout2 \
    op interface \
    ports { m_axi_inout2_AWVALID { O 1 bit } m_axi_inout2_AWREADY { I 1 bit } m_axi_inout2_AWADDR { O 64 vector } m_axi_inout2_AWID { O 1 vector } m_axi_inout2_AWLEN { O 32 vector } m_axi_inout2_AWSIZE { O 3 vector } m_axi_inout2_AWBURST { O 2 vector } m_axi_inout2_AWLOCK { O 2 vector } m_axi_inout2_AWCACHE { O 4 vector } m_axi_inout2_AWPROT { O 3 vector } m_axi_inout2_AWQOS { O 4 vector } m_axi_inout2_AWREGION { O 4 vector } m_axi_inout2_AWUSER { O 1 vector } m_axi_inout2_WVALID { O 1 bit } m_axi_inout2_WREADY { I 1 bit } m_axi_inout2_WDATA { O 256 vector } m_axi_inout2_WSTRB { O 32 vector } m_axi_inout2_WLAST { O 1 bit } m_axi_inout2_WID { O 1 vector } m_axi_inout2_WUSER { O 1 vector } m_axi_inout2_ARVALID { O 1 bit } m_axi_inout2_ARREADY { I 1 bit } m_axi_inout2_ARADDR { O 64 vector } m_axi_inout2_ARID { O 1 vector } m_axi_inout2_ARLEN { O 32 vector } m_axi_inout2_ARSIZE { O 3 vector } m_axi_inout2_ARBURST { O 2 vector } m_axi_inout2_ARLOCK { O 2 vector } m_axi_inout2_ARCACHE { O 4 vector } m_axi_inout2_ARPROT { O 3 vector } m_axi_inout2_ARQOS { O 4 vector } m_axi_inout2_ARREGION { O 4 vector } m_axi_inout2_ARUSER { O 1 vector } m_axi_inout2_RVALID { I 1 bit } m_axi_inout2_RREADY { O 1 bit } m_axi_inout2_RDATA { I 256 vector } m_axi_inout2_RLAST { I 1 bit } m_axi_inout2_RID { I 1 vector } m_axi_inout2_RFIFONUM { I 9 vector } m_axi_inout2_RUSER { I 1 vector } m_axi_inout2_RRESP { I 2 vector } m_axi_inout2_BVALID { I 1 bit } m_axi_inout2_BREADY { O 1 bit } m_axi_inout2_BRESP { I 2 vector } m_axi_inout2_BID { I 1 vector } m_axi_inout2_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1058 \
    name v \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v \
    op interface \
    ports { v { I 64 vector } v_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1059 \
    name inout1 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_inout1 \
    op interface \
    ports { m_axi_inout1_AWVALID { O 1 bit } m_axi_inout1_AWREADY { I 1 bit } m_axi_inout1_AWADDR { O 64 vector } m_axi_inout1_AWID { O 1 vector } m_axi_inout1_AWLEN { O 32 vector } m_axi_inout1_AWSIZE { O 3 vector } m_axi_inout1_AWBURST { O 2 vector } m_axi_inout1_AWLOCK { O 2 vector } m_axi_inout1_AWCACHE { O 4 vector } m_axi_inout1_AWPROT { O 3 vector } m_axi_inout1_AWQOS { O 4 vector } m_axi_inout1_AWREGION { O 4 vector } m_axi_inout1_AWUSER { O 1 vector } m_axi_inout1_WVALID { O 1 bit } m_axi_inout1_WREADY { I 1 bit } m_axi_inout1_WDATA { O 256 vector } m_axi_inout1_WSTRB { O 32 vector } m_axi_inout1_WLAST { O 1 bit } m_axi_inout1_WID { O 1 vector } m_axi_inout1_WUSER { O 1 vector } m_axi_inout1_ARVALID { O 1 bit } m_axi_inout1_ARREADY { I 1 bit } m_axi_inout1_ARADDR { O 64 vector } m_axi_inout1_ARID { O 1 vector } m_axi_inout1_ARLEN { O 32 vector } m_axi_inout1_ARSIZE { O 3 vector } m_axi_inout1_ARBURST { O 2 vector } m_axi_inout1_ARLOCK { O 2 vector } m_axi_inout1_ARCACHE { O 4 vector } m_axi_inout1_ARPROT { O 3 vector } m_axi_inout1_ARQOS { O 4 vector } m_axi_inout1_ARREGION { O 4 vector } m_axi_inout1_ARUSER { O 1 vector } m_axi_inout1_RVALID { I 1 bit } m_axi_inout1_RREADY { O 1 bit } m_axi_inout1_RDATA { I 256 vector } m_axi_inout1_RLAST { I 1 bit } m_axi_inout1_RID { I 1 vector } m_axi_inout1_RFIFONUM { I 9 vector } m_axi_inout1_RUSER { I 1 vector } m_axi_inout1_RRESP { I 2 vector } m_axi_inout1_BVALID { I 1 bit } m_axi_inout1_BREADY { O 1 bit } m_axi_inout1_BRESP { I 2 vector } m_axi_inout1_BID { I 1 vector } m_axi_inout1_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1060 \
    name attn \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_attn \
    op interface \
    ports { attn { I 64 vector } attn_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1061 \
    name inout4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_inout4 \
    op interface \
    ports { m_axi_inout4_AWVALID { O 1 bit } m_axi_inout4_AWREADY { I 1 bit } m_axi_inout4_AWADDR { O 64 vector } m_axi_inout4_AWID { O 1 vector } m_axi_inout4_AWLEN { O 32 vector } m_axi_inout4_AWSIZE { O 3 vector } m_axi_inout4_AWBURST { O 2 vector } m_axi_inout4_AWLOCK { O 2 vector } m_axi_inout4_AWCACHE { O 4 vector } m_axi_inout4_AWPROT { O 3 vector } m_axi_inout4_AWQOS { O 4 vector } m_axi_inout4_AWREGION { O 4 vector } m_axi_inout4_AWUSER { O 1 vector } m_axi_inout4_WVALID { O 1 bit } m_axi_inout4_WREADY { I 1 bit } m_axi_inout4_WDATA { O 256 vector } m_axi_inout4_WSTRB { O 32 vector } m_axi_inout4_WLAST { O 1 bit } m_axi_inout4_WID { O 1 vector } m_axi_inout4_WUSER { O 1 vector } m_axi_inout4_ARVALID { O 1 bit } m_axi_inout4_ARREADY { I 1 bit } m_axi_inout4_ARADDR { O 64 vector } m_axi_inout4_ARID { O 1 vector } m_axi_inout4_ARLEN { O 32 vector } m_axi_inout4_ARSIZE { O 3 vector } m_axi_inout4_ARBURST { O 2 vector } m_axi_inout4_ARLOCK { O 2 vector } m_axi_inout4_ARCACHE { O 4 vector } m_axi_inout4_ARPROT { O 3 vector } m_axi_inout4_ARQOS { O 4 vector } m_axi_inout4_ARREGION { O 4 vector } m_axi_inout4_ARUSER { O 1 vector } m_axi_inout4_RVALID { I 1 bit } m_axi_inout4_RREADY { O 1 bit } m_axi_inout4_RDATA { I 256 vector } m_axi_inout4_RLAST { I 1 bit } m_axi_inout4_RID { I 1 vector } m_axi_inout4_RFIFONUM { I 9 vector } m_axi_inout4_RUSER { I 1 vector } m_axi_inout4_RRESP { I 2 vector } m_axi_inout4_BVALID { I 1 bit } m_axi_inout4_BREADY { O 1 bit } m_axi_inout4_BRESP { I 2 vector } m_axi_inout4_BID { I 1 vector } m_axi_inout4_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1062 \
    name attn_softmax_info \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_attn_softmax_info \
    op interface \
    ports { attn_softmax_info { I 64 vector } attn_softmax_info_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1063 \
    name attn_matmul_v \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_attn_matmul_v \
    op interface \
    ports { attn_matmul_v { I 64 vector } attn_matmul_v_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


