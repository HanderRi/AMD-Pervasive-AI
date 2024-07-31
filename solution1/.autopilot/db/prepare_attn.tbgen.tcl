set moduleName prepare_attn
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
set C_modelName {prepare_attn}
set C_modelType { void 0 }
set C_modelArgList {
	{ attn_stream int 128 regular {fifo 0 volatile }  }
	{ qxk_out_stream int 512 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "attn_stream", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "qxk_out_stream", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ attn_stream_dout sc_in sc_lv 128 signal 0 } 
	{ attn_stream_num_data_valid sc_in sc_lv 2 signal 0 } 
	{ attn_stream_fifo_cap sc_in sc_lv 2 signal 0 } 
	{ attn_stream_empty_n sc_in sc_logic 1 signal 0 } 
	{ attn_stream_read sc_out sc_logic 1 signal 0 } 
	{ qxk_out_stream_din sc_out sc_lv 512 signal 1 } 
	{ qxk_out_stream_num_data_valid sc_in sc_lv 2 signal 1 } 
	{ qxk_out_stream_fifo_cap sc_in sc_lv 2 signal 1 } 
	{ qxk_out_stream_full_n sc_in sc_logic 1 signal 1 } 
	{ qxk_out_stream_write sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "attn_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "attn_stream", "role": "dout" }} , 
 	{ "name": "attn_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "attn_stream", "role": "num_data_valid" }} , 
 	{ "name": "attn_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "attn_stream", "role": "fifo_cap" }} , 
 	{ "name": "attn_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "attn_stream", "role": "empty_n" }} , 
 	{ "name": "attn_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "attn_stream", "role": "read" }} , 
 	{ "name": "qxk_out_stream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "qxk_out_stream", "role": "din" }} , 
 	{ "name": "qxk_out_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "qxk_out_stream", "role": "num_data_valid" }} , 
 	{ "name": "qxk_out_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "qxk_out_stream", "role": "fifo_cap" }} , 
 	{ "name": "qxk_out_stream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "qxk_out_stream", "role": "full_n" }} , 
 	{ "name": "qxk_out_stream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "qxk_out_stream", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
		"Port" : [
			{"Name" : "attn_stream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "attn_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "qxk_out_stream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "qxk_out_stream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "_ln354_for_block_q_patch__ln356_for_each_k_patch__ln358_for_offset_q_patch", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	prepare_attn {
		attn_stream {Type I LastRead 1 FirstWrite -1}
		qxk_out_stream {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "17030", "Max" : "17030"}
	, {"Name" : "Interval", "Min" : "17030", "Max" : "17030"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	attn_stream { ap_fifo {  { attn_stream_dout fifo_port_we 0 128 }  { attn_stream_num_data_valid fifo_status_num_data_valid 0 2 }  { attn_stream_fifo_cap fifo_update 0 2 }  { attn_stream_empty_n fifo_status 0 1 }  { attn_stream_read fifo_data 1 1 } } }
	qxk_out_stream { ap_fifo {  { qxk_out_stream_din fifo_port_we 1 512 }  { qxk_out_stream_num_data_valid fifo_status_num_data_valid 0 2 }  { qxk_out_stream_fifo_cap fifo_update 0 2 }  { qxk_out_stream_full_n fifo_status 0 1 }  { qxk_out_stream_write fifo_data 1 1 } } }
}
