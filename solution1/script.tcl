############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Deit_cpp
set_top ViT_act
add_files Deit_cpp/src/ViT.cpp
add_files Deit_cpp/src/add.cpp
add_files Deit_cpp/src/attention.cpp
add_files Deit_cpp/src/conv.cpp
add_files Deit_cpp/src/gelu.cpp
add_files Deit_cpp/src/layernorm.cpp
add_files Deit_cpp/src/linear.cpp
add_files -tb Deit_cpp/src/testbench.cpp
add_files -tb Deit_cpp/weights
open_solution "solution1" -flow_target vivado
set_part {xck26-sfvc784-2LV-c}
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog
source "./Deit_cpp/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
