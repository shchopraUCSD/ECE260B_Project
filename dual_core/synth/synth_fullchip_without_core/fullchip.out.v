/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : K-2015.06-SP2
// Date      : Thu Mar 20 15:07:48 2025
/////////////////////////////////////////////////////////////


module fullchip ( clk, mem_in, inst, reset, out );
  input [127:0] mem_in;
  input [43:0] inst;
  output [319:0] out;
  input clk, reset;

  tri   clk;
  tri   [127:0] mem_in;
  tri   [43:0] inst;
  tri   reset;
  tri   [319:0] out;
  tri   [23:0] core_1_sum_in;
  tri   [23:0] core_1_sum_out;
  tri   [23:0] core_2_sum_in;
  tri   [23:0] core_2_sum_out;

  core core_instance_1 ( .reset(reset), .clk(clk), .sum_in(core_1_sum_in), 
        .sum_out(core_1_sum_out), .mem_in(mem_in[63:0]), .out(out[159:0]), 
        .inst(inst[21:0]) );
  async_fifo fifo_core_1_2 ( .rd_clk(clk), .wr_clk(clk), .reset(reset), 
        .fifo_rd(inst[43]), .fifo_wr(inst[20]), .rd_data(core_2_sum_in), 
        .wr_data(core_1_sum_out) );
  async_fifo fifo_core_2_1 ( .rd_clk(clk), .wr_clk(clk), .reset(reset), 
        .fifo_rd(inst[21]), .fifo_wr(inst[42]), .rd_data(core_1_sum_in), 
        .wr_data(core_2_sum_out) );
  core core_instance_2 ( .reset(reset), .clk(clk), .sum_in(core_2_sum_in), 
        .sum_out(core_2_sum_out), .mem_in(mem_in[127:64]), .out(out[319:160]), 
        .inst(inst[43:22]) );
endmodule

