######################################################################
#
# File name : and3_compile.do
# Created on: Wed Sep 28 14:28:27 +0200 2016
#
# Auto generated by Vivado for 'behavioral' simulation
#
######################################################################
vlib work
vlib msim

vlib msim/xil_defaultlib

vmap xil_defaultlib msim/xil_defaultlib

vcom -64 -2008 -work xil_defaultlib  \
"../../../and3.srcs/sources_1/new/and3.vhd" \


quit -force

