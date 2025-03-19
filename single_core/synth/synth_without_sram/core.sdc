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


 # ========== Multicycle constraints below ========== 

set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/rd_ptr_reg -to sfp_row_instance/sfp_out_sign0_reg
set_multicycle_path -setup 2 -from sfp_row_instance/sum_q_reg[*] -to sfp_row_instance/sfp_out_sign0_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q0_reg[*] -to sfp_row_instance/sfp_out_sign0_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q1_reg[*] -to sfp_row_instance/sfp_out_sign0_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q2_reg[*] -to sfp_row_instance/sfp_out_sign0_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q3_reg[*] -to sfp_row_instance/sfp_out_sign0_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q4_reg[*] -to sfp_row_instance/sfp_out_sign0_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q5_reg[*] -to sfp_row_instance/sfp_out_sign0_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q6_reg[*] -to sfp_row_instance/sfp_out_sign0_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q7_reg[*] -to sfp_row_instance/sfp_out_sign0_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q8_reg[*] -to sfp_row_instance/sfp_out_sign0_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q9_reg[*] -to sfp_row_instance/sfp_out_sign0_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q10_reg[*] -to sfp_row_instance/sfp_out_sign0_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q11_reg[*] -to sfp_row_instance/sfp_out_sign0_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q12_reg[*] -to sfp_row_instance/sfp_out_sign0_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q13_reg[*] -to sfp_row_instance/sfp_out_sign0_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q14_reg[*] -to sfp_row_instance/sfp_out_sign0_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q15_reg[*] -to sfp_row_instance/sfp_out_sign0_reg[*]


set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/rd_ptr_reg -to sfp_row_instance/sfp_out_sign1_reg
set_multicycle_path -setup 2 -from sfp_row_instance/sum_q_reg[*] -to sfp_row_instance/sfp_out_sign1_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q0_reg[*] -to sfp_row_instance/sfp_out_sign1_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q1_reg[*] -to sfp_row_instance/sfp_out_sign1_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q2_reg[*] -to sfp_row_instance/sfp_out_sign1_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q3_reg[*] -to sfp_row_instance/sfp_out_sign1_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q4_reg[*] -to sfp_row_instance/sfp_out_sign1_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q5_reg[*] -to sfp_row_instance/sfp_out_sign1_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q6_reg[*] -to sfp_row_instance/sfp_out_sign1_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q7_reg[*] -to sfp_row_instance/sfp_out_sign1_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q8_reg[*] -to sfp_row_instance/sfp_out_sign1_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q9_reg[*] -to sfp_row_instance/sfp_out_sign1_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q10_reg[*] -to sfp_row_instance/sfp_out_sign1_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q11_reg[*] -to sfp_row_instance/sfp_out_sign1_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q12_reg[*] -to sfp_row_instance/sfp_out_sign1_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q13_reg[*] -to sfp_row_instance/sfp_out_sign1_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q14_reg[*] -to sfp_row_instance/sfp_out_sign1_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q15_reg[*] -to sfp_row_instance/sfp_out_sign1_reg[*]


set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/rd_ptr_reg -to sfp_row_instance/sfp_out_sign2_reg
set_multicycle_path -setup 2 -from sfp_row_instance/sum_q_reg[*] -to sfp_row_instance/sfp_out_sign2_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q0_reg[*] -to sfp_row_instance/sfp_out_sign2_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q1_reg[*] -to sfp_row_instance/sfp_out_sign2_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q2_reg[*] -to sfp_row_instance/sfp_out_sign2_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q3_reg[*] -to sfp_row_instance/sfp_out_sign2_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q4_reg[*] -to sfp_row_instance/sfp_out_sign2_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q5_reg[*] -to sfp_row_instance/sfp_out_sign2_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q6_reg[*] -to sfp_row_instance/sfp_out_sign2_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q7_reg[*] -to sfp_row_instance/sfp_out_sign2_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q8_reg[*] -to sfp_row_instance/sfp_out_sign2_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q9_reg[*] -to sfp_row_instance/sfp_out_sign2_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q10_reg[*] -to sfp_row_instance/sfp_out_sign2_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q11_reg[*] -to sfp_row_instance/sfp_out_sign2_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q12_reg[*] -to sfp_row_instance/sfp_out_sign2_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q13_reg[*] -to sfp_row_instance/sfp_out_sign2_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q14_reg[*] -to sfp_row_instance/sfp_out_sign2_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q15_reg[*] -to sfp_row_instance/sfp_out_sign2_reg[*]


