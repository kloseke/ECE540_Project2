onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib Bot_Icon_opt

do {wave.do}

view wave
view structure
view signals

do {Bot_Icon.udo}

run -all

quit -force
