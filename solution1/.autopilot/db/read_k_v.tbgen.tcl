set moduleName read_k_v
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
set C_modelName {read_k_v}
set C_modelType { void 0 }
set C_modelArgList {
	{ k_stream int 256 regular {fifo 1 volatile }  }
	{ inout3 int 256 regular {axi_master 0}  }
	{ k int 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "k_stream", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "inout3", "interface" : "axi_master", "bitwidth" : 256, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "tmp3","offset": { "type": "dynamic","port_name": "tmp3","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "k", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 59
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_inout3_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_inout3_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_inout3_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_inout3_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_inout3_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_inout3_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_inout3_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_inout3_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_inout3_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_inout3_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_inout3_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_inout3_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_inout3_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_inout3_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_inout3_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_inout3_WDATA sc_out sc_lv 256 signal 1 } 
	{ m_axi_inout3_WSTRB sc_out sc_lv 32 signal 1 } 
	{ m_axi_inout3_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_inout3_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_inout3_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_inout3_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_inout3_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_inout3_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_inout3_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_inout3_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_inout3_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_inout3_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_inout3_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_inout3_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_inout3_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_inout3_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_inout3_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_inout3_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_inout3_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_inout3_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_inout3_RDATA sc_in sc_lv 256 signal 1 } 
	{ m_axi_inout3_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_inout3_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_inout3_RFIFONUM sc_in sc_lv 9 signal 1 } 
	{ m_axi_inout3_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_inout3_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_inout3_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_inout3_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_inout3_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_inout3_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_inout3_BUSER sc_in sc_lv 1 signal 1 } 
	{ k_stream_din sc_out sc_lv 256 signal 0 } 
	{ k_stream_num_data_valid sc_in sc_lv 2 signal 0 } 
	{ k_stream_fifo_cap sc_in sc_lv 2 signal 0 } 
	{ k_stream_full_n sc_in sc_logic 1 signal 0 } 
	{ k_stream_write sc_out sc_logic 1 signal 0 } 
	{ k sc_in sc_lv 64 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
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
 	{ "name": "k_stream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "k_stream", "role": "din" }} , 
 	{ "name": "k_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "k_stream", "role": "num_data_valid" }} , 
 	{ "name": "k_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "k_stream", "role": "fifo_cap" }} , 
 	{ "name": "k_stream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k_stream", "role": "full_n" }} , 
 	{ "name": "k_stream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k_stream", "role": "write" }} , 
 	{ "name": "k", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
			{"Name" : "k_stream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	read_k_v {
		k_stream {Type O LastRead -1 FirstWrite 9}
		inout3 {Type I LastRead 8 FirstWrite -1}
		k {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "102178", "Max" : "102178"}
	, {"Name" : "Interval", "Min" : "102178", "Max" : "102178"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	k_stream { ap_fifo {  { k_stream_din fifo_port_we 1 256 }  { k_stream_num_data_valid fifo_status_num_data_valid 0 2 }  { k_stream_fifo_cap fifo_update 0 2 }  { k_stream_full_n fifo_status 0 1 }  { k_stream_write fifo_data 1 1 } } }
	 { m_axi {  { m_axi_inout3_AWVALID VALID 1 1 }  { m_axi_inout3_AWREADY READY 0 1 }  { m_axi_inout3_AWADDR ADDR 1 64 }  { m_axi_inout3_AWID ID 1 1 }  { m_axi_inout3_AWLEN SIZE 1 32 }  { m_axi_inout3_AWSIZE BURST 1 3 }  { m_axi_inout3_AWBURST LOCK 1 2 }  { m_axi_inout3_AWLOCK CACHE 1 2 }  { m_axi_inout3_AWCACHE PROT 1 4 }  { m_axi_inout3_AWPROT QOS 1 3 }  { m_axi_inout3_AWQOS REGION 1 4 }  { m_axi_inout3_AWREGION USER 1 4 }  { m_axi_inout3_AWUSER DATA 1 1 }  { m_axi_inout3_WVALID VALID 1 1 }  { m_axi_inout3_WREADY READY 0 1 }  { m_axi_inout3_WDATA FIFONUM 1 256 }  { m_axi_inout3_WSTRB STRB 1 32 }  { m_axi_inout3_WLAST LAST 1 1 }  { m_axi_inout3_WID ID 1 1 }  { m_axi_inout3_WUSER DATA 1 1 }  { m_axi_inout3_ARVALID VALID 1 1 }  { m_axi_inout3_ARREADY READY 0 1 }  { m_axi_inout3_ARADDR ADDR 1 64 }  { m_axi_inout3_ARID ID 1 1 }  { m_axi_inout3_ARLEN SIZE 1 32 }  { m_axi_inout3_ARSIZE BURST 1 3 }  { m_axi_inout3_ARBURST LOCK 1 2 }  { m_axi_inout3_ARLOCK CACHE 1 2 }  { m_axi_inout3_ARCACHE PROT 1 4 }  { m_axi_inout3_ARPROT QOS 1 3 }  { m_axi_inout3_ARQOS REGION 1 4 }  { m_axi_inout3_ARREGION USER 1 4 }  { m_axi_inout3_ARUSER DATA 1 1 }  { m_axi_inout3_RVALID VALID 0 1 }  { m_axi_inout3_RREADY READY 1 1 }  { m_axi_inout3_RDATA FIFONUM 0 256 }  { m_axi_inout3_RLAST LAST 0 1 }  { m_axi_inout3_RID ID 0 1 }  { m_axi_inout3_RFIFONUM LEN 0 9 }  { m_axi_inout3_RUSER DATA 0 1 }  { m_axi_inout3_RRESP RESP 0 2 }  { m_axi_inout3_BVALID VALID 0 1 }  { m_axi_inout3_BREADY READY 1 1 }  { m_axi_inout3_BRESP RESP 0 2 }  { m_axi_inout3_BID ID 0 1 }  { m_axi_inout3_BUSER DATA 0 1 } } }
	k { ap_none {  { k in_data 0 64 } } }
}
