notes:
- in dual core, use a req/ack interface for the individual sums. whoever is doing dual core RTL/TB needs to decide how the data movement happens
- there is a weird 2-cycle behaviour of div and div\_q in sfp\_row --> need to be careful about this if doing multicycle for div operation in SFP
- using 2ns clock period instead of 1ns for single core synth/pnr/gls - we will do optimization by reducing to 1ns once dual core pnr is done (as per project instructions) 
- the normalization step shifts the sum (denomiantor) to the right by 7 bits. since this could cause a potential division by 0, 1 was added to the denominator for stability 

next steps at this time:
- single core PnR (goes into single core GLS)
- SRAM PnR (this plus core w/o SRAM PnR goes into core hierarchical PnR) 
- dual core RTL/TB

optimizations:
- right now, with 1ns clock period, timing isn't being met, path from i/p of mac\_col to OFIFO's input. So need to pipeline the MAC operation
- bumped up clock period to 2ns for now. Shaurya to proceed with core (without SRAM) PNR + GLS
 
work distribution: 
- single core (without SRAMs) RTL, PnR, GLS - Shaurya
- SRAM PnR, and single core hierarchical PnR - 1 person (?) 
- dual core RTL, TB - 2 people (?)  
- dual core PnR - later 
- optimizations (meet timing using pipelining, multi-cycle etc.) - later
