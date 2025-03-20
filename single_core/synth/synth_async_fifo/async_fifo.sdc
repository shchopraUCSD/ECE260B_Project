# FIXME first try with a relaxed clock cycle so that timing can be met. 
# we will optimize the final dual core design at the end
set clock_cycle 1.0 
set io_delay 0.2 

set clock_port rd_clk
create_clock -name rd_clk -period $clock_cycle [get_ports $clock_port]

set clock_port wr_clk
create_clock -name wr_clk -period $clock_cycle [get_ports $clock_port]

set_false_path -from [get_clocks wr_clk] -to [get_clocks rd_clk]
set_false_path -from [get_clocks rd_clk] -to [get_clocks wr_clk]

set_false_path -from [get_ports "reset"] 

