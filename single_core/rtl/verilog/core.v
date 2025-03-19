// Created by prof. Mingu Kang @VVIP Lab in UCSD ECE department
// Please do not spread this code without permission 

module core (
    clk,
    sum_out,
    mem_in,
    out,
    inst,
    reset
);

    parameter col = 8;
    parameter bw = 8;
    parameter bw_psum = 2 * bw + 4;  //turns out to be 20
    parameter pr = 8;

    output [bw_psum+3:0] sum_out;
    output [bw_psum*col-1:0] out;
    wire [bw_psum*col-1:0] pmem_out;
    input [pr*bw-1:0] mem_in;
    input clk;
    //FIXME extend inst for sfp instructions
    input [18:0] inst;
    input reset;

    //latch the final normalized output
    //reg [bw_psum*col-1:0] sfp_out_q;

    wire [pr*bw-1:0] mac_in;
    wire [pr*bw-1:0] kmem_out;
    wire [pr*bw-1:0] qmem_out;
    wire [bw_psum*col-1:0] pmem_in;
    wire [bw_psum*col-1:0] fifo_out;
    wire [bw_psum*col-1:0] sfp_out;
    wire [bw_psum*col-1:0] array_out;
    wire [col-1:0] fifo_wr;
    wire ofifo_rd;
    wire [3:0] qkmem_add;
    wire [3:0] pmem_add;

    wire fifo_valid;

    wire qmem_rd;
    wire qmem_wr;
    wire kmem_rd;
    wire kmem_wr;
    wire pmem_rd;
    wire pmem_wr;

    wire sfp_div;
    wire sfp_acc;

    //FIXME extend inst for sfp instructions
    assign sfp_div = inst[18];
    assign sfp_acc = inst[17];
    assign ofifo_rd = inst[16];
    assign qkmem_add = inst[15:12];
    assign pmem_add = inst[11:8];

    assign qmem_rd = inst[5];
    assign qmem_wr = inst[4];
    assign kmem_rd = inst[3];
    assign kmem_wr = inst[2];
    assign pmem_rd = inst[1];
    assign pmem_wr = inst[0];

    assign mac_in = inst[6] ? kmem_out : qmem_out;
    assign pmem_in = sfp_div ? sfp_out : fifo_out;

    //final output of core - pmem out for final verification
    assign out = pmem_out;

    mac_array #(
        .bw(bw),
        .bw_psum(bw_psum),
        .col(col),
        .pr(pr)
    ) mac_array_instance (
        .in(mac_in),
        .clk(clk),
        .reset(reset),
        .inst(inst[7:6]),
        .fifo_wr(fifo_wr),
        .out(array_out)
    );

    ofifo #(
        .bw (bw_psum),
        .col(col)
    ) ofifo_inst (
        .reset(reset),
        .clk(clk),
        .in(array_out),
        .wr(fifo_wr),
        .rd(ofifo_rd),
        .o_valid(fifo_valid),
        .out(fifo_out)
    );


    sram_w8_64b qmem_instance (
        .CLK(clk),
        .D  (mem_in),
        .Q  (qmem_out),
        .CEN(!(qmem_rd || qmem_wr)),
        .WEN(!qmem_wr),
        .A  (qkmem_add)
    );

    sram_w8_64b kmem_instance (
        .CLK(clk),
        .D  (mem_in),
        .Q  (kmem_out),
        .CEN(!(kmem_rd || kmem_wr)),
        .WEN(!kmem_wr),
        .A  (qkmem_add)
    );

    sram_w8_160b psum_mem_instance (
        .CLK(clk),
        .D  (pmem_in),
        .Q  (pmem_out),
        .CEN(!(pmem_rd || pmem_wr)),
        .WEN(!pmem_wr),
        .A  (pmem_add)
    );

    sfp_row #(
        .bw(bw),
        .bw_psum(bw_psum),
        .col(col)
    ) sfp_row_instance (
        .clk(clk),
        .acc(sfp_acc),
        .div(sfp_div),
        //FIXME fifo_ext_rd and sum_in only come into the picture in dual core design
        .fifo_ext_rd(1'b0),
        .sum_in(24'b0),
        .sum_out(sum_out),
        .sfp_in(pmem_out),
        .sfp_out(sfp_out),
        .reset(reset)
    );


    //////////// For printing purpose ////////////
    always @(posedge clk) begin
        //if(sfp_div)
        //sfp_out_q <= sfp_out;
    end



endmodule
