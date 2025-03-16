# NOTES
## Single Core
### RTL
- using 2ns clock period instead of 1ns for single core synth/pnr/gls - we will do optimization by reducing to 1ns once dual core pnr is done (as per project instructions) 
- the normalization step shifts the sum (denomiantor) to the right by 7 bits. since this could cause a potential division by 0, *1 was added to the denominator* for stability 
- note that in numerator also, absolute value is used, in both RTL and TB, as per the canvas discussion. 
### Synthesis
- did two synth runs - with and without SRAM. The with SRAM run is what we will use for reporting synth power, area, timing
- *worst case* libraries are being used for all synthesis runs
### SRAM PNR
- there is only one verilog fileset (in the rtl/ subdirectory) but for PNR, the gate-level netlist from synthesis is *copied* to the pnr's netlist/ subdirectory
- had to remove filler/DCAP cells from SRAM PnR for it to work
### Single Core PNR
- see suggested floorplan image, srams will need appropriate rotation, keep mem\_in on left, sum\_out on right (keeping 2 dual cores, left and right, in mind) and output at bottom (right below psum mem's Q port) 
- for netlist/ subdirectory in hierarchical PNR, have copied the netlist from the synth run *without* the SRAMs (i.e. SRAMs are a black box) 
### Single Core GLS
- TBD. 
- should we use synth netlist? or directly PNR netlist? --> give a run with synth netlist and see
- GLS with synth netlist needs the netlist *with* the SRAMs (i.e. SRAMs are NOT a black box) 
#### Warnings
- ports not connected : cnt\_q in mac\_col (expected), o\_full/o\_valid in ofifo --> expected, shouldn't matter
- Bit-select or part-select index out of declared bounds : for mem\_in assignments from the K/Q 2D arrays. --> values at mem\_in seem to match RTL sims. 
## Dual Core
### RTL
- in dual core, use a req/ack interface for the individual sums. whoever is doing dual core RTL/TB needs to decide how the data movement happens

## Optimizations
- there is a *high fanout net* found during synthesis - need to look at this during optimizations
- there is a weird 2-cycle behaviour of div and div\_q in sfp\_row --> need to be careful about this if doing *multicycle for div* operation in SFP
- right now, with 1ns clock period, timing isn't being met, path from i/p of mac\_col to OFIFO's input. So need to pipeline the MAC operation
- may need to use multicycle/pipelining for division in SFP, as well as for the mac\_col
- *bumped up clock period to 2ns for now*. plan to complete pnr, gls etc. of dual core with this first, and only then come back and try to make it meet timing for clock period of 1ns

# LOGISTICS
## Next steps at this time
- SRAM PnR (this plus core w/o SRAM PnR goes into core hierarchical PnR) --> DONE 
- single core synthesis -- increase clock time period to get rid of timing violations, switch to WC libs --> WIP
- single core hierarchical PnR (also goes into single core GLS) --> WIP
- single core GLS: worth it to use synth netlist instead of PNR netlist? yes, let's run it and see --> debug WIP
- dual core RTL/TB
- norm X V calculations for single core
 
## Work Distribution
- single core (without SRAMs) RTL, TB --> Shaurya --> DONE
- SRAM PnR --> Shaurya --> DONE
- single core hierarchical PnR --> Mayank, Soumil --> WIP
- single core GLS (synth/PnR) --> Shaurya, Mayank --> WIP
- dual core RTL, TB --> Divyang, Navya --> WIP
- single core norm X V calculations - Ishita --> Start Monday
- dual core PnR --> LATER 
- dual core GLS --> LATER 
- optimizations --> LATER
