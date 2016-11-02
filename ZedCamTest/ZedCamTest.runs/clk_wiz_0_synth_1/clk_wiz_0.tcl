# 
# Synthesis run script generated by Vivado
# 

set_param project.hsv.suppressChildGraphs 0
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
create_project -in_memory -part xc7z020clg484-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/georges/Documents/GitHub/MQP/ZedCamTest/ZedCamTest.cache/wt [current_project]
set_property parent.project_path C:/Users/georges/Documents/GitHub/MQP/ZedCamTest/ZedCamTest.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part em.avnet.com:zed:part0:1.3 [current_project]
read_ip -quiet C:/Users/georges/Documents/GitHub/MQP/ZedCamTest/ZedCamTest.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xci
set_property is_locked true [get_files C:/Users/georges/Documents/GitHub/MQP/ZedCamTest/ZedCamTest.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xci]

foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top clk_wiz_0 -part xc7z020clg484-1 -mode out_of_context

rename_ref -prefix_all clk_wiz_0_

write_checkpoint -force -noxdef clk_wiz_0.dcp

catch { report_utilization -file clk_wiz_0_utilization_synth.rpt -pb clk_wiz_0_utilization_synth.pb }

if { [catch {
  file copy -force C:/Users/georges/Documents/GitHub/MQP/ZedCamTest/ZedCamTest.runs/clk_wiz_0_synth_1/clk_wiz_0.dcp C:/Users/georges/Documents/GitHub/MQP/ZedCamTest/ZedCamTest.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  write_verilog -force -mode synth_stub C:/Users/georges/Documents/GitHub/MQP/ZedCamTest/ZedCamTest.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub C:/Users/georges/Documents/GitHub/MQP/ZedCamTest/ZedCamTest.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim C:/Users/georges/Documents/GitHub/MQP/ZedCamTest/ZedCamTest.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim C:/Users/georges/Documents/GitHub/MQP/ZedCamTest/ZedCamTest.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if {[file isdir C:/Users/georges/Documents/GitHub/MQP/ZedCamTest/ZedCamTest.ip_user_files/ip/clk_wiz_0]} {
  catch { 
    file copy -force C:/Users/georges/Documents/GitHub/MQP/ZedCamTest/ZedCamTest.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_stub.v C:/Users/georges/Documents/GitHub/MQP/ZedCamTest/ZedCamTest.ip_user_files/ip/clk_wiz_0
  }
}

if {[file isdir C:/Users/georges/Documents/GitHub/MQP/ZedCamTest/ZedCamTest.ip_user_files/ip/clk_wiz_0]} {
  catch { 
    file copy -force C:/Users/georges/Documents/GitHub/MQP/ZedCamTest/ZedCamTest.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_stub.vhdl C:/Users/georges/Documents/GitHub/MQP/ZedCamTest/ZedCamTest.ip_user_files/ip/clk_wiz_0
  }
}
