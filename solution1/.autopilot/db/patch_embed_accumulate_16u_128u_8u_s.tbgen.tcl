set moduleName patch_embed_accumulate_16u_128u_8u_s
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {patch_embed_accumulate<16u, 128u, 8u>}
set C_modelType { void 0 }
set C_modelArgList {
	{ inout1 int 256 regular {axi_master 0}  }
	{ x int 64 regular  }
	{ patches31 int 512 regular {array 192 { 2 0 } 1 1 }  }
	{ y_block int 3 regular  }
	{ patch_embed_bias int 128 regular {array 24 { 1 3 } 1 1 } {global 0}  }
	{ patch_embed_weights int 2048 regular {array 1152 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "inout1", "interface" : "axi_master", "bitwidth" : 256, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "images","offset": { "type": "dynamic","port_name": "images","bundle": "control"},"direction": "READONLY"},{"cName": "tmp1","offset": { "type": "dynamic","port_name": "tmp1","bundle": "control"},"direction": "READWRITE"},{"cName": "attn","offset": { "type": "dynamic","port_name": "attn","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "x", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "patches31", "interface" : "memory", "bitwidth" : 512, "direction" : "READWRITE"} , 
 	{ "Name" : "y_block", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "patch_embed_bias", "interface" : "memory", "bitwidth" : 128, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "patch_embed_weights", "interface" : "memory", "bitwidth" : 2048, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 89
set portList { 
	{ m_axi_inout1_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_inout1_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_inout1_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_inout1_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_inout1_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_inout1_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_inout1_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_inout1_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_inout1_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_inout1_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_inout1_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_inout1_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_inout1_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_inout1_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_inout1_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_inout1_WDATA sc_out sc_lv 256 signal 0 } 
	{ m_axi_inout1_WSTRB sc_out sc_lv 32 signal 0 } 
	{ m_axi_inout1_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_inout1_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_inout1_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_inout1_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_inout1_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_inout1_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_inout1_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_inout1_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_inout1_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_inout1_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_inout1_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_inout1_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_inout1_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_inout1_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_inout1_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_inout1_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_inout1_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_inout1_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_inout1_RDATA sc_in sc_lv 256 signal 0 } 
	{ m_axi_inout1_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_inout1_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_inout1_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_inout1_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_inout1_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_inout1_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_inout1_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_inout1_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_inout1_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_inout1_BUSER sc_in sc_lv 1 signal 0 } 
	{ x sc_in sc_lv 64 signal 1 } 
	{ patches31_address0 sc_out sc_lv 8 signal 2 } 
	{ patches31_ce0 sc_out sc_logic 1 signal 2 } 
	{ patches31_d0 sc_out sc_lv 512 signal 2 } 
	{ patches31_q0 sc_in sc_lv 512 signal 2 } 
	{ patches31_we0 sc_out sc_logic 1 signal 2 } 
	{ patches31_address1 sc_out sc_lv 8 signal 2 } 
	{ patches31_ce1 sc_out sc_logic 1 signal 2 } 
	{ patches31_d1 sc_out sc_lv 512 signal 2 } 
	{ patches31_q1 sc_in sc_lv 512 signal 2 } 
	{ patches31_we1 sc_out sc_logic 1 signal 2 } 
	{ y_block sc_in sc_lv 3 signal 3 } 
	{ patch_embed_bias_address0 sc_out sc_lv 5 signal 4 } 
	{ patch_embed_bias_ce0 sc_out sc_logic 1 signal 4 } 
	{ patch_embed_bias_d0 sc_out sc_lv 128 signal 4 } 
	{ patch_embed_bias_q0 sc_in sc_lv 128 signal 4 } 
	{ patch_embed_bias_we0 sc_out sc_logic 1 signal 4 } 
	{ patch_embed_bias_address1 sc_out sc_lv 5 signal 4 } 
	{ patch_embed_bias_ce1 sc_out sc_logic 1 signal 4 } 
	{ patch_embed_bias_d1 sc_out sc_lv 128 signal 4 } 
	{ patch_embed_bias_q1 sc_in sc_lv 128 signal 4 } 
	{ patch_embed_bias_we1 sc_out sc_logic 1 signal 4 } 
	{ patch_embed_weights_address0 sc_out sc_lv 11 signal 5 } 
	{ patch_embed_weights_ce0 sc_out sc_logic 1 signal 5 } 
	{ patch_embed_weights_d0 sc_out sc_lv 2048 signal 5 } 
	{ patch_embed_weights_q0 sc_in sc_lv 2048 signal 5 } 
	{ patch_embed_weights_we0 sc_out sc_logic 1 signal 5 } 
	{ patch_embed_weights_address1 sc_out sc_lv 11 signal 5 } 
	{ patch_embed_weights_ce1 sc_out sc_logic 1 signal 5 } 
	{ patch_embed_weights_d1 sc_out sc_lv 2048 signal 5 } 
	{ patch_embed_weights_q1 sc_in sc_lv 2048 signal 5 } 
	{ patch_embed_weights_we1 sc_out sc_logic 1 signal 5 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ y_block_ap_vld sc_in sc_logic 1 invld 3 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ x_ap_vld sc_in sc_logic 1 invld 1 } 
	{ patches31_full_n sc_in sc_logic 1 signal -1 } 
	{ patches31_write sc_out sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "m_axi_inout1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inout1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_inout1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inout1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_inout1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "inout1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_inout1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "inout1", "role": "AWID" }} , 
 	{ "name": "m_axi_inout1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inout1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_inout1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "inout1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_inout1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "inout1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_inout1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "inout1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_inout1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "inout1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_inout1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "inout1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_inout1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "inout1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_inout1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "inout1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_inout1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "inout1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_inout1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inout1", "role": "WVALID" }} , 
 	{ "name": "m_axi_inout1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inout1", "role": "WREADY" }} , 
 	{ "name": "m_axi_inout1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "inout1", "role": "WDATA" }} , 
 	{ "name": "m_axi_inout1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inout1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_inout1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inout1", "role": "WLAST" }} , 
 	{ "name": "m_axi_inout1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "inout1", "role": "WID" }} , 
 	{ "name": "m_axi_inout1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "inout1", "role": "WUSER" }} , 
 	{ "name": "m_axi_inout1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inout1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_inout1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inout1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_inout1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "inout1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_inout1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "inout1", "role": "ARID" }} , 
 	{ "name": "m_axi_inout1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inout1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_inout1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "inout1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_inout1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "inout1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_inout1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "inout1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_inout1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "inout1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_inout1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "inout1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_inout1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "inout1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_inout1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "inout1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_inout1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "inout1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_inout1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inout1", "role": "RVALID" }} , 
 	{ "name": "m_axi_inout1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inout1", "role": "RREADY" }} , 
 	{ "name": "m_axi_inout1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "inout1", "role": "RDATA" }} , 
 	{ "name": "m_axi_inout1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inout1", "role": "RLAST" }} , 
 	{ "name": "m_axi_inout1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "inout1", "role": "RID" }} , 
 	{ "name": "m_axi_inout1_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "inout1", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_inout1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "inout1", "role": "RUSER" }} , 
 	{ "name": "m_axi_inout1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "inout1", "role": "RRESP" }} , 
 	{ "name": "m_axi_inout1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inout1", "role": "BVALID" }} , 
 	{ "name": "m_axi_inout1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inout1", "role": "BREADY" }} , 
 	{ "name": "m_axi_inout1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "inout1", "role": "BRESP" }} , 
 	{ "name": "m_axi_inout1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "inout1", "role": "BID" }} , 
 	{ "name": "m_axi_inout1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "inout1", "role": "BUSER" }} , 
 	{ "name": "x", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x", "role": "default" }} , 
 	{ "name": "patches31_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "patches31", "role": "address0" }} , 
 	{ "name": "patches31_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patches31", "role": "ce0" }} , 
 	{ "name": "patches31_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "patches31", "role": "d0" }} , 
 	{ "name": "patches31_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "patches31", "role": "q0" }} , 
 	{ "name": "patches31_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patches31", "role": "we0" }} , 
 	{ "name": "patches31_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "patches31", "role": "address1" }} , 
 	{ "name": "patches31_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patches31", "role": "ce1" }} , 
 	{ "name": "patches31_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "patches31", "role": "d1" }} , 
 	{ "name": "patches31_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "patches31", "role": "q1" }} , 
 	{ "name": "patches31_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patches31", "role": "we1" }} , 
 	{ "name": "y_block", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "y_block", "role": "default" }} , 
 	{ "name": "patch_embed_bias_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "patch_embed_bias", "role": "address0" }} , 
 	{ "name": "patch_embed_bias_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_embed_bias", "role": "ce0" }} , 
 	{ "name": "patch_embed_bias_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "patch_embed_bias", "role": "d0" }} , 
 	{ "name": "patch_embed_bias_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "patch_embed_bias", "role": "q0" }} , 
 	{ "name": "patch_embed_bias_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_embed_bias", "role": "we0" }} , 
 	{ "name": "patch_embed_bias_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "patch_embed_bias", "role": "address1" }} , 
 	{ "name": "patch_embed_bias_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_embed_bias", "role": "ce1" }} , 
 	{ "name": "patch_embed_bias_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "patch_embed_bias", "role": "d1" }} , 
 	{ "name": "patch_embed_bias_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "patch_embed_bias", "role": "q1" }} , 
 	{ "name": "patch_embed_bias_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_embed_bias", "role": "we1" }} , 
 	{ "name": "patch_embed_weights_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "patch_embed_weights", "role": "address0" }} , 
 	{ "name": "patch_embed_weights_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_embed_weights", "role": "ce0" }} , 
 	{ "name": "patch_embed_weights_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":2048, "type": "signal", "bundle":{"name": "patch_embed_weights", "role": "d0" }} , 
 	{ "name": "patch_embed_weights_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2048, "type": "signal", "bundle":{"name": "patch_embed_weights", "role": "q0" }} , 
 	{ "name": "patch_embed_weights_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_embed_weights", "role": "we0" }} , 
 	{ "name": "patch_embed_weights_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "patch_embed_weights", "role": "address1" }} , 
 	{ "name": "patch_embed_weights_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_embed_weights", "role": "ce1" }} , 
 	{ "name": "patch_embed_weights_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":2048, "type": "signal", "bundle":{"name": "patch_embed_weights", "role": "d1" }} , 
 	{ "name": "patch_embed_weights_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":2048, "type": "signal", "bundle":{"name": "patch_embed_weights", "role": "q1" }} , 
 	{ "name": "patch_embed_weights_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patch_embed_weights", "role": "we1" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "y_block_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "y_block", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "x_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "x", "role": "ap_vld" }} , 
 	{ "name": "patches31_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patches31_full_n", "role": "default" }} , 
 	{ "name": "patches31_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patches31_write", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "261", "262"],
		"CDFG" : "patch_embed_accumulate_16u_128u_8u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27714", "EstimateLatencyMax" : "27714",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "patch_embed_accumulate_16u_128u_8u_Block_entry2_proc8_U0"},
			{"ID" : "2", "Name" : "patch_embed_accumulate_read_16u_128u_8u_U0"},
			{"ID" : "3", "Name" : "patch_embed_accumulate_compute_16u_128u_8u_U0"}],
		"OutputProcess" : [
			{"ID" : "3", "Name" : "patch_embed_accumulate_compute_16u_128u_8u_U0"}],
		"Port" : [
			{"Name" : "inout1", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "patch_embed_accumulate_read_16u_128u_8u_U0", "Port" : "inout1"}]},
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "patches31", "Type" : "Memory", "Direction" : "IO", "DependentProc" : ["0"], "DependentChan" : "0", "PIPODir" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "patch_embed_accumulate_compute_16u_128u_8u_U0", "Port" : "patches"}]},
			{"Name" : "y_block", "Type" : "None", "Direction" : "I"},
			{"Name" : "patch_embed_bias", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "patch_embed_accumulate_compute_16u_128u_8u_U0", "Port" : "patch_embed_bias"}]},
			{"Name" : "patch_embed_weights", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "patch_embed_accumulate_compute_16u_128u_8u_U0", "Port" : "patch_embed_weights"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_16u_128u_8u_Block_entry2_proc8_U0", "Parent" : "0",
		"CDFG" : "patch_embed_accumulate_16u_128u_8u_Block_entry2_proc8",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "y_block", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_read_16u_128u_8u_U0", "Parent" : "0",
		"CDFG" : "patch_embed_accumulate_read_16u_128u_8u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15847", "EstimateLatencyMax" : "15847",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "inout1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "inout1_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "inout1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "image_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "image_stream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["3"], "DependentChan" : "262", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "image_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "261", "DependentChanDepth" : "2", "DependentChanType" : "1"}],
		"Loop" : [
			{"Name" : "_ln39_for_block_patch_x", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "44", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state44"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "_ln36_for_offset_y", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "44", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "_ln33_for_each_channel", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "44", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0", "Parent" : "0", "Child" : ["4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244", "245", "246", "247", "248", "249", "250", "251", "252", "253", "254", "255", "256", "257", "258", "259", "260"],
		"CDFG" : "patch_embed_accumulate_compute_16u_128u_8u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27672", "EstimateLatencyMax" : "27672",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "image_stream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "262", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "image_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "patches", "Type" : "Memory", "Direction" : "IO", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "patch_embed_bias", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "patch_embed_weights", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "_ln63_for_each_channel__ln67_for_block_patch_x__ln69_for_block_dim", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mul_mul_16s_8ns_24_4_1_U36", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mul_mul_16s_8ns_24_4_1_U37", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mul_mul_16s_8ns_24_4_1_U38", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mul_mul_16s_8ns_24_4_1_U39", "Parent" : "3"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mul_mul_16s_8ns_24_4_1_U40", "Parent" : "3"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mul_mul_16s_8ns_24_4_1_U41", "Parent" : "3"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mul_mul_16s_8ns_24_4_1_U42", "Parent" : "3"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mul_mul_16s_8ns_24_4_1_U43", "Parent" : "3"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mul_mul_8ns_16s_24_4_1_U44", "Parent" : "3"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mul_mul_8ns_16s_24_4_1_U45", "Parent" : "3"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mul_mul_8ns_16s_24_4_1_U46", "Parent" : "3"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mul_mul_8ns_16s_24_4_1_U47", "Parent" : "3"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mul_mul_8ns_16s_24_4_1_U48", "Parent" : "3"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mul_mul_8ns_16s_24_4_1_U49", "Parent" : "3"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mul_mul_8ns_16s_24_4_1_U50", "Parent" : "3"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mul_mul_8ns_16s_24_4_1_U51", "Parent" : "3"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_16s_8ns_24s_25_4_1_U52", "Parent" : "3"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_16s_8ns_24s_25_4_1_U53", "Parent" : "3"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_16s_8ns_24s_25_4_1_U54", "Parent" : "3"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_16s_8ns_24s_25_4_1_U55", "Parent" : "3"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_16s_8ns_24s_25_4_1_U56", "Parent" : "3"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_16s_8ns_24s_25_4_1_U57", "Parent" : "3"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_16s_8ns_24s_25_4_1_U58", "Parent" : "3"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_16s_8ns_24s_25_4_1_U59", "Parent" : "3"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_24s_25_4_1_U60", "Parent" : "3"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_24s_25_4_1_U61", "Parent" : "3"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_24s_25_4_1_U62", "Parent" : "3"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_24s_25_4_1_U63", "Parent" : "3"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_24s_25_4_1_U64", "Parent" : "3"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_24s_25_4_1_U65", "Parent" : "3"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_24s_25_4_1_U66", "Parent" : "3"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_24s_25_4_1_U67", "Parent" : "3"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_25s_26_4_1_U68", "Parent" : "3"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_25s_26_4_1_U69", "Parent" : "3"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_25s_26_4_1_U70", "Parent" : "3"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_25s_26_4_1_U71", "Parent" : "3"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_25s_26_4_1_U72", "Parent" : "3"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_25s_26_4_1_U73", "Parent" : "3"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_25s_26_4_1_U74", "Parent" : "3"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_25s_26_4_1_U75", "Parent" : "3"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_25s_26_4_1_U76", "Parent" : "3"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_25s_26_4_1_U77", "Parent" : "3"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_25s_26_4_1_U78", "Parent" : "3"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_25s_26_4_1_U79", "Parent" : "3"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_25s_26_4_1_U80", "Parent" : "3"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_25s_26_4_1_U81", "Parent" : "3"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_25s_26_4_1_U82", "Parent" : "3"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_25s_26_4_1_U83", "Parent" : "3"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_26s_34_4_1_U84", "Parent" : "3"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_26s_34_4_1_U85", "Parent" : "3"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_26s_34_4_1_U86", "Parent" : "3"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_26s_34_4_1_U87", "Parent" : "3"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_26s_34_4_1_U88", "Parent" : "3"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_26s_34_4_1_U89", "Parent" : "3"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_26s_34_4_1_U90", "Parent" : "3"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_26s_34_4_1_U91", "Parent" : "3"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_26s_34_4_1_U92", "Parent" : "3"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_26s_34_4_1_U93", "Parent" : "3"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_26s_34_4_1_U94", "Parent" : "3"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_26s_34_4_1_U95", "Parent" : "3"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_26s_34_4_1_U96", "Parent" : "3"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_26s_34_4_1_U97", "Parent" : "3"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_26s_34_4_1_U98", "Parent" : "3"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_26s_34_4_1_U99", "Parent" : "3"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U100", "Parent" : "3"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U101", "Parent" : "3"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U102", "Parent" : "3"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U103", "Parent" : "3"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U104", "Parent" : "3"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U105", "Parent" : "3"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U106", "Parent" : "3"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U107", "Parent" : "3"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U108", "Parent" : "3"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U109", "Parent" : "3"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U110", "Parent" : "3"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U111", "Parent" : "3"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U112", "Parent" : "3"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U113", "Parent" : "3"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U114", "Parent" : "3"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U115", "Parent" : "3"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U116", "Parent" : "3"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U117", "Parent" : "3"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U118", "Parent" : "3"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U119", "Parent" : "3"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U120", "Parent" : "3"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U121", "Parent" : "3"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U122", "Parent" : "3"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U123", "Parent" : "3"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U124", "Parent" : "3"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U125", "Parent" : "3"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U126", "Parent" : "3"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U127", "Parent" : "3"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U128", "Parent" : "3"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U129", "Parent" : "3"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U130", "Parent" : "3"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U131", "Parent" : "3"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U132", "Parent" : "3"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U133", "Parent" : "3"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U134", "Parent" : "3"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U135", "Parent" : "3"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U136", "Parent" : "3"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U137", "Parent" : "3"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U138", "Parent" : "3"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U139", "Parent" : "3"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U140", "Parent" : "3"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U141", "Parent" : "3"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U142", "Parent" : "3"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U143", "Parent" : "3"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U144", "Parent" : "3"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U145", "Parent" : "3"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U146", "Parent" : "3"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U147", "Parent" : "3"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U148", "Parent" : "3"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U149", "Parent" : "3"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U150", "Parent" : "3"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U151", "Parent" : "3"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U152", "Parent" : "3"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U153", "Parent" : "3"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U154", "Parent" : "3"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U155", "Parent" : "3"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U156", "Parent" : "3"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U157", "Parent" : "3"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U158", "Parent" : "3"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U159", "Parent" : "3"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U160", "Parent" : "3"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U161", "Parent" : "3"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U162", "Parent" : "3"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U163", "Parent" : "3"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U164", "Parent" : "3"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U165", "Parent" : "3"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U166", "Parent" : "3"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U167", "Parent" : "3"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U168", "Parent" : "3"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U169", "Parent" : "3"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U170", "Parent" : "3"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U171", "Parent" : "3"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U172", "Parent" : "3"},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U173", "Parent" : "3"},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U174", "Parent" : "3"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U175", "Parent" : "3"},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U176", "Parent" : "3"},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U177", "Parent" : "3"},
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U178", "Parent" : "3"},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U179", "Parent" : "3"},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U180", "Parent" : "3"},
	{"ID" : "149", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U181", "Parent" : "3"},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U182", "Parent" : "3"},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U183", "Parent" : "3"},
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U184", "Parent" : "3"},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U185", "Parent" : "3"},
	{"ID" : "154", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U186", "Parent" : "3"},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U187", "Parent" : "3"},
	{"ID" : "156", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U188", "Parent" : "3"},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U189", "Parent" : "3"},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U190", "Parent" : "3"},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U191", "Parent" : "3"},
	{"ID" : "160", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U192", "Parent" : "3"},
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U193", "Parent" : "3"},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U194", "Parent" : "3"},
	{"ID" : "163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U195", "Parent" : "3"},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U196", "Parent" : "3"},
	{"ID" : "165", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U197", "Parent" : "3"},
	{"ID" : "166", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U198", "Parent" : "3"},
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U199", "Parent" : "3"},
	{"ID" : "168", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U200", "Parent" : "3"},
	{"ID" : "169", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U201", "Parent" : "3"},
	{"ID" : "170", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U202", "Parent" : "3"},
	{"ID" : "171", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U203", "Parent" : "3"},
	{"ID" : "172", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U204", "Parent" : "3"},
	{"ID" : "173", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U205", "Parent" : "3"},
	{"ID" : "174", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U206", "Parent" : "3"},
	{"ID" : "175", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U207", "Parent" : "3"},
	{"ID" : "176", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U208", "Parent" : "3"},
	{"ID" : "177", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U209", "Parent" : "3"},
	{"ID" : "178", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U210", "Parent" : "3"},
	{"ID" : "179", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U211", "Parent" : "3"},
	{"ID" : "180", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U212", "Parent" : "3"},
	{"ID" : "181", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U213", "Parent" : "3"},
	{"ID" : "182", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U214", "Parent" : "3"},
	{"ID" : "183", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U215", "Parent" : "3"},
	{"ID" : "184", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U216", "Parent" : "3"},
	{"ID" : "185", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U217", "Parent" : "3"},
	{"ID" : "186", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U218", "Parent" : "3"},
	{"ID" : "187", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U219", "Parent" : "3"},
	{"ID" : "188", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U220", "Parent" : "3"},
	{"ID" : "189", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U221", "Parent" : "3"},
	{"ID" : "190", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U222", "Parent" : "3"},
	{"ID" : "191", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U223", "Parent" : "3"},
	{"ID" : "192", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U224", "Parent" : "3"},
	{"ID" : "193", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U225", "Parent" : "3"},
	{"ID" : "194", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U226", "Parent" : "3"},
	{"ID" : "195", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U227", "Parent" : "3"},
	{"ID" : "196", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U228", "Parent" : "3"},
	{"ID" : "197", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U229", "Parent" : "3"},
	{"ID" : "198", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U230", "Parent" : "3"},
	{"ID" : "199", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U231", "Parent" : "3"},
	{"ID" : "200", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U232", "Parent" : "3"},
	{"ID" : "201", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U233", "Parent" : "3"},
	{"ID" : "202", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U234", "Parent" : "3"},
	{"ID" : "203", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U235", "Parent" : "3"},
	{"ID" : "204", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U236", "Parent" : "3"},
	{"ID" : "205", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U237", "Parent" : "3"},
	{"ID" : "206", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U238", "Parent" : "3"},
	{"ID" : "207", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U239", "Parent" : "3"},
	{"ID" : "208", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U240", "Parent" : "3"},
	{"ID" : "209", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U241", "Parent" : "3"},
	{"ID" : "210", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U242", "Parent" : "3"},
	{"ID" : "211", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U243", "Parent" : "3"},
	{"ID" : "212", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U244", "Parent" : "3"},
	{"ID" : "213", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U245", "Parent" : "3"},
	{"ID" : "214", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U246", "Parent" : "3"},
	{"ID" : "215", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U247", "Parent" : "3"},
	{"ID" : "216", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U248", "Parent" : "3"},
	{"ID" : "217", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U249", "Parent" : "3"},
	{"ID" : "218", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U250", "Parent" : "3"},
	{"ID" : "219", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U251", "Parent" : "3"},
	{"ID" : "220", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U252", "Parent" : "3"},
	{"ID" : "221", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U253", "Parent" : "3"},
	{"ID" : "222", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U254", "Parent" : "3"},
	{"ID" : "223", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U255", "Parent" : "3"},
	{"ID" : "224", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U256", "Parent" : "3"},
	{"ID" : "225", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U257", "Parent" : "3"},
	{"ID" : "226", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U258", "Parent" : "3"},
	{"ID" : "227", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U259", "Parent" : "3"},
	{"ID" : "228", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U260", "Parent" : "3"},
	{"ID" : "229", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U261", "Parent" : "3"},
	{"ID" : "230", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U262", "Parent" : "3"},
	{"ID" : "231", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U263", "Parent" : "3"},
	{"ID" : "232", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U264", "Parent" : "3"},
	{"ID" : "233", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U265", "Parent" : "3"},
	{"ID" : "234", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U266", "Parent" : "3"},
	{"ID" : "235", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U267", "Parent" : "3"},
	{"ID" : "236", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U268", "Parent" : "3"},
	{"ID" : "237", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U269", "Parent" : "3"},
	{"ID" : "238", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U270", "Parent" : "3"},
	{"ID" : "239", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U271", "Parent" : "3"},
	{"ID" : "240", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U272", "Parent" : "3"},
	{"ID" : "241", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U273", "Parent" : "3"},
	{"ID" : "242", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U274", "Parent" : "3"},
	{"ID" : "243", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U275", "Parent" : "3"},
	{"ID" : "244", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U276", "Parent" : "3"},
	{"ID" : "245", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U277", "Parent" : "3"},
	{"ID" : "246", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U278", "Parent" : "3"},
	{"ID" : "247", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U279", "Parent" : "3"},
	{"ID" : "248", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U280", "Parent" : "3"},
	{"ID" : "249", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U281", "Parent" : "3"},
	{"ID" : "250", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U282", "Parent" : "3"},
	{"ID" : "251", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_8ns_16s_34s_34_4_1_U283", "Parent" : "3"},
	{"ID" : "252", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_16s_8ns_34s_34_4_1_U284", "Parent" : "3"},
	{"ID" : "253", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_16s_8ns_34s_34_4_1_U285", "Parent" : "3"},
	{"ID" : "254", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_16s_8ns_34s_34_4_1_U286", "Parent" : "3"},
	{"ID" : "255", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_16s_8ns_34s_34_4_1_U287", "Parent" : "3"},
	{"ID" : "256", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_16s_8ns_34s_34_4_1_U288", "Parent" : "3"},
	{"ID" : "257", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_16s_8ns_34s_34_4_1_U289", "Parent" : "3"},
	{"ID" : "258", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_16s_8ns_34s_34_4_1_U290", "Parent" : "3"},
	{"ID" : "259", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.mac_muladd_16s_8ns_34s_34_4_1_U291", "Parent" : "3"},
	{"ID" : "260", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.patch_embed_accumulate_compute_16u_128u_8u_U0.flow_control_loop_delay_pipe_U", "Parent" : "3"},
	{"ID" : "261", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_U", "Parent" : "0"},
	{"ID" : "262", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_stream_i_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	patch_embed_accumulate_16u_128u_8u_s {
		inout1 {Type I LastRead 42 FirstWrite -1}
		x {Type I LastRead 0 FirstWrite -1}
		patches31 {Type IO LastRead 21 FirstWrite 1}
		y_block {Type I LastRead 0 FirstWrite -1}
		patch_embed_bias {Type I LastRead 0 FirstWrite -1}
		patch_embed_weights {Type I LastRead 0 FirstWrite -1}}
	patch_embed_accumulate_16u_128u_8u_Block_entry2_proc8 {
		y_block {Type I LastRead 0 FirstWrite -1}}
	patch_embed_accumulate_read_16u_128u_8u_s {
		inout1 {Type I LastRead 42 FirstWrite -1}
		image_r {Type I LastRead 0 FirstWrite -1}
		image_stream {Type O LastRead -1 FirstWrite 43}
		p_read {Type I LastRead 0 FirstWrite -1}}
	patch_embed_accumulate_compute_16u_128u_8u_s {
		image_stream {Type I LastRead 1 FirstWrite -1}
		patches {Type IO LastRead 21 FirstWrite 1}
		patch_embed_bias {Type I LastRead 0 FirstWrite -1}
		patch_embed_weights {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "27714", "Max" : "27714"}
	, {"Name" : "Interval", "Min" : "27673", "Max" : "27673"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_inout1_AWVALID VALID 1 1 }  { m_axi_inout1_AWREADY READY 0 1 }  { m_axi_inout1_AWADDR ADDR 1 64 }  { m_axi_inout1_AWID ID 1 1 }  { m_axi_inout1_AWLEN SIZE 1 32 }  { m_axi_inout1_AWSIZE BURST 1 3 }  { m_axi_inout1_AWBURST LOCK 1 2 }  { m_axi_inout1_AWLOCK CACHE 1 2 }  { m_axi_inout1_AWCACHE PROT 1 4 }  { m_axi_inout1_AWPROT QOS 1 3 }  { m_axi_inout1_AWQOS REGION 1 4 }  { m_axi_inout1_AWREGION USER 1 4 }  { m_axi_inout1_AWUSER DATA 1 1 }  { m_axi_inout1_WVALID VALID 1 1 }  { m_axi_inout1_WREADY READY 0 1 }  { m_axi_inout1_WDATA FIFONUM 1 256 }  { m_axi_inout1_WSTRB STRB 1 32 }  { m_axi_inout1_WLAST LAST 1 1 }  { m_axi_inout1_WID ID 1 1 }  { m_axi_inout1_WUSER DATA 1 1 }  { m_axi_inout1_ARVALID VALID 1 1 }  { m_axi_inout1_ARREADY READY 0 1 }  { m_axi_inout1_ARADDR ADDR 1 64 }  { m_axi_inout1_ARID ID 1 1 }  { m_axi_inout1_ARLEN SIZE 1 32 }  { m_axi_inout1_ARSIZE BURST 1 3 }  { m_axi_inout1_ARBURST LOCK 1 2 }  { m_axi_inout1_ARLOCK CACHE 1 2 }  { m_axi_inout1_ARCACHE PROT 1 4 }  { m_axi_inout1_ARPROT QOS 1 3 }  { m_axi_inout1_ARQOS REGION 1 4 }  { m_axi_inout1_ARREGION USER 1 4 }  { m_axi_inout1_ARUSER DATA 1 1 }  { m_axi_inout1_RVALID VALID 0 1 }  { m_axi_inout1_RREADY READY 1 1 }  { m_axi_inout1_RDATA FIFONUM 0 256 }  { m_axi_inout1_RLAST LAST 0 1 }  { m_axi_inout1_RID ID 0 1 }  { m_axi_inout1_RFIFONUM LEN 0 9 }  { m_axi_inout1_RUSER DATA 0 1 }  { m_axi_inout1_RRESP RESP 0 2 }  { m_axi_inout1_BVALID VALID 0 1 }  { m_axi_inout1_BREADY READY 1 1 }  { m_axi_inout1_BRESP RESP 0 2 }  { m_axi_inout1_BID ID 0 1 }  { m_axi_inout1_BUSER DATA 0 1 } } }
	x { ap_none {  { x in_data 0 64 }  { x_ap_vld in_vld 0 1 } } }
	patches31 { ap_memory {  { patches31_address0 mem_address 1 8 }  { patches31_ce0 mem_ce 1 1 }  { patches31_d0 mem_din 1 512 }  { patches31_q0 mem_dout 0 512 }  { patches31_we0 mem_we 1 1 }  { patches31_address1 MemPortADDR2 1 8 }  { patches31_ce1 MemPortCE2 1 1 }  { patches31_d1 MemPortDIN2 1 512 }  { patches31_q1 mem_dout 0 512 }  { patches31_we1 MemPortWE2 1 1 } } }
	y_block { ap_none {  { y_block in_data 0 3 }  { y_block_ap_vld in_vld 0 1 } } }
	patch_embed_bias { ap_memory {  { patch_embed_bias_address0 mem_address 1 5 }  { patch_embed_bias_ce0 mem_ce 1 1 }  { patch_embed_bias_d0 mem_din 1 128 }  { patch_embed_bias_q0 mem_dout 0 128 }  { patch_embed_bias_we0 mem_we 1 1 }  { patch_embed_bias_address1 mem_address 1 5 }  { patch_embed_bias_ce1 mem_ce 1 1 }  { patch_embed_bias_d1 mem_din 1 128 }  { patch_embed_bias_q1 mem_dout 0 128 }  { patch_embed_bias_we1 mem_we 1 1 } } }
	patch_embed_weights { ap_memory {  { patch_embed_weights_address0 mem_address 1 11 }  { patch_embed_weights_ce0 mem_ce 1 1 }  { patch_embed_weights_d0 mem_din 1 2048 }  { patch_embed_weights_q0 mem_dout 0 2048 }  { patch_embed_weights_we0 mem_we 1 1 }  { patch_embed_weights_address1 mem_address 1 11 }  { patch_embed_weights_ce1 mem_ce 1 1 }  { patch_embed_weights_d1 mem_din 1 2048 }  { patch_embed_weights_q1 mem_dout 0 2048 }  { patch_embed_weights_we1 mem_we 1 1 } } }
}
