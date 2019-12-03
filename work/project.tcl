set projDir "/home/kkk/Desktop/attacker_defender_backup/attacker_defender/work/planAhead"
set projName "attacker_defender"
set topName top
set device xc6slx9-2tqg144
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "/home/kkk/Desktop/attacker_defender_backup/attacker_defender/work/verilog/mojo_top_0.v" "/home/kkk/Desktop/attacker_defender_backup/attacker_defender/work/verilog/reset_conditioner_1.v" "/home/kkk/Desktop/attacker_defender_backup/attacker_defender/work/verilog/animations_manager_2.v" "/home/kkk/Desktop/attacker_defender_backup/attacker_defender/work/verilog/animations_manager_2.v" "/home/kkk/Desktop/attacker_defender_backup/attacker_defender/work/verilog/animations_manager_2.v" "/home/kkk/Desktop/attacker_defender_backup/attacker_defender/work/verilog/animations_manager_2.v" "/home/kkk/Desktop/attacker_defender_backup/attacker_defender/work/verilog/animations_manager_2.v" "/home/kkk/Desktop/attacker_defender_backup/attacker_defender/work/verilog/animations_manager_2.v" "/home/kkk/Desktop/attacker_defender_backup/attacker_defender/work/verilog/memory_8.v" "/home/kkk/Desktop/attacker_defender_backup/attacker_defender/work/verilog/seven_seg_9.v" "/home/kkk/Desktop/attacker_defender_backup/attacker_defender/work/verilog/seven_seg_9.v" "/home/kkk/Desktop/attacker_defender_backup/attacker_defender/work/verilog/alu_11.v" "/home/kkk/Desktop/attacker_defender_backup/attacker_defender/work/verilog/ledmanager_12.v" "/home/kkk/Desktop/attacker_defender_backup/attacker_defender/work/verilog/ledmanager_12.v" "/home/kkk/Desktop/attacker_defender_backup/attacker_defender/work/verilog/ledmanager_12.v" "/home/kkk/Desktop/attacker_defender_backup/attacker_defender/work/verilog/ledmanager_12.v" "/home/kkk/Desktop/attacker_defender_backup/attacker_defender/work/verilog/ledmanager_12.v" "/home/kkk/Desktop/attacker_defender_backup/attacker_defender/work/verilog/ledmanager_12.v" "/home/kkk/Desktop/attacker_defender_backup/attacker_defender/work/verilog/adderFunction_18.v" "/home/kkk/Desktop/attacker_defender_backup/attacker_defender/work/verilog/boolFunction_19.v" "/home/kkk/Desktop/attacker_defender_backup/attacker_defender/work/verilog/cmpFunction_20.v" "/home/kkk/Desktop/attacker_defender_backup/attacker_defender/work/verilog/shifterFunction_21.v"]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set ucfSources [list "/home/kkk/Desktop/attacker_defender_backup/attacker_defender/constraint/custom.ucf" "/home/kkk/Apps/mojo-ide-B1.3.6/library/components/mojo.ucf"]
import_files -fileset [get_filesets constrs_1] -force -norecurse $ucfSources
set_property -name {steps.bitgen.args.More Options} -value {-g Binary:Yes -g Compress} -objects [get_runs impl_1]
set_property steps.map.args.mt on [get_runs impl_1]
set_property steps.map.args.pr b [get_runs impl_1]
set_property steps.par.args.mt on [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1
wait_on_run synth_1
launch_runs -runs impl_1
wait_on_run impl_1
launch_runs impl_1 -to_step Bitgen
wait_on_run impl_1
