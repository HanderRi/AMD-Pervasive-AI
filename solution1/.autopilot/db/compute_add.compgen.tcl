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
    id 1064 \
    name inout2 \
    type other \
    dir IO \
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
    id 1065 \
    name x \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x \
    op interface \
    ports { x { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1066 \
    name inout3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_inout3 \
    op interface \
    ports { m_axi_inout3_AWVALID { O 1 bit } m_axi_inout3_AWREADY { I 1 bit } m_axi_inout3_AWADDR { O 64 vector } m_axi_inout3_AWID { O 1 vector } m_axi_inout3_AWLEN { O 32 vector } m_axi_inout3_AWSIZE { O 3 vector } m_axi_inout3_AWBURST { O 2 vector } m_axi_inout3_AWLOCK { O 2 vector } m_axi_inout3_AWCACHE { O 4 vector } m_axi_inout3_AWPROT { O 3 vector } m_axi_inout3_AWQOS { O 4 vector } m_axi_inout3_AWREGION { O 4 vector } m_axi_inout3_AWUSER { O 1 vector } m_axi_inout3_WVALID { O 1 bit } m_axi_inout3_WREADY { I 1 bit } m_axi_inout3_WDATA { O 256 vector } m_axi_inout3_WSTRB { O 32 vector } m_axi_inout3_WLAST { O 1 bit } m_axi_inout3_WID { O 1 vector } m_axi_inout3_WUSER { O 1 vector } m_axi_inout3_ARVALID { O 1 bit } m_axi_inout3_ARREADY { I 1 bit } m_axi_inout3_ARADDR { O 64 vector } m_axi_inout3_ARID { O 1 vector } m_axi_inout3_ARLEN { O 32 vector } m_axi_inout3_ARSIZE { O 3 vector } m_axi_inout3_ARBURST { O 2 vector } m_axi_inout3_ARLOCK { O 2 vector } m_axi_inout3_ARCACHE { O 4 vector } m_axi_inout3_ARPROT { O 3 vector } m_axi_inout3_ARQOS { O 4 vector } m_axi_inout3_ARREGION { O 4 vector } m_axi_inout3_ARUSER { O 1 vector } m_axi_inout3_RVALID { I 1 bit } m_axi_inout3_RREADY { O 1 bit } m_axi_inout3_RDATA { I 256 vector } m_axi_inout3_RLAST { I 1 bit } m_axi_inout3_RID { I 1 vector } m_axi_inout3_RFIFONUM { I 9 vector } m_axi_inout3_RUSER { I 1 vector } m_axi_inout3_RRESP { I 2 vector } m_axi_inout3_BVALID { I 1 bit } m_axi_inout3_BREADY { O 1 bit } m_axi_inout3_BRESP { I 2 vector } m_axi_inout3_BID { I 1 vector } m_axi_inout3_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1067 \
    name y \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_y \
    op interface \
    ports { y { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1068 \
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
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
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


# flow_control definition:
set InstName ViT_act_flow_control_loop_pipe_sequential_init_U
set CompName ViT_act_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix ViT_act_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


