`timescale 1 ns / 1 ps

module AESL_deadlock_detector (
    input dl_reset,
    input all_finish,
    input dl_clock);

    wire [2:0] proc_0_data_FIFO_blk;
    wire [2:0] proc_0_data_PIPO_blk;
    wire [2:0] proc_0_start_FIFO_blk;
    wire [2:0] proc_0_TLF_FIFO_blk;
    wire [2:0] proc_0_input_sync_blk;
    wire [2:0] proc_0_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_0;
    reg [2:0] proc_dep_vld_vec_0_reg;
    wire [2:0] in_chan_dep_vld_vec_0;
    wire [74:0] in_chan_dep_data_vec_0;
    wire [2:0] token_in_vec_0;
    wire [2:0] out_chan_dep_vld_vec_0;
    wire [24:0] out_chan_dep_data_0;
    wire [2:0] token_out_vec_0;
    wire dl_detect_out_0;
    wire dep_chan_vld_1_0;
    wire [24:0] dep_chan_data_1_0;
    wire token_1_0;
    wire dep_chan_vld_2_0;
    wire [24:0] dep_chan_data_2_0;
    wire token_2_0;
    wire dep_chan_vld_3_0;
    wire [24:0] dep_chan_data_3_0;
    wire token_3_0;
    wire [1:0] proc_1_data_FIFO_blk;
    wire [1:0] proc_1_data_PIPO_blk;
    wire [1:0] proc_1_start_FIFO_blk;
    wire [1:0] proc_1_TLF_FIFO_blk;
    wire [1:0] proc_1_input_sync_blk;
    wire [1:0] proc_1_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_1;
    reg [1:0] proc_dep_vld_vec_1_reg;
    wire [1:0] in_chan_dep_vld_vec_1;
    wire [49:0] in_chan_dep_data_vec_1;
    wire [1:0] token_in_vec_1;
    wire [1:0] out_chan_dep_vld_vec_1;
    wire [24:0] out_chan_dep_data_1;
    wire [1:0] token_out_vec_1;
    wire dl_detect_out_1;
    wire dep_chan_vld_0_1;
    wire [24:0] dep_chan_data_0_1;
    wire token_0_1;
    wire dep_chan_vld_2_1;
    wire [24:0] dep_chan_data_2_1;
    wire token_2_1;
    wire [2:0] proc_2_data_FIFO_blk;
    wire [2:0] proc_2_data_PIPO_blk;
    wire [2:0] proc_2_start_FIFO_blk;
    wire [2:0] proc_2_TLF_FIFO_blk;
    wire [2:0] proc_2_input_sync_blk;
    wire [2:0] proc_2_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_2;
    reg [2:0] proc_dep_vld_vec_2_reg;
    wire [2:0] in_chan_dep_vld_vec_2;
    wire [74:0] in_chan_dep_data_vec_2;
    wire [2:0] token_in_vec_2;
    wire [2:0] out_chan_dep_vld_vec_2;
    wire [24:0] out_chan_dep_data_2;
    wire [2:0] token_out_vec_2;
    wire dl_detect_out_2;
    wire dep_chan_vld_0_2;
    wire [24:0] dep_chan_data_0_2;
    wire token_0_2;
    wire dep_chan_vld_1_2;
    wire [24:0] dep_chan_data_1_2;
    wire token_1_2;
    wire dep_chan_vld_3_2;
    wire [24:0] dep_chan_data_3_2;
    wire token_3_2;
    wire [1:0] proc_3_data_FIFO_blk;
    wire [1:0] proc_3_data_PIPO_blk;
    wire [1:0] proc_3_start_FIFO_blk;
    wire [1:0] proc_3_TLF_FIFO_blk;
    wire [1:0] proc_3_input_sync_blk;
    wire [1:0] proc_3_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_3;
    reg [1:0] proc_dep_vld_vec_3_reg;
    wire [1:0] in_chan_dep_vld_vec_3;
    wire [49:0] in_chan_dep_data_vec_3;
    wire [1:0] token_in_vec_3;
    wire [1:0] out_chan_dep_vld_vec_3;
    wire [24:0] out_chan_dep_data_3;
    wire [1:0] token_out_vec_3;
    wire dl_detect_out_3;
    wire dep_chan_vld_0_3;
    wire [24:0] dep_chan_data_0_3;
    wire token_0_3;
    wire dep_chan_vld_2_3;
    wire [24:0] dep_chan_data_2_3;
    wire token_2_3;
    wire [0:0] proc_4_data_FIFO_blk;
    wire [0:0] proc_4_data_PIPO_blk;
    wire [0:0] proc_4_start_FIFO_blk;
    wire [0:0] proc_4_TLF_FIFO_blk;
    wire [0:0] proc_4_input_sync_blk;
    wire [0:0] proc_4_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_4;
    reg [0:0] proc_dep_vld_vec_4_reg;
    wire [0:0] in_chan_dep_vld_vec_4;
    wire [24:0] in_chan_dep_data_vec_4;
    wire [0:0] token_in_vec_4;
    wire [0:0] out_chan_dep_vld_vec_4;
    wire [24:0] out_chan_dep_data_4;
    wire [0:0] token_out_vec_4;
    wire dl_detect_out_4;
    wire dep_chan_vld_8_4;
    wire [24:0] dep_chan_data_8_4;
    wire token_8_4;
    wire [1:0] proc_5_data_FIFO_blk;
    wire [1:0] proc_5_data_PIPO_blk;
    wire [1:0] proc_5_start_FIFO_blk;
    wire [1:0] proc_5_TLF_FIFO_blk;
    wire [1:0] proc_5_input_sync_blk;
    wire [1:0] proc_5_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_5;
    reg [1:0] proc_dep_vld_vec_5_reg;
    wire [1:0] in_chan_dep_vld_vec_5;
    wire [49:0] in_chan_dep_data_vec_5;
    wire [1:0] token_in_vec_5;
    wire [1:0] out_chan_dep_vld_vec_5;
    wire [24:0] out_chan_dep_data_5;
    wire [1:0] token_out_vec_5;
    wire dl_detect_out_5;
    wire dep_chan_vld_6_5;
    wire [24:0] dep_chan_data_6_5;
    wire token_6_5;
    wire dep_chan_vld_7_5;
    wire [24:0] dep_chan_data_7_5;
    wire token_7_5;
    wire [1:0] proc_6_data_FIFO_blk;
    wire [1:0] proc_6_data_PIPO_blk;
    wire [1:0] proc_6_start_FIFO_blk;
    wire [1:0] proc_6_TLF_FIFO_blk;
    wire [1:0] proc_6_input_sync_blk;
    wire [1:0] proc_6_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_6;
    reg [1:0] proc_dep_vld_vec_6_reg;
    wire [1:0] in_chan_dep_vld_vec_6;
    wire [49:0] in_chan_dep_data_vec_6;
    wire [1:0] token_in_vec_6;
    wire [1:0] out_chan_dep_vld_vec_6;
    wire [24:0] out_chan_dep_data_6;
    wire [1:0] token_out_vec_6;
    wire dl_detect_out_6;
    wire dep_chan_vld_5_6;
    wire [24:0] dep_chan_data_5_6;
    wire token_5_6;
    wire dep_chan_vld_7_6;
    wire [24:0] dep_chan_data_7_6;
    wire token_7_6;
    wire [2:0] proc_7_data_FIFO_blk;
    wire [2:0] proc_7_data_PIPO_blk;
    wire [2:0] proc_7_start_FIFO_blk;
    wire [2:0] proc_7_TLF_FIFO_blk;
    wire [2:0] proc_7_input_sync_blk;
    wire [2:0] proc_7_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_7;
    reg [2:0] proc_dep_vld_vec_7_reg;
    wire [1:0] in_chan_dep_vld_vec_7;
    wire [49:0] in_chan_dep_data_vec_7;
    wire [1:0] token_in_vec_7;
    wire [2:0] out_chan_dep_vld_vec_7;
    wire [24:0] out_chan_dep_data_7;
    wire [2:0] token_out_vec_7;
    wire dl_detect_out_7;
    wire dep_chan_vld_5_7;
    wire [24:0] dep_chan_data_5_7;
    wire token_5_7;
    wire dep_chan_vld_6_7;
    wire [24:0] dep_chan_data_6_7;
    wire token_6_7;
    wire [0:0] proc_8_data_FIFO_blk;
    wire [0:0] proc_8_data_PIPO_blk;
    wire [0:0] proc_8_start_FIFO_blk;
    wire [0:0] proc_8_TLF_FIFO_blk;
    wire [0:0] proc_8_input_sync_blk;
    wire [0:0] proc_8_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_8;
    reg [0:0] proc_dep_vld_vec_8_reg;
    wire [1:0] in_chan_dep_vld_vec_8;
    wire [49:0] in_chan_dep_data_vec_8;
    wire [1:0] token_in_vec_8;
    wire [0:0] out_chan_dep_vld_vec_8;
    wire [24:0] out_chan_dep_data_8;
    wire [0:0] token_out_vec_8;
    wire dl_detect_out_8;
    wire dep_chan_vld_4_8;
    wire [24:0] dep_chan_data_4_8;
    wire token_4_8;
    wire dep_chan_vld_7_8;
    wire [24:0] dep_chan_data_7_8;
    wire token_7_8;
    wire [0:0] proc_9_data_FIFO_blk;
    wire [0:0] proc_9_data_PIPO_blk;
    wire [0:0] proc_9_start_FIFO_blk;
    wire [0:0] proc_9_TLF_FIFO_blk;
    wire [0:0] proc_9_input_sync_blk;
    wire [0:0] proc_9_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_9;
    reg [0:0] proc_dep_vld_vec_9_reg;
    wire [0:0] in_chan_dep_vld_vec_9;
    wire [24:0] in_chan_dep_data_vec_9;
    wire [0:0] token_in_vec_9;
    wire [0:0] out_chan_dep_vld_vec_9;
    wire [24:0] out_chan_dep_data_9;
    wire [0:0] token_out_vec_9;
    wire dl_detect_out_9;
    wire dep_chan_vld_10_9;
    wire [24:0] dep_chan_data_10_9;
    wire token_10_9;
    wire [0:0] proc_10_data_FIFO_blk;
    wire [0:0] proc_10_data_PIPO_blk;
    wire [0:0] proc_10_start_FIFO_blk;
    wire [0:0] proc_10_TLF_FIFO_blk;
    wire [0:0] proc_10_input_sync_blk;
    wire [0:0] proc_10_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_10;
    reg [0:0] proc_dep_vld_vec_10_reg;
    wire [0:0] in_chan_dep_vld_vec_10;
    wire [24:0] in_chan_dep_data_vec_10;
    wire [0:0] token_in_vec_10;
    wire [0:0] out_chan_dep_vld_vec_10;
    wire [24:0] out_chan_dep_data_10;
    wire [0:0] token_out_vec_10;
    wire dl_detect_out_10;
    wire dep_chan_vld_9_10;
    wire [24:0] dep_chan_data_9_10;
    wire token_9_10;
    wire [4:0] proc_11_data_FIFO_blk;
    wire [4:0] proc_11_data_PIPO_blk;
    wire [4:0] proc_11_start_FIFO_blk;
    wire [4:0] proc_11_TLF_FIFO_blk;
    wire [4:0] proc_11_input_sync_blk;
    wire [4:0] proc_11_output_sync_blk;
    wire [4:0] proc_dep_vld_vec_11;
    reg [4:0] proc_dep_vld_vec_11_reg;
    wire [4:0] in_chan_dep_vld_vec_11;
    wire [124:0] in_chan_dep_data_vec_11;
    wire [4:0] token_in_vec_11;
    wire [4:0] out_chan_dep_vld_vec_11;
    wire [24:0] out_chan_dep_data_11;
    wire [4:0] token_out_vec_11;
    wire dl_detect_out_11;
    wire dep_chan_vld_12_11;
    wire [24:0] dep_chan_data_12_11;
    wire token_12_11;
    wire dep_chan_vld_13_11;
    wire [24:0] dep_chan_data_13_11;
    wire token_13_11;
    wire dep_chan_vld_14_11;
    wire [24:0] dep_chan_data_14_11;
    wire token_14_11;
    wire dep_chan_vld_16_11;
    wire [24:0] dep_chan_data_16_11;
    wire token_16_11;
    wire dep_chan_vld_17_11;
    wire [24:0] dep_chan_data_17_11;
    wire token_17_11;
    wire [2:0] proc_12_data_FIFO_blk;
    wire [2:0] proc_12_data_PIPO_blk;
    wire [2:0] proc_12_start_FIFO_blk;
    wire [2:0] proc_12_TLF_FIFO_blk;
    wire [2:0] proc_12_input_sync_blk;
    wire [2:0] proc_12_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_12;
    reg [2:0] proc_dep_vld_vec_12_reg;
    wire [2:0] in_chan_dep_vld_vec_12;
    wire [74:0] in_chan_dep_data_vec_12;
    wire [2:0] token_in_vec_12;
    wire [2:0] out_chan_dep_vld_vec_12;
    wire [24:0] out_chan_dep_data_12;
    wire [2:0] token_out_vec_12;
    wire dl_detect_out_12;
    wire dep_chan_vld_11_12;
    wire [24:0] dep_chan_data_11_12;
    wire token_11_12;
    wire dep_chan_vld_13_12;
    wire [24:0] dep_chan_data_13_12;
    wire token_13_12;
    wire dep_chan_vld_14_12;
    wire [24:0] dep_chan_data_14_12;
    wire token_14_12;
    wire [2:0] proc_13_data_FIFO_blk;
    wire [2:0] proc_13_data_PIPO_blk;
    wire [2:0] proc_13_start_FIFO_blk;
    wire [2:0] proc_13_TLF_FIFO_blk;
    wire [2:0] proc_13_input_sync_blk;
    wire [2:0] proc_13_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_13;
    reg [2:0] proc_dep_vld_vec_13_reg;
    wire [2:0] in_chan_dep_vld_vec_13;
    wire [74:0] in_chan_dep_data_vec_13;
    wire [2:0] token_in_vec_13;
    wire [2:0] out_chan_dep_vld_vec_13;
    wire [24:0] out_chan_dep_data_13;
    wire [2:0] token_out_vec_13;
    wire dl_detect_out_13;
    wire dep_chan_vld_11_13;
    wire [24:0] dep_chan_data_11_13;
    wire token_11_13;
    wire dep_chan_vld_12_13;
    wire [24:0] dep_chan_data_12_13;
    wire token_12_13;
    wire dep_chan_vld_14_13;
    wire [24:0] dep_chan_data_14_13;
    wire token_14_13;
    wire [3:0] proc_14_data_FIFO_blk;
    wire [3:0] proc_14_data_PIPO_blk;
    wire [3:0] proc_14_start_FIFO_blk;
    wire [3:0] proc_14_TLF_FIFO_blk;
    wire [3:0] proc_14_input_sync_blk;
    wire [3:0] proc_14_output_sync_blk;
    wire [3:0] proc_dep_vld_vec_14;
    reg [3:0] proc_dep_vld_vec_14_reg;
    wire [3:0] in_chan_dep_vld_vec_14;
    wire [99:0] in_chan_dep_data_vec_14;
    wire [3:0] token_in_vec_14;
    wire [3:0] out_chan_dep_vld_vec_14;
    wire [24:0] out_chan_dep_data_14;
    wire [3:0] token_out_vec_14;
    wire dl_detect_out_14;
    wire dep_chan_vld_11_14;
    wire [24:0] dep_chan_data_11_14;
    wire token_11_14;
    wire dep_chan_vld_12_14;
    wire [24:0] dep_chan_data_12_14;
    wire token_12_14;
    wire dep_chan_vld_13_14;
    wire [24:0] dep_chan_data_13_14;
    wire token_13_14;
    wire dep_chan_vld_15_14;
    wire [24:0] dep_chan_data_15_14;
    wire token_15_14;
    wire [2:0] proc_15_data_FIFO_blk;
    wire [2:0] proc_15_data_PIPO_blk;
    wire [2:0] proc_15_start_FIFO_blk;
    wire [2:0] proc_15_TLF_FIFO_blk;
    wire [2:0] proc_15_input_sync_blk;
    wire [2:0] proc_15_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_15;
    reg [2:0] proc_dep_vld_vec_15_reg;
    wire [2:0] in_chan_dep_vld_vec_15;
    wire [74:0] in_chan_dep_data_vec_15;
    wire [2:0] token_in_vec_15;
    wire [2:0] out_chan_dep_vld_vec_15;
    wire [24:0] out_chan_dep_data_15;
    wire [2:0] token_out_vec_15;
    wire dl_detect_out_15;
    wire dep_chan_vld_14_15;
    wire [24:0] dep_chan_data_14_15;
    wire token_14_15;
    wire dep_chan_vld_16_15;
    wire [24:0] dep_chan_data_16_15;
    wire token_16_15;
    wire dep_chan_vld_17_15;
    wire [24:0] dep_chan_data_17_15;
    wire token_17_15;
    wire [2:0] proc_16_data_FIFO_blk;
    wire [2:0] proc_16_data_PIPO_blk;
    wire [2:0] proc_16_start_FIFO_blk;
    wire [2:0] proc_16_TLF_FIFO_blk;
    wire [2:0] proc_16_input_sync_blk;
    wire [2:0] proc_16_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_16;
    reg [2:0] proc_dep_vld_vec_16_reg;
    wire [2:0] in_chan_dep_vld_vec_16;
    wire [74:0] in_chan_dep_data_vec_16;
    wire [2:0] token_in_vec_16;
    wire [2:0] out_chan_dep_vld_vec_16;
    wire [24:0] out_chan_dep_data_16;
    wire [2:0] token_out_vec_16;
    wire dl_detect_out_16;
    wire dep_chan_vld_11_16;
    wire [24:0] dep_chan_data_11_16;
    wire token_11_16;
    wire dep_chan_vld_15_16;
    wire [24:0] dep_chan_data_15_16;
    wire token_15_16;
    wire dep_chan_vld_17_16;
    wire [24:0] dep_chan_data_17_16;
    wire token_17_16;
    wire [2:0] proc_17_data_FIFO_blk;
    wire [2:0] proc_17_data_PIPO_blk;
    wire [2:0] proc_17_start_FIFO_blk;
    wire [2:0] proc_17_TLF_FIFO_blk;
    wire [2:0] proc_17_input_sync_blk;
    wire [2:0] proc_17_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_17;
    reg [2:0] proc_dep_vld_vec_17_reg;
    wire [2:0] in_chan_dep_vld_vec_17;
    wire [74:0] in_chan_dep_data_vec_17;
    wire [2:0] token_in_vec_17;
    wire [2:0] out_chan_dep_vld_vec_17;
    wire [24:0] out_chan_dep_data_17;
    wire [2:0] token_out_vec_17;
    wire dl_detect_out_17;
    wire dep_chan_vld_11_17;
    wire [24:0] dep_chan_data_11_17;
    wire token_11_17;
    wire dep_chan_vld_15_17;
    wire [24:0] dep_chan_data_15_17;
    wire token_15_17;
    wire dep_chan_vld_16_17;
    wire [24:0] dep_chan_data_16_17;
    wire token_16_17;
    wire [3:0] proc_18_data_FIFO_blk;
    wire [3:0] proc_18_data_PIPO_blk;
    wire [3:0] proc_18_start_FIFO_blk;
    wire [3:0] proc_18_TLF_FIFO_blk;
    wire [3:0] proc_18_input_sync_blk;
    wire [3:0] proc_18_output_sync_blk;
    wire [3:0] proc_dep_vld_vec_18;
    reg [3:0] proc_dep_vld_vec_18_reg;
    wire [3:0] in_chan_dep_vld_vec_18;
    wire [99:0] in_chan_dep_data_vec_18;
    wire [3:0] token_in_vec_18;
    wire [3:0] out_chan_dep_vld_vec_18;
    wire [24:0] out_chan_dep_data_18;
    wire [3:0] token_out_vec_18;
    wire dl_detect_out_18;
    wire dep_chan_vld_19_18;
    wire [24:0] dep_chan_data_19_18;
    wire token_19_18;
    wire dep_chan_vld_20_18;
    wire [24:0] dep_chan_data_20_18;
    wire token_20_18;
    wire dep_chan_vld_21_18;
    wire [24:0] dep_chan_data_21_18;
    wire token_21_18;
    wire dep_chan_vld_24_18;
    wire [24:0] dep_chan_data_24_18;
    wire token_24_18;
    wire [3:0] proc_19_data_FIFO_blk;
    wire [3:0] proc_19_data_PIPO_blk;
    wire [3:0] proc_19_start_FIFO_blk;
    wire [3:0] proc_19_TLF_FIFO_blk;
    wire [3:0] proc_19_input_sync_blk;
    wire [3:0] proc_19_output_sync_blk;
    wire [3:0] proc_dep_vld_vec_19;
    reg [3:0] proc_dep_vld_vec_19_reg;
    wire [3:0] in_chan_dep_vld_vec_19;
    wire [99:0] in_chan_dep_data_vec_19;
    wire [3:0] token_in_vec_19;
    wire [3:0] out_chan_dep_vld_vec_19;
    wire [24:0] out_chan_dep_data_19;
    wire [3:0] token_out_vec_19;
    wire dl_detect_out_19;
    wire dep_chan_vld_18_19;
    wire [24:0] dep_chan_data_18_19;
    wire token_18_19;
    wire dep_chan_vld_20_19;
    wire [24:0] dep_chan_data_20_19;
    wire token_20_19;
    wire dep_chan_vld_21_19;
    wire [24:0] dep_chan_data_21_19;
    wire token_21_19;
    wire dep_chan_vld_23_19;
    wire [24:0] dep_chan_data_23_19;
    wire token_23_19;
    wire [3:0] proc_20_data_FIFO_blk;
    wire [3:0] proc_20_data_PIPO_blk;
    wire [3:0] proc_20_start_FIFO_blk;
    wire [3:0] proc_20_TLF_FIFO_blk;
    wire [3:0] proc_20_input_sync_blk;
    wire [3:0] proc_20_output_sync_blk;
    wire [3:0] proc_dep_vld_vec_20;
    reg [3:0] proc_dep_vld_vec_20_reg;
    wire [3:0] in_chan_dep_vld_vec_20;
    wire [99:0] in_chan_dep_data_vec_20;
    wire [3:0] token_in_vec_20;
    wire [3:0] out_chan_dep_vld_vec_20;
    wire [24:0] out_chan_dep_data_20;
    wire [3:0] token_out_vec_20;
    wire dl_detect_out_20;
    wire dep_chan_vld_18_20;
    wire [24:0] dep_chan_data_18_20;
    wire token_18_20;
    wire dep_chan_vld_19_20;
    wire [24:0] dep_chan_data_19_20;
    wire token_19_20;
    wire dep_chan_vld_21_20;
    wire [24:0] dep_chan_data_21_20;
    wire token_21_20;
    wire dep_chan_vld_22_20;
    wire [24:0] dep_chan_data_22_20;
    wire token_22_20;
    wire [3:0] proc_21_data_FIFO_blk;
    wire [3:0] proc_21_data_PIPO_blk;
    wire [3:0] proc_21_start_FIFO_blk;
    wire [3:0] proc_21_TLF_FIFO_blk;
    wire [3:0] proc_21_input_sync_blk;
    wire [3:0] proc_21_output_sync_blk;
    wire [3:0] proc_dep_vld_vec_21;
    reg [3:0] proc_dep_vld_vec_21_reg;
    wire [3:0] in_chan_dep_vld_vec_21;
    wire [99:0] in_chan_dep_data_vec_21;
    wire [3:0] token_in_vec_21;
    wire [3:0] out_chan_dep_vld_vec_21;
    wire [24:0] out_chan_dep_data_21;
    wire [3:0] token_out_vec_21;
    wire dl_detect_out_21;
    wire dep_chan_vld_18_21;
    wire [24:0] dep_chan_data_18_21;
    wire token_18_21;
    wire dep_chan_vld_19_21;
    wire [24:0] dep_chan_data_19_21;
    wire token_19_21;
    wire dep_chan_vld_20_21;
    wire [24:0] dep_chan_data_20_21;
    wire token_20_21;
    wire dep_chan_vld_23_21;
    wire [24:0] dep_chan_data_23_21;
    wire token_23_21;
    wire [1:0] proc_22_data_FIFO_blk;
    wire [1:0] proc_22_data_PIPO_blk;
    wire [1:0] proc_22_start_FIFO_blk;
    wire [1:0] proc_22_TLF_FIFO_blk;
    wire [1:0] proc_22_input_sync_blk;
    wire [1:0] proc_22_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_22;
    reg [1:0] proc_dep_vld_vec_22_reg;
    wire [1:0] in_chan_dep_vld_vec_22;
    wire [49:0] in_chan_dep_data_vec_22;
    wire [1:0] token_in_vec_22;
    wire [1:0] out_chan_dep_vld_vec_22;
    wire [24:0] out_chan_dep_data_22;
    wire [1:0] token_out_vec_22;
    wire dl_detect_out_22;
    wire dep_chan_vld_20_22;
    wire [24:0] dep_chan_data_20_22;
    wire token_20_22;
    wire dep_chan_vld_23_22;
    wire [24:0] dep_chan_data_23_22;
    wire token_23_22;
    wire [3:0] proc_23_data_FIFO_blk;
    wire [3:0] proc_23_data_PIPO_blk;
    wire [3:0] proc_23_start_FIFO_blk;
    wire [3:0] proc_23_TLF_FIFO_blk;
    wire [3:0] proc_23_input_sync_blk;
    wire [3:0] proc_23_output_sync_blk;
    wire [3:0] proc_dep_vld_vec_23;
    reg [3:0] proc_dep_vld_vec_23_reg;
    wire [3:0] in_chan_dep_vld_vec_23;
    wire [99:0] in_chan_dep_data_vec_23;
    wire [3:0] token_in_vec_23;
    wire [3:0] out_chan_dep_vld_vec_23;
    wire [24:0] out_chan_dep_data_23;
    wire [3:0] token_out_vec_23;
    wire dl_detect_out_23;
    wire dep_chan_vld_19_23;
    wire [24:0] dep_chan_data_19_23;
    wire token_19_23;
    wire dep_chan_vld_21_23;
    wire [24:0] dep_chan_data_21_23;
    wire token_21_23;
    wire dep_chan_vld_22_23;
    wire [24:0] dep_chan_data_22_23;
    wire token_22_23;
    wire dep_chan_vld_24_23;
    wire [24:0] dep_chan_data_24_23;
    wire token_24_23;
    wire [1:0] proc_24_data_FIFO_blk;
    wire [1:0] proc_24_data_PIPO_blk;
    wire [1:0] proc_24_start_FIFO_blk;
    wire [1:0] proc_24_TLF_FIFO_blk;
    wire [1:0] proc_24_input_sync_blk;
    wire [1:0] proc_24_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_24;
    reg [1:0] proc_dep_vld_vec_24_reg;
    wire [1:0] in_chan_dep_vld_vec_24;
    wire [49:0] in_chan_dep_data_vec_24;
    wire [1:0] token_in_vec_24;
    wire [1:0] out_chan_dep_vld_vec_24;
    wire [24:0] out_chan_dep_data_24;
    wire [1:0] token_out_vec_24;
    wire dl_detect_out_24;
    wire dep_chan_vld_18_24;
    wire [24:0] dep_chan_data_18_24;
    wire token_18_24;
    wire dep_chan_vld_23_24;
    wire [24:0] dep_chan_data_23_24;
    wire token_23_24;
    wire [24:0] dl_in_vec;
    wire dl_detect_out;
    wire token_clear;
    wire [24:0] origin;

    reg ap_done_reg_0;// for module AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_0 <= 'b0;
        end
        else begin
            ap_done_reg_0 <= AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.ap_done & ~AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.ap_continue;
        end
    end

    reg ap_done_reg_1;// for module AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.patch_embed_accumulate_read_16u_128u_8u_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_1 <= 'b0;
        end
        else begin
            ap_done_reg_1 <= AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.patch_embed_accumulate_read_16u_128u_8u_U0.ap_done & ~AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.patch_embed_accumulate_read_16u_128u_8u_U0.ap_continue;
        end
    end

    reg ap_done_reg_2;// for module AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.patch_embed_accumulate_compute_16u_128u_8u_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_2 <= 'b0;
        end
        else begin
            ap_done_reg_2 <= AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.patch_embed_accumulate_compute_16u_128u_8u_U0.ap_done & ~AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.patch_embed_accumulate_compute_16u_128u_8u_U0.ap_continue;
        end
    end

    reg ap_done_reg_3;// for module AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_output_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_3 <= 'b0;
        end
        else begin
            ap_done_reg_3 <= AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_output_U0.ap_done & ~AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_output_U0.ap_continue;
        end
    end

    reg ap_done_reg_4;// for module AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_accumulate_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_4 <= 'b0;
        end
        else begin
            ap_done_reg_4 <= AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_accumulate_U0.ap_done & ~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_accumulate_U0.ap_continue;
        end
    end

    reg ap_done_reg_5;// for module AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_5 <= 'b0;
        end
        else begin
            ap_done_reg_5 <= AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0.ap_done & ~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0.ap_continue;
        end
    end

    reg ap_done_reg_6;// for module AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.write_attn_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_6 <= 'b0;
        end
        else begin
            ap_done_reg_6 <= AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.write_attn_U0.ap_done & ~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.write_attn_U0.ap_continue;
        end
    end

    reg ap_done_reg_7;// for module AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.write_attn_softmax_info_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_7 <= 'b0;
        end
        else begin
            ap_done_reg_7 <= AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.write_attn_softmax_info_U0.ap_done & ~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.write_attn_softmax_info_U0.ap_continue;
        end
    end

reg [15:0] trans_in_cnt_0;// for process AESL_inst_ViT_act.grp_compute_linear_fu_486.entry_proc24_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_0 <= 16'h0;
    end
    else if (AESL_inst_ViT_act.grp_compute_linear_fu_486.entry_proc24_U0.start_write == 1'b1) begin
        trans_in_cnt_0 <= trans_in_cnt_0 + 16'h1;
    end
    else begin
        trans_in_cnt_0 <= trans_in_cnt_0;
    end
end

reg [15:0] trans_out_cnt_0;// for process AESL_inst_ViT_act.grp_compute_linear_fu_486.entry_proc24_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_0 <= 16'h0;
    end
    else if (AESL_inst_ViT_act.grp_compute_linear_fu_486.entry_proc24_U0.ap_done == 1'b1 && AESL_inst_ViT_act.grp_compute_linear_fu_486.entry_proc24_U0.ap_continue == 1'b1) begin
        trans_out_cnt_0 <= trans_out_cnt_0 + 16'h1;
    end
    else begin
        trans_out_cnt_0 <= trans_out_cnt_0;
    end
end

reg [15:0] trans_in_cnt_1;// for process AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.compute_q_matmul_k_5_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_1 <= 16'h0;
    end
    else if (AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.compute_q_matmul_k_5_U0.start_write == 1'b1) begin
        trans_in_cnt_1 <= trans_in_cnt_1 + 16'h1;
    end
    else begin
        trans_in_cnt_1 <= trans_in_cnt_1;
    end
end

reg [15:0] trans_out_cnt_1;// for process AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.compute_q_matmul_k_5_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_1 <= 16'h0;
    end
    else if (AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.compute_q_matmul_k_5_U0.ap_done == 1'b1 && AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.compute_q_matmul_k_5_U0.ap_continue == 1'b1) begin
        trans_out_cnt_1 <= trans_out_cnt_1 + 16'h1;
    end
    else begin
        trans_out_cnt_1 <= trans_out_cnt_1;
    end
end

reg [15:0] trans_in_cnt_2;// for process AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.entry_proc_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_2 <= 16'h0;
    end
    else if (AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.entry_proc_U0.start_write == 1'b1) begin
        trans_in_cnt_2 <= trans_in_cnt_2 + 16'h1;
    end
    else begin
        trans_in_cnt_2 <= trans_in_cnt_2;
    end
end

reg [15:0] trans_out_cnt_2;// for process AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.entry_proc_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_2 <= 16'h0;
    end
    else if (AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.entry_proc_U0.ap_done == 1'b1 && AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.entry_proc_U0.ap_continue == 1'b1) begin
        trans_out_cnt_2 <= trans_out_cnt_2 + 16'h1;
    end
    else begin
        trans_out_cnt_2 <= trans_out_cnt_2;
    end
end

reg [15:0] trans_in_cnt_3;// for process AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.read_attn_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_3 <= 16'h0;
    end
    else if (AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.read_attn_U0.start_write == 1'b1) begin
        trans_in_cnt_3 <= trans_in_cnt_3 + 16'h1;
    end
    else begin
        trans_in_cnt_3 <= trans_in_cnt_3;
    end
end

reg [15:0] trans_out_cnt_3;// for process AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.read_attn_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_3 <= 16'h0;
    end
    else if (AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.read_attn_U0.ap_done == 1'b1 && AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.read_attn_U0.ap_continue == 1'b1) begin
        trans_out_cnt_3 <= trans_out_cnt_3 + 16'h1;
    end
    else begin
        trans_out_cnt_3 <= trans_out_cnt_3;
    end
end

reg [15:0] trans_in_cnt_4;// for process AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.read_k_v_6_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_4 <= 16'h0;
    end
    else if (AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.read_k_v_6_U0.start_write == 1'b1) begin
        trans_in_cnt_4 <= trans_in_cnt_4 + 16'h1;
    end
    else begin
        trans_in_cnt_4 <= trans_in_cnt_4;
    end
end

reg [15:0] trans_out_cnt_4;// for process AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.read_k_v_6_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_4 <= 16'h0;
    end
    else if (AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.read_k_v_6_U0.ap_done == 1'b1 && AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.read_k_v_6_U0.ap_continue == 1'b1) begin
        trans_out_cnt_4 <= trans_out_cnt_4 + 16'h1;
    end
    else begin
        trans_out_cnt_4 <= trans_out_cnt_4;
    end
end

reg [15:0] trans_in_cnt_5;// for process AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.entry_proc25_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_5 <= 16'h0;
    end
    else if (AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.entry_proc25_U0.start_write == 1'b1) begin
        trans_in_cnt_5 <= trans_in_cnt_5 + 16'h1;
    end
    else begin
        trans_in_cnt_5 <= trans_in_cnt_5;
    end
end

reg [15:0] trans_out_cnt_5;// for process AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.entry_proc25_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_5 <= 16'h0;
    end
    else if (AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.entry_proc25_U0.ap_done == 1'b1 && AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.entry_proc25_U0.ap_continue == 1'b1) begin
        trans_out_cnt_5 <= trans_out_cnt_5 + 16'h1;
    end
    else begin
        trans_out_cnt_5 <= trans_out_cnt_5;
    end
end

    // Process: AESL_inst_ViT_act.grp_compute_linear_fu_486.entry_proc24_U0
    AESL_deadlock_detect_unit #(25, 0, 3, 3) AESL_deadlock_detect_unit_0 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_0),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_0),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_0),
        .token_in_vec(token_in_vec_0),
        .dl_detect_in(dl_detect_out),
        .origin(origin[0]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_0),
        .out_chan_dep_data(out_chan_dep_data_0),
        .token_out_vec(token_out_vec_0),
        .dl_detect_out(dl_in_vec[0]));

    assign proc_0_data_FIFO_blk[0] = 1'b0 | (~AESL_inst_ViT_act.grp_compute_linear_fu_486.entry_proc24_U0.dst_c_blk_n);
    assign proc_0_data_PIPO_blk[0] = 1'b0;
    assign proc_0_start_FIFO_blk[0] = 1'b0 | (~AESL_inst_ViT_act.grp_compute_linear_fu_486.start_for_write_out_stream_direct_U0_U.if_full_n & AESL_inst_ViT_act.grp_compute_linear_fu_486.entry_proc24_U0.ap_start & ~AESL_inst_ViT_act.grp_compute_linear_fu_486.entry_proc24_U0.real_start & (trans_in_cnt_0 == trans_out_cnt_0) & ~AESL_inst_ViT_act.grp_compute_linear_fu_486.start_for_write_out_stream_direct_U0_U.if_read);
    assign proc_0_TLF_FIFO_blk[0] = 1'b0;
    assign proc_0_input_sync_blk[0] = 1'b0;
    assign proc_0_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_0[0] = dl_detect_out ? proc_dep_vld_vec_0_reg[0] : (proc_0_data_FIFO_blk[0] | proc_0_data_PIPO_blk[0] | proc_0_start_FIFO_blk[0] | proc_0_TLF_FIFO_blk[0] | proc_0_input_sync_blk[0] | proc_0_output_sync_blk[0]);
    assign proc_0_data_FIFO_blk[1] = 1'b0;
    assign proc_0_data_PIPO_blk[1] = 1'b0;
    assign proc_0_start_FIFO_blk[1] = 1'b0;
    assign proc_0_TLF_FIFO_blk[1] = 1'b0;
    assign proc_0_input_sync_blk[1] = 1'b0 | (AESL_inst_ViT_act.grp_compute_linear_fu_486.ap_sync_entry_proc24_U0_ap_ready & AESL_inst_ViT_act.grp_compute_linear_fu_486.entry_proc24_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_linear_fu_486.ap_sync_read_in_stream_direct_U0_ap_ready);
    assign proc_0_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_0[1] = dl_detect_out ? proc_dep_vld_vec_0_reg[1] : (proc_0_data_FIFO_blk[1] | proc_0_data_PIPO_blk[1] | proc_0_start_FIFO_blk[1] | proc_0_TLF_FIFO_blk[1] | proc_0_input_sync_blk[1] | proc_0_output_sync_blk[1]);
    assign proc_0_data_FIFO_blk[2] = 1'b0;
    assign proc_0_data_PIPO_blk[2] = 1'b0;
    assign proc_0_start_FIFO_blk[2] = 1'b0;
    assign proc_0_TLF_FIFO_blk[2] = 1'b0;
    assign proc_0_input_sync_blk[2] = 1'b0 | (AESL_inst_ViT_act.grp_compute_linear_fu_486.ap_sync_entry_proc24_U0_ap_ready & AESL_inst_ViT_act.grp_compute_linear_fu_486.entry_proc24_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_linear_fu_486.ap_sync_compute_linear_on_stream_U0_ap_ready);
    assign proc_0_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_0[2] = dl_detect_out ? proc_dep_vld_vec_0_reg[2] : (proc_0_data_FIFO_blk[2] | proc_0_data_PIPO_blk[2] | proc_0_start_FIFO_blk[2] | proc_0_TLF_FIFO_blk[2] | proc_0_input_sync_blk[2] | proc_0_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_0_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_0_reg <= proc_dep_vld_vec_0;
        end
    end
    assign in_chan_dep_vld_vec_0[0] = dep_chan_vld_1_0;
    assign in_chan_dep_data_vec_0[24 : 0] = dep_chan_data_1_0;
    assign token_in_vec_0[0] = token_1_0;
    assign in_chan_dep_vld_vec_0[1] = dep_chan_vld_2_0;
    assign in_chan_dep_data_vec_0[49 : 25] = dep_chan_data_2_0;
    assign token_in_vec_0[1] = token_2_0;
    assign in_chan_dep_vld_vec_0[2] = dep_chan_vld_3_0;
    assign in_chan_dep_data_vec_0[74 : 50] = dep_chan_data_3_0;
    assign token_in_vec_0[2] = token_3_0;
    assign dep_chan_vld_0_3 = out_chan_dep_vld_vec_0[0];
    assign dep_chan_data_0_3 = out_chan_dep_data_0;
    assign token_0_3 = token_out_vec_0[0];
    assign dep_chan_vld_0_1 = out_chan_dep_vld_vec_0[1];
    assign dep_chan_data_0_1 = out_chan_dep_data_0;
    assign token_0_1 = token_out_vec_0[1];
    assign dep_chan_vld_0_2 = out_chan_dep_vld_vec_0[2];
    assign dep_chan_data_0_2 = out_chan_dep_data_0;
    assign token_0_2 = token_out_vec_0[2];

    // Process: AESL_inst_ViT_act.grp_compute_linear_fu_486.read_in_stream_direct_U0
    AESL_deadlock_detect_unit #(25, 1, 2, 2) AESL_deadlock_detect_unit_1 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_1),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_1),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_1),
        .token_in_vec(token_in_vec_1),
        .dl_detect_in(dl_detect_out),
        .origin(origin[1]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_1),
        .out_chan_dep_data(out_chan_dep_data_1),
        .token_out_vec(token_out_vec_1),
        .dl_detect_out(dl_in_vec[1]));

    assign proc_1_data_FIFO_blk[0] = 1'b0 | (~AESL_inst_ViT_act.grp_compute_linear_fu_486.read_in_stream_direct_U0.grp_read_in_stream_direct_Pipeline_ln181_for_each_i_fu_74.in_stream_blk_n);
    assign proc_1_data_PIPO_blk[0] = 1'b0;
    assign proc_1_start_FIFO_blk[0] = 1'b0;
    assign proc_1_TLF_FIFO_blk[0] = 1'b0;
    assign proc_1_input_sync_blk[0] = 1'b0 | (AESL_inst_ViT_act.grp_compute_linear_fu_486.ap_sync_read_in_stream_direct_U0_ap_ready & AESL_inst_ViT_act.grp_compute_linear_fu_486.read_in_stream_direct_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_linear_fu_486.ap_sync_compute_linear_on_stream_U0_ap_ready);
    assign proc_1_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_1[0] = dl_detect_out ? proc_dep_vld_vec_1_reg[0] : (proc_1_data_FIFO_blk[0] | proc_1_data_PIPO_blk[0] | proc_1_start_FIFO_blk[0] | proc_1_TLF_FIFO_blk[0] | proc_1_input_sync_blk[0] | proc_1_output_sync_blk[0]);
    assign proc_1_data_FIFO_blk[1] = 1'b0;
    assign proc_1_data_PIPO_blk[1] = 1'b0;
    assign proc_1_start_FIFO_blk[1] = 1'b0;
    assign proc_1_TLF_FIFO_blk[1] = 1'b0;
    assign proc_1_input_sync_blk[1] = 1'b0 | (AESL_inst_ViT_act.grp_compute_linear_fu_486.ap_sync_read_in_stream_direct_U0_ap_ready & AESL_inst_ViT_act.grp_compute_linear_fu_486.read_in_stream_direct_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_linear_fu_486.ap_sync_entry_proc24_U0_ap_ready);
    assign proc_1_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_1[1] = dl_detect_out ? proc_dep_vld_vec_1_reg[1] : (proc_1_data_FIFO_blk[1] | proc_1_data_PIPO_blk[1] | proc_1_start_FIFO_blk[1] | proc_1_TLF_FIFO_blk[1] | proc_1_input_sync_blk[1] | proc_1_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_1_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_1_reg <= proc_dep_vld_vec_1;
        end
    end
    assign in_chan_dep_vld_vec_1[0] = dep_chan_vld_0_1;
    assign in_chan_dep_data_vec_1[24 : 0] = dep_chan_data_0_1;
    assign token_in_vec_1[0] = token_0_1;
    assign in_chan_dep_vld_vec_1[1] = dep_chan_vld_2_1;
    assign in_chan_dep_data_vec_1[49 : 25] = dep_chan_data_2_1;
    assign token_in_vec_1[1] = token_2_1;
    assign dep_chan_vld_1_2 = out_chan_dep_vld_vec_1[0];
    assign dep_chan_data_1_2 = out_chan_dep_data_1;
    assign token_1_2 = token_out_vec_1[0];
    assign dep_chan_vld_1_0 = out_chan_dep_vld_vec_1[1];
    assign dep_chan_data_1_0 = out_chan_dep_data_1;
    assign token_1_0 = token_out_vec_1[1];

    // Process: AESL_inst_ViT_act.grp_compute_linear_fu_486.compute_linear_on_stream_U0
    AESL_deadlock_detect_unit #(25, 2, 3, 3) AESL_deadlock_detect_unit_2 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_2),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_2),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_2),
        .token_in_vec(token_in_vec_2),
        .dl_detect_in(dl_detect_out),
        .origin(origin[2]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_2),
        .out_chan_dep_data(out_chan_dep_data_2),
        .token_out_vec(token_out_vec_2),
        .dl_detect_out(dl_in_vec[2]));

    assign proc_2_data_FIFO_blk[0] = 1'b0 | (~AESL_inst_ViT_act.grp_compute_linear_fu_486.compute_linear_on_stream_U0.grp_compute_linear_on_stream_Pipeline_ln290_for_each_i_fu_90.out_stream_blk_n) | (~AESL_inst_ViT_act.grp_compute_linear_fu_486.compute_linear_on_stream_U0.out_dim_offset_c_blk_n);
    assign proc_2_data_PIPO_blk[0] = 1'b0;
    assign proc_2_start_FIFO_blk[0] = 1'b0;
    assign proc_2_TLF_FIFO_blk[0] = 1'b0;
    assign proc_2_input_sync_blk[0] = 1'b0;
    assign proc_2_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_2[0] = dl_detect_out ? proc_dep_vld_vec_2_reg[0] : (proc_2_data_FIFO_blk[0] | proc_2_data_PIPO_blk[0] | proc_2_start_FIFO_blk[0] | proc_2_TLF_FIFO_blk[0] | proc_2_input_sync_blk[0] | proc_2_output_sync_blk[0]);
    assign proc_2_data_FIFO_blk[1] = 1'b0 | (~AESL_inst_ViT_act.grp_compute_linear_fu_486.compute_linear_on_stream_U0.grp_compute_linear_on_stream_Pipeline_ln290_for_each_i_fu_90.in_stream_blk_n);
    assign proc_2_data_PIPO_blk[1] = 1'b0;
    assign proc_2_start_FIFO_blk[1] = 1'b0;
    assign proc_2_TLF_FIFO_blk[1] = 1'b0;
    assign proc_2_input_sync_blk[1] = 1'b0 | (AESL_inst_ViT_act.grp_compute_linear_fu_486.ap_sync_compute_linear_on_stream_U0_ap_ready & AESL_inst_ViT_act.grp_compute_linear_fu_486.compute_linear_on_stream_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_linear_fu_486.ap_sync_read_in_stream_direct_U0_ap_ready);
    assign proc_2_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_2[1] = dl_detect_out ? proc_dep_vld_vec_2_reg[1] : (proc_2_data_FIFO_blk[1] | proc_2_data_PIPO_blk[1] | proc_2_start_FIFO_blk[1] | proc_2_TLF_FIFO_blk[1] | proc_2_input_sync_blk[1] | proc_2_output_sync_blk[1]);
    assign proc_2_data_FIFO_blk[2] = 1'b0;
    assign proc_2_data_PIPO_blk[2] = 1'b0;
    assign proc_2_start_FIFO_blk[2] = 1'b0;
    assign proc_2_TLF_FIFO_blk[2] = 1'b0;
    assign proc_2_input_sync_blk[2] = 1'b0 | (AESL_inst_ViT_act.grp_compute_linear_fu_486.ap_sync_compute_linear_on_stream_U0_ap_ready & AESL_inst_ViT_act.grp_compute_linear_fu_486.compute_linear_on_stream_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_linear_fu_486.ap_sync_entry_proc24_U0_ap_ready);
    assign proc_2_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_2[2] = dl_detect_out ? proc_dep_vld_vec_2_reg[2] : (proc_2_data_FIFO_blk[2] | proc_2_data_PIPO_blk[2] | proc_2_start_FIFO_blk[2] | proc_2_TLF_FIFO_blk[2] | proc_2_input_sync_blk[2] | proc_2_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_2_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_2_reg <= proc_dep_vld_vec_2;
        end
    end
    assign in_chan_dep_vld_vec_2[0] = dep_chan_vld_0_2;
    assign in_chan_dep_data_vec_2[24 : 0] = dep_chan_data_0_2;
    assign token_in_vec_2[0] = token_0_2;
    assign in_chan_dep_vld_vec_2[1] = dep_chan_vld_1_2;
    assign in_chan_dep_data_vec_2[49 : 25] = dep_chan_data_1_2;
    assign token_in_vec_2[1] = token_1_2;
    assign in_chan_dep_vld_vec_2[2] = dep_chan_vld_3_2;
    assign in_chan_dep_data_vec_2[74 : 50] = dep_chan_data_3_2;
    assign token_in_vec_2[2] = token_3_2;
    assign dep_chan_vld_2_3 = out_chan_dep_vld_vec_2[0];
    assign dep_chan_data_2_3 = out_chan_dep_data_2;
    assign token_2_3 = token_out_vec_2[0];
    assign dep_chan_vld_2_1 = out_chan_dep_vld_vec_2[1];
    assign dep_chan_data_2_1 = out_chan_dep_data_2;
    assign token_2_1 = token_out_vec_2[1];
    assign dep_chan_vld_2_0 = out_chan_dep_vld_vec_2[2];
    assign dep_chan_data_2_0 = out_chan_dep_data_2;
    assign token_2_0 = token_out_vec_2[2];

    // Process: AESL_inst_ViT_act.grp_compute_linear_fu_486.write_out_stream_direct_U0
    AESL_deadlock_detect_unit #(25, 3, 2, 2) AESL_deadlock_detect_unit_3 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_3),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_3),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_3),
        .token_in_vec(token_in_vec_3),
        .dl_detect_in(dl_detect_out),
        .origin(origin[3]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_3),
        .out_chan_dep_data(out_chan_dep_data_3),
        .token_out_vec(token_out_vec_3),
        .dl_detect_out(dl_in_vec[3]));

    assign proc_3_data_FIFO_blk[0] = 1'b0 | (~AESL_inst_ViT_act.grp_compute_linear_fu_486.write_out_stream_direct_U0.dst_blk_n);
    assign proc_3_data_PIPO_blk[0] = 1'b0;
    assign proc_3_start_FIFO_blk[0] = 1'b0 | (~AESL_inst_ViT_act.grp_compute_linear_fu_486.start_for_write_out_stream_direct_U0_U.if_empty_n & AESL_inst_ViT_act.grp_compute_linear_fu_486.write_out_stream_direct_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_linear_fu_486.start_for_write_out_stream_direct_U0_U.if_write);
    assign proc_3_TLF_FIFO_blk[0] = 1'b0;
    assign proc_3_input_sync_blk[0] = 1'b0;
    assign proc_3_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_3[0] = dl_detect_out ? proc_dep_vld_vec_3_reg[0] : (proc_3_data_FIFO_blk[0] | proc_3_data_PIPO_blk[0] | proc_3_start_FIFO_blk[0] | proc_3_TLF_FIFO_blk[0] | proc_3_input_sync_blk[0] | proc_3_output_sync_blk[0]);
    assign proc_3_data_FIFO_blk[1] = 1'b0 | (~AESL_inst_ViT_act.grp_compute_linear_fu_486.write_out_stream_direct_U0.grp_write_out_stream_direct_Pipeline_ln231_for_each_i_fu_85.out_stream_blk_n) | (~AESL_inst_ViT_act.grp_compute_linear_fu_486.write_out_stream_direct_U0.out_dim_offset_blk_n);
    assign proc_3_data_PIPO_blk[1] = 1'b0;
    assign proc_3_start_FIFO_blk[1] = 1'b0;
    assign proc_3_TLF_FIFO_blk[1] = 1'b0;
    assign proc_3_input_sync_blk[1] = 1'b0;
    assign proc_3_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_3[1] = dl_detect_out ? proc_dep_vld_vec_3_reg[1] : (proc_3_data_FIFO_blk[1] | proc_3_data_PIPO_blk[1] | proc_3_start_FIFO_blk[1] | proc_3_TLF_FIFO_blk[1] | proc_3_input_sync_blk[1] | proc_3_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_3_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_3_reg <= proc_dep_vld_vec_3;
        end
    end
    assign in_chan_dep_vld_vec_3[0] = dep_chan_vld_0_3;
    assign in_chan_dep_data_vec_3[24 : 0] = dep_chan_data_0_3;
    assign token_in_vec_3[0] = token_0_3;
    assign in_chan_dep_vld_vec_3[1] = dep_chan_vld_2_3;
    assign in_chan_dep_data_vec_3[49 : 25] = dep_chan_data_2_3;
    assign token_in_vec_3[1] = token_2_3;
    assign dep_chan_vld_3_0 = out_chan_dep_vld_vec_3[0];
    assign dep_chan_data_3_0 = out_chan_dep_data_3;
    assign token_3_0 = token_out_vec_3[0];
    assign dep_chan_vld_3_2 = out_chan_dep_vld_vec_3[1];
    assign dep_chan_data_3_2 = out_chan_dep_data_3;
    assign token_3_2 = token_out_vec_3[1];

    // Process: AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0
    AESL_deadlock_detect_unit #(25, 4, 1, 1) AESL_deadlock_detect_unit_4 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_4),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_4),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_4),
        .token_in_vec(token_in_vec_4),
        .dl_detect_in(dl_detect_out),
        .origin(origin[4]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_4),
        .out_chan_dep_data(out_chan_dep_data_4),
        .token_out_vec(token_out_vec_4),
        .dl_detect_out(dl_in_vec[4]));

    assign proc_4_data_FIFO_blk[0] = 1'b0;
    assign proc_4_data_PIPO_blk[0] = 1'b0 | (~AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patches31_U.i_full_n & AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.ap_done & ap_done_reg_0 & ~AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patches31_U.t_read);
    assign proc_4_start_FIFO_blk[0] = 1'b0;
    assign proc_4_TLF_FIFO_blk[0] = 1'b0;
    assign proc_4_input_sync_blk[0] = 1'b0 | (AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.ap_sync_patch_embed_accumulate_16u_128u_8u_U0_ap_ready & AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.ap_sync_patch_embed_output_U0_ap_ready);
    assign proc_4_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_4[0] = dl_detect_out ? proc_dep_vld_vec_4_reg[0] : (proc_4_data_FIFO_blk[0] | proc_4_data_PIPO_blk[0] | proc_4_start_FIFO_blk[0] | proc_4_TLF_FIFO_blk[0] | proc_4_input_sync_blk[0] | proc_4_output_sync_blk[0]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_4_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_4_reg <= proc_dep_vld_vec_4;
        end
    end
    assign in_chan_dep_vld_vec_4[0] = dep_chan_vld_8_4;
    assign in_chan_dep_data_vec_4[24 : 0] = dep_chan_data_8_4;
    assign token_in_vec_4[0] = token_8_4;
    assign dep_chan_vld_4_8 = out_chan_dep_vld_vec_4[0];
    assign dep_chan_data_4_8 = out_chan_dep_data_4;
    assign token_4_8 = token_out_vec_4[0];

    // Process: AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.patch_embed_accumulate_16u_128u_8u_Block_entry2_proc8_U0
    AESL_deadlock_detect_unit #(25, 5, 2, 2) AESL_deadlock_detect_unit_5 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_5),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_5),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_5),
        .token_in_vec(token_in_vec_5),
        .dl_detect_in(dl_detect_out),
        .origin(origin[5]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_5),
        .out_chan_dep_data(out_chan_dep_data_5),
        .token_out_vec(token_out_vec_5),
        .dl_detect_out(dl_in_vec[5]));

    assign proc_5_data_FIFO_blk[0] = 1'b0;
    assign proc_5_data_PIPO_blk[0] = 1'b0;
    assign proc_5_start_FIFO_blk[0] = 1'b0;
    assign proc_5_TLF_FIFO_blk[0] = 1'b0;
    assign proc_5_input_sync_blk[0] = 1'b0 | (AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.ap_sync_patch_embed_accumulate_16u_128u_8u_Block_entry2_proc8_U0_ap_ready & AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.patch_embed_accumulate_16u_128u_8u_Block_entry2_proc8_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.ap_sync_patch_embed_accumulate_read_16u_128u_8u_U0_ap_ready);
    assign proc_5_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_5[0] = dl_detect_out ? proc_dep_vld_vec_5_reg[0] : (proc_5_data_FIFO_blk[0] | proc_5_data_PIPO_blk[0] | proc_5_start_FIFO_blk[0] | proc_5_TLF_FIFO_blk[0] | proc_5_input_sync_blk[0] | proc_5_output_sync_blk[0]);
    assign proc_5_data_FIFO_blk[1] = 1'b0;
    assign proc_5_data_PIPO_blk[1] = 1'b0;
    assign proc_5_start_FIFO_blk[1] = 1'b0;
    assign proc_5_TLF_FIFO_blk[1] = 1'b0;
    assign proc_5_input_sync_blk[1] = 1'b0 | (AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.ap_sync_patch_embed_accumulate_16u_128u_8u_Block_entry2_proc8_U0_ap_ready & AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.patch_embed_accumulate_16u_128u_8u_Block_entry2_proc8_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.ap_sync_patch_embed_accumulate_compute_16u_128u_8u_U0_ap_ready);
    assign proc_5_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_5[1] = dl_detect_out ? proc_dep_vld_vec_5_reg[1] : (proc_5_data_FIFO_blk[1] | proc_5_data_PIPO_blk[1] | proc_5_start_FIFO_blk[1] | proc_5_TLF_FIFO_blk[1] | proc_5_input_sync_blk[1] | proc_5_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_5_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_5_reg <= proc_dep_vld_vec_5;
        end
    end
    assign in_chan_dep_vld_vec_5[0] = dep_chan_vld_6_5;
    assign in_chan_dep_data_vec_5[24 : 0] = dep_chan_data_6_5;
    assign token_in_vec_5[0] = token_6_5;
    assign in_chan_dep_vld_vec_5[1] = dep_chan_vld_7_5;
    assign in_chan_dep_data_vec_5[49 : 25] = dep_chan_data_7_5;
    assign token_in_vec_5[1] = token_7_5;
    assign dep_chan_vld_5_6 = out_chan_dep_vld_vec_5[0];
    assign dep_chan_data_5_6 = out_chan_dep_data_5;
    assign token_5_6 = token_out_vec_5[0];
    assign dep_chan_vld_5_7 = out_chan_dep_vld_vec_5[1];
    assign dep_chan_data_5_7 = out_chan_dep_data_5;
    assign token_5_7 = token_out_vec_5[1];

    // Process: AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.patch_embed_accumulate_read_16u_128u_8u_U0
    AESL_deadlock_detect_unit #(25, 6, 2, 2) AESL_deadlock_detect_unit_6 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_6),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_6),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_6),
        .token_in_vec(token_in_vec_6),
        .dl_detect_in(dl_detect_out),
        .origin(origin[6]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_6),
        .out_chan_dep_data(out_chan_dep_data_6),
        .token_out_vec(token_out_vec_6),
        .dl_detect_out(dl_in_vec[6]));

    assign proc_6_data_FIFO_blk[0] = 1'b0 | (~AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.patch_embed_accumulate_read_16u_128u_8u_U0.image_stream_blk_n);
    assign proc_6_data_PIPO_blk[0] = 1'b0;
    assign proc_6_start_FIFO_blk[0] = 1'b0;
    assign proc_6_TLF_FIFO_blk[0] = 1'b0;
    assign proc_6_input_sync_blk[0] = 1'b0 | (AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.ap_sync_patch_embed_accumulate_read_16u_128u_8u_U0_ap_ready & AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.patch_embed_accumulate_read_16u_128u_8u_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.ap_sync_patch_embed_accumulate_compute_16u_128u_8u_U0_ap_ready);
    assign proc_6_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_6[0] = dl_detect_out ? proc_dep_vld_vec_6_reg[0] : (proc_6_data_FIFO_blk[0] | proc_6_data_PIPO_blk[0] | proc_6_start_FIFO_blk[0] | proc_6_TLF_FIFO_blk[0] | proc_6_input_sync_blk[0] | proc_6_output_sync_blk[0]);
    assign proc_6_data_FIFO_blk[1] = 1'b0;
    assign proc_6_data_PIPO_blk[1] = 1'b0;
    assign proc_6_start_FIFO_blk[1] = 1'b0;
    assign proc_6_TLF_FIFO_blk[1] = 1'b0 | (~AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.tmp_U.if_empty_n & AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.patch_embed_accumulate_read_16u_128u_8u_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.tmp_U.if_write);
    assign proc_6_input_sync_blk[1] = 1'b0 | (AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.ap_sync_patch_embed_accumulate_read_16u_128u_8u_U0_ap_ready & AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.patch_embed_accumulate_read_16u_128u_8u_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.ap_sync_patch_embed_accumulate_16u_128u_8u_Block_entry2_proc8_U0_ap_ready);
    assign proc_6_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_6[1] = dl_detect_out ? proc_dep_vld_vec_6_reg[1] : (proc_6_data_FIFO_blk[1] | proc_6_data_PIPO_blk[1] | proc_6_start_FIFO_blk[1] | proc_6_TLF_FIFO_blk[1] | proc_6_input_sync_blk[1] | proc_6_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_6_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_6_reg <= proc_dep_vld_vec_6;
        end
    end
    assign in_chan_dep_vld_vec_6[0] = dep_chan_vld_5_6;
    assign in_chan_dep_data_vec_6[24 : 0] = dep_chan_data_5_6;
    assign token_in_vec_6[0] = token_5_6;
    assign in_chan_dep_vld_vec_6[1] = dep_chan_vld_7_6;
    assign in_chan_dep_data_vec_6[49 : 25] = dep_chan_data_7_6;
    assign token_in_vec_6[1] = token_7_6;
    assign dep_chan_vld_6_7 = out_chan_dep_vld_vec_6[0];
    assign dep_chan_data_6_7 = out_chan_dep_data_6;
    assign token_6_7 = token_out_vec_6[0];
    assign dep_chan_vld_6_5 = out_chan_dep_vld_vec_6[1];
    assign dep_chan_data_6_5 = out_chan_dep_data_6;
    assign token_6_5 = token_out_vec_6[1];

    // Process: AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.patch_embed_accumulate_compute_16u_128u_8u_U0
    AESL_deadlock_detect_unit #(25, 7, 2, 3) AESL_deadlock_detect_unit_7 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_7),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_7),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_7),
        .token_in_vec(token_in_vec_7),
        .dl_detect_in(dl_detect_out),
        .origin(origin[7]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_7),
        .out_chan_dep_data(out_chan_dep_data_7),
        .token_out_vec(token_out_vec_7),
        .dl_detect_out(dl_in_vec[7]));

    assign proc_7_data_FIFO_blk[0] = 1'b0 | (~AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.patch_embed_accumulate_compute_16u_128u_8u_U0.image_stream_blk_n);
    assign proc_7_data_PIPO_blk[0] = 1'b0;
    assign proc_7_start_FIFO_blk[0] = 1'b0;
    assign proc_7_TLF_FIFO_blk[0] = 1'b0;
    assign proc_7_input_sync_blk[0] = 1'b0 | (AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.ap_sync_patch_embed_accumulate_compute_16u_128u_8u_U0_ap_ready & AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.patch_embed_accumulate_compute_16u_128u_8u_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.ap_sync_patch_embed_accumulate_read_16u_128u_8u_U0_ap_ready);
    assign proc_7_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_7[0] = dl_detect_out ? proc_dep_vld_vec_7_reg[0] : (proc_7_data_FIFO_blk[0] | proc_7_data_PIPO_blk[0] | proc_7_start_FIFO_blk[0] | proc_7_TLF_FIFO_blk[0] | proc_7_input_sync_blk[0] | proc_7_output_sync_blk[0]);
    assign proc_7_data_FIFO_blk[1] = 1'b0;
    assign proc_7_data_PIPO_blk[1] = 1'b0 | (~AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patches31_U.i_full_n & AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.patch_embed_accumulate_compute_16u_128u_8u_U0.ap_done & ap_done_reg_2 & ~AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patches31_U.t_read);
    assign proc_7_start_FIFO_blk[1] = 1'b0;
    assign proc_7_TLF_FIFO_blk[1] = 1'b0;
    assign proc_7_input_sync_blk[1] = 1'b0;
    assign proc_7_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_7[1] = dl_detect_out ? proc_dep_vld_vec_7_reg[1] : (proc_7_data_FIFO_blk[1] | proc_7_data_PIPO_blk[1] | proc_7_start_FIFO_blk[1] | proc_7_TLF_FIFO_blk[1] | proc_7_input_sync_blk[1] | proc_7_output_sync_blk[1]);
    assign proc_7_data_FIFO_blk[2] = 1'b0;
    assign proc_7_data_PIPO_blk[2] = 1'b0;
    assign proc_7_start_FIFO_blk[2] = 1'b0;
    assign proc_7_TLF_FIFO_blk[2] = 1'b0;
    assign proc_7_input_sync_blk[2] = 1'b0 | (AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.ap_sync_patch_embed_accumulate_compute_16u_128u_8u_U0_ap_ready & AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.patch_embed_accumulate_compute_16u_128u_8u_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_accumulate_16u_128u_8u_U0.ap_sync_patch_embed_accumulate_16u_128u_8u_Block_entry2_proc8_U0_ap_ready);
    assign proc_7_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_7[2] = dl_detect_out ? proc_dep_vld_vec_7_reg[2] : (proc_7_data_FIFO_blk[2] | proc_7_data_PIPO_blk[2] | proc_7_start_FIFO_blk[2] | proc_7_TLF_FIFO_blk[2] | proc_7_input_sync_blk[2] | proc_7_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_7_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_7_reg <= proc_dep_vld_vec_7;
        end
    end
    assign in_chan_dep_vld_vec_7[0] = dep_chan_vld_5_7;
    assign in_chan_dep_data_vec_7[24 : 0] = dep_chan_data_5_7;
    assign token_in_vec_7[0] = token_5_7;
    assign in_chan_dep_vld_vec_7[1] = dep_chan_vld_6_7;
    assign in_chan_dep_data_vec_7[49 : 25] = dep_chan_data_6_7;
    assign token_in_vec_7[1] = token_6_7;
    assign dep_chan_vld_7_6 = out_chan_dep_vld_vec_7[0];
    assign dep_chan_data_7_6 = out_chan_dep_data_7;
    assign token_7_6 = token_out_vec_7[0];
    assign dep_chan_vld_7_8 = out_chan_dep_vld_vec_7[1];
    assign dep_chan_data_7_8 = out_chan_dep_data_7;
    assign token_7_8 = token_out_vec_7[1];
    assign dep_chan_vld_7_5 = out_chan_dep_vld_vec_7[2];
    assign dep_chan_data_7_5 = out_chan_dep_data_7;
    assign token_7_5 = token_out_vec_7[2];

    // Process: AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_output_U0
    AESL_deadlock_detect_unit #(25, 8, 2, 1) AESL_deadlock_detect_unit_8 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_8),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_8),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_8),
        .token_in_vec(token_in_vec_8),
        .dl_detect_in(dl_detect_out),
        .origin(origin[8]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_8),
        .out_chan_dep_data(out_chan_dep_data_8),
        .token_out_vec(token_out_vec_8),
        .dl_detect_out(dl_in_vec[8]));

    assign proc_8_data_FIFO_blk[0] = 1'b0;
    assign proc_8_data_PIPO_blk[0] = 1'b0 | (~AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patches31_U.t_empty_n & AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_output_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patches31_U.i_write);
    assign proc_8_start_FIFO_blk[0] = 1'b0;
    assign proc_8_TLF_FIFO_blk[0] = 1'b0;
    assign proc_8_input_sync_blk[0] = 1'b0 | (AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.ap_sync_patch_embed_output_U0_ap_ready & AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.patch_embed_output_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_patch_embed_fu_582.grp_dataflow_parent_loop_proc_fu_91.dataflow_in_loop_ln171_for_block_y_U0.ap_sync_patch_embed_accumulate_16u_128u_8u_U0_ap_ready);
    assign proc_8_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_8[0] = dl_detect_out ? proc_dep_vld_vec_8_reg[0] : (proc_8_data_FIFO_blk[0] | proc_8_data_PIPO_blk[0] | proc_8_start_FIFO_blk[0] | proc_8_TLF_FIFO_blk[0] | proc_8_input_sync_blk[0] | proc_8_output_sync_blk[0]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_8_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_8_reg <= proc_dep_vld_vec_8;
        end
    end
    assign in_chan_dep_vld_vec_8[0] = dep_chan_vld_4_8;
    assign in_chan_dep_data_vec_8[24 : 0] = dep_chan_data_4_8;
    assign token_in_vec_8[0] = token_4_8;
    assign in_chan_dep_vld_vec_8[1] = dep_chan_vld_7_8;
    assign in_chan_dep_data_vec_8[49 : 25] = dep_chan_data_7_8;
    assign token_in_vec_8[1] = token_7_8;
    assign dep_chan_vld_8_4 = out_chan_dep_vld_vec_8[0];
    assign dep_chan_data_8_4 = out_chan_dep_data_8;
    assign token_8_4 = token_out_vec_8[0];

    // Process: AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_accumulate_U0
    AESL_deadlock_detect_unit #(25, 9, 1, 1) AESL_deadlock_detect_unit_9 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_9),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_9),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_9),
        .token_in_vec(token_in_vec_9),
        .dl_detect_in(dl_detect_out),
        .origin(origin[9]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_9),
        .out_chan_dep_data(out_chan_dep_data_9),
        .token_out_vec(token_out_vec_9),
        .dl_detect_out(dl_in_vec[9]));

    assign proc_9_data_FIFO_blk[0] = 1'b0;
    assign proc_9_data_PIPO_blk[0] = 1'b0 | (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_U.i_full_n & AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_accumulate_U0.ap_done & ap_done_reg_4 & ~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_U.t_read) | (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_1_U.i_full_n & AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_accumulate_U0.ap_done & ap_done_reg_4 & ~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_1_U.t_read) | (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_2_U.i_full_n & AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_accumulate_U0.ap_done & ap_done_reg_4 & ~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_2_U.t_read) | (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_3_U.i_full_n & AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_accumulate_U0.ap_done & ap_done_reg_4 & ~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_3_U.t_read) | (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_4_U.i_full_n & AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_accumulate_U0.ap_done & ap_done_reg_4 & ~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_4_U.t_read) | (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_5_U.i_full_n & AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_accumulate_U0.ap_done & ap_done_reg_4 & ~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_5_U.t_read) | (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_6_U.i_full_n & AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_accumulate_U0.ap_done & ap_done_reg_4 & ~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_6_U.t_read) | (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_7_U.i_full_n & AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_accumulate_U0.ap_done & ap_done_reg_4 & ~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_7_U.t_read);
    assign proc_9_start_FIFO_blk[0] = 1'b0;
    assign proc_9_TLF_FIFO_blk[0] = 1'b0;
    assign proc_9_input_sync_blk[0] = 1'b0 | (AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.ap_sync_layernorm_accumulate_U0_ap_ready & AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_accumulate_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.ap_sync_layernorm_output_U0_ap_ready);
    assign proc_9_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_9[0] = dl_detect_out ? proc_dep_vld_vec_9_reg[0] : (proc_9_data_FIFO_blk[0] | proc_9_data_PIPO_blk[0] | proc_9_start_FIFO_blk[0] | proc_9_TLF_FIFO_blk[0] | proc_9_input_sync_blk[0] | proc_9_output_sync_blk[0]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_9_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_9_reg <= proc_dep_vld_vec_9;
        end
    end
    assign in_chan_dep_vld_vec_9[0] = dep_chan_vld_10_9;
    assign in_chan_dep_data_vec_9[24 : 0] = dep_chan_data_10_9;
    assign token_in_vec_9[0] = token_10_9;
    assign dep_chan_vld_9_10 = out_chan_dep_vld_vec_9[0];
    assign dep_chan_data_9_10 = out_chan_dep_data_9;
    assign token_9_10 = token_out_vec_9[0];

    // Process: AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0
    AESL_deadlock_detect_unit #(25, 10, 1, 1) AESL_deadlock_detect_unit_10 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_10),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_10),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_10),
        .token_in_vec(token_in_vec_10),
        .dl_detect_in(dl_detect_out),
        .origin(origin[10]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_10),
        .out_chan_dep_data(out_chan_dep_data_10),
        .token_out_vec(token_out_vec_10),
        .dl_detect_out(dl_in_vec[10]));

    assign proc_10_data_FIFO_blk[0] = 1'b0;
    assign proc_10_data_PIPO_blk[0] = 1'b0 | (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_U.t_empty_n & AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_U.i_write) | (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_1_U.t_empty_n & AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_1_U.i_write) | (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_2_U.t_empty_n & AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_2_U.i_write) | (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_3_U.t_empty_n & AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_3_U.i_write) | (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_4_U.t_empty_n & AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_4_U.i_write) | (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_5_U.t_empty_n & AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_5_U.i_write) | (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_6_U.t_empty_n & AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_6_U.i_write) | (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_7_U.t_empty_n & AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.x_patch_data_M_elems_V_7_U.i_write);
    assign proc_10_start_FIFO_blk[0] = 1'b0;
    assign proc_10_TLF_FIFO_blk[0] = 1'b0 | (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.mean_V_U.if_empty_n & AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.mean_V_U.if_write) | (~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.mean_sq_V_U.if_empty_n & AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.mean_sq_V_U.if_write);
    assign proc_10_input_sync_blk[0] = 1'b0 | (AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.ap_sync_layernorm_output_U0_ap_ready & AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.layernorm_output_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_norm_fu_611.dataflow_in_loop_ln131_for_each_patch_U0.ap_sync_layernorm_accumulate_U0_ap_ready);
    assign proc_10_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_10[0] = dl_detect_out ? proc_dep_vld_vec_10_reg[0] : (proc_10_data_FIFO_blk[0] | proc_10_data_PIPO_blk[0] | proc_10_start_FIFO_blk[0] | proc_10_TLF_FIFO_blk[0] | proc_10_input_sync_blk[0] | proc_10_output_sync_blk[0]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_10_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_10_reg <= proc_dep_vld_vec_10;
        end
    end
    assign in_chan_dep_vld_vec_10[0] = dep_chan_vld_9_10;
    assign in_chan_dep_data_vec_10[24 : 0] = dep_chan_data_9_10;
    assign token_in_vec_10[0] = token_9_10;
    assign dep_chan_vld_10_9 = out_chan_dep_vld_vec_10[0];
    assign dep_chan_data_10_9 = out_chan_dep_data_10;
    assign token_10_9 = token_out_vec_10[0];

    // Process: AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.entry_proc_U0
    AESL_deadlock_detect_unit #(25, 11, 5, 5) AESL_deadlock_detect_unit_11 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_11),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_11),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_11),
        .token_in_vec(token_in_vec_11),
        .dl_detect_in(dl_detect_out),
        .origin(origin[11]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_11),
        .out_chan_dep_data(out_chan_dep_data_11),
        .token_out_vec(token_out_vec_11),
        .dl_detect_out(dl_in_vec[11]));

    assign proc_11_data_FIFO_blk[0] = 1'b0 | (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.entry_proc_U0.attn_c_blk_n);
    assign proc_11_data_PIPO_blk[0] = 1'b0;
    assign proc_11_start_FIFO_blk[0] = 1'b0 | (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.start_for_write_attn_U0_U.if_full_n & AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.entry_proc_U0.ap_start & ~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.entry_proc_U0.real_start & (trans_in_cnt_2 == trans_out_cnt_2) & ~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.start_for_write_attn_U0_U.if_read);
    assign proc_11_TLF_FIFO_blk[0] = 1'b0;
    assign proc_11_input_sync_blk[0] = 1'b0;
    assign proc_11_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_11[0] = dl_detect_out ? proc_dep_vld_vec_11_reg[0] : (proc_11_data_FIFO_blk[0] | proc_11_data_PIPO_blk[0] | proc_11_start_FIFO_blk[0] | proc_11_TLF_FIFO_blk[0] | proc_11_input_sync_blk[0] | proc_11_output_sync_blk[0]);
    assign proc_11_data_FIFO_blk[1] = 1'b0 | (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.entry_proc_U0.attn_softmax_info_c_blk_n);
    assign proc_11_data_PIPO_blk[1] = 1'b0;
    assign proc_11_start_FIFO_blk[1] = 1'b0 | (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.start_for_write_attn_softmax_info_U0_U.if_full_n & AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.entry_proc_U0.ap_start & ~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.entry_proc_U0.real_start & (trans_in_cnt_2 == trans_out_cnt_2) & ~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.start_for_write_attn_softmax_info_U0_U.if_read);
    assign proc_11_TLF_FIFO_blk[1] = 1'b0;
    assign proc_11_input_sync_blk[1] = 1'b0;
    assign proc_11_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_11[1] = dl_detect_out ? proc_dep_vld_vec_11_reg[1] : (proc_11_data_FIFO_blk[1] | proc_11_data_PIPO_blk[1] | proc_11_start_FIFO_blk[1] | proc_11_TLF_FIFO_blk[1] | proc_11_input_sync_blk[1] | proc_11_output_sync_blk[1]);
    assign proc_11_data_FIFO_blk[2] = 1'b0;
    assign proc_11_data_PIPO_blk[2] = 1'b0;
    assign proc_11_start_FIFO_blk[2] = 1'b0;
    assign proc_11_TLF_FIFO_blk[2] = 1'b0;
    assign proc_11_input_sync_blk[2] = 1'b0 | (AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.ap_sync_entry_proc_U0_ap_ready & AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.entry_proc_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.ap_sync_read_x_U0_ap_ready);
    assign proc_11_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_11[2] = dl_detect_out ? proc_dep_vld_vec_11_reg[2] : (proc_11_data_FIFO_blk[2] | proc_11_data_PIPO_blk[2] | proc_11_start_FIFO_blk[2] | proc_11_TLF_FIFO_blk[2] | proc_11_input_sync_blk[2] | proc_11_output_sync_blk[2]);
    assign proc_11_data_FIFO_blk[3] = 1'b0;
    assign proc_11_data_PIPO_blk[3] = 1'b0;
    assign proc_11_start_FIFO_blk[3] = 1'b0;
    assign proc_11_TLF_FIFO_blk[3] = 1'b0;
    assign proc_11_input_sync_blk[3] = 1'b0 | (AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.ap_sync_entry_proc_U0_ap_ready & AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.entry_proc_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.ap_sync_read_k_v_U0_ap_ready);
    assign proc_11_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_11[3] = dl_detect_out ? proc_dep_vld_vec_11_reg[3] : (proc_11_data_FIFO_blk[3] | proc_11_data_PIPO_blk[3] | proc_11_start_FIFO_blk[3] | proc_11_TLF_FIFO_blk[3] | proc_11_input_sync_blk[3] | proc_11_output_sync_blk[3]);
    assign proc_11_data_FIFO_blk[4] = 1'b0;
    assign proc_11_data_PIPO_blk[4] = 1'b0;
    assign proc_11_start_FIFO_blk[4] = 1'b0;
    assign proc_11_TLF_FIFO_blk[4] = 1'b0;
    assign proc_11_input_sync_blk[4] = 1'b0 | (AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.ap_sync_entry_proc_U0_ap_ready & AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.entry_proc_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.ap_sync_compute_q_matmul_k_5_U0_ap_ready);
    assign proc_11_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_11[4] = dl_detect_out ? proc_dep_vld_vec_11_reg[4] : (proc_11_data_FIFO_blk[4] | proc_11_data_PIPO_blk[4] | proc_11_start_FIFO_blk[4] | proc_11_TLF_FIFO_blk[4] | proc_11_input_sync_blk[4] | proc_11_output_sync_blk[4]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_11_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_11_reg <= proc_dep_vld_vec_11;
        end
    end
    assign in_chan_dep_vld_vec_11[0] = dep_chan_vld_12_11;
    assign in_chan_dep_data_vec_11[24 : 0] = dep_chan_data_12_11;
    assign token_in_vec_11[0] = token_12_11;
    assign in_chan_dep_vld_vec_11[1] = dep_chan_vld_13_11;
    assign in_chan_dep_data_vec_11[49 : 25] = dep_chan_data_13_11;
    assign token_in_vec_11[1] = token_13_11;
    assign in_chan_dep_vld_vec_11[2] = dep_chan_vld_14_11;
    assign in_chan_dep_data_vec_11[74 : 50] = dep_chan_data_14_11;
    assign token_in_vec_11[2] = token_14_11;
    assign in_chan_dep_vld_vec_11[3] = dep_chan_vld_16_11;
    assign in_chan_dep_data_vec_11[99 : 75] = dep_chan_data_16_11;
    assign token_in_vec_11[3] = token_16_11;
    assign in_chan_dep_vld_vec_11[4] = dep_chan_vld_17_11;
    assign in_chan_dep_data_vec_11[124 : 100] = dep_chan_data_17_11;
    assign token_in_vec_11[4] = token_17_11;
    assign dep_chan_vld_11_16 = out_chan_dep_vld_vec_11[0];
    assign dep_chan_data_11_16 = out_chan_dep_data_11;
    assign token_11_16 = token_out_vec_11[0];
    assign dep_chan_vld_11_17 = out_chan_dep_vld_vec_11[1];
    assign dep_chan_data_11_17 = out_chan_dep_data_11;
    assign token_11_17 = token_out_vec_11[1];
    assign dep_chan_vld_11_12 = out_chan_dep_vld_vec_11[2];
    assign dep_chan_data_11_12 = out_chan_dep_data_11;
    assign token_11_12 = token_out_vec_11[2];
    assign dep_chan_vld_11_13 = out_chan_dep_vld_vec_11[3];
    assign dep_chan_data_11_13 = out_chan_dep_data_11;
    assign token_11_13 = token_out_vec_11[3];
    assign dep_chan_vld_11_14 = out_chan_dep_vld_vec_11[4];
    assign dep_chan_data_11_14 = out_chan_dep_data_11;
    assign token_11_14 = token_out_vec_11[4];

    // Process: AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.read_x_U0
    AESL_deadlock_detect_unit #(25, 12, 3, 3) AESL_deadlock_detect_unit_12 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_12),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_12),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_12),
        .token_in_vec(token_in_vec_12),
        .dl_detect_in(dl_detect_out),
        .origin(origin[12]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_12),
        .out_chan_dep_data(out_chan_dep_data_12),
        .token_out_vec(token_out_vec_12),
        .dl_detect_out(dl_in_vec[12]));

    assign proc_12_data_FIFO_blk[0] = 1'b0 | (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.read_x_U0.grp_read_x_Pipeline_ln18_for_each_patch_ln20_for_block_in_dim_fu_55.q_stream_blk_n);
    assign proc_12_data_PIPO_blk[0] = 1'b0;
    assign proc_12_start_FIFO_blk[0] = 1'b0;
    assign proc_12_TLF_FIFO_blk[0] = 1'b0;
    assign proc_12_input_sync_blk[0] = 1'b0 | (AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.ap_sync_read_x_U0_ap_ready & AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.read_x_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.ap_sync_compute_q_matmul_k_5_U0_ap_ready);
    assign proc_12_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_12[0] = dl_detect_out ? proc_dep_vld_vec_12_reg[0] : (proc_12_data_FIFO_blk[0] | proc_12_data_PIPO_blk[0] | proc_12_start_FIFO_blk[0] | proc_12_TLF_FIFO_blk[0] | proc_12_input_sync_blk[0] | proc_12_output_sync_blk[0]);
    assign proc_12_data_FIFO_blk[1] = 1'b0;
    assign proc_12_data_PIPO_blk[1] = 1'b0;
    assign proc_12_start_FIFO_blk[1] = 1'b0;
    assign proc_12_TLF_FIFO_blk[1] = 1'b0;
    assign proc_12_input_sync_blk[1] = 1'b0 | (AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.ap_sync_read_x_U0_ap_ready & AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.read_x_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.ap_sync_entry_proc_U0_ap_ready);
    assign proc_12_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_12[1] = dl_detect_out ? proc_dep_vld_vec_12_reg[1] : (proc_12_data_FIFO_blk[1] | proc_12_data_PIPO_blk[1] | proc_12_start_FIFO_blk[1] | proc_12_TLF_FIFO_blk[1] | proc_12_input_sync_blk[1] | proc_12_output_sync_blk[1]);
    assign proc_12_data_FIFO_blk[2] = 1'b0;
    assign proc_12_data_PIPO_blk[2] = 1'b0;
    assign proc_12_start_FIFO_blk[2] = 1'b0;
    assign proc_12_TLF_FIFO_blk[2] = 1'b0;
    assign proc_12_input_sync_blk[2] = 1'b0 | (AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.ap_sync_read_x_U0_ap_ready & AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.read_x_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.ap_sync_read_k_v_U0_ap_ready);
    assign proc_12_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_12[2] = dl_detect_out ? proc_dep_vld_vec_12_reg[2] : (proc_12_data_FIFO_blk[2] | proc_12_data_PIPO_blk[2] | proc_12_start_FIFO_blk[2] | proc_12_TLF_FIFO_blk[2] | proc_12_input_sync_blk[2] | proc_12_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_12_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_12_reg <= proc_dep_vld_vec_12;
        end
    end
    assign in_chan_dep_vld_vec_12[0] = dep_chan_vld_11_12;
    assign in_chan_dep_data_vec_12[24 : 0] = dep_chan_data_11_12;
    assign token_in_vec_12[0] = token_11_12;
    assign in_chan_dep_vld_vec_12[1] = dep_chan_vld_13_12;
    assign in_chan_dep_data_vec_12[49 : 25] = dep_chan_data_13_12;
    assign token_in_vec_12[1] = token_13_12;
    assign in_chan_dep_vld_vec_12[2] = dep_chan_vld_14_12;
    assign in_chan_dep_data_vec_12[74 : 50] = dep_chan_data_14_12;
    assign token_in_vec_12[2] = token_14_12;
    assign dep_chan_vld_12_14 = out_chan_dep_vld_vec_12[0];
    assign dep_chan_data_12_14 = out_chan_dep_data_12;
    assign token_12_14 = token_out_vec_12[0];
    assign dep_chan_vld_12_11 = out_chan_dep_vld_vec_12[1];
    assign dep_chan_data_12_11 = out_chan_dep_data_12;
    assign token_12_11 = token_out_vec_12[1];
    assign dep_chan_vld_12_13 = out_chan_dep_vld_vec_12[2];
    assign dep_chan_data_12_13 = out_chan_dep_data_12;
    assign token_12_13 = token_out_vec_12[2];

    // Process: AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.read_k_v_U0
    AESL_deadlock_detect_unit #(25, 13, 3, 3) AESL_deadlock_detect_unit_13 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_13),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_13),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_13),
        .token_in_vec(token_in_vec_13),
        .dl_detect_in(dl_detect_out),
        .origin(origin[13]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_13),
        .out_chan_dep_data(out_chan_dep_data_13),
        .token_out_vec(token_out_vec_13),
        .dl_detect_out(dl_in_vec[13]));

    assign proc_13_data_FIFO_blk[0] = 1'b0 | (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.read_k_v_U0.k_stream_blk_n);
    assign proc_13_data_PIPO_blk[0] = 1'b0;
    assign proc_13_start_FIFO_blk[0] = 1'b0;
    assign proc_13_TLF_FIFO_blk[0] = 1'b0;
    assign proc_13_input_sync_blk[0] = 1'b0 | (AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.ap_sync_read_k_v_U0_ap_ready & AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.read_k_v_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.ap_sync_compute_q_matmul_k_5_U0_ap_ready);
    assign proc_13_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_13[0] = dl_detect_out ? proc_dep_vld_vec_13_reg[0] : (proc_13_data_FIFO_blk[0] | proc_13_data_PIPO_blk[0] | proc_13_start_FIFO_blk[0] | proc_13_TLF_FIFO_blk[0] | proc_13_input_sync_blk[0] | proc_13_output_sync_blk[0]);
    assign proc_13_data_FIFO_blk[1] = 1'b0;
    assign proc_13_data_PIPO_blk[1] = 1'b0;
    assign proc_13_start_FIFO_blk[1] = 1'b0;
    assign proc_13_TLF_FIFO_blk[1] = 1'b0;
    assign proc_13_input_sync_blk[1] = 1'b0 | (AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.ap_sync_read_k_v_U0_ap_ready & AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.read_k_v_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.ap_sync_entry_proc_U0_ap_ready);
    assign proc_13_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_13[1] = dl_detect_out ? proc_dep_vld_vec_13_reg[1] : (proc_13_data_FIFO_blk[1] | proc_13_data_PIPO_blk[1] | proc_13_start_FIFO_blk[1] | proc_13_TLF_FIFO_blk[1] | proc_13_input_sync_blk[1] | proc_13_output_sync_blk[1]);
    assign proc_13_data_FIFO_blk[2] = 1'b0;
    assign proc_13_data_PIPO_blk[2] = 1'b0;
    assign proc_13_start_FIFO_blk[2] = 1'b0;
    assign proc_13_TLF_FIFO_blk[2] = 1'b0;
    assign proc_13_input_sync_blk[2] = 1'b0 | (AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.ap_sync_read_k_v_U0_ap_ready & AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.read_k_v_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.ap_sync_read_x_U0_ap_ready);
    assign proc_13_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_13[2] = dl_detect_out ? proc_dep_vld_vec_13_reg[2] : (proc_13_data_FIFO_blk[2] | proc_13_data_PIPO_blk[2] | proc_13_start_FIFO_blk[2] | proc_13_TLF_FIFO_blk[2] | proc_13_input_sync_blk[2] | proc_13_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_13_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_13_reg <= proc_dep_vld_vec_13;
        end
    end
    assign in_chan_dep_vld_vec_13[0] = dep_chan_vld_11_13;
    assign in_chan_dep_data_vec_13[24 : 0] = dep_chan_data_11_13;
    assign token_in_vec_13[0] = token_11_13;
    assign in_chan_dep_vld_vec_13[1] = dep_chan_vld_12_13;
    assign in_chan_dep_data_vec_13[49 : 25] = dep_chan_data_12_13;
    assign token_in_vec_13[1] = token_12_13;
    assign in_chan_dep_vld_vec_13[2] = dep_chan_vld_14_13;
    assign in_chan_dep_data_vec_13[74 : 50] = dep_chan_data_14_13;
    assign token_in_vec_13[2] = token_14_13;
    assign dep_chan_vld_13_14 = out_chan_dep_vld_vec_13[0];
    assign dep_chan_data_13_14 = out_chan_dep_data_13;
    assign token_13_14 = token_out_vec_13[0];
    assign dep_chan_vld_13_11 = out_chan_dep_vld_vec_13[1];
    assign dep_chan_data_13_11 = out_chan_dep_data_13;
    assign token_13_11 = token_out_vec_13[1];
    assign dep_chan_vld_13_12 = out_chan_dep_vld_vec_13[2];
    assign dep_chan_data_13_12 = out_chan_dep_data_13;
    assign token_13_12 = token_out_vec_13[2];

    // Process: AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.compute_q_matmul_k_5_U0
    AESL_deadlock_detect_unit #(25, 14, 4, 4) AESL_deadlock_detect_unit_14 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_14),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_14),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_14),
        .token_in_vec(token_in_vec_14),
        .dl_detect_in(dl_detect_out),
        .origin(origin[14]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_14),
        .out_chan_dep_data(out_chan_dep_data_14),
        .token_out_vec(token_out_vec_14),
        .dl_detect_out(dl_in_vec[14]));

    assign proc_14_data_FIFO_blk[0] = 1'b0 | (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.compute_q_matmul_k_5_U0.qxk_stream_blk_n);
    assign proc_14_data_PIPO_blk[0] = 1'b0;
    assign proc_14_start_FIFO_blk[0] = 1'b0 | (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.start_for_finalize_attn_U0_U.if_full_n & AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.compute_q_matmul_k_5_U0.ap_start & ~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.compute_q_matmul_k_5_U0.real_start & (trans_in_cnt_1 == trans_out_cnt_1) & ~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.start_for_finalize_attn_U0_U.if_read);
    assign proc_14_TLF_FIFO_blk[0] = 1'b0;
    assign proc_14_input_sync_blk[0] = 1'b0;
    assign proc_14_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_14[0] = dl_detect_out ? proc_dep_vld_vec_14_reg[0] : (proc_14_data_FIFO_blk[0] | proc_14_data_PIPO_blk[0] | proc_14_start_FIFO_blk[0] | proc_14_TLF_FIFO_blk[0] | proc_14_input_sync_blk[0] | proc_14_output_sync_blk[0]);
    assign proc_14_data_FIFO_blk[1] = 1'b0 | (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.compute_q_matmul_k_5_U0.q_stream_blk_n);
    assign proc_14_data_PIPO_blk[1] = 1'b0;
    assign proc_14_start_FIFO_blk[1] = 1'b0;
    assign proc_14_TLF_FIFO_blk[1] = 1'b0;
    assign proc_14_input_sync_blk[1] = 1'b0 | (AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.ap_sync_compute_q_matmul_k_5_U0_ap_ready & AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.compute_q_matmul_k_5_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.ap_sync_read_x_U0_ap_ready);
    assign proc_14_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_14[1] = dl_detect_out ? proc_dep_vld_vec_14_reg[1] : (proc_14_data_FIFO_blk[1] | proc_14_data_PIPO_blk[1] | proc_14_start_FIFO_blk[1] | proc_14_TLF_FIFO_blk[1] | proc_14_input_sync_blk[1] | proc_14_output_sync_blk[1]);
    assign proc_14_data_FIFO_blk[2] = 1'b0 | (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.compute_q_matmul_k_5_U0.k_stream_blk_n);
    assign proc_14_data_PIPO_blk[2] = 1'b0;
    assign proc_14_start_FIFO_blk[2] = 1'b0;
    assign proc_14_TLF_FIFO_blk[2] = 1'b0;
    assign proc_14_input_sync_blk[2] = 1'b0 | (AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.ap_sync_compute_q_matmul_k_5_U0_ap_ready & AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.compute_q_matmul_k_5_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.ap_sync_read_k_v_U0_ap_ready);
    assign proc_14_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_14[2] = dl_detect_out ? proc_dep_vld_vec_14_reg[2] : (proc_14_data_FIFO_blk[2] | proc_14_data_PIPO_blk[2] | proc_14_start_FIFO_blk[2] | proc_14_TLF_FIFO_blk[2] | proc_14_input_sync_blk[2] | proc_14_output_sync_blk[2]);
    assign proc_14_data_FIFO_blk[3] = 1'b0;
    assign proc_14_data_PIPO_blk[3] = 1'b0;
    assign proc_14_start_FIFO_blk[3] = 1'b0;
    assign proc_14_TLF_FIFO_blk[3] = 1'b0;
    assign proc_14_input_sync_blk[3] = 1'b0 | (AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.ap_sync_compute_q_matmul_k_5_U0_ap_ready & AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.compute_q_matmul_k_5_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.ap_sync_entry_proc_U0_ap_ready);
    assign proc_14_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_14[3] = dl_detect_out ? proc_dep_vld_vec_14_reg[3] : (proc_14_data_FIFO_blk[3] | proc_14_data_PIPO_blk[3] | proc_14_start_FIFO_blk[3] | proc_14_TLF_FIFO_blk[3] | proc_14_input_sync_blk[3] | proc_14_output_sync_blk[3]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_14_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_14_reg <= proc_dep_vld_vec_14;
        end
    end
    assign in_chan_dep_vld_vec_14[0] = dep_chan_vld_11_14;
    assign in_chan_dep_data_vec_14[24 : 0] = dep_chan_data_11_14;
    assign token_in_vec_14[0] = token_11_14;
    assign in_chan_dep_vld_vec_14[1] = dep_chan_vld_12_14;
    assign in_chan_dep_data_vec_14[49 : 25] = dep_chan_data_12_14;
    assign token_in_vec_14[1] = token_12_14;
    assign in_chan_dep_vld_vec_14[2] = dep_chan_vld_13_14;
    assign in_chan_dep_data_vec_14[74 : 50] = dep_chan_data_13_14;
    assign token_in_vec_14[2] = token_13_14;
    assign in_chan_dep_vld_vec_14[3] = dep_chan_vld_15_14;
    assign in_chan_dep_data_vec_14[99 : 75] = dep_chan_data_15_14;
    assign token_in_vec_14[3] = token_15_14;
    assign dep_chan_vld_14_15 = out_chan_dep_vld_vec_14[0];
    assign dep_chan_data_14_15 = out_chan_dep_data_14;
    assign token_14_15 = token_out_vec_14[0];
    assign dep_chan_vld_14_12 = out_chan_dep_vld_vec_14[1];
    assign dep_chan_data_14_12 = out_chan_dep_data_14;
    assign token_14_12 = token_out_vec_14[1];
    assign dep_chan_vld_14_13 = out_chan_dep_vld_vec_14[2];
    assign dep_chan_data_14_13 = out_chan_dep_data_14;
    assign token_14_13 = token_out_vec_14[2];
    assign dep_chan_vld_14_11 = out_chan_dep_vld_vec_14[3];
    assign dep_chan_data_14_11 = out_chan_dep_data_14;
    assign token_14_11 = token_out_vec_14[3];

    // Process: AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.finalize_attn_U0
    AESL_deadlock_detect_unit #(25, 15, 3, 3) AESL_deadlock_detect_unit_15 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_15),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_15),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_15),
        .token_in_vec(token_in_vec_15),
        .dl_detect_in(dl_detect_out),
        .origin(origin[15]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_15),
        .out_chan_dep_data(out_chan_dep_data_15),
        .token_out_vec(token_out_vec_15),
        .dl_detect_out(dl_in_vec[15]));

    assign proc_15_data_FIFO_blk[0] = 1'b0 | (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.finalize_attn_U0.qxk_stream_blk_n);
    assign proc_15_data_PIPO_blk[0] = 1'b0;
    assign proc_15_start_FIFO_blk[0] = 1'b0 | (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.start_for_finalize_attn_U0_U.if_empty_n & AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.finalize_attn_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.start_for_finalize_attn_U0_U.if_write);
    assign proc_15_TLF_FIFO_blk[0] = 1'b0;
    assign proc_15_input_sync_blk[0] = 1'b0;
    assign proc_15_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_15[0] = dl_detect_out ? proc_dep_vld_vec_15_reg[0] : (proc_15_data_FIFO_blk[0] | proc_15_data_PIPO_blk[0] | proc_15_start_FIFO_blk[0] | proc_15_TLF_FIFO_blk[0] | proc_15_input_sync_blk[0] | proc_15_output_sync_blk[0]);
    assign proc_15_data_FIFO_blk[1] = 1'b0 | (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.finalize_attn_U0.attn_stream_blk_n);
    assign proc_15_data_PIPO_blk[1] = 1'b0;
    assign proc_15_start_FIFO_blk[1] = 1'b0;
    assign proc_15_TLF_FIFO_blk[1] = 1'b0;
    assign proc_15_input_sync_blk[1] = 1'b0;
    assign proc_15_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_15[1] = dl_detect_out ? proc_dep_vld_vec_15_reg[1] : (proc_15_data_FIFO_blk[1] | proc_15_data_PIPO_blk[1] | proc_15_start_FIFO_blk[1] | proc_15_TLF_FIFO_blk[1] | proc_15_input_sync_blk[1] | proc_15_output_sync_blk[1]);
    assign proc_15_data_FIFO_blk[2] = 1'b0 | (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.finalize_attn_U0.attn_softmax_info_stream_blk_n);
    assign proc_15_data_PIPO_blk[2] = 1'b0;
    assign proc_15_start_FIFO_blk[2] = 1'b0;
    assign proc_15_TLF_FIFO_blk[2] = 1'b0;
    assign proc_15_input_sync_blk[2] = 1'b0;
    assign proc_15_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_15[2] = dl_detect_out ? proc_dep_vld_vec_15_reg[2] : (proc_15_data_FIFO_blk[2] | proc_15_data_PIPO_blk[2] | proc_15_start_FIFO_blk[2] | proc_15_TLF_FIFO_blk[2] | proc_15_input_sync_blk[2] | proc_15_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_15_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_15_reg <= proc_dep_vld_vec_15;
        end
    end
    assign in_chan_dep_vld_vec_15[0] = dep_chan_vld_14_15;
    assign in_chan_dep_data_vec_15[24 : 0] = dep_chan_data_14_15;
    assign token_in_vec_15[0] = token_14_15;
    assign in_chan_dep_vld_vec_15[1] = dep_chan_vld_16_15;
    assign in_chan_dep_data_vec_15[49 : 25] = dep_chan_data_16_15;
    assign token_in_vec_15[1] = token_16_15;
    assign in_chan_dep_vld_vec_15[2] = dep_chan_vld_17_15;
    assign in_chan_dep_data_vec_15[74 : 50] = dep_chan_data_17_15;
    assign token_in_vec_15[2] = token_17_15;
    assign dep_chan_vld_15_14 = out_chan_dep_vld_vec_15[0];
    assign dep_chan_data_15_14 = out_chan_dep_data_15;
    assign token_15_14 = token_out_vec_15[0];
    assign dep_chan_vld_15_16 = out_chan_dep_vld_vec_15[1];
    assign dep_chan_data_15_16 = out_chan_dep_data_15;
    assign token_15_16 = token_out_vec_15[1];
    assign dep_chan_vld_15_17 = out_chan_dep_vld_vec_15[2];
    assign dep_chan_data_15_17 = out_chan_dep_data_15;
    assign token_15_17 = token_out_vec_15[2];

    // Process: AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.write_attn_U0
    AESL_deadlock_detect_unit #(25, 16, 3, 3) AESL_deadlock_detect_unit_16 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_16),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_16),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_16),
        .token_in_vec(token_in_vec_16),
        .dl_detect_in(dl_detect_out),
        .origin(origin[16]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_16),
        .out_chan_dep_data(out_chan_dep_data_16),
        .token_out_vec(token_out_vec_16),
        .dl_detect_out(dl_in_vec[16]));

    assign proc_16_data_FIFO_blk[0] = 1'b0 | (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.write_attn_U0.grp_write_attn_Pipeline_ln245_for_each_q_patch_block_ln247_for_each_k_patch_ln249_fu_46.attn_stream_blk_n);
    assign proc_16_data_PIPO_blk[0] = 1'b0;
    assign proc_16_start_FIFO_blk[0] = 1'b0;
    assign proc_16_TLF_FIFO_blk[0] = 1'b0;
    assign proc_16_input_sync_blk[0] = 1'b0;
    assign proc_16_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_16[0] = dl_detect_out ? proc_dep_vld_vec_16_reg[0] : (proc_16_data_FIFO_blk[0] | proc_16_data_PIPO_blk[0] | proc_16_start_FIFO_blk[0] | proc_16_TLF_FIFO_blk[0] | proc_16_input_sync_blk[0] | proc_16_output_sync_blk[0]);
    assign proc_16_data_FIFO_blk[1] = 1'b0 | (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.write_attn_U0.attn_blk_n);
    assign proc_16_data_PIPO_blk[1] = 1'b0;
    assign proc_16_start_FIFO_blk[1] = 1'b0 | (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.start_for_write_attn_U0_U.if_empty_n & AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.write_attn_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.start_for_write_attn_U0_U.if_write);
    assign proc_16_TLF_FIFO_blk[1] = 1'b0;
    assign proc_16_input_sync_blk[1] = 1'b0;
    assign proc_16_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_16[1] = dl_detect_out ? proc_dep_vld_vec_16_reg[1] : (proc_16_data_FIFO_blk[1] | proc_16_data_PIPO_blk[1] | proc_16_start_FIFO_blk[1] | proc_16_TLF_FIFO_blk[1] | proc_16_input_sync_blk[1] | proc_16_output_sync_blk[1]);
    assign proc_16_data_FIFO_blk[2] = 1'b0;
    assign proc_16_data_PIPO_blk[2] = 1'b0;
    assign proc_16_start_FIFO_blk[2] = 1'b0;
    assign proc_16_TLF_FIFO_blk[2] = 1'b0;
    assign proc_16_input_sync_blk[2] = 1'b0;
    assign proc_16_output_sync_blk[2] = 1'b0 | (ap_done_reg_6 & AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.write_attn_U0.ap_done & ~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.write_attn_softmax_info_U0.ap_done);
    assign proc_dep_vld_vec_16[2] = dl_detect_out ? proc_dep_vld_vec_16_reg[2] : (proc_16_data_FIFO_blk[2] | proc_16_data_PIPO_blk[2] | proc_16_start_FIFO_blk[2] | proc_16_TLF_FIFO_blk[2] | proc_16_input_sync_blk[2] | proc_16_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_16_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_16_reg <= proc_dep_vld_vec_16;
        end
    end
    assign in_chan_dep_vld_vec_16[0] = dep_chan_vld_11_16;
    assign in_chan_dep_data_vec_16[24 : 0] = dep_chan_data_11_16;
    assign token_in_vec_16[0] = token_11_16;
    assign in_chan_dep_vld_vec_16[1] = dep_chan_vld_15_16;
    assign in_chan_dep_data_vec_16[49 : 25] = dep_chan_data_15_16;
    assign token_in_vec_16[1] = token_15_16;
    assign in_chan_dep_vld_vec_16[2] = dep_chan_vld_17_16;
    assign in_chan_dep_data_vec_16[74 : 50] = dep_chan_data_17_16;
    assign token_in_vec_16[2] = token_17_16;
    assign dep_chan_vld_16_15 = out_chan_dep_vld_vec_16[0];
    assign dep_chan_data_16_15 = out_chan_dep_data_16;
    assign token_16_15 = token_out_vec_16[0];
    assign dep_chan_vld_16_11 = out_chan_dep_vld_vec_16[1];
    assign dep_chan_data_16_11 = out_chan_dep_data_16;
    assign token_16_11 = token_out_vec_16[1];
    assign dep_chan_vld_16_17 = out_chan_dep_vld_vec_16[2];
    assign dep_chan_data_16_17 = out_chan_dep_data_16;
    assign token_16_17 = token_out_vec_16[2];

    // Process: AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.write_attn_softmax_info_U0
    AESL_deadlock_detect_unit #(25, 17, 3, 3) AESL_deadlock_detect_unit_17 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_17),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_17),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_17),
        .token_in_vec(token_in_vec_17),
        .dl_detect_in(dl_detect_out),
        .origin(origin[17]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_17),
        .out_chan_dep_data(out_chan_dep_data_17),
        .token_out_vec(token_out_vec_17),
        .dl_detect_out(dl_in_vec[17]));

    assign proc_17_data_FIFO_blk[0] = 1'b0 | (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.write_attn_softmax_info_U0.grp_write_attn_softmax_info_Pipeline_ln277_for_each_q_patch_fu_66.attn_softmax_info_stream_blk_n);
    assign proc_17_data_PIPO_blk[0] = 1'b0;
    assign proc_17_start_FIFO_blk[0] = 1'b0;
    assign proc_17_TLF_FIFO_blk[0] = 1'b0;
    assign proc_17_input_sync_blk[0] = 1'b0;
    assign proc_17_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_17[0] = dl_detect_out ? proc_dep_vld_vec_17_reg[0] : (proc_17_data_FIFO_blk[0] | proc_17_data_PIPO_blk[0] | proc_17_start_FIFO_blk[0] | proc_17_TLF_FIFO_blk[0] | proc_17_input_sync_blk[0] | proc_17_output_sync_blk[0]);
    assign proc_17_data_FIFO_blk[1] = 1'b0 | (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.write_attn_softmax_info_U0.attn_softmax_info_blk_n);
    assign proc_17_data_PIPO_blk[1] = 1'b0;
    assign proc_17_start_FIFO_blk[1] = 1'b0 | (~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.start_for_write_attn_softmax_info_U0_U.if_empty_n & AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.write_attn_softmax_info_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.start_for_write_attn_softmax_info_U0_U.if_write);
    assign proc_17_TLF_FIFO_blk[1] = 1'b0;
    assign proc_17_input_sync_blk[1] = 1'b0;
    assign proc_17_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_17[1] = dl_detect_out ? proc_dep_vld_vec_17_reg[1] : (proc_17_data_FIFO_blk[1] | proc_17_data_PIPO_blk[1] | proc_17_start_FIFO_blk[1] | proc_17_TLF_FIFO_blk[1] | proc_17_input_sync_blk[1] | proc_17_output_sync_blk[1]);
    assign proc_17_data_FIFO_blk[2] = 1'b0;
    assign proc_17_data_PIPO_blk[2] = 1'b0;
    assign proc_17_start_FIFO_blk[2] = 1'b0;
    assign proc_17_TLF_FIFO_blk[2] = 1'b0;
    assign proc_17_input_sync_blk[2] = 1'b0;
    assign proc_17_output_sync_blk[2] = 1'b0 | (ap_done_reg_7 & AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.write_attn_softmax_info_U0.ap_done & ~AESL_inst_ViT_act.grp_compute_q_matmul_k_fu_639.write_attn_U0.ap_done);
    assign proc_dep_vld_vec_17[2] = dl_detect_out ? proc_dep_vld_vec_17_reg[2] : (proc_17_data_FIFO_blk[2] | proc_17_data_PIPO_blk[2] | proc_17_start_FIFO_blk[2] | proc_17_TLF_FIFO_blk[2] | proc_17_input_sync_blk[2] | proc_17_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_17_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_17_reg <= proc_dep_vld_vec_17;
        end
    end
    assign in_chan_dep_vld_vec_17[0] = dep_chan_vld_11_17;
    assign in_chan_dep_data_vec_17[24 : 0] = dep_chan_data_11_17;
    assign token_in_vec_17[0] = token_11_17;
    assign in_chan_dep_vld_vec_17[1] = dep_chan_vld_15_17;
    assign in_chan_dep_data_vec_17[49 : 25] = dep_chan_data_15_17;
    assign token_in_vec_17[1] = token_15_17;
    assign in_chan_dep_vld_vec_17[2] = dep_chan_vld_16_17;
    assign in_chan_dep_data_vec_17[74 : 50] = dep_chan_data_16_17;
    assign token_in_vec_17[2] = token_16_17;
    assign dep_chan_vld_17_15 = out_chan_dep_vld_vec_17[0];
    assign dep_chan_data_17_15 = out_chan_dep_data_17;
    assign token_17_15 = token_out_vec_17[0];
    assign dep_chan_vld_17_11 = out_chan_dep_vld_vec_17[1];
    assign dep_chan_data_17_11 = out_chan_dep_data_17;
    assign token_17_11 = token_out_vec_17[1];
    assign dep_chan_vld_17_16 = out_chan_dep_vld_vec_17[2];
    assign dep_chan_data_17_16 = out_chan_dep_data_17;
    assign token_17_16 = token_out_vec_17[2];

    // Process: AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.entry_proc25_U0
    AESL_deadlock_detect_unit #(25, 18, 4, 4) AESL_deadlock_detect_unit_18 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_18),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_18),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_18),
        .token_in_vec(token_in_vec_18),
        .dl_detect_in(dl_detect_out),
        .origin(origin[18]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_18),
        .out_chan_dep_data(out_chan_dep_data_18),
        .token_out_vec(token_out_vec_18),
        .dl_detect_out(dl_in_vec[18]));

    assign proc_18_data_FIFO_blk[0] = 1'b0 | (~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.entry_proc25_U0.attn_matmul_v_c_blk_n);
    assign proc_18_data_PIPO_blk[0] = 1'b0;
    assign proc_18_start_FIFO_blk[0] = 1'b0 | (~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.start_for_write_attn_matmul_v_U0_U.if_full_n & AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.entry_proc25_U0.ap_start & ~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.entry_proc25_U0.real_start & (trans_in_cnt_5 == trans_out_cnt_5) & ~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.start_for_write_attn_matmul_v_U0_U.if_read);
    assign proc_18_TLF_FIFO_blk[0] = 1'b0;
    assign proc_18_input_sync_blk[0] = 1'b0;
    assign proc_18_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_18[0] = dl_detect_out ? proc_dep_vld_vec_18_reg[0] : (proc_18_data_FIFO_blk[0] | proc_18_data_PIPO_blk[0] | proc_18_start_FIFO_blk[0] | proc_18_TLF_FIFO_blk[0] | proc_18_input_sync_blk[0] | proc_18_output_sync_blk[0]);
    assign proc_18_data_FIFO_blk[1] = 1'b0;
    assign proc_18_data_PIPO_blk[1] = 1'b0;
    assign proc_18_start_FIFO_blk[1] = 1'b0;
    assign proc_18_TLF_FIFO_blk[1] = 1'b0;
    assign proc_18_input_sync_blk[1] = 1'b0 | (AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.ap_sync_entry_proc25_U0_ap_ready & AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.entry_proc25_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.ap_sync_read_k_v_6_U0_ap_ready);
    assign proc_18_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_18[1] = dl_detect_out ? proc_dep_vld_vec_18_reg[1] : (proc_18_data_FIFO_blk[1] | proc_18_data_PIPO_blk[1] | proc_18_start_FIFO_blk[1] | proc_18_TLF_FIFO_blk[1] | proc_18_input_sync_blk[1] | proc_18_output_sync_blk[1]);
    assign proc_18_data_FIFO_blk[2] = 1'b0;
    assign proc_18_data_PIPO_blk[2] = 1'b0;
    assign proc_18_start_FIFO_blk[2] = 1'b0;
    assign proc_18_TLF_FIFO_blk[2] = 1'b0;
    assign proc_18_input_sync_blk[2] = 1'b0 | (AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.ap_sync_entry_proc25_U0_ap_ready & AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.entry_proc25_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.ap_sync_read_attn_U0_ap_ready);
    assign proc_18_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_18[2] = dl_detect_out ? proc_dep_vld_vec_18_reg[2] : (proc_18_data_FIFO_blk[2] | proc_18_data_PIPO_blk[2] | proc_18_start_FIFO_blk[2] | proc_18_TLF_FIFO_blk[2] | proc_18_input_sync_blk[2] | proc_18_output_sync_blk[2]);
    assign proc_18_data_FIFO_blk[3] = 1'b0;
    assign proc_18_data_PIPO_blk[3] = 1'b0;
    assign proc_18_start_FIFO_blk[3] = 1'b0;
    assign proc_18_TLF_FIFO_blk[3] = 1'b0;
    assign proc_18_input_sync_blk[3] = 1'b0 | (AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.ap_sync_entry_proc25_U0_ap_ready & AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.entry_proc25_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.ap_sync_read_attn_softmax_info_U0_ap_ready);
    assign proc_18_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_18[3] = dl_detect_out ? proc_dep_vld_vec_18_reg[3] : (proc_18_data_FIFO_blk[3] | proc_18_data_PIPO_blk[3] | proc_18_start_FIFO_blk[3] | proc_18_TLF_FIFO_blk[3] | proc_18_input_sync_blk[3] | proc_18_output_sync_blk[3]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_18_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_18_reg <= proc_dep_vld_vec_18;
        end
    end
    assign in_chan_dep_vld_vec_18[0] = dep_chan_vld_19_18;
    assign in_chan_dep_data_vec_18[24 : 0] = dep_chan_data_19_18;
    assign token_in_vec_18[0] = token_19_18;
    assign in_chan_dep_vld_vec_18[1] = dep_chan_vld_20_18;
    assign in_chan_dep_data_vec_18[49 : 25] = dep_chan_data_20_18;
    assign token_in_vec_18[1] = token_20_18;
    assign in_chan_dep_vld_vec_18[2] = dep_chan_vld_21_18;
    assign in_chan_dep_data_vec_18[74 : 50] = dep_chan_data_21_18;
    assign token_in_vec_18[2] = token_21_18;
    assign in_chan_dep_vld_vec_18[3] = dep_chan_vld_24_18;
    assign in_chan_dep_data_vec_18[99 : 75] = dep_chan_data_24_18;
    assign token_in_vec_18[3] = token_24_18;
    assign dep_chan_vld_18_24 = out_chan_dep_vld_vec_18[0];
    assign dep_chan_data_18_24 = out_chan_dep_data_18;
    assign token_18_24 = token_out_vec_18[0];
    assign dep_chan_vld_18_19 = out_chan_dep_vld_vec_18[1];
    assign dep_chan_data_18_19 = out_chan_dep_data_18;
    assign token_18_19 = token_out_vec_18[1];
    assign dep_chan_vld_18_20 = out_chan_dep_vld_vec_18[2];
    assign dep_chan_data_18_20 = out_chan_dep_data_18;
    assign token_18_20 = token_out_vec_18[2];
    assign dep_chan_vld_18_21 = out_chan_dep_vld_vec_18[3];
    assign dep_chan_data_18_21 = out_chan_dep_data_18;
    assign token_18_21 = token_out_vec_18[3];

    // Process: AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.read_k_v_6_U0
    AESL_deadlock_detect_unit #(25, 19, 4, 4) AESL_deadlock_detect_unit_19 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_19),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_19),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_19),
        .token_in_vec(token_in_vec_19),
        .dl_detect_in(dl_detect_out),
        .origin(origin[19]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_19),
        .out_chan_dep_data(out_chan_dep_data_19),
        .token_out_vec(token_out_vec_19),
        .dl_detect_out(dl_in_vec[19]));

    assign proc_19_data_FIFO_blk[0] = 1'b0 | (~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.read_k_v_6_U0.v_stream_blk_n);
    assign proc_19_data_PIPO_blk[0] = 1'b0;
    assign proc_19_start_FIFO_blk[0] = 1'b0 | (~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.start_for_compute_attn_matmul_v_7_U0_U.if_full_n & AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.read_k_v_6_U0.ap_start & ~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.read_k_v_6_U0.real_start & (trans_in_cnt_4 == trans_out_cnt_4) & ~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.start_for_compute_attn_matmul_v_7_U0_U.if_read);
    assign proc_19_TLF_FIFO_blk[0] = 1'b0;
    assign proc_19_input_sync_blk[0] = 1'b0;
    assign proc_19_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_19[0] = dl_detect_out ? proc_dep_vld_vec_19_reg[0] : (proc_19_data_FIFO_blk[0] | proc_19_data_PIPO_blk[0] | proc_19_start_FIFO_blk[0] | proc_19_TLF_FIFO_blk[0] | proc_19_input_sync_blk[0] | proc_19_output_sync_blk[0]);
    assign proc_19_data_FIFO_blk[1] = 1'b0;
    assign proc_19_data_PIPO_blk[1] = 1'b0;
    assign proc_19_start_FIFO_blk[1] = 1'b0;
    assign proc_19_TLF_FIFO_blk[1] = 1'b0;
    assign proc_19_input_sync_blk[1] = 1'b0 | (AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.ap_sync_read_k_v_6_U0_ap_ready & AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.read_k_v_6_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.ap_sync_entry_proc25_U0_ap_ready);
    assign proc_19_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_19[1] = dl_detect_out ? proc_dep_vld_vec_19_reg[1] : (proc_19_data_FIFO_blk[1] | proc_19_data_PIPO_blk[1] | proc_19_start_FIFO_blk[1] | proc_19_TLF_FIFO_blk[1] | proc_19_input_sync_blk[1] | proc_19_output_sync_blk[1]);
    assign proc_19_data_FIFO_blk[2] = 1'b0;
    assign proc_19_data_PIPO_blk[2] = 1'b0;
    assign proc_19_start_FIFO_blk[2] = 1'b0;
    assign proc_19_TLF_FIFO_blk[2] = 1'b0;
    assign proc_19_input_sync_blk[2] = 1'b0 | (AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.ap_sync_read_k_v_6_U0_ap_ready & AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.read_k_v_6_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.ap_sync_read_attn_U0_ap_ready);
    assign proc_19_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_19[2] = dl_detect_out ? proc_dep_vld_vec_19_reg[2] : (proc_19_data_FIFO_blk[2] | proc_19_data_PIPO_blk[2] | proc_19_start_FIFO_blk[2] | proc_19_TLF_FIFO_blk[2] | proc_19_input_sync_blk[2] | proc_19_output_sync_blk[2]);
    assign proc_19_data_FIFO_blk[3] = 1'b0;
    assign proc_19_data_PIPO_blk[3] = 1'b0;
    assign proc_19_start_FIFO_blk[3] = 1'b0;
    assign proc_19_TLF_FIFO_blk[3] = 1'b0;
    assign proc_19_input_sync_blk[3] = 1'b0 | (AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.ap_sync_read_k_v_6_U0_ap_ready & AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.read_k_v_6_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.ap_sync_read_attn_softmax_info_U0_ap_ready);
    assign proc_19_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_19[3] = dl_detect_out ? proc_dep_vld_vec_19_reg[3] : (proc_19_data_FIFO_blk[3] | proc_19_data_PIPO_blk[3] | proc_19_start_FIFO_blk[3] | proc_19_TLF_FIFO_blk[3] | proc_19_input_sync_blk[3] | proc_19_output_sync_blk[3]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_19_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_19_reg <= proc_dep_vld_vec_19;
        end
    end
    assign in_chan_dep_vld_vec_19[0] = dep_chan_vld_18_19;
    assign in_chan_dep_data_vec_19[24 : 0] = dep_chan_data_18_19;
    assign token_in_vec_19[0] = token_18_19;
    assign in_chan_dep_vld_vec_19[1] = dep_chan_vld_20_19;
    assign in_chan_dep_data_vec_19[49 : 25] = dep_chan_data_20_19;
    assign token_in_vec_19[1] = token_20_19;
    assign in_chan_dep_vld_vec_19[2] = dep_chan_vld_21_19;
    assign in_chan_dep_data_vec_19[74 : 50] = dep_chan_data_21_19;
    assign token_in_vec_19[2] = token_21_19;
    assign in_chan_dep_vld_vec_19[3] = dep_chan_vld_23_19;
    assign in_chan_dep_data_vec_19[99 : 75] = dep_chan_data_23_19;
    assign token_in_vec_19[3] = token_23_19;
    assign dep_chan_vld_19_23 = out_chan_dep_vld_vec_19[0];
    assign dep_chan_data_19_23 = out_chan_dep_data_19;
    assign token_19_23 = token_out_vec_19[0];
    assign dep_chan_vld_19_18 = out_chan_dep_vld_vec_19[1];
    assign dep_chan_data_19_18 = out_chan_dep_data_19;
    assign token_19_18 = token_out_vec_19[1];
    assign dep_chan_vld_19_20 = out_chan_dep_vld_vec_19[2];
    assign dep_chan_data_19_20 = out_chan_dep_data_19;
    assign token_19_20 = token_out_vec_19[2];
    assign dep_chan_vld_19_21 = out_chan_dep_vld_vec_19[3];
    assign dep_chan_data_19_21 = out_chan_dep_data_19;
    assign token_19_21 = token_out_vec_19[3];

    // Process: AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.read_attn_U0
    AESL_deadlock_detect_unit #(25, 20, 4, 4) AESL_deadlock_detect_unit_20 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_20),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_20),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_20),
        .token_in_vec(token_in_vec_20),
        .dl_detect_in(dl_detect_out),
        .origin(origin[20]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_20),
        .out_chan_dep_data(out_chan_dep_data_20),
        .token_out_vec(token_out_vec_20),
        .dl_detect_out(dl_in_vec[20]));

    assign proc_20_data_FIFO_blk[0] = 1'b0 | (~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.read_attn_U0.attn_stream_blk_n);
    assign proc_20_data_PIPO_blk[0] = 1'b0;
    assign proc_20_start_FIFO_blk[0] = 1'b0 | (~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.start_for_prepare_attn_U0_U.if_full_n & AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.read_attn_U0.ap_start & ~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.read_attn_U0.real_start & (trans_in_cnt_3 == trans_out_cnt_3) & ~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.start_for_prepare_attn_U0_U.if_read);
    assign proc_20_TLF_FIFO_blk[0] = 1'b0;
    assign proc_20_input_sync_blk[0] = 1'b0;
    assign proc_20_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_20[0] = dl_detect_out ? proc_dep_vld_vec_20_reg[0] : (proc_20_data_FIFO_blk[0] | proc_20_data_PIPO_blk[0] | proc_20_start_FIFO_blk[0] | proc_20_TLF_FIFO_blk[0] | proc_20_input_sync_blk[0] | proc_20_output_sync_blk[0]);
    assign proc_20_data_FIFO_blk[1] = 1'b0;
    assign proc_20_data_PIPO_blk[1] = 1'b0;
    assign proc_20_start_FIFO_blk[1] = 1'b0;
    assign proc_20_TLF_FIFO_blk[1] = 1'b0;
    assign proc_20_input_sync_blk[1] = 1'b0 | (AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.ap_sync_read_attn_U0_ap_ready & AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.read_attn_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.ap_sync_entry_proc25_U0_ap_ready);
    assign proc_20_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_20[1] = dl_detect_out ? proc_dep_vld_vec_20_reg[1] : (proc_20_data_FIFO_blk[1] | proc_20_data_PIPO_blk[1] | proc_20_start_FIFO_blk[1] | proc_20_TLF_FIFO_blk[1] | proc_20_input_sync_blk[1] | proc_20_output_sync_blk[1]);
    assign proc_20_data_FIFO_blk[2] = 1'b0;
    assign proc_20_data_PIPO_blk[2] = 1'b0;
    assign proc_20_start_FIFO_blk[2] = 1'b0;
    assign proc_20_TLF_FIFO_blk[2] = 1'b0;
    assign proc_20_input_sync_blk[2] = 1'b0 | (AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.ap_sync_read_attn_U0_ap_ready & AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.read_attn_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.ap_sync_read_k_v_6_U0_ap_ready);
    assign proc_20_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_20[2] = dl_detect_out ? proc_dep_vld_vec_20_reg[2] : (proc_20_data_FIFO_blk[2] | proc_20_data_PIPO_blk[2] | proc_20_start_FIFO_blk[2] | proc_20_TLF_FIFO_blk[2] | proc_20_input_sync_blk[2] | proc_20_output_sync_blk[2]);
    assign proc_20_data_FIFO_blk[3] = 1'b0;
    assign proc_20_data_PIPO_blk[3] = 1'b0;
    assign proc_20_start_FIFO_blk[3] = 1'b0;
    assign proc_20_TLF_FIFO_blk[3] = 1'b0;
    assign proc_20_input_sync_blk[3] = 1'b0 | (AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.ap_sync_read_attn_U0_ap_ready & AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.read_attn_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.ap_sync_read_attn_softmax_info_U0_ap_ready);
    assign proc_20_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_20[3] = dl_detect_out ? proc_dep_vld_vec_20_reg[3] : (proc_20_data_FIFO_blk[3] | proc_20_data_PIPO_blk[3] | proc_20_start_FIFO_blk[3] | proc_20_TLF_FIFO_blk[3] | proc_20_input_sync_blk[3] | proc_20_output_sync_blk[3]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_20_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_20_reg <= proc_dep_vld_vec_20;
        end
    end
    assign in_chan_dep_vld_vec_20[0] = dep_chan_vld_18_20;
    assign in_chan_dep_data_vec_20[24 : 0] = dep_chan_data_18_20;
    assign token_in_vec_20[0] = token_18_20;
    assign in_chan_dep_vld_vec_20[1] = dep_chan_vld_19_20;
    assign in_chan_dep_data_vec_20[49 : 25] = dep_chan_data_19_20;
    assign token_in_vec_20[1] = token_19_20;
    assign in_chan_dep_vld_vec_20[2] = dep_chan_vld_21_20;
    assign in_chan_dep_data_vec_20[74 : 50] = dep_chan_data_21_20;
    assign token_in_vec_20[2] = token_21_20;
    assign in_chan_dep_vld_vec_20[3] = dep_chan_vld_22_20;
    assign in_chan_dep_data_vec_20[99 : 75] = dep_chan_data_22_20;
    assign token_in_vec_20[3] = token_22_20;
    assign dep_chan_vld_20_22 = out_chan_dep_vld_vec_20[0];
    assign dep_chan_data_20_22 = out_chan_dep_data_20;
    assign token_20_22 = token_out_vec_20[0];
    assign dep_chan_vld_20_18 = out_chan_dep_vld_vec_20[1];
    assign dep_chan_data_20_18 = out_chan_dep_data_20;
    assign token_20_18 = token_out_vec_20[1];
    assign dep_chan_vld_20_19 = out_chan_dep_vld_vec_20[2];
    assign dep_chan_data_20_19 = out_chan_dep_data_20;
    assign token_20_19 = token_out_vec_20[2];
    assign dep_chan_vld_20_21 = out_chan_dep_vld_vec_20[3];
    assign dep_chan_data_20_21 = out_chan_dep_data_20;
    assign token_20_21 = token_out_vec_20[3];

    // Process: AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.read_attn_softmax_info_U0
    AESL_deadlock_detect_unit #(25, 21, 4, 4) AESL_deadlock_detect_unit_21 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_21),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_21),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_21),
        .token_in_vec(token_in_vec_21),
        .dl_detect_in(dl_detect_out),
        .origin(origin[21]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_21),
        .out_chan_dep_data(out_chan_dep_data_21),
        .token_out_vec(token_out_vec_21),
        .dl_detect_out(dl_in_vec[21]));

    assign proc_21_data_FIFO_blk[0] = 1'b0 | (~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.read_attn_softmax_info_U0.grp_read_attn_softmax_info_Pipeline_ln388_for_each_q_patch_fu_55.attn_softmax_info_stream_blk_n);
    assign proc_21_data_PIPO_blk[0] = 1'b0;
    assign proc_21_start_FIFO_blk[0] = 1'b0;
    assign proc_21_TLF_FIFO_blk[0] = 1'b0;
    assign proc_21_input_sync_blk[0] = 1'b0;
    assign proc_21_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_21[0] = dl_detect_out ? proc_dep_vld_vec_21_reg[0] : (proc_21_data_FIFO_blk[0] | proc_21_data_PIPO_blk[0] | proc_21_start_FIFO_blk[0] | proc_21_TLF_FIFO_blk[0] | proc_21_input_sync_blk[0] | proc_21_output_sync_blk[0]);
    assign proc_21_data_FIFO_blk[1] = 1'b0;
    assign proc_21_data_PIPO_blk[1] = 1'b0;
    assign proc_21_start_FIFO_blk[1] = 1'b0;
    assign proc_21_TLF_FIFO_blk[1] = 1'b0;
    assign proc_21_input_sync_blk[1] = 1'b0 | (AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.ap_sync_read_attn_softmax_info_U0_ap_ready & AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.read_attn_softmax_info_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.ap_sync_entry_proc25_U0_ap_ready);
    assign proc_21_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_21[1] = dl_detect_out ? proc_dep_vld_vec_21_reg[1] : (proc_21_data_FIFO_blk[1] | proc_21_data_PIPO_blk[1] | proc_21_start_FIFO_blk[1] | proc_21_TLF_FIFO_blk[1] | proc_21_input_sync_blk[1] | proc_21_output_sync_blk[1]);
    assign proc_21_data_FIFO_blk[2] = 1'b0;
    assign proc_21_data_PIPO_blk[2] = 1'b0;
    assign proc_21_start_FIFO_blk[2] = 1'b0;
    assign proc_21_TLF_FIFO_blk[2] = 1'b0;
    assign proc_21_input_sync_blk[2] = 1'b0 | (AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.ap_sync_read_attn_softmax_info_U0_ap_ready & AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.read_attn_softmax_info_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.ap_sync_read_k_v_6_U0_ap_ready);
    assign proc_21_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_21[2] = dl_detect_out ? proc_dep_vld_vec_21_reg[2] : (proc_21_data_FIFO_blk[2] | proc_21_data_PIPO_blk[2] | proc_21_start_FIFO_blk[2] | proc_21_TLF_FIFO_blk[2] | proc_21_input_sync_blk[2] | proc_21_output_sync_blk[2]);
    assign proc_21_data_FIFO_blk[3] = 1'b0;
    assign proc_21_data_PIPO_blk[3] = 1'b0;
    assign proc_21_start_FIFO_blk[3] = 1'b0;
    assign proc_21_TLF_FIFO_blk[3] = 1'b0;
    assign proc_21_input_sync_blk[3] = 1'b0 | (AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.ap_sync_read_attn_softmax_info_U0_ap_ready & AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.read_attn_softmax_info_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.ap_sync_read_attn_U0_ap_ready);
    assign proc_21_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_21[3] = dl_detect_out ? proc_dep_vld_vec_21_reg[3] : (proc_21_data_FIFO_blk[3] | proc_21_data_PIPO_blk[3] | proc_21_start_FIFO_blk[3] | proc_21_TLF_FIFO_blk[3] | proc_21_input_sync_blk[3] | proc_21_output_sync_blk[3]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_21_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_21_reg <= proc_dep_vld_vec_21;
        end
    end
    assign in_chan_dep_vld_vec_21[0] = dep_chan_vld_18_21;
    assign in_chan_dep_data_vec_21[24 : 0] = dep_chan_data_18_21;
    assign token_in_vec_21[0] = token_18_21;
    assign in_chan_dep_vld_vec_21[1] = dep_chan_vld_19_21;
    assign in_chan_dep_data_vec_21[49 : 25] = dep_chan_data_19_21;
    assign token_in_vec_21[1] = token_19_21;
    assign in_chan_dep_vld_vec_21[2] = dep_chan_vld_20_21;
    assign in_chan_dep_data_vec_21[74 : 50] = dep_chan_data_20_21;
    assign token_in_vec_21[2] = token_20_21;
    assign in_chan_dep_vld_vec_21[3] = dep_chan_vld_23_21;
    assign in_chan_dep_data_vec_21[99 : 75] = dep_chan_data_23_21;
    assign token_in_vec_21[3] = token_23_21;
    assign dep_chan_vld_21_23 = out_chan_dep_vld_vec_21[0];
    assign dep_chan_data_21_23 = out_chan_dep_data_21;
    assign token_21_23 = token_out_vec_21[0];
    assign dep_chan_vld_21_18 = out_chan_dep_vld_vec_21[1];
    assign dep_chan_data_21_18 = out_chan_dep_data_21;
    assign token_21_18 = token_out_vec_21[1];
    assign dep_chan_vld_21_19 = out_chan_dep_vld_vec_21[2];
    assign dep_chan_data_21_19 = out_chan_dep_data_21;
    assign token_21_19 = token_out_vec_21[2];
    assign dep_chan_vld_21_20 = out_chan_dep_vld_vec_21[3];
    assign dep_chan_data_21_20 = out_chan_dep_data_21;
    assign token_21_20 = token_out_vec_21[3];

    // Process: AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.prepare_attn_U0
    AESL_deadlock_detect_unit #(25, 22, 2, 2) AESL_deadlock_detect_unit_22 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_22),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_22),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_22),
        .token_in_vec(token_in_vec_22),
        .dl_detect_in(dl_detect_out),
        .origin(origin[22]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_22),
        .out_chan_dep_data(out_chan_dep_data_22),
        .token_out_vec(token_out_vec_22),
        .dl_detect_out(dl_in_vec[22]));

    assign proc_22_data_FIFO_blk[0] = 1'b0 | (~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.prepare_attn_U0.attn_stream_blk_n);
    assign proc_22_data_PIPO_blk[0] = 1'b0;
    assign proc_22_start_FIFO_blk[0] = 1'b0 | (~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.start_for_prepare_attn_U0_U.if_empty_n & AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.prepare_attn_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.start_for_prepare_attn_U0_U.if_write);
    assign proc_22_TLF_FIFO_blk[0] = 1'b0;
    assign proc_22_input_sync_blk[0] = 1'b0;
    assign proc_22_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_22[0] = dl_detect_out ? proc_dep_vld_vec_22_reg[0] : (proc_22_data_FIFO_blk[0] | proc_22_data_PIPO_blk[0] | proc_22_start_FIFO_blk[0] | proc_22_TLF_FIFO_blk[0] | proc_22_input_sync_blk[0] | proc_22_output_sync_blk[0]);
    assign proc_22_data_FIFO_blk[1] = 1'b0 | (~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.prepare_attn_U0.qxk_out_stream_blk_n);
    assign proc_22_data_PIPO_blk[1] = 1'b0;
    assign proc_22_start_FIFO_blk[1] = 1'b0;
    assign proc_22_TLF_FIFO_blk[1] = 1'b0;
    assign proc_22_input_sync_blk[1] = 1'b0;
    assign proc_22_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_22[1] = dl_detect_out ? proc_dep_vld_vec_22_reg[1] : (proc_22_data_FIFO_blk[1] | proc_22_data_PIPO_blk[1] | proc_22_start_FIFO_blk[1] | proc_22_TLF_FIFO_blk[1] | proc_22_input_sync_blk[1] | proc_22_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_22_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_22_reg <= proc_dep_vld_vec_22;
        end
    end
    assign in_chan_dep_vld_vec_22[0] = dep_chan_vld_20_22;
    assign in_chan_dep_data_vec_22[24 : 0] = dep_chan_data_20_22;
    assign token_in_vec_22[0] = token_20_22;
    assign in_chan_dep_vld_vec_22[1] = dep_chan_vld_23_22;
    assign in_chan_dep_data_vec_22[49 : 25] = dep_chan_data_23_22;
    assign token_in_vec_22[1] = token_23_22;
    assign dep_chan_vld_22_20 = out_chan_dep_vld_vec_22[0];
    assign dep_chan_data_22_20 = out_chan_dep_data_22;
    assign token_22_20 = token_out_vec_22[0];
    assign dep_chan_vld_22_23 = out_chan_dep_vld_vec_22[1];
    assign dep_chan_data_22_23 = out_chan_dep_data_22;
    assign token_22_23 = token_out_vec_22[1];

    // Process: AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.compute_attn_matmul_v_7_U0
    AESL_deadlock_detect_unit #(25, 23, 4, 4) AESL_deadlock_detect_unit_23 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_23),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_23),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_23),
        .token_in_vec(token_in_vec_23),
        .dl_detect_in(dl_detect_out),
        .origin(origin[23]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_23),
        .out_chan_dep_data(out_chan_dep_data_23),
        .token_out_vec(token_out_vec_23),
        .dl_detect_out(dl_in_vec[23]));

    assign proc_23_data_FIFO_blk[0] = 1'b0 | (~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.compute_attn_matmul_v_7_U0.attn_matmul_v_stream_blk_n);
    assign proc_23_data_PIPO_blk[0] = 1'b0;
    assign proc_23_start_FIFO_blk[0] = 1'b0;
    assign proc_23_TLF_FIFO_blk[0] = 1'b0;
    assign proc_23_input_sync_blk[0] = 1'b0;
    assign proc_23_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_23[0] = dl_detect_out ? proc_dep_vld_vec_23_reg[0] : (proc_23_data_FIFO_blk[0] | proc_23_data_PIPO_blk[0] | proc_23_start_FIFO_blk[0] | proc_23_TLF_FIFO_blk[0] | proc_23_input_sync_blk[0] | proc_23_output_sync_blk[0]);
    assign proc_23_data_FIFO_blk[1] = 1'b0 | (~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.compute_attn_matmul_v_7_U0.qxk_out_stream_blk_n);
    assign proc_23_data_PIPO_blk[1] = 1'b0;
    assign proc_23_start_FIFO_blk[1] = 1'b0;
    assign proc_23_TLF_FIFO_blk[1] = 1'b0;
    assign proc_23_input_sync_blk[1] = 1'b0;
    assign proc_23_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_23[1] = dl_detect_out ? proc_dep_vld_vec_23_reg[1] : (proc_23_data_FIFO_blk[1] | proc_23_data_PIPO_blk[1] | proc_23_start_FIFO_blk[1] | proc_23_TLF_FIFO_blk[1] | proc_23_input_sync_blk[1] | proc_23_output_sync_blk[1]);
    assign proc_23_data_FIFO_blk[2] = 1'b0 | (~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.compute_attn_matmul_v_7_U0.attn_softmax_info_stream_blk_n);
    assign proc_23_data_PIPO_blk[2] = 1'b0;
    assign proc_23_start_FIFO_blk[2] = 1'b0;
    assign proc_23_TLF_FIFO_blk[2] = 1'b0;
    assign proc_23_input_sync_blk[2] = 1'b0;
    assign proc_23_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_23[2] = dl_detect_out ? proc_dep_vld_vec_23_reg[2] : (proc_23_data_FIFO_blk[2] | proc_23_data_PIPO_blk[2] | proc_23_start_FIFO_blk[2] | proc_23_TLF_FIFO_blk[2] | proc_23_input_sync_blk[2] | proc_23_output_sync_blk[2]);
    assign proc_23_data_FIFO_blk[3] = 1'b0 | (~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.compute_attn_matmul_v_7_U0.v_stream_blk_n);
    assign proc_23_data_PIPO_blk[3] = 1'b0;
    assign proc_23_start_FIFO_blk[3] = 1'b0 | (~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.start_for_compute_attn_matmul_v_7_U0_U.if_empty_n & AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.compute_attn_matmul_v_7_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.start_for_compute_attn_matmul_v_7_U0_U.if_write);
    assign proc_23_TLF_FIFO_blk[3] = 1'b0;
    assign proc_23_input_sync_blk[3] = 1'b0;
    assign proc_23_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_23[3] = dl_detect_out ? proc_dep_vld_vec_23_reg[3] : (proc_23_data_FIFO_blk[3] | proc_23_data_PIPO_blk[3] | proc_23_start_FIFO_blk[3] | proc_23_TLF_FIFO_blk[3] | proc_23_input_sync_blk[3] | proc_23_output_sync_blk[3]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_23_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_23_reg <= proc_dep_vld_vec_23;
        end
    end
    assign in_chan_dep_vld_vec_23[0] = dep_chan_vld_19_23;
    assign in_chan_dep_data_vec_23[24 : 0] = dep_chan_data_19_23;
    assign token_in_vec_23[0] = token_19_23;
    assign in_chan_dep_vld_vec_23[1] = dep_chan_vld_21_23;
    assign in_chan_dep_data_vec_23[49 : 25] = dep_chan_data_21_23;
    assign token_in_vec_23[1] = token_21_23;
    assign in_chan_dep_vld_vec_23[2] = dep_chan_vld_22_23;
    assign in_chan_dep_data_vec_23[74 : 50] = dep_chan_data_22_23;
    assign token_in_vec_23[2] = token_22_23;
    assign in_chan_dep_vld_vec_23[3] = dep_chan_vld_24_23;
    assign in_chan_dep_data_vec_23[99 : 75] = dep_chan_data_24_23;
    assign token_in_vec_23[3] = token_24_23;
    assign dep_chan_vld_23_24 = out_chan_dep_vld_vec_23[0];
    assign dep_chan_data_23_24 = out_chan_dep_data_23;
    assign token_23_24 = token_out_vec_23[0];
    assign dep_chan_vld_23_22 = out_chan_dep_vld_vec_23[1];
    assign dep_chan_data_23_22 = out_chan_dep_data_23;
    assign token_23_22 = token_out_vec_23[1];
    assign dep_chan_vld_23_21 = out_chan_dep_vld_vec_23[2];
    assign dep_chan_data_23_21 = out_chan_dep_data_23;
    assign token_23_21 = token_out_vec_23[2];
    assign dep_chan_vld_23_19 = out_chan_dep_vld_vec_23[3];
    assign dep_chan_data_23_19 = out_chan_dep_data_23;
    assign token_23_19 = token_out_vec_23[3];

    // Process: AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.write_attn_matmul_v_U0
    AESL_deadlock_detect_unit #(25, 24, 2, 2) AESL_deadlock_detect_unit_24 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_24),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_24),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_24),
        .token_in_vec(token_in_vec_24),
        .dl_detect_in(dl_detect_out),
        .origin(origin[24]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_24),
        .out_chan_dep_data(out_chan_dep_data_24),
        .token_out_vec(token_out_vec_24),
        .dl_detect_out(dl_in_vec[24]));

    assign proc_24_data_FIFO_blk[0] = 1'b0 | (~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.write_attn_matmul_v_U0.attn_matmul_v_blk_n);
    assign proc_24_data_PIPO_blk[0] = 1'b0;
    assign proc_24_start_FIFO_blk[0] = 1'b0 | (~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.start_for_write_attn_matmul_v_U0_U.if_empty_n & AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.write_attn_matmul_v_U0.ap_idle & ~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.start_for_write_attn_matmul_v_U0_U.if_write);
    assign proc_24_TLF_FIFO_blk[0] = 1'b0;
    assign proc_24_input_sync_blk[0] = 1'b0;
    assign proc_24_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_24[0] = dl_detect_out ? proc_dep_vld_vec_24_reg[0] : (proc_24_data_FIFO_blk[0] | proc_24_data_PIPO_blk[0] | proc_24_start_FIFO_blk[0] | proc_24_TLF_FIFO_blk[0] | proc_24_input_sync_blk[0] | proc_24_output_sync_blk[0]);
    assign proc_24_data_FIFO_blk[1] = 1'b0 | (~AESL_inst_ViT_act.grp_compute_attn_matmul_v_fu_669.write_attn_matmul_v_U0.grp_write_attn_matmul_v_Pipeline_ln403_for_each_patch_ln405_for_block_dim_fu_66.attn_matmul_v_stream_blk_n);
    assign proc_24_data_PIPO_blk[1] = 1'b0;
    assign proc_24_start_FIFO_blk[1] = 1'b0;
    assign proc_24_TLF_FIFO_blk[1] = 1'b0;
    assign proc_24_input_sync_blk[1] = 1'b0;
    assign proc_24_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_24[1] = dl_detect_out ? proc_dep_vld_vec_24_reg[1] : (proc_24_data_FIFO_blk[1] | proc_24_data_PIPO_blk[1] | proc_24_start_FIFO_blk[1] | proc_24_TLF_FIFO_blk[1] | proc_24_input_sync_blk[1] | proc_24_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_24_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_24_reg <= proc_dep_vld_vec_24;
        end
    end
    assign in_chan_dep_vld_vec_24[0] = dep_chan_vld_18_24;
    assign in_chan_dep_data_vec_24[24 : 0] = dep_chan_data_18_24;
    assign token_in_vec_24[0] = token_18_24;
    assign in_chan_dep_vld_vec_24[1] = dep_chan_vld_23_24;
    assign in_chan_dep_data_vec_24[49 : 25] = dep_chan_data_23_24;
    assign token_in_vec_24[1] = token_23_24;
    assign dep_chan_vld_24_18 = out_chan_dep_vld_vec_24[0];
    assign dep_chan_data_24_18 = out_chan_dep_data_24;
    assign token_24_18 = token_out_vec_24[0];
    assign dep_chan_vld_24_23 = out_chan_dep_vld_vec_24[1];
    assign dep_chan_data_24_23 = out_chan_dep_data_24;
    assign token_24_23 = token_out_vec_24[1];


    wire [24:0] dl_in_vec_comb = dl_in_vec & ~{24{all_finish}};
    AESL_deadlock_report_unit #(25) AESL_deadlock_report_unit_inst (
        .dl_reset(dl_reset),
        .dl_clock(dl_clock),
        .dl_in_vec(dl_in_vec_comb),
        .trans_in_cnt_0(trans_in_cnt_0),
        .trans_out_cnt_0(trans_out_cnt_0),
        .trans_in_cnt_1(trans_in_cnt_1),
        .trans_out_cnt_1(trans_out_cnt_1),
        .trans_in_cnt_2(trans_in_cnt_2),
        .trans_out_cnt_2(trans_out_cnt_2),
        .trans_in_cnt_3(trans_in_cnt_3),
        .trans_out_cnt_3(trans_out_cnt_3),
        .trans_in_cnt_4(trans_in_cnt_4),
        .trans_out_cnt_4(trans_out_cnt_4),
        .trans_in_cnt_5(trans_in_cnt_5),
        .trans_out_cnt_5(trans_out_cnt_5),
        .ap_done_reg_0(ap_done_reg_0),
        .ap_done_reg_1(ap_done_reg_1),
        .ap_done_reg_2(ap_done_reg_2),
        .ap_done_reg_3(ap_done_reg_3),
        .ap_done_reg_4(ap_done_reg_4),
        .ap_done_reg_5(ap_done_reg_5),
        .ap_done_reg_6(ap_done_reg_6),
        .ap_done_reg_7(ap_done_reg_7),
        .dl_detect_out(dl_detect_out),
        .origin(origin),
        .token_clear(token_clear));

endmodule
