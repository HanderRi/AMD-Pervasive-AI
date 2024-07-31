set moduleName layernorm_accumulate
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
set C_modelName {layernorm_accumulate}
set C_modelType { int 64 }
set C_modelArgList {
	{ inout2 int 256 regular {axi_master 0}  }
	{ patch int 8 regular  }
	{ x int 64 regular  }
	{ x_patch_data_M_elems_V1 int 32 regular {array 24 { 0 3 } 0 1 }  }
	{ x_patch_data_M_elems_V_12 int 32 regular {array 24 { 0 3 } 0 1 }  }
	{ x_patch_data_M_elems_V_23 int 32 regular {array 24 { 0 3 } 0 1 }  }
	{ x_patch_data_M_elems_V_34 int 32 regular {array 24 { 0 3 } 0 1 }  }
	{ x_patch_data_M_elems_V_45 int 32 regular {array 24 { 0 3 } 0 1 }  }
	{ x_patch_data_M_elems_V_56 int 32 regular {array 24 { 0 3 } 0 1 }  }
	{ x_patch_data_M_elems_V_67 int 32 regular {array 24 { 0 3 } 0 1 }  }
	{ x_patch_data_M_elems_V_78 int 32 regular {array 24 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "inout2", "interface" : "axi_master", "bitwidth" : 256, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "x","offset": { "type": "dynamic","port_name": "x","bundle": "control"},"direction": "READWRITE"},{"cName": "tmp2","offset": { "type": "dynamic","port_name": "tmp2","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "patch", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "x", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "x_patch_data_M_elems_V1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_patch_data_M_elems_V_12", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_patch_data_M_elems_V_23", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_patch_data_M_elems_V_34", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_patch_data_M_elems_V_45", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_patch_data_M_elems_V_56", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_patch_data_M_elems_V_67", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_patch_data_M_elems_V_78", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 64} ]}
# RTL Port declarations: 
set portNum 89
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
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
	{ patch sc_in sc_lv 8 signal 1 } 
	{ x sc_in sc_lv 64 signal 2 } 
	{ x_patch_data_M_elems_V1_address0 sc_out sc_lv 5 signal 3 } 
	{ x_patch_data_M_elems_V1_ce0 sc_out sc_logic 1 signal 3 } 
	{ x_patch_data_M_elems_V1_we0 sc_out sc_logic 1 signal 3 } 
	{ x_patch_data_M_elems_V1_d0 sc_out sc_lv 32 signal 3 } 
	{ x_patch_data_M_elems_V_12_address0 sc_out sc_lv 5 signal 4 } 
	{ x_patch_data_M_elems_V_12_ce0 sc_out sc_logic 1 signal 4 } 
	{ x_patch_data_M_elems_V_12_we0 sc_out sc_logic 1 signal 4 } 
	{ x_patch_data_M_elems_V_12_d0 sc_out sc_lv 32 signal 4 } 
	{ x_patch_data_M_elems_V_23_address0 sc_out sc_lv 5 signal 5 } 
	{ x_patch_data_M_elems_V_23_ce0 sc_out sc_logic 1 signal 5 } 
	{ x_patch_data_M_elems_V_23_we0 sc_out sc_logic 1 signal 5 } 
	{ x_patch_data_M_elems_V_23_d0 sc_out sc_lv 32 signal 5 } 
	{ x_patch_data_M_elems_V_34_address0 sc_out sc_lv 5 signal 6 } 
	{ x_patch_data_M_elems_V_34_ce0 sc_out sc_logic 1 signal 6 } 
	{ x_patch_data_M_elems_V_34_we0 sc_out sc_logic 1 signal 6 } 
	{ x_patch_data_M_elems_V_34_d0 sc_out sc_lv 32 signal 6 } 
	{ x_patch_data_M_elems_V_45_address0 sc_out sc_lv 5 signal 7 } 
	{ x_patch_data_M_elems_V_45_ce0 sc_out sc_logic 1 signal 7 } 
	{ x_patch_data_M_elems_V_45_we0 sc_out sc_logic 1 signal 7 } 
	{ x_patch_data_M_elems_V_45_d0 sc_out sc_lv 32 signal 7 } 
	{ x_patch_data_M_elems_V_56_address0 sc_out sc_lv 5 signal 8 } 
	{ x_patch_data_M_elems_V_56_ce0 sc_out sc_logic 1 signal 8 } 
	{ x_patch_data_M_elems_V_56_we0 sc_out sc_logic 1 signal 8 } 
	{ x_patch_data_M_elems_V_56_d0 sc_out sc_lv 32 signal 8 } 
	{ x_patch_data_M_elems_V_67_address0 sc_out sc_lv 5 signal 9 } 
	{ x_patch_data_M_elems_V_67_ce0 sc_out sc_logic 1 signal 9 } 
	{ x_patch_data_M_elems_V_67_we0 sc_out sc_logic 1 signal 9 } 
	{ x_patch_data_M_elems_V_67_d0 sc_out sc_lv 32 signal 9 } 
	{ x_patch_data_M_elems_V_78_address0 sc_out sc_lv 5 signal 10 } 
	{ x_patch_data_M_elems_V_78_ce0 sc_out sc_logic 1 signal 10 } 
	{ x_patch_data_M_elems_V_78_we0 sc_out sc_logic 1 signal 10 } 
	{ x_patch_data_M_elems_V_78_d0 sc_out sc_lv 32 signal 10 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
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
 	{ "name": "patch", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "patch", "role": "default" }} , 
 	{ "name": "x", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x", "role": "default" }} , 
 	{ "name": "x_patch_data_M_elems_V1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "x_patch_data_M_elems_V1", "role": "address0" }} , 
 	{ "name": "x_patch_data_M_elems_V1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_patch_data_M_elems_V1", "role": "ce0" }} , 
 	{ "name": "x_patch_data_M_elems_V1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_patch_data_M_elems_V1", "role": "we0" }} , 
 	{ "name": "x_patch_data_M_elems_V1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_patch_data_M_elems_V1", "role": "d0" }} , 
 	{ "name": "x_patch_data_M_elems_V_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "x_patch_data_M_elems_V_12", "role": "address0" }} , 
 	{ "name": "x_patch_data_M_elems_V_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_patch_data_M_elems_V_12", "role": "ce0" }} , 
 	{ "name": "x_patch_data_M_elems_V_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_patch_data_M_elems_V_12", "role": "we0" }} , 
 	{ "name": "x_patch_data_M_elems_V_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_patch_data_M_elems_V_12", "role": "d0" }} , 
 	{ "name": "x_patch_data_M_elems_V_23_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "x_patch_data_M_elems_V_23", "role": "address0" }} , 
 	{ "name": "x_patch_data_M_elems_V_23_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_patch_data_M_elems_V_23", "role": "ce0" }} , 
 	{ "name": "x_patch_data_M_elems_V_23_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_patch_data_M_elems_V_23", "role": "we0" }} , 
 	{ "name": "x_patch_data_M_elems_V_23_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_patch_data_M_elems_V_23", "role": "d0" }} , 
 	{ "name": "x_patch_data_M_elems_V_34_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "x_patch_data_M_elems_V_34", "role": "address0" }} , 
 	{ "name": "x_patch_data_M_elems_V_34_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_patch_data_M_elems_V_34", "role": "ce0" }} , 
 	{ "name": "x_patch_data_M_elems_V_34_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_patch_data_M_elems_V_34", "role": "we0" }} , 
 	{ "name": "x_patch_data_M_elems_V_34_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_patch_data_M_elems_V_34", "role": "d0" }} , 
 	{ "name": "x_patch_data_M_elems_V_45_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "x_patch_data_M_elems_V_45", "role": "address0" }} , 
 	{ "name": "x_patch_data_M_elems_V_45_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_patch_data_M_elems_V_45", "role": "ce0" }} , 
 	{ "name": "x_patch_data_M_elems_V_45_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_patch_data_M_elems_V_45", "role": "we0" }} , 
 	{ "name": "x_patch_data_M_elems_V_45_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_patch_data_M_elems_V_45", "role": "d0" }} , 
 	{ "name": "x_patch_data_M_elems_V_56_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "x_patch_data_M_elems_V_56", "role": "address0" }} , 
 	{ "name": "x_patch_data_M_elems_V_56_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_patch_data_M_elems_V_56", "role": "ce0" }} , 
 	{ "name": "x_patch_data_M_elems_V_56_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_patch_data_M_elems_V_56", "role": "we0" }} , 
 	{ "name": "x_patch_data_M_elems_V_56_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_patch_data_M_elems_V_56", "role": "d0" }} , 
 	{ "name": "x_patch_data_M_elems_V_67_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "x_patch_data_M_elems_V_67", "role": "address0" }} , 
 	{ "name": "x_patch_data_M_elems_V_67_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_patch_data_M_elems_V_67", "role": "ce0" }} , 
 	{ "name": "x_patch_data_M_elems_V_67_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_patch_data_M_elems_V_67", "role": "we0" }} , 
 	{ "name": "x_patch_data_M_elems_V_67_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_patch_data_M_elems_V_67", "role": "d0" }} , 
 	{ "name": "x_patch_data_M_elems_V_78_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "x_patch_data_M_elems_V_78", "role": "address0" }} , 
 	{ "name": "x_patch_data_M_elems_V_78_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_patch_data_M_elems_V_78", "role": "ce0" }} , 
 	{ "name": "x_patch_data_M_elems_V_78_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_patch_data_M_elems_V_78", "role": "we0" }} , 
 	{ "name": "x_patch_data_M_elems_V_78_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_patch_data_M_elems_V_78", "role": "d0" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16"],
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
			{"Name" : "x_patch_data_M_elems_V1", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "x_patch_data_M_elems_V_12", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "x_patch_data_M_elems_V_23", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "x_patch_data_M_elems_V_34", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "x_patch_data_M_elems_V_45", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "x_patch_data_M_elems_V_56", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "x_patch_data_M_elems_V_67", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "x_patch_data_M_elems_V_78", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0"}],
		"Loop" : [
			{"Name" : "_ln70_for_block_dim", "PipelineType" : "rewind",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter11", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter11", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "has_continue" : "1"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_16ns_48_1_1_U378", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_26s_54_1_1_U379", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_16ns_48_1_1_U380", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_26s_54_1_1_U381", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_16ns_48_1_1_U382", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_26s_54_1_1_U383", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_16ns_48_1_1_U384", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_16ns_48_1_1_U385", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_16ns_48_1_1_U386", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_26s_54_1_1_U387", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_26s_54_1_1_U388", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_26s_54_1_1_U389", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_16ns_48_1_1_U390", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_16ns_48_1_1_U391", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_26s_54_1_1_U392", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_26s_54_1_1_U393", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		x_patch_data_M_elems_V_78 {Type O LastRead -1 FirstWrite 12}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "34", "Max" : "35"}
	, {"Name" : "Interval", "Min" : "24", "Max" : "24"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_inout2_AWVALID VALID 1 1 }  { m_axi_inout2_AWREADY READY 0 1 }  { m_axi_inout2_AWADDR ADDR 1 64 }  { m_axi_inout2_AWID ID 1 1 }  { m_axi_inout2_AWLEN SIZE 1 32 }  { m_axi_inout2_AWSIZE BURST 1 3 }  { m_axi_inout2_AWBURST LOCK 1 2 }  { m_axi_inout2_AWLOCK CACHE 1 2 }  { m_axi_inout2_AWCACHE PROT 1 4 }  { m_axi_inout2_AWPROT QOS 1 3 }  { m_axi_inout2_AWQOS REGION 1 4 }  { m_axi_inout2_AWREGION USER 1 4 }  { m_axi_inout2_AWUSER DATA 1 1 }  { m_axi_inout2_WVALID VALID 1 1 }  { m_axi_inout2_WREADY READY 0 1 }  { m_axi_inout2_WDATA FIFONUM 1 256 }  { m_axi_inout2_WSTRB STRB 1 32 }  { m_axi_inout2_WLAST LAST 1 1 }  { m_axi_inout2_WID ID 1 1 }  { m_axi_inout2_WUSER DATA 1 1 }  { m_axi_inout2_ARVALID VALID 1 1 }  { m_axi_inout2_ARREADY READY 0 1 }  { m_axi_inout2_ARADDR ADDR 1 64 }  { m_axi_inout2_ARID ID 1 1 }  { m_axi_inout2_ARLEN SIZE 1 32 }  { m_axi_inout2_ARSIZE BURST 1 3 }  { m_axi_inout2_ARBURST LOCK 1 2 }  { m_axi_inout2_ARLOCK CACHE 1 2 }  { m_axi_inout2_ARCACHE PROT 1 4 }  { m_axi_inout2_ARPROT QOS 1 3 }  { m_axi_inout2_ARQOS REGION 1 4 }  { m_axi_inout2_ARREGION USER 1 4 }  { m_axi_inout2_ARUSER DATA 1 1 }  { m_axi_inout2_RVALID VALID 0 1 }  { m_axi_inout2_RREADY READY 1 1 }  { m_axi_inout2_RDATA FIFONUM 0 256 }  { m_axi_inout2_RLAST LAST 0 1 }  { m_axi_inout2_RID ID 0 1 }  { m_axi_inout2_RFIFONUM LEN 0 9 }  { m_axi_inout2_RUSER DATA 0 1 }  { m_axi_inout2_RRESP RESP 0 2 }  { m_axi_inout2_BVALID VALID 0 1 }  { m_axi_inout2_BREADY READY 1 1 }  { m_axi_inout2_BRESP RESP 0 2 }  { m_axi_inout2_BID ID 0 1 }  { m_axi_inout2_BUSER DATA 0 1 } } }
	patch { ap_none {  { patch in_data 0 8 } } }
	x { ap_none {  { x in_data 0 64 } } }
	x_patch_data_M_elems_V1 { ap_memory {  { x_patch_data_M_elems_V1_address0 mem_address 1 5 }  { x_patch_data_M_elems_V1_ce0 mem_ce 1 1 }  { x_patch_data_M_elems_V1_we0 mem_we 1 1 }  { x_patch_data_M_elems_V1_d0 mem_din 1 32 } } }
	x_patch_data_M_elems_V_12 { ap_memory {  { x_patch_data_M_elems_V_12_address0 mem_address 1 5 }  { x_patch_data_M_elems_V_12_ce0 mem_ce 1 1 }  { x_patch_data_M_elems_V_12_we0 mem_we 1 1 }  { x_patch_data_M_elems_V_12_d0 mem_din 1 32 } } }
	x_patch_data_M_elems_V_23 { ap_memory {  { x_patch_data_M_elems_V_23_address0 mem_address 1 5 }  { x_patch_data_M_elems_V_23_ce0 mem_ce 1 1 }  { x_patch_data_M_elems_V_23_we0 mem_we 1 1 }  { x_patch_data_M_elems_V_23_d0 mem_din 1 32 } } }
	x_patch_data_M_elems_V_34 { ap_memory {  { x_patch_data_M_elems_V_34_address0 mem_address 1 5 }  { x_patch_data_M_elems_V_34_ce0 mem_ce 1 1 }  { x_patch_data_M_elems_V_34_we0 mem_we 1 1 }  { x_patch_data_M_elems_V_34_d0 mem_din 1 32 } } }
	x_patch_data_M_elems_V_45 { ap_memory {  { x_patch_data_M_elems_V_45_address0 mem_address 1 5 }  { x_patch_data_M_elems_V_45_ce0 mem_ce 1 1 }  { x_patch_data_M_elems_V_45_we0 mem_we 1 1 }  { x_patch_data_M_elems_V_45_d0 mem_din 1 32 } } }
	x_patch_data_M_elems_V_56 { ap_memory {  { x_patch_data_M_elems_V_56_address0 mem_address 1 5 }  { x_patch_data_M_elems_V_56_ce0 mem_ce 1 1 }  { x_patch_data_M_elems_V_56_we0 mem_we 1 1 }  { x_patch_data_M_elems_V_56_d0 mem_din 1 32 } } }
	x_patch_data_M_elems_V_67 { ap_memory {  { x_patch_data_M_elems_V_67_address0 mem_address 1 5 }  { x_patch_data_M_elems_V_67_ce0 mem_ce 1 1 }  { x_patch_data_M_elems_V_67_we0 mem_we 1 1 }  { x_patch_data_M_elems_V_67_d0 mem_din 1 32 } } }
	x_patch_data_M_elems_V_78 { ap_memory {  { x_patch_data_M_elems_V_78_address0 mem_address 1 5 }  { x_patch_data_M_elems_V_78_ce0 mem_ce 1 1 }  { x_patch_data_M_elems_V_78_we0 mem_we 1 1 }  { x_patch_data_M_elems_V_78_d0 mem_din 1 32 } } }
}
