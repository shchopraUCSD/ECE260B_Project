// Created by prof. Mingu Kang @VVIP Lab in UCSD ECE department
// Please do not spread this code without permission 
module mac_col (
    clk,
    reset,
    out,
    q_in,
    q_out,
    i_inst,
    fifo_wr,
    o_inst
);

    parameter bw = 8;
    parameter bw_psum = 2 * bw + 4;
    parameter pr = 8;
    parameter col_id = 0;

    output signed [bw_psum-1:0] out;
    input signed [pr*bw-1:0] q_in;
    output signed [pr*bw-1:0] q_out;
    input clk, reset;
    input [1:0] i_inst;  // [1]: execute, [0]: load 
    output [1:0] o_inst;  // [1]: execute, [0]: load 
    output fifo_wr;
    reg    load_ready_q;
    reg    [3:0] cnt_q;
    reg    [1:0] inst_q;
    reg    [1:0] inst_2q;
    reg    [1:0] inst_3q;
    reg    [1:0] inst_4q;
    reg    [1:0] inst_5q;
    reg    [1:0] inst_6q;
    reg   signed [pr*bw-1:0] query_q;
    reg   signed [pr*bw-1:0] key_q;
    wire  signed [bw_psum-1:0] psum;

    assign o_inst = inst_q;
    assign fifo_wr = inst_6q[1];
    assign q_out = query_q;
    assign out = psum;


    //FIXME change from 16in to 8in
    mac_8in #(
        .bw(bw),
        .bw_psum(bw_psum),
        .pr(pr)
    ) mac_8in_instance (
        .clk  (clk),
        .reset(reset),
        .a    (query_q),
        .b    (key_q),
        .out  (psum)
    );


    always @(posedge clk) begin
        if (reset) begin
            cnt_q <= 0;
            load_ready_q <= 1;
            inst_q <= 0;
            inst_2q <= 0;
            inst_3q <= 0;
            inst_4q <= 0;
            inst_5q <= 0;
            inst_6q <= 0;
        end else begin
            inst_q  <= i_inst;
            inst_2q <= inst_q;
            inst_3q <= inst_2q;
            inst_4q <= inst_3q;
            inst_5q <= inst_4q;
            inst_6q <= inst_5q;
            if (inst_q[0]) begin
                query_q <= q_in;
                if (cnt_q == 9 - col_id) begin
                    cnt_q <= 0;
                    key_q <= q_in;
                    load_ready_q <= 0;
                end else if (load_ready_q) cnt_q <= cnt_q + 1;
            end else if (inst_q[1]) begin
                //out     <= psum;
                query_q <= q_in;
            end
        end
    end

endmodule
