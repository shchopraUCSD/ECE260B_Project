// Created by prof. Mingu Kang @VVIP Lab in UCSD ECE department
// Please do not spread this code without permission 

`timescale 1ns / 1ps

module fullchip_tb;

    parameter total_cycle = 8;  // how many streamed Q vectors will be processed
    parameter bw = 8;  // Q & K vector bit precision
    parameter bw_psum = 2 * bw + 4;  // partial sum bit precision
    parameter pr = 8;  // how many products added in each dot product 
    parameter col = 16;  // how many dot product units are equipped
    parameter core_col = 8;

    integer qk_file;  // file handler
    integer qk_scan_file;  // file handler


    integer captured_data;
    integer weight[col*pr-1:0];
    `define NULL 0




    integer K[col-1:0][pr-1:0];
    integer Q[total_cycle-1:0][pr-1:0];
    integer result[total_cycle-1:0][col-1:0];
    integer sum[total_cycle-1:0];

    integer i, j, k, t, p, q, s, u, m;





    reg reset = 1;
    reg clk = 0;
    wire clk1 = 0;
    wire clk2 = 0;
    reg [pr*bw*2-1:0] mem_in;
    reg ofifo_rd = 0;
    //FIXME extend inst for sfp instructions
    wire [43:0] inst;
    reg qmem_rd = 0;
    reg qmem_wr = 0;
    reg kmem_rd = 0;
    reg kmem_wr = 0;
    reg pmem_rd = 0;
    reg pmem_wr = 0;
    reg execute = 0;
    reg load = 0;
    reg [3:0] qkmem_add = 0;
    reg [3:0] pmem_add = 0;

    reg sfp_acc = 0;
    reg sfp_div = 0;
    reg sfp_pass = 0;
    reg send_sum = 0;
    reg rec_sum = 0;

    assign clk1 = clk;
    assign clk2 = clk;

    //FIXME extend inst for sfp instructions
    assign inst[21] = rec_sum;
    assign inst[20] = send_sum;
    assign inst[19] = sfp_pass;
    assign inst[18] = sfp_div;
    assign inst[17] = sfp_acc;
    assign inst[16] = ofifo_rd;
    assign inst[15:12] = qkmem_add;
    assign inst[11:8] = pmem_add;
    assign inst[7] = execute;
    assign inst[6] = load;
    assign inst[5] = qmem_rd;
    assign inst[4] = qmem_wr;
    assign inst[3] = kmem_rd;
    assign inst[2] = kmem_wr;
    assign inst[1] = pmem_rd;
    assign inst[0] = pmem_wr;
    assign inst[43:22] = inst[21:0];  //FIXME : add instructions for core 2

    wire [bw_psum*col-1:0] out;
    reg [bw_psum*col-1:0] out_q;

    integer error_count = 0;

    reg [bw_psum-1:0] temp5b;
    reg [bw_psum-1:0] temp5b_abs;
    reg [bw_psum+3:0] temp_sum;
    reg [bw_psum*col-1:0] temp16b;
    reg [bw_psum*col-1:0] temp16b_norm;  //normalized vector
    reg [bw_psum*col-1:0] temp16b_abs;  //vector to store absolute values to make verification easier

    reg [bw_psum*col-1:0] final_pmem_expected_result[total_cycle-1:0];


    fullchip #(
        .bw(bw),
        .bw_psum(bw_psum),
        .col(core_col),
        .pr(pr)
    ) fullchip_instance (
        .reset(reset),
        .clk1(clk1),
        .clk2(clk2),
        .mem_in(mem_in),
        .out(out),
        .inst(inst)
    );


    initial begin

        $dumpfile("fullchip_tb.vcd");
        $dumpvars(0, fullchip_tb);



        ///// Q data txt reading /////

        $display("##### Q data txt reading #####");


        qk_file = $fopen("qdata.txt", "r");

        //// To get rid of first 3 lines in data file ////
        //qk_scan_file = $fscanf(qk_file, "%s\n", captured_data);
        //qk_scan_file = $fscanf(qk_file, "%s\n", captured_data);
        //qk_scan_file = $fscanf(qk_file, "%s\n", captured_data);
        //qk_scan_file = $fscanf(qk_file, "%s\n", captured_data);


        for (q = 0; q < total_cycle; q = q + 1) begin
            for (j = 0; j < pr; j = j + 1) begin
                qk_scan_file = $fscanf(qk_file, "%d\n", captured_data);
                Q[q][j] = captured_data;
                //$display("%d\n", K[q][j]);
            end
        end
        /////////////////////////////////




        for (q = 0; q < 2; q = q + 1) begin
            #0.5 clk = 1'b0;
            #0.5 clk = 1'b1;
        end




        ///// K data txt reading /////

        $display("##### K data txt reading #####");

        for (q = 0; q < 10; q = q + 1) begin
            #0.5 clk = 1'b0;
            #0.5 clk = 1'b1;
        end
        reset   = 0;

        qk_file = $fopen("kdata_core0.txt", "r");

        //// To get rid of first 4 lines in data file ////
        //qk_scan_file = $fscanf(qk_file, "%s\n", captured_data);
        //qk_scan_file = $fscanf(qk_file, "%s\n", captured_data);
        //qk_scan_file = $fscanf(qk_file, "%s\n", captured_data);
        //qk_scan_file = $fscanf(qk_file, "%s\n", captured_data);




        for (q = 0; q < col / 2; q = q + 1) begin
            for (j = 0; j < pr; j = j + 1) begin
                qk_scan_file = $fscanf(qk_file, "%d\n", captured_data);
                K[q][j] = captured_data;
                $display("##### %d\n core0", K[q][j]);
            end
        end

        qk_file = $fopen("kdata_core1.txt", "r");

        //// To get rid of first 4 lines in data file ////
        //qk_scan_file = $fscanf(qk_file, "%s\n", captured_data);
        //qk_scan_file = $fscanf(qk_file, "%s\n", captured_data);
        //qk_scan_file = $fscanf(qk_file, "%s\n", captured_data);
        //qk_scan_file = $fscanf(qk_file, "%s\n", captured_data);




        for (q = col / 2; q < col; q = q + 1) begin
            for (j = 0; j < pr; j = j + 1) begin
                qk_scan_file = $fscanf(qk_file, "%d\n", captured_data);
                K[q][j] = captured_data;
                $display("##### %d\n", K[q][j]);
            end
        end

        /////////////////////////////////








        /////////////// Estimated result printing /////////////////


        $display("##### Estimated multiplication result #####");

        for (t = 0; t < total_cycle; t = t + 1) begin
            for (q = 0; q < col; q = q + 1) begin
                result[t][q] = 0;
            end
        end

        for (t = 0; t < total_cycle; t = t + 1) begin
            temp_sum = 0;
            $display("\nDBG: ======== BEGIN cycle number %d ==========", t);
            for (q = 0; q < col; q = q + 1) begin
                for (k = 0; k < pr; k = k + 1) begin
                    result[t][q] = result[t][q] + Q[t][k] * K[q][k];
                end

                temp5b = result[t][q];
                temp5b_abs = temp5b[bw_psum-1] ? ~temp5b[bw_psum-1:0] + 1 : temp5b[bw_psum-1:0];
                //$display("DBG: temp5b intermediate actual value: %h", temp5b);
                //$display("DBG: temp5b intermediate abs value: %h", temp5b_abs);
                //$display("DBG: temp5b intermediate sum value: %h", temp_sum);
                temp_sum = temp_sum + temp5b_abs;
                temp16b = {temp16b[299:0], temp5b};
                temp16b_abs = {temp16b_abs[299:0], temp5b_abs};
            end

            //$display("%d %d %d %d %d %d %d %d", result[t][0], result[t][1], result[t][2], result[t][3], result[t][4], result[t][5], result[t][6], result[t][7]);
            //$display("DBG: temp_sum is %d",temp_sum);
            $display("DBG: temp_sum and divisor: %d , %d ", temp_sum, (temp_sum[bw_psum+3:7] + 1));
            $display("DBG: original prd @cycle%2d: %40h", t, temp16b);

            //compute normalized vector 
            //FIXME the range [bw_psum+3:7] is same as was sfp_row is doing i.e. right shifting sum by 7 bits
            //FIXME 1 was also added to stabilize the value and avoid division by 0 case
            //NOTE: need to handle calculation carefully as these may be negative numbers!

            /*
     for (idx=0; idx<col; idx=idx+1) begin : norm_idx
            temp16b_norm[ (bw_psum*(idx+1))-1 : bw_psum*idx] = temp16b[ (bw_psum*(idx+1))-1 : bw_psum*idx ] / temp_sum;
     end
       temp16b_norm[bw_psum*1 - 1: bw_psum*0] = {temp16b[bw_psum*1 - 1] , {(bw_psum-1){temp16b_abs[bw_psum*1 - 2: bw_psum*0] / temp_sum[bw_psum+3:7]}}};
       temp16b_norm[bw_psum*2 - 1: bw_psum*1] = {temp16b[bw_psum*2 - 1] , {(bw_psum-1){temp16b_abs[bw_psum*2 - 2: bw_psum*1] / temp_sum[bw_psum+3:7]}}};
       temp16b_norm[bw_psum*3 - 1: bw_psum*2] = {temp16b[bw_psum*3 - 1] , {(bw_psum-1){temp16b_abs[bw_psum*3 - 2: bw_psum*2] / temp_sum[bw_psum+3:7]}}};
       temp16b_norm[bw_psum*4 - 1: bw_psum*3] = {temp16b[bw_psum*4 - 1] , {(bw_psum-1){temp16b_abs[bw_psum*4 - 2: bw_psum*3] / temp_sum[bw_psum+3:7]}}};
       temp16b_norm[bw_psum*5 - 1: bw_psum*4] = {temp16b[bw_psum*5 - 1] , {(bw_psum-1){temp16b_abs[bw_psum*5 - 2: bw_psum*4] / temp_sum[bw_psum+3:7]}}};
       temp16b_norm[bw_psum*6 - 1: bw_psum*5] = {temp16b[bw_psum*6 - 1] , {(bw_psum-1){temp16b_abs[bw_psum*6 - 2: bw_psum*5] / temp_sum[bw_psum+3:7]}}};
       temp16b_norm[bw_psum*7 - 1: bw_psum*6] = {temp16b[bw_psum*7 - 1] , {(bw_psum-1){temp16b_abs[bw_psum*7 - 2: bw_psum*6] / temp_sum[bw_psum+3:7]}}};
       temp16b_norm[bw_psum*8 - 1: bw_psum*7] = {temp16b[bw_psum*8 - 1] , {(bw_psum-1){temp16b_abs[bw_psum*8 - 2: bw_psum*7] / temp_sum[bw_psum+3:7]}}};
     */
            /*
       temp16b_norm[bw_psum*1 - 1: bw_psum*0] = $signed(temp16b[bw_psum*1 - 1: bw_psum*0]) / $signed({1'b0,temp_sum[bw_psum+3:7]}+1);
       temp16b_norm[bw_psum*2 - 1: bw_psum*1] = $signed(temp16b[bw_psum*2 - 1: bw_psum*1]) / $signed({1'b0,temp_sum[bw_psum+3:7]}+1);
       temp16b_norm[bw_psum*3 - 1: bw_psum*2] = $signed(temp16b[bw_psum*3 - 1: bw_psum*2]) / $signed({1'b0,temp_sum[bw_psum+3:7]}+1);
       temp16b_norm[bw_psum*4 - 1: bw_psum*3] = $signed(temp16b[bw_psum*4 - 1: bw_psum*3]) / $signed({1'b0,temp_sum[bw_psum+3:7]}+1);
       temp16b_norm[bw_psum*5 - 1: bw_psum*4] = $signed(temp16b[bw_psum*5 - 1: bw_psum*4]) / $signed({1'b0,temp_sum[bw_psum+3:7]}+1);
       temp16b_norm[bw_psum*6 - 1: bw_psum*5] = $signed(temp16b[bw_psum*6 - 1: bw_psum*5]) / $signed({1'b0,temp_sum[bw_psum+3:7]}+1);
       temp16b_norm[bw_psum*7 - 1: bw_psum*6] = $signed(temp16b[bw_psum*7 - 1: bw_psum*6]) / $signed({1'b0,temp_sum[bw_psum+3:7]}+1);
       temp16b_norm[bw_psum*8 - 1: bw_psum*7] = $signed(temp16b[bw_psum*8 - 1: bw_psum*7]) / $signed({1'b0,temp_sum[bw_psum+3:7]}+1);
     */

            //numerator must also be absolute value as per canvas discussion
            temp16b_norm[bw_psum*1 - 1: bw_psum*0] = temp16b_abs[bw_psum*1 - 1: bw_psum*0] / ({1'b0,temp_sum[bw_psum+3:7]}+1);
            temp16b_norm[bw_psum*2 - 1: bw_psum*1] = temp16b_abs[bw_psum*2 - 1: bw_psum*1] / ({1'b0,temp_sum[bw_psum+3:7]}+1);
            temp16b_norm[bw_psum*3 - 1: bw_psum*2] = temp16b_abs[bw_psum*3 - 1: bw_psum*2] / ({1'b0,temp_sum[bw_psum+3:7]}+1);
            temp16b_norm[bw_psum*4 - 1: bw_psum*3] = temp16b_abs[bw_psum*4 - 1: bw_psum*3] / ({1'b0,temp_sum[bw_psum+3:7]}+1);
            temp16b_norm[bw_psum*5 - 1: bw_psum*4] = temp16b_abs[bw_psum*5 - 1: bw_psum*4] / ({1'b0,temp_sum[bw_psum+3:7]}+1);
            temp16b_norm[bw_psum*6 - 1: bw_psum*5] = temp16b_abs[bw_psum*6 - 1: bw_psum*5] / ({1'b0,temp_sum[bw_psum+3:7]}+1);
            temp16b_norm[bw_psum*7 - 1: bw_psum*6] = temp16b_abs[bw_psum*7 - 1: bw_psum*6] / ({1'b0,temp_sum[bw_psum+3:7]}+1);
            temp16b_norm[bw_psum*8 - 1: bw_psum*7] = temp16b_abs[bw_psum*8 - 1: bw_psum*7] / ({1'b0,temp_sum[bw_psum+3:7]}+1);
            temp16b_norm[bw_psum*9 - 1: bw_psum*8] = temp16b_abs[bw_psum*9 - 1: bw_psum*8] / ({1'b0,temp_sum[bw_psum+3:7]}+1);
            temp16b_norm[bw_psum*10 - 1: bw_psum*9] = temp16b_abs[bw_psum*10 - 1: bw_psum*9] / ({1'b0,temp_sum[bw_psum+3:7]}+1);
            temp16b_norm[bw_psum*11 - 1: bw_psum*10] = temp16b_abs[bw_psum*11 - 1: bw_psum*10] / ({1'b0,temp_sum[bw_psum+3:7]}+1);
            temp16b_norm[bw_psum*12 - 1: bw_psum*11] = temp16b_abs[bw_psum*12 - 1: bw_psum*11] / ({1'b0,temp_sum[bw_psum+3:7]}+1);
            temp16b_norm[bw_psum*13 - 1: bw_psum*12] = temp16b_abs[bw_psum*13 - 1: bw_psum*12] / ({1'b0,temp_sum[bw_psum+3:7]}+1);
            temp16b_norm[bw_psum*14 - 1: bw_psum*13] = temp16b_abs[bw_psum*14 - 1: bw_psum*13] / ({1'b0,temp_sum[bw_psum+3:7]}+1);
            temp16b_norm[bw_psum*15 - 1: bw_psum*14] = temp16b_abs[bw_psum*15 - 1: bw_psum*14] / ({1'b0,temp_sum[bw_psum+3:7]}+1);
            temp16b_norm[bw_psum*16 - 1: bw_psum*15] = temp16b_abs[bw_psum*16 - 1: bw_psum*15] / ({1'b0,temp_sum[bw_psum+3:7]}+1);


            $display("DBG: normalized prd @cycle%2d: %40h", t, temp16b_norm);
            final_pmem_expected_result[t] = {temp16b_norm[(bw_psum*col/2)-1:0], temp16b_norm[bw_psum*col-1:(bw_psum*col/2)]};
            $display("DBG: ======== END cycle number %d ==========\n", t);
        end

        //////////////////////////////////////////////






        ///// Qmem writing  /////

        $display("##### Qmem writing  #####");

        for (q = 0; q < total_cycle; q = q + 1) begin

            #0.5 clk = 1'b0;
            qmem_wr = 1;
            if (q > 0) qkmem_add = qkmem_add + 1;

            mem_in[1*bw-1:0*bw]   = Q[q][0];
            mem_in[2*bw-1:1*bw]   = Q[q][1];
            mem_in[3*bw-1:2*bw]   = Q[q][2];
            mem_in[4*bw-1:3*bw]   = Q[q][3];
            mem_in[5*bw-1:4*bw]   = Q[q][4];
            mem_in[6*bw-1:5*bw]   = Q[q][5];
            mem_in[7*bw-1:6*bw]   = Q[q][6];
            mem_in[8*bw-1:7*bw]   = Q[q][7];
            mem_in[9*bw-1:8*bw]   = Q[q][0];
            mem_in[10*bw-1:9*bw]  = Q[q][1];
            mem_in[11*bw-1:10*bw] = Q[q][2];
            mem_in[12*bw-1:11*bw] = Q[q][3];
            mem_in[13*bw-1:12*bw] = Q[q][4];
            mem_in[14*bw-1:13*bw] = Q[q][5];
            mem_in[15*bw-1:14*bw] = Q[q][6];
            mem_in[16*bw-1:15*bw] = Q[q][7];

            #0.5 clk = 1'b1;

        end


        #0.5 clk = 1'b0;
        qmem_wr   = 0;
        qkmem_add = 0;
        #0.5 clk = 1'b1;
        ///////////////////////////////////////////





        ///// Kmem writing  /////

        $display("##### Kmem writing #####");

        for (q = 0; q < core_col; q = q + 1) begin

            #0.5 clk = 1'b0;
            kmem_wr = 1;
            if (q > 0) qkmem_add = qkmem_add + 1;

            mem_in[1*bw-1:0*bw]   = K[q][0];
            mem_in[2*bw-1:1*bw]   = K[q][1];
            mem_in[3*bw-1:2*bw]   = K[q][2];
            mem_in[4*bw-1:3*bw]   = K[q][3];
            mem_in[5*bw-1:4*bw]   = K[q][4];
            mem_in[6*bw-1:5*bw]   = K[q][5];
            mem_in[7*bw-1:6*bw]   = K[q][6];
            mem_in[8*bw-1:7*bw]   = K[q][7];
            mem_in[9*bw-1:8*bw]   = K[q+core_col][0];
            mem_in[10*bw-1:9*bw]  = K[q+core_col][1];
            mem_in[11*bw-1:10*bw] = K[q+core_col][2];
            mem_in[12*bw-1:11*bw] = K[q+core_col][3];
            mem_in[13*bw-1:12*bw] = K[q+core_col][4];
            mem_in[14*bw-1:13*bw] = K[q+core_col][5];
            mem_in[15*bw-1:14*bw] = K[q+core_col][6];
            mem_in[16*bw-1:15*bw] = K[q+core_col][7];

            $display("DBG: mem_in = %h q \n", mem_in);
            #0.5 clk = 1'b1;

        end

        #0.5 clk = 1'b0;
        kmem_wr   = 0;
        qkmem_add = 0;
        #0.5 clk = 1'b1;
        ///////////////////////////////////////////



        for (q = 0; q < 2; q = q + 1) begin
            #0.5 clk = 1'b0;
            #0.5 clk = 1'b1;
        end




        /////  K data loading  /////
        $display("##### K data loading to processor #####");

        for (q = 0; q < col + 1; q = q + 1) begin
            #0.5 clk = 1'b0;
            load = 1;
            if (q == 1) kmem_rd = 1;
            if (q > 1) begin
                qkmem_add = qkmem_add + 1;
            end

            #0.5 clk = 1'b1;
        end

        #0.5 clk = 1'b0;
        kmem_rd   = 0;
        qkmem_add = 0;
        #0.5 clk = 1'b1;

        #0.5 clk = 1'b0;
        load = 0;
        #0.5 clk = 1'b1;

        ///////////////////////////////////////////

        for (q = 0; q < 10; q = q + 1) begin
            #0.5 clk = 1'b0;
            #0.5 clk = 1'b1;
        end

        ///// execution  /////
        $display("##### execute #####");

        for (q = 0; q < total_cycle; q = q + 1) begin
            #0.5 clk = 1'b0;
            execute = 1;
            qmem_rd = 1;

            if (q > 0) begin
                qkmem_add = qkmem_add + 1;
            end

            #0.5 clk = 1'b1;
        end

        #0.5 clk = 1'b0;
        qmem_rd   = 0;
        qkmem_add = 0;
        execute   = 0;
        #0.5 clk = 1'b1;


        ///////////////////////////////////////////

        for (q = 0; q < 10; q = q + 1) begin
            #0.5 clk = 1'b0;
            #0.5 clk = 1'b1;
        end

        ////////////// output fifo rd and wb to psum mem ///////////////////

        $display("##### move ofifo to sfp, normalize it in sfp and then write it to pmem #####");

        for (q = 0; q < total_cycle; q = q + 1) begin
            #0.5 clk = 1'b0;

            ofifo_rd = 1;
            #0.5 clk = 1'b1;
            #0.5 clk = 1'b0;
            //now ofifo has spit out the data, so start the accumulation
            ofifo_rd = 0;
            sfp_acc  = 1;
            repeat (3) begin
                #0.5 clk = 1'b1;
                #0.5 clk = 1'b0;
            end
            //now accumulation is done, and the sum is stored in the internal n FIFO
            send_sum = 1'b1;
            sfp_acc = 0;
            #0.5 clk = 1'b1;
            #0.5 clk = 1'b0;
            send_sum = 1'b0;
            #0.5 clk = 1'b1;
            #0.5 clk = 1'b0;
            #0.5 clk = 1'b1;
            #0.5 clk = 1'b0;
            #0.5 clk = 1'b1;
            #0.5 clk = 1'b0;
            rec_sum = 1'b1;
            #0.5 clk = 1'b1;
            #0.5 clk = 1'b0;
            rec_sum = 1'b0;
            #0.5 clk = 1'b1;
            #0.5 clk = 1'b0;
            //start the division - FIXME hardcode to X cycle delay to match implementation
            sfp_div = 1;
            #0.5 clk = 1'b1;
            #0.5 clk = 1'b0;
            sfp_div = 0;
            repeat (20 + 3) begin
                #0.5 clk = 1'b1;
                #0.5 clk = 1'b0;
            end
            //division is done - write this to pmem
            pmem_wr = 1;
            #0.5 clk = 1'b1;
            #0.5 clk = 1'b0;
            //write back to memory done
            pmem_wr  = 0;
            //now move to the next address 
            pmem_add = pmem_add + 1;
            #0.5 clk = 1'b1;
            #0.5 clk = 1'b0;
            #0.5 clk = 1'b1;
        end

        #0.5 clk = 1'b0;
        pmem_add = 0;
        #0.5 clk = 1'b1;
        ///////////////////////////////////////////

        ////////////// final data validation by reading pmem ///////////////////

        #0.5 clk = 1'b0;
        pmem_rd = 1;
        #0.5 clk = 1'b1;

        for (q = 0; q < total_cycle; q = q + 1) begin
            #0.5 clk = 1'b0;

            $display("DBG: final output from pmem for @cycle%2d: %40h, expected_out %40h", q,
                     out[bw_psum*col-1:0], final_pmem_expected_result[q]);
            if (out[bw_psum*col-1:0] != final_pmem_expected_result[q]) begin
                error_count = error_count + 1;
            end
            pmem_add = pmem_add + 1;

            #0.5 clk = 1'b1;
        end

        #0.5 clk = 1'b0;
        pmem_add = 0;
        #0.5 clk = 1'b1;
        $display("\n\n ============ FINAL SIMULATION RESULT =============== \n");
        if (!error_count) begin
            $display("SUCCESS: all pmem values match :-)\n");
        end else begin
            $display("ERROR: %d values did not match :-(\n", error_count);
        end

        ///////////////////////////////////////////
        #10 $finish;


    end

    always @(posedge clk) begin
        out_q <= out;
    end

endmodule




