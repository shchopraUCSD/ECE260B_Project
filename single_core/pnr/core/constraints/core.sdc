# FIXME first try with a relaxed clock cycle so that timing can be met. 
# we will optimize the final dual core design at the end
set clock_cycle 1.0 
set io_delay 0.2 

set clock_port clk

create_clock -name clk -period $clock_cycle [get_ports $clock_port]

set_input_delay -clock [get_clocks clk] -add_delay -max $io_delay [get_ports {*}]
set_output_delay -clock [get_clocks clk] -add_delay -max $io_delay [get_ports {*}]

set_false_path -from [get_ports "reset"] 