set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/rd_ptr_reg -to sfp_row_instance/sfp_out_sign3_reg
set_multicycle_path -setup 2 -from sfp_row_instance/sum_q_reg[*] -to sfp_row_instance/sfp_out_sign3_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q0_reg[*] -to sfp_row_instance/sfp_out_sign3_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q1_reg[*] -to sfp_row_instance/sfp_out_sign3_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q2_reg[*] -to sfp_row_instance/sfp_out_sign3_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q3_reg[*] -to sfp_row_instance/sfp_out_sign3_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q4_reg[*] -to sfp_row_instance/sfp_out_sign3_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q5_reg[*] -to sfp_row_instance/sfp_out_sign3_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q6_reg[*] -to sfp_row_instance/sfp_out_sign3_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q7_reg[*] -to sfp_row_instance/sfp_out_sign3_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q8_reg[*] -to sfp_row_instance/sfp_out_sign3_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q9_reg[*] -to sfp_row_instance/sfp_out_sign3_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q10_reg[*] -to sfp_row_instance/sfp_out_sign3_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q11_reg[*] -to sfp_row_instance/sfp_out_sign3_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q12_reg[*] -to sfp_row_instance/sfp_out_sign3_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q13_reg[*] -to sfp_row_instance/sfp_out_sign3_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q14_reg[*] -to sfp_row_instance/sfp_out_sign3_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q15_reg[*] -to sfp_row_instance/sfp_out_sign3_reg[*]


set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/rd_ptr_reg -to sfp_row_instance/sfp_out_sign4_reg
set_multicycle_path -setup 2 -from sfp_row_instance/sum_q_reg[*] -to sfp_row_instance/sfp_out_sign4_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q0_reg[*] -to sfp_row_instance/sfp_out_sign4_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q1_reg[*] -to sfp_row_instance/sfp_out_sign4_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q2_reg[*] -to sfp_row_instance/sfp_out_sign4_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q3_reg[*] -to sfp_row_instance/sfp_out_sign4_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q4_reg[*] -to sfp_row_instance/sfp_out_sign4_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q5_reg[*] -to sfp_row_instance/sfp_out_sign4_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q6_reg[*] -to sfp_row_instance/sfp_out_sign4_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q7_reg[*] -to sfp_row_instance/sfp_out_sign4_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q8_reg[*] -to sfp_row_instance/sfp_out_sign4_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q9_reg[*] -to sfp_row_instance/sfp_out_sign4_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q10_reg[*] -to sfp_row_instance/sfp_out_sign4_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q11_reg[*] -to sfp_row_instance/sfp_out_sign4_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q12_reg[*] -to sfp_row_instance/sfp_out_sign4_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q13_reg[*] -to sfp_row_instance/sfp_out_sign4_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q14_reg[*] -to sfp_row_instance/sfp_out_sign4_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q15_reg[*] -to sfp_row_instance/sfp_out_sign4_reg[*]


