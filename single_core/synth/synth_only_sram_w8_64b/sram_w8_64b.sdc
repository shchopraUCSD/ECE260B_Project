# FIXME first try with a relaxed clock cycle so that timing can be met. 
# we will optimize the final dual core design at the end
set clock_cycle 1.0 
set io_delay 0.2 

set clock_port CLK

create_clock -name CLK -period $clock_cycle [get_ports $clock_port]

set_input_delay -clock [get_clocks CLK] -add_delay -max $io_delay [get_ports {D[*]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max $io_delay [get_ports {CLK}]
set_input_delay -clock [get_clocks CLK] -add_delay -max $io_delay [get_ports {WEN}]
set_input_delay -clock [get_clocks CLK] -add_delay -max $io_delay [get_ports {CEN}]
set_input_delay -clock [get_clocks CLK] -add_delay -max $io_delay [get_ports {A[*]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max $io_delay [get_ports {Q[*]}]

set_false_path -from [get_ports "reset"] 

