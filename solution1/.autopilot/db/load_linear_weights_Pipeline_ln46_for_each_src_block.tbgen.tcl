set moduleName load_linear_weights_Pipeline_ln46_for_each_src_block
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
set C_modelName {load_linear_weights_Pipeline__ln46_for_each_src_block}
set C_modelType { void 0 }
set C_modelArgList {
	{ num_src_blocks int 16 regular  }
	{ zext_ln30 int 10 regular  }
	{ weights_src int 64 regular  }
	{ zext_ln28 int 6 regular  }
	{ weights int 256 regular {axi_master 0}  }
	{ zext_ln65_1 int 8 regular  }
	{ zext_ln65 int 8 regular  }
	{ zext_ln65_2 int 8 regular  }
	{ zext_ln65_3 int 8 regular  }
	{ zext_ln65_4 int 8 regular  }
	{ zext_ln65_5 int 8 regular  }
	{ zext_ln65_6 int 8 regular  }
	{ zext_ln65_7 int 8 regular  }
	{ zext_ln65_8 int 8 regular  }
	{ zext_ln65_9 int 8 regular  }
	{ zext_ln65_10 int 8 regular  }
	{ zext_ln65_11 int 8 regular  }
	{ zext_ln65_12 int 8 regular  }
	{ zext_ln65_13 int 8 regular  }
	{ zext_ln65_14 int 8 regular  }
	{ zext_ln46 int 8 regular  }
	{ weights_dst int 4096 regular {array 576 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "num_src_blocks", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln30", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "weights_src", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln28", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "weights", "interface" : "axi_master", "bitwidth" : 256, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "patch_embed_weights","offset": { "type": "dynamic","port_name": "patch_embed_weights","bundle": "control"},"direction": "READONLY"},{"cName": "patch_embed_bias","offset": { "type": "dynamic","port_name": "patch_embed_bias","bundle": "control"},"direction": "READONLY"},{"cName": "pos_embed","offset": { "type": "dynamic","port_name": "pos_embed","bundle": "control"},"direction": "READONLY"},{"cName": "attn_weights","offset": { "type": "dynamic","port_name": "attn_weights","bundle": "control"},"direction": "READONLY"},{"cName": "attn_bias","offset": { "type": "dynamic","port_name": "attn_bias","bundle": "control"},"direction": "READONLY"},{"cName": "vit_weights_l1","offset": { "type": "dynamic","port_name": "vit_weights_l1","bundle": "control"},"direction": "READONLY"},{"cName": "vit_bias_l1","offset": { "type": "dynamic","port_name": "vit_bias_l1","bundle": "control"},"direction": "READONLY"},{"cName": "vit_weights_l2","offset": { "type": "dynamic","port_name": "vit_weights_l2","bundle": "control"},"direction": "READONLY"},{"cName": "vit_bias_l2","offset": { "type": "dynamic","port_name": "vit_bias_l2","bundle": "control"},"direction": "READONLY"},{"cName": "norm_weights","offset": { "type": "dynamic","port_name": "norm_weights","bundle": "control"},"direction": "READONLY"},{"cName": "norm_bias","offset": { "type": "dynamic","port_name": "norm_bias","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "zext_ln65_1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln65", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln65_2", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln65_3", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln65_4", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln65_5", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln65_6", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln65_7", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln65_8", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln65_9", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln65_10", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln65_11", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln65_12", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln65_13", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln65_14", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln46", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "weights_dst", "interface" : "memory", "bitwidth" : 4096, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 76
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_weights_AWVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_weights_AWREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_weights_AWADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_weights_AWID sc_out sc_lv 1 signal 4 } 
	{ m_axi_weights_AWLEN sc_out sc_lv 32 signal 4 } 
	{ m_axi_weights_AWSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_weights_AWBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_weights_AWLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_weights_AWCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_weights_AWPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_weights_AWQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_weights_AWREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_weights_AWUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_weights_WVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_weights_WREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_weights_WDATA sc_out sc_lv 256 signal 4 } 
	{ m_axi_weights_WSTRB sc_out sc_lv 32 signal 4 } 
	{ m_axi_weights_WLAST sc_out sc_logic 1 signal 4 } 
	{ m_axi_weights_WID sc_out sc_lv 1 signal 4 } 
	{ m_axi_weights_WUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_weights_ARVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_weights_ARREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_weights_ARADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_weights_ARID sc_out sc_lv 1 signal 4 } 
	{ m_axi_weights_ARLEN sc_out sc_lv 32 signal 4 } 
	{ m_axi_weights_ARSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_weights_ARBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_weights_ARLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_weights_ARCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_weights_ARPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_weights_ARQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_weights_ARREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_weights_ARUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_weights_RVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_weights_RREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_weights_RDATA sc_in sc_lv 256 signal 4 } 
	{ m_axi_weights_RLAST sc_in sc_logic 1 signal 4 } 
	{ m_axi_weights_RID sc_in sc_lv 1 signal 4 } 
	{ m_axi_weights_RFIFONUM sc_in sc_lv 9 signal 4 } 
	{ m_axi_weights_RUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_weights_RRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_weights_BVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_weights_BREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_weights_BRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_weights_BID sc_in sc_lv 1 signal 4 } 
	{ m_axi_weights_BUSER sc_in sc_lv 1 signal 4 } 
	{ num_src_blocks sc_in sc_lv 16 signal 0 } 
	{ zext_ln30 sc_in sc_lv 10 signal 1 } 
	{ weights_src sc_in sc_lv 64 signal 2 } 
	{ zext_ln28 sc_in sc_lv 6 signal 3 } 
	{ zext_ln65_1 sc_in sc_lv 8 signal 5 } 
	{ zext_ln65 sc_in sc_lv 8 signal 6 } 
	{ zext_ln65_2 sc_in sc_lv 8 signal 7 } 
	{ zext_ln65_3 sc_in sc_lv 8 signal 8 } 
	{ zext_ln65_4 sc_in sc_lv 8 signal 9 } 
	{ zext_ln65_5 sc_in sc_lv 8 signal 10 } 
	{ zext_ln65_6 sc_in sc_lv 8 signal 11 } 
	{ zext_ln65_7 sc_in sc_lv 8 signal 12 } 
	{ zext_ln65_8 sc_in sc_lv 8 signal 13 } 
	{ zext_ln65_9 sc_in sc_lv 8 signal 14 } 
	{ zext_ln65_10 sc_in sc_lv 8 signal 15 } 
	{ zext_ln65_11 sc_in sc_lv 8 signal 16 } 
	{ zext_ln65_12 sc_in sc_lv 8 signal 17 } 
	{ zext_ln65_13 sc_in sc_lv 8 signal 18 } 
	{ zext_ln65_14 sc_in sc_lv 8 signal 19 } 
	{ zext_ln46 sc_in sc_lv 8 signal 20 } 
	{ weights_dst_address0 sc_out sc_lv 10 signal 21 } 
	{ weights_dst_ce0 sc_out sc_logic 1 signal 21 } 
	{ weights_dst_we0 sc_out sc_logic 1 signal 21 } 
	{ weights_dst_d0 sc_out sc_lv 4096 signal 21 } 
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
 	{ "name": "num_src_blocks", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "num_src_blocks", "role": "default" }} , 
 	{ "name": "zext_ln30", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "zext_ln30", "role": "default" }} , 
 	{ "name": "weights_src", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "weights_src", "role": "default" }} , 
 	{ "name": "zext_ln28", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "zext_ln28", "role": "default" }} , 
 	{ "name": "zext_ln65_1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln65_1", "role": "default" }} , 
 	{ "name": "zext_ln65", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln65", "role": "default" }} , 
 	{ "name": "zext_ln65_2", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln65_2", "role": "default" }} , 
 	{ "name": "zext_ln65_3", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln65_3", "role": "default" }} , 
 	{ "name": "zext_ln65_4", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln65_4", "role": "default" }} , 
 	{ "name": "zext_ln65_5", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln65_5", "role": "default" }} , 
 	{ "name": "zext_ln65_6", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln65_6", "role": "default" }} , 
 	{ "name": "zext_ln65_7", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln65_7", "role": "default" }} , 
 	{ "name": "zext_ln65_8", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln65_8", "role": "default" }} , 
 	{ "name": "zext_ln65_9", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln65_9", "role": "default" }} , 
 	{ "name": "zext_ln65_10", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln65_10", "role": "default" }} , 
 	{ "name": "zext_ln65_11", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln65_11", "role": "default" }} , 
 	{ "name": "zext_ln65_12", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln65_12", "role": "default" }} , 
 	{ "name": "zext_ln65_13", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln65_13", "role": "default" }} , 
 	{ "name": "zext_ln65_14", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln65_14", "role": "default" }} , 
 	{ "name": "zext_ln46", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln46", "role": "default" }} , 
 	{ "name": "weights_dst_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "weights_dst", "role": "address0" }} , 
 	{ "name": "weights_dst_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_dst", "role": "ce0" }} , 
 	{ "name": "weights_dst_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_dst", "role": "we0" }} , 
 	{ "name": "weights_dst_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":4096, "type": "signal", "bundle":{"name": "weights_dst", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244", "245", "246", "247", "248", "249", "250", "251", "252", "253", "254", "255", "256", "257"],
		"CDFG" : "load_linear_weights_Pipeline_ln46_for_each_src_block",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "1047564",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "num_src_blocks", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln30", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_src", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln28", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "weights_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "weights_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "zext_ln65_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln65", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln65_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln65_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln65_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln65_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln65_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln65_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln65_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln65_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln65_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln65_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln65_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln65_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln65_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln46", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_dst", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "_ln46_for_each_src_block", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage11", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage11_subdone", "QuitState" : "ap_ST_fsm_pp0_stage11", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage11_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_8_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_9_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_10_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_11_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_12_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_13_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_14_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_15_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_0_1_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_1_1_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_2_1_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_3_1_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_4_1_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_5_1_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_6_1_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_7_1_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_8_1_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_9_1_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_10_1_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_11_1_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_12_1_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_13_1_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_14_1_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_15_1_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_0_2_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_1_2_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_2_2_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_3_2_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_4_2_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_5_2_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_6_2_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_7_2_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_8_2_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_9_2_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_10_2_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_11_2_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_12_2_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_13_2_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_14_2_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_15_2_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_0_3_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_1_3_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_2_3_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_3_3_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_4_3_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_5_3_U", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_6_3_U", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_7_3_U", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_8_3_U", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_9_3_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_10_3_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_11_3_U", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_12_3_U", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_13_3_U", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_14_3_U", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_15_3_U", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_0_4_U", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_1_4_U", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_2_4_U", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_3_4_U", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_4_4_U", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_5_4_U", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_6_4_U", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_7_4_U", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_8_4_U", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_9_4_U", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_10_4_U", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_11_4_U", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_12_4_U", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_13_4_U", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_14_4_U", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_15_4_U", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_0_5_U", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_1_5_U", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_2_5_U", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_3_5_U", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_4_5_U", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_5_5_U", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_6_5_U", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_7_5_U", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_8_5_U", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_9_5_U", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_10_5_U", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_11_5_U", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_12_5_U", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_13_5_U", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_14_5_U", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_15_5_U", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_0_6_U", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_1_6_U", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_2_6_U", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_3_6_U", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_4_6_U", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_5_6_U", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_6_6_U", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_7_6_U", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_8_6_U", "Parent" : "0"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_9_6_U", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_10_6_U", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_11_6_U", "Parent" : "0"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_12_6_U", "Parent" : "0"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_13_6_U", "Parent" : "0"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_14_6_U", "Parent" : "0"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_15_6_U", "Parent" : "0"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_0_7_U", "Parent" : "0"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_1_7_U", "Parent" : "0"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_2_7_U", "Parent" : "0"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_3_7_U", "Parent" : "0"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_4_7_U", "Parent" : "0"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_5_7_U", "Parent" : "0"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_6_7_U", "Parent" : "0"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_7_7_U", "Parent" : "0"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_8_7_U", "Parent" : "0"},
	{"ID" : "122", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_9_7_U", "Parent" : "0"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_10_7_U", "Parent" : "0"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_11_7_U", "Parent" : "0"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_12_7_U", "Parent" : "0"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_13_7_U", "Parent" : "0"},
	{"ID" : "127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_14_7_U", "Parent" : "0"},
	{"ID" : "128", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_15_7_U", "Parent" : "0"},
	{"ID" : "129", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_0_8_U", "Parent" : "0"},
	{"ID" : "130", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_1_8_U", "Parent" : "0"},
	{"ID" : "131", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_2_8_U", "Parent" : "0"},
	{"ID" : "132", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_3_8_U", "Parent" : "0"},
	{"ID" : "133", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_4_8_U", "Parent" : "0"},
	{"ID" : "134", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_5_8_U", "Parent" : "0"},
	{"ID" : "135", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_6_8_U", "Parent" : "0"},
	{"ID" : "136", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_7_8_U", "Parent" : "0"},
	{"ID" : "137", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_8_8_U", "Parent" : "0"},
	{"ID" : "138", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_9_8_U", "Parent" : "0"},
	{"ID" : "139", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_10_8_U", "Parent" : "0"},
	{"ID" : "140", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_11_8_U", "Parent" : "0"},
	{"ID" : "141", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_12_8_U", "Parent" : "0"},
	{"ID" : "142", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_13_8_U", "Parent" : "0"},
	{"ID" : "143", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_14_8_U", "Parent" : "0"},
	{"ID" : "144", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_15_8_U", "Parent" : "0"},
	{"ID" : "145", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_0_9_U", "Parent" : "0"},
	{"ID" : "146", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_1_9_U", "Parent" : "0"},
	{"ID" : "147", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_2_9_U", "Parent" : "0"},
	{"ID" : "148", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_3_9_U", "Parent" : "0"},
	{"ID" : "149", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_4_9_U", "Parent" : "0"},
	{"ID" : "150", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_5_9_U", "Parent" : "0"},
	{"ID" : "151", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_6_9_U", "Parent" : "0"},
	{"ID" : "152", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_7_9_U", "Parent" : "0"},
	{"ID" : "153", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_8_9_U", "Parent" : "0"},
	{"ID" : "154", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_9_9_U", "Parent" : "0"},
	{"ID" : "155", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_10_9_U", "Parent" : "0"},
	{"ID" : "156", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_11_9_U", "Parent" : "0"},
	{"ID" : "157", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_12_9_U", "Parent" : "0"},
	{"ID" : "158", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_13_9_U", "Parent" : "0"},
	{"ID" : "159", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_14_9_U", "Parent" : "0"},
	{"ID" : "160", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_15_9_U", "Parent" : "0"},
	{"ID" : "161", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_0_10_U", "Parent" : "0"},
	{"ID" : "162", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_1_10_U", "Parent" : "0"},
	{"ID" : "163", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_2_10_U", "Parent" : "0"},
	{"ID" : "164", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_3_10_U", "Parent" : "0"},
	{"ID" : "165", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_4_10_U", "Parent" : "0"},
	{"ID" : "166", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_5_10_U", "Parent" : "0"},
	{"ID" : "167", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_6_10_U", "Parent" : "0"},
	{"ID" : "168", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_7_10_U", "Parent" : "0"},
	{"ID" : "169", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_8_10_U", "Parent" : "0"},
	{"ID" : "170", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_9_10_U", "Parent" : "0"},
	{"ID" : "171", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_10_10_U", "Parent" : "0"},
	{"ID" : "172", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_11_10_U", "Parent" : "0"},
	{"ID" : "173", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_12_10_U", "Parent" : "0"},
	{"ID" : "174", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_13_10_U", "Parent" : "0"},
	{"ID" : "175", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_14_10_U", "Parent" : "0"},
	{"ID" : "176", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_15_10_U", "Parent" : "0"},
	{"ID" : "177", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_0_11_U", "Parent" : "0"},
	{"ID" : "178", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_1_11_U", "Parent" : "0"},
	{"ID" : "179", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_2_11_U", "Parent" : "0"},
	{"ID" : "180", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_3_11_U", "Parent" : "0"},
	{"ID" : "181", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_4_11_U", "Parent" : "0"},
	{"ID" : "182", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_5_11_U", "Parent" : "0"},
	{"ID" : "183", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_6_11_U", "Parent" : "0"},
	{"ID" : "184", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_7_11_U", "Parent" : "0"},
	{"ID" : "185", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_8_11_U", "Parent" : "0"},
	{"ID" : "186", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_9_11_U", "Parent" : "0"},
	{"ID" : "187", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_10_11_U", "Parent" : "0"},
	{"ID" : "188", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_11_11_U", "Parent" : "0"},
	{"ID" : "189", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_12_11_U", "Parent" : "0"},
	{"ID" : "190", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_13_11_U", "Parent" : "0"},
	{"ID" : "191", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_14_11_U", "Parent" : "0"},
	{"ID" : "192", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_15_11_U", "Parent" : "0"},
	{"ID" : "193", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_0_12_U", "Parent" : "0"},
	{"ID" : "194", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_1_12_U", "Parent" : "0"},
	{"ID" : "195", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_2_12_U", "Parent" : "0"},
	{"ID" : "196", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_3_12_U", "Parent" : "0"},
	{"ID" : "197", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_4_12_U", "Parent" : "0"},
	{"ID" : "198", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_5_12_U", "Parent" : "0"},
	{"ID" : "199", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_6_12_U", "Parent" : "0"},
	{"ID" : "200", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_7_12_U", "Parent" : "0"},
	{"ID" : "201", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_8_12_U", "Parent" : "0"},
	{"ID" : "202", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_9_12_U", "Parent" : "0"},
	{"ID" : "203", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_10_12_U", "Parent" : "0"},
	{"ID" : "204", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_11_12_U", "Parent" : "0"},
	{"ID" : "205", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_12_12_U", "Parent" : "0"},
	{"ID" : "206", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_13_12_U", "Parent" : "0"},
	{"ID" : "207", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_14_12_U", "Parent" : "0"},
	{"ID" : "208", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_15_12_U", "Parent" : "0"},
	{"ID" : "209", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_0_13_U", "Parent" : "0"},
	{"ID" : "210", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_1_13_U", "Parent" : "0"},
	{"ID" : "211", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_2_13_U", "Parent" : "0"},
	{"ID" : "212", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_3_13_U", "Parent" : "0"},
	{"ID" : "213", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_4_13_U", "Parent" : "0"},
	{"ID" : "214", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_5_13_U", "Parent" : "0"},
	{"ID" : "215", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_6_13_U", "Parent" : "0"},
	{"ID" : "216", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_7_13_U", "Parent" : "0"},
	{"ID" : "217", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_8_13_U", "Parent" : "0"},
	{"ID" : "218", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_9_13_U", "Parent" : "0"},
	{"ID" : "219", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_10_13_U", "Parent" : "0"},
	{"ID" : "220", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_11_13_U", "Parent" : "0"},
	{"ID" : "221", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_12_13_U", "Parent" : "0"},
	{"ID" : "222", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_13_13_U", "Parent" : "0"},
	{"ID" : "223", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_14_13_U", "Parent" : "0"},
	{"ID" : "224", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_15_13_U", "Parent" : "0"},
	{"ID" : "225", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_0_14_U", "Parent" : "0"},
	{"ID" : "226", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_1_14_U", "Parent" : "0"},
	{"ID" : "227", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_2_14_U", "Parent" : "0"},
	{"ID" : "228", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_3_14_U", "Parent" : "0"},
	{"ID" : "229", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_4_14_U", "Parent" : "0"},
	{"ID" : "230", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_5_14_U", "Parent" : "0"},
	{"ID" : "231", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_6_14_U", "Parent" : "0"},
	{"ID" : "232", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_7_14_U", "Parent" : "0"},
	{"ID" : "233", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_8_14_U", "Parent" : "0"},
	{"ID" : "234", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_9_14_U", "Parent" : "0"},
	{"ID" : "235", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_10_14_U", "Parent" : "0"},
	{"ID" : "236", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_11_14_U", "Parent" : "0"},
	{"ID" : "237", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_12_14_U", "Parent" : "0"},
	{"ID" : "238", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_13_14_U", "Parent" : "0"},
	{"ID" : "239", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_14_14_U", "Parent" : "0"},
	{"ID" : "240", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_15_14_U", "Parent" : "0"},
	{"ID" : "241", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_0_15_U", "Parent" : "0"},
	{"ID" : "242", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_1_15_U", "Parent" : "0"},
	{"ID" : "243", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_2_15_U", "Parent" : "0"},
	{"ID" : "244", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_3_15_U", "Parent" : "0"},
	{"ID" : "245", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_4_15_U", "Parent" : "0"},
	{"ID" : "246", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_5_15_U", "Parent" : "0"},
	{"ID" : "247", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_6_15_U", "Parent" : "0"},
	{"ID" : "248", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_7_15_U", "Parent" : "0"},
	{"ID" : "249", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_8_15_U", "Parent" : "0"},
	{"ID" : "250", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_9_15_U", "Parent" : "0"},
	{"ID" : "251", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_10_15_U", "Parent" : "0"},
	{"ID" : "252", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_11_15_U", "Parent" : "0"},
	{"ID" : "253", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_12_15_U", "Parent" : "0"},
	{"ID" : "254", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_13_15_U", "Parent" : "0"},
	{"ID" : "255", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_14_15_U", "Parent" : "0"},
	{"ID" : "256", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_cache_data_M_elems_V_15_15_U", "Parent" : "0"},
	{"ID" : "257", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	load_linear_weights_Pipeline_ln46_for_each_src_block {
		num_src_blocks {Type I LastRead 0 FirstWrite -1}
		zext_ln30 {Type I LastRead 0 FirstWrite -1}
		weights_src {Type I LastRead 0 FirstWrite -1}
		zext_ln28 {Type I LastRead 0 FirstWrite -1}
		weights {Type I LastRead 24 FirstWrite -1}
		zext_ln65_1 {Type I LastRead 0 FirstWrite -1}
		zext_ln65 {Type I LastRead 0 FirstWrite -1}
		zext_ln65_2 {Type I LastRead 0 FirstWrite -1}
		zext_ln65_3 {Type I LastRead 0 FirstWrite -1}
		zext_ln65_4 {Type I LastRead 0 FirstWrite -1}
		zext_ln65_5 {Type I LastRead 0 FirstWrite -1}
		zext_ln65_6 {Type I LastRead 0 FirstWrite -1}
		zext_ln65_7 {Type I LastRead 0 FirstWrite -1}
		zext_ln65_8 {Type I LastRead 0 FirstWrite -1}
		zext_ln65_9 {Type I LastRead 0 FirstWrite -1}
		zext_ln65_10 {Type I LastRead 0 FirstWrite -1}
		zext_ln65_11 {Type I LastRead 0 FirstWrite -1}
		zext_ln65_12 {Type I LastRead 0 FirstWrite -1}
		zext_ln65_13 {Type I LastRead 0 FirstWrite -1}
		zext_ln65_14 {Type I LastRead 0 FirstWrite -1}
		zext_ln46 {Type I LastRead 0 FirstWrite -1}
		weights_dst {Type O LastRead -1 FirstWrite 27}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "1047564"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "1047564"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	num_src_blocks { ap_none {  { num_src_blocks in_data 0 16 } } }
	zext_ln30 { ap_none {  { zext_ln30 in_data 0 10 } } }
	weights_src { ap_none {  { weights_src in_data 0 64 } } }
	zext_ln28 { ap_none {  { zext_ln28 in_data 0 6 } } }
	 { m_axi {  { m_axi_weights_AWVALID VALID 1 1 }  { m_axi_weights_AWREADY READY 0 1 }  { m_axi_weights_AWADDR ADDR 1 64 }  { m_axi_weights_AWID ID 1 1 }  { m_axi_weights_AWLEN SIZE 1 32 }  { m_axi_weights_AWSIZE BURST 1 3 }  { m_axi_weights_AWBURST LOCK 1 2 }  { m_axi_weights_AWLOCK CACHE 1 2 }  { m_axi_weights_AWCACHE PROT 1 4 }  { m_axi_weights_AWPROT QOS 1 3 }  { m_axi_weights_AWQOS REGION 1 4 }  { m_axi_weights_AWREGION USER 1 4 }  { m_axi_weights_AWUSER DATA 1 1 }  { m_axi_weights_WVALID VALID 1 1 }  { m_axi_weights_WREADY READY 0 1 }  { m_axi_weights_WDATA FIFONUM 1 256 }  { m_axi_weights_WSTRB STRB 1 32 }  { m_axi_weights_WLAST LAST 1 1 }  { m_axi_weights_WID ID 1 1 }  { m_axi_weights_WUSER DATA 1 1 }  { m_axi_weights_ARVALID VALID 1 1 }  { m_axi_weights_ARREADY READY 0 1 }  { m_axi_weights_ARADDR ADDR 1 64 }  { m_axi_weights_ARID ID 1 1 }  { m_axi_weights_ARLEN SIZE 1 32 }  { m_axi_weights_ARSIZE BURST 1 3 }  { m_axi_weights_ARBURST LOCK 1 2 }  { m_axi_weights_ARLOCK CACHE 1 2 }  { m_axi_weights_ARCACHE PROT 1 4 }  { m_axi_weights_ARPROT QOS 1 3 }  { m_axi_weights_ARQOS REGION 1 4 }  { m_axi_weights_ARREGION USER 1 4 }  { m_axi_weights_ARUSER DATA 1 1 }  { m_axi_weights_RVALID VALID 0 1 }  { m_axi_weights_RREADY READY 1 1 }  { m_axi_weights_RDATA FIFONUM 0 256 }  { m_axi_weights_RLAST LAST 0 1 }  { m_axi_weights_RID ID 0 1 }  { m_axi_weights_RFIFONUM LEN 0 9 }  { m_axi_weights_RUSER DATA 0 1 }  { m_axi_weights_RRESP RESP 0 2 }  { m_axi_weights_BVALID VALID 0 1 }  { m_axi_weights_BREADY READY 1 1 }  { m_axi_weights_BRESP RESP 0 2 }  { m_axi_weights_BID ID 0 1 }  { m_axi_weights_BUSER DATA 0 1 } } }
	zext_ln65_1 { ap_none {  { zext_ln65_1 in_data 0 8 } } }
	zext_ln65 { ap_none {  { zext_ln65 in_data 0 8 } } }
	zext_ln65_2 { ap_none {  { zext_ln65_2 in_data 0 8 } } }
	zext_ln65_3 { ap_none {  { zext_ln65_3 in_data 0 8 } } }
	zext_ln65_4 { ap_none {  { zext_ln65_4 in_data 0 8 } } }
	zext_ln65_5 { ap_none {  { zext_ln65_5 in_data 0 8 } } }
	zext_ln65_6 { ap_none {  { zext_ln65_6 in_data 0 8 } } }
	zext_ln65_7 { ap_none {  { zext_ln65_7 in_data 0 8 } } }
	zext_ln65_8 { ap_none {  { zext_ln65_8 in_data 0 8 } } }
	zext_ln65_9 { ap_none {  { zext_ln65_9 in_data 0 8 } } }
	zext_ln65_10 { ap_none {  { zext_ln65_10 in_data 0 8 } } }
	zext_ln65_11 { ap_none {  { zext_ln65_11 in_data 0 8 } } }
	zext_ln65_12 { ap_none {  { zext_ln65_12 in_data 0 8 } } }
	zext_ln65_13 { ap_none {  { zext_ln65_13 in_data 0 8 } } }
	zext_ln65_14 { ap_none {  { zext_ln65_14 in_data 0 8 } } }
	zext_ln46 { ap_none {  { zext_ln46 in_data 0 8 } } }
	weights_dst { ap_memory {  { weights_dst_address0 mem_address 1 10 }  { weights_dst_ce0 mem_ce 1 1 }  { weights_dst_we0 mem_we 1 1 }  { weights_dst_d0 mem_din 1 4096 } } }
}
