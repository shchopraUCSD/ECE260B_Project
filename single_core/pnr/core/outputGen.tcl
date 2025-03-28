streamOut ${design}.gds2 -merge {./subckt/sram_w8_160b.gds2 ./subckt/sram_w8_64b.gds2}
write_lef_abstract ${design}.lef
defOut -netlist -routing ${design}.def
saveNetlist ${design}.pnr.v

setAnalysisMode -setup
set_analysis_view -setup WC_VIEW -hold WC_VIEW
do_extract_model -view WC_VIEW -format dotlib ${design}_WC.lib
write_sdf -view WC_VIEW ${design}_WC.sdf

setAnalysisMode -hold
set_analysis_view -setup BC_VIEW -hold BC_VIEW
do_extract_model -view BC_VIEW -format dotlib ${design}_BC.lib
write_sdf -view BC_VIEW ${design}_BC.sdf
