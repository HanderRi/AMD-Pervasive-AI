set moduleName finalize_attn
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
set C_modelName {finalize_attn}
set C_modelType { void 0 }
set C_modelArgList {
	{ qxk_stream int 512 regular {fifo 0 volatile }  }
	{ attn_stream int 128 regular {fifo 1 volatile }  }
	{ attn_softmax_info_stream int 256 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "qxk_stream", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "attn_stream", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "attn_softmax_info_stream", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ qxk_stream_dout sc_in sc_lv 512 signal 0 } 
	{ qxk_stream_num_data_valid sc_in sc_lv 2 signal 0 } 
	{ qxk_stream_fifo_cap sc_in sc_lv 2 signal 0 } 
	{ qxk_stream_empty_n sc_in sc_logic 1 signal 0 } 
	{ qxk_stream_read sc_out sc_logic 1 signal 0 } 
	{ attn_stream_din sc_out sc_lv 128 signal 1 } 
	{ attn_stream_num_data_valid sc_in sc_lv 2 signal 1 } 
	{ attn_stream_fifo_cap sc_in sc_lv 2 signal 1 } 
	{ attn_stream_full_n sc_in sc_logic 1 signal 1 } 
	{ attn_stream_write sc_out sc_logic 1 signal 1 } 
	{ attn_softmax_info_stream_din sc_out sc_lv 256 signal 2 } 
	{ attn_softmax_info_stream_num_data_valid sc_in sc_lv 2 signal 2 } 
	{ attn_softmax_info_stream_fifo_cap sc_in sc_lv 2 signal 2 } 
	{ attn_softmax_info_stream_full_n sc_in sc_logic 1 signal 2 } 
	{ attn_softmax_info_stream_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "qxk_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "qxk_stream", "role": "dout" }} , 
 	{ "name": "qxk_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "qxk_stream", "role": "num_data_valid" }} , 
 	{ "name": "qxk_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "qxk_stream", "role": "fifo_cap" }} , 
 	{ "name": "qxk_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "qxk_stream", "role": "empty_n" }} , 
 	{ "name": "qxk_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "qxk_stream", "role": "read" }} , 
 	{ "name": "attn_stream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "attn_stream", "role": "din" }} , 
 	{ "name": "attn_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "attn_stream", "role": "num_data_valid" }} , 
 	{ "name": "attn_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "attn_stream", "role": "fifo_cap" }} , 
 	{ "name": "attn_stream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "attn_stream", "role": "full_n" }} , 
 	{ "name": "attn_stream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "attn_stream", "role": "write" }} , 
 	{ "name": "attn_softmax_info_stream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "attn_softmax_info_stream", "role": "din" }} , 
 	{ "name": "attn_softmax_info_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "attn_softmax_info_stream", "role": "num_data_valid" }} , 
 	{ "name": "attn_softmax_info_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "attn_softmax_info_stream", "role": "fifo_cap" }} , 
 	{ "name": "attn_softmax_info_stream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "attn_softmax_info_stream", "role": "full_n" }} , 
 	{ "name": "attn_softmax_info_stream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "attn_softmax_info_stream", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "12", "23", "34", "36", "38", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53"],
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
		"Port" : [
			{"Name" : "qxk_stream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "qxk_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "attn_stream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "attn_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "attn_softmax_info_stream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "attn_softmax_info_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "f_x_msb_4_h_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_exp_32_10_s_fu_320", "Port" : "f_x_msb_4_h_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "23", "SubInstance" : "grp_exp_32_10_s_fu_354", "Port" : "f_x_msb_4_h_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "12", "SubInstance" : "grp_exp_32_10_s_fu_337", "Port" : "f_x_msb_4_h_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"}]},
			{"Name" : "f_x_msb_4_l_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_exp_32_10_s_fu_320", "Port" : "f_x_msb_4_l_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "23", "SubInstance" : "grp_exp_32_10_s_fu_354", "Port" : "f_x_msb_4_l_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "12", "SubInstance" : "grp_exp_32_10_s_fu_337", "Port" : "f_x_msb_4_l_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"}]},
			{"Name" : "f_x_lsb_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_exp_32_10_s_fu_320", "Port" : "f_x_lsb_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "23", "SubInstance" : "grp_exp_32_10_s_fu_354", "Port" : "f_x_lsb_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "12", "SubInstance" : "grp_exp_32_10_s_fu_337", "Port" : "f_x_lsb_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"}]},
			{"Name" : "f_x_msb_3_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_exp_32_10_s_fu_320", "Port" : "f_x_msb_3_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "23", "SubInstance" : "grp_exp_32_10_s_fu_354", "Port" : "f_x_msb_3_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "12", "SubInstance" : "grp_exp_32_10_s_fu_337", "Port" : "f_x_msb_3_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"}]},
			{"Name" : "f_x_msb_2_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_exp_32_10_s_fu_320", "Port" : "f_x_msb_2_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "23", "SubInstance" : "grp_exp_32_10_s_fu_354", "Port" : "f_x_msb_2_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "12", "SubInstance" : "grp_exp_32_10_s_fu_337", "Port" : "f_x_msb_2_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"}]},
			{"Name" : "exp_x_msb_1_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_exp_32_10_s_fu_320", "Port" : "exp_x_msb_1_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "23", "SubInstance" : "grp_exp_32_10_s_fu_354", "Port" : "exp_x_msb_1_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "12", "SubInstance" : "grp_exp_32_10_s_fu_337", "Port" : "exp_x_msb_1_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"}]}],
		"Loop" : [
			{"Name" : "_ln163_for_block_q_patch_unadjusted__ln165_for_each_k_patch__ln167_for_offset_q_patch_unadjusted", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter58", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter58", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_320", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_320.f_x_msb_4_h_table_V_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_320.f_x_msb_4_l_table_V_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_320.f_x_lsb_table_V_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_320.f_x_msb_3_table_V_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_320.f_x_msb_2_table_V_U", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_320.exp_x_msb_1_table_V_U", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_320.mul_44ns_42ns_86_1_1_U897", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_320.mul_50ns_48ns_98_1_1_U898", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_320.mul_50ns_50ns_100_1_1_U899", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_320.mac_muladd_3ns_4ns_9ns_10_4_1_U900", "Parent" : "1"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_337", "Parent" : "0", "Child" : ["13", "14", "15", "16", "17", "18", "19", "20", "21", "22"],
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
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_337.f_x_msb_4_h_table_V_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_337.f_x_msb_4_l_table_V_U", "Parent" : "12"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_337.f_x_lsb_table_V_U", "Parent" : "12"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_337.f_x_msb_3_table_V_U", "Parent" : "12"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_337.f_x_msb_2_table_V_U", "Parent" : "12"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_337.exp_x_msb_1_table_V_U", "Parent" : "12"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_337.mul_44ns_42ns_86_1_1_U897", "Parent" : "12"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_337.mul_50ns_48ns_98_1_1_U898", "Parent" : "12"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_337.mul_50ns_50ns_100_1_1_U899", "Parent" : "12"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_337.mac_muladd_3ns_4ns_9ns_10_4_1_U900", "Parent" : "12"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_354", "Parent" : "0", "Child" : ["24", "25", "26", "27", "28", "29", "30", "31", "32", "33"],
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
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_354.f_x_msb_4_h_table_V_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_354.f_x_msb_4_l_table_V_U", "Parent" : "23"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_354.f_x_lsb_table_V_U", "Parent" : "23"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_354.f_x_msb_3_table_V_U", "Parent" : "23"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_354.f_x_msb_2_table_V_U", "Parent" : "23"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_354.exp_x_msb_1_table_V_U", "Parent" : "23"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_354.mul_44ns_42ns_86_1_1_U897", "Parent" : "23"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_354.mul_50ns_48ns_98_1_1_U898", "Parent" : "23"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_354.mul_50ns_50ns_100_1_1_U899", "Parent" : "23"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_354.mac_muladd_3ns_4ns_9ns_10_4_1_U900", "Parent" : "23"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_recip_fixed_32_10_s_fu_371", "Parent" : "0", "Child" : ["35"],
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
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_recip_fixed_32_10_s_fu_371.sdiv_46ns_32s_32_50_0_U912", "Parent" : "34"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_recip_fixed_32_10_s_fu_376", "Parent" : "0", "Child" : ["37"],
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
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_recip_fixed_32_10_s_fu_376.sdiv_46ns_32s_32_50_0_U912", "Parent" : "36"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_recip_fixed_32_10_s_fu_381", "Parent" : "0", "Child" : ["39"],
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
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_recip_fixed_32_10_s_fu_381.sdiv_46ns_32s_32_50_0_U912", "Parent" : "38"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U915", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U916", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U917", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U918", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U919", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U920", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U921", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U922", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U923", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U924", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31ns_32s_54_1_1_U925", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31ns_32s_54_1_1_U926", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31ns_32s_54_1_1_U927", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		x {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "17087", "Max" : "17087"}
	, {"Name" : "Interval", "Min" : "17087", "Max" : "17087"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	qxk_stream { ap_fifo {  { qxk_stream_dout fifo_port_we 0 512 }  { qxk_stream_num_data_valid fifo_status_num_data_valid 0 2 }  { qxk_stream_fifo_cap fifo_update 0 2 }  { qxk_stream_empty_n fifo_status 0 1 }  { qxk_stream_read fifo_data 1 1 } } }
	attn_stream { ap_fifo {  { attn_stream_din fifo_port_we 1 128 }  { attn_stream_num_data_valid fifo_status_num_data_valid 0 2 }  { attn_stream_fifo_cap fifo_update 0 2 }  { attn_stream_full_n fifo_status 0 1 }  { attn_stream_write fifo_data 1 1 } } }
	attn_softmax_info_stream { ap_fifo {  { attn_softmax_info_stream_din fifo_port_we 1 256 }  { attn_softmax_info_stream_num_data_valid fifo_status_num_data_valid 0 2 }  { attn_softmax_info_stream_fifo_cap fifo_update 0 2 }  { attn_softmax_info_stream_full_n fifo_status 0 1 }  { attn_softmax_info_stream_write fifo_data 1 1 } } }
}
