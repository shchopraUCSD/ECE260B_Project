/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : K-2015.06-SP2
// Date      : Sat Mar 15 21:09:05 2025
/////////////////////////////////////////////////////////////


module fifo_mux_2_1_bw4_simd1_7 ( in0, in1, sel, out );
  input [3:0] in0;
  input [3:0] in1;
  output [3:0] out;
  input sel;


  MUX2D0 U1 ( .I0(in0[2]), .I1(in1[2]), .S(sel), .Z(out[2]) );
  MUX2D0 U2 ( .I0(in0[1]), .I1(in1[1]), .S(sel), .Z(out[1]) );
  MUX2D0 U3 ( .I0(in0[0]), .I1(in1[0]), .S(sel), .Z(out[0]) );
  MUX2D0 U4 ( .I0(in0[3]), .I1(in1[3]), .S(sel), .Z(out[3]) );
endmodule


module fifo_mux_2_1_bw4_simd1_8 ( in0, in1, sel, out );
  input [3:0] in0;
  input [3:0] in1;
  output [3:0] out;
  input sel;


  MUX2D0 U1 ( .I0(in0[2]), .I1(in1[2]), .S(sel), .Z(out[2]) );
  MUX2D0 U2 ( .I0(in0[1]), .I1(in1[1]), .S(sel), .Z(out[1]) );
  MUX2D0 U3 ( .I0(in0[0]), .I1(in1[0]), .S(sel), .Z(out[0]) );
  MUX2D0 U4 ( .I0(in0[3]), .I1(in1[3]), .S(sel), .Z(out[3]) );
endmodule


module fifo_mux_2_1_bw4_simd1_9 ( in0, in1, sel, out );
  input [3:0] in0;
  input [3:0] in1;
  output [3:0] out;
  input sel;


  MUX2D0 U1 ( .I0(in0[2]), .I1(in1[2]), .S(sel), .Z(out[2]) );
  MUX2D0 U2 ( .I0(in0[1]), .I1(in1[1]), .S(sel), .Z(out[1]) );
  MUX2D0 U3 ( .I0(in0[0]), .I1(in1[0]), .S(sel), .Z(out[0]) );
  MUX2D0 U4 ( .I0(in0[3]), .I1(in1[3]), .S(sel), .Z(out[3]) );
endmodule


module fifo_mux_2_1_bw4_simd1_10 ( in0, in1, sel, out );
  input [3:0] in0;
  input [3:0] in1;
  output [3:0] out;
  input sel;


  MUX2D0 U1 ( .I0(in0[2]), .I1(in1[2]), .S(sel), .Z(out[2]) );
  MUX2D0 U2 ( .I0(in0[1]), .I1(in1[1]), .S(sel), .Z(out[1]) );
  MUX2D0 U3 ( .I0(in0[0]), .I1(in1[0]), .S(sel), .Z(out[0]) );
  MUX2D0 U4 ( .I0(in0[3]), .I1(in1[3]), .S(sel), .Z(out[3]) );
endmodule


module fifo_mux_2_1_bw4_simd1_11 ( in0, in1, sel, out );
  input [3:0] in0;
  input [3:0] in1;
  output [3:0] out;
  input sel;


  MUX2D0 U1 ( .I0(in0[2]), .I1(in1[2]), .S(sel), .Z(out[2]) );
  MUX2D0 U2 ( .I0(in0[1]), .I1(in1[1]), .S(sel), .Z(out[1]) );
  MUX2D0 U3 ( .I0(in0[0]), .I1(in1[0]), .S(sel), .Z(out[0]) );
  MUX2D0 U4 ( .I0(in0[3]), .I1(in1[3]), .S(sel), .Z(out[3]) );
endmodule


