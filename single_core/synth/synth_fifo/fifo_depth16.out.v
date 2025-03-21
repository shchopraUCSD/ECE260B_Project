/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : K-2015.06-SP2
// Date      : Thu Mar 20 17:00:11 2025
/////////////////////////////////////////////////////////////


module fifo_mux_2_1_bw4_simd1_7 ( in0, in1, sel, out );
  input [3:0] in0;
  input [3:0] in1;
  output [3:0] out;
  input sel;


  MUX2D0 U1 ( .I0(in0[1]), .I1(in1[1]), .S(sel), .Z(out[1]) );
  MUX2D0 U2 ( .I0(in0[3]), .I1(in1[3]), .S(sel), .Z(out[3]) );
  MUX2D0 U3 ( .I0(in0[0]), .I1(in1[0]), .S(sel), .Z(out[0]) );
  MUX2D0 U4 ( .I0(in0[2]), .I1(in1[2]), .S(sel), .Z(out[2]) );
endmodule


module fifo_mux_2_1_bw4_simd1_8 ( in0, in1, sel, out );
  input [3:0] in0;
  input [3:0] in1;
  output [3:0] out;
  input sel;


  MUX2D0 U1 ( .I0(in0[1]), .I1(in1[1]), .S(sel), .Z(out[1]) );
  MUX2D0 U2 ( .I0(in0[3]), .I1(in1[3]), .S(sel), .Z(out[3]) );
  MUX2D0 U3 ( .I0(in0[0]), .I1(in1[0]), .S(sel), .Z(out[0]) );
  MUX2D0 U4 ( .I0(in0[2]), .I1(in1[2]), .S(sel), .Z(out[2]) );
endmodule


module fifo_mux_2_1_bw4_simd1_9 ( in0, in1, sel, out );
  input [3:0] in0;
  input [3:0] in1;
  output [3:0] out;
  input sel;


  MUX2D0 U1 ( .I0(in0[1]), .I1(in1[1]), .S(sel), .Z(out[1]) );
  MUX2D0 U2 ( .I0(in0[3]), .I1(in1[3]), .S(sel), .Z(out[3]) );
  MUX2D0 U3 ( .I0(in0[0]), .I1(in1[0]), .S(sel), .Z(out[0]) );
  MUX2D0 U4 ( .I0(in0[2]), .I1(in1[2]), .S(sel), .Z(out[2]) );
endmodule


module fifo_mux_2_1_bw4_simd1_10 ( in0, in1, sel, out );
  input [3:0] in0;
  input [3:0] in1;
  output [3:0] out;
  input sel;


  MUX2D0 U1 ( .I0(in0[1]), .I1(in1[1]), .S(sel), .Z(out[1]) );
  MUX2D0 U2 ( .I0(in0[3]), .I1(in1[3]), .S(sel), .Z(out[3]) );
  MUX2D0 U3 ( .I0(in0[0]), .I1(in1[0]), .S(sel), .Z(out[0]) );
  MUX2D0 U4 ( .I0(in0[2]), .I1(in1[2]), .S(sel), .Z(out[2]) );
endmodule


module fifo_mux_2_1_bw4_simd1_11 ( in0, in1, sel, out );
  input [3:0] in0;
  input [3:0] in1;
  output [3:0] out;
  input sel;


  MUX2D0 U1 ( .I0(in0[1]), .I1(in1[1]), .S(sel), .Z(out[1]) );
  MUX2D0 U2 ( .I0(in0[3]), .I1(in1[3]), .S(sel), .Z(out[3]) );
  MUX2D0 U3 ( .I0(in0[0]), .I1(in1[0]), .S(sel), .Z(out[0]) );
  MUX2D0 U4 ( .I0(in0[2]), .I1(in1[2]), .S(sel), .Z(out[2]) );
endmodule


module fifo_mux_2_1_bw4_simd1_12 ( in0, in1, sel, out );
  input [3:0] in0;
  input [3:0] in1;
  output [3:0] out;
  input sel;


  MUX2D0 U1 ( .I0(in0[1]), .I1(in1[1]), .S(sel), .Z(out[1]) );
  MUX2D0 U2 ( .I0(in0[3]), .I1(in1[3]), .S(sel), .Z(out[3]) );
  MUX2D0 U3 ( .I0(in0[0]), .I1(in1[0]), .S(sel), .Z(out[0]) );
  MUX2D0 U4 ( .I0(in0[2]), .I1(in1[2]), .S(sel), .Z(out[2]) );
