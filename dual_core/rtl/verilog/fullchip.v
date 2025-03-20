// Created by prof. Mingu Kang @VVIP Lab in UCSD ECE department
// Please do not spread this code without permission 
module fullchip (clk, mem_in, inst, reset, out);

parameter col = 8;
parameter bw = 8;
parameter bw_psum = 2*bw+4;
parameter pr = 8;

input  clk; 
input  [pr*bw*2-1:0] mem_in; 
input  [43:0] inst; 
input  reset;
output [bw_psum*col*2-1:0] out;
wire [bw_psum+3:0] core_1_sum_out;  
wire [bw_psum+3:0] core_2_sum_out;  
wire [bw_psum+3:0] core_1_sum_in;  
wire [bw_psum+3:0] core_2_sum_in;  

`ifdef GLS_RUN
core core_instance_1 (
`else
core #(.bw(bw), .bw_psum(bw_psum), .col(col), .pr(pr)) core_instance_1 (
`endif
      .reset(reset), 
      .clk(clk), 
      .sum_in(core_1_sum_in), 
      .sum_out(core_1_sum_out), 
      .mem_in(mem_in[pr*bw-1:0]), 
      .out(out[bw_psum*col-1:0]),
      .inst(inst[21:0])
);

async_fifo fifo_core_1_2 (
	.rd_clk(clk),
	.wr_clk(clk),
	.reset(reset),
	.fifo_rd(inst[43]),//Receive sum from core 1
	.fifo_wr(inst[20]),//Send sum from core 1
	.rd_data(core_2_sum_in),
	.wr_data(core_1_sum_out)
);

async_fifo fifo_core_2_1 (
	.rd_clk(clk),
	.wr_clk(clk),
	.reset(reset),
	.fifo_rd(inst[21]),//Receive sum from core 2
	.fifo_wr(inst[42]),//Send sum from core 2
	.rd_data(core_1_sum_in),
	.wr_data(core_2_sum_out)
);

`ifdef GLS_RUN
core core_instance_2 (
`else
core #(.bw(bw), .bw_psum(bw_psum), .col(col), .pr(pr)) core_instance_2 (
`endif
      .reset(reset), 
      .clk(clk), 
      .sum_in(core_2_sum_in), 
      .sum_out(core_2_sum_out), 
      .mem_in(mem_in[pr*bw*2-1:pr*bw]), 
      .out(out[bw_psum*col*2-1:bw_psum*col]),
      .inst(inst[43:22])
);

endmodule