module fifo_mux_2_1_bw4_simd1_12 ( in0, in1, sel, out );
  input [3:0] in0;
  input [3:0] in1;
  output [3:0] out;
  input sel;


  MUX2D0 U1 ( .I0(in0[2]), .I1(in1[2]), .S(sel), .Z(out[2]) );
  MUX2D0 U2 ( .I0(in0[1]), .I1(in1[1]), .S(sel), .Z(out[1]) );
  MUX2D0 U3 ( .I0(in0[0]), .I1(in1[0]), .S(sel), .Z(out[0]) );
  MUX2D0 U4 ( .I0(in0[3]), .I1(in1[3]), .S(sel), .Z(out[3]) );
endmodule


module fifo_mux_2_1_bw4_simd1_13 ( in0, in1, sel, out );
  input [3:0] in0;
  input [3:0] in1;
  output [3:0] out;
  input sel;


  MUX2D0 U1 ( .I0(in0[2]), .I1(in1[2]), .S(sel), .Z(out[2]) );
  MUX2D0 U2 ( .I0(in0[1]), .I1(in1[1]), .S(sel), .Z(out[1]) );
  MUX2D0 U3 ( .I0(in0[0]), .I1(in1[0]), .S(sel), .Z(out[0]) );
  MUX2D0 U4 ( .I0(in0[3]), .I1(in1[3]), .S(sel), .Z(out[3]) );
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


  CKMUX2D1 U1 ( .I0(in0[2]), .I1(in1[2]), .S(sel), .Z(out[2]) );
  CKMUX2D1 U2 ( .I0(in0[1]), .I1(in1[1]), .S(sel), .Z(out[1]) );
  CKMUX2D1 U3 ( .I0(in0[3]), .I1(in1[3]), .S(sel), .Z(out[3]) );
  CKMUX2D1 U4 ( .I0(in0[0]), .I1(in1[0]), .S(sel), .Z(out[0]) );
endmodule


module fifo_mux_2_1_bw4_simd1_0 ( in0, in1, sel, out );
  input [3:0] in0;
  input [3:0] in1;
  output [3:0] out;
  input sel;


  MUX2D0 U1 ( .I0(in0[2]), .I1(in1[2]), .S(sel), .Z(out[2]) );
  MUX2D0 U2 ( .I0(in0[1]), .I1(in1[1]), .S(sel), .Z(out[1]) );
  MUX2D0 U3 ( .I0(in0[0]), .I1(in1[0]), .S(sel), .Z(out[0]) );
  MUX2D0 U4 ( .I0(in0[3]), .I1(in1[3]), .S(sel), .Z(out[3]) );
endmodule


module fifo_mux_2_1_bw4_simd1_1 ( in0, in1, sel, out );
  input [3:0] in0;
  input [3:0] in1;
  output [3:0] out;
  input sel;


  MUX2D0 U1 ( .I0(in0[2]), .I1(in1[2]), .S(sel), .Z(out[2]) );
  MUX2D0 U2 ( .I0(in0[1]), .I1(in1[1]), .S(sel), .Z(out[1]) );
  MUX2D0 U3 ( .I0(in0[0]), .I1(in1[0]), .S(sel), .Z(out[0]) );
  MUX2D0 U4 ( .I0(in0[3]), .I1(in1[3]), .S(sel), .Z(out[3]) );
endmodule


module fifo_mux_2_1_bw4_simd1_2 ( in0, in1, sel, out );
  input [3:0] in0;
  input [3:0] in1;
  output [3:0] out;
  input sel;


  MUX2D0 U1 ( .I0(in0[2]), .I1(in1[2]), .S(sel), .Z(out[2]) );
  MUX2D0 U2 ( .I0(in0[1]), .I1(in1[1]), .S(sel), .Z(out[1]) );
  MUX2D0 U3 ( .I0(in0[0]), .I1(in1[0]), .S(sel), .Z(out[0]) );
  MUX2D0 U4 ( .I0(in0[3]), .I1(in1[3]), .S(sel), .Z(out[3]) );
endmodule