endmodule


module fifo_mux_2_1_bw4_simd1_13 ( in0, in1, sel, out );
  input [3:0] in0;
  input [3:0] in1;
  output [3:0] out;
  input sel;


  MUX2D0 U1 ( .I0(in0[1]), .I1(in1[1]), .S(sel), .Z(out[1]) );
  MUX2D0 U2 ( .I0(in0[3]), .I1(in1[3]), .S(sel), .Z(out[3]) );
  MUX2D0 U3 ( .I0(in0[0]), .I1(in1[0]), .S(sel), .Z(out[0]) );
  MUX2D0 U4 ( .I0(in0[2]), .I1(in1[2]), .S(sel), .Z(out[2]) );
endmodule


module fifo_mux_8_1_bw4_simd1_1 ( out, sel, in0, in1, in2, in3, in4, in5, in6, 
        in7 );
  output [3:0] out;
  input [2:0] sel;
  input [3:0] in0;
  input [3:0] in1;
  input [3:0] in2;
  input [3:0] in3;
  input [3:0] in4;
  input [3:0] in5;
  input [3:0] in6;
  input [3:0] in7;

  wire   [3:0] out_sub0_0;
  wire   [3:0] out_sub0_1;
  wire   [3:0] out_sub0_2;
  wire   [3:0] out_sub0_3;
  wire   [3:0] out_sub1_0;
  wire   [3:0] out_sub1_1;

  fifo_mux_2_1_bw4_simd1_13 fifo_mux_2_1a ( .in0(in0), .in1(in1), .sel(sel[0]), 
        .out(out_sub0_0) );
  fifo_mux_2_1_bw4_simd1_12 fifo_mux_2_1b ( .in0(in2), .in1(in3), .sel(sel[0]), 
        .out(out_sub0_1) );
  fifo_mux_2_1_bw4_simd1_11 fifo_mux_2_1c ( .in0(in4), .in1(in5), .sel(sel[0]), 
        .out(out_sub0_2) );
  fifo_mux_2_1_bw4_simd1_10 fifo_mux_2_1d ( .in0(in6), .in1(in7), .sel(sel[0]), 
        .out(out_sub0_3) );
  fifo_mux_2_1_bw4_simd1_9 fifo_mux_2_1e ( .in0(out_sub0_0), .in1(out_sub0_1), 
        .sel(sel[1]), .out(out_sub1_0) );
  fifo_mux_2_1_bw4_simd1_8 fifo_mux_2_1f ( .in0(out_sub0_2), .in1(out_sub0_3), 
        .sel(sel[1]), .out(out_sub1_1) );
  fifo_mux_2_1_bw4_simd1_7 fifo_mux_2_1g ( .in0(out_sub1_0), .in1(out_sub1_1), 
        .sel(sel[2]), .out(out) );
endmodule


module fifo_mux_2_1_bw4_simd1_14 ( in0, in1, sel, out );
  input [3:0] in0;
  input [3:0] in1;
  output [3:0] out;
  input sel;


  CKMUX2D1 U1 ( .I0(in0[1]), .I1(in1[1]), .S(sel), .Z(out[1]) );
  CKMUX2D1 U2 ( .I0(in0[3]), .I1(in1[3]), .S(sel), .Z(out[3]) );
  CKMUX2D1 U3 ( .I0(in0[0]), .I1(in1[0]), .S(sel), .Z(out[0]) );
  CKMUX2D1 U4 ( .I0(in0[2]), .I1(in1[2]), .S(sel), .Z(out[2]) );
endmodule


module fifo_mux_2_1_bw4_simd1_0 ( in0, in1, sel, out );
  input [3:0] in0;
  input [3:0] in1;
  output [3:0] out;
  input sel;


  MUX2D0 U1 ( .I0(in0[1]), .I1(in1[1]), .S(sel), .Z(out[1]) );
  MUX2D0 U2 ( .I0(in0[3]), .I1(in1[3]), .S(sel), .Z(out[3]) );
  MUX2D0 U3 ( .I0(in0[0]), .I1(in1[0]), .S(sel), .Z(out[0]) );
  MUX2D0 U4 ( .I0(in0[2]), .I1(in1[2]), .S(sel), .Z(out[2]) );
