# FIXME first try with a relaxed clock cycle so that timing can be met. 
# we will optimize the final dual core design at the end
set clock_cycle 1.0 
set io_delay 0.2 


set clock_port clk


create_clock -name clk -period $clock_cycle [get_ports $clock_port]


set_input_delay -clock [get_clocks clk] -add_delay -max $io_delay [get_ports {mem_in[*]}]
set_input_delay -clock [get_clocks clk] -add_delay -max $io_delay [get_ports {clk}]
set_input_delay -clock [get_clocks clk] -add_delay -max $io_delay [get_ports {inst}]
set_input_delay -clock [get_clocks clk] -add_delay -max $io_delay [get_ports {reset}]
set_output_delay -clock [get_clocks clk] -add_delay -max $io_delay [get_ports {sum_out[*]}]
set_output_delay -clock [get_clocks clk] -add_delay -max $io_delay [get_ports {out[*]}]


