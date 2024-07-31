set moduleName compute_attn_matmul_v_7
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
set C_modelName {compute_attn_matmul_v.7}
set C_modelType { void 0 }
set C_modelArgList {
	{ attn_matmul_v_stream int 256 regular {fifo 1 volatile }  }
	{ qxk_out_stream int 512 regular {fifo 0 volatile }  }
	{ attn_softmax_info_stream int 256 regular {fifo 0 volatile }  }
	{ v_stream int 256 regular {fifo 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "attn_matmul_v_stream", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "qxk_out_stream", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "attn_softmax_info_stream", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "v_stream", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ attn_softmax_info_stream_dout sc_in sc_lv 256 signal 2 } 
	{ attn_softmax_info_stream_num_data_valid sc_in sc_lv 2 signal 2 } 
	{ attn_softmax_info_stream_fifo_cap sc_in sc_lv 2 signal 2 } 
	{ attn_softmax_info_stream_empty_n sc_in sc_logic 1 signal 2 } 
	{ attn_softmax_info_stream_read sc_out sc_logic 1 signal 2 } 
	{ qxk_out_stream_dout sc_in sc_lv 512 signal 1 } 
	{ qxk_out_stream_num_data_valid sc_in sc_lv 2 signal 1 } 
	{ qxk_out_stream_fifo_cap sc_in sc_lv 2 signal 1 } 
	{ qxk_out_stream_empty_n sc_in sc_logic 1 signal 1 } 
	{ qxk_out_stream_read sc_out sc_logic 1 signal 1 } 
	{ v_stream_dout sc_in sc_lv 256 signal 3 } 
	{ v_stream_num_data_valid sc_in sc_lv 2 signal 3 } 
	{ v_stream_fifo_cap sc_in sc_lv 2 signal 3 } 
	{ v_stream_empty_n sc_in sc_logic 1 signal 3 } 
	{ v_stream_read sc_out sc_logic 1 signal 3 } 
	{ attn_matmul_v_stream_din sc_out sc_lv 256 signal 0 } 
	{ attn_matmul_v_stream_num_data_valid sc_in sc_lv 2 signal 0 } 
	{ attn_matmul_v_stream_fifo_cap sc_in sc_lv 2 signal 0 } 
	{ attn_matmul_v_stream_full_n sc_in sc_logic 1 signal 0 } 
	{ attn_matmul_v_stream_write sc_out sc_logic 1 signal 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "attn_softmax_info_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "attn_softmax_info_stream", "role": "dout" }} , 
 	{ "name": "attn_softmax_info_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "attn_softmax_info_stream", "role": "num_data_valid" }} , 
 	{ "name": "attn_softmax_info_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "attn_softmax_info_stream", "role": "fifo_cap" }} , 
 	{ "name": "attn_softmax_info_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "attn_softmax_info_stream", "role": "empty_n" }} , 
 	{ "name": "attn_softmax_info_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "attn_softmax_info_stream", "role": "read" }} , 
 	{ "name": "qxk_out_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "qxk_out_stream", "role": "dout" }} , 
 	{ "name": "qxk_out_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "qxk_out_stream", "role": "num_data_valid" }} , 
 	{ "name": "qxk_out_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "qxk_out_stream", "role": "fifo_cap" }} , 
 	{ "name": "qxk_out_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "qxk_out_stream", "role": "empty_n" }} , 
 	{ "name": "qxk_out_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "qxk_out_stream", "role": "read" }} , 
 	{ "name": "v_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "v_stream", "role": "dout" }} , 
 	{ "name": "v_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v_stream", "role": "num_data_valid" }} , 
 	{ "name": "v_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v_stream", "role": "fifo_cap" }} , 
 	{ "name": "v_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_stream", "role": "empty_n" }} , 
 	{ "name": "v_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_stream", "role": "read" }} , 
 	{ "name": "attn_matmul_v_stream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "attn_matmul_v_stream", "role": "din" }} , 
 	{ "name": "attn_matmul_v_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "attn_matmul_v_stream", "role": "num_data_valid" }} , 
 	{ "name": "attn_matmul_v_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "attn_matmul_v_stream", "role": "fifo_cap" }} , 
 	{ "name": "attn_matmul_v_stream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "attn_matmul_v_stream", "role": "full_n" }} , 
 	{ "name": "attn_matmul_v_stream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "attn_matmul_v_stream", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "16", "27", "38", "49", "60", "71", "82", "93", "104", "115", "126", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193"],
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
		"Port" : [
			{"Name" : "attn_matmul_v_stream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "attn_matmul_v_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "qxk_out_stream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "qxk_out_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "attn_softmax_info_stream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "attn_softmax_info_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "v_stream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "v_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "f_x_msb_4_h_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "grp_exp_32_10_s_fu_504", "Port" : "f_x_msb_4_h_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "115", "SubInstance" : "grp_exp_32_10_s_fu_555", "Port" : "f_x_msb_4_h_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "126", "SubInstance" : "grp_exp_32_10_s_fu_572", "Port" : "f_x_msb_4_h_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "93", "SubInstance" : "grp_exp_32_10_s_fu_521", "Port" : "f_x_msb_4_h_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "104", "SubInstance" : "grp_exp_32_10_s_fu_538", "Port" : "f_x_msb_4_h_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "5", "SubInstance" : "grp_exp_32_10_s_fu_385", "Port" : "f_x_msb_4_h_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "60", "SubInstance" : "grp_exp_32_10_s_fu_470", "Port" : "f_x_msb_4_h_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "49", "SubInstance" : "grp_exp_32_10_s_fu_453", "Port" : "f_x_msb_4_h_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "16", "SubInstance" : "grp_exp_32_10_s_fu_402", "Port" : "f_x_msb_4_h_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "38", "SubInstance" : "grp_exp_32_10_s_fu_436", "Port" : "f_x_msb_4_h_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "27", "SubInstance" : "grp_exp_32_10_s_fu_419", "Port" : "f_x_msb_4_h_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "71", "SubInstance" : "grp_exp_32_10_s_fu_487", "Port" : "f_x_msb_4_h_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"}]},
			{"Name" : "f_x_msb_4_l_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "grp_exp_32_10_s_fu_504", "Port" : "f_x_msb_4_l_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "115", "SubInstance" : "grp_exp_32_10_s_fu_555", "Port" : "f_x_msb_4_l_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "126", "SubInstance" : "grp_exp_32_10_s_fu_572", "Port" : "f_x_msb_4_l_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "93", "SubInstance" : "grp_exp_32_10_s_fu_521", "Port" : "f_x_msb_4_l_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "104", "SubInstance" : "grp_exp_32_10_s_fu_538", "Port" : "f_x_msb_4_l_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "5", "SubInstance" : "grp_exp_32_10_s_fu_385", "Port" : "f_x_msb_4_l_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "60", "SubInstance" : "grp_exp_32_10_s_fu_470", "Port" : "f_x_msb_4_l_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "49", "SubInstance" : "grp_exp_32_10_s_fu_453", "Port" : "f_x_msb_4_l_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "16", "SubInstance" : "grp_exp_32_10_s_fu_402", "Port" : "f_x_msb_4_l_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "38", "SubInstance" : "grp_exp_32_10_s_fu_436", "Port" : "f_x_msb_4_l_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "27", "SubInstance" : "grp_exp_32_10_s_fu_419", "Port" : "f_x_msb_4_l_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "71", "SubInstance" : "grp_exp_32_10_s_fu_487", "Port" : "f_x_msb_4_l_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"}]},
			{"Name" : "f_x_lsb_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "grp_exp_32_10_s_fu_504", "Port" : "f_x_lsb_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "115", "SubInstance" : "grp_exp_32_10_s_fu_555", "Port" : "f_x_lsb_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "126", "SubInstance" : "grp_exp_32_10_s_fu_572", "Port" : "f_x_lsb_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "93", "SubInstance" : "grp_exp_32_10_s_fu_521", "Port" : "f_x_lsb_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "104", "SubInstance" : "grp_exp_32_10_s_fu_538", "Port" : "f_x_lsb_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "5", "SubInstance" : "grp_exp_32_10_s_fu_385", "Port" : "f_x_lsb_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "60", "SubInstance" : "grp_exp_32_10_s_fu_470", "Port" : "f_x_lsb_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "49", "SubInstance" : "grp_exp_32_10_s_fu_453", "Port" : "f_x_lsb_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "16", "SubInstance" : "grp_exp_32_10_s_fu_402", "Port" : "f_x_lsb_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "38", "SubInstance" : "grp_exp_32_10_s_fu_436", "Port" : "f_x_lsb_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "27", "SubInstance" : "grp_exp_32_10_s_fu_419", "Port" : "f_x_lsb_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "71", "SubInstance" : "grp_exp_32_10_s_fu_487", "Port" : "f_x_lsb_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"}]},
			{"Name" : "f_x_msb_3_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "grp_exp_32_10_s_fu_504", "Port" : "f_x_msb_3_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "115", "SubInstance" : "grp_exp_32_10_s_fu_555", "Port" : "f_x_msb_3_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "126", "SubInstance" : "grp_exp_32_10_s_fu_572", "Port" : "f_x_msb_3_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "93", "SubInstance" : "grp_exp_32_10_s_fu_521", "Port" : "f_x_msb_3_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "104", "SubInstance" : "grp_exp_32_10_s_fu_538", "Port" : "f_x_msb_3_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "5", "SubInstance" : "grp_exp_32_10_s_fu_385", "Port" : "f_x_msb_3_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "60", "SubInstance" : "grp_exp_32_10_s_fu_470", "Port" : "f_x_msb_3_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "49", "SubInstance" : "grp_exp_32_10_s_fu_453", "Port" : "f_x_msb_3_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "16", "SubInstance" : "grp_exp_32_10_s_fu_402", "Port" : "f_x_msb_3_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "38", "SubInstance" : "grp_exp_32_10_s_fu_436", "Port" : "f_x_msb_3_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "27", "SubInstance" : "grp_exp_32_10_s_fu_419", "Port" : "f_x_msb_3_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "71", "SubInstance" : "grp_exp_32_10_s_fu_487", "Port" : "f_x_msb_3_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"}]},
			{"Name" : "f_x_msb_2_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "grp_exp_32_10_s_fu_504", "Port" : "f_x_msb_2_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "115", "SubInstance" : "grp_exp_32_10_s_fu_555", "Port" : "f_x_msb_2_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "126", "SubInstance" : "grp_exp_32_10_s_fu_572", "Port" : "f_x_msb_2_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "93", "SubInstance" : "grp_exp_32_10_s_fu_521", "Port" : "f_x_msb_2_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "104", "SubInstance" : "grp_exp_32_10_s_fu_538", "Port" : "f_x_msb_2_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "5", "SubInstance" : "grp_exp_32_10_s_fu_385", "Port" : "f_x_msb_2_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "60", "SubInstance" : "grp_exp_32_10_s_fu_470", "Port" : "f_x_msb_2_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "49", "SubInstance" : "grp_exp_32_10_s_fu_453", "Port" : "f_x_msb_2_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "16", "SubInstance" : "grp_exp_32_10_s_fu_402", "Port" : "f_x_msb_2_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "38", "SubInstance" : "grp_exp_32_10_s_fu_436", "Port" : "f_x_msb_2_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "27", "SubInstance" : "grp_exp_32_10_s_fu_419", "Port" : "f_x_msb_2_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "71", "SubInstance" : "grp_exp_32_10_s_fu_487", "Port" : "f_x_msb_2_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"}]},
			{"Name" : "exp_x_msb_1_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "grp_exp_32_10_s_fu_504", "Port" : "exp_x_msb_1_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "115", "SubInstance" : "grp_exp_32_10_s_fu_555", "Port" : "exp_x_msb_1_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "126", "SubInstance" : "grp_exp_32_10_s_fu_572", "Port" : "exp_x_msb_1_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "93", "SubInstance" : "grp_exp_32_10_s_fu_521", "Port" : "exp_x_msb_1_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "104", "SubInstance" : "grp_exp_32_10_s_fu_538", "Port" : "exp_x_msb_1_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "5", "SubInstance" : "grp_exp_32_10_s_fu_385", "Port" : "exp_x_msb_1_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "60", "SubInstance" : "grp_exp_32_10_s_fu_470", "Port" : "exp_x_msb_1_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "49", "SubInstance" : "grp_exp_32_10_s_fu_453", "Port" : "exp_x_msb_1_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "16", "SubInstance" : "grp_exp_32_10_s_fu_402", "Port" : "exp_x_msb_1_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "38", "SubInstance" : "grp_exp_32_10_s_fu_436", "Port" : "exp_x_msb_1_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "27", "SubInstance" : "grp_exp_32_10_s_fu_419", "Port" : "exp_x_msb_1_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"},
					{"ID" : "71", "SubInstance" : "grp_exp_32_10_s_fu_487", "Port" : "exp_x_msb_1_table_V", "Inst_start_state" : "3", "Inst_end_state" : "8"}]}],
		"Loop" : [
			{"Name" : "_ln432_for_block_attn_patch__ln434_for_each_v_patch__ln436_for_block_dim", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter10", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter10", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.acc_blocks_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.acc_blocks_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.acc_blocks_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.acc_blocks_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_385", "Parent" : "0", "Child" : ["6", "7", "8", "9", "10", "11", "12", "13", "14", "15"],
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
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_385.f_x_msb_4_h_table_V_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_385.f_x_msb_4_l_table_V_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_385.f_x_lsb_table_V_U", "Parent" : "5"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_385.f_x_msb_3_table_V_U", "Parent" : "5"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_385.f_x_msb_2_table_V_U", "Parent" : "5"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_385.exp_x_msb_1_table_V_U", "Parent" : "5"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_385.mul_44ns_42ns_86_1_1_U897", "Parent" : "5"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_385.mul_50ns_48ns_98_1_1_U898", "Parent" : "5"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_385.mul_50ns_50ns_100_1_1_U899", "Parent" : "5"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_385.mac_muladd_3ns_4ns_9ns_10_4_1_U900", "Parent" : "5"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_402", "Parent" : "0", "Child" : ["17", "18", "19", "20", "21", "22", "23", "24", "25", "26"],
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
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_402.f_x_msb_4_h_table_V_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_402.f_x_msb_4_l_table_V_U", "Parent" : "16"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_402.f_x_lsb_table_V_U", "Parent" : "16"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_402.f_x_msb_3_table_V_U", "Parent" : "16"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_402.f_x_msb_2_table_V_U", "Parent" : "16"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_402.exp_x_msb_1_table_V_U", "Parent" : "16"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_402.mul_44ns_42ns_86_1_1_U897", "Parent" : "16"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_402.mul_50ns_48ns_98_1_1_U898", "Parent" : "16"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_402.mul_50ns_50ns_100_1_1_U899", "Parent" : "16"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_402.mac_muladd_3ns_4ns_9ns_10_4_1_U900", "Parent" : "16"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_419", "Parent" : "0", "Child" : ["28", "29", "30", "31", "32", "33", "34", "35", "36", "37"],
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
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_419.f_x_msb_4_h_table_V_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_419.f_x_msb_4_l_table_V_U", "Parent" : "27"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_419.f_x_lsb_table_V_U", "Parent" : "27"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_419.f_x_msb_3_table_V_U", "Parent" : "27"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_419.f_x_msb_2_table_V_U", "Parent" : "27"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_419.exp_x_msb_1_table_V_U", "Parent" : "27"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_419.mul_44ns_42ns_86_1_1_U897", "Parent" : "27"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_419.mul_50ns_48ns_98_1_1_U898", "Parent" : "27"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_419.mul_50ns_50ns_100_1_1_U899", "Parent" : "27"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_419.mac_muladd_3ns_4ns_9ns_10_4_1_U900", "Parent" : "27"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_436", "Parent" : "0", "Child" : ["39", "40", "41", "42", "43", "44", "45", "46", "47", "48"],
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
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_436.f_x_msb_4_h_table_V_U", "Parent" : "38"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_436.f_x_msb_4_l_table_V_U", "Parent" : "38"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_436.f_x_lsb_table_V_U", "Parent" : "38"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_436.f_x_msb_3_table_V_U", "Parent" : "38"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_436.f_x_msb_2_table_V_U", "Parent" : "38"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_436.exp_x_msb_1_table_V_U", "Parent" : "38"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_436.mul_44ns_42ns_86_1_1_U897", "Parent" : "38"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_436.mul_50ns_48ns_98_1_1_U898", "Parent" : "38"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_436.mul_50ns_50ns_100_1_1_U899", "Parent" : "38"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_436.mac_muladd_3ns_4ns_9ns_10_4_1_U900", "Parent" : "38"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_453", "Parent" : "0", "Child" : ["50", "51", "52", "53", "54", "55", "56", "57", "58", "59"],
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
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_453.f_x_msb_4_h_table_V_U", "Parent" : "49"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_453.f_x_msb_4_l_table_V_U", "Parent" : "49"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_453.f_x_lsb_table_V_U", "Parent" : "49"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_453.f_x_msb_3_table_V_U", "Parent" : "49"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_453.f_x_msb_2_table_V_U", "Parent" : "49"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_453.exp_x_msb_1_table_V_U", "Parent" : "49"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_453.mul_44ns_42ns_86_1_1_U897", "Parent" : "49"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_453.mul_50ns_48ns_98_1_1_U898", "Parent" : "49"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_453.mul_50ns_50ns_100_1_1_U899", "Parent" : "49"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_453.mac_muladd_3ns_4ns_9ns_10_4_1_U900", "Parent" : "49"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_470", "Parent" : "0", "Child" : ["61", "62", "63", "64", "65", "66", "67", "68", "69", "70"],
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
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_470.f_x_msb_4_h_table_V_U", "Parent" : "60"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_470.f_x_msb_4_l_table_V_U", "Parent" : "60"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_470.f_x_lsb_table_V_U", "Parent" : "60"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_470.f_x_msb_3_table_V_U", "Parent" : "60"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_470.f_x_msb_2_table_V_U", "Parent" : "60"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_470.exp_x_msb_1_table_V_U", "Parent" : "60"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_470.mul_44ns_42ns_86_1_1_U897", "Parent" : "60"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_470.mul_50ns_48ns_98_1_1_U898", "Parent" : "60"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_470.mul_50ns_50ns_100_1_1_U899", "Parent" : "60"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_470.mac_muladd_3ns_4ns_9ns_10_4_1_U900", "Parent" : "60"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_487", "Parent" : "0", "Child" : ["72", "73", "74", "75", "76", "77", "78", "79", "80", "81"],
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
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_487.f_x_msb_4_h_table_V_U", "Parent" : "71"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_487.f_x_msb_4_l_table_V_U", "Parent" : "71"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_487.f_x_lsb_table_V_U", "Parent" : "71"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_487.f_x_msb_3_table_V_U", "Parent" : "71"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_487.f_x_msb_2_table_V_U", "Parent" : "71"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_487.exp_x_msb_1_table_V_U", "Parent" : "71"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_487.mul_44ns_42ns_86_1_1_U897", "Parent" : "71"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_487.mul_50ns_48ns_98_1_1_U898", "Parent" : "71"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_487.mul_50ns_50ns_100_1_1_U899", "Parent" : "71"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_487.mac_muladd_3ns_4ns_9ns_10_4_1_U900", "Parent" : "71"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_504", "Parent" : "0", "Child" : ["83", "84", "85", "86", "87", "88", "89", "90", "91", "92"],
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
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_504.f_x_msb_4_h_table_V_U", "Parent" : "82"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_504.f_x_msb_4_l_table_V_U", "Parent" : "82"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_504.f_x_lsb_table_V_U", "Parent" : "82"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_504.f_x_msb_3_table_V_U", "Parent" : "82"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_504.f_x_msb_2_table_V_U", "Parent" : "82"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_504.exp_x_msb_1_table_V_U", "Parent" : "82"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_504.mul_44ns_42ns_86_1_1_U897", "Parent" : "82"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_504.mul_50ns_48ns_98_1_1_U898", "Parent" : "82"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_504.mul_50ns_50ns_100_1_1_U899", "Parent" : "82"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_504.mac_muladd_3ns_4ns_9ns_10_4_1_U900", "Parent" : "82"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_521", "Parent" : "0", "Child" : ["94", "95", "96", "97", "98", "99", "100", "101", "102", "103"],
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
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_521.f_x_msb_4_h_table_V_U", "Parent" : "93"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_521.f_x_msb_4_l_table_V_U", "Parent" : "93"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_521.f_x_lsb_table_V_U", "Parent" : "93"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_521.f_x_msb_3_table_V_U", "Parent" : "93"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_521.f_x_msb_2_table_V_U", "Parent" : "93"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_521.exp_x_msb_1_table_V_U", "Parent" : "93"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_521.mul_44ns_42ns_86_1_1_U897", "Parent" : "93"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_521.mul_50ns_48ns_98_1_1_U898", "Parent" : "93"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_521.mul_50ns_50ns_100_1_1_U899", "Parent" : "93"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_521.mac_muladd_3ns_4ns_9ns_10_4_1_U900", "Parent" : "93"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_538", "Parent" : "0", "Child" : ["105", "106", "107", "108", "109", "110", "111", "112", "113", "114"],
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
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_538.f_x_msb_4_h_table_V_U", "Parent" : "104"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_538.f_x_msb_4_l_table_V_U", "Parent" : "104"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_538.f_x_lsb_table_V_U", "Parent" : "104"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_538.f_x_msb_3_table_V_U", "Parent" : "104"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_538.f_x_msb_2_table_V_U", "Parent" : "104"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_538.exp_x_msb_1_table_V_U", "Parent" : "104"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_538.mul_44ns_42ns_86_1_1_U897", "Parent" : "104"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_538.mul_50ns_48ns_98_1_1_U898", "Parent" : "104"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_538.mul_50ns_50ns_100_1_1_U899", "Parent" : "104"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_538.mac_muladd_3ns_4ns_9ns_10_4_1_U900", "Parent" : "104"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_555", "Parent" : "0", "Child" : ["116", "117", "118", "119", "120", "121", "122", "123", "124", "125"],
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
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_555.f_x_msb_4_h_table_V_U", "Parent" : "115"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_555.f_x_msb_4_l_table_V_U", "Parent" : "115"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_555.f_x_lsb_table_V_U", "Parent" : "115"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_555.f_x_msb_3_table_V_U", "Parent" : "115"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_555.f_x_msb_2_table_V_U", "Parent" : "115"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_555.exp_x_msb_1_table_V_U", "Parent" : "115"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_555.mul_44ns_42ns_86_1_1_U897", "Parent" : "115"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_555.mul_50ns_48ns_98_1_1_U898", "Parent" : "115"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_555.mul_50ns_50ns_100_1_1_U899", "Parent" : "115"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_555.mac_muladd_3ns_4ns_9ns_10_4_1_U900", "Parent" : "115"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_572", "Parent" : "0", "Child" : ["127", "128", "129", "130", "131", "132", "133", "134", "135", "136"],
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
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_572.f_x_msb_4_h_table_V_U", "Parent" : "126"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_572.f_x_msb_4_l_table_V_U", "Parent" : "126"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_572.f_x_lsb_table_V_U", "Parent" : "126"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_572.f_x_msb_3_table_V_U", "Parent" : "126"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_572.f_x_msb_2_table_V_U", "Parent" : "126"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_572.exp_x_msb_1_table_V_U", "Parent" : "126"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_572.mul_44ns_42ns_86_1_1_U897", "Parent" : "126"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_572.mul_50ns_48ns_98_1_1_U898", "Parent" : "126"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_572.mul_50ns_50ns_100_1_1_U899", "Parent" : "126"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_32_10_s_fu_572.mac_muladd_3ns_4ns_9ns_10_4_1_U900", "Parent" : "126"},
	{"ID" : "137", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31ns_32s_54_1_1_U981", "Parent" : "0"},
	{"ID" : "138", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31ns_32s_54_1_1_U982", "Parent" : "0"},
	{"ID" : "139", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31ns_32s_54_1_1_U983", "Parent" : "0"},
	{"ID" : "140", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31ns_32s_54_1_1_U984", "Parent" : "0"},
	{"ID" : "141", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31ns_32s_54_1_1_U985", "Parent" : "0"},
	{"ID" : "142", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31ns_32s_54_1_1_U986", "Parent" : "0"},
	{"ID" : "143", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31ns_32s_54_1_1_U987", "Parent" : "0"},
	{"ID" : "144", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31ns_32s_54_1_1_U988", "Parent" : "0"},
	{"ID" : "145", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31ns_32s_54_1_1_U989", "Parent" : "0"},
	{"ID" : "146", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31ns_32s_54_1_1_U990", "Parent" : "0"},
	{"ID" : "147", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31ns_32s_54_1_1_U991", "Parent" : "0"},
	{"ID" : "148", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31ns_32s_54_1_1_U992", "Parent" : "0"},
	{"ID" : "149", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U993", "Parent" : "0"},
	{"ID" : "150", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_54_1_1_U994", "Parent" : "0"},
	{"ID" : "151", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_54_1_1_U995", "Parent" : "0"},
	{"ID" : "152", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_54_1_1_U996", "Parent" : "0"},
	{"ID" : "153", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_54_1_1_U997", "Parent" : "0"},
	{"ID" : "154", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_54_1_1_U998", "Parent" : "0"},
	{"ID" : "155", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_54_1_1_U999", "Parent" : "0"},
	{"ID" : "156", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_54_1_1_U1000", "Parent" : "0"},
	{"ID" : "157", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_54_1_1_U1001", "Parent" : "0"},
	{"ID" : "158", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U1002", "Parent" : "0"},
	{"ID" : "159", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_54_1_1_U1003", "Parent" : "0"},
	{"ID" : "160", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_54_1_1_U1004", "Parent" : "0"},
	{"ID" : "161", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_54_1_1_U1005", "Parent" : "0"},
	{"ID" : "162", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_54_1_1_U1006", "Parent" : "0"},
	{"ID" : "163", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_54_1_1_U1007", "Parent" : "0"},
	{"ID" : "164", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_54_1_1_U1008", "Parent" : "0"},
	{"ID" : "165", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_54_1_1_U1009", "Parent" : "0"},
	{"ID" : "166", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_54_1_1_U1010", "Parent" : "0"},
	{"ID" : "167", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U1011", "Parent" : "0"},
	{"ID" : "168", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_54_1_1_U1012", "Parent" : "0"},
	{"ID" : "169", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_54_1_1_U1013", "Parent" : "0"},
	{"ID" : "170", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_54_1_1_U1014", "Parent" : "0"},
	{"ID" : "171", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_54_1_1_U1015", "Parent" : "0"},
	{"ID" : "172", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_54_1_1_U1016", "Parent" : "0"},
	{"ID" : "173", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_54_1_1_U1017", "Parent" : "0"},
	{"ID" : "174", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_54_1_1_U1018", "Parent" : "0"},
	{"ID" : "175", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_54_1_1_U1019", "Parent" : "0"},
	{"ID" : "176", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U1020", "Parent" : "0"},
	{"ID" : "177", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_54_1_1_U1021", "Parent" : "0"},
	{"ID" : "178", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_54_1_1_U1022", "Parent" : "0"},
	{"ID" : "179", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_54_1_1_U1023", "Parent" : "0"},
	{"ID" : "180", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_54_1_1_U1024", "Parent" : "0"},
	{"ID" : "181", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_54_1_1_U1025", "Parent" : "0"},
	{"ID" : "182", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_54_1_1_U1026", "Parent" : "0"},
	{"ID" : "183", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_54_1_1_U1027", "Parent" : "0"},
	{"ID" : "184", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_54_1_1_U1028", "Parent" : "0"},
	{"ID" : "185", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U1029", "Parent" : "0"},
	{"ID" : "186", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U1030", "Parent" : "0"},
	{"ID" : "187", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U1031", "Parent" : "0"},
	{"ID" : "188", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U1032", "Parent" : "0"},
	{"ID" : "189", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U1033", "Parent" : "0"},
	{"ID" : "190", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U1034", "Parent" : "0"},
	{"ID" : "191", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U1035", "Parent" : "0"},
	{"ID" : "192", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U1036", "Parent" : "0"},
	{"ID" : "193", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		exp_x_msb_1_table_V {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "102179", "Max" : "102179"}
	, {"Name" : "Interval", "Min" : "102179", "Max" : "102179"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	attn_matmul_v_stream { ap_fifo {  { attn_matmul_v_stream_din fifo_port_we 1 256 }  { attn_matmul_v_stream_num_data_valid fifo_status_num_data_valid 0 2 }  { attn_matmul_v_stream_fifo_cap fifo_update 0 2 }  { attn_matmul_v_stream_full_n fifo_status 0 1 }  { attn_matmul_v_stream_write fifo_data 1 1 } } }
	qxk_out_stream { ap_fifo {  { qxk_out_stream_dout fifo_port_we 0 512 }  { qxk_out_stream_num_data_valid fifo_status_num_data_valid 0 2 }  { qxk_out_stream_fifo_cap fifo_update 0 2 }  { qxk_out_stream_empty_n fifo_status 0 1 }  { qxk_out_stream_read fifo_data 1 1 } } }
	attn_softmax_info_stream { ap_fifo {  { attn_softmax_info_stream_dout fifo_port_we 0 256 }  { attn_softmax_info_stream_num_data_valid fifo_status_num_data_valid 0 2 }  { attn_softmax_info_stream_fifo_cap fifo_update 0 2 }  { attn_softmax_info_stream_empty_n fifo_status 0 1 }  { attn_softmax_info_stream_read fifo_data 1 1 } } }
	v_stream { ap_fifo {  { v_stream_dout fifo_port_we 0 256 }  { v_stream_num_data_valid fifo_status_num_data_valid 0 2 }  { v_stream_fifo_cap fifo_update 0 2 }  { v_stream_empty_n fifo_status 0 1 }  { v_stream_read fifo_data 1 1 } } }
}
