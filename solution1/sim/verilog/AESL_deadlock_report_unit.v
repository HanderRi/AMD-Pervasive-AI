`timescale 1 ns / 1 ps

module AESL_deadlock_report_unit #( parameter PROC_NUM = 4 ) (
    input dl_reset,
    input dl_clock,
    input [PROC_NUM - 1:0] dl_in_vec,
    input [15:0] trans_in_cnt_0,
    input [15:0] trans_out_cnt_0,
    input [15:0] trans_in_cnt_1,
    input [15:0] trans_out_cnt_1,
    input [15:0] trans_in_cnt_2,
    input [15:0] trans_out_cnt_2,
    input [15:0] trans_in_cnt_3,
    input [15:0] trans_out_cnt_3,
    input [15:0] trans_in_cnt_4,
    input [15:0] trans_out_cnt_4,
    input [15:0] trans_in_cnt_5,
    input [15:0] trans_out_cnt_5,
    input ap_done_reg_0,
    input ap_done_reg_1,
    input ap_done_reg_2,
    input ap_done_reg_3,
    input ap_done_reg_4,
    input ap_done_reg_5,
    input ap_done_reg_6,
    input ap_done_reg_7,
    output dl_detect_out,
    output reg [PROC_NUM - 1:0] origin,
    output token_clear);
   
    // FSM states
    localparam ST_IDLE = 3'b000;
    localparam ST_FILTER_FAKE = 3'b001;
    localparam ST_DL_DETECTED = 3'b010;
    localparam ST_DL_REPORT = 3'b100;

    reg find_df_deadlock;
    reg [2:0] CS_fsm;
    reg [2:0] NS_fsm;
    reg [PROC_NUM - 1:0] dl_detect_reg;
    reg [PROC_NUM - 1:0] dl_done_reg;
    reg [PROC_NUM - 1:0] origin_reg;
    reg [PROC_NUM - 1:0] dl_in_vec_reg;
    reg [31:0] dl_keep_cnt;
    integer i;
    integer fp;

    // FSM State machine
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            CS_fsm <= ST_IDLE;
        end
        else begin
            CS_fsm <= NS_fsm;
        end
    end
    always @ (CS_fsm or dl_in_vec or dl_detect_reg or dl_done_reg or dl_in_vec or origin_reg or dl_keep_cnt) begin
        case (CS_fsm)
            ST_IDLE : begin
                if (|dl_in_vec) begin
                    NS_fsm = ST_FILTER_FAKE;
                end
                else begin
                    NS_fsm = ST_IDLE;
                end
            end
            ST_FILTER_FAKE: begin
                if (dl_keep_cnt >= 32'd1000) begin
                    NS_fsm = ST_DL_DETECTED;
                end
                else if (dl_detect_reg != (dl_detect_reg & dl_in_vec)) begin
                    NS_fsm = ST_IDLE;
                end
                else begin
                    NS_fsm = ST_FILTER_FAKE;
                end
            end
            ST_DL_DETECTED: begin
                // has unreported deadlock cycle
                if (dl_detect_reg != dl_done_reg) begin
                    NS_fsm = ST_DL_REPORT;
                end
                else begin
                    NS_fsm = ST_DL_DETECTED;
                end
            end
            ST_DL_REPORT: begin
                if (|(dl_in_vec & origin_reg)) begin
                    NS_fsm = ST_DL_DETECTED;
                end
                else begin
                    NS_fsm = ST_DL_REPORT;
                end
            end
            default: NS_fsm = ST_IDLE;
        endcase
    end

    // dl_detect_reg record the procs that first detect deadlock
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            dl_detect_reg <= 'b0;
        end
        else begin
            if (CS_fsm == ST_IDLE) begin
                dl_detect_reg <= dl_in_vec;
            end
        end
    end

    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            dl_keep_cnt <= 32'h0;
        end
        else begin
            if (CS_fsm == ST_FILTER_FAKE && (dl_detect_reg == (dl_detect_reg & dl_in_vec))) begin
                dl_keep_cnt <= dl_keep_cnt + 32'h1;
            end
            else if (CS_fsm == ST_FILTER_FAKE && (dl_detect_reg != (dl_detect_reg & dl_in_vec))) begin
                dl_keep_cnt <= 32'h0;
            end
        end
    end

    // dl_detect_out keeps in high after deadlock detected
    assign dl_detect_out = (|dl_detect_reg) && (CS_fsm == ST_DL_DETECTED || CS_fsm == ST_DL_REPORT);

    // dl_done_reg record the cycles has been reported
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            dl_done_reg <= 'b0;
        end
        else begin
            if ((CS_fsm == ST_DL_REPORT) && (|(dl_in_vec & dl_detect_reg) == 'b1)) begin
                dl_done_reg <= dl_done_reg | dl_in_vec;
            end
        end
    end

    // clear token once a cycle is done
    assign token_clear = (CS_fsm == ST_DL_REPORT) ? ((|(dl_in_vec & origin_reg)) ? 'b1 : 'b0) : 'b0;

    // origin_reg record the current cycle start id
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            origin_reg <= 'b0;
        end
        else begin
            if (CS_fsm == ST_DL_DETECTED) begin
                origin_reg <= origin;
            end
        end
    end
   
    // origin will be valid for only one cycle
    wire [PROC_NUM*PROC_NUM - 1:0] origin_tmp;
    assign origin_tmp[PROC_NUM - 1:0] = (dl_detect_reg[0] & ~dl_done_reg[0]) ? 'b1 : 'b0;
    genvar j;
    generate
    for(j = 1;j < PROC_NUM;j = j + 1) begin: F1
        assign origin_tmp[j*PROC_NUM +: PROC_NUM] = (dl_detect_reg[j] & ~dl_done_reg[j]) ? ('b1 << j) : origin_tmp[(j - 1)*PROC_NUM +: PROC_NUM];
    end
    endgenerate
    always @ (CS_fsm or origin_tmp) begin
        if (CS_fsm == ST_DL_DETECTED) begin
            origin = origin_tmp[(PROC_NUM - 1)*PROC_NUM +: PROC_NUM];
        end
        else begin
            origin = 'b0;
        end
    end

    
    // dl_in_vec_reg record the current cycle dl_in_vec
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            dl_in_vec_reg <= 'b0;
        end
        else begin
            if (CS_fsm == ST_DL_DETECTED) begin
                dl_in_vec_reg <= origin;
            end
            else if (CS_fsm == ST_DL_REPORT) begin
                dl_in_vec_reg <= dl_in_vec;
            end
        end
    end
    
    // find_df_deadlock to report the deadlock
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            find_df_deadlock <= 1'b0;
        end
        else begin
            if (CS_fsm == ST_DL_DETECTED && dl_detect_reg == dl_done_reg) begin
                find_df_deadlock <= 1'b1;
            end
            else if (CS_fsm == ST_IDLE) begin
                find_df_deadlock <= 1'b0;
            end
        end
    end
    
    // get the first valid proc index in dl vector
    function integer proc_index(input [PROC_NUM - 1:0] dl_vec);
        begin
            proc_index = 0;
            for (i = 0; i < PROC_NUM; i = i + 1) begin
                if (dl_vec[i]) begin
                    proc_index = i;
                end
            end
        end
    endfunction

    // get the proc path based on dl vector
    function [1736:0] proc_path(input [PROC_NUM - 1:0] dl_vec);
        integer index;
        begin
            index = proc_index(dl_vec);
            case (index)
                0 : begin
                    proc_path = "ViT_act.grp_compute_linear_fu_486.entry_proc24_U0";
                end
                1 : begin
                    proc_path = "ViT_act.grp_compute_linear_fu_486.read_in_stream_direct_U0";
                end
                2 : begin
                    proc_path = "ViT_act.grp_compute_linear_fu_486.compute_linear_on_stream_U0";
                end
                3 : begin
                    proc_path = "ViT_act.grp_compute_linear_fu_486.write_out_stream_direct_U0";
                end
                4 : begin
                    proc_path = "ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0";
                end
                5 : begin
                    proc_path = "ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.patch_embed_accumulate_16u_128u_8u_Block_entry2_proc8_U0";
                end
                6 : begin
                    proc_path = "ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.patch_embed_accumulate_read_16u_128u_8u_U0";
                end
                7 : begin
                    proc_path = "ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.patch_embed_accumulate_compute_16u_128u_8u_U0";
                end
                8 : begin
                    proc_path = "ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_output_U0";
                end
                9 : begin
                    proc_path = "ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_accumulate_U0";
                end
                10 : begin
                    proc_path = "ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0";
                end
                11 : begin
                    proc_path = "ViT_act.grp_compute_q_matmul_k_fu_639.entry_proc_U0";
                end
                12 : begin
                    proc_path = "ViT_act.grp_compute_q_matmul_k_fu_639.read_x_U0";
                end
                13 : begin
                    proc_path = "ViT_act.grp_compute_q_matmul_k_fu_639.read_k_v_U0";
                end
                14 : begin
                    proc_path = "ViT_act.grp_compute_q_matmul_k_fu_639.compute_q_matmul_k_5_U0";
                end
                15 : begin
                    proc_path = "ViT_act.grp_compute_q_matmul_k_fu_639.finalize_attn_U0";
                end
                16 : begin
                    proc_path = "ViT_act.grp_compute_q_matmul_k_fu_639.write_attn_U0";
                end
                17 : begin
                    proc_path = "ViT_act.grp_compute_q_matmul_k_fu_639.write_attn_softmax_info_U0";
                end
                18 : begin
                    proc_path = "ViT_act.grp_compute_attn_matmul_v_fu_669.entry_proc25_U0";
                end
                19 : begin
                    proc_path = "ViT_act.grp_compute_attn_matmul_v_fu_669.read_k_v_6_U0";
                end
                20 : begin
                    proc_path = "ViT_act.grp_compute_attn_matmul_v_fu_669.read_attn_U0";
                end
                21 : begin
                    proc_path = "ViT_act.grp_compute_attn_matmul_v_fu_669.read_attn_softmax_info_U0";
                end
                22 : begin
                    proc_path = "ViT_act.grp_compute_attn_matmul_v_fu_669.prepare_attn_U0";
                end
                23 : begin
                    proc_path = "ViT_act.grp_compute_attn_matmul_v_fu_669.compute_attn_matmul_v_7_U0";
                end
                24 : begin
                    proc_path = "ViT_act.grp_compute_attn_matmul_v_fu_669.write_attn_matmul_v_U0";
                end
                default : begin
                    proc_path = "unknown";
                end
            endcase
        end
    endfunction

    // print the headlines of deadlock detection
    task print_dl_head;
        begin
            $display("\n//////////////////////////////////////////////////////////////////////////////");
            $display("// ERROR!!! DEADLOCK DETECTED at %0t ns! SIMULATION WILL BE STOPPED! //", $time);
            $display("//////////////////////////////////////////////////////////////////////////////");
            fp = $fopen("deadlock_db.dat", "w");
        end
    endtask

    // print the start of a cycle
    task print_cycle_start(input reg [1736:0] proc_path, input integer cycle_id);
        begin
            $display("/////////////////////////");
            $display("// Dependence cycle %0d:", cycle_id);
            $display("// (1): Process: %0s", proc_path);
            $fdisplay(fp, "Dependence_Cycle_ID %0d", cycle_id);
            $fdisplay(fp, "Dependence_Process_ID 1");
            $fdisplay(fp, "Dependence_Process_path %0s", proc_path);
        end
    endtask

    // print the end of deadlock detection
    task print_dl_end(input integer num, input integer record_time);
        begin
            $display("////////////////////////////////////////////////////////////////////////");
            $display("// Totally %0d cycles detected!", num);
            $display("////////////////////////////////////////////////////////////////////////");
            $fdisplay(fp, "Dependence_Cycle_Number %0d", num);
            $fclose(fp);
        end
    endtask

    // print one proc component in the cycle
    task print_cycle_proc_comp(input reg [1736:0] proc_path, input integer cycle_comp_id);
        begin
            $display("// (%0d): Process: %0s", cycle_comp_id, proc_path);
            $fdisplay(fp, "Dependence_Process_ID %0d", cycle_comp_id);
            $fdisplay(fp, "Dependence_Process_path %0s", proc_path);
        end
    endtask

    // print one channel component in the cycle
    task print_cycle_chan_comp(input [PROC_NUM - 1:0] dl_vec1, input [PROC_NUM - 1:0] dl_vec2);
        reg [1416:0] chan_path;
        integer index1;
        integer index2;
        begin
            index1 = proc_index(dl_vec1);
            index2 = proc_index(dl_vec2);
            case (index1)
                0 : begin
                    case(index2)
                    3: begin
                        if (~AESL_inst_ViT_act.grp_compute_linear_fu_486.entry_proc24_U0.dst_c_blk_n) begin
                            if (~AESL_inst_ViT_act.grp_compute_linear_fu_486.dst_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ViT_act.grp_compute_linear_fu_486.dst_c_U' written by process 'ViT_act.grp_compute_linear_fu_486.write_out_stream_direct_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_linear_fu_486.dst_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_ViT_act.grp_compute_linear_fu_486.dst_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ViT_act.grp_compute_linear_fu_486.dst_c_U' read by process 'ViT_act.grp_compute_linear_fu_486.write_out_stream_direct_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_linear_fu_486.dst_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_ViT_act.grp_compute_linear_fu_486.start_for_write_out_stream_direct_U0_U.if_full_n & AESL_inst_ViT_act.grp_compute_linear_fu_486.entry_proc24_U0.ap_start & ~AESL_inst_ViT_act.grp_compute_linear_fu_486.entry_proc24_U0.real_start & (trans_in_cnt_0 == trans_out_cnt_0) & ~AESL_inst_ViT_act.grp_compute_linear_fu_486.start_for_write_out_stream_direct_U0_U.if_read) begin
                            $display("//      Blocked by full output start propagation FIFO 'ViT_act.grp_compute_linear_fu_486.start_for_write_out_stream_direct_U0_U' read by process 'ViT_act.grp_compute_linear_fu_486.write_out_stream_direct_U0',");
                        end
                    end
                    1: begin
                        if (AESL_inst_ViT_act.grp_compute_linear_fu_486.ap_sync_entry_proc24_U0_ap_ready & AESL_inst_ViT_act.grp_compute_linear_fu_486.entry_proc24_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_linear_fu_486.ap_sync_read_in_stream_direct_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'ViT_act.grp_compute_linear_fu_486.read_in_stream_direct_U0'");
                        end
                    end
                    2: begin
                        if (AESL_inst_ViT_act.grp_compute_linear_fu_486.ap_sync_entry_proc24_U0_ap_ready & AESL_inst_ViT_act.grp_compute_linear_fu_486.entry_proc24_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_linear_fu_486.ap_sync_compute_linear_on_stream_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'ViT_act.grp_compute_linear_fu_486.compute_linear_on_stream_U0'");
                        end
                    end
                    endcase
                end
                1 : begin
                    case(index2)
                    2: begin
                        if (~AESL_inst_ViT_act.grp_compute_linear_fu_486.read_in_stream_direct_U0.grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74.in_stream_blk_n) begin
                            if (~AESL_inst_ViT_act.grp_compute_linear_fu_486.in_stream_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ViT_act.grp_compute_linear_fu_486.in_stream_U' written by process 'ViT_act.grp_compute_linear_fu_486.compute_linear_on_stream_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_linear_fu_486.in_stream_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_ViT_act.grp_compute_linear_fu_486.in_stream_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ViT_act.grp_compute_linear_fu_486.in_stream_U' read by process 'ViT_act.grp_compute_linear_fu_486.compute_linear_on_stream_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_linear_fu_486.in_stream_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (AESL_inst_ViT_act.grp_compute_linear_fu_486.ap_sync_read_in_stream_direct_U0_ap_ready & AESL_inst_ViT_act.grp_compute_linear_fu_486.read_in_stream_direct_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_linear_fu_486.ap_sync_compute_linear_on_stream_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'ViT_act.grp_compute_linear_fu_486.compute_linear_on_stream_U0'");
                        end
                    end
                    0: begin
                        if (AESL_inst_ViT_act.grp_compute_linear_fu_486.ap_sync_read_in_stream_direct_U0_ap_ready & AESL_inst_ViT_act.grp_compute_linear_fu_486.read_in_stream_direct_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_linear_fu_486.ap_sync_entry_proc24_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'ViT_act.grp_compute_linear_fu_486.entry_proc24_U0'");
                        end
                    end
                    endcase
                end
                2 : begin
                    case(index2)
                    3: begin
                        if (~AESL_inst_ViT_act.grp_compute_linear_fu_486.compute_linear_on_stream_U0.grp_compute_linear_on_stream_Pipeline_ln290_for_each_i_fu_90.out_stream_blk_n) begin
                            if (~AESL_inst_ViT_act.grp_compute_linear_fu_486.out_stream_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ViT_act.grp_compute_linear_fu_486.out_stream_U' written by process 'ViT_act.grp_compute_linear_fu_486.write_out_stream_direct_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_linear_fu_486.out_stream_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_ViT_act.grp_compute_linear_fu_486.out_stream_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ViT_act.grp_compute_linear_fu_486.out_stream_U' read by process 'ViT_act.grp_compute_linear_fu_486.write_out_stream_direct_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_linear_fu_486.out_stream_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_ViT_act.grp_compute_linear_fu_486.compute_linear_on_stream_U0.out_dim_offset_c_blk_n) begin
                            if (~AESL_inst_ViT_act.grp_compute_linear_fu_486.out_dim_offset_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ViT_act.grp_compute_linear_fu_486.out_dim_offset_c_U' written by process 'ViT_act.grp_compute_linear_fu_486.write_out_stream_direct_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_linear_fu_486.out_dim_offset_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_ViT_act.grp_compute_linear_fu_486.out_dim_offset_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ViT_act.grp_compute_linear_fu_486.out_dim_offset_c_U' read by process 'ViT_act.grp_compute_linear_fu_486.write_out_stream_direct_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_linear_fu_486.out_dim_offset_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    1: begin
                        if (~AESL_inst_ViT_act.grp_compute_linear_fu_486.compute_linear_on_stream_U0.grp_compute_linear_on_stream_Pipeline_ln290_for_each_i_fu_90.in_stream_blk_n) begin
                            if (~AESL_inst_ViT_act.grp_compute_linear_fu_486.in_stream_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ViT_act.grp_compute_linear_fu_486.in_stream_U' written by process 'ViT_act.grp_compute_linear_fu_486.read_in_stream_direct_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_linear_fu_486.in_stream_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_ViT_act.grp_compute_linear_fu_486.in_stream_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ViT_act.grp_compute_linear_fu_486.in_stream_U' read by process 'ViT_act.grp_compute_linear_fu_486.read_in_stream_direct_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_linear_fu_486.in_stream_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (AESL_inst_ViT_act.grp_compute_linear_fu_486.ap_sync_compute_linear_on_stream_U0_ap_ready & AESL_inst_ViT_act.grp_compute_linear_fu_486.compute_linear_on_stream_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_linear_fu_486.ap_sync_read_in_stream_direct_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'ViT_act.grp_compute_linear_fu_486.read_in_stream_direct_U0'");
                        end
                    end
                    0: begin
                        if (AESL_inst_ViT_act.grp_compute_linear_fu_486.ap_sync_compute_linear_on_stream_U0_ap_ready & AESL_inst_ViT_act.grp_compute_linear_fu_486.compute_linear_on_stream_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_linear_fu_486.ap_sync_entry_proc24_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'ViT_act.grp_compute_linear_fu_486.entry_proc24_U0'");
                        end
                    end
                    endcase
                end
                3 : begin
                    case(index2)
                    0: begin
                        if (~AESL_inst_ViT_act.grp_compute_linear_fu_486.write_out_stream_direct_U0.dst_blk_n) begin
                            if (~AESL_inst_ViT_act.grp_compute_linear_fu_486.dst_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ViT_act.grp_compute_linear_fu_486.dst_c_U' written by process 'ViT_act.grp_compute_linear_fu_486.entry_proc24_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_linear_fu_486.dst_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_ViT_act.grp_compute_linear_fu_486.dst_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ViT_act.grp_compute_linear_fu_486.dst_c_U' read by process 'ViT_act.grp_compute_linear_fu_486.entry_proc24_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_linear_fu_486.dst_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_ViT_act.grp_compute_linear_fu_486.start_for_write_out_stream_direct_U0_U.if_empty_n & AESL_inst_ViT_act.grp_compute_linear_fu_486.write_out_stream_direct_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_linear_fu_486.start_for_write_out_stream_direct_U0_U.if_write) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'ViT_act.grp_compute_linear_fu_486.start_for_write_out_stream_direct_U0_U' written by process 'ViT_act.grp_compute_linear_fu_486.entry_proc24_U0',");
                        end
                    end
                    2: begin
                        if (~AESL_inst_ViT_act.grp_compute_linear_fu_486.write_out_stream_direct_U0.grp_write_out_stream_direct_Pipeline_ln231_for_each_i_fu_85.out_stream_blk_n) begin
                            if (~AESL_inst_ViT_act.grp_compute_linear_fu_486.out_stream_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ViT_act.grp_compute_linear_fu_486.out_stream_U' written by process 'ViT_act.grp_compute_linear_fu_486.compute_linear_on_stream_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_linear_fu_486.out_stream_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_ViT_act.grp_compute_linear_fu_486.out_stream_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ViT_act.grp_compute_linear_fu_486.out_stream_U' read by process 'ViT_act.grp_compute_linear_fu_486.compute_linear_on_stream_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_linear_fu_486.out_stream_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_ViT_act.grp_compute_linear_fu_486.write_out_stream_direct_U0.out_dim_offset_blk_n) begin
                            if (~AESL_inst_ViT_act.grp_compute_linear_fu_486.out_dim_offset_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ViT_act.grp_compute_linear_fu_486.out_dim_offset_c_U' written by process 'ViT_act.grp_compute_linear_fu_486.compute_linear_on_stream_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_linear_fu_486.out_dim_offset_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_ViT_act.grp_compute_linear_fu_486.out_dim_offset_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ViT_act.grp_compute_linear_fu_486.out_dim_offset_c_U' read by process 'ViT_act.grp_compute_linear_fu_486.compute_linear_on_stream_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_linear_fu_486.out_dim_offset_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                4 : begin
                    case(index2)
                    8: begin
                        if (~AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patches31_U.i_full_n & AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.ap_done & ap_done_reg_0 & ~AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patches31_U.t_read) begin
                            if (~AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patches31_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patches31_U' written by process 'ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_output_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patches31_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patches31_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patches31_U' read by process 'ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_output_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patches31_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.ap_sync_patch_embed_accumulate_16u_128u_8u_U0_ap_ready & AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.ap_sync_patch_embed_output_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_output_U0'");
                        end
                    end
                    endcase
                end
                5 : begin
                    case(index2)
                    6: begin
                        if (AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.ap_sync_patch_embed_accumulate_16u_128u_8u_Block_entry2_proc8_U0_ap_ready & AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.patch_embed_accumulate_16u_128u_8u_Block_entry2_proc8_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.ap_sync_patch_embed_accumulate_read_16u_128u_8u_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.patch_embed_accumulate_read_16u_128u_8u_U0'");
                        end
                    end
                    7: begin
                        if (AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.ap_sync_patch_embed_accumulate_16u_128u_8u_Block_entry2_proc8_U0_ap_ready & AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.patch_embed_accumulate_16u_128u_8u_Block_entry2_proc8_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.ap_sync_patch_embed_accumulate_compute_16u_128u_8u_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.patch_embed_accumulate_compute_16u_128u_8u_U0'");
                        end
                    end
                    endcase
                end
                6 : begin
                    case(index2)
                    7: begin
                        if (~AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.patch_embed_accumulate_read_16u_128u_8u_U0.image_stream_blk_n) begin
                            if (~AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.image_stream_i_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.image_stream_i_U' written by process 'ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.patch_embed_accumulate_compute_16u_128u_8u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.image_stream_i_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.image_stream_i_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.image_stream_i_U' read by process 'ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.patch_embed_accumulate_compute_16u_128u_8u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.image_stream_i_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.ap_sync_patch_embed_accumulate_read_16u_128u_8u_U0_ap_ready & AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.patch_embed_accumulate_read_16u_128u_8u_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.ap_sync_patch_embed_accumulate_compute_16u_128u_8u_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.patch_embed_accumulate_compute_16u_128u_8u_U0'");
                        end
                    end
                    5: begin
                        if (~AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.tmp_U.if_empty_n & AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.patch_embed_accumulate_read_16u_128u_8u_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.tmp_U.if_write) begin
                            if (~AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.tmp_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.tmp_U' written by process 'ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.patch_embed_accumulate_16u_128u_8u_Block_entry2_proc8_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.tmp_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.tmp_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.tmp_U' read by process 'ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.patch_embed_accumulate_16u_128u_8u_Block_entry2_proc8_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.tmp_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.ap_sync_patch_embed_accumulate_read_16u_128u_8u_U0_ap_ready & AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.patch_embed_accumulate_read_16u_128u_8u_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.ap_sync_patch_embed_accumulate_16u_128u_8u_Block_entry2_proc8_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.patch_embed_accumulate_16u_128u_8u_Block_entry2_proc8_U0'");
                        end
                    end
                    endcase
                end
                7 : begin
                    case(index2)
                    6: begin
                        if (~AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.patch_embed_accumulate_compute_16u_128u_8u_U0.image_stream_blk_n) begin
                            if (~AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.image_stream_i_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.image_stream_i_U' written by process 'ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.patch_embed_accumulate_read_16u_128u_8u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.image_stream_i_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.image_stream_i_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.image_stream_i_U' read by process 'ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.patch_embed_accumulate_read_16u_128u_8u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.image_stream_i_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.ap_sync_patch_embed_accumulate_compute_16u_128u_8u_U0_ap_ready & AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.patch_embed_accumulate_compute_16u_128u_8u_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.ap_sync_patch_embed_accumulate_read_16u_128u_8u_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.patch_embed_accumulate_read_16u_128u_8u_U0'");
                        end
                    end
                    8: begin
                        if (~AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patches31_U.i_full_n & AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.patch_embed_accumulate_compute_16u_128u_8u_U0.ap_done & ap_done_reg_2 & ~AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patches31_U.t_read) begin
                            if (~AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patches31_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patches31_U' written by process 'ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_output_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patches31_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patches31_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patches31_U' read by process 'ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_output_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patches31_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    5: begin
                        if (AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.ap_sync_patch_embed_accumulate_compute_16u_128u_8u_U0_ap_ready & AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.patch_embed_accumulate_compute_16u_128u_8u_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.ap_sync_patch_embed_accumulate_16u_128u_8u_Block_entry2_proc8_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.patch_embed_accumulate_16u_128u_8u_Block_entry2_proc8_U0'");
                        end
                    end
                    endcase
                end
                8 : begin
                    case(index2)
                    4: begin
                        if (~AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patches31_U.t_empty_n & AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_output_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patches31_U.i_write) begin
                            if (~AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patches31_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patches31_U' written by process 'ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patches31_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patches31_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patches31_U' read by process 'ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patches31_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.ap_sync_patch_embed_output_U0_ap_ready & AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_output_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.ap_sync_patch_embed_accumulate_16u_128u_8u_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0'");
                        end
                    end
                    endcase
                end
                9 : begin
                    case(index2)
                    10: begin
                        if (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_U.i_full_n & AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_accumulate_U0.ap_done & ap_done_reg_4 & ~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_U.t_read) begin
                            if (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_U' written by process 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_U' read by process 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_1_U.i_full_n & AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_accumulate_U0.ap_done & ap_done_reg_4 & ~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_1_U.t_read) begin
                            if (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_1_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_1_U' written by process 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_1_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_1_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_1_U' read by process 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_1_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_2_U.i_full_n & AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_accumulate_U0.ap_done & ap_done_reg_4 & ~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_2_U.t_read) begin
                            if (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_2_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_2_U' written by process 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_2_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_2_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_2_U' read by process 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_2_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_3_U.i_full_n & AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_accumulate_U0.ap_done & ap_done_reg_4 & ~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_3_U.t_read) begin
                            if (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_3_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_3_U' written by process 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_3_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_3_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_3_U' read by process 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_3_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_4_U.i_full_n & AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_accumulate_U0.ap_done & ap_done_reg_4 & ~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_4_U.t_read) begin
                            if (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_4_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_4_U' written by process 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_4_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_4_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_4_U' read by process 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_4_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_5_U.i_full_n & AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_accumulate_U0.ap_done & ap_done_reg_4 & ~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_5_U.t_read) begin
                            if (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_5_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_5_U' written by process 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_5_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_5_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_5_U' read by process 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_5_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_6_U.i_full_n & AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_accumulate_U0.ap_done & ap_done_reg_4 & ~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_6_U.t_read) begin
                            if (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_6_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_6_U' written by process 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_6_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_6_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_6_U' read by process 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_6_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_7_U.i_full_n & AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_accumulate_U0.ap_done & ap_done_reg_4 & ~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_7_U.t_read) begin
                            if (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_7_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_7_U' written by process 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_7_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_7_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_7_U' read by process 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_7_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.ap_sync_layernorm_accumulate_U0_ap_ready & AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_accumulate_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.ap_sync_layernorm_output_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0'");
                        end
                    end
                    endcase
                end
                10 : begin
                    case(index2)
                    9: begin
                        if (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_U.t_empty_n & AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_U.i_write) begin
                            if (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_U' written by process 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_accumulate_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_U' read by process 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_accumulate_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_1_U.t_empty_n & AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_1_U.i_write) begin
                            if (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_1_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_1_U' written by process 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_accumulate_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_1_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_1_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_1_U' read by process 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_accumulate_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_1_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_2_U.t_empty_n & AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_2_U.i_write) begin
                            if (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_2_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_2_U' written by process 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_accumulate_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_2_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_2_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_2_U' read by process 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_accumulate_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_2_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_3_U.t_empty_n & AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_3_U.i_write) begin
                            if (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_3_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_3_U' written by process 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_accumulate_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_3_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_3_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_3_U' read by process 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_accumulate_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_3_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_4_U.t_empty_n & AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_4_U.i_write) begin
                            if (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_4_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_4_U' written by process 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_accumulate_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_4_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_4_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_4_U' read by process 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_accumulate_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_4_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_5_U.t_empty_n & AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_5_U.i_write) begin
                            if (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_5_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_5_U' written by process 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_accumulate_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_5_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_5_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_5_U' read by process 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_accumulate_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_5_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_6_U.t_empty_n & AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_6_U.i_write) begin
                            if (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_6_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_6_U' written by process 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_accumulate_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_6_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_6_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_6_U' read by process 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_accumulate_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_6_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_7_U.t_empty_n & AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_7_U.i_write) begin
                            if (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_7_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_7_U' written by process 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_accumulate_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_7_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_7_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_7_U' read by process 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_accumulate_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_7_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.mean_V_U.if_empty_n & AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.mean_V_U.if_write) begin
                            if (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.mean_V_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.mean_V_U' written by process 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_accumulate_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.mean_V_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.mean_V_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.mean_V_U' read by process 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_accumulate_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.mean_V_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.mean_sq_V_U.if_empty_n & AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.mean_sq_V_U.if_write) begin
                            if (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.mean_sq_V_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.mean_sq_V_U' written by process 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_accumulate_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.mean_sq_V_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.mean_sq_V_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.mean_sq_V_U' read by process 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_accumulate_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.mean_sq_V_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.ap_sync_layernorm_output_U0_ap_ready & AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.ap_sync_layernorm_accumulate_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_accumulate_U0'");
                        end
                    end
                    endcase
                end
                11 : begin
                    case(index2)
                    16: begin
                        if (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.entry_proc_U0.attn_c_blk_n) begin
                            if (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.attn_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ViT_act.grp_compute_q_matmul_k_fu_639.attn_c_U' written by process 'ViT_act.grp_compute_q_matmul_k_fu_639.write_attn_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_q_matmul_k_fu_639.attn_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.attn_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ViT_act.grp_compute_q_matmul_k_fu_639.attn_c_U' read by process 'ViT_act.grp_compute_q_matmul_k_fu_639.write_attn_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_q_matmul_k_fu_639.attn_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.start_for_write_attn_U0_U.if_full_n & AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.entry_proc_U0.ap_start & ~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.entry_proc_U0.real_start & (trans_in_cnt_2 == trans_out_cnt_2) & ~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.start_for_write_attn_U0_U.if_read) begin
                            $display("//      Blocked by full output start propagation FIFO 'ViT_act.grp_compute_q_matmul_k_fu_639.start_for_write_attn_U0_U' read by process 'ViT_act.grp_compute_q_matmul_k_fu_639.write_attn_U0',");
                        end
                    end
                    17: begin
                        if (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.entry_proc_U0.attn_softmax_info_c_blk_n) begin
                            if (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.attn_softmax_info_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ViT_act.grp_compute_q_matmul_k_fu_639.attn_softmax_info_c_U' written by process 'ViT_act.grp_compute_q_matmul_k_fu_639.write_attn_softmax_info_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_q_matmul_k_fu_639.attn_softmax_info_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.attn_softmax_info_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ViT_act.grp_compute_q_matmul_k_fu_639.attn_softmax_info_c_U' read by process 'ViT_act.grp_compute_q_matmul_k_fu_639.write_attn_softmax_info_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_q_matmul_k_fu_639.attn_softmax_info_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.start_for_write_attn_softmax_info_U0_U.if_full_n & AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.entry_proc_U0.ap_start & ~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.entry_proc_U0.real_start & (trans_in_cnt_2 == trans_out_cnt_2) & ~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.start_for_write_attn_softmax_info_U0_U.if_read) begin
                            $display("//      Blocked by full output start propagation FIFO 'ViT_act.grp_compute_q_matmul_k_fu_639.start_for_write_attn_softmax_info_U0_U' read by process 'ViT_act.grp_compute_q_matmul_k_fu_639.write_attn_softmax_info_U0',");
                        end
                    end
                    12: begin
                        if (AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.ap_sync_entry_proc_U0_ap_ready & AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.entry_proc_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.ap_sync_read_x_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'ViT_act.grp_compute_q_matmul_k_fu_639.read_x_U0'");
                        end
                    end
                    13: begin
                        if (AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.ap_sync_entry_proc_U0_ap_ready & AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.entry_proc_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.ap_sync_read_k_v_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'ViT_act.grp_compute_q_matmul_k_fu_639.read_k_v_U0'");
                        end
                    end
                    14: begin
                        if (AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.ap_sync_entry_proc_U0_ap_ready & AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.entry_proc_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.ap_sync_compute_q_matmul_k_5_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'ViT_act.grp_compute_q_matmul_k_fu_639.compute_q_matmul_k_5_U0'");
                        end
                    end
                    endcase
                end
                12 : begin
                    case(index2)
                    14: begin
                        if (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.read_x_U0.grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55.q_stream_blk_n) begin
                            if (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.q_stream_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ViT_act.grp_compute_q_matmul_k_fu_639.q_stream_U' written by process 'ViT_act.grp_compute_q_matmul_k_fu_639.compute_q_matmul_k_5_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_q_matmul_k_fu_639.q_stream_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.q_stream_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ViT_act.grp_compute_q_matmul_k_fu_639.q_stream_U' read by process 'ViT_act.grp_compute_q_matmul_k_fu_639.compute_q_matmul_k_5_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_q_matmul_k_fu_639.q_stream_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.ap_sync_read_x_U0_ap_ready & AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.read_x_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.ap_sync_compute_q_matmul_k_5_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'ViT_act.grp_compute_q_matmul_k_fu_639.compute_q_matmul_k_5_U0'");
                        end
                    end
                    11: begin
                        if (AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.ap_sync_read_x_U0_ap_ready & AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.read_x_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.ap_sync_entry_proc_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'ViT_act.grp_compute_q_matmul_k_fu_639.entry_proc_U0'");
                        end
                    end
                    13: begin
                        if (AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.ap_sync_read_x_U0_ap_ready & AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.read_x_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.ap_sync_read_k_v_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'ViT_act.grp_compute_q_matmul_k_fu_639.read_k_v_U0'");
                        end
                    end
                    endcase
                end
                13 : begin
                    case(index2)
                    14: begin
                        if (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.read_k_v_U0.k_stream_blk_n) begin
                            if (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.k_stream_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ViT_act.grp_compute_q_matmul_k_fu_639.k_stream_U' written by process 'ViT_act.grp_compute_q_matmul_k_fu_639.compute_q_matmul_k_5_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_q_matmul_k_fu_639.k_stream_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.k_stream_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ViT_act.grp_compute_q_matmul_k_fu_639.k_stream_U' read by process 'ViT_act.grp_compute_q_matmul_k_fu_639.compute_q_matmul_k_5_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_q_matmul_k_fu_639.k_stream_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.ap_sync_read_k_v_U0_ap_ready & AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.read_k_v_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.ap_sync_compute_q_matmul_k_5_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'ViT_act.grp_compute_q_matmul_k_fu_639.compute_q_matmul_k_5_U0'");
                        end
                    end
                    11: begin
                        if (AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.ap_sync_read_k_v_U0_ap_ready & AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.read_k_v_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.ap_sync_entry_proc_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'ViT_act.grp_compute_q_matmul_k_fu_639.entry_proc_U0'");
                        end
                    end
                    12: begin
                        if (AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.ap_sync_read_k_v_U0_ap_ready & AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.read_k_v_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.ap_sync_read_x_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'ViT_act.grp_compute_q_matmul_k_fu_639.read_x_U0'");
                        end
                    end
                    endcase
                end
                14 : begin
                    case(index2)
                    15: begin
                        if (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.compute_q_matmul_k_5_U0.qxk_stream_blk_n) begin
                            if (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.qxk_stream_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ViT_act.grp_compute_q_matmul_k_fu_639.qxk_stream_U' written by process 'ViT_act.grp_compute_q_matmul_k_fu_639.finalize_attn_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_q_matmul_k_fu_639.qxk_stream_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.qxk_stream_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ViT_act.grp_compute_q_matmul_k_fu_639.qxk_stream_U' read by process 'ViT_act.grp_compute_q_matmul_k_fu_639.finalize_attn_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_q_matmul_k_fu_639.qxk_stream_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.start_for_finalize_attn_U0_U.if_full_n & AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.compute_q_matmul_k_5_U0.ap_start & ~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.compute_q_matmul_k_5_U0.real_start & (trans_in_cnt_1 == trans_out_cnt_1) & ~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.start_for_finalize_attn_U0_U.if_read) begin
                            $display("//      Blocked by full output start propagation FIFO 'ViT_act.grp_compute_q_matmul_k_fu_639.start_for_finalize_attn_U0_U' read by process 'ViT_act.grp_compute_q_matmul_k_fu_639.finalize_attn_U0',");
                        end
                    end
                    12: begin
                        if (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.compute_q_matmul_k_5_U0.q_stream_blk_n) begin
                            if (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.q_stream_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ViT_act.grp_compute_q_matmul_k_fu_639.q_stream_U' written by process 'ViT_act.grp_compute_q_matmul_k_fu_639.read_x_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_q_matmul_k_fu_639.q_stream_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.q_stream_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ViT_act.grp_compute_q_matmul_k_fu_639.q_stream_U' read by process 'ViT_act.grp_compute_q_matmul_k_fu_639.read_x_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_q_matmul_k_fu_639.q_stream_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.ap_sync_compute_q_matmul_k_5_U0_ap_ready & AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.compute_q_matmul_k_5_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.ap_sync_read_x_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'ViT_act.grp_compute_q_matmul_k_fu_639.read_x_U0'");
                        end
                    end
                    13: begin
                        if (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.compute_q_matmul_k_5_U0.k_stream_blk_n) begin
                            if (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.k_stream_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ViT_act.grp_compute_q_matmul_k_fu_639.k_stream_U' written by process 'ViT_act.grp_compute_q_matmul_k_fu_639.read_k_v_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_q_matmul_k_fu_639.k_stream_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.k_stream_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ViT_act.grp_compute_q_matmul_k_fu_639.k_stream_U' read by process 'ViT_act.grp_compute_q_matmul_k_fu_639.read_k_v_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_q_matmul_k_fu_639.k_stream_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.ap_sync_compute_q_matmul_k_5_U0_ap_ready & AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.compute_q_matmul_k_5_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.ap_sync_read_k_v_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'ViT_act.grp_compute_q_matmul_k_fu_639.read_k_v_U0'");
                        end
                    end
                    11: begin
                        if (AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.ap_sync_compute_q_matmul_k_5_U0_ap_ready & AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.compute_q_matmul_k_5_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.ap_sync_entry_proc_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'ViT_act.grp_compute_q_matmul_k_fu_639.entry_proc_U0'");
                        end
                    end
                    endcase
                end
                15 : begin
                    case(index2)
                    14: begin
                        if (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.finalize_attn_U0.qxk_stream_blk_n) begin
                            if (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.qxk_stream_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ViT_act.grp_compute_q_matmul_k_fu_639.qxk_stream_U' written by process 'ViT_act.grp_compute_q_matmul_k_fu_639.compute_q_matmul_k_5_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_q_matmul_k_fu_639.qxk_stream_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.qxk_stream_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ViT_act.grp_compute_q_matmul_k_fu_639.qxk_stream_U' read by process 'ViT_act.grp_compute_q_matmul_k_fu_639.compute_q_matmul_k_5_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_q_matmul_k_fu_639.qxk_stream_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.start_for_finalize_attn_U0_U.if_empty_n & AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.finalize_attn_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.start_for_finalize_attn_U0_U.if_write) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'ViT_act.grp_compute_q_matmul_k_fu_639.start_for_finalize_attn_U0_U' written by process 'ViT_act.grp_compute_q_matmul_k_fu_639.compute_q_matmul_k_5_U0',");
                        end
                    end
                    16: begin
                        if (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.finalize_attn_U0.attn_stream_blk_n) begin
                            if (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.attn_stream_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ViT_act.grp_compute_q_matmul_k_fu_639.attn_stream_U' written by process 'ViT_act.grp_compute_q_matmul_k_fu_639.write_attn_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_q_matmul_k_fu_639.attn_stream_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.attn_stream_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ViT_act.grp_compute_q_matmul_k_fu_639.attn_stream_U' read by process 'ViT_act.grp_compute_q_matmul_k_fu_639.write_attn_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_q_matmul_k_fu_639.attn_stream_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    17: begin
                        if (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.finalize_attn_U0.attn_softmax_info_stream_blk_n) begin
                            if (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.attn_softmax_info_stream_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ViT_act.grp_compute_q_matmul_k_fu_639.attn_softmax_info_stream_U' written by process 'ViT_act.grp_compute_q_matmul_k_fu_639.write_attn_softmax_info_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_q_matmul_k_fu_639.attn_softmax_info_stream_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.attn_softmax_info_stream_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ViT_act.grp_compute_q_matmul_k_fu_639.attn_softmax_info_stream_U' read by process 'ViT_act.grp_compute_q_matmul_k_fu_639.write_attn_softmax_info_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_q_matmul_k_fu_639.attn_softmax_info_stream_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                16 : begin
                    case(index2)
                    15: begin
                        if (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.write_attn_U0.grp_write_attn_Pipeline_ln245_for_each_q_patch_block_ln247_for_each_k_patch_ln249_fu_46.attn_stream_blk_n) begin
                            if (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.attn_stream_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ViT_act.grp_compute_q_matmul_k_fu_639.attn_stream_U' written by process 'ViT_act.grp_compute_q_matmul_k_fu_639.finalize_attn_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_q_matmul_k_fu_639.attn_stream_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.attn_stream_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ViT_act.grp_compute_q_matmul_k_fu_639.attn_stream_U' read by process 'ViT_act.grp_compute_q_matmul_k_fu_639.finalize_attn_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_q_matmul_k_fu_639.attn_stream_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    11: begin
                        if (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.write_attn_U0.attn_blk_n) begin
                            if (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.attn_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ViT_act.grp_compute_q_matmul_k_fu_639.attn_c_U' written by process 'ViT_act.grp_compute_q_matmul_k_fu_639.entry_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_q_matmul_k_fu_639.attn_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.attn_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ViT_act.grp_compute_q_matmul_k_fu_639.attn_c_U' read by process 'ViT_act.grp_compute_q_matmul_k_fu_639.entry_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_q_matmul_k_fu_639.attn_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.start_for_write_attn_U0_U.if_empty_n & AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.write_attn_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.start_for_write_attn_U0_U.if_write) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'ViT_act.grp_compute_q_matmul_k_fu_639.start_for_write_attn_U0_U' written by process 'ViT_act.grp_compute_q_matmul_k_fu_639.entry_proc_U0',");
                        end
                    end
                    17: begin
                        if (ap_done_reg_6 & AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.write_attn_U0.ap_done & ~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.write_attn_softmax_info_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'ViT_act.grp_compute_q_matmul_k_fu_639.write_attn_softmax_info_U0'");
                        end
                    end
                    endcase
                end
                17 : begin
                    case(index2)
                    15: begin
                        if (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.write_attn_softmax_info_U0.grp_write_attn_softmax_info_Pipeline_ln277_for_each_q_patch_fu_66.attn_softmax_info_stream_blk_n) begin
                            if (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.attn_softmax_info_stream_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ViT_act.grp_compute_q_matmul_k_fu_639.attn_softmax_info_stream_U' written by process 'ViT_act.grp_compute_q_matmul_k_fu_639.finalize_attn_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_q_matmul_k_fu_639.attn_softmax_info_stream_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.attn_softmax_info_stream_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ViT_act.grp_compute_q_matmul_k_fu_639.attn_softmax_info_stream_U' read by process 'ViT_act.grp_compute_q_matmul_k_fu_639.finalize_attn_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_q_matmul_k_fu_639.attn_softmax_info_stream_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    11: begin
                        if (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.write_attn_softmax_info_U0.attn_softmax_info_blk_n) begin
                            if (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.attn_softmax_info_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ViT_act.grp_compute_q_matmul_k_fu_639.attn_softmax_info_c_U' written by process 'ViT_act.grp_compute_q_matmul_k_fu_639.entry_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_q_matmul_k_fu_639.attn_softmax_info_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.attn_softmax_info_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ViT_act.grp_compute_q_matmul_k_fu_639.attn_softmax_info_c_U' read by process 'ViT_act.grp_compute_q_matmul_k_fu_639.entry_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_q_matmul_k_fu_639.attn_softmax_info_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.start_for_write_attn_softmax_info_U0_U.if_empty_n & AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.write_attn_softmax_info_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.start_for_write_attn_softmax_info_U0_U.if_write) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'ViT_act.grp_compute_q_matmul_k_fu_639.start_for_write_attn_softmax_info_U0_U' written by process 'ViT_act.grp_compute_q_matmul_k_fu_639.entry_proc_U0',");
                        end
                    end
                    16: begin
                        if (ap_done_reg_7 & AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.write_attn_softmax_info_U0.ap_done & ~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.write_attn_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'ViT_act.grp_compute_q_matmul_k_fu_639.write_attn_U0'");
                        end
                    end
                    endcase
                end
                18 : begin
                    case(index2)
                    24: begin
                        if (~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.entry_proc25_U0.attn_matmul_v_c_blk_n) begin
                            if (~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.attn_matmul_v_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ViT_act.grp_compute_attn_matmul_v_fu_669.attn_matmul_v_c_U' written by process 'ViT_act.grp_compute_attn_matmul_v_fu_669.write_attn_matmul_v_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_attn_matmul_v_fu_669.attn_matmul_v_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.attn_matmul_v_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ViT_act.grp_compute_attn_matmul_v_fu_669.attn_matmul_v_c_U' read by process 'ViT_act.grp_compute_attn_matmul_v_fu_669.write_attn_matmul_v_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_attn_matmul_v_fu_669.attn_matmul_v_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.start_for_write_attn_matmul_v_U0_U.if_full_n & AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.entry_proc25_U0.ap_start & ~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.entry_proc25_U0.real_start & (trans_in_cnt_5 == trans_out_cnt_5) & ~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.start_for_write_attn_matmul_v_U0_U.if_read) begin
                            $display("//      Blocked by full output start propagation FIFO 'ViT_act.grp_compute_attn_matmul_v_fu_669.start_for_write_attn_matmul_v_U0_U' read by process 'ViT_act.grp_compute_attn_matmul_v_fu_669.write_attn_matmul_v_U0',");
                        end
                    end
                    19: begin
                        if (AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.ap_sync_entry_proc25_U0_ap_ready & AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.entry_proc25_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.ap_sync_read_k_v_6_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'ViT_act.grp_compute_attn_matmul_v_fu_669.read_k_v_6_U0'");
                        end
                    end
                    20: begin
                        if (AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.ap_sync_entry_proc25_U0_ap_ready & AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.entry_proc25_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.ap_sync_read_attn_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'ViT_act.grp_compute_attn_matmul_v_fu_669.read_attn_U0'");
                        end
                    end
                    21: begin
                        if (AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.ap_sync_entry_proc25_U0_ap_ready & AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.entry_proc25_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.ap_sync_read_attn_softmax_info_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'ViT_act.grp_compute_attn_matmul_v_fu_669.read_attn_softmax_info_U0'");
                        end
                    end
                    endcase
                end
                19 : begin
                    case(index2)
                    23: begin
                        if (~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.read_k_v_6_U0.v_stream_blk_n) begin
                            if (~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.v_stream_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ViT_act.grp_compute_attn_matmul_v_fu_669.v_stream_U' written by process 'ViT_act.grp_compute_attn_matmul_v_fu_669.compute_attn_matmul_v_7_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_attn_matmul_v_fu_669.v_stream_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.v_stream_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ViT_act.grp_compute_attn_matmul_v_fu_669.v_stream_U' read by process 'ViT_act.grp_compute_attn_matmul_v_fu_669.compute_attn_matmul_v_7_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_attn_matmul_v_fu_669.v_stream_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.start_for_compute_attn_matmul_v_7_U0_U.if_full_n & AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.read_k_v_6_U0.ap_start & ~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.read_k_v_6_U0.real_start & (trans_in_cnt_4 == trans_out_cnt_4) & ~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.start_for_compute_attn_matmul_v_7_U0_U.if_read) begin
                            $display("//      Blocked by full output start propagation FIFO 'ViT_act.grp_compute_attn_matmul_v_fu_669.start_for_compute_attn_matmul_v_7_U0_U' read by process 'ViT_act.grp_compute_attn_matmul_v_fu_669.compute_attn_matmul_v_7_U0',");
                        end
                    end
                    18: begin
                        if (AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.ap_sync_read_k_v_6_U0_ap_ready & AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.read_k_v_6_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.ap_sync_entry_proc25_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'ViT_act.grp_compute_attn_matmul_v_fu_669.entry_proc25_U0'");
                        end
                    end
                    20: begin
                        if (AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.ap_sync_read_k_v_6_U0_ap_ready & AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.read_k_v_6_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.ap_sync_read_attn_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'ViT_act.grp_compute_attn_matmul_v_fu_669.read_attn_U0'");
                        end
                    end
                    21: begin
                        if (AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.ap_sync_read_k_v_6_U0_ap_ready & AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.read_k_v_6_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.ap_sync_read_attn_softmax_info_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'ViT_act.grp_compute_attn_matmul_v_fu_669.read_attn_softmax_info_U0'");
                        end
                    end
                    endcase
                end
                20 : begin
                    case(index2)
                    22: begin
                        if (~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.read_attn_U0.attn_stream_blk_n) begin
                            if (~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.attn_stream_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ViT_act.grp_compute_attn_matmul_v_fu_669.attn_stream_U' written by process 'ViT_act.grp_compute_attn_matmul_v_fu_669.prepare_attn_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_attn_matmul_v_fu_669.attn_stream_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.attn_stream_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ViT_act.grp_compute_attn_matmul_v_fu_669.attn_stream_U' read by process 'ViT_act.grp_compute_attn_matmul_v_fu_669.prepare_attn_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_attn_matmul_v_fu_669.attn_stream_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.start_for_prepare_attn_U0_U.if_full_n & AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.read_attn_U0.ap_start & ~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.read_attn_U0.real_start & (trans_in_cnt_3 == trans_out_cnt_3) & ~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.start_for_prepare_attn_U0_U.if_read) begin
                            $display("//      Blocked by full output start propagation FIFO 'ViT_act.grp_compute_attn_matmul_v_fu_669.start_for_prepare_attn_U0_U' read by process 'ViT_act.grp_compute_attn_matmul_v_fu_669.prepare_attn_U0',");
                        end
                    end
                    18: begin
                        if (AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.ap_sync_read_attn_U0_ap_ready & AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.read_attn_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.ap_sync_entry_proc25_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'ViT_act.grp_compute_attn_matmul_v_fu_669.entry_proc25_U0'");
                        end
                    end
                    19: begin
                        if (AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.ap_sync_read_attn_U0_ap_ready & AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.read_attn_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.ap_sync_read_k_v_6_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'ViT_act.grp_compute_attn_matmul_v_fu_669.read_k_v_6_U0'");
                        end
                    end
                    21: begin
                        if (AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.ap_sync_read_attn_U0_ap_ready & AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.read_attn_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.ap_sync_read_attn_softmax_info_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'ViT_act.grp_compute_attn_matmul_v_fu_669.read_attn_softmax_info_U0'");
                        end
                    end
                    endcase
                end
                21 : begin
                    case(index2)
                    23: begin
                        if (~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.read_attn_softmax_info_U0.grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55.attn_softmax_info_stream_blk_n) begin
                            if (~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.attn_softmax_info_stream_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ViT_act.grp_compute_attn_matmul_v_fu_669.attn_softmax_info_stream_U' written by process 'ViT_act.grp_compute_attn_matmul_v_fu_669.compute_attn_matmul_v_7_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_attn_matmul_v_fu_669.attn_softmax_info_stream_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.attn_softmax_info_stream_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ViT_act.grp_compute_attn_matmul_v_fu_669.attn_softmax_info_stream_U' read by process 'ViT_act.grp_compute_attn_matmul_v_fu_669.compute_attn_matmul_v_7_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_attn_matmul_v_fu_669.attn_softmax_info_stream_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    18: begin
                        if (AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.ap_sync_read_attn_softmax_info_U0_ap_ready & AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.read_attn_softmax_info_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.ap_sync_entry_proc25_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'ViT_act.grp_compute_attn_matmul_v_fu_669.entry_proc25_U0'");
                        end
                    end
                    19: begin
                        if (AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.ap_sync_read_attn_softmax_info_U0_ap_ready & AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.read_attn_softmax_info_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.ap_sync_read_k_v_6_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'ViT_act.grp_compute_attn_matmul_v_fu_669.read_k_v_6_U0'");
                        end
                    end
                    20: begin
                        if (AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.ap_sync_read_attn_softmax_info_U0_ap_ready & AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.read_attn_softmax_info_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.ap_sync_read_attn_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'ViT_act.grp_compute_attn_matmul_v_fu_669.read_attn_U0'");
                        end
                    end
                    endcase
                end
                22 : begin
                    case(index2)
                    20: begin
                        if (~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.prepare_attn_U0.attn_stream_blk_n) begin
                            if (~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.attn_stream_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ViT_act.grp_compute_attn_matmul_v_fu_669.attn_stream_U' written by process 'ViT_act.grp_compute_attn_matmul_v_fu_669.read_attn_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_attn_matmul_v_fu_669.attn_stream_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.attn_stream_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ViT_act.grp_compute_attn_matmul_v_fu_669.attn_stream_U' read by process 'ViT_act.grp_compute_attn_matmul_v_fu_669.read_attn_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_attn_matmul_v_fu_669.attn_stream_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.start_for_prepare_attn_U0_U.if_empty_n & AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.prepare_attn_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.start_for_prepare_attn_U0_U.if_write) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'ViT_act.grp_compute_attn_matmul_v_fu_669.start_for_prepare_attn_U0_U' written by process 'ViT_act.grp_compute_attn_matmul_v_fu_669.read_attn_U0',");
                        end
                    end
                    23: begin
                        if (~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.prepare_attn_U0.qxk_out_stream_blk_n) begin
                            if (~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.qxk_out_stream_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ViT_act.grp_compute_attn_matmul_v_fu_669.qxk_out_stream_U' written by process 'ViT_act.grp_compute_attn_matmul_v_fu_669.compute_attn_matmul_v_7_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_attn_matmul_v_fu_669.qxk_out_stream_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.qxk_out_stream_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ViT_act.grp_compute_attn_matmul_v_fu_669.qxk_out_stream_U' read by process 'ViT_act.grp_compute_attn_matmul_v_fu_669.compute_attn_matmul_v_7_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_attn_matmul_v_fu_669.qxk_out_stream_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                23 : begin
                    case(index2)
                    24: begin
                        if (~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.compute_attn_matmul_v_7_U0.attn_matmul_v_stream_blk_n) begin
                            if (~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.attn_matmul_v_stream_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ViT_act.grp_compute_attn_matmul_v_fu_669.attn_matmul_v_stream_U' written by process 'ViT_act.grp_compute_attn_matmul_v_fu_669.write_attn_matmul_v_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_attn_matmul_v_fu_669.attn_matmul_v_stream_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.attn_matmul_v_stream_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ViT_act.grp_compute_attn_matmul_v_fu_669.attn_matmul_v_stream_U' read by process 'ViT_act.grp_compute_attn_matmul_v_fu_669.write_attn_matmul_v_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_attn_matmul_v_fu_669.attn_matmul_v_stream_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    22: begin
                        if (~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.compute_attn_matmul_v_7_U0.qxk_out_stream_blk_n) begin
                            if (~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.qxk_out_stream_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ViT_act.grp_compute_attn_matmul_v_fu_669.qxk_out_stream_U' written by process 'ViT_act.grp_compute_attn_matmul_v_fu_669.prepare_attn_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_attn_matmul_v_fu_669.qxk_out_stream_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.qxk_out_stream_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ViT_act.grp_compute_attn_matmul_v_fu_669.qxk_out_stream_U' read by process 'ViT_act.grp_compute_attn_matmul_v_fu_669.prepare_attn_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_attn_matmul_v_fu_669.qxk_out_stream_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    21: begin
                        if (~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.compute_attn_matmul_v_7_U0.attn_softmax_info_stream_blk_n) begin
                            if (~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.attn_softmax_info_stream_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ViT_act.grp_compute_attn_matmul_v_fu_669.attn_softmax_info_stream_U' written by process 'ViT_act.grp_compute_attn_matmul_v_fu_669.read_attn_softmax_info_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_attn_matmul_v_fu_669.attn_softmax_info_stream_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.attn_softmax_info_stream_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ViT_act.grp_compute_attn_matmul_v_fu_669.attn_softmax_info_stream_U' read by process 'ViT_act.grp_compute_attn_matmul_v_fu_669.read_attn_softmax_info_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_attn_matmul_v_fu_669.attn_softmax_info_stream_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    19: begin
                        if (~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.compute_attn_matmul_v_7_U0.v_stream_blk_n) begin
                            if (~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.v_stream_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ViT_act.grp_compute_attn_matmul_v_fu_669.v_stream_U' written by process 'ViT_act.grp_compute_attn_matmul_v_fu_669.read_k_v_6_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_attn_matmul_v_fu_669.v_stream_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.v_stream_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ViT_act.grp_compute_attn_matmul_v_fu_669.v_stream_U' read by process 'ViT_act.grp_compute_attn_matmul_v_fu_669.read_k_v_6_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_attn_matmul_v_fu_669.v_stream_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.start_for_compute_attn_matmul_v_7_U0_U.if_empty_n & AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.compute_attn_matmul_v_7_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.start_for_compute_attn_matmul_v_7_U0_U.if_write) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'ViT_act.grp_compute_attn_matmul_v_fu_669.start_for_compute_attn_matmul_v_7_U0_U' written by process 'ViT_act.grp_compute_attn_matmul_v_fu_669.read_k_v_6_U0',");
                        end
                    end
                    endcase
                end
                24 : begin
                    case(index2)
                    18: begin
                        if (~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.write_attn_matmul_v_U0.attn_matmul_v_blk_n) begin
                            if (~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.attn_matmul_v_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ViT_act.grp_compute_attn_matmul_v_fu_669.attn_matmul_v_c_U' written by process 'ViT_act.grp_compute_attn_matmul_v_fu_669.entry_proc25_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_attn_matmul_v_fu_669.attn_matmul_v_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.attn_matmul_v_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ViT_act.grp_compute_attn_matmul_v_fu_669.attn_matmul_v_c_U' read by process 'ViT_act.grp_compute_attn_matmul_v_fu_669.entry_proc25_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_attn_matmul_v_fu_669.attn_matmul_v_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.start_for_write_attn_matmul_v_U0_U.if_empty_n & AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.write_attn_matmul_v_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.start_for_write_attn_matmul_v_U0_U.if_write) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'ViT_act.grp_compute_attn_matmul_v_fu_669.start_for_write_attn_matmul_v_U0_U' written by process 'ViT_act.grp_compute_attn_matmul_v_fu_669.entry_proc25_U0',");
                        end
                    end
                    23: begin
                        if (~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.write_attn_matmul_v_U0.grp_write_attn_matmul_v_Pipeline_ln403_for_each_patch_ln405_for_block_dim_fu_66.attn_matmul_v_stream_blk_n) begin
                            if (~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.attn_matmul_v_stream_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'ViT_act.grp_compute_attn_matmul_v_fu_669.attn_matmul_v_stream_U' written by process 'ViT_act.grp_compute_attn_matmul_v_fu_669.compute_attn_matmul_v_7_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_attn_matmul_v_fu_669.attn_matmul_v_stream_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.attn_matmul_v_stream_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'ViT_act.grp_compute_attn_matmul_v_fu_669.attn_matmul_v_stream_U' read by process 'ViT_act.grp_compute_attn_matmul_v_fu_669.compute_attn_matmul_v_7_U0'");
                                $fdisplay(fp, "Dependence_Channel_path ViT_act.grp_compute_attn_matmul_v_fu_669.attn_matmul_v_stream_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
            endcase
        end
    endtask

    // report
    initial begin : report_deadlock
        integer cycle_id;
        integer cycle_comp_id;
        integer record_time;
        wait (dl_reset == 1);
        cycle_id = 1;
        record_time = 0;
        while (1) begin
            @ (negedge dl_clock);
            case (CS_fsm)
                ST_DL_DETECTED: begin
                    cycle_comp_id = 2;
                    if (dl_detect_reg != dl_done_reg) begin
                        if (dl_done_reg == 'b0) begin
                            print_dl_head;
                            record_time = $time;
                        end
                        print_cycle_start(proc_path(origin), cycle_id);
                        cycle_id = cycle_id + 1;
                    end
                    else begin
                        print_dl_end((cycle_id - 1),record_time);
                        @(negedge dl_clock);
                        @(negedge dl_clock);
                        $finish;
                    end
                end
                ST_DL_REPORT: begin
                    if ((|(dl_in_vec)) & ~(|(dl_in_vec & origin_reg))) begin
                        print_cycle_chan_comp(dl_in_vec_reg, dl_in_vec);
                        print_cycle_proc_comp(proc_path(dl_in_vec), cycle_comp_id);
                        cycle_comp_id = cycle_comp_id + 1;
                    end
                    else begin
                        print_cycle_chan_comp(dl_in_vec_reg, dl_in_vec);
                    end
                end
            endcase
        end
    end
 
endmodule
