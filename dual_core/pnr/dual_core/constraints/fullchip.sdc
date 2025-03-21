# FIXME first try with a relaxed clock cycle so that timing can be met. 
# we will optimize the final dual core design at the end
set clock_cycle 1.0 
set io_delay 0.2 

#set clock_port clk
#create_clock -name clk -period $clock_cycle [get_ports $clock_port]

#set_input_delay -clock [get_clocks clk] -add_delay -max $io_delay [get_ports {*}]
#set_output_delay -clock [get_clocks clk] -add_delay -max $io_delay [get_ports {*}]

set clock_port clk1
create_clock -name clk1 -period $clock_cycle [get_ports $clock_port]

set_input_delay -clock [get_clocks clk1] -add_delay -max $io_delay [get_ports {*}]
set_output_delay -clock [get_clocks clk1] -add_delay -max $io_delay [get_ports {*}]

set clock_port clk2
create_clock -name clk2 -period $clock_cycle [get_ports $clock_port]

set_input_delay -clock [get_clocks clk2] -add_delay -max $io_delay [get_ports {*}]
set_output_delay -clock [get_clocks clk2] -add_delay -max $io_delay [get_ports {*}]

set_false_path -from [get_clocks clk1] -to [get_clocks clk2]
set_false_path -from [get_clocks clk2] -to [get_clocks clk1]

set_false_path -from [get_ports "reset"] 

set_clock_uncertainty 0.05 [get_clocks clk2] 
set_clock_uncertainty 0.05 [get_clocks clk1] 
#create_generated_clock -name clk1 -source [get_ports $clock_port] -divide_by 1 [get_pins fullchip/clk1]
#create_generated_clock -name clk2 -source [get_ports $clock_port] -divide_by 1 [get_pins fullchip/clk2] 