endmodule


module fifo_mux_2_1_bw4_simd1_1 ( in0, in1, sel, out );
  input [3:0] in0;
  input [3:0] in1;
  output [3:0] out;
  input sel;


  MUX2D0 U1 ( .I0(in0[1]), .I1(in1[1]), .S(sel), .Z(out[1]) );
  MUX2D0 U2 ( .I0(in0[3]), .I1(in1[3]), .S(sel), .Z(out[3]) );
  MUX2D0 U3 ( .I0(in0[0]), .I1(in1[0]), .S(sel), .Z(out[0]) );
  MUX2D0 U4 ( .I0(in0[2]), .I1(in1[2]), .S(sel), .Z(out[2]) );
endmodule


module fifo_mux_2_1_bw4_simd1_2 ( in0, in1, sel, out );
  input [3:0] in0;
  input [3:0] in1;
  output [3:0] out;
  input sel;


  MUX2D0 U1 ( .I0(in0[1]), .I1(in1[1]), .S(sel), .Z(out[1]) );
  MUX2D0 U2 ( .I0(in0[3]), .I1(in1[3]), .S(sel), .Z(out[3]) );
  MUX2D0 U3 ( .I0(in0[0]), .I1(in1[0]), .S(sel), .Z(out[0]) );
  MUX2D0 U4 ( .I0(in0[2]), .I1(in1[2]), .S(sel), .Z(out[2]) );
endmodule


module fifo_mux_2_1_bw4_simd1_3 ( in0, in1, sel, out );
  input [3:0] in0;
  input [3:0] in1;
  output [3:0] out;
  input sel;


  MUX2D0 U1 ( .I0(in0[1]), .I1(in1[1]), .S(sel), .Z(out[1]) );
  MUX2D0 U2 ( .I0(in0[3]), .I1(in1[3]), .S(sel), .Z(out[3]) );
  MUX2D0 U3 ( .I0(in0[0]), .I1(in1[0]), .S(sel), .Z(out[0]) );
  MUX2D0 U4 ( .I0(in0[2]), .I1(in1[2]), .S(sel), .Z(out[2]) );
endmodule


module fifo_mux_2_1_bw4_simd1_4 ( in0, in1, sel, out );
  input [3:0] in0;
  input [3:0] in1;
  output [3:0] out;
  input sel;


  MUX2D0 U1 ( .I0(in0[1]), .I1(in1[1]), .S(sel), .Z(out[1]) );
  MUX2D0 U2 ( .I0(in0[3]), .I1(in1[3]), .S(sel), .Z(out[3]) );
  MUX2D0 U3 ( .I0(in0[0]), .I1(in1[0]), .S(sel), .Z(out[0]) );
  MUX2D0 U4 ( .I0(in0[2]), .I1(in1[2]), .S(sel), .Z(out[2]) );
endmodule


module fifo_mux_2_1_bw4_simd1_5 ( in0, in1, sel, out );
  input [3:0] in0;
  input [3:0] in1;
  output [3:0] out;
  input sel;


  MUX2D0 U1 ( .I0(in0[1]), .I1(in1[1]), .S(sel), .Z(out[1]) );
  MUX2D0 U2 ( .I0(in0[3]), .I1(in1[3]), .S(sel), .Z(out[3]) );
  MUX2D0 U3 ( .I0(in0[0]), .I1(in1[0]), .S(sel), .Z(out[0]) );
  MUX2D0 U4 ( .I0(in0[2]), .I1(in1[2]), .S(sel), .Z(out[2]) );
endmodule


module fifo_mux_2_1_bw4_simd1_6 ( in0, in1, sel, out );
  input [3:0] in0;
  input [3:0] in1;
  output [3:0] out;
  input sel;


  MUX2D0 U1 ( .I0(in0[1]), .I1(in1[1]), .S(sel), .Z(out[1]) );
  MUX2D0 U2 ( .I0(in0[3]), .I1(in1[3]), .S(sel), .Z(out[3]) );
  MUX2D0 U3 ( .I0(in0[0]), .I1(in1[0]), .S(sel), .Z(out[0]) );
  MUX2D0 U4 ( .I0(in0[2]), .I1(in1[2]), .S(sel), .Z(out[2]) );
