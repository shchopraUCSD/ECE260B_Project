# FIXME first try with a relaxed clock cycle so that timing can be met. 
# we will optimize the final dual core design at the end
set clock_cycle 4.0 
set io_delay 0.2 

set clock_port clk

create_clock -name clk -period $clock_cycle [get_ports $clock_port]

set_input_delay -clock [get_clocks clk] -add_delay -max $io_delay [get_ports {mem_in[*]}]
set_input_delay -clock [get_clocks clk] -add_delay -max $io_delay [get_ports {clk}]
set_input_delay -clock [get_clocks clk] -add_delay -max $io_delay [get_ports {inst}]
set_input_delay -clock [get_clocks clk] -add_delay -max $io_delay [get_ports {reset}]
set_output_delay -clock [get_clocks clk] -add_delay -max $io_delay [get_ports {sum_out[*]}]
set_output_delay -clock [get_clocks clk] -add_delay -max $io_delay [get_ports {out[*]}]


#set_multicycle_path -setup 2 -from fifo_top_instance/fifo_instance/rd_ptr_reg[*] -to out_reg[*]
#set_multicycle_path -hold 1 -from fifo_top_instance/fifo_instance/rd_ptr_reg[*] -to out_reg[*]
#
#set_multicycle_path -setup 2 -from sum_q_reg[*] -to out_reg[*]
#set_multicycle_path -hold 1 -from sum_q_reg[*] -to out_reg[*]

