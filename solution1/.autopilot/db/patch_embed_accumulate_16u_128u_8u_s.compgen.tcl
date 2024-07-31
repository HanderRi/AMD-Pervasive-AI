# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ViT_act_fifo_w7_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {tmp_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ViT_act_fifo_w256_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {image_stream_i_U}
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
    id 308 \
    name patches31 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename patches31 \
    op interface \
    ports { patches31_address0 { O 8 vector } patches31_ce0 { O 1 bit } patches31_d0 { O 512 vector } patches31_q0 { I 512 vector } patches31_we0 { O 1 bit } patches31_address1 { O 8 vector } patches31_ce1 { O 1 bit } patches31_d1 { O 512 vector } patches31_q1 { I 512 vector } patches31_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patches31'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 310 \
    name patch_embed_bias \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename patch_embed_bias \
    op interface \
    ports { patch_embed_bias_address0 { O 5 vector } patch_embed_bias_ce0 { O 1 bit } patch_embed_bias_d0 { O 128 vector } patch_embed_bias_q0 { I 128 vector } patch_embed_bias_we0 { O 1 bit } patch_embed_bias_address1 { O 5 vector } patch_embed_bias_ce1 { O 1 bit } patch_embed_bias_d1 { O 128 vector } patch_embed_bias_q1 { I 128 vector } patch_embed_bias_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_embed_bias'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 311 \
    name patch_embed_weights \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename patch_embed_weights \
    op interface \
    ports { patch_embed_weights_address0 { O 11 vector } patch_embed_weights_ce0 { O 1 bit } patch_embed_weights_d0 { O 2048 vector } patch_embed_weights_q0 { I 2048 vector } patch_embed_weights_we0 { O 1 bit } patch_embed_weights_address1 { O 11 vector } patch_embed_weights_ce1 { O 1 bit } patch_embed_weights_d1 { O 2048 vector } patch_embed_weights_q1 { I 2048 vector } patch_embed_weights_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_embed_weights'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 306 \
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
    id 307 \
    name x \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x \
    op interface \
    ports { x { I 64 vector } x_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 309 \
    name y_block \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_y_block \
    op interface \
    ports { y_block { I 3 vector } y_block_ap_vld { I 1 bit } } \
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


