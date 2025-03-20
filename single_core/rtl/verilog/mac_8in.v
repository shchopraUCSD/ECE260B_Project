// Created by prof. Mingu Kang @VVIP Lab in UCSD ECE department
// Please do not spread this code without permission 
module mac_8in (
    clk,
    reset,
    out,
    a,
    b
);

    parameter bw = 8;
    parameter bw_psum = 2 * bw + 4;
    parameter pr = 8;  // parallel factor: number of inputs = 8
    
    input clk;
    input reset;
    output reg [bw_psum-1:0] out;
    input [pr*bw-1:0] a;
    input [pr*bw-1:0] b;



    reg [2*bw-1:0] product0;
    reg [2*bw-1:0] product1;
    reg [2*bw-1:0] product2;
    reg [2*bw-1:0] product3;
    reg [2*bw-1:0] product4;
    reg [2*bw-1:0] product5;
    reg [2*bw-1:0] product6;
    reg [2*bw-1:0] product7;

    reg [bw_psum-1:0] out1;
    reg [bw_psum-1:0] out2;


    genvar i;

    always @(posedge clk) begin
        if (reset) begin
            product0 <= 0;
            product1 <= 0;
            product2 <= 0;
            product3 <= 0;
            product4 <= 0;
            product5 <= 0;
            product6 <= 0;
            product7 <= 0;

            out <= 0;
        end else begin 
            product0 <= {{(bw) {a[bw*1-1]}}, a[bw*1-1:bw*0]} * {{(bw) {b[bw*1-1]}}, b[bw*1-1:bw*0]};
            product1 <= {{(bw) {a[bw*2-1]}}, a[bw*2-1:bw*1]} * {{(bw) {b[bw*2-1]}}, b[bw*2-1:bw*1]};
            product2 <= {{(bw) {a[bw*3-1]}}, a[bw*3-1:bw*2]} * {{(bw) {b[bw*3-1]}}, b[bw*3-1:bw*2]};
            product3 <= {{(bw) {a[bw*4-1]}}, a[bw*4-1:bw*3]} * {{(bw) {b[bw*4-1]}}, b[bw*4-1:bw*3]};
            product4 <= {{(bw) {a[bw*5-1]}}, a[bw*5-1:bw*4]} * {{(bw) {b[bw*5-1]}}, b[bw*5-1:bw*4]};
            product5 <= {{(bw) {a[bw*6-1]}}, a[bw*6-1:bw*5]} * {{(bw) {b[bw*6-1]}}, b[bw*6-1:bw*5]};
            product6 <= {{(bw) {a[bw*7-1]}}, a[bw*7-1:bw*6]} * {{(bw) {b[bw*7-1]}}, b[bw*7-1:bw*6]};
            product7 <= {{(bw) {a[bw*8-1]}}, a[bw*8-1:bw*7]} * {{(bw) {b[bw*8-1]}}, b[bw*8-1:bw*7]};
            
            out1 <= {{(4){product0[2*bw-1]}},product0}
                + {{(4){product1[2*bw-1]}},product1}
                + {{(4){product2[2*bw-1]}},product2}
                + {{(4){product3[2*bw-1]}},product3}
            ;
            out2 <= {{(4){product4[2*bw-1]}},product4}
                + {{(4){product5[2*bw-1]}},product5}
                + {{(4){product6[2*bw-1]}},product6}
                + {{(4){product7[2*bw-1]}},product7}
            ;
            out <= out1 + out2;
        end
    end
endmodule
