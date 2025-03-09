#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Sat Mar  8 16:18:01 2025                
#                                                     
#######################################################

#@(#)CDS: Innovus v15.23-s045_1 (64bit) 04/22/2016 12:32 (Linux 2.6.18-194.el5)
#@(#)CDS: NanoRoute 15.23-s045_1 NR160414-1105/15_23-UB (database version 2.30, 317.6.1) {superthreading v1.26}
#@(#)CDS: AAE 15.23-s014 (64bit) 04/22/2016 (Linux 2.6.18-194.el5)
#@(#)CDS: CTE 15.23-s022_1 () Apr 22 2016 09:38:45 ( )
#@(#)CDS: SYNTECH 15.23-s008_1 () Apr 12 2016 21:52:59 ( )
#@(#)CDS: CPE v15.23-s045
#@(#)CDS: IQRC/TQRC 15.1.4-s213 (64bit) Tue Feb  9 17:31:28 PST 2016 (Linux 2.6.18-194.el5)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
getDrawView
loadWorkspace -name Physical
win
set init_pwr_net VDD
set init_gnd_net VSS
set init_verilog ./netlist/sram_w8.v
set init_design_netlisttype Verilog
set init_design_settop 1
set init_top_cell sram_w8
set init_lef_file /home/linux/ieng6/ee260bwi25/public/PDKdata/lef/tcbn65gplus_8lmT2.lef
create_library_set -name WC_LIB -timing $worst_timing_lib
create_library_set -name BC_LIB -timing $best_timing_lib
create_rc_corner -name Cmax -cap_table $worst_captbl -T 125
create_rc_corner -name Cmin -cap_table $best_captbl -T -40
create_delay_corner -name WC -library_set WC_LIB -rc_corner Cmax
create_delay_corner -name BC -library_set BC_LIB -rc_corner Cmin
create_constraint_mode -name CON -sdc_file [list $sdc]
create_analysis_view -name WC_VIEW -delay_corner WC -constraint_mode CON
create_analysis_view -name BC_VIEW -delay_corner BC -constraint_mode CON
init_design -setup WC_VIEW -hold BC_VIEW
set_interactive_constraint_modes {CON}
setDesignMode -process 65
floorPlan -site core -r 1 0.50 2.0 2.0 2.0 2.0
globalNetConnect VDD -type pgpin -pin VDD -inst * -verbose
globalNetConnect VSS -type pgpin -pin VSS -inst * -verbose
setAddStripeMode -break_at block_ring
addStripe -nets {VDD VSS} -layer M4 -direction vertical -width 2.0 -spacing 5.0 -number_of_sets 10 -start_from left -start 5 -stop 160
sroute
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.1 -pinDepth 0.6 -fixedPin 1 -fixOverlap 1 -unit MICRON -spreadDirection counterclockwise -side Bottom -layer 2 -spreadType center -spacing 1.0 -pin {{D[0]} {D[1]} {D[2]} {D[3]} {D[4]} {D[5]} {D[6]} {D[7]} {D[8]} {D[9]} {D[10]} {D[11]} {D[12]} {D[13]} {D[14]} {D[15]} {D[16]} {D[17]} {D[18]} {D[19]} {D[20]} {D[21]} {D[22]} {D[23]} {D[24]} {D[25]} {D[26]} {D[27]} {D[28]} {D[29]} {D[30]} {D[31]} {D[32]} {D[33]} {D[34]} {D[35]} {D[36]} {D[37]} {D[38]} {D[39]} {D[40]} {D[41]} {D[42]} {D[43]} {D[44]} {D[45]} {D[46]} {D[47]} {D[48]} {D[49]} {D[50]} {D[51]} {D[52]} {D[53]} {D[54]} {D[55]} {D[56]} {D[57]} {D[58]} {D[59]} {D[60]} {D[61]} {D[62]} {D[63]} {D[64]} {D[65]} {D[66]} {D[67]} {D[68]} {D[69]} {D[70]} {D[71]} {D[72]} {D[73]} {D[74]} {D[75]} {D[76]} {D[77]} {D[78]} {D[79]} {D[80]} {D[81]} {D[82]} {D[83]} {D[84]} {D[85]} {D[86]} {D[87]} {D[88]} {D[89]} {D[90]} {D[91]} {D[92]} {D[93]} {D[94]} {D[95]} {D[96]} {D[97]} {D[98]} {D[99]} {D[100]} {D[101]} {D[102]} {D[103]} {D[104]} {D[105]} {D[106]} {D[107]} {D[108]} {D[109]} {D[110]} {D[111]} {D[112]} {D[113]} {D[114]} {D[115]} {D[116]} {D[117]} {D[118]} {D[119]} {D[120]} {D[121]} {D[122]} {D[123]} {D[124]} {D[125]} {D[126]} {D[127]}}
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.1 -pinDepth 0.6 -fixedPin 1 -fixOverlap 1 -unit MICRON -spreadDirection counterclockwise -side Bottom -layer 2 -spreadType center -spacing 1.0 -pin {{D[0]} {D[1]} {D[2]} {D[3]} {D[4]} {D[5]} {D[6]} {D[7]} {D[8]} {D[9]} {D[10]} {D[11]} {D[12]} {D[13]} {D[14]} {D[15]} {D[16]} {D[17]} {D[18]} {D[19]} {D[20]} {D[21]} {D[22]} {D[23]} {D[24]} {D[25]} {D[26]} {D[27]} {D[28]} {D[29]} {D[30]} {D[31]} {D[32]} {D[33]} {D[34]} {D[35]} {D[36]} {D[37]} {D[38]} {D[39]} {D[40]} {D[41]} {D[42]} {D[43]} {D[44]} {D[45]} {D[46]} {D[47]} {D[48]} {D[49]} {D[50]} {D[51]} {D[52]} {D[53]} {D[54]} {D[55]} {D[56]} {D[57]} {D[58]} {D[59]} {D[60]} {D[61]} {D[62]} {D[63]} {D[64]} {D[65]} {D[66]} {D[67]} {D[68]} {D[69]} {D[70]} {D[71]} {D[72]} {D[73]} {D[74]} {D[75]} {D[76]} {D[77]} {D[78]} {D[79]} {D[80]} {D[81]} {D[82]} {D[83]} {D[84]} {D[85]} {D[86]} {D[87]} {D[88]} {D[89]} {D[90]} {D[91]} {D[92]} {D[93]} {D[94]} {D[95]} {D[96]} {D[97]} {D[98]} {D[99]} {D[100]} {D[101]} {D[102]} {D[103]} {D[104]} {D[105]} {D[106]} {D[107]} {D[108]} {D[109]} {D[110]} {D[111]} {D[112]} {D[113]} {D[114]} {D[115]} {D[116]} {D[117]} {D[118]} {D[119]} {D[120]} {D[121]} {D[122]} {D[123]} {D[124]} {D[125]} {D[126]} {D[127]}}
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.1 -pinDepth 0.6 -fixedPin 1 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Top -layer 2 -spreadType center -spacing 1.0 -pin {{Q[0]} {Q[1]} {Q[2]} {Q[3]} {Q[4]} {Q[5]} {Q[6]} {Q[7]} {Q[8]} {Q[9]} {Q[10]} {Q[11]} {Q[12]} {Q[13]} {Q[14]} {Q[15]} {Q[16]} {Q[17]} {Q[18]} {Q[19]} {Q[20]} {Q[21]} {Q[22]} {Q[23]} {Q[24]} {Q[25]} {Q[26]} {Q[27]} {Q[28]} {Q[29]} {Q[30]} {Q[31]} {Q[32]} {Q[33]} {Q[34]} {Q[35]} {Q[36]} {Q[37]} {Q[38]} {Q[39]} {Q[40]} {Q[41]} {Q[42]} {Q[43]} {Q[44]} {Q[45]} {Q[46]} {Q[47]} {Q[48]} {Q[49]} {Q[50]} {Q[51]} {Q[52]} {Q[53]} {Q[54]} {Q[55]} {Q[56]} {Q[57]} {Q[58]} {Q[59]} {Q[60]} {Q[61]} {Q[62]} {Q[63]} {Q[64]} {Q[65]} {Q[66]} {Q[67]} {Q[68]} {Q[69]} {Q[70]} {Q[71]} {Q[72]} {Q[73]} {Q[74]} {Q[75]} {Q[76]} {Q[77]} {Q[78]} {Q[79]} {Q[80]} {Q[81]} {Q[82]} {Q[83]} {Q[84]} {Q[85]} {Q[86]} {Q[87]} {Q[88]} {Q[89]} {Q[90]} {Q[91]} {Q[92]} {Q[93]} {Q[94]} {Q[95]} {Q[96]} {Q[97]} {Q[98]} {Q[99]} {Q[100]} {Q[101]} {Q[102]} {Q[103]} {Q[104]} {Q[105]} {Q[106]} {Q[107]} {Q[108]} {Q[109]} {Q[110]} {Q[111]} {Q[112]} {Q[113]} {Q[114]} {Q[115]} {Q[116]} {Q[117]} {Q[118]} {Q[119]} {Q[120]} {Q[121]} {Q[122]} {Q[123]} {Q[124]} {Q[125]} {Q[126]} {Q[127]}}
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.1 -pinDepth 0.6 -fixedPin 1 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Top -layer 2 -spreadType center -spacing 1.0 -pin {{Q[0]} {Q[1]} {Q[2]} {Q[3]} {Q[4]} {Q[5]} {Q[6]} {Q[7]} {Q[8]} {Q[9]} {Q[10]} {Q[11]} {Q[12]} {Q[13]} {Q[14]} {Q[15]} {Q[16]} {Q[17]} {Q[18]} {Q[19]} {Q[20]} {Q[21]} {Q[22]} {Q[23]} {Q[24]} {Q[25]} {Q[26]} {Q[27]} {Q[28]} {Q[29]} {Q[30]} {Q[31]} {Q[32]} {Q[33]} {Q[34]} {Q[35]} {Q[36]} {Q[37]} {Q[38]} {Q[39]} {Q[40]} {Q[41]} {Q[42]} {Q[43]} {Q[44]} {Q[45]} {Q[46]} {Q[47]} {Q[48]} {Q[49]} {Q[50]} {Q[51]} {Q[52]} {Q[53]} {Q[54]} {Q[55]} {Q[56]} {Q[57]} {Q[58]} {Q[59]} {Q[60]} {Q[61]} {Q[62]} {Q[63]} {Q[64]} {Q[65]} {Q[66]} {Q[67]} {Q[68]} {Q[69]} {Q[70]} {Q[71]} {Q[72]} {Q[73]} {Q[74]} {Q[75]} {Q[76]} {Q[77]} {Q[78]} {Q[79]} {Q[80]} {Q[81]} {Q[82]} {Q[83]} {Q[84]} {Q[85]} {Q[86]} {Q[87]} {Q[88]} {Q[89]} {Q[90]} {Q[91]} {Q[92]} {Q[93]} {Q[94]} {Q[95]} {Q[96]} {Q[97]} {Q[98]} {Q[99]} {Q[100]} {Q[101]} {Q[102]} {Q[103]} {Q[104]} {Q[105]} {Q[106]} {Q[107]} {Q[108]} {Q[109]} {Q[110]} {Q[111]} {Q[112]} {Q[113]} {Q[114]} {Q[115]} {Q[116]} {Q[117]} {Q[118]} {Q[119]} {Q[120]} {Q[121]} {Q[122]} {Q[123]} {Q[124]} {Q[125]} {Q[126]} {Q[127]}}
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.1 -pinDepth 0.6 -fixedPin 1 -fixOverlap 1 -unit MICRON -spreadDirection counterclockwise -side Left -layer 3 -spreadType center -spacing 4.0 -pin {{A[0]} {A[1]} {A[2]} {A[3]} CEN WEN CLK}
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.1 -pinDepth 0.6 -fixedPin 1 -fixOverlap 1 -unit MICRON -spreadDirection counterclockwise -side Left -layer 3 -spreadType center -spacing 4.0 -pin {{A[0]} {A[1]} {A[2]} {A[3]} CEN WEN CLK}
setPinAssignMode -pinEditInBatch false
fit
checkPinAssignment
setMaxRouteLayer 4
saveDesign floorplan.enc
setPlaceMode -timingDriven true -reorderScan false -congEffort medium -modulePlan false
setOptMode -effort high -powerEffort high -leakageToDynamicRatio 0.5 -fixFanoutLoad true -restruct true -verbose true
place_opt_design
addFiller -cell {DCAP DCAP4 DCAP8 DCAP16 DCAP32} -merge true
saveDesign placement.enc
set_ccopt_property -update_io_latency false
create_ccopt_clock_tree_spec -file /home/linux/ieng6/ee260bwi25/shchopra/project/single_core/pnr/pnr_sram_only/constraints/sram_w8.ccopt
ccopt_design
set_propagated_clock [all_clocks]
optDesign -postCTS -hold
saveDesign cts.enc
setNanoRouteMode -quiet -drouteAllowMergedWireAtPin false
setNanoRouteMode -quiet -drouteFixAntenna true
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven true
setNanoRouteMode -quiet -routeSiEffort medium
setNanoRouteMode -quiet -routeWithSiPostRouteFix false
setNanoRouteMode -quiet -drouteAutoStop true
setNanoRouteMode -quiet -routeSelectedNetOnly false
setNanoRouteMode -quiet -drouteStartIteration default
routeDesign
setExtractRCMode -engine postRoute
extractRC
setAnalysisMode -analysisType onChipVariation -cppr both
optDesign -postRoute -setup -hold
optDesign -postRoute -drv
optDesign -postRoute -inc
saveDesign route.enc
verify_drc
verifyGeometry
verifyConnectivity
report_timing -max_paths 10 > ${design}.post_route.timing.rpt
report_power -outfile sram_w8.post_route.power.rpt
summaryReport -nohtml -outfile sram_w8.post_route.summary.rpt
streamOut sram_w8.gds2
write_lef_abstract -stripePin -PGPinLayers 4 -extractBlockPGPinLayers 4 sram_w8.lef -specifyTopLayer 4
defOut -netlist -routing sram_w8.def
saveNetlist sram_w8.pnr.v
setAnalysisMode -setup
set_analysis_view -setup WC_VIEW -hold WC_VIEW
do_extract_model -view WC_VIEW -format dotlib ${design}_WC.lib
write_sdf -view WC_VIEW ${design}_WC.sdf
setAnalysisMode -hold
set_analysis_view -setup BC_VIEW -hold BC_VIEW
do_extract_model -view BC_VIEW -format dotlib ${design}_BC.lib
write_sdf -view BC_VIEW ${design}_BC.sdf
checkPinAssignment
verify_drc
verifyGeometry
verifyConnectivity