module fifo_mux_2_1_bw4_simd1_3 ( in0, in1, sel, out );
  input [3:0] in0;
  input [3:0] in1;
  output [3:0] out;
  input sel;


  MUX2D0 U1 ( .I0(in0[2]), .I1(in1[2]), .S(sel), .Z(out[2]) );
  MUX2D0 U2 ( .I0(in0[1]), .I1(in1[1]), .S(sel), .Z(out[1]) );
  MUX2D0 U3 ( .I0(in0[0]), .I1(in1[0]), .S(sel), .Z(out[0]) );
  MUX2D0 U4 ( .I0(in0[3]), .I1(in1[3]), .S(sel), .Z(out[3]) );
endmodule


module fifo_mux_2_1_bw4_simd1_4 ( in0, in1, sel, out );
  input [3:0] in0;
  input [3:0] in1;
  output [3:0] out;
  input sel;


  MUX2D0 U1 ( .I0(in0[2]), .I1(in1[2]), .S(sel), .Z(out[2]) );
  MUX2D0 U2 ( .I0(in0[1]), .I1(in1[1]), .S(sel), .Z(out[1]) );
  MUX2D0 U3 ( .I0(in0[0]), .I1(in1[0]), .S(sel), .Z(out[0]) );
  MUX2D0 U4 ( .I0(in0[3]), .I1(in1[3]), .S(sel), .Z(out[3]) );
endmodule


module fifo_mux_2_1_bw4_simd1_5 ( in0, in1, sel, out );
  input [3:0] in0;
  input [3:0] in1;
  output [3:0] out;
  input sel;


  MUX2D0 U1 ( .I0(in0[2]), .I1(in1[2]), .S(sel), .Z(out[2]) );
  MUX2D0 U2 ( .I0(in0[1]), .I1(in1[1]), .S(sel), .Z(out[1]) );
  MUX2D0 U3 ( .I0(in0[0]), .I1(in1[0]), .S(sel), .Z(out[0]) );
  MUX2D0 U4 ( .I0(in0[3]), .I1(in1[3]), .S(sel), .Z(out[3]) );
endmodule


