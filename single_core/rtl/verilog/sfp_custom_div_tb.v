`timescale 1ns / 1ps

module sfp_custom_div_tb;

    reg clk = 1'b0;
    reg rst = 1'b1;


    reg [19:0] div;
    reg [19:0] dis;
    wire [19:0] ans;

    reg strt_pulse;
    wire busy, valid;

    sfp_custom_div cus_div_inst(clk, rst, strt_pulse, busy, valid, div, dis, ans);

    always clk = #0.5 ~clk;

    

    initial begin

        $dumpfile("sfp_custom_div_tb.vcd");
        $dumpvars(0, sfp_custom_div_tb);
        
        @(negedge clk);
        div = 86;
        dis = 4;
        
        @(negedge clk);
        @(negedge clk);
        rst = 0;
        strt_pulse = 1;

        @(negedge clk);
        strt_pulse = 0;
            

        #40 $finish;


    end

endmodule




