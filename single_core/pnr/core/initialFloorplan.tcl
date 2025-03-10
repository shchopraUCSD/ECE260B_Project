# Floorplan
#floorPlan -site core -s 50 100 10.0 10.0 10.0 10.0
floorPlan -site core -r 1 0.50 4.0 4.0 4.0 4.0

globalNetConnect VDD -type pgpin -pin VDD -inst * -verbose
globalNetConnect VSS -type pgpin -pin VSS -inst * -verbose

addRing -spacing {top 1 bottom 1 left 1 right 1} -width {top 2 bottom 2 left 2 right 2}  -layer {top M1 bottom M1 left M2 right M2} -center 1 -type core_rings -nets {VSS  VDD}

setAddStripeMode -break_at {block_ring}

# FIXME Change the number of strip  by looking at the layout, and make sure they actually cross the srams
# note that power stripes in SRAMs are VERTICAL
addStripe -nets {VDD VSS} -layer M5 -direction horizontal -width 1.0 -spacing 2.0 -number_of_sets 16 -start_from left -start 2 -stop 98


#setObjFPlanBox Instance add_instance0 26.4815 85.2705 43.0815 101.6705
#setObjFPlanBox Instance add_instance1 26.5415 28.7445 43.1415 45.1445

# FIXME place the srams by hand, then copy the commands here
#setObjFPlanBox Instance qmem_instance [Fill out]
#setObjFPlanBox Instance kmem_instance [Fill out] 
#setObjFPlanBox Instance psum_mem_instance [Fill out] 

addHaloToBlock {3 3 3 3} qmem_instance 
addHaloToBlock {3 3 3 3} kmem_instance 
addHaloToBlock {3 3 3 3} psum_mem_instance 


addRing -nets {VDD VSS} -type block_rings -around each_block -layer {top M1 bottom M1 left M2 right M2} -width {top 0.5 bottom 0.5 left 0.5 right 0.5} -spacing {top 0.5 bottom 0.5 left 0.5 right 0.5} 


# FIXME need to check these globalNetConnect commands
globalNetConnect VDD -type pgpin -pin VDD -sinst qmem_instance-verbose -override
globalNetConnect VSS -type pgpin -pin VSS -sinst qmem_instance -verbose -override        
globalNetConnect VDD -type pgpin -pin VDD -sinst kmem_instance-verbose -override
globalNetConnect VSS -type pgpin -pin VSS -sinst kmem_instance -verbose -override        
globalNetConnect VDD -type pgpin -pin VDD -sinst psum_mem_instance-verbose -override
globalNetConnect VSS -type pgpin -pin VSS -sinst psum_mem_instance -verbose -override        


sroute 

fit