module fifo_mux_2_1_bw4_simd1_6 ( in0, in1, sel, out );
  input [3:0] in0;
  input [3:0] in1;
  output [3:0] out;
  input sel;


  MUX2D0 U1 ( .I0(in0[2]), .I1(in1[2]), .S(sel), .Z(out[2]) );
  MUX2D0 U2 ( .I0(in0[1]), .I1(in1[1]), .S(sel), .Z(out[1]) );
  MUX2D0 U3 ( .I0(in0[0]), .I1(in1[0]), .S(sel), .Z(out[0]) );
  MUX2D0 U4 ( .I0(in0[3]), .I1(in1[3]), .S(sel), .Z(out[3]) );
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
  wire   N33, N34, N35, N36, N37, N38, N148, N149, N150, N151, N152, N153,
         N154, N155, N156, N157, N158, N159, N160, N161, N162, N163, N164,
         N165, N166, N167, N168, N169, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60;
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
  EDFQD1 wr_ptr_reg_0_ ( .D(N148), .E(N153), .CP(clk), .Q(wr_ptr[0]) );
  EDFQD1 rd_ptr_reg_0_ ( .D(N34), .E(N33), .CP(clk), .Q(rd_ptr[0]) );
  EDFQD1 rd_ptr_reg_4_ ( .D(N38), .E(N33), .CP(clk), .Q(rd_ptr[4]) );
  EDFQD1 wr_ptr_reg_4_ ( .D(N152), .E(N153), .CP(clk), .Q(wr_ptr[4]) );
  EDFQD1 wr_ptr_reg_3_ ( .D(N151), .E(N153), .CP(clk), .Q(wr_ptr[3]) );
  EDFQD1 wr_ptr_reg_2_ ( .D(N150), .E(N153), .CP(clk), .Q(wr_ptr[2]) );
  EDFQD1 wr_ptr_reg_1_ ( .D(N149), .E(N153), .CP(clk), .Q(wr_ptr[1]) );
  EDFQD1 q6_reg_0_ ( .D(in[0]), .E(N163), .CP(clk), .Q(q6[0]) );
  EDFQD1 q6_reg_3_ ( .D(in[3]), .E(N163), .CP(clk), .Q(q6[3]) );
  EDFQD1 q6_reg_2_ ( .D(in[2]), .E(N163), .CP(clk), .Q(q6[2]) );
  EDFQD1 q6_reg_1_ ( .D(in[1]), .E(N163), .CP(clk), .Q(q6[1]) );
  EDFQD1 q7_reg_0_ ( .D(in[0]), .E(N164), .CP(clk), .Q(q7[0]) );
  EDFQD1 q7_reg_3_ ( .D(in[3]), .E(N164), .CP(clk), .Q(q7[3]) );
  EDFQD1 q7_reg_2_ ( .D(in[2]), .E(N164), .CP(clk), .Q(q7[2]) );
  EDFQD1 q7_reg_1_ ( .D(in[1]), .E(N164), .CP(clk), .Q(q7[1]) );
  EDFQD1 q10_reg_0_ ( .D(in[0]), .E(N167), .CP(clk), .Q(q10[0]) );
  EDFQD1 q10_reg_3_ ( .D(in[3]), .E(N167), .CP(clk), .Q(q10[3]) );
  EDFQD1 q10_reg_2_ ( .D(in[2]), .E(N167), .CP(clk), .Q(q10[2]) );
  EDFQD1 q10_reg_1_ ( .D(in[1]), .E(N167), .CP(clk), .Q(q10[1]) );
  EDFQD1 q11_reg_0_ ( .D(in[0]), .E(N168), .CP(clk), .Q(q11[0]) );
  EDFQD1 q11_reg_3_ ( .D(in[3]), .E(N168), .CP(clk), .Q(q11[3]) );
  EDFQD1 q11_reg_2_ ( .D(in[2]), .E(N168), .CP(clk), .Q(q11[2]) );
  EDFQD1 q11_reg_1_ ( .D(in[1]), .E(N168), .CP(clk), .Q(q11[1]) );
  EDFQD1 q8_reg_0_ ( .D(in[0]), .E(N165), .CP(clk), .Q(q8[0]) );
  EDFQD1 q8_reg_3_ ( .D(in[3]), .E(N165), .CP(clk), .Q(q8[3]) );
  EDFQD1 q8_reg_2_ ( .D(in[2]), .E(N165), .CP(clk), .Q(q8[2]) );
  EDFQD1 q8_reg_1_ ( .D(in[1]), .E(N165), .CP(clk), .Q(q8[1]) );
  EDFQD1 q9_reg_0_ ( .D(in[0]), .E(N166), .CP(clk), .Q(q9[0]) );
  EDFQD1 q9_reg_3_ ( .D(in[3]), .E(N166), .CP(clk), .Q(q9[3]) );
  EDFQD1 q9_reg_2_ ( .D(in[2]), .E(N166), .CP(clk), .Q(q9[2]) );
  EDFQD1 q9_reg_1_ ( .D(in[1]), .E(N166), .CP(clk), .Q(q9[1]) );
  EDFQD1 rd_ptr_reg_3_ ( .D(N37), .E(N33), .CP(clk), .Q(rd_ptr[3]) );
  EDFQD1 rd_ptr_reg_2_ ( .D(N36), .E(N33), .CP(clk), .Q(rd_ptr[2]) );
  EDFQD1 rd_ptr_reg_1_ ( .D(N35), .E(N33), .CP(clk), .Q(rd_ptr[1]) );
  EDFQD1 q12_reg_3_ ( .D(in[3]), .E(N169), .CP(clk), .Q(q12[3]) );
  EDFQD1 q12_reg_2_ ( .D(in[2]), .E(N169), .CP(clk), .Q(q12[2]) );
  EDFQD1 q12_reg_1_ ( .D(in[1]), .E(N169), .CP(clk), .Q(q12[1]) );
  EDFQD1 q12_reg_0_ ( .D(in[0]), .E(N169), .CP(clk), .Q(q12[0]) );
  EDFQD1 q13_reg_3_ ( .D(in[3]), .E(N154), .CP(clk), .Q(q13[3]) );
  EDFQD1 q13_reg_2_ ( .D(in[2]), .E(N154), .CP(clk), .Q(q13[2]) );
  EDFQD1 q13_reg_1_ ( .D(in[1]), .E(N154), .CP(clk), .Q(q13[1]) );
  EDFQD1 q13_reg_0_ ( .D(in[0]), .E(N154), .CP(clk), .Q(q13[0]) );
  EDFQD1 q14_reg_3_ ( .D(in[3]), .E(N155), .CP(clk), .Q(q14[3]) );
  EDFQD1 q14_reg_2_ ( .D(in[2]), .E(N155), .CP(clk), .Q(q14[2]) );
  EDFQD1 q14_reg_1_ ( .D(in[1]), .E(N155), .CP(clk), .Q(q14[1]) );
  EDFQD1 q14_reg_0_ ( .D(in[0]), .E(N155), .CP(clk), .Q(q14[0]) );
  EDFQD1 q15_reg_3_ ( .D(in[3]), .E(N156), .CP(clk), .Q(q15[3]) );
  EDFQD1 q15_reg_2_ ( .D(in[2]), .E(N156), .CP(clk), .Q(q15[2]) );
  EDFQD1 q15_reg_1_ ( .D(in[1]), .E(N156), .CP(clk), .Q(q15[1]) );
  EDFQD1 q15_reg_0_ ( .D(in[0]), .E(N156), .CP(clk), .Q(q15[0]) );
  EDFQD1 q0_reg_3_ ( .D(in[3]), .E(N157), .CP(clk), .Q(q0[3]) );
  EDFQD1 q0_reg_2_ ( .D(in[2]), .E(N157), .CP(clk), .Q(q0[2]) );
  EDFQD1 q0_reg_1_ ( .D(in[1]), .E(N157), .CP(clk), .Q(q0[1]) );
  EDFQD1 q0_reg_0_ ( .D(in[0]), .E(N157), .CP(clk), .Q(q0[0]) );
  EDFQD1 q1_reg_3_ ( .D(in[3]), .E(N158), .CP(clk), .Q(q1[3]) );
  EDFQD1 q1_reg_2_ ( .D(in[2]), .E(N158), .CP(clk), .Q(q1[2]) );
  EDFQD1 q1_reg_1_ ( .D(in[1]), .E(N158), .CP(clk), .Q(q1[1]) );
  EDFQD1 q1_reg_0_ ( .D(in[0]), .E(N158), .CP(clk), .Q(q1[0]) );
  EDFQD1 q2_reg_3_ ( .D(in[3]), .E(N159), .CP(clk), .Q(q2[3]) );
  EDFQD1 q2_reg_2_ ( .D(in[2]), .E(N159), .CP(clk), .Q(q2[2]) );
  EDFQD1 q2_reg_1_ ( .D(in[1]), .E(N159), .CP(clk), .Q(q2[1]) );
  EDFQD1 q2_reg_0_ ( .D(in[0]), .E(N159), .CP(clk), .Q(q2[0]) );
  EDFQD1 q3_reg_3_ ( .D(in[3]), .E(N160), .CP(clk), .Q(q3[3]) );
  EDFQD1 q3_reg_2_ ( .D(in[2]), .E(N160), .CP(clk), .Q(q3[2]) );
  EDFQD1 q3_reg_1_ ( .D(in[1]), .E(N160), .CP(clk), .Q(q3[1]) );
  EDFQD1 q3_reg_0_ ( .D(in[0]), .E(N160), .CP(clk), .Q(q3[0]) );
  EDFQD1 q4_reg_3_ ( .D(in[3]), .E(N161), .CP(clk), .Q(q4[3]) );
  EDFQD1 q4_reg_2_ ( .D(in[2]), .E(N161), .CP(clk), .Q(q4[2]) );
  EDFQD1 q4_reg_1_ ( .D(in[1]), .E(N161), .CP(clk), .Q(q4[1]) );
  EDFQD1 q4_reg_0_ ( .D(in[0]), .E(N161), .CP(clk), .Q(q4[0]) );
  EDFQD1 q5_reg_3_ ( .D(in[3]), .E(N162), .CP(clk), .Q(q5[3]) );
  EDFQD1 q5_reg_2_ ( .D(in[2]), .E(N162), .CP(clk), .Q(q5[2]) );
  EDFQD1 q5_reg_1_ ( .D(in[1]), .E(N162), .CP(clk), .Q(q5[1]) );
  EDFQD1 q5_reg_0_ ( .D(in[0]), .E(N162), .CP(clk), .Q(q5[0]) );
  NR2XD1 U56 ( .A1(n44), .A2(n43), .ZN(o_full) );
  INR2XD1 U57 ( .A1(n44), .B1(n43), .ZN(o_empty) );
  INVD0 U58 ( .I(wr_ptr[3]), .ZN(n40) );
  IND3D0 U59 ( .A1(o_empty), .B1(rd), .B2(n45), .ZN(n58) );
  INVD0 U60 ( .I(wr_ptr[1]), .ZN(n47) );
  INVD0 U61 ( .I(wr_ptr[0]), .ZN(n48) );
  NR2D0 U62 ( .A1(n48), .A2(n47), .ZN(n25) );
  NR2D0 U63 ( .A1(wr_ptr[2]), .A2(n25), .ZN(n24) );
  AOI211D0 U64 ( .A1(wr_ptr[2]), .A2(n25), .B(reset), .C(n24), .ZN(N150) );
  CKND2D0 U65 ( .A1(wr_ptr[2]), .A2(wr_ptr[1]), .ZN(n31) );
  IND2D0 U66 ( .A1(n31), .B1(wr_ptr[0]), .ZN(n26) );
  NR2D0 U67 ( .A1(n40), .A2(n26), .ZN(n51) );
  AOI211D0 U68 ( .A1(n40), .A2(n26), .B(reset), .C(n51), .ZN(N151) );
  INVD0 U69 ( .I(wr), .ZN(n46) );
  NR3D0 U70 ( .A1(reset), .A2(n46), .A3(n48), .ZN(n28) );
  CKND2D0 U71 ( .A1(wr_ptr[3]), .A2(n28), .ZN(n27) );
  INVD0 U72 ( .I(wr_ptr[2]), .ZN(n37) );
  CKND2D0 U73 ( .A1(n37), .A2(n47), .ZN(n32) );
  NR2D0 U74 ( .A1(n27), .A2(n32), .ZN(N166) );
  CKND2D0 U75 ( .A1(wr_ptr[1]), .A2(n37), .ZN(n33) );
  NR2D0 U76 ( .A1(n33), .A2(n27), .ZN(N168) );
  NR2D0 U77 ( .A1(n31), .A2(n27), .ZN(N156) );
  CKND2D0 U78 ( .A1(wr_ptr[2]), .A2(n47), .ZN(n35) );
  NR2D0 U79 ( .A1(n35), .A2(n27), .ZN(N154) );
  CKND2D0 U80 ( .A1(n28), .A2(n40), .ZN(n29) );
  NR2D0 U81 ( .A1(n31), .A2(n29), .ZN(N164) );
  NR2D0 U82 ( .A1(n35), .A2(n29), .ZN(N162) );
  NR2D0 U83 ( .A1(n32), .A2(n29), .ZN(N158) );
  NR2D0 U84 ( .A1(n33), .A2(n29), .ZN(N160) );
  NR2D0 U85 ( .A1(reset), .A2(wr_ptr[0]), .ZN(N148) );
  ND3D0 U86 ( .A1(wr), .A2(wr_ptr[3]), .A3(N148), .ZN(n30) );
  NR2D0 U87 ( .A1(n30), .A2(n32), .ZN(N165) );
  NR2D0 U88 ( .A1(n35), .A2(n30), .ZN(N169) );
  NR2D0 U89 ( .A1(n31), .A2(n30), .ZN(N155) );
  NR2D0 U90 ( .A1(n33), .A2(n30), .ZN(N167) );
  ND3D0 U91 ( .A1(wr), .A2(N148), .A3(n40), .ZN(n34) );
  NR2D0 U92 ( .A1(n31), .A2(n34), .ZN(N163) );
  NR2D0 U93 ( .A1(n32), .A2(n34), .ZN(N157) );
  NR2D0 U94 ( .A1(n33), .A2(n34), .ZN(N159) );
  NR2D0 U95 ( .A1(n35), .A2(n34), .ZN(N161) );
  INVD0 U96 ( .I(wr_ptr[4]), .ZN(n50) );
  INVD0 U97 ( .I(rd_ptr[4]), .ZN(n56) );
  MUX2ND0 U98 ( .I0(n50), .I1(wr_ptr[4]), .S(n56), .ZN(n44) );
  INVD0 U99 ( .I(rd_ptr[3]), .ZN(n53) );
  INVD0 U100 ( .I(rd_ptr[0]), .ZN(n60) );
  AOI22D0 U101 ( .A1(rd_ptr[1]), .A2(n47), .B1(rd_ptr[2]), .B2(n37), .ZN(n36)
         );
  OAI221D0 U102 ( .A1(n47), .A2(rd_ptr[1]), .B1(n37), .B2(rd_ptr[2]), .C(n36), 
        .ZN(n38) );
  AOI221D0 U103 ( .A1(wr_ptr[0]), .A2(n60), .B1(n48), .B2(rd_ptr[0]), .C(n38), 
        .ZN(n39) );
  OAI221D0 U104 ( .A1(wr_ptr[3]), .A2(n53), .B1(n40), .B2(rd_ptr[3]), .C(n39), 
        .ZN(n43) );
  INVD0 U105 ( .I(reset), .ZN(n45) );
  NR2D0 U106 ( .A1(rd_ptr[0]), .A2(n58), .ZN(N34) );
  INVD0 U107 ( .I(rd_ptr[2]), .ZN(n42) );
  CKND2D0 U108 ( .A1(rd_ptr[0]), .A2(rd_ptr[1]), .ZN(n41) );
  NR2D0 U109 ( .A1(n42), .A2(n41), .ZN(n54) );
  AOI211D0 U110 ( .A1(n42), .A2(n41), .B(n54), .C(n58), .ZN(N36) );
  CKND2D0 U111 ( .A1(n45), .A2(n58), .ZN(N33) );
  OAI21D0 U112 ( .A1(o_full), .A2(n46), .B(n45), .ZN(N153) );
  AOI221D0 U113 ( .A1(wr_ptr[0]), .A2(wr_ptr[1]), .B1(n48), .B2(n47), .C(reset), .ZN(N149) );
  INVD0 U114 ( .I(n51), .ZN(n49) );
  AOI221D0 U115 ( .A1(wr_ptr[4]), .A2(n51), .B1(n50), .B2(n49), .C(reset), 
        .ZN(N152) );
  INVD0 U116 ( .I(n54), .ZN(n52) );
  AOI221D0 U117 ( .A1(rd_ptr[3]), .A2(n54), .B1(n53), .B2(n52), .C(n58), .ZN(
        N37) );
  CKND2D0 U118 ( .A1(rd_ptr[3]), .A2(n54), .ZN(n55) );
  INVD0 U119 ( .I(n55), .ZN(n57) );
  AOI221D0 U120 ( .A1(rd_ptr[4]), .A2(n57), .B1(n56), .B2(n55), .C(n58), .ZN(
        N38) );
  INVD0 U121 ( .I(rd_ptr[1]), .ZN(n59) );
  AOI221D0 U122 ( .A1(rd_ptr[0]), .A2(rd_ptr[1]), .B1(n60), .B2(n59), .C(n58), 
        .ZN(N35) );
endmodule

