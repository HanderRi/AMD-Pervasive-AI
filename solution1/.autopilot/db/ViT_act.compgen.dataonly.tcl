# This script segment is generated automatically by AutoPilot

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


