// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Feb  5 20:32:07 2021
// Host        : Bird-Watch running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/klose/Downloads/RVfpgaR1_0-main/RVfpgaR1_0-main/Project1/project_1/project_1.gen/sources_1/ip/clk_gen_proj2/clk_gen_proj2_stub.v
// Design      : clk_gen_proj2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clk_gen_proj2(clk_out1, clk_out2, reset, locked, clk_in1_100M)
/* synthesis syn_black_box black_box_pad_pin="clk_out1,clk_out2,reset,locked,clk_in1_100M" */;
  output clk_out1;
  output clk_out2;
  input reset;
  output locked;
  input clk_in1_100M;
endmodule
