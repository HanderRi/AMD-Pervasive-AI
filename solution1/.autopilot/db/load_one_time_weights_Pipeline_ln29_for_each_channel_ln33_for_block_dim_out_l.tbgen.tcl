set moduleName load_one_time_weights_Pipeline_ln29_for_each_channel_ln33_for_block_dim_out_l
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {load_one_time_weights_Pipeline__ln29_for_each_channel__ln33_for_block_dim_out__l}
set C_modelType { void 0 }
set C_modelArgList {
	{ patch_embed_weights_load int 64 regular  }
	{ weights int 256 regular {axi_master 0}  }
	{ zext_ln38 int 8 regular  }
	{ zext_ln38_1 int 8 regular  }
	{ zext_ln38_2 int 8 regular  }
	{ zext_ln38_3 int 8 regular  }
	{ zext_ln38_4 int 8 regular  }
	{ zext_ln38_5 int 8 regular  }
	{ zext_ln38_6 int 8 regular  }
	{ zext_ln38_7 int 8 regular  }
	{ zext_ln38_8 int 8 regular  }
	{ zext_ln38_9 int 8 regular  }
	{ zext_ln38_10 int 8 regular  }
	{ zext_ln38_11 int 8 regular  }
	{ zext_ln38_12 int 8 regular  }
	{ zext_ln38_13 int 8 regular  }
	{ zext_ln38_14 int 8 regular  }
	{ zext_ln29 int 8 regular  }
	{ patch_embed_weights int 2048 regular {array 1152 { 0 3 } 0 1 } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "patch_embed_weights_load", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "weights", "interface" : "axi_master", "bitwidth" : 256, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "patch_embed_weights","offset": { "type": "dynamic","port_name": "patch_embed_weights","bundle": "control"},"direction": "READONLY"},{"cName": "patch_embed_bias","offset": { "type": "dynamic","port_name": "patch_embed_bias","bundle": "control"},"direction": "READONLY"},{"cName": "pos_embed","offset": { "type": "dynamic","port_name": "pos_embed","bundle": "control"},"direction": "READONLY"},{"cName": "attn_weights","offset": { "type": "dynamic","port_name": "attn_weights","bundle": "control"},"direction": "READONLY"},{"cName": "attn_bias","offset": { "type": "dynamic","port_name": "attn_bias","bundle": "control"},"direction": "READONLY"},{"cName": "vit_weights_l1","offset": { "type": "dynamic","port_name": "vit_weights_l1","bundle": "control"},"direction": "READONLY"},{"cName": "vit_bias_l1","offset": { "type": "dynamic","port_name": "vit_bias_l1","bundle": "control"},"direction": "READONLY"},{"cName": "vit_weights_l2","offset": { "type": "dynamic","port_name": "vit_weights_l2","bundle": "control"},"direction": "READONLY"},{"cName": "vit_bias_l2","offset": { "type": "dynamic","port_name": "vit_bias_l2","bundle": "control"},"direction": "READONLY"},{"cName": "norm_weights","offset": { "type": "dynamic","port_name": "norm_weights","bundle": "control"},"direction": "READONLY"},{"cName": "norm_bias","offset": { "type": "dynamic","port_name": "norm_bias","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "zext_ln38", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln38_1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln38_2", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln38_3", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln38_4", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln38_5", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln38_6", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln38_7", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln38_8", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln38_9", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln38_10", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln38_11", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln38_12", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln38_13", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln38_14", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln29", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "patch_embed_weights", "interface" : "memory", "bitwidth" : 2048, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 73
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_weights_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_weights_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_weights_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_weights_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_weights_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_weights_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_weights_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_weights_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_weights_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_weights_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_weights_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_weights_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_weights_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_weights_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_weights_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_weights_WDATA sc_out sc_lv 256 signal 1 } 
	{ m_axi_weights_WSTRB sc_out sc_lv 32 signal 1 } 
	{ m_axi_weights_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_weights_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_weights_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_weights_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_weights_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_weights_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_weights_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_weights_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_weights_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_weights_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_weights_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_weights_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_weights_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_weights_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_weights_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_weights_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_weights_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_weights_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_weights_RDATA sc_in sc_lv 256 signal 1 } 
	{ m_axi_weights_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_weights_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_weights_RFIFONUM sc_in sc_lv 9 signal 1 } 
	{ m_axi_weights_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_weights_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_weights_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_weights_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_weights_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_weights_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_weights_BUSER sc_in sc_lv 1 signal 1 } 
	{ patch_embed_weights_load sc_in sc_lv 64 signal 0 } 
	{ zext_ln38 sc_in sc_lv 8 signal 2 } 
	{ zext_ln38_1 sc_in sc_lv 8 signal 3 } 
	{ zext_ln38_2 sc_in sc_lv 8 signal 4 } 
	{ zext_ln38_3 sc_in sc_lv 8 signal 5 } 
	{ zext_ln38_4 sc_in sc_lv 8 signal 6 } 
	{ zext_ln38_5 sc_in sc_lv 8 signal 7 } 
	{ zext_ln38_6 sc_in sc_lv 8 signal 8 } 
	{ zext_ln38_7 sc_in sc_lv 8 signal 9 } 
	{ zext_ln38_8 sc_in sc_lv 8 signal 10 } 
	{ zext_ln38_9 sc_in sc_lv 8 signal 11 } 
	{ zext_ln38_10 sc_in sc_lv 8 signal 12 } 
	{ zext_ln38_11 sc_in sc_lv 8 signal 13 } 
	{ zext_ln38_12 sc_in sc_lv 8 signal 14 } 
	{ zext_ln38_13 sc_in sc_lv 8 signal 15 } 
	{ zext_ln38_14 sc_in sc_lv 8 signal 16 } 
	{ zext_ln29 sc_in sc_lv 8 signal 17 } 
	{ patch_embed_weights_address0 sc_out sc_lv 11 signal 18 } 
	{ patch_embed_weights_ce0 sc_out sc_logic 1 signal 18 } 
	{ patch_embed_weights_we0 sc_out sc_logic 1 signal 18 } 
	{ patch_embed_weights_d0 sc_out sc_lv 2048 signal 18 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_weights_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "AWVALID" }} , 
 	{ "name": "m_axi_weights_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "AWREADY" }} , 
 	{ "name": "m_axi_weights_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "weights", "role": "AWADDR" }} , 
 	{ "name": "m_axi_weights_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "AWID" }} , 
 	{ "name": "m_axi_weights_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights", "role": "AWLEN" }} , 
 	{ "name": "m_axi_weights_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "weights", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_weights_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "weights", "role": "AWBURST" }} , 
 	{ "name": "m_axi_weights_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "weights", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_weights_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weights", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_weights_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "weights", "role": "AWPROT" }} , 
 	{ "name": "m_axi_weights_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weights", "role": "AWQOS" }} , 
 	{ "name": "m_axi_weights_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weights", "role": "AWREGION" }} , 
 	{ "name": "m_axi_weights_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "AWUSER" }} , 
 	{ "name": "m_axi_weights_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "WVALID" }} , 
 	{ "name": "m_axi_weights_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "WREADY" }} , 
 	{ "name": "m_axi_weights_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "weights", "role": "WDATA" }} , 
 	{ "name": "m_axi_weights_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights", "role": "WSTRB" }} , 
 	{ "name": "m_axi_weights_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "WLAST" }} , 
 	{ "name": "m_axi_weights_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "WID" }} , 
 	{ "name": "m_axi_weights_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "WUSER" }} , 
 	{ "name": "m_axi_weights_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "ARVALID" }} , 
 	{ "name": "m_axi_weights_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "ARREADY" }} , 
 	{ "name": "m_axi_weights_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "weights", "role": "ARADDR" }} , 
 	{ "name": "m_axi_weights_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "ARID" }} , 
 	{ "name": "m_axi_weights_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights", "role": "ARLEN" }} , 
 	{ "name": "m_axi_weights_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "weights", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_weights_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "weights", "role": "ARBURST" }} , 
 	{ "name": "m_axi_weights_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "weights", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_weights_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weights", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_weights_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "weights", "role": "ARPROT" }} , 
 	{ "name": "m_axi_weights_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weights", "role": "ARQOS" }} , 
 	{ "name": "m_axi_weights_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weights", "role": "ARREGION" }} , 
 	{ "name": "m_axi_weights_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "ARUSER" }} , 
 	{ "name": "m_axi_weights_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "RVALID" }} , 
 	{ "name": "m_axi_weights_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "RREADY" }} , 
 	{ "name": "m_axi_weights_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "weights", "role": "RDATA" }} , 
 	{ "name": "m_axi_weights_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "RLAST" }} , 
 	{ "name": "m_axi_weights_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "RID" }} , 
 	{ "name": "m_axi_weights_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weights", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_weights_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "RUSER" }} , 
 	{ "name": "m_axi_weights_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "weights", "role": "RRESP" }} , 
 	{ "name": "m_axi_weights_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "BVALID" }} , 
 	{ "name": "m_axi_weights_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "BREADY" }} , 
 	{ "name": "m_axi_weights_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "weights", "role": "BRESP" }} , 
 	{ "name": "m_axi_weights_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "BID" }} , 
 	{ "name": "m_axi_weights_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "BUSER" }} , 
 	{ "name": "patch_embed_weights_load", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "patch_embed_weights_load", "role": "default" }} , 
 	{ "name": "zext_ln38", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln38", "role": "default" }} , 
 	{ "name": "zext_ln38_1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln38_1", "role": "default" }} , 
 	{ "name": "zext_ln38_2", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln38_2", "role": "default" }} , 
 	{ "name": "zext_ln38_3", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln38_3", "role": "default" }} , 
 	{ "name": "zext_ln38_4", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln38_4", "role": "default" }} , 
 	{ "name": "zext_ln38_5", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln38_5", "role": "default" }} , 
 	{ "name": "zext_ln38_6", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln38_6", "role": "default" }} , 
 	{ "name": "zext_ln38_7", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln38_7", "role": "default" }} , 
 	{ "name": "zext_ln38_8", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln38_8", "role": "default" }} , 
 	{ "name": "zext_ln38_9", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln38_9", "role": "default" }} , 
 	{ "name": "zext_ln38_10", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln38_10", "role": "default" }} , 
 	{ "name": "zext_ln38_11", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln38_11", "role": "default" }} , 
 	{ "name": "zext_ln38_12", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln38_12", "role": "default" }} , 
 	{ "name": "zext_ln38_13", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln38_13", "role": "default" }} , 
 	{ "name": "zext_ln38_14", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln38_14", "role": "default" }} , 
 	{ "name": "zext_ln29", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln29", "role": "default" }} , 
 	{ "name": "patch_embed_weights_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "patch_embed_weights", "role": "address0" }} , 
 	{ "name": "patch_embed_weights_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_embed_weights", "role": "ce0" }} , 
 	{ "name": "patch_embed_weights_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_embed_weights", "role": "we0" }} , 
 	{ "name": "patch_embed_weights_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":2048, "type": "signal", "bundle":{"name": "patch_embed_weights", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "load_one_time_weights_Pipeline_ln29_for_each_channel_ln33_for_block_dim_out_l",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "147466", "EstimateLatencyMax" : "147466",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "patch_embed_weights_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "weights_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "weights_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "zext_ln38", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln38_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln38_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln38_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln38_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln38_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln38_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln38_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln38_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln38_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln38_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln38_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln38_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln38_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln38_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln29", "Type" : "None", "Direction" : "I"},
			{"Name" : "patch_embed_weights", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "_ln29_for_each_channel__ln33_for_block_dim_out__ln35_for_offset_dim_out", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage9", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage9_subdone", "QuitState" : "ap_ST_fsm_pp0_stage9", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage9_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	load_one_time_weights_Pipeline_ln29_for_each_channel_ln33_for_block_dim_out_l {
		patch_embed_weights_load {Type I LastRead 0 FirstWrite -1}
		weights {Type I LastRead 24 FirstWrite -1}
		zext_ln38 {Type I LastRead 0 FirstWrite -1}
		zext_ln38_1 {Type I LastRead 0 FirstWrite -1}
		zext_ln38_2 {Type I LastRead 0 FirstWrite -1}
		zext_ln38_3 {Type I LastRead 0 FirstWrite -1}
		zext_ln38_4 {Type I LastRead 0 FirstWrite -1}
		zext_ln38_5 {Type I LastRead 0 FirstWrite -1}
		zext_ln38_6 {Type I LastRead 0 FirstWrite -1}
		zext_ln38_7 {Type I LastRead 0 FirstWrite -1}
		zext_ln38_8 {Type I LastRead 0 FirstWrite -1}
		zext_ln38_9 {Type I LastRead 0 FirstWrite -1}
		zext_ln38_10 {Type I LastRead 0 FirstWrite -1}
		zext_ln38_11 {Type I LastRead 0 FirstWrite -1}
		zext_ln38_12 {Type I LastRead 0 FirstWrite -1}
		zext_ln38_13 {Type I LastRead 0 FirstWrite -1}
		zext_ln38_14 {Type I LastRead 0 FirstWrite -1}
		zext_ln29 {Type I LastRead 0 FirstWrite -1}
		patch_embed_weights {Type O LastRead -1 FirstWrite 25}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "147466", "Max" : "147466"}
	, {"Name" : "Interval", "Min" : "147466", "Max" : "147466"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	patch_embed_weights_load { ap_none {  { patch_embed_weights_load in_data 0 64 } } }
	 { m_axi {  { m_axi_weights_AWVALID VALID 1 1 }  { m_axi_weights_AWREADY READY 0 1 }  { m_axi_weights_AWADDR ADDR 1 64 }  { m_axi_weights_AWID ID 1 1 }  { m_axi_weights_AWLEN SIZE 1 32 }  { m_axi_weights_AWSIZE BURST 1 3 }  { m_axi_weights_AWBURST LOCK 1 2 }  { m_axi_weights_AWLOCK CACHE 1 2 }  { m_axi_weights_AWCACHE PROT 1 4 }  { m_axi_weights_AWPROT QOS 1 3 }  { m_axi_weights_AWQOS REGION 1 4 }  { m_axi_weights_AWREGION USER 1 4 }  { m_axi_weights_AWUSER DATA 1 1 }  { m_axi_weights_WVALID VALID 1 1 }  { m_axi_weights_WREADY READY 0 1 }  { m_axi_weights_WDATA FIFONUM 1 256 }  { m_axi_weights_WSTRB STRB 1 32 }  { m_axi_weights_WLAST LAST 1 1 }  { m_axi_weights_WID ID 1 1 }  { m_axi_weights_WUSER DATA 1 1 }  { m_axi_weights_ARVALID VALID 1 1 }  { m_axi_weights_ARREADY READY 0 1 }  { m_axi_weights_ARADDR ADDR 1 64 }  { m_axi_weights_ARID ID 1 1 }  { m_axi_weights_ARLEN SIZE 1 32 }  { m_axi_weights_ARSIZE BURST 1 3 }  { m_axi_weights_ARBURST LOCK 1 2 }  { m_axi_weights_ARLOCK CACHE 1 2 }  { m_axi_weights_ARCACHE PROT 1 4 }  { m_axi_weights_ARPROT QOS 1 3 }  { m_axi_weights_ARQOS REGION 1 4 }  { m_axi_weights_ARREGION USER 1 4 }  { m_axi_weights_ARUSER DATA 1 1 }  { m_axi_weights_RVALID VALID 0 1 }  { m_axi_weights_RREADY READY 1 1 }  { m_axi_weights_RDATA FIFONUM 0 256 }  { m_axi_weights_RLAST LAST 0 1 }  { m_axi_weights_RID ID 0 1 }  { m_axi_weights_RFIFONUM LEN 0 9 }  { m_axi_weights_RUSER DATA 0 1 }  { m_axi_weights_RRESP RESP 0 2 }  { m_axi_weights_BVALID VALID 0 1 }  { m_axi_weights_BREADY READY 1 1 }  { m_axi_weights_BRESP RESP 0 2 }  { m_axi_weights_BID ID 0 1 }  { m_axi_weights_BUSER DATA 0 1 } } }
	zext_ln38 { ap_none {  { zext_ln38 in_data 0 8 } } }
	zext_ln38_1 { ap_none {  { zext_ln38_1 in_data 0 8 } } }
	zext_ln38_2 { ap_none {  { zext_ln38_2 in_data 0 8 } } }
	zext_ln38_3 { ap_none {  { zext_ln38_3 in_data 0 8 } } }
	zext_ln38_4 { ap_none {  { zext_ln38_4 in_data 0 8 } } }
	zext_ln38_5 { ap_none {  { zext_ln38_5 in_data 0 8 } } }
	zext_ln38_6 { ap_none {  { zext_ln38_6 in_data 0 8 } } }
	zext_ln38_7 { ap_none {  { zext_ln38_7 in_data 0 8 } } }
	zext_ln38_8 { ap_none {  { zext_ln38_8 in_data 0 8 } } }
	zext_ln38_9 { ap_none {  { zext_ln38_9 in_data 0 8 } } }
	zext_ln38_10 { ap_none {  { zext_ln38_10 in_data 0 8 } } }
	zext_ln38_11 { ap_none {  { zext_ln38_11 in_data 0 8 } } }
	zext_ln38_12 { ap_none {  { zext_ln38_12 in_data 0 8 } } }
	zext_ln38_13 { ap_none {  { zext_ln38_13 in_data 0 8 } } }
	zext_ln38_14 { ap_none {  { zext_ln38_14 in_data 0 8 } } }
	zext_ln29 { ap_none {  { zext_ln29 in_data 0 8 } } }
	patch_embed_weights { ap_memory {  { patch_embed_weights_address0 mem_address 1 11 }  { patch_embed_weights_ce0 mem_ce 1 1 }  { patch_embed_weights_we0 mem_we 1 1 }  { patch_embed_weights_d0 mem_din 1 2048 } } }
}
