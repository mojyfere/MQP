proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

start_step init_design
set rc [catch {
  create_msg_db init_design.pb
  set_param xicom.use_bs_reader 1
  create_project -in_memory -part xc7z020clg484-1
  set_property board_part em.avnet.com:zed:part0:1.3 [current_project]
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir C:/Users/georges/Documents/GitHub/MQP/IMU/IMU.cache/wt [current_project]
  set_property parent.project_path C:/Users/georges/Documents/GitHub/MQP/IMU/IMU.xpr [current_project]
  set_property ip_repo_paths c:/Users/georges/Documents/GitHub/MQP/IMU/IMU.cache/ip [current_project]
  set_property ip_output_repo c:/Users/georges/Documents/GitHub/MQP/IMU/IMU.cache/ip [current_project]
  set_property XPM_LIBRARIES XPM_CDC [current_project]
  add_files -quiet C:/Users/georges/Documents/GitHub/MQP/IMU/IMU.runs/synth_1/IMU_top.dcp
  add_files -quiet c:/Users/georges/Documents/GitHub/MQP/IMU/IMU.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.dcp
  set_property netlist_only true [get_files c:/Users/georges/Documents/GitHub/MQP/IMU/IMU.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.dcp]
  add_files -quiet c:/Users/georges/Documents/GitHub/MQP/IMU/IMU.srcs/sources_1/ip/c_addsub_0/c_addsub_0.dcp
  set_property netlist_only true [get_files c:/Users/georges/Documents/GitHub/MQP/IMU/IMU.srcs/sources_1/ip/c_addsub_0/c_addsub_0.dcp]
  add_files -quiet c:/Users/georges/Documents/GitHub/MQP/IMU/IMU.srcs/sources_1/ip/cordic_0/cordic_0.dcp
  set_property netlist_only true [get_files c:/Users/georges/Documents/GitHub/MQP/IMU/IMU.srcs/sources_1/ip/cordic_0/cordic_0.dcp]
  add_files -quiet c:/Users/georges/Documents/GitHub/MQP/IMU/IMU.srcs/sources_1/ip/mult_gen_0/mult_gen_0.dcp
  set_property netlist_only true [get_files c:/Users/georges/Documents/GitHub/MQP/IMU/IMU.srcs/sources_1/ip/mult_gen_0/mult_gen_0.dcp]
  add_files -quiet c:/Users/georges/Documents/GitHub/MQP/IMU/IMU.srcs/sources_1/ip/div_gen_0/div_gen_0.dcp
  set_property netlist_only true [get_files c:/Users/georges/Documents/GitHub/MQP/IMU/IMU.srcs/sources_1/ip/div_gen_0/div_gen_0.dcp]
  read_xdc -mode out_of_context -ref clk_wiz_0 -cells inst c:/Users/georges/Documents/GitHub/MQP/IMU/IMU.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_ooc.xdc
  set_property processing_order EARLY [get_files c:/Users/georges/Documents/GitHub/MQP/IMU/IMU.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_ooc.xdc]
  read_xdc -prop_thru_buffers -ref clk_wiz_0 -cells inst c:/Users/georges/Documents/GitHub/MQP/IMU/IMU.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_board.xdc
  set_property processing_order EARLY [get_files c:/Users/georges/Documents/GitHub/MQP/IMU/IMU.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_board.xdc]
  read_xdc -ref clk_wiz_0 -cells inst c:/Users/georges/Documents/GitHub/MQP/IMU/IMU.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc
  set_property processing_order EARLY [get_files c:/Users/georges/Documents/GitHub/MQP/IMU/IMU.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc]
  read_xdc -mode out_of_context -ref c_addsub_0 -cells U0 c:/Users/georges/Documents/GitHub/MQP/IMU/IMU.srcs/sources_1/ip/c_addsub_0/c_addsub_0_ooc.xdc
  set_property processing_order EARLY [get_files c:/Users/georges/Documents/GitHub/MQP/IMU/IMU.srcs/sources_1/ip/c_addsub_0/c_addsub_0_ooc.xdc]
  read_xdc -mode out_of_context -ref cordic_0 -cells U0 c:/Users/georges/Documents/GitHub/MQP/IMU/IMU.srcs/sources_1/ip/cordic_0/cordic_0_ooc.xdc
  set_property processing_order EARLY [get_files c:/Users/georges/Documents/GitHub/MQP/IMU/IMU.srcs/sources_1/ip/cordic_0/cordic_0_ooc.xdc]
  read_xdc -mode out_of_context -ref mult_gen_0 -cells U0 c:/Users/georges/Documents/GitHub/MQP/IMU/IMU.srcs/sources_1/ip/mult_gen_0/mult_gen_0_ooc.xdc
  set_property processing_order EARLY [get_files c:/Users/georges/Documents/GitHub/MQP/IMU/IMU.srcs/sources_1/ip/mult_gen_0/mult_gen_0_ooc.xdc]
  read_xdc -mode out_of_context -ref div_gen_0 -cells U0 c:/Users/georges/Documents/GitHub/MQP/IMU/IMU.srcs/sources_1/ip/div_gen_0/div_gen_0_ooc.xdc
  set_property processing_order EARLY [get_files c:/Users/georges/Documents/GitHub/MQP/IMU/IMU.srcs/sources_1/ip/div_gen_0/div_gen_0_ooc.xdc]
  read_xdc C:/Users/georges/Documents/GitHub/MQP/IMU/IMU.srcs/constrs_1/new/IMU_constraints.xdc
  link_design -top IMU_top -part xc7z020clg484-1
  write_hwdef -file IMU_top.hwdef
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
}

start_step opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design 
  write_checkpoint -force IMU_top_opt.dcp
  report_drc -file IMU_top_drc_opted.rpt
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
}

start_step place_design
set rc [catch {
  create_msg_db place_design.pb
  implement_debug_core 
  place_design 
  write_checkpoint -force IMU_top_placed.dcp
  report_io -file IMU_top_io_placed.rpt
  report_utilization -file IMU_top_utilization_placed.rpt -pb IMU_top_utilization_placed.pb
  report_control_sets -verbose -file IMU_top_control_sets_placed.rpt
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
}

start_step route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force IMU_top_routed.dcp
  report_drc -file IMU_top_drc_routed.rpt -pb IMU_top_drc_routed.pb
  report_timing_summary -warn_on_violation -max_paths 10 -file IMU_top_timing_summary_routed.rpt -rpx IMU_top_timing_summary_routed.rpx
  report_power -file IMU_top_power_routed.rpt -pb IMU_top_power_summary_routed.pb -rpx IMU_top_power_routed.rpx
  report_route_status -file IMU_top_route_status.rpt -pb IMU_top_route_status.pb
  report_clock_utilization -file IMU_top_clock_utilization_routed.rpt
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
}

start_step write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  catch { write_mem_info -force IMU_top.mmi }
  write_bitstream -force IMU_top.bit 
  catch { write_sysdef -hwdef IMU_top.hwdef -bitfile IMU_top.bit -meminfo IMU_top.mmi -file IMU_top.sysdef }
  catch {write_debug_probes -quiet -force debug_nets}
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
}

