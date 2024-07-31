# This script segment is generated automatically by AutoPilot

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
    id 321 \
    name patches31 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename patches31 \
    op interface \
    ports { patches31_address0 { O 8 vector } patches31_ce0 { O 1 bit } patches31_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patches31'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 322 \
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
    id 323 \
    name out_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_r \
    op interface \
    ports { out_r { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 324 \
    name weights \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights \
    op interface \
    ports { m_axi_weights_AWVALID { O 1 bit } m_axi_weights_AWREADY { I 1 bit } m_axi_weights_AWADDR { O 64 vector } m_axi_weights_AWID { O 1 vector } m_axi_weights_AWLEN { O 32 vector } m_axi_weights_AWSIZE { O 3 vector } m_axi_weights_AWBURST { O 2 vector } m_axi_weights_AWLOCK { O 2 vector } m_axi_weights_AWCACHE { O 4 vector } m_axi_weights_AWPROT { O 3 vector } m_axi_weights_AWQOS { O 4 vector } m_axi_weights_AWREGION { O 4 vector } m_axi_weights_AWUSER { O 1 vector } m_axi_weights_WVALID { O 1 bit } m_axi_weights_WREADY { I 1 bit } m_axi_weights_WDATA { O 256 vector } m_axi_weights_WSTRB { O 32 vector } m_axi_weights_WLAST { O 1 bit } m_axi_weights_WID { O 1 vector } m_axi_weights_WUSER { O 1 vector } m_axi_weights_ARVALID { O 1 bit } m_axi_weights_ARREADY { I 1 bit } m_axi_weights_ARADDR { O 64 vector } m_axi_weights_ARID { O 1 vector } m_axi_weights_ARLEN { O 32 vector } m_axi_weights_ARSIZE { O 3 vector } m_axi_weights_ARBURST { O 2 vector } m_axi_weights_ARLOCK { O 2 vector } m_axi_weights_ARCACHE { O 4 vector } m_axi_weights_ARPROT { O 3 vector } m_axi_weights_ARQOS { O 4 vector } m_axi_weights_ARREGION { O 4 vector } m_axi_weights_ARUSER { O 1 vector } m_axi_weights_RVALID { I 1 bit } m_axi_weights_RREADY { O 1 bit } m_axi_weights_RDATA { I 256 vector } m_axi_weights_RLAST { I 1 bit } m_axi_weights_RID { I 1 vector } m_axi_weights_RFIFONUM { I 9 vector } m_axi_weights_RUSER { I 1 vector } m_axi_weights_RRESP { I 2 vector } m_axi_weights_BVALID { I 1 bit } m_axi_weights_BREADY { O 1 bit } m_axi_weights_BRESP { I 2 vector } m_axi_weights_BID { I 1 vector } m_axi_weights_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 325 \
    name pos_embed \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pos_embed \
    op interface \
    ports { pos_embed { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 326 \
    name y_block \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_y_block \
    op interface \
    ports { y_block { I 3 vector } } \
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


