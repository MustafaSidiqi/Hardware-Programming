######################################################################
#
# File name : and3_simulate.do
# Created on: Wed Sep 28 14:28:28 +0200 2016
#
# Auto generated by Vivado for 'behavioral' simulation
#
######################################################################
vsim -voptargs="+acc" -L secureip -L xil_defaultlib -lib xil_defaultlib xil_defaultlib.and3

do {and3_wave.do}

view wave
view structure
view signals

do {and3.udo}

run 1000ns
