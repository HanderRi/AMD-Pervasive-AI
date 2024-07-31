# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 943 \
    name attn_softmax_info_stream \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_attn_softmax_info_stream \
    op interface \
    ports { attn_softmax_info_stream_dout { I 256 vector } attn_softmax_info_stream_num_data_valid { I 2 vector } attn_softmax_info_stream_fifo_cap { I 2 vector } attn_softmax_info_stream_empty_n { I 1 bit } attn_softmax_info_stream_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 944 \
    name inout4 \
    type other \
    dir O \
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
    id 945 \
    name attn_softmax_info \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_attn_softmax_info \
    op interface \
    ports { attn_softmax_info_dout { I 64 vector } attn_softmax_info_num_data_valid { I 4 vector } attn_softmax_info_fifo_cap { I 4 vector } attn_softmax_info_empty_n { I 1 bit } attn_softmax_info_read { O 1 bit } } \
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