set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/rd_ptr_reg -to sfp_row_instance/sfp_out_sign5_reg
set_multicycle_path -setup 2 -from sfp_row_instance/sum_q_reg[*] -to sfp_row_instance/sfp_out_sign5_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q0_reg[*] -to sfp_row_instance/sfp_out_sign5_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q1_reg[*] -to sfp_row_instance/sfp_out_sign5_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q2_reg[*] -to sfp_row_instance/sfp_out_sign5_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q3_reg[*] -to sfp_row_instance/sfp_out_sign5_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q4_reg[*] -to sfp_row_instance/sfp_out_sign5_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q5_reg[*] -to sfp_row_instance/sfp_out_sign5_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q6_reg[*] -to sfp_row_instance/sfp_out_sign5_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q7_reg[*] -to sfp_row_instance/sfp_out_sign5_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q8_reg[*] -to sfp_row_instance/sfp_out_sign5_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q9_reg[*] -to sfp_row_instance/sfp_out_sign5_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q10_reg[*] -to sfp_row_instance/sfp_out_sign5_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q11_reg[*] -to sfp_row_instance/sfp_out_sign5_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q12_reg[*] -to sfp_row_instance/sfp_out_sign5_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q13_reg[*] -to sfp_row_instance/sfp_out_sign5_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q14_reg[*] -to sfp_row_instance/sfp_out_sign5_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q15_reg[*] -to sfp_row_instance/sfp_out_sign5_reg[*]


set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/rd_ptr_reg -to sfp_row_instance/sfp_out_sign6_reg
set_multicycle_path -setup 2 -from sfp_row_instance/sum_q_reg[*] -to sfp_row_instance/sfp_out_sign6_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q0_reg[*] -to sfp_row_instance/sfp_out_sign6_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q1_reg[*] -to sfp_row_instance/sfp_out_sign6_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q2_reg[*] -to sfp_row_instance/sfp_out_sign6_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q3_reg[*] -to sfp_row_instance/sfp_out_sign6_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q4_reg[*] -to sfp_row_instance/sfp_out_sign6_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q5_reg[*] -to sfp_row_instance/sfp_out_sign6_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q6_reg[*] -to sfp_row_instance/sfp_out_sign6_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q7_reg[*] -to sfp_row_instance/sfp_out_sign6_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q8_reg[*] -to sfp_row_instance/sfp_out_sign6_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q9_reg[*] -to sfp_row_instance/sfp_out_sign6_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q10_reg[*] -to sfp_row_instance/sfp_out_sign6_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q11_reg[*] -to sfp_row_instance/sfp_out_sign6_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q12_reg[*] -to sfp_row_instance/sfp_out_sign6_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q13_reg[*] -to sfp_row_instance/sfp_out_sign6_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q14_reg[*] -to sfp_row_instance/sfp_out_sign6_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q15_reg[*] -to sfp_row_instance/sfp_out_sign6_reg[*]


set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/rd_ptr_reg -to sfp_row_instance/sfp_out_sign7_reg
set_multicycle_path -setup 2 -from sfp_row_instance/sum_q_reg[*] -to sfp_row_instance/sfp_out_sign7_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q0_reg[*] -to sfp_row_instance/sfp_out_sign7_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q1_reg[*] -to sfp_row_instance/sfp_out_sign7_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q2_reg[*] -to sfp_row_instance/sfp_out_sign7_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q3_reg[*] -to sfp_row_instance/sfp_out_sign7_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q4_reg[*] -to sfp_row_instance/sfp_out_sign7_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q5_reg[*] -to sfp_row_instance/sfp_out_sign7_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q6_reg[*] -to sfp_row_instance/sfp_out_sign7_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q7_reg[*] -to sfp_row_instance/sfp_out_sign7_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q8_reg[*] -to sfp_row_instance/sfp_out_sign7_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q9_reg[*] -to sfp_row_instance/sfp_out_sign7_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q10_reg[*] -to sfp_row_instance/sfp_out_sign7_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q11_reg[*] -to sfp_row_instance/sfp_out_sign7_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q12_reg[*] -to sfp_row_instance/sfp_out_sign7_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q13_reg[*] -to sfp_row_instance/sfp_out_sign7_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q14_reg[*] -to sfp_row_instance/sfp_out_sign7_reg[*]
set_multicycle_path -setup 2 -from sfp_row_instance/fifo_inst_int/q15_reg[*] -to sfp_row_instance/sfp_out_sign7_reg[*]


