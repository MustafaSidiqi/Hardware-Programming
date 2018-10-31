# 
# Synthesis run script generated by Vivado
# 

debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z010clg400-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/S143322/Digital_watch/digital_watch.cache/wt [current_project]
set_property parent.project_path C:/Users/S143322/Digital_watch/digital_watch.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part digilentinc.com:zybo:part0:1.0 [current_project]
add_files C:/Users/S143322/Digital_watch/digital_watch.srcs/sources_1/bd/zynq_interrupt_system/zynq_interrupt_system.bd
set_property used_in_implementation false [get_files -all c:/Users/S143322/Digital_watch/digital_watch.srcs/sources_1/bd/zynq_interrupt_system/ip/zynq_interrupt_system_processing_system7_0_0/zynq_interrupt_system_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/S143322/Digital_watch/digital_watch.srcs/sources_1/bd/zynq_interrupt_system/ip/zynq_interrupt_system_axi_gpio_0_0/zynq_interrupt_system_axi_gpio_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/S143322/Digital_watch/digital_watch.srcs/sources_1/bd/zynq_interrupt_system/ip/zynq_interrupt_system_axi_gpio_0_0/zynq_interrupt_system_axi_gpio_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/S143322/Digital_watch/digital_watch.srcs/sources_1/bd/zynq_interrupt_system/ip/zynq_interrupt_system_axi_gpio_0_0/zynq_interrupt_system_axi_gpio_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/S143322/Digital_watch/digital_watch.srcs/sources_1/bd/zynq_interrupt_system/ip/zynq_interrupt_system_axi_gpio_1_0/zynq_interrupt_system_axi_gpio_1_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/S143322/Digital_watch/digital_watch.srcs/sources_1/bd/zynq_interrupt_system/ip/zynq_interrupt_system_axi_gpio_1_0/zynq_interrupt_system_axi_gpio_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/S143322/Digital_watch/digital_watch.srcs/sources_1/bd/zynq_interrupt_system/ip/zynq_interrupt_system_axi_gpio_1_0/zynq_interrupt_system_axi_gpio_1_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/S143322/Digital_watch/digital_watch.srcs/sources_1/bd/zynq_interrupt_system/ip/zynq_interrupt_system_rst_processing_system7_0_100M_0/zynq_interrupt_system_rst_processing_system7_0_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/S143322/Digital_watch/digital_watch.srcs/sources_1/bd/zynq_interrupt_system/ip/zynq_interrupt_system_rst_processing_system7_0_100M_0/zynq_interrupt_system_rst_processing_system7_0_100M_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/S143322/Digital_watch/digital_watch.srcs/sources_1/bd/zynq_interrupt_system/ip/zynq_interrupt_system_rst_processing_system7_0_100M_0/zynq_interrupt_system_rst_processing_system7_0_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/S143322/Digital_watch/digital_watch.srcs/sources_1/bd/zynq_interrupt_system/ip/zynq_interrupt_system_xbar_0/zynq_interrupt_system_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/S143322/Digital_watch/digital_watch.srcs/sources_1/bd/zynq_interrupt_system/ip/zynq_interrupt_system_axi_timer_0_0/zynq_interrupt_system_axi_timer_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/S143322/Digital_watch/digital_watch.srcs/sources_1/bd/zynq_interrupt_system/ip/zynq_interrupt_system_axi_timer_0_0/zynq_interrupt_system_axi_timer_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/S143322/Digital_watch/digital_watch.srcs/sources_1/bd/zynq_interrupt_system/ip/zynq_interrupt_system_auto_pc_0/zynq_interrupt_system_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all C:/Users/S143322/Digital_watch/digital_watch.srcs/sources_1/bd/zynq_interrupt_system/zynq_interrupt_system_ooc.xdc]
set_property is_locked true [get_files C:/Users/S143322/Digital_watch/digital_watch.srcs/sources_1/bd/zynq_interrupt_system/zynq_interrupt_system.bd]

read_verilog -library xil_defaultlib C:/Users/S143322/Digital_watch/digital_watch.srcs/sources_1/bd/zynq_interrupt_system/hdl/zynq_interrupt_system_wrapper.v
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
synth_design -top zynq_interrupt_system_wrapper -part xc7z010clg400-1
write_checkpoint -noxdef zynq_interrupt_system_wrapper.dcp
catch { report_utilization -file zynq_interrupt_system_wrapper_utilization_synth.rpt -pb zynq_interrupt_system_wrapper_utilization_synth.pb }
