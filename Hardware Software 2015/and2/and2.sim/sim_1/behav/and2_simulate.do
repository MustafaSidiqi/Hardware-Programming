######################################################################
#
# File name : and2_simulate.do
# Created on: Wed Sep 28 14:12:47 +0200 2016
#
# Auto generated by Vivado for 'behavioral' simulation
#
######################################################################
vsim -voptargs="+acc" -L secureip -L xil_defaultlib -lib xil_defaultlib xil_defaultlib.and2

do {and2_wave.do}

view wave
view structure
view signals

do {and2.udo}

run 0
