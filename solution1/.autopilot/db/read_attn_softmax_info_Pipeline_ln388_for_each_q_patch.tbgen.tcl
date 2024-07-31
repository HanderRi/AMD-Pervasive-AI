set moduleName read_attn_softmax_info_Pipeline_ln388_for_each_q_patch
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
set C_modelName {read_attn_softmax_info_Pipeline__ln388_for_each_q_patch}
set C_modelType { void 0 }
set C_modelArgList {
	{ inout4 int 256 regular {axi_master 0}  }
	{ sext_ln388 int 59 regular  }
	{ attn_softmax_info_stream int 256 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "inout4", "interface" : "axi_master", "bitwidth" : 256, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "tmp_hidden","offset": { "type": "dynamic","port_name": "tmp_hidden","bundle": "control"},"direction": "READWRITE"},{"cName": "attn_softmax_info","offset": { "type": "dynamic","port_name": "attn_softmax_info","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "sext_ln388", "interface" : "wire", "bitwidth" : 59, "direction" : "READONLY"} , 
 	{ "Name" : "attn_softmax_info_stream", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 58
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_inout4_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_inout4_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_inout4_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_inout4_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_inout4_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_inout4_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_inout4_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_inout4_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_inout4_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_inout4_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_inout4_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_inout4_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_inout4_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_inout4_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_inout4_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_inout4_WDATA sc_out sc_lv 256 signal 0 } 
	{ m_axi_inout4_WSTRB sc_out sc_lv 32 signal 0 } 
	{ m_axi_inout4_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_inout4_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_inout4_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_inout4_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_inout4_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_inout4_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_inout4_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_inout4_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_inout4_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_inout4_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_inout4_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_inout4_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_inout4_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_inout4_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_inout4_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_inout4_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_inout4_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_inout4_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_inout4_RDATA sc_in sc_lv 256 signal 0 } 
	{ m_axi_inout4_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_inout4_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_inout4_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_inout4_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_inout4_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_inout4_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_inout4_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_inout4_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_inout4_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_inout4_BUSER sc_in sc_lv 1 signal 0 } 
	{ attn_softmax_info_stream_din sc_out sc_lv 256 signal 2 } 
	{ attn_softmax_info_stream_num_data_valid sc_in sc_lv 2 signal 2 } 
	{ attn_softmax_info_stream_fifo_cap sc_in sc_lv 2 signal 2 } 
	{ attn_softmax_info_stream_full_n sc_in sc_logic 1 signal 2 } 
	{ attn_softmax_info_stream_write sc_out sc_logic 1 signal 2 } 
	{ sext_ln388 sc_in sc_lv 59 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
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
 	{ "name": "attn_softmax_info_stream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "attn_softmax_info_stream", "role": "din" }} , 
 	{ "name": "attn_softmax_info_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "attn_softmax_info_stream", "role": "num_data_valid" }} , 
 	{ "name": "attn_softmax_info_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "attn_softmax_info_stream", "role": "fifo_cap" }} , 
 	{ "name": "attn_softmax_info_stream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "attn_softmax_info_stream", "role": "full_n" }} , 
 	{ "name": "attn_softmax_info_stream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "attn_softmax_info_stream", "role": "write" }} , 
 	{ "name": "sext_ln388", "direction": "in", "datatype": "sc_lv", "bitwidth":59, "type": "signal", "bundle":{"name": "sext_ln388", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	read_attn_softmax_info_Pipeline_ln388_for_each_q_patch {
		inout4 {Type I LastRead 1 FirstWrite -1}
		sext_ln388 {Type I LastRead 0 FirstWrite -1}
		attn_softmax_info_stream {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "132", "Max" : "132"}
	, {"Name" : "Interval", "Min" : "132", "Max" : "132"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_inout4_AWVALID VALID 1 1 }  { m_axi_inout4_AWREADY READY 0 1 }  { m_axi_inout4_AWADDR ADDR 1 64 }  { m_axi_inout4_AWID ID 1 1 }  { m_axi_inout4_AWLEN SIZE 1 32 }  { m_axi_inout4_AWSIZE BURST 1 3 }  { m_axi_inout4_AWBURST LOCK 1 2 }  { m_axi_inout4_AWLOCK CACHE 1 2 }  { m_axi_inout4_AWCACHE PROT 1 4 }  { m_axi_inout4_AWPROT QOS 1 3 }  { m_axi_inout4_AWQOS REGION 1 4 }  { m_axi_inout4_AWREGION USER 1 4 }  { m_axi_inout4_AWUSER DATA 1 1 }  { m_axi_inout4_WVALID VALID 1 1 }  { m_axi_inout4_WREADY READY 0 1 }  { m_axi_inout4_WDATA FIFONUM 1 256 }  { m_axi_inout4_WSTRB STRB 1 32 }  { m_axi_inout4_WLAST LAST 1 1 }  { m_axi_inout4_WID ID 1 1 }  { m_axi_inout4_WUSER DATA 1 1 }  { m_axi_inout4_ARVALID VALID 1 1 }  { m_axi_inout4_ARREADY READY 0 1 }  { m_axi_inout4_ARADDR ADDR 1 64 }  { m_axi_inout4_ARID ID 1 1 }  { m_axi_inout4_ARLEN SIZE 1 32 }  { m_axi_inout4_ARSIZE BURST 1 3 }  { m_axi_inout4_ARBURST LOCK 1 2 }  { m_axi_inout4_ARLOCK CACHE 1 2 }  { m_axi_inout4_ARCACHE PROT 1 4 }  { m_axi_inout4_ARPROT QOS 1 3 }  { m_axi_inout4_ARQOS REGION 1 4 }  { m_axi_inout4_ARREGION USER 1 4 }  { m_axi_inout4_ARUSER DATA 1 1 }  { m_axi_inout4_RVALID VALID 0 1 }  { m_axi_inout4_RREADY READY 1 1 }  { m_axi_inout4_RDATA FIFONUM 0 256 }  { m_axi_inout4_RLAST LAST 0 1 }  { m_axi_inout4_RID ID 0 1 }  { m_axi_inout4_RFIFONUM LEN 0 9 }  { m_axi_inout4_RUSER DATA 0 1 }  { m_axi_inout4_RRESP RESP 0 2 }  { m_axi_inout4_BVALID VALID 0 1 }  { m_axi_inout4_BREADY READY 1 1 }  { m_axi_inout4_BRESP RESP 0 2 }  { m_axi_inout4_BID ID 0 1 }  { m_axi_inout4_BUSER DATA 0 1 } } }
	sext_ln388 { ap_none {  { sext_ln388 in_data 0 59 } } }
	attn_softmax_info_stream { ap_fifo {  { attn_softmax_info_stream_din fifo_port_we 1 256 }  { attn_softmax_info_stream_num_data_valid fifo_status_num_data_valid 0 2 }  { attn_softmax_info_stream_fifo_cap fifo_update 0 2 }  { attn_softmax_info_stream_full_n fifo_status 0 1 }  { attn_softmax_info_stream_write fifo_data 1 1 } } }
}