set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/rd_ptr_reg -to sfp_row_instance/sfp_out_sign0_reg
set_multicycle_path -hold 1 -from sfp_row_instance/sum_q_reg[*] -to sfp_row_instance/sfp_out_sign0_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q0_reg[*] -to sfp_row_instance/sfp_out_sign0_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q1_reg[*] -to sfp_row_instance/sfp_out_sign0_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q2_reg[*] -to sfp_row_instance/sfp_out_sign0_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q3_reg[*] -to sfp_row_instance/sfp_out_sign0_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q4_reg[*] -to sfp_row_instance/sfp_out_sign0_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q5_reg[*] -to sfp_row_instance/sfp_out_sign0_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q6_reg[*] -to sfp_row_instance/sfp_out_sign0_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q7_reg[*] -to sfp_row_instance/sfp_out_sign0_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q8_reg[*] -to sfp_row_instance/sfp_out_sign0_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q9_reg[*] -to sfp_row_instance/sfp_out_sign0_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q10_reg[*] -to sfp_row_instance/sfp_out_sign0_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q11_reg[*] -to sfp_row_instance/sfp_out_sign0_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q12_reg[*] -to sfp_row_instance/sfp_out_sign0_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q13_reg[*] -to sfp_row_instance/sfp_out_sign0_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q14_reg[*] -to sfp_row_instance/sfp_out_sign0_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q15_reg[*] -to sfp_row_instance/sfp_out_sign0_reg[*]


set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/rd_ptr_reg -to sfp_row_instance/sfp_out_sign1_reg
set_multicycle_path -hold 1 -from sfp_row_instance/sum_q_reg[*] -to sfp_row_instance/sfp_out_sign1_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q0_reg[*] -to sfp_row_instance/sfp_out_sign1_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q1_reg[*] -to sfp_row_instance/sfp_out_sign1_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q2_reg[*] -to sfp_row_instance/sfp_out_sign1_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q3_reg[*] -to sfp_row_instance/sfp_out_sign1_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q4_reg[*] -to sfp_row_instance/sfp_out_sign1_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q5_reg[*] -to sfp_row_instance/sfp_out_sign1_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q6_reg[*] -to sfp_row_instance/sfp_out_sign1_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q7_reg[*] -to sfp_row_instance/sfp_out_sign1_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q8_reg[*] -to sfp_row_instance/sfp_out_sign1_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q9_reg[*] -to sfp_row_instance/sfp_out_sign1_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q10_reg[*] -to sfp_row_instance/sfp_out_sign1_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q11_reg[*] -to sfp_row_instance/sfp_out_sign1_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q12_reg[*] -to sfp_row_instance/sfp_out_sign1_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q13_reg[*] -to sfp_row_instance/sfp_out_sign1_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q14_reg[*] -to sfp_row_instance/sfp_out_sign1_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q15_reg[*] -to sfp_row_instance/sfp_out_sign1_reg[*]


set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/rd_ptr_reg -to sfp_row_instance/sfp_out_sign2_reg
set_multicycle_path -hold 1 -from sfp_row_instance/sum_q_reg[*] -to sfp_row_instance/sfp_out_sign2_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q0_reg[*] -to sfp_row_instance/sfp_out_sign2_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q1_reg[*] -to sfp_row_instance/sfp_out_sign2_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q2_reg[*] -to sfp_row_instance/sfp_out_sign2_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q3_reg[*] -to sfp_row_instance/sfp_out_sign2_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q4_reg[*] -to sfp_row_instance/sfp_out_sign2_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q5_reg[*] -to sfp_row_instance/sfp_out_sign2_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q6_reg[*] -to sfp_row_instance/sfp_out_sign2_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q7_reg[*] -to sfp_row_instance/sfp_out_sign2_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q8_reg[*] -to sfp_row_instance/sfp_out_sign2_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q9_reg[*] -to sfp_row_instance/sfp_out_sign2_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q10_reg[*] -to sfp_row_instance/sfp_out_sign2_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q11_reg[*] -to sfp_row_instance/sfp_out_sign2_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q12_reg[*] -to sfp_row_instance/sfp_out_sign2_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q13_reg[*] -to sfp_row_instance/sfp_out_sign2_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q14_reg[*] -to sfp_row_instance/sfp_out_sign2_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q15_reg[*] -to sfp_row_instance/sfp_out_sign2_reg[*]


