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


    reg [2*bw-1:0] l_product0;
    reg [2*bw-1:0] l_product1;
    reg [2*bw-1:0] l_product2;
    reg [2*bw-1:0] l_product3;
    reg [2*bw-1:0] l_product4;
    reg [2*bw-1:0] l_product5;
    reg [2*bw-1:0] l_product6;
    reg [2*bw-1:0] l_product7;

    reg [2*bw-1:0] h_product0;
    reg [2*bw-1:0] h_product1;
    reg [2*bw-1:0] h_product2;
    reg [2*bw-1:0] h_product3;
    reg [2*bw-1:0] h_product4;
    reg [2*bw-1:0] h_product5;
    reg [2*bw-1:0] h_product6;
    reg [2*bw-1:0] h_product7;

    reg [bw_psum-1:0] out0_stg1;
    reg [bw_psum-1:0] out1_stg1;
    reg [bw_psum-1:0] out2_stg1;
    reg [bw_psum-1:0] out3_stg1;

    reg [bw_psum-1:0] out0_stg2;
    reg [bw_psum-1:0] out1_stg2;

    genvar i;

    always @(posedge clk) begin
        if (reset) begin
            l_product0 <= 0;
            l_product1 <= 0;
            l_product2 <= 0;
            l_product3 <= 0;
            l_product4 <= 0;
            l_product5 <= 0;
            l_product6 <= 0;
            l_product7 <= 0;

            h_product0 <= 0;
            h_product1 <= 0;
            h_product2 <= 0;
            h_product3 <= 0;
            h_product4 <= 0;
            h_product5 <= 0;
            h_product6 <= 0;
            h_product7 <= 0;

            out0_stg1 <= 0;
            out1_stg1 <= 0;
            out2_stg1 <= 0;
            out3_stg1 <= 0;

            out0_stg2 <= 0;
            out1_stg2 <= 0;

            out <= 0;
        end else begin
            l_product0 <= {{(bw) {a[bw*1-1]}}, a[bw*1-1:bw*0]} * {12'b0, b[bw*1-1-4:bw*0]};
            l_product1 <= {{(bw) {a[bw*2-1]}}, a[bw*2-1:bw*1]} * {12'b0, b[bw*2-1-4:bw*1]};
            l_product2 <= {{(bw) {a[bw*3-1]}}, a[bw*3-1:bw*2]} * {12'b0, b[bw*3-1-4:bw*2]};
            l_product3 <= {{(bw) {a[bw*4-1]}}, a[bw*4-1:bw*3]} * {12'b0, b[bw*4-1-4:bw*3]};
            l_product4 <= {{(bw) {a[bw*5-1]}}, a[bw*5-1:bw*4]} * {12'b0, b[bw*5-1-4:bw*4]};
            l_product5 <= {{(bw) {a[bw*6-1]}}, a[bw*6-1:bw*5]} * {12'b0, b[bw*6-1-4:bw*5]};
            l_product6 <= {{(bw) {a[bw*7-1]}}, a[bw*7-1:bw*6]} * {12'b0, b[bw*7-1-4:bw*6]};
            l_product7 <= {{(bw) {a[bw*8-1]}}, a[bw*8-1:bw*7]} * {12'b0, b[bw*8-1-4:bw*7]};

            h_product0 <= {{(bw) {a[bw*1-1]}}, a[bw*1-1:bw*0]} * {{(12) {b[bw*1-1]}}, b[bw*1-1:bw*0 + 4]};
            h_product1 <= {{(bw) {a[bw*2-1]}}, a[bw*2-1:bw*1]} * {{(12) {b[bw*2-1]}}, b[bw*2-1:bw*1 + 4]};
            h_product2 <= {{(bw) {a[bw*3-1]}}, a[bw*3-1:bw*2]} * {{(12) {b[bw*3-1]}}, b[bw*3-1:bw*2 + 4]};
            h_product3 <= {{(bw) {a[bw*4-1]}}, a[bw*4-1:bw*3]} * {{(12) {b[bw*4-1]}}, b[bw*4-1:bw*3 + 4]};
            h_product4 <= {{(bw) {a[bw*5-1]}}, a[bw*5-1:bw*4]} * {{(12) {b[bw*5-1]}}, b[bw*5-1:bw*4 + 4]};
            h_product5 <= {{(bw) {a[bw*6-1]}}, a[bw*6-1:bw*5]} * {{(12) {b[bw*6-1]}}, b[bw*6-1:bw*5 + 4]};
            h_product6 <= {{(bw) {a[bw*7-1]}}, a[bw*7-1:bw*6]} * {{(12) {b[bw*7-1]}}, b[bw*7-1:bw*6 + 4]};
            h_product7 <= {{(bw) {a[bw*8-1]}}, a[bw*8-1:bw*7]} * {{(12) {b[bw*8-1]}}, b[bw*8-1:bw*7 + 4]};

            out0_stg1 <= {{(4){l_product0[2*bw-1]}},l_product0} + {h_product0, 4'b0000}
                        + {{(4){l_product1[2*bw-1]}},l_product1} + {h_product1, 4'b0000}
            ;
            out1_stg1 <= {{(4){l_product2[2*bw-1]}},l_product2} + {h_product2, 4'b0000}
                        + {{(4){l_product3[2*bw-1]}},l_product3} + {h_product3, 4'b0000}
            ;
            out2_stg1 <= {{(4){l_product4[2*bw-1]}},l_product4} + {h_product4, 4'b0000}
                        + {{(4){l_product5[2*bw-1]}},l_product5} + {h_product5, 4'b0000}
            ;
            out3_stg1 <= {{(4){l_product6[2*bw-1]}},l_product6} + {h_product6, 4'b0000}
                        + {{(4){l_product7[2*bw-1]}},l_product7} + {h_product7, 4'b0000}
            ;

            out0_stg2 <= out0_stg1 + out1_stg1;
            out1_stg2 <= out2_stg1 + out3_stg1;

            out <= out0_stg2 + out1_stg2;
        end
    end
endmodule
