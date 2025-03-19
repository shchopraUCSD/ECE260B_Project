import os

fixed_lines = [
"# FIXME first try with a relaxed clock cycle so that timing can be met. ",
"# we will optimize the final dual core design at the end",
"set clock_cycle 4.0 ",
"set io_delay 0.2 ",
"\n",
"set clock_port clk",
"\n",
"create_clock -name clk -period $clock_cycle [get_ports $clock_port]",
"\n",
"set_input_delay -clock [get_clocks clk] -add_delay -max $io_delay [get_ports {mem_in[*]}]",
"set_input_delay -clock [get_clocks clk] -add_delay -max $io_delay [get_ports {clk}]",
"set_input_delay -clock [get_clocks clk] -add_delay -max $io_delay [get_ports {inst}]",
"set_input_delay -clock [get_clocks clk] -add_delay -max $io_delay [get_ports {reset}]",
"set_output_delay -clock [get_clocks clk] -add_delay -max $io_delay [get_ports {sum_out[*]}]",
"set_output_delay -clock [get_clocks clk] -add_delay -max $io_delay [get_ports {out[*]}]"
]

os.system("mv core.sdc core.sdc.prev")

sfp_out_range = range(0,8)
fifo_q_range = range(0,16)

conditions = ["-setup 2" , "-hold 1"] 

with open("core.sdc", 'w') as file:
	for line in fixed_lines:
		file.write(line + "\n")
	file.write("\n\n # ========== Multicycle constraints below ========== \n\n")
	for condition in conditions:
		for i in sfp_out_range:
			line = "set_multicycle_path " + str(condition) + " -from sfp_row_instance/fifo_inst_int/rd_ptr_reg -to sfp_row_instance/sfp_out_sign" + str(i) + "_reg"  
			file.write(line + "\n")
			line = "set_multicycle_path " + str(condition) + " -from sfp_row_instance/sum_q_reg[*] -to sfp_row_instance/sfp_out_sign" +str(i) + "_reg[*]" 
			file.write(line + "\n")
			for j in fifo_q_range:
				line = "set_multicycle_path " + str(condition) + " -from sfp_row_instance/fifo_inst_int/q" + str(j) +"_reg[*] -to sfp_row_instance/sfp_out_sign" +str(i) + "_reg[*]" 
				file.write(line + "\n")
			file.write("\n\n")
