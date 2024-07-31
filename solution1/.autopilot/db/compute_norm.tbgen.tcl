set moduleName compute_norm
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
set C_modelName {compute_norm}
set C_modelType { void 0 }
set C_modelArgList {
	{ inout2 int 256 regular {axi_master 0}  }
	{ x int 64 regular  }
	{ inout1 int 256 regular {axi_master 1}  }
	{ out_r int 64 regular  }
	{ weights int 128 regular {array 24 { 1 3 } 1 1 }  }
	{ bias int 128 regular {array 24 { 1 3 } 1 1 }  }
	{ norm_eps_V int 3 regular {pointer 0} {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "inout2", "interface" : "axi_master", "bitwidth" : 256, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "x","offset": { "type": "dynamic","port_name": "x","bundle": "control"},"direction": "READWRITE"},{"cName": "tmp2","offset": { "type": "dynamic","port_name": "tmp2","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "x", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "inout1", "interface" : "axi_master", "bitwidth" : 256, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "images","offset": { "type": "dynamic","port_name": "images","bundle": "control"},"direction": "READONLY"},{"cName": "tmp1","offset": { "type": "dynamic","port_name": "tmp1","bundle": "control"},"direction": "READWRITE"},{"cName": "attn","offset": { "type": "dynamic","port_name": "attn","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "out_r", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "weights", "interface" : "memory", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "patch_embed_weights","offset": { "type": "dynamic","port_name": "patch_embed_weights","bundle": "control"},"direction": "READONLY"},{"cName": "patch_embed_bias","offset": { "type": "dynamic","port_name": "patch_embed_bias","bundle": "control"},"direction": "READONLY"},{"cName": "pos_embed","offset": { "type": "dynamic","port_name": "pos_embed","bundle": "control"},"direction": "READONLY"},{"cName": "attn_weights","offset": { "type": "dynamic","port_name": "attn_weights","bundle": "control"},"direction": "READONLY"},{"cName": "attn_bias","offset": { "type": "dynamic","port_name": "attn_bias","bundle": "control"},"direction": "READONLY"},{"cName": "vit_weights_l1","offset": { "type": "dynamic","port_name": "vit_weights_l1","bundle": "control"},"direction": "READONLY"},{"cName": "vit_bias_l1","offset": { "type": "dynamic","port_name": "vit_bias_l1","bundle": "control"},"direction": "READONLY"},{"cName": "vit_weights_l2","offset": { "type": "dynamic","port_name": "vit_weights_l2","bundle": "control"},"direction": "READONLY"},{"cName": "vit_bias_l2","offset": { "type": "dynamic","port_name": "vit_bias_l2","bundle": "control"},"direction": "READONLY"},{"cName": "norm_weights","offset": { "type": "dynamic","port_name": "norm_weights","bundle": "control"},"direction": "READONLY"},{"cName": "norm_bias","offset": { "type": "dynamic","port_name": "norm_bias","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "bias", "interface" : "memory", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "norm_eps_V", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 125
set portList { 
	{ m_axi_inout2_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_inout2_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_inout2_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_inout2_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_inout2_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_inout2_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_inout2_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_inout2_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_inout2_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_inout2_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_inout2_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_inout2_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_inout2_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_inout2_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_inout2_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_inout2_WDATA sc_out sc_lv 256 signal 0 } 
	{ m_axi_inout2_WSTRB sc_out sc_lv 32 signal 0 } 
	{ m_axi_inout2_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_inout2_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_inout2_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_inout2_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_inout2_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_inout2_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_inout2_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_inout2_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_inout2_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_inout2_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_inout2_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_inout2_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_inout2_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_inout2_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_inout2_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_inout2_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_inout2_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_inout2_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_inout2_RDATA sc_in sc_lv 256 signal 0 } 
	{ m_axi_inout2_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_inout2_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_inout2_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_inout2_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_inout2_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_inout2_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_inout2_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_inout2_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_inout2_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_inout2_BUSER sc_in sc_lv 1 signal 0 } 
	{ x sc_in sc_lv 64 signal 1 } 
	{ m_axi_inout1_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_inout1_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_inout1_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_inout1_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_inout1_AWLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_inout1_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_inout1_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_inout1_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_inout1_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_inout1_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_inout1_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_inout1_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_inout1_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_inout1_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_inout1_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_inout1_WDATA sc_out sc_lv 256 signal 2 } 
	{ m_axi_inout1_WSTRB sc_out sc_lv 32 signal 2 } 
	{ m_axi_inout1_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_inout1_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_inout1_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_inout1_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_inout1_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_inout1_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_inout1_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_inout1_ARLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_inout1_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_inout1_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_inout1_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_inout1_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_inout1_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_inout1_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_inout1_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_inout1_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_inout1_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_inout1_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_inout1_RDATA sc_in sc_lv 256 signal 2 } 
	{ m_axi_inout1_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_inout1_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_inout1_RFIFONUM sc_in sc_lv 9 signal 2 } 
	{ m_axi_inout1_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_inout1_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_inout1_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_inout1_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_inout1_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_inout1_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_inout1_BUSER sc_in sc_lv 1 signal 2 } 
	{ out_r sc_in sc_lv 64 signal 3 } 
	{ weights_address0 sc_out sc_lv 5 signal 4 } 
	{ weights_ce0 sc_out sc_logic 1 signal 4 } 
	{ weights_d0 sc_out sc_lv 128 signal 4 } 
	{ weights_q0 sc_in sc_lv 128 signal 4 } 
	{ weights_we0 sc_out sc_logic 1 signal 4 } 
	{ weights_address1 sc_out sc_lv 5 signal 4 } 
	{ weights_ce1 sc_out sc_logic 1 signal 4 } 
	{ weights_d1 sc_out sc_lv 128 signal 4 } 
	{ weights_q1 sc_in sc_lv 128 signal 4 } 
	{ weights_we1 sc_out sc_logic 1 signal 4 } 
	{ bias_address0 sc_out sc_lv 5 signal 5 } 
	{ bias_ce0 sc_out sc_logic 1 signal 5 } 
	{ bias_d0 sc_out sc_lv 128 signal 5 } 
	{ bias_q0 sc_in sc_lv 128 signal 5 } 
	{ bias_we0 sc_out sc_logic 1 signal 5 } 
	{ bias_address1 sc_out sc_lv 5 signal 5 } 
	{ bias_ce1 sc_out sc_logic 1 signal 5 } 
	{ bias_d1 sc_out sc_lv 128 signal 5 } 
	{ bias_q1 sc_in sc_lv 128 signal 5 } 
	{ bias_we1 sc_out sc_logic 1 signal 5 } 
	{ norm_eps_V sc_in sc_lv 3 signal 6 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ x_ap_vld sc_in sc_logic 1 invld 1 } 
	{ out_r_ap_vld sc_in sc_logic 1 invld 3 } 
	{ norm_eps_V_ap_vld sc_in sc_logic 1 invld 6 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
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
 	{ "name": "x", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x", "role": "default" }} , 
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
 	{ "name": "out_r", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "out_r", "role": "default" }} , 
 	{ "name": "weights_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "weights", "role": "address0" }} , 
 	{ "name": "weights_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "ce0" }} , 
 	{ "name": "weights_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "weights", "role": "d0" }} , 
 	{ "name": "weights_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "weights", "role": "q0" }} , 
 	{ "name": "weights_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "we0" }} , 
 	{ "name": "weights_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "weights", "role": "address1" }} , 
 	{ "name": "weights_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "ce1" }} , 
 	{ "name": "weights_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "weights", "role": "d1" }} , 
 	{ "name": "weights_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "weights", "role": "q1" }} , 
 	{ "name": "weights_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "we1" }} , 
 	{ "name": "bias_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "bias", "role": "address0" }} , 
 	{ "name": "bias_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias", "role": "ce0" }} , 
 	{ "name": "bias_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bias", "role": "d0" }} , 
 	{ "name": "bias_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bias", "role": "q0" }} , 
 	{ "name": "bias_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias", "role": "we0" }} , 
 	{ "name": "bias_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "bias", "role": "address1" }} , 
 	{ "name": "bias_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias", "role": "ce1" }} , 
 	{ "name": "bias_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bias", "role": "d1" }} , 
 	{ "name": "bias_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bias", "role": "q1" }} , 
 	{ "name": "bias_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias", "role": "we1" }} , 
 	{ "name": "norm_eps_V", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "norm_eps_V", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "x_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "x", "role": "ap_vld" }} , 
 	{ "name": "out_r_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "out_r", "role": "ap_vld" }} , 
 	{ "name": "norm_eps_V_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "norm_eps_V", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "compute_norm",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3196", "EstimateLatencyMax" : "3198",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "dataflow_in_loop_ln131_for_each_patch_U0"}],
		"OutputProcess" : [
			{"ID" : "1", "Name" : "dataflow_in_loop_ln131_for_each_patch_U0"}],
		"Port" : [
			{"Name" : "inout2", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_ln131_for_each_patch_U0", "Port" : "inout2"}]},
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "inout1", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_ln131_for_each_patch_U0", "Port" : "inout1"}]},
			{"Name" : "out_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_ln131_for_each_patch_U0", "Port" : "weights"}]},
			{"Name" : "bias", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_ln131_for_each_patch_U0", "Port" : "bias"}]},
			{"Name" : "norm_eps_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_ln131_for_each_patch_U0", "Port" : "norm_eps_V"}]}],
		"Loop" : [
			{"Name" : "_ln131_for_each_patch", "PipelineType" : "dataflow",
				"LoopDec" : {"InfiniteLoop" : "0", "BodyInst" : "dataflow_in_loop_ln131_for_each_patch_U0", "has_continue" : "1"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_ln131_for_each_patch_U0", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "27", "47", "48"],
		"CDFG" : "dataflow_in_loop_ln131_for_each_patch",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "122", "EstimateLatencyMax" : "124",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "10", "Name" : "layernorm_accumulate_U0"},
			{"ID" : "27", "Name" : "layernorm_output_U0"}],
		"OutputProcess" : [
			{"ID" : "27", "Name" : "layernorm_output_U0"}],
		"Port" : [
			{"Name" : "inout2", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "layernorm_accumulate_U0", "Port" : "inout2"}]},
			{"Name" : "patch", "Type" : "None", "Direction" : "I"},
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "inout1", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "layernorm_output_U0", "Port" : "inout1"}]},
			{"Name" : "out_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "layernorm_output_U0", "Port" : "weights"}]},
			{"Name" : "bias", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "layernorm_output_U0", "Port" : "bias"}]},
			{"Name" : "norm_eps_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "layernorm_output_U0", "Port" : "norm_eps_V"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_1_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_2_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_3_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_4_U", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_5_U", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_6_U", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_7_U", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_accumulate_U0", "Parent" : "1", "Child" : ["11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26"],
		"CDFG" : "layernorm_accumulate",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Rewind", "UnalignedPipeline" : "0", "RewindPipeline" : "1", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "35",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "inout2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "inout2_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "inout2_blk_n_AR", "Type" : "RtlSignal"}]},
			{"Name" : "patch", "Type" : "None", "Direction" : "I"},
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_patch_data_M_elems_V1", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["27"], "DependentChan" : "2"},
			{"Name" : "x_patch_data_M_elems_V_12", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["27"], "DependentChan" : "3"},
			{"Name" : "x_patch_data_M_elems_V_23", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["27"], "DependentChan" : "4"},
			{"Name" : "x_patch_data_M_elems_V_34", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["27"], "DependentChan" : "5"},
			{"Name" : "x_patch_data_M_elems_V_45", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["27"], "DependentChan" : "6"},
			{"Name" : "x_patch_data_M_elems_V_56", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["27"], "DependentChan" : "7"},
			{"Name" : "x_patch_data_M_elems_V_67", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["27"], "DependentChan" : "8"},
			{"Name" : "x_patch_data_M_elems_V_78", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["27"], "DependentChan" : "9"}],
		"Loop" : [
			{"Name" : "_ln70_for_block_dim", "PipelineType" : "rewind",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter11", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter11", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "has_continue" : "1"}}]},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_accumulate_U0.mul_32s_16ns_48_1_1_U378", "Parent" : "10"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_accumulate_U0.mul_32s_26s_54_1_1_U379", "Parent" : "10"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_accumulate_U0.mul_32s_16ns_48_1_1_U380", "Parent" : "10"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_accumulate_U0.mul_32s_26s_54_1_1_U381", "Parent" : "10"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_accumulate_U0.mul_32s_16ns_48_1_1_U382", "Parent" : "10"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_accumulate_U0.mul_32s_26s_54_1_1_U383", "Parent" : "10"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_accumulate_U0.mul_32s_16ns_48_1_1_U384", "Parent" : "10"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_accumulate_U0.mul_32s_16ns_48_1_1_U385", "Parent" : "10"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_accumulate_U0.mul_32s_16ns_48_1_1_U386", "Parent" : "10"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_accumulate_U0.mul_32s_26s_54_1_1_U387", "Parent" : "10"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_accumulate_U0.mul_32s_26s_54_1_1_U388", "Parent" : "10"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_accumulate_U0.mul_32s_26s_54_1_1_U389", "Parent" : "10"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_accumulate_U0.mul_32s_16ns_48_1_1_U390", "Parent" : "10"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_accumulate_U0.mul_32s_16ns_48_1_1_U391", "Parent" : "10"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_accumulate_U0.mul_32s_26s_54_1_1_U392", "Parent" : "10"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_accumulate_U0.mul_32s_26s_54_1_1_U393", "Parent" : "10"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0", "Parent" : "1", "Child" : ["28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46"],
		"CDFG" : "layernorm_output",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Rewind", "UnalignedPipeline" : "0", "RewindPipeline" : "1", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "87", "EstimateLatencyMax" : "88",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "inout1", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "inout1_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "inout1_blk_n_B", "Type" : "RtlSignal"},
					{"Name" : "inout1_blk_n_AW", "Type" : "RtlSignal"}]},
			{"Name" : "patch", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_patch_data_M_elems_V1", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["10"], "DependentChan" : "2"},
			{"Name" : "x_patch_data_M_elems_V_12", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["10"], "DependentChan" : "3"},
			{"Name" : "x_patch_data_M_elems_V_23", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["10"], "DependentChan" : "4"},
			{"Name" : "x_patch_data_M_elems_V_34", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["10"], "DependentChan" : "5"},
			{"Name" : "x_patch_data_M_elems_V_45", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["10"], "DependentChan" : "6"},
			{"Name" : "x_patch_data_M_elems_V_56", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["10"], "DependentChan" : "7"},
			{"Name" : "x_patch_data_M_elems_V_67", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["10"], "DependentChan" : "8"},
			{"Name" : "x_patch_data_M_elems_V_78", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["10"], "DependentChan" : "9"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["10"], "DependentChan" : "47", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["10"], "DependentChan" : "48", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "weights", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bias", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "norm_eps_V", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "_ln106_for_block_dim", "PipelineType" : "rewind",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter64", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter64", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "has_continue" : "1"}}]},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0.grp_sqrt_fixed_32_10_s_fu_456", "Parent" : "27",
		"CDFG" : "sqrt_fixed_32_10_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "6", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0.mul_32s_32s_54_1_1_U408", "Parent" : "27"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0.udiv_45s_27ns_32_49_1_U409", "Parent" : "27"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0.mul_32s_54s_54_1_1_U410", "Parent" : "27"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0.mul_32s_54s_54_1_1_U411", "Parent" : "27"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0.mul_32s_54s_54_1_1_U412", "Parent" : "27"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0.mul_32s_54s_54_1_1_U413", "Parent" : "27"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0.mul_32s_54s_54_1_1_U414", "Parent" : "27"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0.mul_32s_54s_54_1_1_U415", "Parent" : "27"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0.mul_32s_54s_54_1_1_U416", "Parent" : "27"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0.mul_32s_54s_54_1_1_U417", "Parent" : "27"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0.mul_32s_16s_43_1_1_U418", "Parent" : "27"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0.mul_32s_16s_43_1_1_U419", "Parent" : "27"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0.mul_32s_16s_43_1_1_U420", "Parent" : "27"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0.mul_32s_16s_43_1_1_U421", "Parent" : "27"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0.mul_32s_16s_43_1_1_U422", "Parent" : "27"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0.mul_32s_16s_43_1_1_U423", "Parent" : "27"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0.mul_32s_16s_43_1_1_U424", "Parent" : "27"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0.mul_32s_16s_43_1_1_U425", "Parent" : "27"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_ln131_for_each_patch_U0.mean_V_U", "Parent" : "1"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_ln131_for_each_patch_U0.mean_sq_V_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	compute_norm {
		inout2 {Type I LastRead 9 FirstWrite -1}
		x {Type I LastRead 0 FirstWrite -1}
		inout1 {Type O LastRead 61 FirstWrite 60}
		out_r {Type I LastRead 0 FirstWrite -1}
		weights {Type I LastRead 1 FirstWrite -1}
		bias {Type I LastRead 1 FirstWrite -1}
		norm_eps_V {Type I LastRead 1 FirstWrite -1}}
	dataflow_in_loop_ln131_for_each_patch {
		inout2 {Type I LastRead 9 FirstWrite -1}
		patch {Type I LastRead 0 FirstWrite -1}
		x {Type I LastRead 0 FirstWrite -1}
		inout1 {Type O LastRead 61 FirstWrite 60}
		out_r {Type I LastRead 2 FirstWrite -1}
		weights {Type I LastRead 1 FirstWrite -1}
		bias {Type I LastRead 1 FirstWrite -1}
		norm_eps_V {Type I LastRead 1 FirstWrite -1}}
	layernorm_accumulate {
		inout2 {Type I LastRead 9 FirstWrite -1}
		patch {Type I LastRead 1 FirstWrite -1}
		x {Type I LastRead 1 FirstWrite -1}
		x_patch_data_M_elems_V1 {Type O LastRead -1 FirstWrite 12}
		x_patch_data_M_elems_V_12 {Type O LastRead -1 FirstWrite 12}
		x_patch_data_M_elems_V_23 {Type O LastRead -1 FirstWrite 12}
		x_patch_data_M_elems_V_34 {Type O LastRead -1 FirstWrite 12}
		x_patch_data_M_elems_V_45 {Type O LastRead -1 FirstWrite 12}
		x_patch_data_M_elems_V_56 {Type O LastRead -1 FirstWrite 12}
		x_patch_data_M_elems_V_67 {Type O LastRead -1 FirstWrite 12}
		x_patch_data_M_elems_V_78 {Type O LastRead -1 FirstWrite 12}}
	layernorm_output {
		inout1 {Type O LastRead 61 FirstWrite 60}
		patch {Type I LastRead 1 FirstWrite -1}
		out_r {Type I LastRead 1 FirstWrite -1}
		x_patch_data_M_elems_V1 {Type I LastRead 1 FirstWrite -1}
		x_patch_data_M_elems_V_12 {Type I LastRead 1 FirstWrite -1}
		x_patch_data_M_elems_V_23 {Type I LastRead 1 FirstWrite -1}
		x_patch_data_M_elems_V_34 {Type I LastRead 1 FirstWrite -1}
		x_patch_data_M_elems_V_45 {Type I LastRead 1 FirstWrite -1}
		x_patch_data_M_elems_V_56 {Type I LastRead 1 FirstWrite -1}
		x_patch_data_M_elems_V_67 {Type I LastRead 1 FirstWrite -1}
		x_patch_data_M_elems_V_78 {Type I LastRead 1 FirstWrite -1}
		p_read {Type I LastRead 1 FirstWrite -1}
		p_read1 {Type I LastRead 1 FirstWrite -1}
		weights {Type I LastRead 1 FirstWrite -1}
		bias {Type I LastRead 1 FirstWrite -1}
		norm_eps_V {Type I LastRead 1 FirstWrite -1}}
	sqrt_fixed_32_10_s {
		x {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3196", "Max" : "3198"}
	, {"Name" : "Interval", "Min" : "3196", "Max" : "3198"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_inout2_AWVALID VALID 1 1 }  { m_axi_inout2_AWREADY READY 0 1 }  { m_axi_inout2_AWADDR ADDR 1 64 }  { m_axi_inout2_AWID ID 1 1 }  { m_axi_inout2_AWLEN SIZE 1 32 }  { m_axi_inout2_AWSIZE BURST 1 3 }  { m_axi_inout2_AWBURST LOCK 1 2 }  { m_axi_inout2_AWLOCK CACHE 1 2 }  { m_axi_inout2_AWCACHE PROT 1 4 }  { m_axi_inout2_AWPROT QOS 1 3 }  { m_axi_inout2_AWQOS REGION 1 4 }  { m_axi_inout2_AWREGION USER 1 4 }  { m_axi_inout2_AWUSER DATA 1 1 }  { m_axi_inout2_WVALID VALID 1 1 }  { m_axi_inout2_WREADY READY 0 1 }  { m_axi_inout2_WDATA FIFONUM 1 256 }  { m_axi_inout2_WSTRB STRB 1 32 }  { m_axi_inout2_WLAST LAST 1 1 }  { m_axi_inout2_WID ID 1 1 }  { m_axi_inout2_WUSER DATA 1 1 }  { m_axi_inout2_ARVALID VALID 1 1 }  { m_axi_inout2_ARREADY READY 0 1 }  { m_axi_inout2_ARADDR ADDR 1 64 }  { m_axi_inout2_ARID ID 1 1 }  { m_axi_inout2_ARLEN SIZE 1 32 }  { m_axi_inout2_ARSIZE BURST 1 3 }  { m_axi_inout2_ARBURST LOCK 1 2 }  { m_axi_inout2_ARLOCK CACHE 1 2 }  { m_axi_inout2_ARCACHE PROT 1 4 }  { m_axi_inout2_ARPROT QOS 1 3 }  { m_axi_inout2_ARQOS REGION 1 4 }  { m_axi_inout2_ARREGION USER 1 4 }  { m_axi_inout2_ARUSER DATA 1 1 }  { m_axi_inout2_RVALID VALID 0 1 }  { m_axi_inout2_RREADY READY 1 1 }  { m_axi_inout2_RDATA FIFONUM 0 256 }  { m_axi_inout2_RLAST LAST 0 1 }  { m_axi_inout2_RID ID 0 1 }  { m_axi_inout2_RFIFONUM LEN 0 9 }  { m_axi_inout2_RUSER DATA 0 1 }  { m_axi_inout2_RRESP RESP 0 2 }  { m_axi_inout2_BVALID VALID 0 1 }  { m_axi_inout2_BREADY READY 1 1 }  { m_axi_inout2_BRESP RESP 0 2 }  { m_axi_inout2_BID ID 0 1 }  { m_axi_inout2_BUSER DATA 0 1 } } }
	x { ap_none {  { x in_data 0 64 }  { x_ap_vld in_vld 0 1 } } }
	 { m_axi {  { m_axi_inout1_AWVALID VALID 1 1 }  { m_axi_inout1_AWREADY READY 0 1 }  { m_axi_inout1_AWADDR ADDR 1 64 }  { m_axi_inout1_AWID ID 1 1 }  { m_axi_inout1_AWLEN SIZE 1 32 }  { m_axi_inout1_AWSIZE BURST 1 3 }  { m_axi_inout1_AWBURST LOCK 1 2 }  { m_axi_inout1_AWLOCK CACHE 1 2 }  { m_axi_inout1_AWCACHE PROT 1 4 }  { m_axi_inout1_AWPROT QOS 1 3 }  { m_axi_inout1_AWQOS REGION 1 4 }  { m_axi_inout1_AWREGION USER 1 4 }  { m_axi_inout1_AWUSER DATA 1 1 }  { m_axi_inout1_WVALID VALID 1 1 }  { m_axi_inout1_WREADY READY 0 1 }  { m_axi_inout1_WDATA FIFONUM 1 256 }  { m_axi_inout1_WSTRB STRB 1 32 }  { m_axi_inout1_WLAST LAST 1 1 }  { m_axi_inout1_WID ID 1 1 }  { m_axi_inout1_WUSER DATA 1 1 }  { m_axi_inout1_ARVALID VALID 1 1 }  { m_axi_inout1_ARREADY READY 0 1 }  { m_axi_inout1_ARADDR ADDR 1 64 }  { m_axi_inout1_ARID ID 1 1 }  { m_axi_inout1_ARLEN SIZE 1 32 }  { m_axi_inout1_ARSIZE BURST 1 3 }  { m_axi_inout1_ARBURST LOCK 1 2 }  { m_axi_inout1_ARLOCK CACHE 1 2 }  { m_axi_inout1_ARCACHE PROT 1 4 }  { m_axi_inout1_ARPROT QOS 1 3 }  { m_axi_inout1_ARQOS REGION 1 4 }  { m_axi_inout1_ARREGION USER 1 4 }  { m_axi_inout1_ARUSER DATA 1 1 }  { m_axi_inout1_RVALID VALID 0 1 }  { m_axi_inout1_RREADY READY 1 1 }  { m_axi_inout1_RDATA FIFONUM 0 256 }  { m_axi_inout1_RLAST LAST 0 1 }  { m_axi_inout1_RID ID 0 1 }  { m_axi_inout1_RFIFONUM LEN 0 9 }  { m_axi_inout1_RUSER DATA 0 1 }  { m_axi_inout1_RRESP RESP 0 2 }  { m_axi_inout1_BVALID VALID 0 1 }  { m_axi_inout1_BREADY READY 1 1 }  { m_axi_inout1_BRESP RESP 0 2 }  { m_axi_inout1_BID ID 0 1 }  { m_axi_inout1_BUSER DATA 0 1 } } }
	out_r { ap_none {  { out_r in_data 0 64 }  { out_r_ap_vld in_vld 0 1 } } }
	weights { ap_memory {  { weights_address0 mem_address 1 5 }  { weights_ce0 mem_ce 1 1 }  { weights_d0 mem_din 1 128 }  { weights_q0 mem_dout 0 128 }  { weights_we0 mem_we 1 1 }  { weights_address1 mem_address 1 5 }  { weights_ce1 mem_ce 1 1 }  { weights_d1 mem_din 1 128 }  { weights_q1 mem_dout 0 128 }  { weights_we1 mem_we 1 1 } } }
	bias { ap_memory {  { bias_address0 mem_address 1 5 }  { bias_ce0 mem_ce 1 1 }  { bias_d0 mem_din 1 128 }  { bias_q0 mem_dout 0 128 }  { bias_we0 mem_we 1 1 }  { bias_address1 mem_address 1 5 }  { bias_ce1 mem_ce 1 1 }  { bias_d1 mem_din 1 128 }  { bias_q1 mem_dout 0 128 }  { bias_we1 mem_we 1 1 } } }
	norm_eps_V { ap_none {  { norm_eps_V in_data 0 3 }  { norm_eps_V_ap_vld in_vld 0 1 } } }
}
