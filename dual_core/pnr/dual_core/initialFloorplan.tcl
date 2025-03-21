# Floorplan
floorPlan -site core -r 1 0.50 10.0 10.0 10.0 10.0

#resizeFP -xPercent +200 -yPercent +200

globalNetConnect VDD -type pgpin -pin VDD -inst * -verbose
globalNetConnect VSS -type pgpin -pin VSS -inst * -verbose

addRing -spacing {top 1 bottom 1 left 1 right 1} -width {top 2 bottom 2 left 2 right 2}  -layer {top M1 bottom M1 left M2 right M2} -center 1 -type core_rings -nets {VSS  VDD}

#setAddStripeMode -break_at {block_ring}

# FIXME Change the number of strip  by looking at the layout, and make sure they actually cross the srams
# note that power stripes in SRAMs are VERTICAL
addStripe -skip_via_on_wire_shape Noshape -block_ring_top_layer_limit M1 -max_same_layer_jog_length 0.8 -padcore_ring_bottom_layer_limit M1 -number_of_sets 25 -ybottom_offset 5 -skip_via_on_pin Standardcell -stacked_via_top_layer M8 -padcore_ring_top_layer_limit M1 -spacing 1 -merge_stripes_value 0.1 -direction horizontal -layer M5 -block_ring_bottom_layer_limit M1 -ytop_offset 5 -width 1 -area {} -nets {VDD VSS} -stacked_via_bottom_layer M1

setObjFPlanBox Instance core_instance_1 45.5605 29.525 475.885 459.62
setObjFPlanBox Instance core_instance_2 655.9895 29.525 1086.531 459.62

flipOrRotateObject -flip MY -name core_instance_2

#createRouteBlk -exceptpgnet -cover -inst qmem_instance -layer {M1 M2 M3 M4}
#createRouteBlk -exceptpgnet -cover -inst kmem_instance -layer {M1 M2 M3 M4}
#createRouteBlk -exceptpgnet -cover -inst psum_mem_instance -layer {M1 M2 M3 M4}

addHaloToBlock {3 3 3 3} core_instance_1 
addHaloToBlock {3 3 3 3} core_instance_2

addRing -nets {VDD VSS} -type block_rings -around each_block -layer {top M1 bottom M1 left M2 right M2} -width {top 0.5 bottom 0.5 left 0.5 right 0.5} -spacing {top 0.5 bottom 0.5 left 0.5 right 0.5} 

globalNetConnect VDD -type pgpin -pin VDD -sinst core_instance_1 -verbose -override
globalNetConnect VSS -type pgpin -pin VSS -sinst core_instance_1 -verbose -override   
globalNetConnect VDD -type pgpin -pin VDD -sinst core_instance_2 -verbose -override
globalNetConnect VSS -type pgpin -pin VSS -sinst core_instance_2 -verbose -override  

sroute 

fit
