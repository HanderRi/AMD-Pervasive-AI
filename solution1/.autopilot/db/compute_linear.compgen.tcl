# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ViT_act_fifo_w64_d4_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {dst_c_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ViT_act_fifo_w512_d48_A BINDTYPE {storage} TYPE {fifo} IMPL {memory} ALLOW_PRAGMA 1 INSTNAME {in_stream_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ViT_act_fifo_w512_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {out_stream_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ViT_act_fifo_w10_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {out_dim_offset_c_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ViT_act_start_for_write_out_stream_direct_U0 BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {start_for_write_out_stream_direct_U0_U}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 832 \
    name weights \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights \
    op interface \
    ports { weights_address0 { O 10 vector } weights_ce0 { O 1 bit } weights_d0 { O 4096 vector } weights_q0 { I 4096 vector } weights_we0 { O 1 bit } weights_address1 { O 10 vector } weights_ce1 { O 1 bit } weights_d1 { O 4096 vector } weights_q1 { I 4096 vector } weights_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 833 \
    name bias \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bias \
    op interface \
    ports { bias_address0 { O 6 vector } bias_ce0 { O 1 bit } bias_d0 { O 288 vector } bias_q0 { I 288 vector } bias_we0 { O 1 bit } bias_address1 { O 6 vector } bias_ce1 { O 1 bit } bias_d1 { O 288 vector } bias_q1 { I 288 vector } bias_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bias'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 828 \
    name inout2 \
    type other \
    dir O \
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
    id 829 \
    name dst \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dst \
    op interface \
    ports { dst { I 64 vector } dst_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 830 \
    name inout1 \
    type other \
    dir I \
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
    id 831 \
    name src \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_src \
    op interface \
    ports { src { I 64 vector } src_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 834 \
    name out_dim_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_dim_offset \
    op interface \
    ports { out_dim_offset { I 32 vector } out_dim_offset_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 835 \
    name in_dim_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_dim_offset \
    op interface \
    ports { in_dim_offset { I 32 vector } in_dim_offset_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 836 \
    name use_gelu_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_use_gelu_offset \
    op interface \
    ports { use_gelu_offset { I 1 bit } use_gelu_offset_ap_vld { I 1 bit } } \
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


