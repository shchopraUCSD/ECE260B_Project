next steps:
- dual core RTL design (do once the abs in numerator correction is done - PENDING)
- in dual core, use a req/ack interface for the individual sums. whoever is doing dual core RTL/TB needs to decide how the data movement happens

parallelizable steps at this time:
- single core PNR (Shaurya), SRAMs PNR (?) -> combine for hierarchical (?) 
- dual core RTL/TB
- dual core synthesis

optimizations:
- right now, with 1ns clock period, timing isn't being met, path from i/p of mac_col to OFIFO's input. So need to pipeline the MAC operation
- bumped up clock period to 2ns for now. Shaurya to proceed with core (without SRAM) PNR + GLS
 
work distribution: 
- single core (without SRAMs) RTL, PnR, GLS - Shaurya
- SRAM PnR, and single core hierarchical PnR - 1 person (?) 
- dual core RTL, TB - 2 people (?)  
- dual core PnR - later 
- optimizations (meet timing using pipeliningÂmulti-cycle etc.) - later
