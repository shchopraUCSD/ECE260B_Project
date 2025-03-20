// Created by prof. Mingu Kang @VVIP Lab in UCSD ECE department
// Please do not spread this code without permission 
module sfp_row (
    clk,
    acc,
    div,
    pass_through,
    fifo_ext_rd,
    sum_in,
    sum_out,
    sfp_in,
    sfp_out,
    reset,
    valid
);

    parameter col = 8;
    parameter bw = 8;
    parameter bw_psum = 20;
    parameter bw_psum_out = 24;
    input clk, div, acc, fifo_ext_rd, pass_through;
    input [bw_psum_out-1:0] sum_in;
    input [col*bw_psum-1:0] sfp_in;
    input reset;
    wire   [col*bw_psum-1:0] abs;
    reg    div_q;
    output [col*bw_psum-1:0] sfp_out;
    output [bw_psum_out-1:0] sum_out;

    output reg valid;

    wire [bw_psum_out-1:0] sum_this_core;
    wire signed [bw_psum-1:0] sum_2core;

    reg signed [bw_psum-1:0] sfp_in_sign0;
    reg signed [bw_psum-1:0] sfp_in_sign1;
    reg signed [bw_psum-1:0] sfp_in_sign2;
    reg signed [bw_psum-1:0] sfp_in_sign3;
    reg signed [bw_psum-1:0] sfp_in_sign4;
    reg signed [bw_psum-1:0] sfp_in_sign5;
    reg signed [bw_psum-1:0] sfp_in_sign6;
    reg signed [bw_psum-1:0] sfp_in_sign7;

    wire signed [bw_psum-1:0] sfp_out_sign0;
    wire signed [bw_psum-1:0] sfp_out_sign1;
    wire signed [bw_psum-1:0] sfp_out_sign2;
    wire signed [bw_psum-1:0] sfp_out_sign3;
    wire signed [bw_psum-1:0] sfp_out_sign4;
    wire signed [bw_psum-1:0] sfp_out_sign5;
    wire signed [bw_psum-1:0] sfp_out_sign6;
    wire signed [bw_psum-1:0] sfp_out_sign7;

    wire [col-1:0] div_vld_out;
    wire [col-1:0] div_busy_out;

    reg strt_pulse;

    reg [bw_psum_out-1:0] sum_q;

    reg [bw_psum_out-1:0] sum0_stg1;
    reg [bw_psum_out-1:0] sum1_stg1;
    reg [bw_psum_out-1:0] sum2_stg1;
    reg [bw_psum_out-1:0] sum3_stg1;

    reg [bw_psum_out-1:0] sum0_stg2;
    reg [bw_psum_out-1:0] sum1_stg2;

    //numerator must also use absolute value as per canvas discussion

    assign sfp_out[bw_psum*1-1 : bw_psum*0] = pass_through ? sfp_in[bw_psum*1-1 : bw_psum*0] : sfp_out_sign0;
    assign sfp_out[bw_psum*2-1 : bw_psum*1] = pass_through ? sfp_in[bw_psum*2-1 : bw_psum*1] : sfp_out_sign1;
    assign sfp_out[bw_psum*3-1 : bw_psum*2] = pass_through ? sfp_in[bw_psum*3-1 : bw_psum*2] : sfp_out_sign2;
    assign sfp_out[bw_psum*4-1 : bw_psum*3] = pass_through ? sfp_in[bw_psum*4-1 : bw_psum*3] : sfp_out_sign3;
    assign sfp_out[bw_psum*5-1 : bw_psum*4] = pass_through ? sfp_in[bw_psum*5-1 : bw_psum*4] : sfp_out_sign4;
    assign sfp_out[bw_psum*6-1 : bw_psum*5] = pass_through ? sfp_in[bw_psum*6-1 : bw_psum*5] : sfp_out_sign5;
    assign sfp_out[bw_psum*7-1 : bw_psum*6] = pass_through ? sfp_in[bw_psum*7-1 : bw_psum*6] : sfp_out_sign6;
    assign sfp_out[bw_psum*8-1 : bw_psum*7] = pass_through ? sfp_in[bw_psum*8-1 : bw_psum*7] : sfp_out_sign7;

    assign sum_out = sum_q[bw_psum_out-1:0];
    //FIXME add 1 to stabilize since otherwise could have division by 0 case
    assign sum_2core = sum_q[bw_psum_out-1:7] + sum_in[bw_psum_out-1:7] + 1;

    assign abs[bw_psum*1-1 : bw_psum*0] = (sfp_in[bw_psum*1-1]) ?  (~sfp_in[bw_psum*1-1 : bw_psum*0] + 1)  :  sfp_in[bw_psum*1-1 : bw_psum*0];
    assign abs[bw_psum*2-1 : bw_psum*1] = (sfp_in[bw_psum*2-1]) ?  (~sfp_in[bw_psum*2-1 : bw_psum*1] + 1)  :  sfp_in[bw_psum*2-1 : bw_psum*1];
    assign abs[bw_psum*3-1 : bw_psum*2] = (sfp_in[bw_psum*3-1]) ?  (~sfp_in[bw_psum*3-1 : bw_psum*2] + 1)  :  sfp_in[bw_psum*3-1 : bw_psum*2];
    assign abs[bw_psum*4-1 : bw_psum*3] = (sfp_in[bw_psum*4-1]) ?  (~sfp_in[bw_psum*4-1 : bw_psum*3] + 1)  :  sfp_in[bw_psum*4-1 : bw_psum*3];
    assign abs[bw_psum*5-1 : bw_psum*4] = (sfp_in[bw_psum*5-1]) ?  (~sfp_in[bw_psum*5-1 : bw_psum*4] + 1)  :  sfp_in[bw_psum*5-1 : bw_psum*4];
    assign abs[bw_psum*6-1 : bw_psum*5] = (sfp_in[bw_psum*6-1]) ?  (~sfp_in[bw_psum*6-1 : bw_psum*5] + 1)  :  sfp_in[bw_psum*6-1 : bw_psum*5];
    assign abs[bw_psum*7-1 : bw_psum*6] = (sfp_in[bw_psum*7-1]) ?  (~sfp_in[bw_psum*7-1 : bw_psum*6] + 1)  :  sfp_in[bw_psum*7-1 : bw_psum*6];
    assign abs[bw_psum*8-1 : bw_psum*7] = (sfp_in[bw_psum*8-1]) ?  (~sfp_in[bw_psum*8-1 : bw_psum*7] + 1)  :  sfp_in[bw_psum*8-1 : bw_psum*7];

    sfp_custom_div div_inst0 (
        clk,
        reset,
        strt_pulse,
        div_busy_out[0],
        div_vld_out[0],
        sfp_in_sign0,
        sum_2core,
        sfp_out_sign0
    );
    sfp_custom_div div_inst1 (
        clk,
        reset,
        strt_pulse,
        div_busy_out[1],
        div_vld_out[1],
        sfp_in_sign1,
        sum_2core,
        sfp_out_sign1
    );
    sfp_custom_div div_inst2 (
        clk,
        reset,
        strt_pulse,
        div_busy_out[2],
        div_vld_out[2],
        sfp_in_sign2,
        sum_2core,
        sfp_out_sign2
    );
    sfp_custom_div div_inst3 (
        clk,
        reset,
        strt_pulse,
        div_busy_out[3],
        div_vld_out[3],
        sfp_in_sign3,
        sum_2core,
        sfp_out_sign3
    );
    sfp_custom_div div_inst4 (
        clk,
        reset,
        strt_pulse,
        div_busy_out[4],
        div_vld_out[4],
        sfp_in_sign4,
        sum_2core,
        sfp_out_sign4
    );
    sfp_custom_div div_inst5 (
        clk,
        reset,
        strt_pulse,
        div_busy_out[5],
        div_vld_out[5],
        sfp_in_sign5,
        sum_2core,
        sfp_out_sign5
    );
    sfp_custom_div div_inst6 (
        clk,
        reset,
        strt_pulse,
        div_busy_out[6],
        div_vld_out[6],
        sfp_in_sign6,
        sum_2core,
        sfp_out_sign6
    );
    sfp_custom_div div_inst7 (
        clk,
        reset,
        strt_pulse,
        div_busy_out[7],
        div_vld_out[7],
        sfp_in_sign7,
        sum_2core,
        sfp_out_sign7
    );


    always @(posedge clk) begin
        if (reset) begin
            valid <= 0;
            div_q <= 0;
            strt_pulse <= 0;

            sum_q <= 0;

            sum0_stg1 <= 0;
            sum1_stg1 <= 0;
            sum2_stg1 <= 0;
            sum3_stg1 <= 0;

            sum0_stg2 <= 0;
            sum1_stg2 <= 0;

            sfp_in_sign0 <= 0;
            sfp_in_sign1 <= 0;
            sfp_in_sign2 <= 0;
            sfp_in_sign3 <= 0;
            sfp_in_sign4 <= 0;
            sfp_in_sign5 <= 0;
            sfp_in_sign6 <= 0;
            sfp_in_sign7 <= 0;
        end else begin
            div_q <= div;
            sfp_in_sign0 <= abs[bw_psum*1-1 : bw_psum*0];
            sfp_in_sign1 <= abs[bw_psum*2-1 : bw_psum*1];
            sfp_in_sign2 <= abs[bw_psum*3-1 : bw_psum*2];
            sfp_in_sign3 <= abs[bw_psum*4-1 : bw_psum*3];
            sfp_in_sign4 <= abs[bw_psum*5-1 : bw_psum*4];
            sfp_in_sign5 <= abs[bw_psum*6-1 : bw_psum*5];
            sfp_in_sign6 <= abs[bw_psum*7-1 : bw_psum*6];
            sfp_in_sign7 <= abs[bw_psum*8-1 : bw_psum*7];
            if (acc) begin
                sum_q <= sum0_stg2 + sum1_stg2;

                sum0_stg2 <= sum0_stg1 + sum1_stg1;
                sum1_stg2 <= sum2_stg1 + sum3_stg1;

                sum0_stg1 <=
                   {4'b0, abs[bw_psum*1-1 : bw_psum*0]} +
                   {4'b0, abs[bw_psum*2-1 : bw_psum*1]} ;
                sum1_stg1 <=
                   {4'b0, abs[bw_psum*3-1 : bw_psum*2]} +
                   {4'b0, abs[bw_psum*4-1 : bw_psum*3]} ;
                sum2_stg1 <=
                   {4'b0, abs[bw_psum*5-1 : bw_psum*4]} +
                   {4'b0, abs[bw_psum*6-1 : bw_psum*5]} ;
                sum3_stg1 <=
                   {4'b0, abs[bw_psum*7-1 : bw_psum*6]} +
                   {4'b0, abs[bw_psum*8-1 : bw_psum*7]} ;
            end else begin
                strt_pulse <= !(&div_busy_out) & div_q;
            end
            valid <= &div_vld_out;
        end

    end

endmodule