endmodule


module fifo_mux_8_1_bw4_simd1_0 ( out, sel, in0, in1, in2, in3, in4, in5, in6, 
        in7 );
  output [3:0] out;
  input [2:0] sel;
  input [3:0] in0;
  input [3:0] in1;
  input [3:0] in2;
  input [3:0] in3;
  input [3:0] in4;
  input [3:0] in5;
  input [3:0] in6;
  input [3:0] in7;

  wire   [3:0] out_sub0_0;
  wire   [3:0] out_sub0_1;
  wire   [3:0] out_sub0_2;
  wire   [3:0] out_sub0_3;
  wire   [3:0] out_sub1_0;
  wire   [3:0] out_sub1_1;

  fifo_mux_2_1_bw4_simd1_6 fifo_mux_2_1a ( .in0(in0), .in1(in1), .sel(sel[0]), 
        .out(out_sub0_0) );
  fifo_mux_2_1_bw4_simd1_5 fifo_mux_2_1b ( .in0(in2), .in1(in3), .sel(sel[0]), 
        .out(out_sub0_1) );
  fifo_mux_2_1_bw4_simd1_4 fifo_mux_2_1c ( .in0(in4), .in1(in5), .sel(sel[0]), 
        .out(out_sub0_2) );
  fifo_mux_2_1_bw4_simd1_3 fifo_mux_2_1d ( .in0(in6), .in1(in7), .sel(sel[0]), 
        .out(out_sub0_3) );
  fifo_mux_2_1_bw4_simd1_2 fifo_mux_2_1e ( .in0(out_sub0_0), .in1(out_sub0_1), 
        .sel(sel[1]), .out(out_sub1_0) );
  fifo_mux_2_1_bw4_simd1_1 fifo_mux_2_1f ( .in0(out_sub0_2), .in1(out_sub0_3), 
        .sel(sel[1]), .out(out_sub1_1) );
  fifo_mux_2_1_bw4_simd1_0 fifo_mux_2_1g ( .in0(out_sub1_0), .in1(out_sub1_1), 
        .sel(sel[2]), .out(out) );
endmodule


module fifo_mux_16_1_bw4_simd1 ( out, sel, in0, in1, in2, in3, in4, in5, in6, 
        in7, in8, in9, in10, in11, in12, in13, in14, in15 );
  output [3:0] out;
  input [3:0] sel;
  input [3:0] in0;
  input [3:0] in1;
  input [3:0] in2;
  input [3:0] in3;
  input [3:0] in4;
  input [3:0] in5;
  input [3:0] in6;
  input [3:0] in7;
  input [3:0] in8;
  input [3:0] in9;
  input [3:0] in10;
  input [3:0] in11;
  input [3:0] in12;
  input [3:0] in13;
  input [3:0] in14;
  input [3:0] in15;

  wire   [3:0] out_sub0;
  wire   [3:0] out_sub1;

  fifo_mux_8_1_bw4_simd1_1 mux_8_1a ( .out(out_sub0), .sel(sel[2:0]), .in0(in0), .in1(in1), .in2(in2), .in3(in3), .in4(in4), .in5(in5), .in6(in6), .in7(in7)
         );
  fifo_mux_8_1_bw4_simd1_0 mux_8_1b ( .out(out_sub1), .sel(sel[2:0]), .in0(in8), .in1(in9), .in2(in10), .in3(in11), .in4(in12), .in5(in13), .in6(in14), .in7(
        in15) );
  fifo_mux_2_1_bw4_simd1_14 mux_2_1a ( .in0(out_sub0), .in1(out_sub1), .sel(
        sel[3]), .out(out) );
endmodule


