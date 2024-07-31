set moduleName compute_attn_matmul_v
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
set C_modelName {compute_attn_matmul_v}
set C_modelType { void 0 }
set C_modelArgList {
	{ inout2 int 256 regular {axi_master 0}  }
	{ v int 64 regular  }
	{ inout1 int 256 regular {axi_master 2}  }
	{ attn int 64 regular  }
	{ inout4 int 256 regular {axi_master 0}  }
	{ attn_softmax_info int 64 regular  }
	{ attn_matmul_v int 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "inout2", "interface" : "axi_master", "bitwidth" : 256, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "x","offset": { "type": "dynamic","port_name": "x","bundle": "control"},"direction": "READWRITE"},{"cName": "tmp2","offset": { "type": "dynamic","port_name": "tmp2","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "v", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "inout1", "interface" : "axi_master", "bitwidth" : 256, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "images","offset": { "type": "dynamic","port_name": "images","bundle": "control"},"direction": "READONLY"},{"cName": "tmp1","offset": { "type": "dynamic","port_name": "tmp1","bundle": "control"},"direction": "READWRITE"},{"cName": "attn","offset": { "type": "dynamic","port_name": "attn","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "attn", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "inout4", "interface" : "axi_master", "bitwidth" : 256, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "tmp_hidden","offset": { "type": "dynamic","port_name": "tmp_hidden","bundle": "control"},"direction": "READWRITE"},{"cName": "attn_softmax_info","offset": { "type": "dynamic","port_name": "attn_softmax_info","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "attn_softmax_info", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "attn_matmul_v", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 153
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
	{ v sc_in sc_lv 64 signal 1 } 
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
	{ attn sc_in sc_lv 64 signal 3 } 
	{ m_axi_inout4_AWVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_inout4_AWREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_inout4_AWADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_inout4_AWID sc_out sc_lv 1 signal 4 } 
	{ m_axi_inout4_AWLEN sc_out sc_lv 32 signal 4 } 
	{ m_axi_inout4_AWSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_inout4_AWBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_inout4_AWLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_inout4_AWCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_inout4_AWPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_inout4_AWQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_inout4_AWREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_inout4_AWUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_inout4_WVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_inout4_WREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_inout4_WDATA sc_out sc_lv 256 signal 4 } 
	{ m_axi_inout4_WSTRB sc_out sc_lv 32 signal 4 } 
	{ m_axi_inout4_WLAST sc_out sc_logic 1 signal 4 } 
	{ m_axi_inout4_WID sc_out sc_lv 1 signal 4 } 
	{ m_axi_inout4_WUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_inout4_ARVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_inout4_ARREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_inout4_ARADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_inout4_ARID sc_out sc_lv 1 signal 4 } 
	{ m_axi_inout4_ARLEN sc_out sc_lv 32 signal 4 } 
	{ m_axi_inout4_ARSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_inout4_ARBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_inout4_ARLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_inout4_ARCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_inout4_ARPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_inout4_ARQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_inout4_ARREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_inout4_ARUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_inout4_RVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_inout4_RREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_inout4_RDATA sc_in sc_lv 256 signal 4 } 
	{ m_axi_inout4_RLAST sc_in sc_logic 1 signal 4 } 
	{ m_axi_inout4_RID sc_in sc_lv 1 signal 4 } 
	{ m_axi_inout4_RFIFONUM sc_in sc_lv 9 signal 4 } 
	{ m_axi_inout4_RUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_inout4_RRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_inout4_BVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_inout4_BREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_inout4_BRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_inout4_BID sc_in sc_lv 1 signal 4 } 
	{ m_axi_inout4_BUSER sc_in sc_lv 1 signal 4 } 
	{ attn_softmax_info sc_in sc_lv 64 signal 5 } 
	{ attn_matmul_v sc_in sc_lv 64 signal 6 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ attn_matmul_v_ap_vld sc_in sc_logic 1 invld 6 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ v_ap_vld sc_in sc_logic 1 invld 1 } 
	{ attn_ap_vld sc_in sc_logic 1 invld 3 } 
	{ attn_softmax_info_ap_vld sc_in sc_logic 1 invld 5 } 
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
 	{ "name": "v", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v", "role": "default" }} , 
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
 	{ "name": "attn", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "attn", "role": "default" }} , 
 	{ "name": "m_axi_inout4_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inout4", "role": "AWVALID" }} , 
 	{ "name": "m_axi_inout4_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inout4", "role": "AWREADY" }} , 
 	{ "name": "m_axi_inout4_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "inout4", "role": "AWADDR" }} , 
 	{ "name": "m_axi_inout4_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "inout4", "role": "AWID" }} , 
 	{ "name": "m_axi_inout4_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inout4", "role": "AWLEN" }} , 
 	{ "name": "m_axi_inout4_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "inout4", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_inout4_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "inout4", "role": "AWBURST" }} , 
 	{ "name": "m_axi_inout4_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "inout4", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_inout4_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "inout4", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_inout4_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "inout4", "role": "AWPROT" }} , 
 	{ "name": "m_axi_inout4_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "inout4", "role": "AWQOS" }} , 
 	{ "name": "m_axi_inout4_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "inout4", "role": "AWREGION" }} , 
 	{ "name": "m_axi_inout4_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "inout4", "role": "AWUSER" }} , 
 	{ "name": "m_axi_inout4_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inout4", "role": "WVALID" }} , 
 	{ "name": "m_axi_inout4_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inout4", "role": "WREADY" }} , 
 	{ "name": "m_axi_inout4_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "inout4", "role": "WDATA" }} , 
 	{ "name": "m_axi_inout4_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inout4", "role": "WSTRB" }} , 
 	{ "name": "m_axi_inout4_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inout4", "role": "WLAST" }} , 
 	{ "name": "m_axi_inout4_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "inout4", "role": "WID" }} , 
 	{ "name": "m_axi_inout4_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "inout4", "role": "WUSER" }} , 
 	{ "name": "m_axi_inout4_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inout4", "role": "ARVALID" }} , 
 	{ "name": "m_axi_inout4_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inout4", "role": "ARREADY" }} , 
 	{ "name": "m_axi_inout4_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "inout4", "role": "ARADDR" }} , 
 	{ "name": "m_axi_inout4_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "inout4", "role": "ARID" }} , 
 	{ "name": "m_axi_inout4_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inout4", "role": "ARLEN" }} , 
 	{ "name": "m_axi_inout4_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "inout4", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_inout4_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "inout4", "role": "ARBURST" }} , 
 	{ "name": "m_axi_inout4_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "inout4", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_inout4_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "inout4", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_inout4_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "inout4", "role": "ARPROT" }} , 
 	{ "name": "m_axi_inout4_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "inout4", "role": "ARQOS" }} , 
 	{ "name": "m_axi_inout4_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "inout4", "role": "ARREGION" }} , 
 	{ "name": "m_axi_inout4_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "inout4", "role": "ARUSER" }} , 
 	{ "name": "m_axi_inout4_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inout4", "role": "RVALID" }} , 
 	{ "name": "m_axi_inout4_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inout4", "role": "RREADY" }} , 
 	{ "name": "m_axi_inout4_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "inout4", "role": "RDATA" }} , 
 	{ "name": "m_axi_inout4_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inout4", "role": "RLAST" }} , 
 	{ "name": "m_axi_inout4_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "inout4", "role": "RID" }} , 
 	{ "name": "m_axi_inout4_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "inout4", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_inout4_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "inout4", "role": "RUSER" }} , 
 	{ "name": "m_axi_inout4_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "inout4", "role": "RRESP" }} , 
 	{ "name": "m_axi_inout4_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inout4", "role": "BVALID" }} , 
 	{ "name": "m_axi_inout4_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inout4", "role": "BREADY" }} , 
 	{ "name": "m_axi_inout4_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "inout4", "role": "BRESP" }} , 
 	{ "name": "m_axi_inout4_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "inout4", "role": "BID" }} , 
 	{ "name": "m_axi_inout4_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "inout4", "role": "BUSER" }} , 
 	{ "name": "attn_softmax_info", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "attn_softmax_info", "role": "default" }} , 
 	{ "name": "attn_matmul_v", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "attn_matmul_v", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "attn_matmul_v_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "attn_matmul_v", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "v_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "v", "role": "ap_vld" }} , 
 	{ "name": "attn_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "attn", "role": "ap_vld" }} , 
 	{ "name": "attn_softmax_info_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "attn_softmax_info", "role": "ap_vld" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "4", "6", "9", "11", "205", "208", "209", "210", "211", "212", "213", "214", "215", "216"],
		"CDFG" : "compute_attn_matmul_v",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "102188", "EstimateLatencyMax" : "102188",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "entry_proc25_U0"},
			{"ID" : "2", "Name" : "read_k_v_6_U0"},
			{"ID" : "4", "Name" : "read_attn_U0"},
			{"ID" : "6", "Name" : "read_attn_softmax_info_U0"}],
		"OutputProcess" : [
			{"ID" : "205", "Name" : "write_attn_matmul_v_U0"}],
		"Port" : [
			{"Name" : "inout2", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "read_k_v_6_U0", "Port" : "inout2"}]},
			{"Name" : "v", "Type" : "None", "Direction" : "I"},
			{"Name" : "inout1", "Type" : "MAXI", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "read_attn_U0", "Port" : "inout1"},
					{"ID" : "205", "SubInstance" : "write_attn_matmul_v_U0", "Port" : "inout1"}]},
			{"Name" : "attn", "Type" : "None", "Direction" : "I"},
			{"Name" : "inout4", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "read_attn_softmax_info_U0", "Port" : "inout4"}]},
			{"Name" : "attn_softmax_info", "Type" : "None", "Direction" : "I"},
			{"Name" : "attn_matmul_v", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_x_msb_4_h_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "compute_attn_matmul_v_7_U0", "Port" : "f_x_msb_4_h_table_V"}]},
			{"Name" : "f_x_msb_4_l_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "compute_attn_matmul_v_7_U0", "Port" : "f_x_msb_4_l_table_V"}]},
			{"Name" : "f_x_lsb_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "compute_attn_matmul_v_7_U0", "Port" : "f_x_lsb_table_V"}]},
			{"Name" : "f_x_msb_3_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "compute_attn_matmul_v_7_U0", "Port" : "f_x_msb_3_table_V"}]},
			{"Name" : "f_x_msb_2_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "compute_attn_matmul_v_7_U0", "Port" : "f_x_msb_2_table_V"}]},
			{"Name" : "exp_x_msb_1_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "compute_attn_matmul_v_7_U0", "Port" : "exp_x_msb_1_table_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.entry_proc25_U0", "Parent" : "0",
		"CDFG" : "entry_proc25",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
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
			{"Name" : "attn_matmul_v", "Type" : "None", "Direction" : "I"},
			{"Name" : "attn_matmul_v_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["205"], "DependentChan" : "208", "DependentChanDepth" : "5", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "attn_matmul_v_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.read_k_v_6_U0", "Parent" : "0", "Child" : ["3"],
		"CDFG" : "read_k_v_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "102178", "EstimateLatencyMax" : "102178",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v_stream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["11"], "DependentChan" : "209", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "v_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "inout2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "inout2_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "inout2_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "k", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "_ln37_for_block_q_patch__ln39_for_each_k_patch__ln41_for_block_dim", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.read_k_v_6_U0.flow_control_loop_pipe_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.read_attn_U0", "Parent" : "0", "Child" : ["5"],
		"CDFG" : "read_attn",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "17038", "EstimateLatencyMax" : "17038",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "attn_stream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["9"], "DependentChan" : "210", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "attn_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "inout1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "inout1_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "inout1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "attn", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "_ln322_for_each_q_patch_block__ln324_for_each_k_patch__ln326_for_each_q_patch_offset", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.read_attn_U0.flow_control_loop_pipe_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.read_attn_softmax_info_U0", "Parent" : "0", "Child" : ["7"],
		"CDFG" : "read_attn_softmax_info",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "140", "EstimateLatencyMax" : "140",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "attn_softmax_info_stream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["11"], "DependentChan" : "211", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55", "Port" : "attn_softmax_info_stream", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "inout4", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "inout4_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55", "Port" : "inout4", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "attn_softmax_info", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.read_attn_softmax_info_U0.grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55", "Parent" : "6", "Child" : ["8"],
		"CDFG" : "read_attn_softmax_info_Pipeline_ln388_for_each_q_patch",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "132", "EstimateLatencyMax" : "132",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "inout4", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "inout4_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln388", "Type" : "None", "Direction" : "I"},
			{"Name" : "attn_softmax_info_stream", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "attn_softmax_info_stream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "_ln388_for_each_q_patch", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.read_attn_softmax_info_U0.grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.prepare_attn_U0", "Parent" : "0", "Child" : ["10"],
		"CDFG" : "prepare_attn",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "17030", "EstimateLatencyMax" : "17030",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "4",
		"StartFifo" : "start_for_prepare_attn_U0_U",
		"Port" : [
			{"Name" : "attn_stream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "210", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "attn_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "qxk_out_stream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["11"], "DependentChan" : "212", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "qxk_out_stream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "_ln354_for_block_q_patch__ln356_for_each_k_patch__ln358_for_offset_q_patch", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.prepare_attn_U0.flow_control_loop_pipe_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0", "Parent" : "0", "Child" : ["12", "13", "14", "15", "16", "27", "38", "49", "60", "71", "82", "93", "104", "115", "126", "137", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204"],
		"CDFG" : "compute_attn_matmul_v_7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "102179", "EstimateLatencyMax" : "102179",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "2",
		"StartFifo" : "start_for_compute_attn_matmul_v_7_U0_U",
		"Port" : [
			{"Name" : "attn_matmul_v_stream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["205"], "DependentChan" : "213", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "attn_matmul_v_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "qxk_out_stream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "212", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "qxk_out_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "attn_softmax_info_stream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "211", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "attn_softmax_info_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "v_stream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "209", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "v_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "f_x_msb_4_h_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "93", "SubInstance" : "grp_exp_32_10_s_fu_504", "Port" : "f_x_msb_4_h_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "126", "SubInstance" : "grp_exp_32_10_s_fu_555", "Port" : "f_x_msb_4_h_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "137", "SubInstance" : "grp_exp_32_10_s_fu_572", "Port" : "f_x_msb_4_h_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "104", "SubInstance" : "grp_exp_32_10_s_fu_521", "Port" : "f_x_msb_4_h_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "115", "SubInstance" : "grp_exp_32_10_s_fu_538", "Port" : "f_x_msb_4_h_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "16", "SubInstance" : "grp_exp_32_10_s_fu_385", "Port" : "f_x_msb_4_h_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "71", "SubInstance" : "grp_exp_32_10_s_fu_470", "Port" : "f_x_msb_4_h_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "60", "SubInstance" : "grp_exp_32_10_s_fu_453", "Port" : "f_x_msb_4_h_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "27", "SubInstance" : "grp_exp_32_10_s_fu_402", "Port" : "f_x_msb_4_h_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "49", "SubInstance" : "grp_exp_32_10_s_fu_436", "Port" : "f_x_msb_4_h_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "38", "SubInstance" : "grp_exp_32_10_s_fu_419", "Port" : "f_x_msb_4_h_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "82", "SubInstance" : "grp_exp_32_10_s_fu_487", "Port" : "f_x_msb_4_h_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"}]},
			{"Name" : "f_x_msb_4_l_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "93", "SubInstance" : "grp_exp_32_10_s_fu_504", "Port" : "f_x_msb_4_l_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "126", "SubInstance" : "grp_exp_32_10_s_fu_555", "Port" : "f_x_msb_4_l_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "137", "SubInstance" : "grp_exp_32_10_s_fu_572", "Port" : "f_x_msb_4_l_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "104", "SubInstance" : "grp_exp_32_10_s_fu_521", "Port" : "f_x_msb_4_l_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "115", "SubInstance" : "grp_exp_32_10_s_fu_538", "Port" : "f_x_msb_4_l_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "16", "SubInstance" : "grp_exp_32_10_s_fu_385", "Port" : "f_x_msb_4_l_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "71", "SubInstance" : "grp_exp_32_10_s_fu_470", "Port" : "f_x_msb_4_l_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "60", "SubInstance" : "grp_exp_32_10_s_fu_453", "Port" : "f_x_msb_4_l_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "27", "SubInstance" : "grp_exp_32_10_s_fu_402", "Port" : "f_x_msb_4_l_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "49", "SubInstance" : "grp_exp_32_10_s_fu_436", "Port" : "f_x_msb_4_l_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "38", "SubInstance" : "grp_exp_32_10_s_fu_419", "Port" : "f_x_msb_4_l_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "82", "SubInstance" : "grp_exp_32_10_s_fu_487", "Port" : "f_x_msb_4_l_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"}]},
			{"Name" : "f_x_lsb_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "93", "SubInstance" : "grp_exp_32_10_s_fu_504", "Port" : "f_x_lsb_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "126", "SubInstance" : "grp_exp_32_10_s_fu_555", "Port" : "f_x_lsb_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "137", "SubInstance" : "grp_exp_32_10_s_fu_572", "Port" : "f_x_lsb_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "104", "SubInstance" : "grp_exp_32_10_s_fu_521", "Port" : "f_x_lsb_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "115", "SubInstance" : "grp_exp_32_10_s_fu_538", "Port" : "f_x_lsb_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "16", "SubInstance" : "grp_exp_32_10_s_fu_385", "Port" : "f_x_lsb_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "71", "SubInstance" : "grp_exp_32_10_s_fu_470", "Port" : "f_x_lsb_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "60", "SubInstance" : "grp_exp_32_10_s_fu_453", "Port" : "f_x_lsb_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "27", "SubInstance" : "grp_exp_32_10_s_fu_402", "Port" : "f_x_lsb_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "49", "SubInstance" : "grp_exp_32_10_s_fu_436", "Port" : "f_x_lsb_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "38", "SubInstance" : "grp_exp_32_10_s_fu_419", "Port" : "f_x_lsb_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "82", "SubInstance" : "grp_exp_32_10_s_fu_487", "Port" : "f_x_lsb_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"}]},
			{"Name" : "f_x_msb_3_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "93", "SubInstance" : "grp_exp_32_10_s_fu_504", "Port" : "f_x_msb_3_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "126", "SubInstance" : "grp_exp_32_10_s_fu_555", "Port" : "f_x_msb_3_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "137", "SubInstance" : "grp_exp_32_10_s_fu_572", "Port" : "f_x_msb_3_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "104", "SubInstance" : "grp_exp_32_10_s_fu_521", "Port" : "f_x_msb_3_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "115", "SubInstance" : "grp_exp_32_10_s_fu_538", "Port" : "f_x_msb_3_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "16", "SubInstance" : "grp_exp_32_10_s_fu_385", "Port" : "f_x_msb_3_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "71", "SubInstance" : "grp_exp_32_10_s_fu_470", "Port" : "f_x_msb_3_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "60", "SubInstance" : "grp_exp_32_10_s_fu_453", "Port" : "f_x_msb_3_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "27", "SubInstance" : "grp_exp_32_10_s_fu_402", "Port" : "f_x_msb_3_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "49", "SubInstance" : "grp_exp_32_10_s_fu_436", "Port" : "f_x_msb_3_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "38", "SubInstance" : "grp_exp_32_10_s_fu_419", "Port" : "f_x_msb_3_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "82", "SubInstance" : "grp_exp_32_10_s_fu_487", "Port" : "f_x_msb_3_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"}]},
			{"Name" : "f_x_msb_2_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "93", "SubInstance" : "grp_exp_32_10_s_fu_504", "Port" : "f_x_msb_2_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "126", "SubInstance" : "grp_exp_32_10_s_fu_555", "Port" : "f_x_msb_2_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "137", "SubInstance" : "grp_exp_32_10_s_fu_572", "Port" : "f_x_msb_2_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "104", "SubInstance" : "grp_exp_32_10_s_fu_521", "Port" : "f_x_msb_2_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "115", "SubInstance" : "grp_exp_32_10_s_fu_538", "Port" : "f_x_msb_2_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "16", "SubInstance" : "grp_exp_32_10_s_fu_385", "Port" : "f_x_msb_2_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "71", "SubInstance" : "grp_exp_32_10_s_fu_470", "Port" : "f_x_msb_2_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "60", "SubInstance" : "grp_exp_32_10_s_fu_453", "Port" : "f_x_msb_2_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "27", "SubInstance" : "grp_exp_32_10_s_fu_402", "Port" : "f_x_msb_2_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "49", "SubInstance" : "grp_exp_32_10_s_fu_436", "Port" : "f_x_msb_2_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "38", "SubInstance" : "grp_exp_32_10_s_fu_419", "Port" : "f_x_msb_2_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "82", "SubInstance" : "grp_exp_32_10_s_fu_487", "Port" : "f_x_msb_2_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"}]},
			{"Name" : "exp_x_msb_1_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "93", "SubInstance" : "grp_exp_32_10_s_fu_504", "Port" : "exp_x_msb_1_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "126", "SubInstance" : "grp_exp_32_10_s_fu_555", "Port" : "exp_x_msb_1_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "137", "SubInstance" : "grp_exp_32_10_s_fu_572", "Port" : "exp_x_msb_1_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "104", "SubInstance" : "grp_exp_32_10_s_fu_521", "Port" : "exp_x_msb_1_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "115", "SubInstance" : "grp_exp_32_10_s_fu_538", "Port" : "exp_x_msb_1_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "16", "SubInstance" : "grp_exp_32_10_s_fu_385", "Port" : "exp_x_msb_1_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "71", "SubInstance" : "grp_exp_32_10_s_fu_470", "Port" : "exp_x_msb_1_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "60", "SubInstance" : "grp_exp_32_10_s_fu_453", "Port" : "exp_x_msb_1_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "27", "SubInstance" : "grp_exp_32_10_s_fu_402", "Port" : "exp_x_msb_1_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "49", "SubInstance" : "grp_exp_32_10_s_fu_436", "Port" : "exp_x_msb_1_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "38", "SubInstance" : "grp_exp_32_10_s_fu_419", "Port" : "exp_x_msb_1_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "82", "SubInstance" : "grp_exp_32_10_s_fu_487", "Port" : "exp_x_msb_1_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"}]}],
		"Loop" : [
			{"Name" : "_ln432_for_block_attn_patch__ln434_for_each_v_patch__ln436_for_block_dim", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter10", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter10", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.acc_blocks_0_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.acc_blocks_1_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.acc_blocks_2_U", "Parent" : "11"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.acc_blocks_3_U", "Parent" : "11"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_385", "Parent" : "11", "Child" : ["17", "18", "19", "20", "21", "22", "23", "24", "25", "26"],
		"CDFG" : "exp_32_10_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "5", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_x_msb_4_h_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_4_l_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_lsb_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_3_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_2_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "exp_x_msb_1_table_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_385.f_x_msb_4_h_table_V_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_385.f_x_msb_4_l_table_V_U", "Parent" : "16"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_385.f_x_lsb_table_V_U", "Parent" : "16"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_385.f_x_msb_3_table_V_U", "Parent" : "16"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_385.f_x_msb_2_table_V_U", "Parent" : "16"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_385.exp_x_msb_1_table_V_U", "Parent" : "16"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_385.mul_44ns_42ns_86_1_1_U897", "Parent" : "16"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_385.mul_50ns_48ns_98_1_1_U898", "Parent" : "16"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_385.mul_50ns_50ns_100_1_1_U899", "Parent" : "16"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_385.mac_muladd_3ns_4ns_9ns_10_4_1_U900", "Parent" : "16"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_402", "Parent" : "11", "Child" : ["28", "29", "30", "31", "32", "33", "34", "35", "36", "37"],
		"CDFG" : "exp_32_10_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "5", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_x_msb_4_h_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_4_l_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_lsb_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_3_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_2_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "exp_x_msb_1_table_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_402.f_x_msb_4_h_table_V_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_402.f_x_msb_4_l_table_V_U", "Parent" : "27"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_402.f_x_lsb_table_V_U", "Parent" : "27"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_402.f_x_msb_3_table_V_U", "Parent" : "27"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_402.f_x_msb_2_table_V_U", "Parent" : "27"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_402.exp_x_msb_1_table_V_U", "Parent" : "27"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_402.mul_44ns_42ns_86_1_1_U897", "Parent" : "27"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_402.mul_50ns_48ns_98_1_1_U898", "Parent" : "27"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_402.mul_50ns_50ns_100_1_1_U899", "Parent" : "27"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_402.mac_muladd_3ns_4ns_9ns_10_4_1_U900", "Parent" : "27"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_419", "Parent" : "11", "Child" : ["39", "40", "41", "42", "43", "44", "45", "46", "47", "48"],
		"CDFG" : "exp_32_10_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "5", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_x_msb_4_h_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_4_l_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_lsb_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_3_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_2_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "exp_x_msb_1_table_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_419.f_x_msb_4_h_table_V_U", "Parent" : "38"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_419.f_x_msb_4_l_table_V_U", "Parent" : "38"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_419.f_x_lsb_table_V_U", "Parent" : "38"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_419.f_x_msb_3_table_V_U", "Parent" : "38"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_419.f_x_msb_2_table_V_U", "Parent" : "38"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_419.exp_x_msb_1_table_V_U", "Parent" : "38"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_419.mul_44ns_42ns_86_1_1_U897", "Parent" : "38"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_419.mul_50ns_48ns_98_1_1_U898", "Parent" : "38"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_419.mul_50ns_50ns_100_1_1_U899", "Parent" : "38"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_419.mac_muladd_3ns_4ns_9ns_10_4_1_U900", "Parent" : "38"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_436", "Parent" : "11", "Child" : ["50", "51", "52", "53", "54", "55", "56", "57", "58", "59"],
		"CDFG" : "exp_32_10_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "5", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_x_msb_4_h_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_4_l_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_lsb_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_3_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_2_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "exp_x_msb_1_table_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_436.f_x_msb_4_h_table_V_U", "Parent" : "49"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_436.f_x_msb_4_l_table_V_U", "Parent" : "49"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_436.f_x_lsb_table_V_U", "Parent" : "49"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_436.f_x_msb_3_table_V_U", "Parent" : "49"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_436.f_x_msb_2_table_V_U", "Parent" : "49"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_436.exp_x_msb_1_table_V_U", "Parent" : "49"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_436.mul_44ns_42ns_86_1_1_U897", "Parent" : "49"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_436.mul_50ns_48ns_98_1_1_U898", "Parent" : "49"},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_436.mul_50ns_50ns_100_1_1_U899", "Parent" : "49"},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_436.mac_muladd_3ns_4ns_9ns_10_4_1_U900", "Parent" : "49"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_453", "Parent" : "11", "Child" : ["61", "62", "63", "64", "65", "66", "67", "68", "69", "70"],
		"CDFG" : "exp_32_10_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "5", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_x_msb_4_h_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_4_l_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_lsb_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_3_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_2_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "exp_x_msb_1_table_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_453.f_x_msb_4_h_table_V_U", "Parent" : "60"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_453.f_x_msb_4_l_table_V_U", "Parent" : "60"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_453.f_x_lsb_table_V_U", "Parent" : "60"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_453.f_x_msb_3_table_V_U", "Parent" : "60"},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_453.f_x_msb_2_table_V_U", "Parent" : "60"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_453.exp_x_msb_1_table_V_U", "Parent" : "60"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_453.mul_44ns_42ns_86_1_1_U897", "Parent" : "60"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_453.mul_50ns_48ns_98_1_1_U898", "Parent" : "60"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_453.mul_50ns_50ns_100_1_1_U899", "Parent" : "60"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_453.mac_muladd_3ns_4ns_9ns_10_4_1_U900", "Parent" : "60"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_470", "Parent" : "11", "Child" : ["72", "73", "74", "75", "76", "77", "78", "79", "80", "81"],
		"CDFG" : "exp_32_10_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "5", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_x_msb_4_h_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_4_l_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_lsb_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_3_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_2_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "exp_x_msb_1_table_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_470.f_x_msb_4_h_table_V_U", "Parent" : "71"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_470.f_x_msb_4_l_table_V_U", "Parent" : "71"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_470.f_x_lsb_table_V_U", "Parent" : "71"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_470.f_x_msb_3_table_V_U", "Parent" : "71"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_470.f_x_msb_2_table_V_U", "Parent" : "71"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_470.exp_x_msb_1_table_V_U", "Parent" : "71"},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_470.mul_44ns_42ns_86_1_1_U897", "Parent" : "71"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_470.mul_50ns_48ns_98_1_1_U898", "Parent" : "71"},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_470.mul_50ns_50ns_100_1_1_U899", "Parent" : "71"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_470.mac_muladd_3ns_4ns_9ns_10_4_1_U900", "Parent" : "71"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_487", "Parent" : "11", "Child" : ["83", "84", "85", "86", "87", "88", "89", "90", "91", "92"],
		"CDFG" : "exp_32_10_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "5", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_x_msb_4_h_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_4_l_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_lsb_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_3_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_2_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "exp_x_msb_1_table_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "83", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_487.f_x_msb_4_h_table_V_U", "Parent" : "82"},
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_487.f_x_msb_4_l_table_V_U", "Parent" : "82"},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_487.f_x_lsb_table_V_U", "Parent" : "82"},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_487.f_x_msb_3_table_V_U", "Parent" : "82"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_487.f_x_msb_2_table_V_U", "Parent" : "82"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_487.exp_x_msb_1_table_V_U", "Parent" : "82"},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_487.mul_44ns_42ns_86_1_1_U897", "Parent" : "82"},
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_487.mul_50ns_48ns_98_1_1_U898", "Parent" : "82"},
	{"ID" : "91", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_487.mul_50ns_50ns_100_1_1_U899", "Parent" : "82"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_487.mac_muladd_3ns_4ns_9ns_10_4_1_U900", "Parent" : "82"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_504", "Parent" : "11", "Child" : ["94", "95", "96", "97", "98", "99", "100", "101", "102", "103"],
		"CDFG" : "exp_32_10_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "5", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_x_msb_4_h_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_4_l_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_lsb_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_3_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_2_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "exp_x_msb_1_table_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_504.f_x_msb_4_h_table_V_U", "Parent" : "93"},
	{"ID" : "95", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_504.f_x_msb_4_l_table_V_U", "Parent" : "93"},
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_504.f_x_lsb_table_V_U", "Parent" : "93"},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_504.f_x_msb_3_table_V_U", "Parent" : "93"},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_504.f_x_msb_2_table_V_U", "Parent" : "93"},
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_504.exp_x_msb_1_table_V_U", "Parent" : "93"},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_504.mul_44ns_42ns_86_1_1_U897", "Parent" : "93"},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_504.mul_50ns_48ns_98_1_1_U898", "Parent" : "93"},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_504.mul_50ns_50ns_100_1_1_U899", "Parent" : "93"},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_504.mac_muladd_3ns_4ns_9ns_10_4_1_U900", "Parent" : "93"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_521", "Parent" : "11", "Child" : ["105", "106", "107", "108", "109", "110", "111", "112", "113", "114"],
		"CDFG" : "exp_32_10_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "5", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_x_msb_4_h_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_4_l_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_lsb_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_3_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_2_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "exp_x_msb_1_table_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_521.f_x_msb_4_h_table_V_U", "Parent" : "104"},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_521.f_x_msb_4_l_table_V_U", "Parent" : "104"},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_521.f_x_lsb_table_V_U", "Parent" : "104"},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_521.f_x_msb_3_table_V_U", "Parent" : "104"},
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_521.f_x_msb_2_table_V_U", "Parent" : "104"},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_521.exp_x_msb_1_table_V_U", "Parent" : "104"},
	{"ID" : "111", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_521.mul_44ns_42ns_86_1_1_U897", "Parent" : "104"},
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_521.mul_50ns_48ns_98_1_1_U898", "Parent" : "104"},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_521.mul_50ns_50ns_100_1_1_U899", "Parent" : "104"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_521.mac_muladd_3ns_4ns_9ns_10_4_1_U900", "Parent" : "104"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_538", "Parent" : "11", "Child" : ["116", "117", "118", "119", "120", "121", "122", "123", "124", "125"],
		"CDFG" : "exp_32_10_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "5", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_x_msb_4_h_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_4_l_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_lsb_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_3_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_2_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "exp_x_msb_1_table_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_538.f_x_msb_4_h_table_V_U", "Parent" : "115"},
	{"ID" : "117", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_538.f_x_msb_4_l_table_V_U", "Parent" : "115"},
	{"ID" : "118", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_538.f_x_lsb_table_V_U", "Parent" : "115"},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_538.f_x_msb_3_table_V_U", "Parent" : "115"},
	{"ID" : "120", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_538.f_x_msb_2_table_V_U", "Parent" : "115"},
	{"ID" : "121", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_538.exp_x_msb_1_table_V_U", "Parent" : "115"},
	{"ID" : "122", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_538.mul_44ns_42ns_86_1_1_U897", "Parent" : "115"},
	{"ID" : "123", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_538.mul_50ns_48ns_98_1_1_U898", "Parent" : "115"},
	{"ID" : "124", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_538.mul_50ns_50ns_100_1_1_U899", "Parent" : "115"},
	{"ID" : "125", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_538.mac_muladd_3ns_4ns_9ns_10_4_1_U900", "Parent" : "115"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_555", "Parent" : "11", "Child" : ["127", "128", "129", "130", "131", "132", "133", "134", "135", "136"],
		"CDFG" : "exp_32_10_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "5", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_x_msb_4_h_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_4_l_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_lsb_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_3_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_2_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "exp_x_msb_1_table_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "127", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_555.f_x_msb_4_h_table_V_U", "Parent" : "126"},
	{"ID" : "128", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_555.f_x_msb_4_l_table_V_U", "Parent" : "126"},
	{"ID" : "129", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_555.f_x_lsb_table_V_U", "Parent" : "126"},
	{"ID" : "130", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_555.f_x_msb_3_table_V_U", "Parent" : "126"},
	{"ID" : "131", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_555.f_x_msb_2_table_V_U", "Parent" : "126"},
	{"ID" : "132", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_555.exp_x_msb_1_table_V_U", "Parent" : "126"},
	{"ID" : "133", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_555.mul_44ns_42ns_86_1_1_U897", "Parent" : "126"},
	{"ID" : "134", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_555.mul_50ns_48ns_98_1_1_U898", "Parent" : "126"},
	{"ID" : "135", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_555.mul_50ns_50ns_100_1_1_U899", "Parent" : "126"},
	{"ID" : "136", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_555.mac_muladd_3ns_4ns_9ns_10_4_1_U900", "Parent" : "126"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_572", "Parent" : "11", "Child" : ["138", "139", "140", "141", "142", "143", "144", "145", "146", "147"],
		"CDFG" : "exp_32_10_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "5", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_x_msb_4_h_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_4_l_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_lsb_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_3_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_2_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "exp_x_msb_1_table_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "138", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_572.f_x_msb_4_h_table_V_U", "Parent" : "137"},
	{"ID" : "139", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_572.f_x_msb_4_l_table_V_U", "Parent" : "137"},
	{"ID" : "140", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_572.f_x_lsb_table_V_U", "Parent" : "137"},
	{"ID" : "141", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_572.f_x_msb_3_table_V_U", "Parent" : "137"},
	{"ID" : "142", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_572.f_x_msb_2_table_V_U", "Parent" : "137"},
	{"ID" : "143", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_572.exp_x_msb_1_table_V_U", "Parent" : "137"},
	{"ID" : "144", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_572.mul_44ns_42ns_86_1_1_U897", "Parent" : "137"},
	{"ID" : "145", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_572.mul_50ns_48ns_98_1_1_U898", "Parent" : "137"},
	{"ID" : "146", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_572.mul_50ns_50ns_100_1_1_U899", "Parent" : "137"},
	{"ID" : "147", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.grp_exp_32_10_s_fu_572.mac_muladd_3ns_4ns_9ns_10_4_1_U900", "Parent" : "137"},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.mul_31ns_32s_54_1_1_U981", "Parent" : "11"},
	{"ID" : "149", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.mul_31ns_32s_54_1_1_U982", "Parent" : "11"},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.mul_31ns_32s_54_1_1_U983", "Parent" : "11"},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.mul_31ns_32s_54_1_1_U984", "Parent" : "11"},
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.mul_31ns_32s_54_1_1_U985", "Parent" : "11"},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.mul_31ns_32s_54_1_1_U986", "Parent" : "11"},
	{"ID" : "154", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.mul_31ns_32s_54_1_1_U987", "Parent" : "11"},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.mul_31ns_32s_54_1_1_U988", "Parent" : "11"},
	{"ID" : "156", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.mul_31ns_32s_54_1_1_U989", "Parent" : "11"},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.mul_31ns_32s_54_1_1_U990", "Parent" : "11"},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.mul_31ns_32s_54_1_1_U991", "Parent" : "11"},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.mul_31ns_32s_54_1_1_U992", "Parent" : "11"},
	{"ID" : "160", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.mux_32_32_1_1_U993", "Parent" : "11"},
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.mul_32s_32s_54_1_1_U994", "Parent" : "11"},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.mul_32s_32s_54_1_1_U995", "Parent" : "11"},
	{"ID" : "163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.mul_32s_32s_54_1_1_U996", "Parent" : "11"},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.mul_32s_32s_54_1_1_U997", "Parent" : "11"},
	{"ID" : "165", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.mul_32s_32s_54_1_1_U998", "Parent" : "11"},
	{"ID" : "166", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.mul_32s_32s_54_1_1_U999", "Parent" : "11"},
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.mul_32s_32s_54_1_1_U1000", "Parent" : "11"},
	{"ID" : "168", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.mul_32s_32s_54_1_1_U1001", "Parent" : "11"},
	{"ID" : "169", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.mux_32_32_1_1_U1002", "Parent" : "11"},
	{"ID" : "170", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.mul_32s_32s_54_1_1_U1003", "Parent" : "11"},
	{"ID" : "171", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.mul_32s_32s_54_1_1_U1004", "Parent" : "11"},
	{"ID" : "172", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.mul_32s_32s_54_1_1_U1005", "Parent" : "11"},
	{"ID" : "173", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.mul_32s_32s_54_1_1_U1006", "Parent" : "11"},
	{"ID" : "174", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.mul_32s_32s_54_1_1_U1007", "Parent" : "11"},
	{"ID" : "175", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.mul_32s_32s_54_1_1_U1008", "Parent" : "11"},
	{"ID" : "176", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.mul_32s_32s_54_1_1_U1009", "Parent" : "11"},
	{"ID" : "177", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.mul_32s_32s_54_1_1_U1010", "Parent" : "11"},
	{"ID" : "178", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.mux_32_32_1_1_U1011", "Parent" : "11"},
	{"ID" : "179", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.mul_32s_32s_54_1_1_U1012", "Parent" : "11"},
	{"ID" : "180", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.mul_32s_32s_54_1_1_U1013", "Parent" : "11"},
	{"ID" : "181", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.mul_32s_32s_54_1_1_U1014", "Parent" : "11"},
	{"ID" : "182", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.mul_32s_32s_54_1_1_U1015", "Parent" : "11"},
	{"ID" : "183", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.mul_32s_32s_54_1_1_U1016", "Parent" : "11"},
	{"ID" : "184", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.mul_32s_32s_54_1_1_U1017", "Parent" : "11"},
	{"ID" : "185", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.mul_32s_32s_54_1_1_U1018", "Parent" : "11"},
	{"ID" : "186", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.mul_32s_32s_54_1_1_U1019", "Parent" : "11"},
	{"ID" : "187", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.mux_32_32_1_1_U1020", "Parent" : "11"},
	{"ID" : "188", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.mul_32s_32s_54_1_1_U1021", "Parent" : "11"},
	{"ID" : "189", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.mul_32s_32s_54_1_1_U1022", "Parent" : "11"},
	{"ID" : "190", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.mul_32s_32s_54_1_1_U1023", "Parent" : "11"},
	{"ID" : "191", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.mul_32s_32s_54_1_1_U1024", "Parent" : "11"},
	{"ID" : "192", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.mul_32s_32s_54_1_1_U1025", "Parent" : "11"},
	{"ID" : "193", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.mul_32s_32s_54_1_1_U1026", "Parent" : "11"},
	{"ID" : "194", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.mul_32s_32s_54_1_1_U1027", "Parent" : "11"},
	{"ID" : "195", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.mul_32s_32s_54_1_1_U1028", "Parent" : "11"},
	{"ID" : "196", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.mux_42_32_1_1_U1029", "Parent" : "11"},
	{"ID" : "197", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.mux_42_32_1_1_U1030", "Parent" : "11"},
	{"ID" : "198", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.mux_42_32_1_1_U1031", "Parent" : "11"},
	{"ID" : "199", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.mux_42_32_1_1_U1032", "Parent" : "11"},
	{"ID" : "200", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.mux_42_32_1_1_U1033", "Parent" : "11"},
	{"ID" : "201", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.mux_42_32_1_1_U1034", "Parent" : "11"},
	{"ID" : "202", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.mux_42_32_1_1_U1035", "Parent" : "11"},
	{"ID" : "203", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.mux_42_32_1_1_U1036", "Parent" : "11"},
	{"ID" : "204", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_attn_matmul_v_7_U0.flow_control_loop_pipe_U", "Parent" : "11"},
	{"ID" : "205", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.write_attn_matmul_v_U0", "Parent" : "0", "Child" : ["206"],
		"CDFG" : "write_attn_matmul_v",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3107", "EstimateLatencyMax" : "3107",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "1",
		"StartFifo" : "start_for_write_attn_matmul_v_U0_U",
		"Port" : [
			{"Name" : "inout1", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "inout1_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "inout1_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "206", "SubInstance" : "grp_write_attn_matmul_v_Pipeline_ln403_for_each_patch_ln405_for_block_dim_fu_66", "Port" : "inout1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "attn_matmul_v", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "208", "DependentChanDepth" : "5", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "attn_matmul_v_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "attn_matmul_v_stream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["11"], "DependentChan" : "213", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "206", "SubInstance" : "grp_write_attn_matmul_v_Pipeline_ln403_for_each_patch_ln405_for_block_dim_fu_66", "Port" : "attn_matmul_v_stream", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "206", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.write_attn_matmul_v_U0.grp_write_attn_matmul_v_Pipeline_ln403_for_each_patch_ln405_for_block_dim_fu_66", "Parent" : "205", "Child" : ["207"],
		"CDFG" : "write_attn_matmul_v_Pipeline_ln403_for_each_patch_ln405_for_block_dim",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3099", "EstimateLatencyMax" : "3099",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "inout1", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "inout1_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln403", "Type" : "None", "Direction" : "I"},
			{"Name" : "attn_matmul_v_stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "attn_matmul_v_stream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "_ln403_for_each_patch__ln405_for_block_dim", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "207", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.write_attn_matmul_v_U0.grp_write_attn_matmul_v_Pipeline_ln403_for_each_patch_ln405_for_block_dim_fu_66.flow_control_loop_pipe_sequential_init_U", "Parent" : "206"},
	{"ID" : "208", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.attn_matmul_v_c_U", "Parent" : "0"},
	{"ID" : "209", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v_stream_U", "Parent" : "0"},
	{"ID" : "210", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.attn_stream_U", "Parent" : "0"},
	{"ID" : "211", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.attn_softmax_info_stream_U", "Parent" : "0"},
	{"ID" : "212", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.qxk_out_stream_U", "Parent" : "0"},
	{"ID" : "213", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.attn_matmul_v_stream_U", "Parent" : "0"},
	{"ID" : "214", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_write_attn_matmul_v_U0_U", "Parent" : "0"},
	{"ID" : "215", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_compute_attn_matmul_v_7_U0_U", "Parent" : "0"},
	{"ID" : "216", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_prepare_attn_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	compute_attn_matmul_v {
		inout2 {Type I LastRead 8 FirstWrite -1}
		v {Type I LastRead 0 FirstWrite -1}
		inout1 {Type IO LastRead 8 FirstWrite -1}
		attn {Type I LastRead 0 FirstWrite -1}
		inout4 {Type I LastRead 1 FirstWrite -1}
		attn_softmax_info {Type I LastRead 0 FirstWrite -1}
		attn_matmul_v {Type I LastRead 5 FirstWrite -1}
		f_x_msb_4_h_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_4_l_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_lsb_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_3_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_2_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_1_table_V {Type I LastRead -1 FirstWrite -1}}
	entry_proc25 {
		attn_matmul_v {Type I LastRead 0 FirstWrite -1}
		attn_matmul_v_c {Type O LastRead -1 FirstWrite 0}}
	read_k_v_6 {
		v_stream {Type O LastRead -1 FirstWrite 9}
		inout2 {Type I LastRead 8 FirstWrite -1}
		k {Type I LastRead 0 FirstWrite -1}}
	read_attn {
		attn_stream {Type O LastRead -1 FirstWrite 9}
		inout1 {Type I LastRead 8 FirstWrite -1}
		attn {Type I LastRead 0 FirstWrite -1}}
	read_attn_softmax_info {
		attn_softmax_info_stream {Type O LastRead -1 FirstWrite 2}
		inout4 {Type I LastRead 1 FirstWrite -1}
		attn_softmax_info {Type I LastRead 0 FirstWrite -1}}
	read_attn_softmax_info_Pipeline_ln388_for_each_q_patch {
		inout4 {Type I LastRead 1 FirstWrite -1}
		sext_ln388 {Type I LastRead 0 FirstWrite -1}
		attn_softmax_info_stream {Type O LastRead -1 FirstWrite 2}}
	prepare_attn {
		attn_stream {Type I LastRead 1 FirstWrite -1}
		qxk_out_stream {Type O LastRead -1 FirstWrite 1}}
	compute_attn_matmul_v_7 {
		attn_matmul_v_stream {Type O LastRead -1 FirstWrite 10}
		qxk_out_stream {Type I LastRead 2 FirstWrite -1}
		attn_softmax_info_stream {Type I LastRead 1 FirstWrite -1}
		v_stream {Type I LastRead 8 FirstWrite -1}
		f_x_msb_4_h_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_4_l_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_lsb_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_3_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_2_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_1_table_V {Type I LastRead -1 FirstWrite -1}}
	exp_32_10_s {
		x {Type I LastRead 0 FirstWrite -1}
		f_x_msb_4_h_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_4_l_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_lsb_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_3_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_2_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_1_table_V {Type I LastRead -1 FirstWrite -1}}
	exp_32_10_s {
		x {Type I LastRead 0 FirstWrite -1}
		f_x_msb_4_h_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_4_l_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_lsb_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_3_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_2_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_1_table_V {Type I LastRead -1 FirstWrite -1}}
	exp_32_10_s {
		x {Type I LastRead 0 FirstWrite -1}
		f_x_msb_4_h_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_4_l_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_lsb_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_3_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_2_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_1_table_V {Type I LastRead -1 FirstWrite -1}}
	exp_32_10_s {
		x {Type I LastRead 0 FirstWrite -1}
		f_x_msb_4_h_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_4_l_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_lsb_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_3_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_2_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_1_table_V {Type I LastRead -1 FirstWrite -1}}
	exp_32_10_s {
		x {Type I LastRead 0 FirstWrite -1}
		f_x_msb_4_h_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_4_l_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_lsb_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_3_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_2_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_1_table_V {Type I LastRead -1 FirstWrite -1}}
	exp_32_10_s {
		x {Type I LastRead 0 FirstWrite -1}
		f_x_msb_4_h_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_4_l_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_lsb_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_3_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_2_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_1_table_V {Type I LastRead -1 FirstWrite -1}}
	exp_32_10_s {
		x {Type I LastRead 0 FirstWrite -1}
		f_x_msb_4_h_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_4_l_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_lsb_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_3_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_2_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_1_table_V {Type I LastRead -1 FirstWrite -1}}
	exp_32_10_s {
		x {Type I LastRead 0 FirstWrite -1}
		f_x_msb_4_h_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_4_l_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_lsb_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_3_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_2_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_1_table_V {Type I LastRead -1 FirstWrite -1}}
	exp_32_10_s {
		x {Type I LastRead 0 FirstWrite -1}
		f_x_msb_4_h_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_4_l_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_lsb_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_3_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_2_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_1_table_V {Type I LastRead -1 FirstWrite -1}}
	exp_32_10_s {
		x {Type I LastRead 0 FirstWrite -1}
		f_x_msb_4_h_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_4_l_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_lsb_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_3_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_2_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_1_table_V {Type I LastRead -1 FirstWrite -1}}
	exp_32_10_s {
		x {Type I LastRead 0 FirstWrite -1}
		f_x_msb_4_h_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_4_l_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_lsb_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_3_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_2_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_1_table_V {Type I LastRead -1 FirstWrite -1}}
	exp_32_10_s {
		x {Type I LastRead 0 FirstWrite -1}
		f_x_msb_4_h_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_4_l_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_lsb_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_3_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_2_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_1_table_V {Type I LastRead -1 FirstWrite -1}}
	write_attn_matmul_v {
		inout1 {Type O LastRead 4 FirstWrite 2}
		attn_matmul_v {Type I LastRead 0 FirstWrite -1}
		attn_matmul_v_stream {Type I LastRead 1 FirstWrite -1}}
	write_attn_matmul_v_Pipeline_ln403_for_each_patch_ln405_for_block_dim {
		inout1 {Type O LastRead -1 FirstWrite 2}
		sext_ln403 {Type I LastRead 0 FirstWrite -1}
		attn_matmul_v_stream {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "102188", "Max" : "102188"}
	, {"Name" : "Interval", "Min" : "102180", "Max" : "102180"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_inout2_AWVALID VALID 1 1 }  { m_axi_inout2_AWREADY READY 0 1 }  { m_axi_inout2_AWADDR ADDR 1 64 }  { m_axi_inout2_AWID ID 1 1 }  { m_axi_inout2_AWLEN SIZE 1 32 }  { m_axi_inout2_AWSIZE BURST 1 3 }  { m_axi_inout2_AWBURST LOCK 1 2 }  { m_axi_inout2_AWLOCK CACHE 1 2 }  { m_axi_inout2_AWCACHE PROT 1 4 }  { m_axi_inout2_AWPROT QOS 1 3 }  { m_axi_inout2_AWQOS REGION 1 4 }  { m_axi_inout2_AWREGION USER 1 4 }  { m_axi_inout2_AWUSER DATA 1 1 }  { m_axi_inout2_WVALID VALID 1 1 }  { m_axi_inout2_WREADY READY 0 1 }  { m_axi_inout2_WDATA FIFONUM 1 256 }  { m_axi_inout2_WSTRB STRB 1 32 }  { m_axi_inout2_WLAST LAST 1 1 }  { m_axi_inout2_WID ID 1 1 }  { m_axi_inout2_WUSER DATA 1 1 }  { m_axi_inout2_ARVALID VALID 1 1 }  { m_axi_inout2_ARREADY READY 0 1 }  { m_axi_inout2_ARADDR ADDR 1 64 }  { m_axi_inout2_ARID ID 1 1 }  { m_axi_inout2_ARLEN SIZE 1 32 }  { m_axi_inout2_ARSIZE BURST 1 3 }  { m_axi_inout2_ARBURST LOCK 1 2 }  { m_axi_inout2_ARLOCK CACHE 1 2 }  { m_axi_inout2_ARCACHE PROT 1 4 }  { m_axi_inout2_ARPROT QOS 1 3 }  { m_axi_inout2_ARQOS REGION 1 4 }  { m_axi_inout2_ARREGION USER 1 4 }  { m_axi_inout2_ARUSER DATA 1 1 }  { m_axi_inout2_RVALID VALID 0 1 }  { m_axi_inout2_RREADY READY 1 1 }  { m_axi_inout2_RDATA FIFONUM 0 256 }  { m_axi_inout2_RLAST LAST 0 1 }  { m_axi_inout2_RID ID 0 1 }  { m_axi_inout2_RFIFONUM LEN 0 9 }  { m_axi_inout2_RUSER DATA 0 1 }  { m_axi_inout2_RRESP RESP 0 2 }  { m_axi_inout2_BVALID VALID 0 1 }  { m_axi_inout2_BREADY READY 1 1 }  { m_axi_inout2_BRESP RESP 0 2 }  { m_axi_inout2_BID ID 0 1 }  { m_axi_inout2_BUSER DATA 0 1 } } }
	v { ap_none {  { v in_data 0 64 }  { v_ap_vld in_vld 0 1 } } }
	 { m_axi {  { m_axi_inout1_AWVALID VALID 1 1 }  { m_axi_inout1_AWREADY READY 0 1 }  { m_axi_inout1_AWADDR ADDR 1 64 }  { m_axi_inout1_AWID ID 1 1 }  { m_axi_inout1_AWLEN SIZE 1 32 }  { m_axi_inout1_AWSIZE BURST 1 3 }  { m_axi_inout1_AWBURST LOCK 1 2 }  { m_axi_inout1_AWLOCK CACHE 1 2 }  { m_axi_inout1_AWCACHE PROT 1 4 }  { m_axi_inout1_AWPROT QOS 1 3 }  { m_axi_inout1_AWQOS REGION 1 4 }  { m_axi_inout1_AWREGION USER 1 4 }  { m_axi_inout1_AWUSER DATA 1 1 }  { m_axi_inout1_WVALID VALID 1 1 }  { m_axi_inout1_WREADY READY 0 1 }  { m_axi_inout1_WDATA FIFONUM 1 256 }  { m_axi_inout1_WSTRB STRB 1 32 }  { m_axi_inout1_WLAST LAST 1 1 }  { m_axi_inout1_WID ID 1 1 }  { m_axi_inout1_WUSER DATA 1 1 }  { m_axi_inout1_ARVALID VALID 1 1 }  { m_axi_inout1_ARREADY READY 0 1 }  { m_axi_inout1_ARADDR ADDR 1 64 }  { m_axi_inout1_ARID ID 1 1 }  { m_axi_inout1_ARLEN SIZE 1 32 }  { m_axi_inout1_ARSIZE BURST 1 3 }  { m_axi_inout1_ARBURST LOCK 1 2 }  { m_axi_inout1_ARLOCK CACHE 1 2 }  { m_axi_inout1_ARCACHE PROT 1 4 }  { m_axi_inout1_ARPROT QOS 1 3 }  { m_axi_inout1_ARQOS REGION 1 4 }  { m_axi_inout1_ARREGION USER 1 4 }  { m_axi_inout1_ARUSER DATA 1 1 }  { m_axi_inout1_RVALID VALID 0 1 }  { m_axi_inout1_RREADY READY 1 1 }  { m_axi_inout1_RDATA FIFONUM 0 256 }  { m_axi_inout1_RLAST LAST 0 1 }  { m_axi_inout1_RID ID 0 1 }  { m_axi_inout1_RFIFONUM LEN 0 9 }  { m_axi_inout1_RUSER DATA 0 1 }  { m_axi_inout1_RRESP RESP 0 2 }  { m_axi_inout1_BVALID VALID 0 1 }  { m_axi_inout1_BREADY READY 1 1 }  { m_axi_inout1_BRESP RESP 0 2 }  { m_axi_inout1_BID ID 0 1 }  { m_axi_inout1_BUSER DATA 0 1 } } }
	attn { ap_none {  { attn in_data 0 64 }  { attn_ap_vld in_vld 0 1 } } }
	 { m_axi {  { m_axi_inout4_AWVALID VALID 1 1 }  { m_axi_inout4_AWREADY READY 0 1 }  { m_axi_inout4_AWADDR ADDR 1 64 }  { m_axi_inout4_AWID ID 1 1 }  { m_axi_inout4_AWLEN SIZE 1 32 }  { m_axi_inout4_AWSIZE BURST 1 3 }  { m_axi_inout4_AWBURST LOCK 1 2 }  { m_axi_inout4_AWLOCK CACHE 1 2 }  { m_axi_inout4_AWCACHE PROT 1 4 }  { m_axi_inout4_AWPROT QOS 1 3 }  { m_axi_inout4_AWQOS REGION 1 4 }  { m_axi_inout4_AWREGION USER 1 4 }  { m_axi_inout4_AWUSER DATA 1 1 }  { m_axi_inout4_WVALID VALID 1 1 }  { m_axi_inout4_WREADY READY 0 1 }  { m_axi_inout4_WDATA FIFONUM 1 256 }  { m_axi_inout4_WSTRB STRB 1 32 }  { m_axi_inout4_WLAST LAST 1 1 }  { m_axi_inout4_WID ID 1 1 }  { m_axi_inout4_WUSER DATA 1 1 }  { m_axi_inout4_ARVALID VALID 1 1 }  { m_axi_inout4_ARREADY READY 0 1 }  { m_axi_inout4_ARADDR ADDR 1 64 }  { m_axi_inout4_ARID ID 1 1 }  { m_axi_inout4_ARLEN SIZE 1 32 }  { m_axi_inout4_ARSIZE BURST 1 3 }  { m_axi_inout4_ARBURST LOCK 1 2 }  { m_axi_inout4_ARLOCK CACHE 1 2 }  { m_axi_inout4_ARCACHE PROT 1 4 }  { m_axi_inout4_ARPROT QOS 1 3 }  { m_axi_inout4_ARQOS REGION 1 4 }  { m_axi_inout4_ARREGION USER 1 4 }  { m_axi_inout4_ARUSER DATA 1 1 }  { m_axi_inout4_RVALID VALID 0 1 }  { m_axi_inout4_RREADY READY 1 1 }  { m_axi_inout4_RDATA FIFONUM 0 256 }  { m_axi_inout4_RLAST LAST 0 1 }  { m_axi_inout4_RID ID 0 1 }  { m_axi_inout4_RFIFONUM LEN 0 9 }  { m_axi_inout4_RUSER DATA 0 1 }  { m_axi_inout4_RRESP RESP 0 2 }  { m_axi_inout4_BVALID VALID 0 1 }  { m_axi_inout4_BREADY READY 1 1 }  { m_axi_inout4_BRESP RESP 0 2 }  { m_axi_inout4_BID ID 0 1 }  { m_axi_inout4_BUSER DATA 0 1 } } }
	attn_softmax_info { ap_none {  { attn_softmax_info in_data 0 64 }  { attn_softmax_info_ap_vld in_vld 0 1 } } }
	attn_matmul_v { ap_none {  { attn_matmul_v in_data 0 64 }  { attn_matmul_v_ap_vld in_vld 0 1 } } }
}
