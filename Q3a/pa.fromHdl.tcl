
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name Q3a -dir "/home/deepak/6thSem/CS220A/Assignments/Q3a/planAhead_run_1" -part xc3s500efg320-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "Q3a.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {Q3a.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top eq2 $srcset
add_files [list {Q3a.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500efg320-4
