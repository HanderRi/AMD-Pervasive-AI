set moduleName entry_proc
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {entry_proc}
set C_modelType { void 0 }
set C_modelArgList {
	{ attn int 64 regular  }
	{ attn_c int 64 regular {fifo 1}  }
	{ attn_softmax_info int 64 regular  }
	{ attn_softmax_info_c int 64 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "attn", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "attn_c", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "attn_softmax_info", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "attn_softmax_info_c", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ attn sc_in sc_lv 64 signal 0 } 
	{ attn_c_din sc_out sc_lv 64 signal 1 } 
	{ attn_c_num_data_valid sc_in sc_lv 4 signal 1 } 
	{ attn_c_fifo_cap sc_in sc_lv 4 signal 1 } 
	{ attn_c_full_n sc_in sc_logic 1 signal 1 } 
	{ attn_c_write sc_out sc_logic 1 signal 1 } 
	{ attn_softmax_info sc_in sc_lv 64 signal 2 } 
	{ attn_softmax_info_c_din sc_out sc_lv 64 signal 3 } 
	{ attn_softmax_info_c_num_data_valid sc_in sc_lv 4 signal 3 } 
	{ attn_softmax_info_c_fifo_cap sc_in sc_lv 4 signal 3 } 
	{ attn_softmax_info_c_full_n sc_in sc_logic 1 signal 3 } 
	{ attn_softmax_info_c_write sc_out sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "attn", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "attn", "role": "default" }} , 
 	{ "name": "attn_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "attn_c", "role": "din" }} , 
 	{ "name": "attn_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "attn_c", "role": "num_data_valid" }} , 
 	{ "name": "attn_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "attn_c", "role": "fifo_cap" }} , 
 	{ "name": "attn_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "attn_c", "role": "full_n" }} , 
 	{ "name": "attn_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "attn_c", "role": "write" }} , 
 	{ "name": "attn_softmax_info", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "attn_softmax_info", "role": "default" }} , 
 	{ "name": "attn_softmax_info_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "attn_softmax_info_c", "role": "din" }} , 
 	{ "name": "attn_softmax_info_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "attn_softmax_info_c", "role": "num_data_valid" }} , 
 	{ "name": "attn_softmax_info_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "attn_softmax_info_c", "role": "fifo_cap" }} , 
 	{ "name": "attn_softmax_info_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "attn_softmax_info_c", "role": "full_n" }} , 
 	{ "name": "attn_softmax_info_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "attn_softmax_info_c", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
			{"Name" : "attn_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "5", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "attn_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "attn_softmax_info", "Type" : "None", "Direction" : "I"},
			{"Name" : "attn_softmax_info_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "5", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "attn_softmax_info_c_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	entry_proc {
		attn {Type I LastRead 0 FirstWrite -1}
		attn_c {Type O LastRead -1 FirstWrite 0}
		attn_softmax_info {Type I LastRead 0 FirstWrite -1}
		attn_softmax_info_c {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	attn { ap_none {  { attn in_data 0 64 } } }
	attn_c { ap_fifo {  { attn_c_din fifo_port_we 1 64 }  { attn_c_num_data_valid fifo_status_num_data_valid 0 4 }  { attn_c_fifo_cap fifo_update 0 4 }  { attn_c_full_n fifo_status 0 1 }  { attn_c_write fifo_data 1 1 } } }
	attn_softmax_info { ap_none {  { attn_softmax_info in_data 0 64 } } }
	attn_softmax_info_c { ap_fifo {  { attn_softmax_info_c_din fifo_port_we 1 64 }  { attn_softmax_info_c_num_data_valid fifo_status_num_data_valid 0 4 }  { attn_softmax_info_c_fifo_cap fifo_update 0 4 }  { attn_softmax_info_c_full_n fifo_status 0 1 }  { attn_softmax_info_c_write fifo_data 1 1 } } }
}
