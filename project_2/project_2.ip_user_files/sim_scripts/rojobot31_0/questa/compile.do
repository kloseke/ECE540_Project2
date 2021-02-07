vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 \
"../../../../project_2.srcs/sources_1/ip/rojobot31_0/src/bot31_if.v" \
"../../../../project_2.srcs/sources_1/ip/rojobot31_0/src/bot31_pgm.v" \
"../../../../project_2.srcs/sources_1/ip/rojobot31_0/src/kcpsm6.v" \
"../../../../project_2.srcs/sources_1/ip/rojobot31_0/src/bot31_top.v" \
"../../../../project_2.srcs/sources_1/ip/rojobot31_0/sim/rojobot31_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