set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/rd_ptr_reg -to sfp_row_instance/sfp_out_sign3_reg
set_multicycle_path -hold 1 -from sfp_row_instance/sum_q_reg[*] -to sfp_row_instance/sfp_out_sign3_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q0_reg[*] -to sfp_row_instance/sfp_out_sign3_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q1_reg[*] -to sfp_row_instance/sfp_out_sign3_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q2_reg[*] -to sfp_row_instance/sfp_out_sign3_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q3_reg[*] -to sfp_row_instance/sfp_out_sign3_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q4_reg[*] -to sfp_row_instance/sfp_out_sign3_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q5_reg[*] -to sfp_row_instance/sfp_out_sign3_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q6_reg[*] -to sfp_row_instance/sfp_out_sign3_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q7_reg[*] -to sfp_row_instance/sfp_out_sign3_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q8_reg[*] -to sfp_row_instance/sfp_out_sign3_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q9_reg[*] -to sfp_row_instance/sfp_out_sign3_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q10_reg[*] -to sfp_row_instance/sfp_out_sign3_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q11_reg[*] -to sfp_row_instance/sfp_out_sign3_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q12_reg[*] -to sfp_row_instance/sfp_out_sign3_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q13_reg[*] -to sfp_row_instance/sfp_out_sign3_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q14_reg[*] -to sfp_row_instance/sfp_out_sign3_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q15_reg[*] -to sfp_row_instance/sfp_out_sign3_reg[*]


set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/rd_ptr_reg -to sfp_row_instance/sfp_out_sign4_reg
set_multicycle_path -hold 1 -from sfp_row_instance/sum_q_reg[*] -to sfp_row_instance/sfp_out_sign4_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q0_reg[*] -to sfp_row_instance/sfp_out_sign4_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q1_reg[*] -to sfp_row_instance/sfp_out_sign4_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q2_reg[*] -to sfp_row_instance/sfp_out_sign4_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q3_reg[*] -to sfp_row_instance/sfp_out_sign4_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q4_reg[*] -to sfp_row_instance/sfp_out_sign4_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q5_reg[*] -to sfp_row_instance/sfp_out_sign4_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q6_reg[*] -to sfp_row_instance/sfp_out_sign4_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q7_reg[*] -to sfp_row_instance/sfp_out_sign4_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q8_reg[*] -to sfp_row_instance/sfp_out_sign4_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q9_reg[*] -to sfp_row_instance/sfp_out_sign4_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q10_reg[*] -to sfp_row_instance/sfp_out_sign4_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q11_reg[*] -to sfp_row_instance/sfp_out_sign4_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q12_reg[*] -to sfp_row_instance/sfp_out_sign4_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q13_reg[*] -to sfp_row_instance/sfp_out_sign4_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q14_reg[*] -to sfp_row_instance/sfp_out_sign4_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q15_reg[*] -to sfp_row_instance/sfp_out_sign4_reg[*]


