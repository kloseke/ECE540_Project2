set_property SRC_FILE_INFO {cfile:c:/Users/sonal/Documents/GitHub/ECE540_Project2/project_2/project_2.srcs/sources_1/ip/rojobot31_0/rojobot31_0/rojobot31_0_in_context.xdc rfile:../../../../../project_2.srcs/sources_1/ip/rojobot31_0/rojobot31_0/rojobot31_0_in_context.xdc id:1 order:EARLY scoped_inst:rojobot31_0_module} [current_design]
set_property SRC_FILE_INFO {cfile:c:/Users/sonal/Documents/GitHub/ECE540_Project2/project_2/project_2.srcs/sources_1/ip/clk_wiz_0_1/clk_wiz_0/clk_wiz_0_in_context.xdc rfile:../../../../../project_2.srcs/sources_1/ip/clk_wiz_0_1/clk_wiz_0/clk_wiz_0_in_context.xdc id:2 order:EARLY scoped_inst:clk_gen_75hz_module} [current_design]
set_property SRC_FILE_INFO {cfile:C:/Users/sonal/OneDrive/Documents/ECE540_Winter/RVfpgaR1_0-main/src/liteDRAM.xdc rfile:../../../../../../../../../OneDrive/Documents/ECE540_Winter/RVfpgaR1_0-main/src/liteDRAM.xdc id:3} [current_design]
set_property SRC_FILE_INFO {cfile:C:/Users/sonal/OneDrive/Documents/ECE540_Winter/RVfpgaR1_0-main/src/rvfpga.xdc rfile:../../../../../../../../../OneDrive/Documents/ECE540_Winter/RVfpgaR1_0-main/src/rvfpga.xdc id:4} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:1 export:INPUT save:INPUT read:READ} [current_design]
set_property IS_IP_OOC_CELL true [get_cells rojobot31_0_module]
set_property src_info {type:SCOPED_XDC file:2 line:1 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 10.000 -name clk_in1 [get_ports clk_in1]
set_property src_info {type:SCOPED_XDC file:2 line:2 export:INPUT save:INPUT read:READ} [current_design]
create_generated_clock -name clk_gen_75hz_module/clk_75 -source [get_ports clk_in1] -edges {1 2 3} -edge_shift {0.000 1.667 3.333} [get_pins clk_gen_75hz_module/clk_75]
set_property src_info {type:SCOPED_XDC file:2 line:3 export:INPUT save:INPUT read:READ} [current_design]
set_property IO_BUFFER_TYPE NONE [get_ports clk_in1]
set_property src_info {type:SCOPED_XDC file:2 line:4 export:INPUT save:INPUT read:READ} [current_design]
set_property CLOCK_BUFFER_TYPE NONE [get_ports clk_in1]
set_property src_info {type:SCOPED_XDC file:2 line:5 export:INPUT save:INPUT read:READ} [current_design]
set_property IS_IP_OOC_CELL true [get_cells clk_gen_75hz_module]
set_property src_info {type:XDC file:3 line:3 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddram_a[0]}]
set_property src_info {type:XDC file:3 line:4 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL18_II [get_ports {ddram_a[0]}]
set_property src_info {type:XDC file:3 line:7 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddram_a[1]}]
set_property src_info {type:XDC file:3 line:8 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL18_II [get_ports {ddram_a[1]}]
set_property src_info {type:XDC file:3 line:11 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddram_a[2]}]
set_property src_info {type:XDC file:3 line:12 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL18_II [get_ports {ddram_a[2]}]
set_property src_info {type:XDC file:3 line:15 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddram_a[3]}]
set_property src_info {type:XDC file:3 line:16 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL18_II [get_ports {ddram_a[3]}]
set_property src_info {type:XDC file:3 line:19 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddram_a[4]}]
set_property src_info {type:XDC file:3 line:20 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL18_II [get_ports {ddram_a[4]}]
set_property src_info {type:XDC file:3 line:23 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddram_a[5]}]
set_property src_info {type:XDC file:3 line:24 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL18_II [get_ports {ddram_a[5]}]
set_property src_info {type:XDC file:3 line:27 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddram_a[6]}]
set_property src_info {type:XDC file:3 line:28 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL18_II [get_ports {ddram_a[6]}]
set_property src_info {type:XDC file:3 line:31 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddram_a[7]}]
set_property src_info {type:XDC file:3 line:32 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL18_II [get_ports {ddram_a[7]}]
set_property src_info {type:XDC file:3 line:35 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddram_a[8]}]
set_property src_info {type:XDC file:3 line:36 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL18_II [get_ports {ddram_a[8]}]
set_property src_info {type:XDC file:3 line:39 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddram_a[9]}]
set_property src_info {type:XDC file:3 line:40 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL18_II [get_ports {ddram_a[9]}]
set_property src_info {type:XDC file:3 line:43 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddram_a[10]}]
set_property src_info {type:XDC file:3 line:44 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL18_II [get_ports {ddram_a[10]}]
set_property src_info {type:XDC file:3 line:47 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddram_a[11]}]
set_property src_info {type:XDC file:3 line:48 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL18_II [get_ports {ddram_a[11]}]
set_property src_info {type:XDC file:3 line:51 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddram_a[12]}]
set_property src_info {type:XDC file:3 line:52 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL18_II [get_ports {ddram_a[12]}]
set_property src_info {type:XDC file:3 line:55 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddram_ba[0]}]
set_property src_info {type:XDC file:3 line:56 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL18_II [get_ports {ddram_ba[0]}]
set_property src_info {type:XDC file:3 line:59 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddram_ba[1]}]
set_property src_info {type:XDC file:3 line:60 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL18_II [get_ports {ddram_ba[1]}]
set_property src_info {type:XDC file:3 line:63 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddram_ba[2]}]
set_property src_info {type:XDC file:3 line:64 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL18_II [get_ports {ddram_ba[2]}]
set_property src_info {type:XDC file:3 line:67 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports ddram_ras_n]
set_property src_info {type:XDC file:3 line:68 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL18_II [get_ports ddram_ras_n]
set_property src_info {type:XDC file:3 line:71 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports ddram_cas_n]
set_property src_info {type:XDC file:3 line:72 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL18_II [get_ports ddram_cas_n]
set_property src_info {type:XDC file:3 line:75 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports ddram_we_n]
set_property src_info {type:XDC file:3 line:76 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL18_II [get_ports ddram_we_n]
set_property src_info {type:XDC file:3 line:79 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddram_dm[0]}]
set_property src_info {type:XDC file:3 line:80 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL18_II [get_ports {ddram_dm[0]}]
set_property src_info {type:XDC file:3 line:83 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddram_dm[1]}]
set_property src_info {type:XDC file:3 line:84 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL18_II [get_ports {ddram_dm[1]}]
set_property src_info {type:XDC file:3 line:87 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddram_dq[0]}]
set_property src_info {type:XDC file:3 line:88 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL18_II [get_ports {ddram_dq[0]}]
set_property src_info {type:XDC file:3 line:89 export:INPUT save:INPUT read:READ} [current_design]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddram_dq[0]}]
set_property src_info {type:XDC file:3 line:92 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddram_dq[1]}]
set_property src_info {type:XDC file:3 line:93 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL18_II [get_ports {ddram_dq[1]}]
set_property src_info {type:XDC file:3 line:94 export:INPUT save:INPUT read:READ} [current_design]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddram_dq[1]}]
set_property src_info {type:XDC file:3 line:97 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddram_dq[2]}]
set_property src_info {type:XDC file:3 line:98 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL18_II [get_ports {ddram_dq[2]}]
set_property src_info {type:XDC file:3 line:99 export:INPUT save:INPUT read:READ} [current_design]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddram_dq[2]}]
set_property src_info {type:XDC file:3 line:102 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddram_dq[3]}]
set_property src_info {type:XDC file:3 line:103 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL18_II [get_ports {ddram_dq[3]}]
set_property src_info {type:XDC file:3 line:104 export:INPUT save:INPUT read:READ} [current_design]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddram_dq[3]}]
set_property src_info {type:XDC file:3 line:107 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddram_dq[4]}]
set_property src_info {type:XDC file:3 line:108 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL18_II [get_ports {ddram_dq[4]}]
set_property src_info {type:XDC file:3 line:109 export:INPUT save:INPUT read:READ} [current_design]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddram_dq[4]}]
set_property src_info {type:XDC file:3 line:112 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddram_dq[5]}]
set_property src_info {type:XDC file:3 line:113 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL18_II [get_ports {ddram_dq[5]}]
set_property src_info {type:XDC file:3 line:114 export:INPUT save:INPUT read:READ} [current_design]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddram_dq[5]}]
set_property src_info {type:XDC file:3 line:117 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddram_dq[6]}]
set_property src_info {type:XDC file:3 line:118 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL18_II [get_ports {ddram_dq[6]}]
set_property src_info {type:XDC file:3 line:119 export:INPUT save:INPUT read:READ} [current_design]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddram_dq[6]}]
set_property src_info {type:XDC file:3 line:122 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddram_dq[7]}]
set_property src_info {type:XDC file:3 line:123 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL18_II [get_ports {ddram_dq[7]}]
set_property src_info {type:XDC file:3 line:124 export:INPUT save:INPUT read:READ} [current_design]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddram_dq[7]}]
set_property src_info {type:XDC file:3 line:127 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddram_dq[8]}]
set_property src_info {type:XDC file:3 line:128 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL18_II [get_ports {ddram_dq[8]}]
set_property src_info {type:XDC file:3 line:129 export:INPUT save:INPUT read:READ} [current_design]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddram_dq[8]}]
set_property src_info {type:XDC file:3 line:132 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddram_dq[9]}]
set_property src_info {type:XDC file:3 line:133 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL18_II [get_ports {ddram_dq[9]}]
set_property src_info {type:XDC file:3 line:134 export:INPUT save:INPUT read:READ} [current_design]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddram_dq[9]}]
set_property src_info {type:XDC file:3 line:137 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddram_dq[10]}]
set_property src_info {type:XDC file:3 line:138 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL18_II [get_ports {ddram_dq[10]}]
set_property src_info {type:XDC file:3 line:139 export:INPUT save:INPUT read:READ} [current_design]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddram_dq[10]}]
set_property src_info {type:XDC file:3 line:142 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddram_dq[11]}]
set_property src_info {type:XDC file:3 line:143 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL18_II [get_ports {ddram_dq[11]}]
set_property src_info {type:XDC file:3 line:144 export:INPUT save:INPUT read:READ} [current_design]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddram_dq[11]}]
set_property src_info {type:XDC file:3 line:147 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddram_dq[12]}]
set_property src_info {type:XDC file:3 line:148 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL18_II [get_ports {ddram_dq[12]}]
set_property src_info {type:XDC file:3 line:149 export:INPUT save:INPUT read:READ} [current_design]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddram_dq[12]}]
set_property src_info {type:XDC file:3 line:152 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddram_dq[13]}]
set_property src_info {type:XDC file:3 line:153 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL18_II [get_ports {ddram_dq[13]}]
set_property src_info {type:XDC file:3 line:154 export:INPUT save:INPUT read:READ} [current_design]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddram_dq[13]}]
set_property src_info {type:XDC file:3 line:157 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddram_dq[14]}]
set_property src_info {type:XDC file:3 line:158 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL18_II [get_ports {ddram_dq[14]}]
set_property src_info {type:XDC file:3 line:159 export:INPUT save:INPUT read:READ} [current_design]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddram_dq[14]}]
set_property src_info {type:XDC file:3 line:162 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddram_dq[15]}]
set_property src_info {type:XDC file:3 line:163 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL18_II [get_ports {ddram_dq[15]}]
set_property src_info {type:XDC file:3 line:164 export:INPUT save:INPUT read:READ} [current_design]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddram_dq[15]}]
set_property src_info {type:XDC file:3 line:166 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddram_dqs_p[0]}]
set_property src_info {type:XDC file:3 line:167 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD DIFF_SSTL18_II [get_ports {ddram_dqs_p[0]}]
set_property src_info {type:XDC file:3 line:169 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddram_dqs_p[1]}]
set_property src_info {type:XDC file:3 line:170 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD DIFF_SSTL18_II [get_ports {ddram_dqs_p[1]}]
set_property src_info {type:XDC file:3 line:174 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddram_dqs_n[0]}]
set_property src_info {type:XDC file:3 line:175 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD DIFF_SSTL18_II [get_ports {ddram_dqs_n[0]}]
set_property src_info {type:XDC file:3 line:179 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports {ddram_dqs_n[1]}]
set_property src_info {type:XDC file:3 line:180 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD DIFF_SSTL18_II [get_ports {ddram_dqs_n[1]}]
set_property src_info {type:XDC file:3 line:182 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports ddram_clk_p]
set_property src_info {type:XDC file:3 line:183 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD DIFF_SSTL18_II [get_ports ddram_clk_p]
set_property src_info {type:XDC file:3 line:187 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports ddram_clk_n]
set_property src_info {type:XDC file:3 line:188 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD DIFF_SSTL18_II [get_ports ddram_clk_n]
set_property src_info {type:XDC file:3 line:191 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports ddram_cke]
set_property src_info {type:XDC file:3 line:192 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL18_II [get_ports ddram_cke]
set_property src_info {type:XDC file:3 line:195 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports ddram_odt]
set_property src_info {type:XDC file:3 line:196 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL18_II [get_ports ddram_odt]
set_property src_info {type:XDC file:3 line:199 export:INPUT save:INPUT read:READ} [current_design]
set_property SLEW FAST [get_ports ddram_cs_n]
set_property src_info {type:XDC file:3 line:200 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD SSTL18_II [get_ports ddram_cs_n]
set_property src_info {type:XDC file:4 line:1 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports clk]
set_property src_info {type:XDC file:4 line:2 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 100.000 -name tck_dmi -add [get_pins tap/tap_dmi/TCK]
set_property src_info {type:XDC file:4 line:3 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 100.000 -name tck_dtmcs -add [get_pins tap/tap_dtmcs/TCK]
set_property src_info {type:XDC file:4 line:4 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 100.000 -name tck_idcode -add [get_pins tap/tap_idcode/DRCK]
set_property src_info {type:XDC file:4 line:8 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -from [get_cells -regexp {tap/dtmcs_r_reg\[([2-9]|[1-9][0-9])\]}]
set_property src_info {type:XDC file:4 line:93 export:INPUT save:INPUT read:READ} [current_design]
set_property DRIVE 12 [get_ports BTNL]
set_property src_info {type:PI file:{} line:-1 export:INPUT save:INPUT read:READ} [current_design]
create_generated_clock -name vns_pll_fb0 -source [get_pins ddr2/ldc/PLLE2_ADV/CLKIN1] -multiply_by 1 -add -master_clock [get_clocks sys_clk_pin] [get_pins ddr2/ldc/PLLE2_ADV/CLKFBOUT]
set_property src_info {type:PI file:{} line:-1 export:INPUT save:INPUT read:READ} [current_design]
create_generated_clock -name soc_s7pll0_clkout0 -source [get_pins ddr2/ldc/PLLE2_ADV/CLKIN1] -multiply_by 1 -add -master_clock [get_clocks sys_clk_pin] [get_pins ddr2/ldc/PLLE2_ADV/CLKOUT0]
set_property src_info {type:PI file:{} line:-1 export:INPUT save:INPUT read:READ} [current_design]
create_generated_clock -name soc_s7pll0_clkout1 -source [get_pins ddr2/ldc/PLLE2_ADV/CLKIN1] -multiply_by 2 -add -master_clock [get_clocks sys_clk_pin] [get_pins ddr2/ldc/PLLE2_ADV/CLKOUT1]
set_property src_info {type:PI file:{} line:-1 export:INPUT save:INPUT read:READ} [current_design]
create_generated_clock -name soc_s7pll0_clkout2 -source [get_pins ddr2/ldc/PLLE2_ADV/CLKIN1] -edges {1 2 3} -edge_shift {1.250 -1.250 -3.750} -add -master_clock [get_clocks sys_clk_pin] [get_pins ddr2/ldc/PLLE2_ADV/CLKOUT2]
set_property src_info {type:PI file:{} line:-1 export:INPUT save:INPUT read:READ} [current_design]
create_generated_clock -name vns_pll_fb1 -source [get_pins ddr2/ldc/PLLE2_ADV_1/CLKIN1] -multiply_by 1 -add -master_clock [get_clocks sys_clk_pin] [get_pins ddr2/ldc/PLLE2_ADV_1/CLKFBOUT]
set_property src_info {type:PI file:{} line:-1 export:INPUT save:INPUT read:READ} [current_design]
create_generated_clock -name soc_s7pll1_clkout -source [get_pins ddr2/ldc/PLLE2_ADV_1/CLKIN1] -multiply_by 2 -add -master_clock [get_clocks sys_clk_pin] [get_pins ddr2/ldc/PLLE2_ADV_1/CLKOUT0]
set_property src_info {type:PI file:{} line:-1 export:INPUT save:INPUT read:READ} [current_design]
create_generated_clock -name clkfb -source [get_pins clk_gen/PLLE2_BASE_inst/CLKIN1] -multiply_by 1 -add -master_clock [get_clocks soc_s7pll0_clkout0] [get_pins clk_gen/PLLE2_BASE_inst/CLKFBOUT]
set_property src_info {type:PI file:{} line:-1 export:INPUT save:INPUT read:READ} [current_design]
create_generated_clock -name clk_core -source [get_pins clk_gen/PLLE2_BASE_inst/CLKIN1] -edges {1 2 3} -edge_shift {0.000 5.000 10.000} -add -master_clock [get_clocks soc_s7pll0_clkout0] [get_pins clk_gen/PLLE2_BASE_inst/CLKOUT0]
set_property src_info {type:TCL file:{} line:-1 export:INPUT save:INPUT read:READ} [current_design]
set_property DONT_TOUCH true [get_cells rojobot31_0_module]
set_property src_info {type:TCL file:{} line:-1 export:INPUT save:INPUT read:READ} [current_design]
set_property DONT_TOUCH true [get_cells clk_gen_75hz_module]