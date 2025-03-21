// Created by prof. Mingu Kang @VVIP Lab in UCSD ECE department
// Please do not spread this code without permission 
module fullchip (clk, mem_in, inst, reset, out);

parameter col = 8;
parameter bw = 8;
parameter bw_psum = 2*bw+4;
parameter pr = 8;

input  clk; 
input  [pr*bw-1:0] mem_in; 
input  [21:0] inst; 
input  reset;
output [bw_psum*col-1:0] out;

`ifdef GLS_RUN
core core_instance (
`else
core #(.bw(bw), .bw_psum(bw_psum), .col(col), .pr(pr)) core_instance (
`endif
      .reset(reset), 
      .clk(clk),
      .sum_in (24'b0),
      .mem_in(mem_in), 
      .out(out),
      .inst(inst)
);

`ifdef SDF_ANNOTATE
    initial begin
        $sdf_annotate("../../pnr/core/core_WC.sdf", core_instance, , ,"MAXIMUM","1:1:1","FROM_MTM");
    end
`endif 

endmodule
