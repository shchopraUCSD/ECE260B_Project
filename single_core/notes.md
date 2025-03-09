# NOTES
## Single Core
- using 2ns clock period instead of 1ns for single core synth/pnr/gls - we will do optimization by reducing to 1ns once dual core pnr is done (as per project instructions) 
- the normalization step shifts the sum (denomiantor) to the right by 7 bits. since this could cause a potential division by 0, *1 was added to the denominator* for stability 
- note that in numerator also, absolute value is used, in both RTL and TB, as per the canvas discussion. 
- did two synth runs - with and without SRAM. The with SRAM run is what we will use for reporting synth power, area, timing
- *typical* libraries are being used for all synthesis runs
- there is only one verilog fileset (in the rtl/ subdirectory) but for PNR, the gate-level netlist from synthesis is *copied* to the pnr's netlist/ subdirectory

## Dual Core
- in dual core, use a req/ack interface for the individual sums. whoever is doing dual core RTL/TB needs to decide how the data movement happens

## Optimizations
- there is a *high fanout net* found during synthesis - need to look at this during optimizations
- there is a weird 2-cycle behaviour of div and div\_q in sfp\_row --> need to be careful about this if doing *multicycle for div* operation in SFP
- right now, with 1ns clock period, timing isn't being met, path from i/p of mac\_col to OFIFO's input. So need to pipeline the MAC operation
- *bumped up clock period to 2ns for now*. plan to complete pnr, gls etc. of dual core with this first, and only then come back and try to make it meet timing for clock period of 1ns

# LOGISTICS
## Next steps at this time
- SRAM PnR (this plus core w/o SRAM PnR goes into core hierarchical PnR) 
- single core hierarchical PnR (goes into single core GLS)
- single core GLS: worth it to use synth netlist instead of PNR netlist?
- dual core RTL/TB
 
## Work Distribution
- single core (without SRAMs) RTL, GLS - Shaurya
- SRAM PnR, and single core hierarchical PnR - Shaurya + 1 person(?) 
- dual core RTL, TB - 2 people (?)  
- dual core PnR - later 
- optimizations (meet timing using pipelining, multi-cycle etc.) - later
