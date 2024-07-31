set moduleName layernorm_output
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type loop_rewind
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {layernorm_output}
set C_modelType { void 0 }
set C_modelArgList {
	{ inout1 int 256 regular {axi_master 1}  }
	{ patch int 8 regular  }
	{ out_r int 64 regular  }
	{ x_patch_data_M_elems_V1 int 32 regular {array 24 { 1 3 } 1 1 }  }
	{ x_patch_data_M_elems_V_12 int 32 regular {array 24 { 1 3 } 1 1 }  }
	{ x_patch_data_M_elems_V_23 int 32 regular {array 24 { 1 3 } 1 1 }  }
	{ x_patch_data_M_elems_V_34 int 32 regular {array 24 { 1 3 } 1 1 }  }
	{ x_patch_data_M_elems_V_45 int 32 regular {array 24 { 1 3 } 1 1 }  }
	{ x_patch_data_M_elems_V_56 int 32 regular {array 24 { 1 3 } 1 1 }  }
	{ x_patch_data_M_elems_V_67 int 32 regular {array 24 { 1 3 } 1 1 }  }
	{ x_patch_data_M_elems_V_78 int 32 regular {array 24 { 1 3 } 1 1 }  }
	{ p_read int 32 regular  }
	{ p_read1 int 32 regular  }
	{ weights int 128 regular {array 24 { 1 3 } 1 1 }  }
	{ bias int 128 regular {array 24 { 1 3 } 1 1 }  }
	{ norm_eps_V int 3 regular {pointer 0} {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "inout1", "interface" : "axi_master", "bitwidth" : 256, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "images","offset": { "type": "dynamic","port_name": "images","bundle": "control"},"direction": "READONLY"},{"cName": "tmp1","offset": { "type": "dynamic","port_name": "tmp1","bundle": "control"},"direction": "READWRITE"},{"cName": "attn","offset": { "type": "dynamic","port_name": "attn","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "patch", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "out_r", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "x_patch_data_M_elems_V1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_patch_data_M_elems_V_12", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_patch_data_M_elems_V_23", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_patch_data_M_elems_V_34", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_patch_data_M_elems_V_45", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_patch_data_M_elems_V_56", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_patch_data_M_elems_V_67", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_patch_data_M_elems_V_78", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights", "interface" : "memory", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "bias", "interface" : "memory", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "norm_eps_V", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 88
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
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
	{ patch sc_in sc_lv 8 signal 1 } 
	{ out_r sc_in sc_lv 64 signal 2 } 
	{ x_patch_data_M_elems_V1_address0 sc_out sc_lv 5 signal 3 } 
	{ x_patch_data_M_elems_V1_ce0 sc_out sc_logic 1 signal 3 } 
	{ x_patch_data_M_elems_V1_q0 sc_in sc_lv 32 signal 3 } 
	{ x_patch_data_M_elems_V_12_address0 sc_out sc_lv 5 signal 4 } 
	{ x_patch_data_M_elems_V_12_ce0 sc_out sc_logic 1 signal 4 } 
	{ x_patch_data_M_elems_V_12_q0 sc_in sc_lv 32 signal 4 } 
	{ x_patch_data_M_elems_V_23_address0 sc_out sc_lv 5 signal 5 } 
	{ x_patch_data_M_elems_V_23_ce0 sc_out sc_logic 1 signal 5 } 
	{ x_patch_data_M_elems_V_23_q0 sc_in sc_lv 32 signal 5 } 
	{ x_patch_data_M_elems_V_34_address0 sc_out sc_lv 5 signal 6 } 
	{ x_patch_data_M_elems_V_34_ce0 sc_out sc_logic 1 signal 6 } 
	{ x_patch_data_M_elems_V_34_q0 sc_in sc_lv 32 signal 6 } 
	{ x_patch_data_M_elems_V_45_address0 sc_out sc_lv 5 signal 7 } 
	{ x_patch_data_M_elems_V_45_ce0 sc_out sc_logic 1 signal 7 } 
	{ x_patch_data_M_elems_V_45_q0 sc_in sc_lv 32 signal 7 } 
	{ x_patch_data_M_elems_V_56_address0 sc_out sc_lv 5 signal 8 } 
	{ x_patch_data_M_elems_V_56_ce0 sc_out sc_logic 1 signal 8 } 
	{ x_patch_data_M_elems_V_56_q0 sc_in sc_lv 32 signal 8 } 
	{ x_patch_data_M_elems_V_67_address0 sc_out sc_lv 5 signal 9 } 
	{ x_patch_data_M_elems_V_67_ce0 sc_out sc_logic 1 signal 9 } 
	{ x_patch_data_M_elems_V_67_q0 sc_in sc_lv 32 signal 9 } 
	{ x_patch_data_M_elems_V_78_address0 sc_out sc_lv 5 signal 10 } 
	{ x_patch_data_M_elems_V_78_ce0 sc_out sc_logic 1 signal 10 } 
	{ x_patch_data_M_elems_V_78_q0 sc_in sc_lv 32 signal 10 } 
	{ p_read sc_in sc_lv 32 signal 11 } 
	{ p_read1 sc_in sc_lv 32 signal 12 } 
	{ weights_address0 sc_out sc_lv 5 signal 13 } 
	{ weights_ce0 sc_out sc_logic 1 signal 13 } 
	{ weights_q0 sc_in sc_lv 128 signal 13 } 
	{ bias_address0 sc_out sc_lv 5 signal 14 } 
	{ bias_ce0 sc_out sc_logic 1 signal 14 } 
	{ bias_q0 sc_in sc_lv 128 signal 14 } 
	{ norm_eps_V sc_in sc_lv 3 signal 15 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
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
 	{ "name": "patch", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "patch", "role": "default" }} , 
 	{ "name": "out_r", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "out_r", "role": "default" }} , 
 	{ "name": "x_patch_data_M_elems_V1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "x_patch_data_M_elems_V1", "role": "address0" }} , 
 	{ "name": "x_patch_data_M_elems_V1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_patch_data_M_elems_V1", "role": "ce0" }} , 
 	{ "name": "x_patch_data_M_elems_V1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_patch_data_M_elems_V1", "role": "q0" }} , 
 	{ "name": "x_patch_data_M_elems_V_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "x_patch_data_M_elems_V_12", "role": "address0" }} , 
 	{ "name": "x_patch_data_M_elems_V_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_patch_data_M_elems_V_12", "role": "ce0" }} , 
 	{ "name": "x_patch_data_M_elems_V_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_patch_data_M_elems_V_12", "role": "q0" }} , 
 	{ "name": "x_patch_data_M_elems_V_23_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "x_patch_data_M_elems_V_23", "role": "address0" }} , 
 	{ "name": "x_patch_data_M_elems_V_23_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_patch_data_M_elems_V_23", "role": "ce0" }} , 
 	{ "name": "x_patch_data_M_elems_V_23_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_patch_data_M_elems_V_23", "role": "q0" }} , 
 	{ "name": "x_patch_data_M_elems_V_34_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "x_patch_data_M_elems_V_34", "role": "address0" }} , 
 	{ "name": "x_patch_data_M_elems_V_34_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_patch_data_M_elems_V_34", "role": "ce0" }} , 
 	{ "name": "x_patch_data_M_elems_V_34_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_patch_data_M_elems_V_34", "role": "q0" }} , 
 	{ "name": "x_patch_data_M_elems_V_45_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "x_patch_data_M_elems_V_45", "role": "address0" }} , 
 	{ "name": "x_patch_data_M_elems_V_45_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_patch_data_M_elems_V_45", "role": "ce0" }} , 
 	{ "name": "x_patch_data_M_elems_V_45_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_patch_data_M_elems_V_45", "role": "q0" }} , 
 	{ "name": "x_patch_data_M_elems_V_56_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "x_patch_data_M_elems_V_56", "role": "address0" }} , 
 	{ "name": "x_patch_data_M_elems_V_56_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_patch_data_M_elems_V_56", "role": "ce0" }} , 
 	{ "name": "x_patch_data_M_elems_V_56_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_patch_data_M_elems_V_56", "role": "q0" }} , 
 	{ "name": "x_patch_data_M_elems_V_67_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "x_patch_data_M_elems_V_67", "role": "address0" }} , 
 	{ "name": "x_patch_data_M_elems_V_67_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_patch_data_M_elems_V_67", "role": "ce0" }} , 
 	{ "name": "x_patch_data_M_elems_V_67_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_patch_data_M_elems_V_67", "role": "q0" }} , 
 	{ "name": "x_patch_data_M_elems_V_78_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "x_patch_data_M_elems_V_78", "role": "address0" }} , 
 	{ "name": "x_patch_data_M_elems_V_78_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_patch_data_M_elems_V_78", "role": "ce0" }} , 
 	{ "name": "x_patch_data_M_elems_V_78_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_patch_data_M_elems_V_78", "role": "q0" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "weights_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "weights", "role": "address0" }} , 
 	{ "name": "weights_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "ce0" }} , 
 	{ "name": "weights_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "weights", "role": "q0" }} , 
 	{ "name": "bias_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "bias", "role": "address0" }} , 
 	{ "name": "bias_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias", "role": "ce0" }} , 
 	{ "name": "bias_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bias", "role": "q0" }} , 
 	{ "name": "norm_eps_V", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "norm_eps_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19"],
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
			{"Name" : "x_patch_data_M_elems_V1", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "x_patch_data_M_elems_V_12", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "x_patch_data_M_elems_V_23", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "x_patch_data_M_elems_V_34", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "x_patch_data_M_elems_V_45", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "x_patch_data_M_elems_V_56", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "x_patch_data_M_elems_V_67", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "x_patch_data_M_elems_V_78", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "weights", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bias", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "norm_eps_V", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "_ln106_for_block_dim", "PipelineType" : "rewind",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter64", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter64", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "has_continue" : "1"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_fixed_32_10_s_fu_456", "Parent" : "0",
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
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_54_1_1_U408", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.udiv_45s_27ns_32_49_1_U409", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_54s_54_1_1_U410", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_54s_54_1_1_U411", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_54s_54_1_1_U412", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_54s_54_1_1_U413", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_54s_54_1_1_U414", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_54s_54_1_1_U415", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_54s_54_1_1_U416", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_54s_54_1_1_U417", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_16s_43_1_1_U418", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_16s_43_1_1_U419", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_16s_43_1_1_U420", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_16s_43_1_1_U421", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_16s_43_1_1_U422", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_16s_43_1_1_U423", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_16s_43_1_1_U424", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_16s_43_1_1_U425", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "87", "Max" : "88"}
	, {"Name" : "Interval", "Min" : "24", "Max" : "24"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_inout1_AWVALID VALID 1 1 }  { m_axi_inout1_AWREADY READY 0 1 }  { m_axi_inout1_AWADDR ADDR 1 64 }  { m_axi_inout1_AWID ID 1 1 }  { m_axi_inout1_AWLEN SIZE 1 32 }  { m_axi_inout1_AWSIZE BURST 1 3 }  { m_axi_inout1_AWBURST LOCK 1 2 }  { m_axi_inout1_AWLOCK CACHE 1 2 }  { m_axi_inout1_AWCACHE PROT 1 4 }  { m_axi_inout1_AWPROT QOS 1 3 }  { m_axi_inout1_AWQOS REGION 1 4 }  { m_axi_inout1_AWREGION USER 1 4 }  { m_axi_inout1_AWUSER DATA 1 1 }  { m_axi_inout1_WVALID VALID 1 1 }  { m_axi_inout1_WREADY READY 0 1 }  { m_axi_inout1_WDATA FIFONUM 1 256 }  { m_axi_inout1_WSTRB STRB 1 32 }  { m_axi_inout1_WLAST LAST 1 1 }  { m_axi_inout1_WID ID 1 1 }  { m_axi_inout1_WUSER DATA 1 1 }  { m_axi_inout1_ARVALID VALID 1 1 }  { m_axi_inout1_ARREADY READY 0 1 }  { m_axi_inout1_ARADDR ADDR 1 64 }  { m_axi_inout1_ARID ID 1 1 }  { m_axi_inout1_ARLEN SIZE 1 32 }  { m_axi_inout1_ARSIZE BURST 1 3 }  { m_axi_inout1_ARBURST LOCK 1 2 }  { m_axi_inout1_ARLOCK CACHE 1 2 }  { m_axi_inout1_ARCACHE PROT 1 4 }  { m_axi_inout1_ARPROT QOS 1 3 }  { m_axi_inout1_ARQOS REGION 1 4 }  { m_axi_inout1_ARREGION USER 1 4 }  { m_axi_inout1_ARUSER DATA 1 1 }  { m_axi_inout1_RVALID VALID 0 1 }  { m_axi_inout1_RREADY READY 1 1 }  { m_axi_inout1_RDATA FIFONUM 0 256 }  { m_axi_inout1_RLAST LAST 0 1 }  { m_axi_inout1_RID ID 0 1 }  { m_axi_inout1_RFIFONUM LEN 0 9 }  { m_axi_inout1_RUSER DATA 0 1 }  { m_axi_inout1_RRESP RESP 0 2 }  { m_axi_inout1_BVALID VALID 0 1 }  { m_axi_inout1_BREADY READY 1 1 }  { m_axi_inout1_BRESP RESP 0 2 }  { m_axi_inout1_BID ID 0 1 }  { m_axi_inout1_BUSER DATA 0 1 } } }
	patch { ap_none {  { patch in_data 0 8 } } }
	out_r { ap_none {  { out_r in_data 0 64 } } }
	x_patch_data_M_elems_V1 { ap_memory {  { x_patch_data_M_elems_V1_address0 mem_address 1 5 }  { x_patch_data_M_elems_V1_ce0 mem_ce 1 1 }  { x_patch_data_M_elems_V1_q0 mem_dout 0 32 } } }
	x_patch_data_M_elems_V_12 { ap_memory {  { x_patch_data_M_elems_V_12_address0 mem_address 1 5 }  { x_patch_data_M_elems_V_12_ce0 mem_ce 1 1 }  { x_patch_data_M_elems_V_12_q0 mem_dout 0 32 } } }
	x_patch_data_M_elems_V_23 { ap_memory {  { x_patch_data_M_elems_V_23_address0 mem_address 1 5 }  { x_patch_data_M_elems_V_23_ce0 mem_ce 1 1 }  { x_patch_data_M_elems_V_23_q0 mem_dout 0 32 } } }
	x_patch_data_M_elems_V_34 { ap_memory {  { x_patch_data_M_elems_V_34_address0 mem_address 1 5 }  { x_patch_data_M_elems_V_34_ce0 mem_ce 1 1 }  { x_patch_data_M_elems_V_34_q0 mem_dout 0 32 } } }
	x_patch_data_M_elems_V_45 { ap_memory {  { x_patch_data_M_elems_V_45_address0 mem_address 1 5 }  { x_patch_data_M_elems_V_45_ce0 mem_ce 1 1 }  { x_patch_data_M_elems_V_45_q0 mem_dout 0 32 } } }
	x_patch_data_M_elems_V_56 { ap_memory {  { x_patch_data_M_elems_V_56_address0 mem_address 1 5 }  { x_patch_data_M_elems_V_56_ce0 mem_ce 1 1 }  { x_patch_data_M_elems_V_56_q0 mem_dout 0 32 } } }
	x_patch_data_M_elems_V_67 { ap_memory {  { x_patch_data_M_elems_V_67_address0 mem_address 1 5 }  { x_patch_data_M_elems_V_67_ce0 mem_ce 1 1 }  { x_patch_data_M_elems_V_67_q0 mem_dout 0 32 } } }
	x_patch_data_M_elems_V_78 { ap_memory {  { x_patch_data_M_elems_V_78_address0 mem_address 1 5 }  { x_patch_data_M_elems_V_78_ce0 mem_ce 1 1 }  { x_patch_data_M_elems_V_78_q0 mem_dout 0 32 } } }
	p_read { ap_none {  { p_read in_data 0 32 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 32 } } }
	weights { ap_memory {  { weights_address0 mem_address 1 5 }  { weights_ce0 mem_ce 1 1 }  { weights_q0 in_data 0 128 } } }
	bias { ap_memory {  { bias_address0 mem_address 1 5 }  { bias_ce0 mem_ce 1 1 }  { bias_q0 in_data 0 128 } } }
	norm_eps_V { ap_none {  { norm_eps_V in_data 0 3 } } }
}
