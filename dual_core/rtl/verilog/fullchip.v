// Created by prof. Mingu Kang @VVIP Lab in UCSD ECE department
// Please do not spread this code without permission 
module fullchip (clk, mem_in, inst, reset, out);

parameter col = 8;
parameter bw = 8;
parameter bw_psum = 2*bw+4;
parameter pr = 8;

input  clk; 
input  [pr*bw*2-1:0] mem_in; 
input  [37:0] inst; 
input  reset;
output [bw_psum*col*2-1:0] out;

`ifdef GLS_RUN
core core_instance_1 (
`else
core #(.bw(bw), .bw_psum(bw_psum), .col(col), .pr(pr)) core_instance_1 (
`endif
      .reset(reset), 
      .clk(clk), 
      .mem_in(mem_in[pr*bw-1:0]), 
      .out(out[bw_psum*col-1:0]),
      .inst(inst[18:0])
);


`ifdef GLS_RUN
core core_instance_2 (
`else
core #(.bw(bw), .bw_psum(bw_psum), .col(col), .pr(pr)) core_instance_2 (
`endif
      .reset(reset), 
      .clk(clk), 
      .mem_in(mem_in[pr*bw*2-1:pr*bw]), 
      .out(out[bw_psum*col*2-1:bw_psum*col]),
      .inst(inst[37:19])
);

endmodule