set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/rd_ptr_reg -to sfp_row_instance/sfp_out_sign5_reg
set_multicycle_path -hold 1 -from sfp_row_instance/sum_q_reg[*] -to sfp_row_instance/sfp_out_sign5_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q0_reg[*] -to sfp_row_instance/sfp_out_sign5_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q1_reg[*] -to sfp_row_instance/sfp_out_sign5_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q2_reg[*] -to sfp_row_instance/sfp_out_sign5_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q3_reg[*] -to sfp_row_instance/sfp_out_sign5_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q4_reg[*] -to sfp_row_instance/sfp_out_sign5_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q5_reg[*] -to sfp_row_instance/sfp_out_sign5_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q6_reg[*] -to sfp_row_instance/sfp_out_sign5_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q7_reg[*] -to sfp_row_instance/sfp_out_sign5_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q8_reg[*] -to sfp_row_instance/sfp_out_sign5_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q9_reg[*] -to sfp_row_instance/sfp_out_sign5_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q10_reg[*] -to sfp_row_instance/sfp_out_sign5_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q11_reg[*] -to sfp_row_instance/sfp_out_sign5_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q12_reg[*] -to sfp_row_instance/sfp_out_sign5_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q13_reg[*] -to sfp_row_instance/sfp_out_sign5_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q14_reg[*] -to sfp_row_instance/sfp_out_sign5_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q15_reg[*] -to sfp_row_instance/sfp_out_sign5_reg[*]


set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/rd_ptr_reg -to sfp_row_instance/sfp_out_sign6_reg
set_multicycle_path -hold 1 -from sfp_row_instance/sum_q_reg[*] -to sfp_row_instance/sfp_out_sign6_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q0_reg[*] -to sfp_row_instance/sfp_out_sign6_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q1_reg[*] -to sfp_row_instance/sfp_out_sign6_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q2_reg[*] -to sfp_row_instance/sfp_out_sign6_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q3_reg[*] -to sfp_row_instance/sfp_out_sign6_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q4_reg[*] -to sfp_row_instance/sfp_out_sign6_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q5_reg[*] -to sfp_row_instance/sfp_out_sign6_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q6_reg[*] -to sfp_row_instance/sfp_out_sign6_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q7_reg[*] -to sfp_row_instance/sfp_out_sign6_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q8_reg[*] -to sfp_row_instance/sfp_out_sign6_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q9_reg[*] -to sfp_row_instance/sfp_out_sign6_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q10_reg[*] -to sfp_row_instance/sfp_out_sign6_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q11_reg[*] -to sfp_row_instance/sfp_out_sign6_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q12_reg[*] -to sfp_row_instance/sfp_out_sign6_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q13_reg[*] -to sfp_row_instance/sfp_out_sign6_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q14_reg[*] -to sfp_row_instance/sfp_out_sign6_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q15_reg[*] -to sfp_row_instance/sfp_out_sign6_reg[*]


set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/rd_ptr_reg -to sfp_row_instance/sfp_out_sign7_reg
set_multicycle_path -hold 1 -from sfp_row_instance/sum_q_reg[*] -to sfp_row_instance/sfp_out_sign7_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q0_reg[*] -to sfp_row_instance/sfp_out_sign7_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q1_reg[*] -to sfp_row_instance/sfp_out_sign7_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q2_reg[*] -to sfp_row_instance/sfp_out_sign7_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q3_reg[*] -to sfp_row_instance/sfp_out_sign7_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q4_reg[*] -to sfp_row_instance/sfp_out_sign7_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q5_reg[*] -to sfp_row_instance/sfp_out_sign7_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q6_reg[*] -to sfp_row_instance/sfp_out_sign7_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q7_reg[*] -to sfp_row_instance/sfp_out_sign7_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q8_reg[*] -to sfp_row_instance/sfp_out_sign7_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q9_reg[*] -to sfp_row_instance/sfp_out_sign7_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q10_reg[*] -to sfp_row_instance/sfp_out_sign7_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q11_reg[*] -to sfp_row_instance/sfp_out_sign7_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q12_reg[*] -to sfp_row_instance/sfp_out_sign7_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q13_reg[*] -to sfp_row_instance/sfp_out_sign7_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q14_reg[*] -to sfp_row_instance/sfp_out_sign7_reg[*]
set_multicycle_path -hold 1 -from sfp_row_instance/fifo_inst_int/q15_reg[*] -to sfp_row_instance/sfp_out_sign7_reg[*]


