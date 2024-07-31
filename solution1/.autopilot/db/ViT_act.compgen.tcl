# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ViT_act_patch_embed_bias_r_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ViT_act_patch_embed_weights_r_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ViT_act_linear_weights_ping_data_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ViT_act_linear_bias_ping_data_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ViT_act_norm2_weights_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ViT_act_inout1_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ViT_act_inout2_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ViT_act_inout3_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ViT_act_inout4_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ViT_act_weights_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set axilite_register_dict [dict create]
set port_control {
images { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 16
	offset_end 27
}
x { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 28
	offset_end 39
}
tmp1 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 40
	offset_end 51
}
tmp2 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 52
	offset_end 63
}
tmp3 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 64
	offset_end 75
}
tmp_hidden { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 76
	offset_end 87
}
attn { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 88
	offset_end 99
}
attn_softmax_info { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 100
	offset_end 111
}
patch_embed_weights { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 112
	offset_end 123
}
patch_embed_bias { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 124
	offset_end 135
}
pos_embed { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 136
	offset_end 147
}
attn_weights { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 148
	offset_end 159
}
attn_bias { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 160
	offset_end 171
}
vit_weights_l1 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 172
	offset_end 183
}
vit_bias_l1 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 184
	offset_end 195
}
vit_weights_l2 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 196
	offset_end 207
}
vit_bias_l2 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 208
	offset_end 219
}
norm_weights { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 220
	offset_end 231
}
norm_bias { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 232
	offset_end 243
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


# Native S_AXILite:
if {${::AESL::PGuard_simmodel_gen}} {
	if {[info proc ::AESL_LIB_XILADAPTER::s_axilite_gen] == "::AESL_LIB_XILADAPTER::s_axilite_gen"} {
		eval "::AESL_LIB_XILADAPTER::s_axilite_gen { \
			id 1098 \
			corename ViT_act_control_axilite \
			name ViT_act_control_s_axi \
			ports {$port_control} \
			op interface \
			interrupt_clear_mode TOW \
			interrupt_trigger_type default \
			is_flushable 0 \
			is_datawidth64 0 \
			is_addrwidth64 1 \
		} "
	} else {
		puts "@W \[IMPL-110\] Cannot find AXI Lite interface model in the library. Ignored generation of AXI Lite  interface for 'control'"
	}
}

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ViT_act_control_s_axi BINDTYPE interface TYPE interface_s_axilite
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1104 \
    name num_images \
    type other \
    dir I \
    reset_level 0 \
    sync_rst true \
    corename dc_num_images \
    op interface \
    ports { num_images { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1105 \
    name reload_on_time_weights \
    type other \
    dir I \
    reset_level 0 \
    sync_rst true \
    corename dc_reload_on_time_weights \
    op interface \
    ports { reload_on_time_weights { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -1 \
    name ${PortName} \
    reset_level 0 \
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
set PortName ap_rst_n
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -2 \
    name ${PortName} \
    reset_level 0 \
    sync_rst true \
    corename apif_ap_rst_n \
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


