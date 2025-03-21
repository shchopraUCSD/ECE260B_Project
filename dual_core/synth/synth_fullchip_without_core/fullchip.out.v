/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : K-2015.06-SP2
// Date      : Fri Mar 21 08:59:12 2025
/////////////////////////////////////////////////////////////


module fullchip ( clk1, clk2, mem_in, inst, reset, out );
  input [127:0] mem_in;
  input [43:0] inst;
  output [319:0] out;
  input clk1, clk2, reset;

  tri   clk1;
  tri   clk2;
  tri   [127:0] mem_in;
  tri   [43:0] inst;
  tri   reset;
  tri   [319:0] out;
  tri   [23:0] core_1_sum_in;
  tri   [23:0] core_1_sum_out;
  tri   [23:0] core_2_sum_in;
  tri   [23:0] core_2_sum_out;

  core core_instance_1 ( .reset(reset), .clk(clk1), .sum_in(core_1_sum_in), 
        .sum_out(core_1_sum_out), .mem_in(mem_in[63:0]), .out(out[159:0]), 
        .inst(inst[21:0]) );
  async_fifo fifo_core_1_2 ( .rd_clk(clk2), .wr_clk(clk1), .reset(reset), 
        .fifo_rd(inst[43]), .fifo_wr(inst[20]), .rd_data(core_2_sum_in), 
        .wr_data(core_1_sum_out) );
  async_fifo fifo_core_2_1 ( .rd_clk(clk1), .wr_clk(clk2), .reset(reset), 
        .fifo_rd(inst[21]), .fifo_wr(inst[42]), .rd_data(core_1_sum_in), 
        .wr_data(core_2_sum_out) );
  core core_instance_2 ( .reset(reset), .clk(clk2), .sum_in(core_2_sum_in), 
        .sum_out(core_2_sum_out), .mem_in(mem_in[127:64]), .out(out[319:160]), 
        .inst(inst[43:22]) );
endmodule

