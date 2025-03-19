// Created by prof. Mingu Kang @VVIP Lab in UCSD ECE department
// Please do not spread this code without permission 
module sfp_row (
    clk,
    acc,
    div,
    fifo_ext_rd,
    sum_in,
    sum_out,
    sfp_in,
    sfp_out,
    reset
);

    parameter col = 8;
    parameter bw = 8;
    parameter bw_psum = 20;
    parameter bw_psum_out = 24;


    input clk, div, acc, fifo_ext_rd;
    input [bw_psum_out-1:0] sum_in;
    input [col*bw_psum-1:0] sfp_in;
    input reset;
    wire  [col*bw_psum-1:0] abs;
    reg    div_q;
    output [col*bw_psum-1:0] sfp_out;
    output [bw_psum_out-1:0] sum_out;
    wire signed [bw_psum_out-1:0] sum_2core;
    wire signed [bw_psum-1:0] sfp_in_sign0;
    wire signed [bw_psum-1:0] sfp_in_sign1;
    wire signed [bw_psum-1:0] sfp_in_sign2;
    wire signed [bw_psum-1:0] sfp_in_sign3;
    wire signed [bw_psum-1:0] sfp_in_sign4;
    wire signed [bw_psum-1:0] sfp_in_sign5;
    wire signed [bw_psum-1:0] sfp_in_sign6;
    wire signed [bw_psum-1:0] sfp_in_sign7;


    reg signed [bw_psum-1:0] sfp_out_sign0;
    reg signed [bw_psum-1:0] sfp_out_sign1;
    reg signed [bw_psum-1:0] sfp_out_sign2;
    reg signed [bw_psum-1:0] sfp_out_sign3;
    reg signed [bw_psum-1:0] sfp_out_sign4;
    reg signed [bw_psum-1:0] sfp_out_sign5;
    reg signed [bw_psum-1:0] sfp_out_sign6;
    reg signed [bw_psum-1:0] sfp_out_sign7;

    reg [bw_psum_out-1:0] sum_q;
    reg fifo_wr;

    //numerator must also use absolute value as per canvas discussion 
    assign sfp_in_sign0 = abs[bw_psum*1-1 : bw_psum*0];
    assign sfp_in_sign1 = abs[bw_psum*2-1 : bw_psum*1];
    assign sfp_in_sign2 = abs[bw_psum*3-1 : bw_psum*2];
    assign sfp_in_sign3 = abs[bw_psum*4-1 : bw_psum*3];
    assign sfp_in_sign4 = abs[bw_psum*5-1 : bw_psum*4];
    assign sfp_in_sign5 = abs[bw_psum*6-1 : bw_psum*5];
    assign sfp_in_sign6 = abs[bw_psum*7-1 : bw_psum*6];
    assign sfp_in_sign7 = abs[bw_psum*8-1 : bw_psum*7];


    assign sfp_out[bw_psum*1-1 : bw_psum*0] = sfp_out_sign0;
    assign sfp_out[bw_psum*2-1 : bw_psum*1] = sfp_out_sign1;
    assign sfp_out[bw_psum*3-1 : bw_psum*2] = sfp_out_sign2;
    assign sfp_out[bw_psum*4-1 : bw_psum*3] = sfp_out_sign3;
    assign sfp_out[bw_psum*5-1 : bw_psum*4] = sfp_out_sign4;
    assign sfp_out[bw_psum*6-1 : bw_psum*5] = sfp_out_sign5;
    assign sfp_out[bw_psum*7-1 : bw_psum*6] = sfp_out_sign6;
    assign sfp_out[bw_psum*8-1 : bw_psum*7] = sfp_out_sign7;

    //FIXME add 1 to stabilize since otherwise could have division by 0 case
    assign sum_2core = sum_q[bw_psum_out-1:7] + sum_in[bw_psum_out-1:7] + 1;
    assign sum_out = sum_in[bw_psum_out-1:0];

    assign abs[bw_psum*1-1 : bw_psum*0] = (sfp_in[bw_psum*1-1]) ?  (~sfp_in[bw_psum*1-1 : bw_psum*0] + 1)  :  sfp_in[bw_psum*1-1 : bw_psum*0];
    assign abs[bw_psum*2-1 : bw_psum*1] = (sfp_in[bw_psum*2-1]) ?  (~sfp_in[bw_psum*2-1 : bw_psum*1] + 1)  :  sfp_in[bw_psum*2-1 : bw_psum*1];
    assign abs[bw_psum*3-1 : bw_psum*2] = (sfp_in[bw_psum*3-1]) ?  (~sfp_in[bw_psum*3-1 : bw_psum*2] + 1)  :  sfp_in[bw_psum*3-1 : bw_psum*2];
    assign abs[bw_psum*4-1 : bw_psum*3] = (sfp_in[bw_psum*4-1]) ?  (~sfp_in[bw_psum*4-1 : bw_psum*3] + 1)  :  sfp_in[bw_psum*4-1 : bw_psum*3];
    assign abs[bw_psum*5-1 : bw_psum*4] = (sfp_in[bw_psum*5-1]) ?  (~sfp_in[bw_psum*5-1 : bw_psum*4] + 1)  :  sfp_in[bw_psum*5-1 : bw_psum*4];
    assign abs[bw_psum*6-1 : bw_psum*5] = (sfp_in[bw_psum*6-1]) ?  (~sfp_in[bw_psum*6-1 : bw_psum*5] + 1)  :  sfp_in[bw_psum*6-1 : bw_psum*5];
    assign abs[bw_psum*7-1 : bw_psum*6] = (sfp_in[bw_psum*7-1]) ?  (~sfp_in[bw_psum*7-1 : bw_psum*6] + 1)  :  sfp_in[bw_psum*7-1 : bw_psum*6];
    assign abs[bw_psum*8-1 : bw_psum*7] = (sfp_in[bw_psum*8-1]) ?  (~sfp_in[bw_psum*8-1 : bw_psum*7] + 1)  :  sfp_in[bw_psum*8-1 : bw_psum*7];

    always @(posedge clk) begin
        if (reset) begin
            sum_q <= 0;
            sfp_out_sign0 <= 0;
            sfp_out_sign1 <= 0;
            sfp_out_sign2 <= 0;
            sfp_out_sign3 <= 0;
            sfp_out_sign4 <= 0;
            sfp_out_sign5 <= 0;
            sfp_out_sign6 <= 0;
            sfp_out_sign7 <= 0;
        end else begin
            div_q <= div;
            if (acc) begin
                sum_q <= 
           {4'b0, abs[bw_psum*1-1 : bw_psum*0]} +
           {4'b0, abs[bw_psum*2-1 : bw_psum*1]} +
           {4'b0, abs[bw_psum*3-1 : bw_psum*2]} +
           {4'b0, abs[bw_psum*4-1 : bw_psum*3]} +
           {4'b0, abs[bw_psum*5-1 : bw_psum*4]} +
           {4'b0, abs[bw_psum*6-1 : bw_psum*5]} +
           {4'b0, abs[bw_psum*7-1 : bw_psum*6]} +
           {4'b0, abs[bw_psum*8-1 : bw_psum*7]} ;
            end else begin

                if (div) begin
                    sfp_out_sign0 <= sfp_in_sign0 / sum_2core;
                    sfp_out_sign1 <= sfp_in_sign1 / sum_2core;
                    sfp_out_sign2 <= sfp_in_sign2 / sum_2core;
                    sfp_out_sign3 <= sfp_in_sign3 / sum_2core;
                    sfp_out_sign4 <= sfp_in_sign4 / sum_2core;
                    sfp_out_sign5 <= sfp_in_sign5 / sum_2core;
                    sfp_out_sign6 <= sfp_in_sign6 / sum_2core;
                    sfp_out_sign7 <= sfp_in_sign7 / sum_2core;
                end
            end
        end
    end


endmodule

