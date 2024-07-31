set moduleName compute_q_matmul_k
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
set C_modelName {compute_q_matmul_k}
set C_modelType { void 0 }
set C_modelArgList {
	{ inout2 int 256 regular {axi_master 0}  }
	{ q int 64 regular  }
	{ inout3 int 256 regular {axi_master 0}  }
	{ k int 64 regular  }
	{ inout1 int 256 regular {axi_master 1}  }
	{ attn int 64 regular  }
	{ inout4 int 256 regular {axi_master 1}  }
	{ attn_softmax_info int 64 regular  }
	{ attn_scale_V int 20 regular {pointer 0} {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "inout2", "interface" : "axi_master", "bitwidth" : 256, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "x","offset": { "type": "dynamic","port_name": "x","bundle": "control"},"direction": "READWRITE"},{"cName": "tmp2","offset": { "type": "dynamic","port_name": "tmp2","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "q", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "inout3", "interface" : "axi_master", "bitwidth" : 256, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "tmp3","offset": { "type": "dynamic","port_name": "tmp3","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "k", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "inout1", "interface" : "axi_master", "bitwidth" : 256, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "images","offset": { "type": "dynamic","port_name": "images","bundle": "control"},"direction": "READONLY"},{"cName": "tmp1","offset": { "type": "dynamic","port_name": "tmp1","bundle": "control"},"direction": "READWRITE"},{"cName": "attn","offset": { "type": "dynamic","port_name": "attn","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "attn", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "inout4", "interface" : "axi_master", "bitwidth" : 256, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "tmp_hidden","offset": { "type": "dynamic","port_name": "tmp_hidden","bundle": "control"},"direction": "READWRITE"},{"cName": "attn_softmax_info","offset": { "type": "dynamic","port_name": "attn_softmax_info","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "attn_softmax_info", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "attn_scale_V", "interface" : "wire", "bitwidth" : 20, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 201
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
	{ q sc_in sc_lv 64 signal 1 } 
	{ m_axi_inout3_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_inout3_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_inout3_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_inout3_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_inout3_AWLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_inout3_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_inout3_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_inout3_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_inout3_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_inout3_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_inout3_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_inout3_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_inout3_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_inout3_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_inout3_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_inout3_WDATA sc_out sc_lv 256 signal 2 } 
	{ m_axi_inout3_WSTRB sc_out sc_lv 32 signal 2 } 
	{ m_axi_inout3_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_inout3_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_inout3_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_inout3_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_inout3_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_inout3_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_inout3_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_inout3_ARLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_inout3_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_inout3_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_inout3_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_inout3_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_inout3_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_inout3_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_inout3_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_inout3_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_inout3_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_inout3_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_inout3_RDATA sc_in sc_lv 256 signal 2 } 
	{ m_axi_inout3_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_inout3_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_inout3_RFIFONUM sc_in sc_lv 9 signal 2 } 
	{ m_axi_inout3_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_inout3_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_inout3_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_inout3_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_inout3_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_inout3_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_inout3_BUSER sc_in sc_lv 1 signal 2 } 
	{ k sc_in sc_lv 64 signal 3 } 
	{ m_axi_inout1_AWVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_inout1_AWREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_inout1_AWADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_inout1_AWID sc_out sc_lv 1 signal 4 } 
	{ m_axi_inout1_AWLEN sc_out sc_lv 32 signal 4 } 
	{ m_axi_inout1_AWSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_inout1_AWBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_inout1_AWLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_inout1_AWCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_inout1_AWPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_inout1_AWQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_inout1_AWREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_inout1_AWUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_inout1_WVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_inout1_WREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_inout1_WDATA sc_out sc_lv 256 signal 4 } 
	{ m_axi_inout1_WSTRB sc_out sc_lv 32 signal 4 } 
	{ m_axi_inout1_WLAST sc_out sc_logic 1 signal 4 } 
	{ m_axi_inout1_WID sc_out sc_lv 1 signal 4 } 
	{ m_axi_inout1_WUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_inout1_ARVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_inout1_ARREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_inout1_ARADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_inout1_ARID sc_out sc_lv 1 signal 4 } 
	{ m_axi_inout1_ARLEN sc_out sc_lv 32 signal 4 } 
	{ m_axi_inout1_ARSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_inout1_ARBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_inout1_ARLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_inout1_ARCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_inout1_ARPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_inout1_ARQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_inout1_ARREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_inout1_ARUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_inout1_RVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_inout1_RREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_inout1_RDATA sc_in sc_lv 256 signal 4 } 
	{ m_axi_inout1_RLAST sc_in sc_logic 1 signal 4 } 
	{ m_axi_inout1_RID sc_in sc_lv 1 signal 4 } 
	{ m_axi_inout1_RFIFONUM sc_in sc_lv 9 signal 4 } 
	{ m_axi_inout1_RUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_inout1_RRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_inout1_BVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_inout1_BREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_inout1_BRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_inout1_BID sc_in sc_lv 1 signal 4 } 
	{ m_axi_inout1_BUSER sc_in sc_lv 1 signal 4 } 
	{ attn sc_in sc_lv 64 signal 5 } 
	{ m_axi_inout4_AWVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_inout4_AWREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_inout4_AWADDR sc_out sc_lv 64 signal 6 } 
	{ m_axi_inout4_AWID sc_out sc_lv 1 signal 6 } 
	{ m_axi_inout4_AWLEN sc_out sc_lv 32 signal 6 } 
	{ m_axi_inout4_AWSIZE sc_out sc_lv 3 signal 6 } 
	{ m_axi_inout4_AWBURST sc_out sc_lv 2 signal 6 } 
	{ m_axi_inout4_AWLOCK sc_out sc_lv 2 signal 6 } 
	{ m_axi_inout4_AWCACHE sc_out sc_lv 4 signal 6 } 
	{ m_axi_inout4_AWPROT sc_out sc_lv 3 signal 6 } 
	{ m_axi_inout4_AWQOS sc_out sc_lv 4 signal 6 } 
	{ m_axi_inout4_AWREGION sc_out sc_lv 4 signal 6 } 
	{ m_axi_inout4_AWUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_inout4_WVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_inout4_WREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_inout4_WDATA sc_out sc_lv 256 signal 6 } 
	{ m_axi_inout4_WSTRB sc_out sc_lv 32 signal 6 } 
	{ m_axi_inout4_WLAST sc_out sc_logic 1 signal 6 } 
	{ m_axi_inout4_WID sc_out sc_lv 1 signal 6 } 
	{ m_axi_inout4_WUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_inout4_ARVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_inout4_ARREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_inout4_ARADDR sc_out sc_lv 64 signal 6 } 
	{ m_axi_inout4_ARID sc_out sc_lv 1 signal 6 } 
	{ m_axi_inout4_ARLEN sc_out sc_lv 32 signal 6 } 
	{ m_axi_inout4_ARSIZE sc_out sc_lv 3 signal 6 } 
	{ m_axi_inout4_ARBURST sc_out sc_lv 2 signal 6 } 
	{ m_axi_inout4_ARLOCK sc_out sc_lv 2 signal 6 } 
	{ m_axi_inout4_ARCACHE sc_out sc_lv 4 signal 6 } 
	{ m_axi_inout4_ARPROT sc_out sc_lv 3 signal 6 } 
	{ m_axi_inout4_ARQOS sc_out sc_lv 4 signal 6 } 
	{ m_axi_inout4_ARREGION sc_out sc_lv 4 signal 6 } 
	{ m_axi_inout4_ARUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_inout4_RVALID sc_in sc_logic 1 signal 6 } 
	{ m_axi_inout4_RREADY sc_out sc_logic 1 signal 6 } 
	{ m_axi_inout4_RDATA sc_in sc_lv 256 signal 6 } 
	{ m_axi_inout4_RLAST sc_in sc_logic 1 signal 6 } 
	{ m_axi_inout4_RID sc_in sc_lv 1 signal 6 } 
	{ m_axi_inout4_RFIFONUM sc_in sc_lv 9 signal 6 } 
	{ m_axi_inout4_RUSER sc_in sc_lv 1 signal 6 } 
	{ m_axi_inout4_RRESP sc_in sc_lv 2 signal 6 } 
	{ m_axi_inout4_BVALID sc_in sc_logic 1 signal 6 } 
	{ m_axi_inout4_BREADY sc_out sc_logic 1 signal 6 } 
	{ m_axi_inout4_BRESP sc_in sc_lv 2 signal 6 } 
	{ m_axi_inout4_BID sc_in sc_lv 1 signal 6 } 
	{ m_axi_inout4_BUSER sc_in sc_lv 1 signal 6 } 
	{ attn_softmax_info sc_in sc_lv 64 signal 7 } 
	{ attn_scale_V sc_in sc_lv 20 signal 8 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ attn_ap_vld sc_in sc_logic 1 invld 5 } 
	{ attn_softmax_info_ap_vld sc_in sc_logic 1 invld 7 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ q_ap_vld sc_in sc_logic 1 invld 1 } 
	{ k_ap_vld sc_in sc_logic 1 invld 3 } 
	{ attn_scale_V_ap_vld sc_in sc_logic 1 invld 8 } 
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
 	{ "name": "q", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "q", "role": "default" }} , 
 	{ "name": "m_axi_inout3_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inout3", "role": "AWVALID" }} , 
 	{ "name": "m_axi_inout3_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inout3", "role": "AWREADY" }} , 
 	{ "name": "m_axi_inout3_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "inout3", "role": "AWADDR" }} , 
 	{ "name": "m_axi_inout3_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "inout3", "role": "AWID" }} , 
 	{ "name": "m_axi_inout3_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inout3", "role": "AWLEN" }} , 
 	{ "name": "m_axi_inout3_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "inout3", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_inout3_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "inout3", "role": "AWBURST" }} , 
 	{ "name": "m_axi_inout3_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "inout3", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_inout3_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "inout3", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_inout3_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "inout3", "role": "AWPROT" }} , 
 	{ "name": "m_axi_inout3_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "inout3", "role": "AWQOS" }} , 
 	{ "name": "m_axi_inout3_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "inout3", "role": "AWREGION" }} , 
 	{ "name": "m_axi_inout3_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "inout3", "role": "AWUSER" }} , 
 	{ "name": "m_axi_inout3_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inout3", "role": "WVALID" }} , 
 	{ "name": "m_axi_inout3_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inout3", "role": "WREADY" }} , 
 	{ "name": "m_axi_inout3_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "inout3", "role": "WDATA" }} , 
 	{ "name": "m_axi_inout3_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inout3", "role": "WSTRB" }} , 
 	{ "name": "m_axi_inout3_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inout3", "role": "WLAST" }} , 
 	{ "name": "m_axi_inout3_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "inout3", "role": "WID" }} , 
 	{ "name": "m_axi_inout3_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "inout3", "role": "WUSER" }} , 
 	{ "name": "m_axi_inout3_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inout3", "role": "ARVALID" }} , 
 	{ "name": "m_axi_inout3_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inout3", "role": "ARREADY" }} , 
 	{ "name": "m_axi_inout3_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "inout3", "role": "ARADDR" }} , 
 	{ "name": "m_axi_inout3_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "inout3", "role": "ARID" }} , 
 	{ "name": "m_axi_inout3_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inout3", "role": "ARLEN" }} , 
 	{ "name": "m_axi_inout3_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "inout3", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_inout3_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "inout3", "role": "ARBURST" }} , 
 	{ "name": "m_axi_inout3_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "inout3", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_inout3_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "inout3", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_inout3_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "inout3", "role": "ARPROT" }} , 
 	{ "name": "m_axi_inout3_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "inout3", "role": "ARQOS" }} , 
 	{ "name": "m_axi_inout3_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "inout3", "role": "ARREGION" }} , 
 	{ "name": "m_axi_inout3_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "inout3", "role": "ARUSER" }} , 
 	{ "name": "m_axi_inout3_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inout3", "role": "RVALID" }} , 
 	{ "name": "m_axi_inout3_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inout3", "role": "RREADY" }} , 
 	{ "name": "m_axi_inout3_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "inout3", "role": "RDATA" }} , 
 	{ "name": "m_axi_inout3_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inout3", "role": "RLAST" }} , 
 	{ "name": "m_axi_inout3_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "inout3", "role": "RID" }} , 
 	{ "name": "m_axi_inout3_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "inout3", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_inout3_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "inout3", "role": "RUSER" }} , 
 	{ "name": "m_axi_inout3_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "inout3", "role": "RRESP" }} , 
 	{ "name": "m_axi_inout3_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inout3", "role": "BVALID" }} , 
 	{ "name": "m_axi_inout3_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inout3", "role": "BREADY" }} , 
 	{ "name": "m_axi_inout3_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "inout3", "role": "BRESP" }} , 
 	{ "name": "m_axi_inout3_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "inout3", "role": "BID" }} , 
 	{ "name": "m_axi_inout3_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "inout3", "role": "BUSER" }} , 
 	{ "name": "k", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k", "role": "default" }} , 
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
 	{ "name": "attn_scale_V", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "attn_scale_V", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "attn_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "attn", "role": "ap_vld" }} , 
 	{ "name": "attn_softmax_info_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "attn_softmax_info", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "q_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "q", "role": "ap_vld" }} , 
 	{ "name": "k_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "k", "role": "ap_vld" }} , 
 	{ "name": "attn_scale_V_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "attn_scale_V", "role": "ap_vld" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "5", "7", "81", "135", "138", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150"],
		"CDFG" : "compute_q_matmul_k",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "102241", "EstimateLatencyMax" : "102241",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "entry_proc_U0"},
			{"ID" : "2", "Name" : "read_x_U0"},
			{"ID" : "5", "Name" : "read_k_v_U0"},
			{"ID" : "7", "Name" : "compute_q_matmul_k_5_U0"}],
		"OutputProcess" : [
			{"ID" : "135", "Name" : "write_attn_U0"},
			{"ID" : "138", "Name" : "write_attn_softmax_info_U0"}],
		"Port" : [
			{"Name" : "inout2", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "read_x_U0", "Port" : "inout2"}]},
			{"Name" : "q", "Type" : "None", "Direction" : "I"},
			{"Name" : "inout3", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "read_k_v_U0", "Port" : "inout3"}]},
			{"Name" : "k", "Type" : "None", "Direction" : "I"},
			{"Name" : "inout1", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "135", "SubInstance" : "write_attn_U0", "Port" : "inout1"}]},
			{"Name" : "attn", "Type" : "None", "Direction" : "I"},
			{"Name" : "inout4", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "write_attn_softmax_info_U0", "Port" : "inout4"}]},
			{"Name" : "attn_softmax_info", "Type" : "None", "Direction" : "I"},
			{"Name" : "attn_scale_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "compute_q_matmul_k_5_U0", "Port" : "attn_scale_V"}]},
			{"Name" : "f_x_msb_4_h_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "finalize_attn_U0", "Port" : "f_x_msb_4_h_table_V"}]},
			{"Name" : "f_x_msb_4_l_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "finalize_attn_U0", "Port" : "f_x_msb_4_l_table_V"}]},
			{"Name" : "f_x_lsb_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "finalize_attn_U0", "Port" : "f_x_lsb_table_V"}]},
			{"Name" : "f_x_msb_3_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "finalize_attn_U0", "Port" : "f_x_msb_3_table_V"}]},
			{"Name" : "f_x_msb_2_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "finalize_attn_U0", "Port" : "f_x_msb_2_table_V"}]},
			{"Name" : "exp_x_msb_1_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "finalize_attn_U0", "Port" : "exp_x_msb_1_table_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.entry_proc_U0", "Parent" : "0",
		"CDFG" : "entry_proc",
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
			{"Name" : "attn", "Type" : "None", "Direction" : "I"},
			{"Name" : "attn_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["135"], "DependentChan" : "141", "DependentChanDepth" : "5", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "attn_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "attn_softmax_info", "Type" : "None", "Direction" : "I"},
			{"Name" : "attn_softmax_info_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["138"], "DependentChan" : "142", "DependentChanDepth" : "5", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "attn_softmax_info_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.read_x_U0", "Parent" : "0", "Child" : ["3"],
		"CDFG" : "read_x",
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
		"Port" : [
			{"Name" : "q_stream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["7"], "DependentChan" : "143", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55", "Port" : "q_stream", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "inout2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "inout2_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55", "Port" : "inout2", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.read_x_U0.grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55", "Parent" : "2", "Child" : ["4"],
		"CDFG" : "read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim",
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
			{"Name" : "inout2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "inout2_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln18", "Type" : "None", "Direction" : "I"},
			{"Name" : "q_stream", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "q_stream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "_ln18_for_each_patch__ln20_for_block_in_dim", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.read_x_U0.grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.read_k_v_U0", "Parent" : "0", "Child" : ["6"],
		"CDFG" : "read_k_v",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
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
			{"Name" : "k_stream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["7"], "DependentChan" : "144", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "k_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "inout3", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "inout3_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "inout3_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "k", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "_ln37_for_block_q_patch__ln39_for_each_k_patch__ln41_for_block_dim", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.read_k_v_U0.flow_control_loop_pipe_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0", "Parent" : "0", "Child" : ["8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80"],
		"CDFG" : "compute_q_matmul_k_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "102174", "EstimateLatencyMax" : "102174",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "qxk_stream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["81"], "DependentChan" : "145", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "qxk_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "q_stream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "143", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "q_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "k_stream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "144", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "k_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "attn_scale_V", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "_ln75_for_block_q_patch__ln77_for_each_k_patch__ln79_for_block_dim", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.q_blocks_data_M_elems_V_0_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.q_blocks_data_M_elems_V_1_U", "Parent" : "7"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.q_blocks_data_M_elems_V_2_U", "Parent" : "7"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.q_blocks_data_M_elems_V_3_U", "Parent" : "7"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.q_blocks_data_M_elems_V_4_U", "Parent" : "7"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.q_blocks_data_M_elems_V_5_U", "Parent" : "7"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.q_blocks_data_M_elems_V_6_U", "Parent" : "7"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.q_blocks_data_M_elems_V_7_U", "Parent" : "7"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.q_blocks_data_M_elems_V_0_1_U", "Parent" : "7"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.q_blocks_data_M_elems_V_1_1_U", "Parent" : "7"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.q_blocks_data_M_elems_V_2_1_U", "Parent" : "7"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.q_blocks_data_M_elems_V_3_1_U", "Parent" : "7"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.q_blocks_data_M_elems_V_4_1_U", "Parent" : "7"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.q_blocks_data_M_elems_V_5_1_U", "Parent" : "7"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.q_blocks_data_M_elems_V_6_1_U", "Parent" : "7"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.q_blocks_data_M_elems_V_7_1_U", "Parent" : "7"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.q_blocks_data_M_elems_V_0_2_U", "Parent" : "7"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.q_blocks_data_M_elems_V_1_2_U", "Parent" : "7"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.q_blocks_data_M_elems_V_2_2_U", "Parent" : "7"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.q_blocks_data_M_elems_V_3_2_U", "Parent" : "7"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.q_blocks_data_M_elems_V_4_2_U", "Parent" : "7"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.q_blocks_data_M_elems_V_5_2_U", "Parent" : "7"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.q_blocks_data_M_elems_V_6_2_U", "Parent" : "7"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.q_blocks_data_M_elems_V_7_2_U", "Parent" : "7"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.q_blocks_data_M_elems_V_0_3_U", "Parent" : "7"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.q_blocks_data_M_elems_V_1_3_U", "Parent" : "7"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.q_blocks_data_M_elems_V_2_3_U", "Parent" : "7"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.q_blocks_data_M_elems_V_3_3_U", "Parent" : "7"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.q_blocks_data_M_elems_V_4_3_U", "Parent" : "7"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.q_blocks_data_M_elems_V_5_3_U", "Parent" : "7"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.q_blocks_data_M_elems_V_6_3_U", "Parent" : "7"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.q_blocks_data_M_elems_V_7_3_U", "Parent" : "7"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.mul_32s_32s_54_1_1_U850", "Parent" : "7"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.mul_32s_32s_54_1_1_U851", "Parent" : "7"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.mul_32s_32s_54_1_1_U852", "Parent" : "7"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.mul_32s_32s_54_1_1_U853", "Parent" : "7"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.mul_32s_32s_54_1_1_U854", "Parent" : "7"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.mul_32s_32s_54_1_1_U855", "Parent" : "7"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.mul_32s_32s_54_1_1_U856", "Parent" : "7"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.mul_32s_32s_54_1_1_U857", "Parent" : "7"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.mul_32s_32s_54_1_1_U858", "Parent" : "7"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.mul_32s_32s_54_1_1_U859", "Parent" : "7"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.mul_32s_32s_54_1_1_U860", "Parent" : "7"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.mul_32s_32s_54_1_1_U861", "Parent" : "7"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.mul_32s_32s_54_1_1_U862", "Parent" : "7"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.mul_32s_32s_54_1_1_U863", "Parent" : "7"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.mul_32s_32s_54_1_1_U864", "Parent" : "7"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.mul_32s_32s_54_1_1_U865", "Parent" : "7"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.mul_32s_32s_54_1_1_U866", "Parent" : "7"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.mul_32s_32s_54_1_1_U867", "Parent" : "7"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.mul_32s_32s_54_1_1_U868", "Parent" : "7"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.mul_32s_32s_54_1_1_U869", "Parent" : "7"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.mul_32s_32s_54_1_1_U870", "Parent" : "7"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.mul_32s_32s_54_1_1_U871", "Parent" : "7"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.mul_32s_32s_54_1_1_U872", "Parent" : "7"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.mul_32s_32s_54_1_1_U873", "Parent" : "7"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.mul_32s_32s_54_1_1_U874", "Parent" : "7"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.mul_32s_32s_54_1_1_U875", "Parent" : "7"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.mul_32s_32s_54_1_1_U876", "Parent" : "7"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.mul_32s_32s_54_1_1_U877", "Parent" : "7"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.mul_32s_32s_54_1_1_U878", "Parent" : "7"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.mul_32s_32s_54_1_1_U879", "Parent" : "7"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.mul_32s_32s_54_1_1_U880", "Parent" : "7"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.mul_32s_32s_54_1_1_U881", "Parent" : "7"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.mul_32s_20ns_52_1_1_U882", "Parent" : "7"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.mux_32_32_1_1_U883", "Parent" : "7"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.mul_32s_20ns_52_1_1_U884", "Parent" : "7"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.mux_32_32_1_1_U885", "Parent" : "7"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.mul_32s_20ns_52_1_1_U886", "Parent" : "7"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.mux_32_32_1_1_U887", "Parent" : "7"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.mul_32s_20ns_52_1_1_U888", "Parent" : "7"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.mux_32_32_1_1_U889", "Parent" : "7"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_q_matmul_k_5_U0.flow_control_loop_pipe_U", "Parent" : "7"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.finalize_attn_U0", "Parent" : "0", "Child" : ["82", "93", "104", "115", "117", "119", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134"],
		"CDFG" : "finalize_attn",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "17087", "EstimateLatencyMax" : "17087",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "7",
		"StartFifo" : "start_for_finalize_attn_U0_U",
		"Port" : [
			{"Name" : "qxk_stream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "145", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "qxk_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "attn_stream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["135"], "DependentChan" : "146", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "attn_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "attn_softmax_info_stream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["138"], "DependentChan" : "147", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "attn_softmax_info_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "f_x_msb_4_h_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "grp_exp_32_10_s_fu_320", "Port" : "f_x_msb_4_h_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "104", "SubInstance" : "grp_exp_32_10_s_fu_354", "Port" : "f_x_msb_4_h_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "93", "SubInstance" : "grp_exp_32_10_s_fu_337", "Port" : "f_x_msb_4_h_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"}]},
			{"Name" : "f_x_msb_4_l_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "grp_exp_32_10_s_fu_320", "Port" : "f_x_msb_4_l_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "104", "SubInstance" : "grp_exp_32_10_s_fu_354", "Port" : "f_x_msb_4_l_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "93", "SubInstance" : "grp_exp_32_10_s_fu_337", "Port" : "f_x_msb_4_l_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"}]},
			{"Name" : "f_x_lsb_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "grp_exp_32_10_s_fu_320", "Port" : "f_x_lsb_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "104", "SubInstance" : "grp_exp_32_10_s_fu_354", "Port" : "f_x_lsb_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "93", "SubInstance" : "grp_exp_32_10_s_fu_337", "Port" : "f_x_lsb_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"}]},
			{"Name" : "f_x_msb_3_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "grp_exp_32_10_s_fu_320", "Port" : "f_x_msb_3_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "104", "SubInstance" : "grp_exp_32_10_s_fu_354", "Port" : "f_x_msb_3_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "93", "SubInstance" : "grp_exp_32_10_s_fu_337", "Port" : "f_x_msb_3_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"}]},
			{"Name" : "f_x_msb_2_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "grp_exp_32_10_s_fu_320", "Port" : "f_x_msb_2_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "104", "SubInstance" : "grp_exp_32_10_s_fu_354", "Port" : "f_x_msb_2_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "93", "SubInstance" : "grp_exp_32_10_s_fu_337", "Port" : "f_x_msb_2_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"}]},
			{"Name" : "exp_x_msb_1_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "grp_exp_32_10_s_fu_320", "Port" : "exp_x_msb_1_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "104", "SubInstance" : "grp_exp_32_10_s_fu_354", "Port" : "exp_x_msb_1_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "93", "SubInstance" : "grp_exp_32_10_s_fu_337", "Port" : "exp_x_msb_1_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"}]}],
		"Loop" : [
			{"Name" : "_ln163_for_block_q_patch_unadjusted__ln165_for_each_k_patch__ln167_for_offset_q_patch_unadjusted", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter58", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter58", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.finalize_attn_U0.grp_exp_32_10_s_fu_320", "Parent" : "81", "Child" : ["83", "84", "85", "86", "87", "88", "89", "90", "91", "92"],
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
	{"ID" : "83", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.finalize_attn_U0.grp_exp_32_10_s_fu_320.f_x_msb_4_h_table_V_U", "Parent" : "82"},
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.finalize_attn_U0.grp_exp_32_10_s_fu_320.f_x_msb_4_l_table_V_U", "Parent" : "82"},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.finalize_attn_U0.grp_exp_32_10_s_fu_320.f_x_lsb_table_V_U", "Parent" : "82"},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.finalize_attn_U0.grp_exp_32_10_s_fu_320.f_x_msb_3_table_V_U", "Parent" : "82"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.finalize_attn_U0.grp_exp_32_10_s_fu_320.f_x_msb_2_table_V_U", "Parent" : "82"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.finalize_attn_U0.grp_exp_32_10_s_fu_320.exp_x_msb_1_table_V_U", "Parent" : "82"},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.finalize_attn_U0.grp_exp_32_10_s_fu_320.mul_44ns_42ns_86_1_1_U897", "Parent" : "82"},
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.finalize_attn_U0.grp_exp_32_10_s_fu_320.mul_50ns_48ns_98_1_1_U898", "Parent" : "82"},
	{"ID" : "91", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.finalize_attn_U0.grp_exp_32_10_s_fu_320.mul_50ns_50ns_100_1_1_U899", "Parent" : "82"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.finalize_attn_U0.grp_exp_32_10_s_fu_320.mac_muladd_3ns_4ns_9ns_10_4_1_U900", "Parent" : "82"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.finalize_attn_U0.grp_exp_32_10_s_fu_337", "Parent" : "81", "Child" : ["94", "95", "96", "97", "98", "99", "100", "101", "102", "103"],
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
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.finalize_attn_U0.grp_exp_32_10_s_fu_337.f_x_msb_4_h_table_V_U", "Parent" : "93"},
	{"ID" : "95", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.finalize_attn_U0.grp_exp_32_10_s_fu_337.f_x_msb_4_l_table_V_U", "Parent" : "93"},
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.finalize_attn_U0.grp_exp_32_10_s_fu_337.f_x_lsb_table_V_U", "Parent" : "93"},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.finalize_attn_U0.grp_exp_32_10_s_fu_337.f_x_msb_3_table_V_U", "Parent" : "93"},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.finalize_attn_U0.grp_exp_32_10_s_fu_337.f_x_msb_2_table_V_U", "Parent" : "93"},
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.finalize_attn_U0.grp_exp_32_10_s_fu_337.exp_x_msb_1_table_V_U", "Parent" : "93"},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.finalize_attn_U0.grp_exp_32_10_s_fu_337.mul_44ns_42ns_86_1_1_U897", "Parent" : "93"},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.finalize_attn_U0.grp_exp_32_10_s_fu_337.mul_50ns_48ns_98_1_1_U898", "Parent" : "93"},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.finalize_attn_U0.grp_exp_32_10_s_fu_337.mul_50ns_50ns_100_1_1_U899", "Parent" : "93"},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.finalize_attn_U0.grp_exp_32_10_s_fu_337.mac_muladd_3ns_4ns_9ns_10_4_1_U900", "Parent" : "93"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.finalize_attn_U0.grp_exp_32_10_s_fu_354", "Parent" : "81", "Child" : ["105", "106", "107", "108", "109", "110", "111", "112", "113", "114"],
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
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.finalize_attn_U0.grp_exp_32_10_s_fu_354.f_x_msb_4_h_table_V_U", "Parent" : "104"},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.finalize_attn_U0.grp_exp_32_10_s_fu_354.f_x_msb_4_l_table_V_U", "Parent" : "104"},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.finalize_attn_U0.grp_exp_32_10_s_fu_354.f_x_lsb_table_V_U", "Parent" : "104"},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.finalize_attn_U0.grp_exp_32_10_s_fu_354.f_x_msb_3_table_V_U", "Parent" : "104"},
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.finalize_attn_U0.grp_exp_32_10_s_fu_354.f_x_msb_2_table_V_U", "Parent" : "104"},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.finalize_attn_U0.grp_exp_32_10_s_fu_354.exp_x_msb_1_table_V_U", "Parent" : "104"},
	{"ID" : "111", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.finalize_attn_U0.grp_exp_32_10_s_fu_354.mul_44ns_42ns_86_1_1_U897", "Parent" : "104"},
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.finalize_attn_U0.grp_exp_32_10_s_fu_354.mul_50ns_48ns_98_1_1_U898", "Parent" : "104"},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.finalize_attn_U0.grp_exp_32_10_s_fu_354.mul_50ns_50ns_100_1_1_U899", "Parent" : "104"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.finalize_attn_U0.grp_exp_32_10_s_fu_354.mac_muladd_3ns_4ns_9ns_10_4_1_U900", "Parent" : "104"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.finalize_attn_U0.grp_recip_fixed_32_10_s_fu_371", "Parent" : "81", "Child" : ["116"],
		"CDFG" : "recip_fixed_32_10_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "49", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "49",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.finalize_attn_U0.grp_recip_fixed_32_10_s_fu_371.sdiv_46ns_32s_32_50_0_U912", "Parent" : "115"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.finalize_attn_U0.grp_recip_fixed_32_10_s_fu_376", "Parent" : "81", "Child" : ["118"],
		"CDFG" : "recip_fixed_32_10_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "49", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "49",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "118", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.finalize_attn_U0.grp_recip_fixed_32_10_s_fu_376.sdiv_46ns_32s_32_50_0_U912", "Parent" : "117"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.finalize_attn_U0.grp_recip_fixed_32_10_s_fu_381", "Parent" : "81", "Child" : ["120"],
		"CDFG" : "recip_fixed_32_10_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "49", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "49",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "120", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.finalize_attn_U0.grp_recip_fixed_32_10_s_fu_381.sdiv_46ns_32s_32_50_0_U912", "Parent" : "119"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.finalize_attn_U0.mux_42_32_1_1_U915", "Parent" : "81"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.finalize_attn_U0.mux_42_32_1_1_U916", "Parent" : "81"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.finalize_attn_U0.mux_42_32_1_1_U917", "Parent" : "81"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.finalize_attn_U0.mux_42_32_1_1_U918", "Parent" : "81"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.finalize_attn_U0.mux_42_32_1_1_U919", "Parent" : "81"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.finalize_attn_U0.mux_42_32_1_1_U920", "Parent" : "81"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.finalize_attn_U0.mux_42_32_1_1_U921", "Parent" : "81"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.finalize_attn_U0.mux_42_32_1_1_U922", "Parent" : "81"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.finalize_attn_U0.mux_42_32_1_1_U923", "Parent" : "81"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.finalize_attn_U0.mux_42_32_1_1_U924", "Parent" : "81"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.finalize_attn_U0.mul_31ns_32s_54_1_1_U925", "Parent" : "81"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.finalize_attn_U0.mul_31ns_32s_54_1_1_U926", "Parent" : "81"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.finalize_attn_U0.mul_31ns_32s_54_1_1_U927", "Parent" : "81"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.finalize_attn_U0.flow_control_loop_pipe_U", "Parent" : "81"},
	{"ID" : "135", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.write_attn_U0", "Parent" : "0", "Child" : ["136"],
		"CDFG" : "write_attn",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
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
		"StartSource" : "1",
		"StartFifo" : "start_for_write_attn_U0_U",
		"Port" : [
			{"Name" : "attn_stream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["81"], "DependentChan" : "146", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "grp_write_attn_Pipeline_ln245_for_each_q_patch_block_ln247_for_each_k_patch_ln249_fu_46", "Port" : "attn_stream", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "inout1", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "grp_write_attn_Pipeline_ln245_for_each_q_patch_block_ln247_for_each_k_patch_ln249_fu_46", "Port" : "inout1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "attn", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "141", "DependentChanDepth" : "5", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "attn_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.write_attn_U0.grp_write_attn_Pipeline_ln245_for_each_q_patch_block_ln247_for_each_k_patch_ln249_fu_46", "Parent" : "135", "Child" : ["137"],
		"CDFG" : "write_attn_Pipeline_ln245_for_each_q_patch_block_ln247_for_each_k_patch_ln249",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "17036", "EstimateLatencyMax" : "17036",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "attn_stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "attn_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "attn_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln252_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "inout1", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "inout1_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "inout1_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "inout1_blk_n_B", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "_ln245_for_each_q_patch_block__ln247_for_each_k_patch__ln249_for_each_q_patch_offset", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "137", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.write_attn_U0.grp_write_attn_Pipeline_ln245_for_each_q_patch_block_ln247_for_each_k_patch_ln249_fu_46.flow_control_loop_pipe_sequential_init_U", "Parent" : "136"},
	{"ID" : "138", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.write_attn_softmax_info_U0", "Parent" : "0", "Child" : ["139"],
		"CDFG" : "write_attn_softmax_info",
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
		"StartSource" : "1",
		"StartFifo" : "start_for_write_attn_softmax_info_U0_U",
		"Port" : [
			{"Name" : "attn_softmax_info_stream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["81"], "DependentChan" : "147", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_write_attn_softmax_info_Pipeline_ln277_for_each_q_patch_fu_66", "Port" : "attn_softmax_info_stream", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "inout4", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "inout4_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "inout4_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_write_attn_softmax_info_Pipeline_ln277_for_each_q_patch_fu_66", "Port" : "inout4", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "attn_softmax_info", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "142", "DependentChanDepth" : "5", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "attn_softmax_info_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.write_attn_softmax_info_U0.grp_write_attn_softmax_info_Pipeline_ln277_for_each_q_patch_fu_66", "Parent" : "138", "Child" : ["140"],
		"CDFG" : "write_attn_softmax_info_Pipeline_ln277_for_each_q_patch",
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
			{"Name" : "inout4", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "inout4_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln277", "Type" : "None", "Direction" : "I"},
			{"Name" : "attn_softmax_info_stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "attn_softmax_info_stream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "_ln277_for_each_q_patch", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "140", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.write_attn_softmax_info_U0.grp_write_attn_softmax_info_Pipeline_ln277_for_each_q_patch_fu_66.flow_control_loop_pipe_sequential_init_U", "Parent" : "139"},
	{"ID" : "141", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.attn_c_U", "Parent" : "0"},
	{"ID" : "142", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.attn_softmax_info_c_U", "Parent" : "0"},
	{"ID" : "143", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.q_stream_U", "Parent" : "0"},
	{"ID" : "144", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k_stream_U", "Parent" : "0"},
	{"ID" : "145", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.qxk_stream_U", "Parent" : "0"},
	{"ID" : "146", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.attn_stream_U", "Parent" : "0"},
	{"ID" : "147", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.attn_softmax_info_stream_U", "Parent" : "0"},
	{"ID" : "148", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_write_attn_U0_U", "Parent" : "0"},
	{"ID" : "149", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_write_attn_softmax_info_U0_U", "Parent" : "0"},
	{"ID" : "150", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_finalize_attn_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	compute_q_matmul_k {
		inout2 {Type I LastRead 1 FirstWrite -1}
		q {Type I LastRead 0 FirstWrite -1}
		inout3 {Type I LastRead 8 FirstWrite -1}
		k {Type I LastRead 0 FirstWrite -1}
		inout1 {Type O LastRead 4 FirstWrite 3}
		attn {Type I LastRead 5 FirstWrite -1}
		inout4 {Type O LastRead 4 FirstWrite 2}
		attn_softmax_info {Type I LastRead 5 FirstWrite -1}
		attn_scale_V {Type I LastRead 5 FirstWrite -1}
		f_x_msb_4_h_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_4_l_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_lsb_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_3_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_2_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_1_table_V {Type I LastRead -1 FirstWrite -1}}
	entry_proc {
		attn {Type I LastRead 0 FirstWrite -1}
		attn_c {Type O LastRead -1 FirstWrite 0}
		attn_softmax_info {Type I LastRead 0 FirstWrite -1}
		attn_softmax_info_c {Type O LastRead -1 FirstWrite 0}}
	read_x {
		q_stream {Type O LastRead -1 FirstWrite 2}
		inout2 {Type I LastRead 1 FirstWrite -1}
		x {Type I LastRead 0 FirstWrite -1}}
	read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim {
		inout2 {Type I LastRead 1 FirstWrite -1}
		sext_ln18 {Type I LastRead 0 FirstWrite -1}
		q_stream {Type O LastRead -1 FirstWrite 2}}
	read_k_v {
		k_stream {Type O LastRead -1 FirstWrite 9}
		inout3 {Type I LastRead 8 FirstWrite -1}
		k {Type I LastRead 0 FirstWrite -1}}
	compute_q_matmul_k_5 {
		qxk_stream {Type O LastRead -1 FirstWrite 5}
		q_stream {Type I LastRead 1 FirstWrite -1}
		k_stream {Type I LastRead 3 FirstWrite -1}
		attn_scale_V {Type I LastRead 5 FirstWrite -1}}
	finalize_attn {
		qxk_stream {Type I LastRead 1 FirstWrite -1}
		attn_stream {Type O LastRead -1 FirstWrite 2}
		attn_softmax_info_stream {Type O LastRead -1 FirstWrite 58}
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
	recip_fixed_32_10_s {
		x {Type I LastRead 0 FirstWrite -1}}
	recip_fixed_32_10_s {
		x {Type I LastRead 0 FirstWrite -1}}
	recip_fixed_32_10_s {
		x {Type I LastRead 0 FirstWrite -1}}
	write_attn {
		attn_stream {Type I LastRead 2 FirstWrite -1}
		inout1 {Type O LastRead 4 FirstWrite 3}
		attn {Type I LastRead 0 FirstWrite -1}}
	write_attn_Pipeline_ln245_for_each_q_patch_block_ln247_for_each_k_patch_ln249 {
		attn_stream {Type I LastRead 2 FirstWrite -1}
		attn_load {Type I LastRead 0 FirstWrite -1}
		trunc_ln252_1 {Type I LastRead 0 FirstWrite -1}
		inout1 {Type O LastRead 4 FirstWrite 3}}
	write_attn_softmax_info {
		attn_softmax_info_stream {Type I LastRead 1 FirstWrite -1}
		inout4 {Type O LastRead 4 FirstWrite 2}
		attn_softmax_info {Type I LastRead 0 FirstWrite -1}}
	write_attn_softmax_info_Pipeline_ln277_for_each_q_patch {
		inout4 {Type O LastRead -1 FirstWrite 2}
		sext_ln277 {Type I LastRead 0 FirstWrite -1}
		attn_softmax_info_stream {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "102241", "Max" : "102241"}
	, {"Name" : "Interval", "Min" : "102179", "Max" : "102179"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_inout2_AWVALID VALID 1 1 }  { m_axi_inout2_AWREADY READY 0 1 }  { m_axi_inout2_AWADDR ADDR 1 64 }  { m_axi_inout2_AWID ID 1 1 }  { m_axi_inout2_AWLEN SIZE 1 32 }  { m_axi_inout2_AWSIZE BURST 1 3 }  { m_axi_inout2_AWBURST LOCK 1 2 }  { m_axi_inout2_AWLOCK CACHE 1 2 }  { m_axi_inout2_AWCACHE PROT 1 4 }  { m_axi_inout2_AWPROT QOS 1 3 }  { m_axi_inout2_AWQOS REGION 1 4 }  { m_axi_inout2_AWREGION USER 1 4 }  { m_axi_inout2_AWUSER DATA 1 1 }  { m_axi_inout2_WVALID VALID 1 1 }  { m_axi_inout2_WREADY READY 0 1 }  { m_axi_inout2_WDATA FIFONUM 1 256 }  { m_axi_inout2_WSTRB STRB 1 32 }  { m_axi_inout2_WLAST LAST 1 1 }  { m_axi_inout2_WID ID 1 1 }  { m_axi_inout2_WUSER DATA 1 1 }  { m_axi_inout2_ARVALID VALID 1 1 }  { m_axi_inout2_ARREADY READY 0 1 }  { m_axi_inout2_ARADDR ADDR 1 64 }  { m_axi_inout2_ARID ID 1 1 }  { m_axi_inout2_ARLEN SIZE 1 32 }  { m_axi_inout2_ARSIZE BURST 1 3 }  { m_axi_inout2_ARBURST LOCK 1 2 }  { m_axi_inout2_ARLOCK CACHE 1 2 }  { m_axi_inout2_ARCACHE PROT 1 4 }  { m_axi_inout2_ARPROT QOS 1 3 }  { m_axi_inout2_ARQOS REGION 1 4 }  { m_axi_inout2_ARREGION USER 1 4 }  { m_axi_inout2_ARUSER DATA 1 1 }  { m_axi_inout2_RVALID VALID 0 1 }  { m_axi_inout2_RREADY READY 1 1 }  { m_axi_inout2_RDATA FIFONUM 0 256 }  { m_axi_inout2_RLAST LAST 0 1 }  { m_axi_inout2_RID ID 0 1 }  { m_axi_inout2_RFIFONUM LEN 0 9 }  { m_axi_inout2_RUSER DATA 0 1 }  { m_axi_inout2_RRESP RESP 0 2 }  { m_axi_inout2_BVALID VALID 0 1 }  { m_axi_inout2_BREADY READY 1 1 }  { m_axi_inout2_BRESP RESP 0 2 }  { m_axi_inout2_BID ID 0 1 }  { m_axi_inout2_BUSER DATA 0 1 } } }
	q { ap_none {  { q in_data 0 64 }  { q_ap_vld in_vld 0 1 } } }
	 { m_axi {  { m_axi_inout3_AWVALID VALID 1 1 }  { m_axi_inout3_AWREADY READY 0 1 }  { m_axi_inout3_AWADDR ADDR 1 64 }  { m_axi_inout3_AWID ID 1 1 }  { m_axi_inout3_AWLEN SIZE 1 32 }  { m_axi_inout3_AWSIZE BURST 1 3 }  { m_axi_inout3_AWBURST LOCK 1 2 }  { m_axi_inout3_AWLOCK CACHE 1 2 }  { m_axi_inout3_AWCACHE PROT 1 4 }  { m_axi_inout3_AWPROT QOS 1 3 }  { m_axi_inout3_AWQOS REGION 1 4 }  { m_axi_inout3_AWREGION USER 1 4 }  { m_axi_inout3_AWUSER DATA 1 1 }  { m_axi_inout3_WVALID VALID 1 1 }  { m_axi_inout3_WREADY READY 0 1 }  { m_axi_inout3_WDATA FIFONUM 1 256 }  { m_axi_inout3_WSTRB STRB 1 32 }  { m_axi_inout3_WLAST LAST 1 1 }  { m_axi_inout3_WID ID 1 1 }  { m_axi_inout3_WUSER DATA 1 1 }  { m_axi_inout3_ARVALID VALID 1 1 }  { m_axi_inout3_ARREADY READY 0 1 }  { m_axi_inout3_ARADDR ADDR 1 64 }  { m_axi_inout3_ARID ID 1 1 }  { m_axi_inout3_ARLEN SIZE 1 32 }  { m_axi_inout3_ARSIZE BURST 1 3 }  { m_axi_inout3_ARBURST LOCK 1 2 }  { m_axi_inout3_ARLOCK CACHE 1 2 }  { m_axi_inout3_ARCACHE PROT 1 4 }  { m_axi_inout3_ARPROT QOS 1 3 }  { m_axi_inout3_ARQOS REGION 1 4 }  { m_axi_inout3_ARREGION USER 1 4 }  { m_axi_inout3_ARUSER DATA 1 1 }  { m_axi_inout3_RVALID VALID 0 1 }  { m_axi_inout3_RREADY READY 1 1 }  { m_axi_inout3_RDATA FIFONUM 0 256 }  { m_axi_inout3_RLAST LAST 0 1 }  { m_axi_inout3_RID ID 0 1 }  { m_axi_inout3_RFIFONUM LEN 0 9 }  { m_axi_inout3_RUSER DATA 0 1 }  { m_axi_inout3_RRESP RESP 0 2 }  { m_axi_inout3_BVALID VALID 0 1 }  { m_axi_inout3_BREADY READY 1 1 }  { m_axi_inout3_BRESP RESP 0 2 }  { m_axi_inout3_BID ID 0 1 }  { m_axi_inout3_BUSER DATA 0 1 } } }
	k { ap_none {  { k in_data 0 64 }  { k_ap_vld in_vld 0 1 } } }
	 { m_axi {  { m_axi_inout1_AWVALID VALID 1 1 }  { m_axi_inout1_AWREADY READY 0 1 }  { m_axi_inout1_AWADDR ADDR 1 64 }  { m_axi_inout1_AWID ID 1 1 }  { m_axi_inout1_AWLEN SIZE 1 32 }  { m_axi_inout1_AWSIZE BURST 1 3 }  { m_axi_inout1_AWBURST LOCK 1 2 }  { m_axi_inout1_AWLOCK CACHE 1 2 }  { m_axi_inout1_AWCACHE PROT 1 4 }  { m_axi_inout1_AWPROT QOS 1 3 }  { m_axi_inout1_AWQOS REGION 1 4 }  { m_axi_inout1_AWREGION USER 1 4 }  { m_axi_inout1_AWUSER DATA 1 1 }  { m_axi_inout1_WVALID VALID 1 1 }  { m_axi_inout1_WREADY READY 0 1 }  { m_axi_inout1_WDATA FIFONUM 1 256 }  { m_axi_inout1_WSTRB STRB 1 32 }  { m_axi_inout1_WLAST LAST 1 1 }  { m_axi_inout1_WID ID 1 1 }  { m_axi_inout1_WUSER DATA 1 1 }  { m_axi_inout1_ARVALID VALID 1 1 }  { m_axi_inout1_ARREADY READY 0 1 }  { m_axi_inout1_ARADDR ADDR 1 64 }  { m_axi_inout1_ARID ID 1 1 }  { m_axi_inout1_ARLEN SIZE 1 32 }  { m_axi_inout1_ARSIZE BURST 1 3 }  { m_axi_inout1_ARBURST LOCK 1 2 }  { m_axi_inout1_ARLOCK CACHE 1 2 }  { m_axi_inout1_ARCACHE PROT 1 4 }  { m_axi_inout1_ARPROT QOS 1 3 }  { m_axi_inout1_ARQOS REGION 1 4 }  { m_axi_inout1_ARREGION USER 1 4 }  { m_axi_inout1_ARUSER DATA 1 1 }  { m_axi_inout1_RVALID VALID 0 1 }  { m_axi_inout1_RREADY READY 1 1 }  { m_axi_inout1_RDATA FIFONUM 0 256 }  { m_axi_inout1_RLAST LAST 0 1 }  { m_axi_inout1_RID ID 0 1 }  { m_axi_inout1_RFIFONUM LEN 0 9 }  { m_axi_inout1_RUSER DATA 0 1 }  { m_axi_inout1_RRESP RESP 0 2 }  { m_axi_inout1_BVALID VALID 0 1 }  { m_axi_inout1_BREADY READY 1 1 }  { m_axi_inout1_BRESP RESP 0 2 }  { m_axi_inout1_BID ID 0 1 }  { m_axi_inout1_BUSER DATA 0 1 } } }
	attn { ap_none {  { attn in_data 0 64 }  { attn_ap_vld in_vld 0 1 } } }
	 { m_axi {  { m_axi_inout4_AWVALID VALID 1 1 }  { m_axi_inout4_AWREADY READY 0 1 }  { m_axi_inout4_AWADDR ADDR 1 64 }  { m_axi_inout4_AWID ID 1 1 }  { m_axi_inout4_AWLEN SIZE 1 32 }  { m_axi_inout4_AWSIZE BURST 1 3 }  { m_axi_inout4_AWBURST LOCK 1 2 }  { m_axi_inout4_AWLOCK CACHE 1 2 }  { m_axi_inout4_AWCACHE PROT 1 4 }  { m_axi_inout4_AWPROT QOS 1 3 }  { m_axi_inout4_AWQOS REGION 1 4 }  { m_axi_inout4_AWREGION USER 1 4 }  { m_axi_inout4_AWUSER DATA 1 1 }  { m_axi_inout4_WVALID VALID 1 1 }  { m_axi_inout4_WREADY READY 0 1 }  { m_axi_inout4_WDATA FIFONUM 1 256 }  { m_axi_inout4_WSTRB STRB 1 32 }  { m_axi_inout4_WLAST LAST 1 1 }  { m_axi_inout4_WID ID 1 1 }  { m_axi_inout4_WUSER DATA 1 1 }  { m_axi_inout4_ARVALID VALID 1 1 }  { m_axi_inout4_ARREADY READY 0 1 }  { m_axi_inout4_ARADDR ADDR 1 64 }  { m_axi_inout4_ARID ID 1 1 }  { m_axi_inout4_ARLEN SIZE 1 32 }  { m_axi_inout4_ARSIZE BURST 1 3 }  { m_axi_inout4_ARBURST LOCK 1 2 }  { m_axi_inout4_ARLOCK CACHE 1 2 }  { m_axi_inout4_ARCACHE PROT 1 4 }  { m_axi_inout4_ARPROT QOS 1 3 }  { m_axi_inout4_ARQOS REGION 1 4 }  { m_axi_inout4_ARREGION USER 1 4 }  { m_axi_inout4_ARUSER DATA 1 1 }  { m_axi_inout4_RVALID VALID 0 1 }  { m_axi_inout4_RREADY READY 1 1 }  { m_axi_inout4_RDATA FIFONUM 0 256 }  { m_axi_inout4_RLAST LAST 0 1 }  { m_axi_inout4_RID ID 0 1 }  { m_axi_inout4_RFIFONUM LEN 0 9 }  { m_axi_inout4_RUSER DATA 0 1 }  { m_axi_inout4_RRESP RESP 0 2 }  { m_axi_inout4_BVALID VALID 0 1 }  { m_axi_inout4_BREADY READY 1 1 }  { m_axi_inout4_BRESP RESP 0 2 }  { m_axi_inout4_BID ID 0 1 }  { m_axi_inout4_BUSER DATA 0 1 } } }
	attn_softmax_info { ap_none {  { attn_softmax_info in_data 0 64 }  { attn_softmax_info_ap_vld in_vld 0 1 } } }
	attn_scale_V { ap_none {  { attn_scale_V in_data 0 20 }  { attn_scale_V_ap_vld in_vld 0 1 } } }
}
