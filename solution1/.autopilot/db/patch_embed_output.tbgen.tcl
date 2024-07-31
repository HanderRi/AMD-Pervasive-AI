set moduleName patch_embed_output
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {patch_embed_output}
set C_modelType { void 0 }
set C_modelArgList {
	{ patches31 int 512 regular {array 192 { 1 3 } 1 1 }  }
	{ inout2 int 256 regular {axi_master 1}  }
	{ out_r int 64 regular  }
	{ weights int 256 regular {axi_master 0}  }
	{ pos_embed int 64 regular  }
	{ y_block int 3 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "patches31", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "inout2", "interface" : "axi_master", "bitwidth" : 256, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "x","offset": { "type": "dynamic","port_name": "x","bundle": "control"},"direction": "READWRITE"},{"cName": "tmp2","offset": { "type": "dynamic","port_name": "tmp2","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "out_r", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "weights", "interface" : "axi_master", "bitwidth" : 256, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "patch_embed_weights","offset": { "type": "dynamic","port_name": "patch_embed_weights","bundle": "control"},"direction": "READONLY"},{"cName": "patch_embed_bias","offset": { "type": "dynamic","port_name": "patch_embed_bias","bundle": "control"},"direction": "READONLY"},{"cName": "pos_embed","offset": { "type": "dynamic","port_name": "pos_embed","bundle": "control"},"direction": "READONLY"},{"cName": "attn_weights","offset": { "type": "dynamic","port_name": "attn_weights","bundle": "control"},"direction": "READONLY"},{"cName": "attn_bias","offset": { "type": "dynamic","port_name": "attn_bias","bundle": "control"},"direction": "READONLY"},{"cName": "vit_weights_l1","offset": { "type": "dynamic","port_name": "vit_weights_l1","bundle": "control"},"direction": "READONLY"},{"cName": "vit_bias_l1","offset": { "type": "dynamic","port_name": "vit_bias_l1","bundle": "control"},"direction": "READONLY"},{"cName": "vit_weights_l2","offset": { "type": "dynamic","port_name": "vit_weights_l2","bundle": "control"},"direction": "READONLY"},{"cName": "vit_bias_l2","offset": { "type": "dynamic","port_name": "vit_bias_l2","bundle": "control"},"direction": "READONLY"},{"cName": "norm_weights","offset": { "type": "dynamic","port_name": "norm_weights","bundle": "control"},"direction": "READONLY"},{"cName": "norm_bias","offset": { "type": "dynamic","port_name": "norm_bias","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "pos_embed", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "y_block", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 105
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ patches31_address0 sc_out sc_lv 8 signal 0 } 
	{ patches31_ce0 sc_out sc_logic 1 signal 0 } 
	{ patches31_q0 sc_in sc_lv 512 signal 0 } 
	{ m_axi_inout2_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_inout2_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_inout2_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_inout2_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_inout2_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_inout2_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_inout2_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_inout2_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_inout2_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_inout2_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_inout2_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_inout2_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_inout2_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_inout2_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_inout2_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_inout2_WDATA sc_out sc_lv 256 signal 1 } 
	{ m_axi_inout2_WSTRB sc_out sc_lv 32 signal 1 } 
	{ m_axi_inout2_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_inout2_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_inout2_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_inout2_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_inout2_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_inout2_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_inout2_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_inout2_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_inout2_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_inout2_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_inout2_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_inout2_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_inout2_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_inout2_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_inout2_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_inout2_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_inout2_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_inout2_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_inout2_RDATA sc_in sc_lv 256 signal 1 } 
	{ m_axi_inout2_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_inout2_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_inout2_RFIFONUM sc_in sc_lv 9 signal 1 } 
	{ m_axi_inout2_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_inout2_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_inout2_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_inout2_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_inout2_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_inout2_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_inout2_BUSER sc_in sc_lv 1 signal 1 } 
	{ out_r sc_in sc_lv 64 signal 2 } 
	{ m_axi_weights_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_weights_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_weights_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_weights_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_weights_AWLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_weights_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_weights_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_weights_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_weights_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_weights_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_weights_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_weights_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_weights_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_weights_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_weights_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_weights_WDATA sc_out sc_lv 256 signal 3 } 
	{ m_axi_weights_WSTRB sc_out sc_lv 32 signal 3 } 
	{ m_axi_weights_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_weights_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_weights_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_weights_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_weights_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_weights_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_weights_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_weights_ARLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_weights_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_weights_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_weights_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_weights_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_weights_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_weights_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_weights_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_weights_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_weights_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_weights_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_weights_RDATA sc_in sc_lv 256 signal 3 } 
	{ m_axi_weights_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_weights_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_weights_RFIFONUM sc_in sc_lv 9 signal 3 } 
	{ m_axi_weights_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_weights_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_weights_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_weights_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_weights_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_weights_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_weights_BUSER sc_in sc_lv 1 signal 3 } 
	{ pos_embed sc_in sc_lv 64 signal 4 } 
	{ y_block sc_in sc_lv 3 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "patches31_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "patches31", "role": "address0" }} , 
 	{ "name": "patches31_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "patches31", "role": "ce0" }} , 
 	{ "name": "patches31_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "patches31", "role": "q0" }} , 
 	{ "name": "m_axi_inout2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inout2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_inout2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inout2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_inout2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "inout2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_inout2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "inout2", "role": "AWID" }} , 
 	{ "name": "m_axi_inout2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inout2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_inout2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "inout2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_inout2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "inout2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_inout2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "inout2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_inout2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "inout2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_inout2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "inout2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_inout2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "inout2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_inout2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "inout2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_inout2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "inout2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_inout2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inout2", "role": "WVALID" }} , 
 	{ "name": "m_axi_inout2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inout2", "role": "WREADY" }} , 
 	{ "name": "m_axi_inout2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "inout2", "role": "WDATA" }} , 
 	{ "name": "m_axi_inout2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inout2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_inout2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inout2", "role": "WLAST" }} , 
 	{ "name": "m_axi_inout2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "inout2", "role": "WID" }} , 
 	{ "name": "m_axi_inout2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "inout2", "role": "WUSER" }} , 
 	{ "name": "m_axi_inout2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inout2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_inout2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inout2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_inout2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "inout2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_inout2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "inout2", "role": "ARID" }} , 
 	{ "name": "m_axi_inout2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inout2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_inout2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "inout2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_inout2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "inout2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_inout2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "inout2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_inout2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "inout2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_inout2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "inout2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_inout2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "inout2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_inout2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "inout2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_inout2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "inout2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_inout2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inout2", "role": "RVALID" }} , 
 	{ "name": "m_axi_inout2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inout2", "role": "RREADY" }} , 
 	{ "name": "m_axi_inout2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "inout2", "role": "RDATA" }} , 
 	{ "name": "m_axi_inout2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inout2", "role": "RLAST" }} , 
 	{ "name": "m_axi_inout2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "inout2", "role": "RID" }} , 
 	{ "name": "m_axi_inout2_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "inout2", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_inout2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "inout2", "role": "RUSER" }} , 
 	{ "name": "m_axi_inout2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "inout2", "role": "RRESP" }} , 
 	{ "name": "m_axi_inout2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inout2", "role": "BVALID" }} , 
 	{ "name": "m_axi_inout2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inout2", "role": "BREADY" }} , 
 	{ "name": "m_axi_inout2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "inout2", "role": "BRESP" }} , 
 	{ "name": "m_axi_inout2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "inout2", "role": "BID" }} , 
 	{ "name": "m_axi_inout2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "inout2", "role": "BUSER" }} , 
 	{ "name": "out_r", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "out_r", "role": "default" }} , 
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
 	{ "name": "pos_embed", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "pos_embed", "role": "default" }} , 
 	{ "name": "y_block", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "y_block", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "patch_embed_output",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "788", "EstimateLatencyMax" : "788",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "patches31", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_patch_embed_output_Pipeline_ln147_for_each_patch_x_ln149_for_block_dim_fu_100", "Port" : "patches31", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "inout2", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "inout2_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "inout2_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_patch_embed_output_Pipeline_ln147_for_each_patch_x_ln149_for_block_dim_fu_100", "Port" : "inout2", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "out_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_patch_embed_output_Pipeline_ln147_for_each_patch_x_ln149_for_block_dim_fu_100", "Port" : "weights", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "pos_embed", "Type" : "None", "Direction" : "I"},
			{"Name" : "y_block", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_patch_embed_output_Pipeline_ln147_for_each_patch_x_ln149_for_block_dim_fu_100", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "patch_embed_output_Pipeline_ln147_for_each_patch_x_ln149_for_block_dim",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "780", "EstimateLatencyMax" : "780",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "inout2", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "inout2_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln147_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln144_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln147_2_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "patches31", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pos_embed", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "weights_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "weights_blk_n_AR", "Type" : "RtlSignal"}]},
			{"Name" : "select_ln813_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln813_i", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "_ln147_for_each_patch_x__ln149_for_block_dim", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_patch_embed_output_Pipeline_ln147_for_each_patch_x_ln149_for_block_dim_fu_100.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	patch_embed_output {
		patches31 {Type I LastRead 0 FirstWrite -1}
		inout2 {Type O LastRead 4 FirstWrite 11}
		out_r {Type I LastRead 0 FirstWrite -1}
		weights {Type I LastRead 9 FirstWrite -1}
		pos_embed {Type I LastRead 2 FirstWrite -1}
		y_block {Type I LastRead 0 FirstWrite -1}}
	patch_embed_output_Pipeline_ln147_for_each_patch_x_ln149_for_block_dim {
		inout2 {Type O LastRead -1 FirstWrite 11}
		sext_ln147_i {Type I LastRead 0 FirstWrite -1}
		zext_ln144_i {Type I LastRead 0 FirstWrite -1}
		zext_ln147_2_i {Type I LastRead 0 FirstWrite -1}
		patches31 {Type I LastRead 0 FirstWrite -1}
		pos_embed {Type I LastRead 0 FirstWrite -1}
		weights {Type I LastRead 9 FirstWrite -1}
		select_ln813_i {Type I LastRead 0 FirstWrite -1}
		icmp_ln813_i {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "788", "Max" : "788"}
	, {"Name" : "Interval", "Min" : "788", "Max" : "788"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	patches31 { ap_memory {  { patches31_address0 mem_address 1 8 }  { patches31_ce0 mem_ce 1 1 }  { patches31_q0 mem_dout 0 512 } } }
	 { m_axi {  { m_axi_inout2_AWVALID VALID 1 1 }  { m_axi_inout2_AWREADY READY 0 1 }  { m_axi_inout2_AWADDR ADDR 1 64 }  { m_axi_inout2_AWID ID 1 1 }  { m_axi_inout2_AWLEN SIZE 1 32 }  { m_axi_inout2_AWSIZE BURST 1 3 }  { m_axi_inout2_AWBURST LOCK 1 2 }  { m_axi_inout2_AWLOCK CACHE 1 2 }  { m_axi_inout2_AWCACHE PROT 1 4 }  { m_axi_inout2_AWPROT QOS 1 3 }  { m_axi_inout2_AWQOS REGION 1 4 }  { m_axi_inout2_AWREGION USER 1 4 }  { m_axi_inout2_AWUSER DATA 1 1 }  { m_axi_inout2_WVALID VALID 1 1 }  { m_axi_inout2_WREADY READY 0 1 }  { m_axi_inout2_WDATA FIFONUM 1 256 }  { m_axi_inout2_WSTRB STRB 1 32 }  { m_axi_inout2_WLAST LAST 1 1 }  { m_axi_inout2_WID ID 1 1 }  { m_axi_inout2_WUSER DATA 1 1 }  { m_axi_inout2_ARVALID VALID 1 1 }  { m_axi_inout2_ARREADY READY 0 1 }  { m_axi_inout2_ARADDR ADDR 1 64 }  { m_axi_inout2_ARID ID 1 1 }  { m_axi_inout2_ARLEN SIZE 1 32 }  { m_axi_inout2_ARSIZE BURST 1 3 }  { m_axi_inout2_ARBURST LOCK 1 2 }  { m_axi_inout2_ARLOCK CACHE 1 2 }  { m_axi_inout2_ARCACHE PROT 1 4 }  { m_axi_inout2_ARPROT QOS 1 3 }  { m_axi_inout2_ARQOS REGION 1 4 }  { m_axi_inout2_ARREGION USER 1 4 }  { m_axi_inout2_ARUSER DATA 1 1 }  { m_axi_inout2_RVALID VALID 0 1 }  { m_axi_inout2_RREADY READY 1 1 }  { m_axi_inout2_RDATA FIFONUM 0 256 }  { m_axi_inout2_RLAST LAST 0 1 }  { m_axi_inout2_RID ID 0 1 }  { m_axi_inout2_RFIFONUM LEN 0 9 }  { m_axi_inout2_RUSER DATA 0 1 }  { m_axi_inout2_RRESP RESP 0 2 }  { m_axi_inout2_BVALID VALID 0 1 }  { m_axi_inout2_BREADY READY 1 1 }  { m_axi_inout2_BRESP RESP 0 2 }  { m_axi_inout2_BID ID 0 1 }  { m_axi_inout2_BUSER DATA 0 1 } } }
	out_r { ap_none {  { out_r in_data 0 64 } } }
	 { m_axi {  { m_axi_weights_AWVALID VALID 1 1 }  { m_axi_weights_AWREADY READY 0 1 }  { m_axi_weights_AWADDR ADDR 1 64 }  { m_axi_weights_AWID ID 1 1 }  { m_axi_weights_AWLEN SIZE 1 32 }  { m_axi_weights_AWSIZE BURST 1 3 }  { m_axi_weights_AWBURST LOCK 1 2 }  { m_axi_weights_AWLOCK CACHE 1 2 }  { m_axi_weights_AWCACHE PROT 1 4 }  { m_axi_weights_AWPROT QOS 1 3 }  { m_axi_weights_AWQOS REGION 1 4 }  { m_axi_weights_AWREGION USER 1 4 }  { m_axi_weights_AWUSER DATA 1 1 }  { m_axi_weights_WVALID VALID 1 1 }  { m_axi_weights_WREADY READY 0 1 }  { m_axi_weights_WDATA FIFONUM 1 256 }  { m_axi_weights_WSTRB STRB 1 32 }  { m_axi_weights_WLAST LAST 1 1 }  { m_axi_weights_WID ID 1 1 }  { m_axi_weights_WUSER DATA 1 1 }  { m_axi_weights_ARVALID VALID 1 1 }  { m_axi_weights_ARREADY READY 0 1 }  { m_axi_weights_ARADDR ADDR 1 64 }  { m_axi_weights_ARID ID 1 1 }  { m_axi_weights_ARLEN SIZE 1 32 }  { m_axi_weights_ARSIZE BURST 1 3 }  { m_axi_weights_ARBURST LOCK 1 2 }  { m_axi_weights_ARLOCK CACHE 1 2 }  { m_axi_weights_ARCACHE PROT 1 4 }  { m_axi_weights_ARPROT QOS 1 3 }  { m_axi_weights_ARQOS REGION 1 4 }  { m_axi_weights_ARREGION USER 1 4 }  { m_axi_weights_ARUSER DATA 1 1 }  { m_axi_weights_RVALID VALID 0 1 }  { m_axi_weights_RREADY READY 1 1 }  { m_axi_weights_RDATA FIFONUM 0 256 }  { m_axi_weights_RLAST LAST 0 1 }  { m_axi_weights_RID ID 0 1 }  { m_axi_weights_RFIFONUM LEN 0 9 }  { m_axi_weights_RUSER DATA 0 1 }  { m_axi_weights_RRESP RESP 0 2 }  { m_axi_weights_BVALID VALID 0 1 }  { m_axi_weights_BREADY READY 1 1 }  { m_axi_weights_BRESP RESP 0 2 }  { m_axi_weights_BID ID 0 1 }  { m_axi_weights_BUSER DATA 0 1 } } }
	pos_embed { ap_none {  { pos_embed in_data 0 64 } } }
	y_block { ap_none {  { y_block in_data 0 3 } } }
}
