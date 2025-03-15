// Created by prof. Mingu Kang @VVIP Lab in UCSD ECE department
// Please do not spread this code without permission 
module fullchip (clk, mem_in, inst, reset, out);

parameter col = 8;
parameter bw = 8;
parameter bw_psum = 2*bw+4;
parameter pr = 16;

input  clk; 
input  [pr*bw-1:0] mem_in; 
input  [18:0] inst; 
input  reset;
output [bw_psum*col-1:0] out;

`ifdef GLS_RUN
core core_instance (
`else
core #(.bw(bw), .bw_psum(bw_psum), .col(col), .pr(pr)) core_instance (
`endif
      .reset(reset), 
      .clk(clk), 
      .mem_in(mem_in), 
      .out(out),
      .inst(inst)
);

endmodule