module fifo_depth16 ( clk, in, out, rd, wr, o_full, o_empty, reset );
  input [3:0] in;
  output [3:0] out;
  input clk, rd, wr, reset;
  output o_full, o_empty;
  wire   N28, N29, N30, N31, N32, N33, N38, N39, N40, N41, N42, N43, N143,
         N144, N145, N146, N147, N148, N149, N150, N151, N152, N153, N154,
         N155, N156, N157, N158, n9, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50;
  wire   [4:0] wr_ptr;
  wire   [4:0] rd_ptr;
  wire   [3:0] q0;
  wire   [3:0] q1;
  wire   [3:0] q2;
  wire   [3:0] q3;
  wire   [3:0] q4;
  wire   [3:0] q5;
  wire   [3:0] q6;
  wire   [3:0] q7;
  wire   [3:0] q8;
  wire   [3:0] q9;
  wire   [3:0] q10;
  wire   [3:0] q11;
  wire   [3:0] q12;
  wire   [3:0] q13;
  wire   [3:0] q14;
  wire   [3:0] q15;

  fifo_mux_16_1_bw4_simd1 fifo_mux_16_1a ( .out(out), .sel(rd_ptr[3:0]), .in0(
        q0), .in1(q1), .in2(q2), .in3(q3), .in4(q4), .in5(q5), .in6(q6), .in7(
        q7), .in8(q8), .in9(q9), .in10(q10), .in11(q11), .in12(q12), .in13(q13), .in14(q14), .in15(q15) );
  EDFKCNQD1 wr_ptr_reg_0_ ( .CN(n9), .D(N39), .E(N38), .CP(clk), .Q(wr_ptr[0])
         );
  EDFKCNQD1 rd_ptr_reg_4_ ( .CN(n9), .D(N32), .E(N33), .CP(clk), .Q(rd_ptr[4])
         );
  EDFKCNQD1 wr_ptr_reg_1_ ( .CN(n9), .D(N40), .E(N38), .CP(clk), .Q(wr_ptr[1])
         );
  EDFKCNQD1 wr_ptr_reg_2_ ( .CN(n9), .D(N41), .E(N38), .CP(clk), .Q(wr_ptr[2])
         );
  EDFKCNQD1 wr_ptr_reg_3_ ( .CN(n9), .D(N42), .E(N38), .CP(clk), .Q(wr_ptr[3])
         );
  EDFQD1 q8_reg_0_ ( .D(in[0]), .E(N154), .CP(clk), .Q(q8[0]) );
  EDFQD1 q8_reg_3_ ( .D(in[3]), .E(N154), .CP(clk), .Q(q8[3]) );
  EDFQD1 q8_reg_2_ ( .D(in[2]), .E(N154), .CP(clk), .Q(q8[2]) );
  EDFQD1 q8_reg_1_ ( .D(in[1]), .E(N154), .CP(clk), .Q(q8[1]) );
  EDFQD1 q10_reg_0_ ( .D(in[0]), .E(N156), .CP(clk), .Q(q10[0]) );
  EDFQD1 q10_reg_3_ ( .D(in[3]), .E(N156), .CP(clk), .Q(q10[3]) );
  EDFQD1 q10_reg_2_ ( .D(in[2]), .E(N156), .CP(clk), .Q(q10[2]) );
  EDFQD1 q10_reg_1_ ( .D(in[1]), .E(N156), .CP(clk), .Q(q10[1]) );
  EDFQD1 q9_reg_0_ ( .D(in[0]), .E(N155), .CP(clk), .Q(q9[0]) );
  EDFQD1 q9_reg_3_ ( .D(in[3]), .E(N155), .CP(clk), .Q(q9[3]) );
  EDFQD1 q9_reg_2_ ( .D(in[2]), .E(N155), .CP(clk), .Q(q9[2]) );
  EDFQD1 q9_reg_1_ ( .D(in[1]), .E(N155), .CP(clk), .Q(q9[1]) );
  EDFQD1 q11_reg_0_ ( .D(in[0]), .E(N157), .CP(clk), .Q(q11[0]) );
  EDFQD1 q11_reg_3_ ( .D(in[3]), .E(N157), .CP(clk), .Q(q11[3]) );
  EDFQD1 q11_reg_2_ ( .D(in[2]), .E(N157), .CP(clk), .Q(q11[2]) );
  EDFQD1 q11_reg_1_ ( .D(in[1]), .E(N157), .CP(clk), .Q(q11[1]) );
  EDFQD1 q6_reg_0_ ( .D(in[0]), .E(N152), .CP(clk), .Q(q6[0]) );
  EDFQD1 q6_reg_3_ ( .D(in[3]), .E(N152), .CP(clk), .Q(q6[3]) );
  EDFQD1 q6_reg_2_ ( .D(in[2]), .E(N152), .CP(clk), .Q(q6[2]) );
  EDFQD1 q6_reg_1_ ( .D(in[1]), .E(N152), .CP(clk), .Q(q6[1]) );
  EDFQD1 q7_reg_0_ ( .D(in[0]), .E(N153), .CP(clk), .Q(q7[0]) );
  EDFQD1 q7_reg_3_ ( .D(in[3]), .E(N153), .CP(clk), .Q(q7[3]) );
  EDFQD1 q7_reg_2_ ( .D(in[2]), .E(N153), .CP(clk), .Q(q7[2]) );
  EDFQD1 q7_reg_1_ ( .D(in[1]), .E(N153), .CP(clk), .Q(q7[1]) );
  EDFKCNQD1 wr_ptr_reg_4_ ( .CN(n9), .D(N43), .E(N38), .CP(clk), .Q(wr_ptr[4])
         );
  EDFKCNQD1 rd_ptr_reg_3_ ( .CN(n9), .D(N31), .E(N33), .CP(clk), .Q(rd_ptr[3])
         );
  EDFKCNQD1 rd_ptr_reg_2_ ( .CN(n9), .D(N30), .E(N33), .CP(clk), .Q(rd_ptr[2])
         );
  EDFKCNQD1 rd_ptr_reg_1_ ( .CN(n9), .D(N29), .E(N33), .CP(clk), .Q(rd_ptr[1])
         );
  EDFKCNQD1 rd_ptr_reg_0_ ( .CN(n9), .D(N28), .E(N33), .CP(clk), .Q(rd_ptr[0])
         );
  EDFQD1 q12_reg_3_ ( .D(in[3]), .E(N158), .CP(clk), .Q(q12[3]) );
  EDFQD1 q12_reg_2_ ( .D(in[2]), .E(N158), .CP(clk), .Q(q12[2]) );
  EDFQD1 q12_reg_1_ ( .D(in[1]), .E(N158), .CP(clk), .Q(q12[1]) );
  EDFQD1 q12_reg_0_ ( .D(in[0]), .E(N158), .CP(clk), .Q(q12[0]) );
  EDFQD1 q13_reg_3_ ( .D(in[3]), .E(N143), .CP(clk), .Q(q13[3]) );
  EDFQD1 q13_reg_2_ ( .D(in[2]), .E(N143), .CP(clk), .Q(q13[2]) );
  EDFQD1 q13_reg_1_ ( .D(in[1]), .E(N143), .CP(clk), .Q(q13[1]) );
  EDFQD1 q13_reg_0_ ( .D(in[0]), .E(N143), .CP(clk), .Q(q13[0]) );
  EDFQD1 q14_reg_3_ ( .D(in[3]), .E(N144), .CP(clk), .Q(q14[3]) );
  EDFQD1 q14_reg_2_ ( .D(in[2]), .E(N144), .CP(clk), .Q(q14[2]) );
  EDFQD1 q14_reg_1_ ( .D(in[1]), .E(N144), .CP(clk), .Q(q14[1]) );
  EDFQD1 q14_reg_0_ ( .D(in[0]), .E(N144), .CP(clk), .Q(q14[0]) );
  EDFQD1 q15_reg_3_ ( .D(in[3]), .E(N145), .CP(clk), .Q(q15[3]) );
  EDFQD1 q15_reg_2_ ( .D(in[2]), .E(N145), .CP(clk), .Q(q15[2]) );
  EDFQD1 q15_reg_1_ ( .D(in[1]), .E(N145), .CP(clk), .Q(q15[1]) );
  EDFQD1 q15_reg_0_ ( .D(in[0]), .E(N145), .CP(clk), .Q(q15[0]) );
  EDFQD1 q0_reg_3_ ( .D(in[3]), .E(N146), .CP(clk), .Q(q0[3]) );
  EDFQD1 q0_reg_2_ ( .D(in[2]), .E(N146), .CP(clk), .Q(q0[2]) );
  EDFQD1 q0_reg_1_ ( .D(in[1]), .E(N146), .CP(clk), .Q(q0[1]) );
  EDFQD1 q0_reg_0_ ( .D(in[0]), .E(N146), .CP(clk), .Q(q0[0]) );
  EDFQD1 q1_reg_3_ ( .D(in[3]), .E(N147), .CP(clk), .Q(q1[3]) );
  EDFQD1 q1_reg_2_ ( .D(in[2]), .E(N147), .CP(clk), .Q(q1[2]) );
  EDFQD1 q1_reg_1_ ( .D(in[1]), .E(N147), .CP(clk), .Q(q1[1]) );
  EDFQD1 q1_reg_0_ ( .D(in[0]), .E(N147), .CP(clk), .Q(q1[0]) );
  EDFQD1 q2_reg_3_ ( .D(in[3]), .E(N148), .CP(clk), .Q(q2[3]) );
  EDFQD1 q2_reg_2_ ( .D(in[2]), .E(N148), .CP(clk), .Q(q2[2]) );
  EDFQD1 q2_reg_1_ ( .D(in[1]), .E(N148), .CP(clk), .Q(q2[1]) );
  EDFQD1 q2_reg_0_ ( .D(in[0]), .E(N148), .CP(clk), .Q(q2[0]) );
  EDFQD1 q3_reg_3_ ( .D(in[3]), .E(N149), .CP(clk), .Q(q3[3]) );
  EDFQD1 q3_reg_2_ ( .D(in[2]), .E(N149), .CP(clk), .Q(q3[2]) );
  EDFQD1 q3_reg_1_ ( .D(in[1]), .E(N149), .CP(clk), .Q(q3[1]) );
  EDFQD1 q3_reg_0_ ( .D(in[0]), .E(N149), .CP(clk), .Q(q3[0]) );
  EDFQD1 q4_reg_3_ ( .D(in[3]), .E(N150), .CP(clk), .Q(q4[3]) );
  EDFQD1 q4_reg_2_ ( .D(in[2]), .E(N150), .CP(clk), .Q(q4[2]) );
  EDFQD1 q4_reg_1_ ( .D(in[1]), .E(N150), .CP(clk), .Q(q4[1]) );
  EDFQD1 q4_reg_0_ ( .D(in[0]), .E(N150), .CP(clk), .Q(q4[0]) );
  EDFQD1 q5_reg_3_ ( .D(in[3]), .E(N151), .CP(clk), .Q(q5[3]) );
  EDFQD1 q5_reg_2_ ( .D(in[2]), .E(N151), .CP(clk), .Q(q5[2]) );
  EDFQD1 q5_reg_1_ ( .D(in[1]), .E(N151), .CP(clk), .Q(q5[1]) );
  EDFQD1 q5_reg_0_ ( .D(in[0]), .E(N151), .CP(clk), .Q(q5[0]) );
  NR2XD0 U45 ( .A1(o_full), .A2(n41), .ZN(N38) );
  NR2D0 U46 ( .A1(N28), .A2(n37), .ZN(n43) );
  INVD0 U47 ( .I(rd_ptr[3]), .ZN(n38) );
  CKND2D0 U48 ( .A1(rd_ptr[2]), .A2(n43), .ZN(n42) );
  INVD0 U49 ( .I(wr_ptr[4]), .ZN(n50) );
  CKND2D0 U50 ( .A1(n32), .A2(n31), .ZN(n35) );
  CKND2D0 U51 ( .A1(wr_ptr[2]), .A2(wr_ptr[1]), .ZN(n36) );
  CKND2D0 U52 ( .A1(n27), .A2(n31), .ZN(n30) );
  CKND2D0 U53 ( .A1(wr_ptr[3]), .A2(n27), .ZN(n29) );
  CKND2D0 U54 ( .A1(n48), .A2(n28), .ZN(n34) );
  INVD0 U55 ( .I(wr_ptr[3]), .ZN(n31) );
  IND2D0 U56 ( .A1(n36), .B1(wr_ptr[0]), .ZN(n26) );
  NR2D0 U57 ( .A1(n31), .A2(n26), .ZN(n49) );
  INVD0 U58 ( .I(wr_ptr[2]), .ZN(n48) );
  CKND2D0 U59 ( .A1(wr_ptr[2]), .A2(n28), .ZN(n46) );
  CKND2D0 U60 ( .A1(wr_ptr[1]), .A2(n48), .ZN(n47) );
  INVD0 U61 ( .I(wr_ptr[1]), .ZN(n28) );
  INVD0 U62 ( .I(rd_ptr[4]), .ZN(n45) );
  NR2D0 U63 ( .A1(n38), .A2(n42), .ZN(n44) );
  NR2D0 U64 ( .A1(n30), .A2(n46), .ZN(N150) );
  NR2D0 U65 ( .A1(n35), .A2(n47), .ZN(N149) );
  NR2D0 U66 ( .A1(n30), .A2(n47), .ZN(N148) );
  NR2D0 U67 ( .A1(n34), .A2(n30), .ZN(N146) );
  NR2D0 U68 ( .A1(n36), .A2(n33), .ZN(N145) );
  NR2D0 U69 ( .A1(n36), .A2(n29), .ZN(N144) );
  NR2D0 U70 ( .A1(n33), .A2(n46), .ZN(N143) );
  NR2D0 U71 ( .A1(n29), .A2(n46), .ZN(N158) );
  INVD0 U72 ( .I(rd_ptr[0]), .ZN(N28) );
  AOI21D0 U73 ( .A1(N28), .A2(n37), .B(n43), .ZN(N29) );
  OA21D0 U74 ( .A1(rd_ptr[2]), .A2(n43), .B(n42), .Z(N30) );
  AOI21D0 U75 ( .A1(n38), .A2(n42), .B(n44), .ZN(N31) );
  NR2D0 U76 ( .A1(n36), .A2(n35), .ZN(N153) );
  NR2D0 U77 ( .A1(n36), .A2(n30), .ZN(N152) );
  NR2D0 U78 ( .A1(n33), .A2(n47), .ZN(N157) );
  NR2D0 U79 ( .A1(n33), .A2(n34), .ZN(N155) );
  NR2D0 U80 ( .A1(n29), .A2(n34), .ZN(N154) );
  AOI21D0 U81 ( .A1(n31), .A2(n26), .B(n49), .ZN(N42) );
  AOI22D0 U82 ( .A1(wr_ptr[0]), .A2(wr_ptr[1]), .B1(n28), .B2(N39), .ZN(N40)
         );
  INVD0 U83 ( .I(wr_ptr[0]), .ZN(N39) );
  NR2D2 U84 ( .A1(n40), .A2(n39), .ZN(o_full) );
  AOI22D0 U85 ( .A1(rd_ptr[1]), .A2(n28), .B1(rd_ptr[2]), .B2(n48), .ZN(n23)
         );
  INVD0 U86 ( .I(rd_ptr[1]), .ZN(n37) );
  CKND2D0 U87 ( .A1(wr_ptr[3]), .A2(n32), .ZN(n33) );
  NR2D0 U88 ( .A1(n35), .A2(n46), .ZN(N151) );
  NR2D0 U89 ( .A1(n34), .A2(n35), .ZN(N147) );
  NR2D0 U90 ( .A1(n29), .A2(n47), .ZN(N156) );
  MUX2ND0 U91 ( .I0(n50), .I1(wr_ptr[4]), .S(n45), .ZN(n40) );
  OAI221D0 U92 ( .A1(n28), .A2(rd_ptr[1]), .B1(n48), .B2(rd_ptr[2]), .C(n23), 
        .ZN(n24) );
  AOI221D0 U93 ( .A1(wr_ptr[0]), .A2(N28), .B1(N39), .B2(rd_ptr[0]), .C(n24), 
        .ZN(n25) );
  OAI221D0 U94 ( .A1(wr_ptr[3]), .A2(n38), .B1(n31), .B2(rd_ptr[3]), .C(n25), 
        .ZN(n39) );
  INVD0 U95 ( .I(reset), .ZN(n9) );
  INVD0 U96 ( .I(wr), .ZN(n41) );
  NR3D0 U97 ( .A1(wr_ptr[0]), .A2(reset), .A3(n41), .ZN(n27) );
  NR3D0 U98 ( .A1(reset), .A2(N39), .A3(n41), .ZN(n32) );
  INR2D2 U99 ( .A1(n40), .B1(n39), .ZN(o_empty) );
  INR2D1 U100 ( .A1(rd), .B1(o_empty), .ZN(N33) );
  MUX2ND0 U101 ( .I0(n45), .I1(rd_ptr[4]), .S(n44), .ZN(N32) );
  OAI221D0 U102 ( .A1(wr_ptr[0]), .A2(n48), .B1(N39), .B2(n47), .C(n46), .ZN(
        N41) );
  MUX2ND0 U103 ( .I0(n50), .I1(wr_ptr[4]), .S(n49), .ZN(N43) );
endmodule

