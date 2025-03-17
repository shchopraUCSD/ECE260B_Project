# Floorplan
# FIXME lower the starting density since the error message says "Density too high (100.3%), stopping detail placement."
floorPlan -site core -r 1 0.50 2.0 2.0 2.0 2.0

globalNetConnect VDD -type pgpin -pin VDD -inst * -verbose
globalNetConnect VSS -type pgpin -pin VSS -inst * -verbose

# Note, power ring is not used for the sub-module in hierarchical syn & pnr
#addRing -spacing {top 1 bottom 1 left 1 right 1} -width {top 2 bottom 2 left 2 right 2}  -layer {top M1 bottom M1 left M2 right M2} -center 1 -type core_rings -nets {VSS  VDD}

setAddStripeMode -break_at {block_ring}

### Note: Change the number of strip  by looking at the layout #########
#addStripe -number_of_sets 2  -spacing 1 -layer M4 -width 1 -nets { VSS VDD }
addStripe -nets {VDD VSS} -layer M4 -direction vertical -width 2.0 -spacing 5.0 -number_of_sets 10 -start_from left -start 5 -stop 160
#################################################

#addStripe -nets {VDD VSS} -layer M4 -direction vertical -width 1.8 -spacing 1.8 -number_of_sets 5 -start_from left -start 80 -stop 180 

sroute


