/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : K-2015.06-SP2
// Date      : Thu Mar 20 17:30:25 2025
/////////////////////////////////////////////////////////////


module async_fifo_1 ( rd_clk, wr_clk, reset, empty, full, rd_data, fifo_rd, 
        wr_data, fifo_wr );
  output [23:0] rd_data;
  input [23:0] wr_data;
  input rd_clk, wr_clk, reset, fifo_rd, fifo_wr;
  output empty, full;
  wire   N22, N33, N34, n2, n3, n151, n178, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n257, n258, n259, n260,
         n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271,
         n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282,
         n283, n284, n285, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n179, n180, n181, n182, n183, n184, n185, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247,
         n248, n249, n250, n251, n252, n253, n254, n255, n256, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295;
  wire   [2:0] wr_ptr;
  wire   [3:1] wr_ptr_gray;
  wire   [2:0] rd_ptr;
  wire   [3:0] rd_ptr_gray;
  wire   [191:0] mem;
  wire   [3:0] rd_ptr_sync;
  wire   [3:0] rd_ptr_meta;
  wire   [3:0] wr_ptr_sync;
  wire   [3:0] wr_ptr_meta;
  tri   rd_clk;
  tri   wr_clk;
  tri   reset;
  tri   [23:0] rd_data;
  tri   fifo_rd;
  tri   [23:0] wr_data;
  tri   fifo_wr;

  DFCNQD1 wr_ptr_sync_reg_0_ ( .D(wr_ptr_meta[0]), .CP(rd_clk), .CDN(n295), 
        .Q(wr_ptr_sync[0]) );
  DFCND1 rd_ptr_reg_0_ ( .D(n285), .CP(rd_clk), .CDN(n295), .Q(rd_ptr[0]), 
        .QN(n236) );
  DFCND1 rd_ptr_reg_1_ ( .D(n284), .CP(rd_clk), .CDN(n295), .Q(n235), .QN(n178) );
  DFCNQD1 rd_ptr_meta_reg_0_ ( .D(rd_ptr_gray[0]), .CP(wr_clk), .CDN(n295), 
        .Q(rd_ptr_meta[0]) );
  DFCNQD1 rd_ptr_sync_reg_0_ ( .D(rd_ptr_meta[0]), .CP(wr_clk), .CDN(n295), 
        .Q(rd_ptr_sync[0]) );
  DFCNQD1 rd_ptr_reg_3_ ( .D(n282), .CP(rd_clk), .CDN(n295), .Q(rd_ptr_gray[3]) );
  DFCNQD1 rd_ptr_meta_reg_3_ ( .D(rd_ptr_gray[3]), .CP(wr_clk), .CDN(n295), 
        .Q(rd_ptr_meta[3]) );
  DFCND1 rd_ptr_sync_reg_3_ ( .D(rd_ptr_meta[3]), .CP(wr_clk), .CDN(n295), .Q(
        rd_ptr_sync[3]), .QN(n237) );
  DFCNQD1 rd_ptr_meta_reg_2_ ( .D(rd_ptr_gray[2]), .CP(wr_clk), .CDN(n295), 
        .Q(rd_ptr_meta[2]) );
  DFCNQD1 rd_ptr_sync_reg_2_ ( .D(rd_ptr_meta[2]), .CP(wr_clk), .CDN(n295), 
        .Q(rd_ptr_sync[2]) );
  DFCNQD1 rd_ptr_meta_reg_1_ ( .D(rd_ptr_gray[1]), .CP(wr_clk), .CDN(n295), 
        .Q(rd_ptr_meta[1]) );
  DFCNQD1 rd_ptr_sync_reg_1_ ( .D(rd_ptr_meta[1]), .CP(wr_clk), .CDN(n295), 
        .Q(rd_ptr_sync[1]) );
  DFCNQD1 wr_ptr_reg_1_ ( .D(n2), .CP(wr_clk), .CDN(n295), .Q(wr_ptr[1]) );
  DFCNQD1 wr_ptr_meta_reg_0_ ( .D(N33), .CP(rd_clk), .CDN(n295), .Q(
        wr_ptr_meta[0]) );
  EDFQD1 mem_reg_1__0_ ( .D(wr_data[0]), .E(n8), .CP(wr_clk), .Q(mem[24]) );
  EDFQD1 mem_reg_1__1_ ( .D(wr_data[1]), .E(n8), .CP(wr_clk), .Q(mem[25]) );
  EDFQD1 mem_reg_1__2_ ( .D(wr_data[2]), .E(n8), .CP(wr_clk), .Q(mem[26]) );
  EDFQD1 mem_reg_1__3_ ( .D(wr_data[3]), .E(n8), .CP(wr_clk), .Q(mem[27]) );
  EDFQD1 mem_reg_1__4_ ( .D(wr_data[4]), .E(n8), .CP(wr_clk), .Q(mem[28]) );
  EDFQD1 mem_reg_1__5_ ( .D(wr_data[5]), .E(n8), .CP(wr_clk), .Q(mem[29]) );
  EDFQD1 mem_reg_1__6_ ( .D(wr_data[6]), .E(n8), .CP(wr_clk), .Q(mem[30]) );
  EDFQD1 mem_reg_1__7_ ( .D(wr_data[7]), .E(n8), .CP(wr_clk), .Q(mem[31]) );
  EDFQD1 mem_reg_1__8_ ( .D(wr_data[8]), .E(n8), .CP(wr_clk), .Q(mem[32]) );
  EDFQD1 mem_reg_1__9_ ( .D(wr_data[9]), .E(n8), .CP(wr_clk), .Q(mem[33]) );
  EDFQD1 mem_reg_1__10_ ( .D(wr_data[10]), .E(n8), .CP(wr_clk), .Q(mem[34]) );
  EDFQD1 mem_reg_1__11_ ( .D(wr_data[11]), .E(n8), .CP(wr_clk), .Q(mem[35]) );
  EDFQD1 mem_reg_1__12_ ( .D(wr_data[12]), .E(n8), .CP(wr_clk), .Q(mem[36]) );
  EDFQD1 mem_reg_1__13_ ( .D(wr_data[13]), .E(n8), .CP(wr_clk), .Q(mem[37]) );
  EDFQD1 mem_reg_1__14_ ( .D(wr_data[14]), .E(n8), .CP(wr_clk), .Q(mem[38]) );
  EDFQD1 mem_reg_1__15_ ( .D(wr_data[15]), .E(n8), .CP(wr_clk), .Q(mem[39]) );
  EDFQD1 mem_reg_1__16_ ( .D(wr_data[16]), .E(n8), .CP(wr_clk), .Q(mem[40]) );
  EDFQD1 mem_reg_1__17_ ( .D(wr_data[17]), .E(n8), .CP(wr_clk), .Q(mem[41]) );
  EDFQD1 mem_reg_1__18_ ( .D(wr_data[18]), .E(n8), .CP(wr_clk), .Q(mem[42]) );
  EDFQD1 mem_reg_1__19_ ( .D(wr_data[19]), .E(n8), .CP(wr_clk), .Q(mem[43]) );
  EDFQD1 mem_reg_1__20_ ( .D(wr_data[20]), .E(n8), .CP(wr_clk), .Q(mem[44]) );
  EDFQD1 mem_reg_1__21_ ( .D(wr_data[21]), .E(n8), .CP(wr_clk), .Q(mem[45]) );
  EDFQD1 mem_reg_1__22_ ( .D(wr_data[22]), .E(n8), .CP(wr_clk), .Q(mem[46]) );
  EDFQD1 mem_reg_1__23_ ( .D(wr_data[23]), .E(n8), .CP(wr_clk), .Q(mem[47]) );
  EDFQD1 mem_reg_0__1_ ( .D(wr_data[1]), .E(n7), .CP(wr_clk), .Q(mem[1]) );
  EDFQD1 mem_reg_0__2_ ( .D(wr_data[2]), .E(n7), .CP(wr_clk), .Q(mem[2]) );
  EDFQD1 mem_reg_0__3_ ( .D(wr_data[3]), .E(n7), .CP(wr_clk), .Q(mem[3]) );
  EDFQD1 mem_reg_0__4_ ( .D(wr_data[4]), .E(n7), .CP(wr_clk), .Q(mem[4]) );
  EDFQD1 mem_reg_0__5_ ( .D(wr_data[5]), .E(n7), .CP(wr_clk), .Q(mem[5]) );
  EDFQD1 mem_reg_0__6_ ( .D(wr_data[6]), .E(n7), .CP(wr_clk), .Q(mem[6]) );
  EDFQD1 mem_reg_0__7_ ( .D(wr_data[7]), .E(n7), .CP(wr_clk), .Q(mem[7]) );
  EDFQD1 mem_reg_0__8_ ( .D(wr_data[8]), .E(n7), .CP(wr_clk), .Q(mem[8]) );
  EDFQD1 mem_reg_0__9_ ( .D(wr_data[9]), .E(n7), .CP(wr_clk), .Q(mem[9]) );
  EDFQD1 mem_reg_0__10_ ( .D(wr_data[10]), .E(n7), .CP(wr_clk), .Q(mem[10]) );
  EDFQD1 mem_reg_0__11_ ( .D(wr_data[11]), .E(n7), .CP(wr_clk), .Q(mem[11]) );
  EDFQD1 mem_reg_0__12_ ( .D(wr_data[12]), .E(n7), .CP(wr_clk), .Q(mem[12]) );
  EDFQD1 mem_reg_0__13_ ( .D(wr_data[13]), .E(n7), .CP(wr_clk), .Q(mem[13]) );
  EDFQD1 mem_reg_0__14_ ( .D(wr_data[14]), .E(n7), .CP(wr_clk), .Q(mem[14]) );
  EDFQD1 mem_reg_0__15_ ( .D(wr_data[15]), .E(n7), .CP(wr_clk), .Q(mem[15]) );
  EDFQD1 mem_reg_0__16_ ( .D(wr_data[16]), .E(n7), .CP(wr_clk), .Q(mem[16]) );
  EDFQD1 mem_reg_0__17_ ( .D(wr_data[17]), .E(n7), .CP(wr_clk), .Q(mem[17]) );
  EDFQD1 mem_reg_0__18_ ( .D(wr_data[18]), .E(n7), .CP(wr_clk), .Q(mem[18]) );
  EDFQD1 mem_reg_0__19_ ( .D(wr_data[19]), .E(n7), .CP(wr_clk), .Q(mem[19]) );
  EDFQD1 mem_reg_0__20_ ( .D(wr_data[20]), .E(n7), .CP(wr_clk), .Q(mem[20]) );
  EDFQD1 mem_reg_0__21_ ( .D(wr_data[21]), .E(n7), .CP(wr_clk), .Q(mem[21]) );
  EDFQD1 mem_reg_0__22_ ( .D(wr_data[22]), .E(n7), .CP(wr_clk), .Q(mem[22]) );
  EDFQD1 mem_reg_0__23_ ( .D(wr_data[23]), .E(n7), .CP(wr_clk), .Q(mem[23]) );
  EDFQD1 mem_reg_0__0_ ( .D(wr_data[0]), .E(n7), .CP(wr_clk), .Q(mem[0]) );
  DFQD1 mem_reg_2__0_ ( .D(n280), .CP(wr_clk), .Q(mem[48]) );
  DFQD1 mem_reg_2__1_ ( .D(n279), .CP(wr_clk), .Q(mem[49]) );
  DFQD1 mem_reg_2__2_ ( .D(n278), .CP(wr_clk), .Q(mem[50]) );
  DFQD1 mem_reg_2__3_ ( .D(n277), .CP(wr_clk), .Q(mem[51]) );
  DFQD1 mem_reg_2__4_ ( .D(n276), .CP(wr_clk), .Q(mem[52]) );
  DFQD1 mem_reg_2__5_ ( .D(n275), .CP(wr_clk), .Q(mem[53]) );
  DFQD1 mem_reg_2__6_ ( .D(n274), .CP(wr_clk), .Q(mem[54]) );
  DFQD1 mem_reg_2__7_ ( .D(n273), .CP(wr_clk), .Q(mem[55]) );
  DFQD1 mem_reg_2__8_ ( .D(n272), .CP(wr_clk), .Q(mem[56]) );
  DFQD1 mem_reg_2__9_ ( .D(n271), .CP(wr_clk), .Q(mem[57]) );
  DFQD1 mem_reg_2__10_ ( .D(n270), .CP(wr_clk), .Q(mem[58]) );
  DFQD1 mem_reg_2__11_ ( .D(n269), .CP(wr_clk), .Q(mem[59]) );
  DFQD1 mem_reg_2__12_ ( .D(n268), .CP(wr_clk), .Q(mem[60]) );
  DFQD1 mem_reg_2__13_ ( .D(n267), .CP(wr_clk), .Q(mem[61]) );
  DFQD1 mem_reg_2__14_ ( .D(n266), .CP(wr_clk), .Q(mem[62]) );
  DFQD1 mem_reg_2__15_ ( .D(n265), .CP(wr_clk), .Q(mem[63]) );
  DFQD1 mem_reg_2__16_ ( .D(n264), .CP(wr_clk), .Q(mem[64]) );
  DFQD1 mem_reg_2__17_ ( .D(n263), .CP(wr_clk), .Q(mem[65]) );
  DFQD1 mem_reg_2__18_ ( .D(n262), .CP(wr_clk), .Q(mem[66]) );
  DFQD1 mem_reg_2__19_ ( .D(n261), .CP(wr_clk), .Q(mem[67]) );
  DFQD1 mem_reg_2__20_ ( .D(n260), .CP(wr_clk), .Q(mem[68]) );
  DFQD1 mem_reg_2__21_ ( .D(n259), .CP(wr_clk), .Q(mem[69]) );
  DFQD1 mem_reg_2__22_ ( .D(n258), .CP(wr_clk), .Q(mem[70]) );
  EDFQD1 mem_reg_2__23_ ( .D(wr_data[23]), .E(n293), .CP(wr_clk), .Q(mem[71])
         );
  DFCNQD1 wr_ptr_meta_reg_1_ ( .D(wr_ptr_gray[1]), .CP(rd_clk), .CDN(n295), 
        .Q(wr_ptr_meta[1]) );
  DFCNQD1 wr_ptr_sync_reg_1_ ( .D(wr_ptr_meta[1]), .CP(rd_clk), .CDN(n295), 
        .Q(wr_ptr_sync[1]) );
  EDFQD1 mem_reg_3__21_ ( .D(wr_data[21]), .E(n294), .CP(wr_clk), .Q(mem[93])
         );
  EDFQD1 mem_reg_3__22_ ( .D(wr_data[22]), .E(n294), .CP(wr_clk), .Q(mem[94])
         );
  EDFQD1 mem_reg_3__23_ ( .D(wr_data[23]), .E(n294), .CP(wr_clk), .Q(mem[95])
         );
  EDFQD1 mem_reg_3__0_ ( .D(wr_data[0]), .E(n294), .CP(wr_clk), .Q(mem[72]) );
  EDFQD1 mem_reg_3__1_ ( .D(wr_data[1]), .E(n294), .CP(wr_clk), .Q(mem[73]) );
  EDFQD1 mem_reg_3__2_ ( .D(wr_data[2]), .E(n294), .CP(wr_clk), .Q(mem[74]) );
  EDFQD1 mem_reg_3__3_ ( .D(wr_data[3]), .E(n294), .CP(wr_clk), .Q(mem[75]) );
  EDFQD1 mem_reg_3__4_ ( .D(wr_data[4]), .E(n294), .CP(wr_clk), .Q(mem[76]) );
  EDFQD1 mem_reg_3__5_ ( .D(wr_data[5]), .E(n294), .CP(wr_clk), .Q(mem[77]) );
  EDFQD1 mem_reg_3__6_ ( .D(wr_data[6]), .E(n294), .CP(wr_clk), .Q(mem[78]) );
  EDFQD1 mem_reg_3__7_ ( .D(wr_data[7]), .E(n294), .CP(wr_clk), .Q(mem[79]) );
  EDFQD1 mem_reg_3__8_ ( .D(wr_data[8]), .E(n294), .CP(wr_clk), .Q(mem[80]) );
  EDFQD1 mem_reg_3__9_ ( .D(wr_data[9]), .E(n294), .CP(wr_clk), .Q(mem[81]) );
  EDFQD1 mem_reg_3__10_ ( .D(wr_data[10]), .E(n294), .CP(wr_clk), .Q(mem[82])
         );
  EDFQD1 mem_reg_3__11_ ( .D(wr_data[11]), .E(n294), .CP(wr_clk), .Q(mem[83])
         );
  EDFQD1 mem_reg_3__12_ ( .D(wr_data[12]), .E(n294), .CP(wr_clk), .Q(mem[84])
         );
  EDFQD1 mem_reg_3__13_ ( .D(wr_data[13]), .E(n294), .CP(wr_clk), .Q(mem[85])
         );
  EDFQD1 mem_reg_3__14_ ( .D(wr_data[14]), .E(n294), .CP(wr_clk), .Q(mem[86])
         );
  EDFQD1 mem_reg_3__15_ ( .D(wr_data[15]), .E(n294), .CP(wr_clk), .Q(mem[87])
         );
  EDFQD1 mem_reg_3__16_ ( .D(wr_data[16]), .E(n294), .CP(wr_clk), .Q(mem[88])
         );
  EDFQD1 mem_reg_3__17_ ( .D(wr_data[17]), .E(n294), .CP(wr_clk), .Q(mem[89])
         );
  EDFQD1 mem_reg_3__18_ ( .D(wr_data[18]), .E(n294), .CP(wr_clk), .Q(mem[90])
         );
  EDFQD1 mem_reg_3__19_ ( .D(wr_data[19]), .E(n294), .CP(wr_clk), .Q(mem[91])
         );
  EDFQD1 mem_reg_3__20_ ( .D(wr_data[20]), .E(n294), .CP(wr_clk), .Q(mem[92])
         );
  DFQD1 mem_reg_5__0_ ( .D(n10), .CP(wr_clk), .Q(mem[120]) );
  DFQD1 mem_reg_5__1_ ( .D(n11), .CP(wr_clk), .Q(mem[121]) );
  DFQD1 mem_reg_5__2_ ( .D(n12), .CP(wr_clk), .Q(mem[122]) );
  DFQD1 mem_reg_5__3_ ( .D(n13), .CP(wr_clk), .Q(mem[123]) );
  DFQD1 mem_reg_5__4_ ( .D(n14), .CP(wr_clk), .Q(mem[124]) );
  DFQD1 mem_reg_5__5_ ( .D(n15), .CP(wr_clk), .Q(mem[125]) );
  DFQD1 mem_reg_5__6_ ( .D(n16), .CP(wr_clk), .Q(mem[126]) );
  DFQD1 mem_reg_5__7_ ( .D(n17), .CP(wr_clk), .Q(mem[127]) );
  DFQD1 mem_reg_5__8_ ( .D(n18), .CP(wr_clk), .Q(mem[128]) );
  DFQD1 mem_reg_5__9_ ( .D(n252), .CP(wr_clk), .Q(mem[129]) );
  DFQD1 mem_reg_5__10_ ( .D(n251), .CP(wr_clk), .Q(mem[130]) );
  DFQD1 mem_reg_5__11_ ( .D(n250), .CP(wr_clk), .Q(mem[131]) );
  DFQD1 mem_reg_5__12_ ( .D(n249), .CP(wr_clk), .Q(mem[132]) );
  DFQD1 mem_reg_5__13_ ( .D(n248), .CP(wr_clk), .Q(mem[133]) );
  DFQD1 mem_reg_5__14_ ( .D(n247), .CP(wr_clk), .Q(mem[134]) );
  DFQD1 mem_reg_5__15_ ( .D(n246), .CP(wr_clk), .Q(mem[135]) );
  DFQD1 mem_reg_5__16_ ( .D(n245), .CP(wr_clk), .Q(mem[136]) );
  DFQD1 mem_reg_5__17_ ( .D(n244), .CP(wr_clk), .Q(mem[137]) );
  DFQD1 mem_reg_5__18_ ( .D(n243), .CP(wr_clk), .Q(mem[138]) );
  DFQD1 mem_reg_5__19_ ( .D(n242), .CP(wr_clk), .Q(mem[139]) );
  DFQD1 mem_reg_5__20_ ( .D(n241), .CP(wr_clk), .Q(mem[140]) );
  DFQD1 mem_reg_5__21_ ( .D(n240), .CP(wr_clk), .Q(mem[141]) );
  DFQD1 mem_reg_5__22_ ( .D(n239), .CP(wr_clk), .Q(mem[142]) );
  DFQD1 mem_reg_5__23_ ( .D(n238), .CP(wr_clk), .Q(mem[143]) );
  EDFQD1 mem_reg_6__0_ ( .D(wr_data[0]), .E(n151), .CP(wr_clk), .Q(mem[144])
         );
  EDFQD1 mem_reg_6__1_ ( .D(wr_data[1]), .E(n151), .CP(wr_clk), .Q(mem[145])
         );
  EDFQD1 mem_reg_6__2_ ( .D(wr_data[2]), .E(n151), .CP(wr_clk), .Q(mem[146])
         );
  EDFQD1 mem_reg_6__3_ ( .D(wr_data[3]), .E(n151), .CP(wr_clk), .Q(mem[147])
         );
  EDFQD1 mem_reg_6__4_ ( .D(wr_data[4]), .E(n151), .CP(wr_clk), .Q(mem[148])
         );
  EDFQD1 mem_reg_6__5_ ( .D(wr_data[5]), .E(n151), .CP(wr_clk), .Q(mem[149])
         );
  EDFQD1 mem_reg_6__6_ ( .D(wr_data[6]), .E(n151), .CP(wr_clk), .Q(mem[150])
         );
  EDFQD1 mem_reg_6__7_ ( .D(wr_data[7]), .E(n151), .CP(wr_clk), .Q(mem[151])
         );
  EDFQD1 mem_reg_6__8_ ( .D(wr_data[8]), .E(n151), .CP(wr_clk), .Q(mem[152])
         );
  EDFQD1 mem_reg_6__9_ ( .D(wr_data[9]), .E(n151), .CP(wr_clk), .Q(mem[153])
         );
  EDFQD1 mem_reg_6__10_ ( .D(wr_data[10]), .E(n151), .CP(wr_clk), .Q(mem[154])
         );
  EDFQD1 mem_reg_6__11_ ( .D(wr_data[11]), .E(n151), .CP(wr_clk), .Q(mem[155])
         );
  EDFQD1 mem_reg_6__12_ ( .D(wr_data[12]), .E(n151), .CP(wr_clk), .Q(mem[156])
         );
  EDFQD1 mem_reg_6__13_ ( .D(wr_data[13]), .E(n151), .CP(wr_clk), .Q(mem[157])
         );
  EDFQD1 mem_reg_6__14_ ( .D(wr_data[14]), .E(n151), .CP(wr_clk), .Q(mem[158])
         );
  EDFQD1 mem_reg_6__15_ ( .D(wr_data[15]), .E(n151), .CP(wr_clk), .Q(mem[159])
         );
  EDFQD1 mem_reg_6__16_ ( .D(wr_data[16]), .E(n151), .CP(wr_clk), .Q(mem[160])
         );
  EDFQD1 mem_reg_6__17_ ( .D(wr_data[17]), .E(n151), .CP(wr_clk), .Q(mem[161])
         );
  EDFQD1 mem_reg_6__18_ ( .D(wr_data[18]), .E(n151), .CP(wr_clk), .Q(mem[162])
         );
  EDFQD1 mem_reg_6__19_ ( .D(wr_data[19]), .E(n151), .CP(wr_clk), .Q(mem[163])
         );
  EDFQD1 mem_reg_6__20_ ( .D(wr_data[20]), .E(n151), .CP(wr_clk), .Q(mem[164])
         );
  EDFQD1 mem_reg_6__21_ ( .D(wr_data[21]), .E(n151), .CP(wr_clk), .Q(mem[165])
         );
  EDFQD1 mem_reg_6__22_ ( .D(wr_data[22]), .E(n151), .CP(wr_clk), .Q(mem[166])
         );
  EDFQD1 mem_reg_6__23_ ( .D(wr_data[23]), .E(n151), .CP(wr_clk), .Q(mem[167])
         );
  DFCNQD1 wr_ptr_reg_3_ ( .D(n281), .CP(wr_clk), .CDN(n295), .Q(wr_ptr_gray[3]) );
  DFCNQD1 wr_ptr_meta_reg_3_ ( .D(wr_ptr_gray[3]), .CP(rd_clk), .CDN(n295), 
        .Q(wr_ptr_meta[3]) );
  DFCND1 wr_ptr_sync_reg_3_ ( .D(wr_ptr_meta[3]), .CP(rd_clk), .CDN(n295), .Q(
        wr_ptr_sync[3]), .QN() );
  DFCNQD1 wr_ptr_meta_reg_2_ ( .D(wr_ptr_gray[2]), .CP(rd_clk), .CDN(n295), 
        .Q(wr_ptr_meta[2]) );
  DFCNQD1 wr_ptr_sync_reg_2_ ( .D(wr_ptr_meta[2]), .CP(rd_clk), .CDN(n295), 
        .Q(wr_ptr_sync[2]) );
  EDFQD1 mem_reg_7__0_ ( .D(wr_data[0]), .E(n4), .CP(wr_clk), .Q(mem[168]) );
  EDFQD1 mem_reg_7__1_ ( .D(wr_data[1]), .E(n4), .CP(wr_clk), .Q(mem[169]) );
  EDFQD1 mem_reg_7__2_ ( .D(wr_data[2]), .E(n4), .CP(wr_clk), .Q(mem[170]) );
  EDFQD1 mem_reg_7__3_ ( .D(wr_data[3]), .E(n4), .CP(wr_clk), .Q(mem[171]) );
  EDFQD1 mem_reg_7__4_ ( .D(wr_data[4]), .E(n4), .CP(wr_clk), .Q(mem[172]) );
  EDFQD1 mem_reg_7__5_ ( .D(wr_data[5]), .E(n4), .CP(wr_clk), .Q(mem[173]) );
  EDFQD1 mem_reg_7__6_ ( .D(wr_data[6]), .E(n4), .CP(wr_clk), .Q(mem[174]) );
  EDFQD1 mem_reg_7__7_ ( .D(wr_data[7]), .E(n4), .CP(wr_clk), .Q(mem[175]) );
  EDFQD1 mem_reg_7__8_ ( .D(wr_data[8]), .E(n4), .CP(wr_clk), .Q(mem[176]) );
  EDFQD1 mem_reg_7__9_ ( .D(wr_data[9]), .E(n4), .CP(wr_clk), .Q(mem[177]) );
  EDFQD1 mem_reg_7__10_ ( .D(wr_data[10]), .E(n4), .CP(wr_clk), .Q(mem[178])
         );
  EDFQD1 mem_reg_7__11_ ( .D(wr_data[11]), .E(n4), .CP(wr_clk), .Q(mem[179])
         );
  EDFQD1 mem_reg_7__12_ ( .D(wr_data[12]), .E(n4), .CP(wr_clk), .Q(mem[180])
         );
  EDFQD1 mem_reg_7__13_ ( .D(wr_data[13]), .E(n4), .CP(wr_clk), .Q(mem[181])
         );
  EDFQD1 mem_reg_7__14_ ( .D(wr_data[14]), .E(n4), .CP(wr_clk), .Q(mem[182])
         );
  EDFQD1 mem_reg_7__15_ ( .D(wr_data[15]), .E(n4), .CP(wr_clk), .Q(mem[183])
         );
  EDFQD1 mem_reg_7__16_ ( .D(wr_data[16]), .E(n4), .CP(wr_clk), .Q(mem[184])
         );
  EDFQD1 mem_reg_7__17_ ( .D(wr_data[17]), .E(n4), .CP(wr_clk), .Q(mem[185])
         );
  EDFQD1 mem_reg_7__18_ ( .D(wr_data[18]), .E(n4), .CP(wr_clk), .Q(mem[186])
         );
  EDFQD1 mem_reg_7__19_ ( .D(wr_data[19]), .E(n4), .CP(wr_clk), .Q(mem[187])
         );
  EDFQD1 mem_reg_7__20_ ( .D(wr_data[20]), .E(n4), .CP(wr_clk), .Q(mem[188])
         );
  EDFQD1 mem_reg_7__21_ ( .D(wr_data[21]), .E(n4), .CP(wr_clk), .Q(mem[189])
         );
  EDFQD1 mem_reg_7__22_ ( .D(wr_data[22]), .E(n4), .CP(wr_clk), .Q(mem[190])
         );
  EDFQD1 mem_reg_7__23_ ( .D(wr_data[23]), .E(n4), .CP(wr_clk), .Q(mem[191])
         );
  DFCNQD1 rd_data_reg_0_ ( .D(n209), .CP(rd_clk), .CDN(n295), .Q(rd_data[0])
         );
  DFCNQD1 rd_data_reg_23_ ( .D(n208), .CP(rd_clk), .CDN(n295), .Q(rd_data[23])
         );
  DFCNQD1 rd_data_reg_22_ ( .D(n207), .CP(rd_clk), .CDN(n295), .Q(rd_data[22])
         );
  DFCNQD1 rd_data_reg_21_ ( .D(n206), .CP(rd_clk), .CDN(n295), .Q(rd_data[21])
         );
  DFCNQD1 rd_data_reg_20_ ( .D(n205), .CP(rd_clk), .CDN(n295), .Q(rd_data[20])
         );
  DFCNQD1 rd_data_reg_19_ ( .D(n204), .CP(rd_clk), .CDN(n295), .Q(rd_data[19])
         );
  DFCNQD1 rd_data_reg_18_ ( .D(n203), .CP(rd_clk), .CDN(n295), .Q(rd_data[18])
         );
  DFCNQD1 rd_data_reg_17_ ( .D(n202), .CP(rd_clk), .CDN(n295), .Q(rd_data[17])
         );
  DFCNQD1 rd_data_reg_16_ ( .D(n201), .CP(rd_clk), .CDN(n295), .Q(rd_data[16])
         );
  DFCNQD1 rd_data_reg_15_ ( .D(n200), .CP(rd_clk), .CDN(n295), .Q(rd_data[15])
         );
  DFCNQD1 rd_data_reg_14_ ( .D(n199), .CP(rd_clk), .CDN(n295), .Q(rd_data[14])
         );
  DFCNQD1 rd_data_reg_13_ ( .D(n198), .CP(rd_clk), .CDN(n295), .Q(rd_data[13])
         );
  DFCNQD1 rd_data_reg_12_ ( .D(n197), .CP(rd_clk), .CDN(n295), .Q(rd_data[12])
         );
  DFCNQD1 rd_data_reg_11_ ( .D(n196), .CP(rd_clk), .CDN(n295), .Q(rd_data[11])
         );
  DFCNQD1 rd_data_reg_10_ ( .D(n195), .CP(rd_clk), .CDN(n295), .Q(rd_data[10])
         );
  DFCNQD1 rd_data_reg_9_ ( .D(n194), .CP(rd_clk), .CDN(n295), .Q(rd_data[9])
         );
  DFCNQD1 rd_data_reg_8_ ( .D(n193), .CP(rd_clk), .CDN(n295), .Q(rd_data[8])
         );
  DFCNQD1 rd_data_reg_7_ ( .D(n192), .CP(rd_clk), .CDN(n295), .Q(rd_data[7])
         );
  DFCNQD1 rd_data_reg_6_ ( .D(n191), .CP(rd_clk), .CDN(n295), .Q(rd_data[6])
         );
  DFCNQD1 rd_data_reg_5_ ( .D(n190), .CP(rd_clk), .CDN(n295), .Q(rd_data[5])
         );
  DFCNQD1 rd_data_reg_4_ ( .D(n189), .CP(rd_clk), .CDN(n295), .Q(rd_data[4])
         );
  DFCNQD1 rd_data_reg_3_ ( .D(n188), .CP(rd_clk), .CDN(n295), .Q(rd_data[3])
         );
  DFCNQD1 rd_data_reg_2_ ( .D(n187), .CP(rd_clk), .CDN(n295), .Q(rd_data[2])
         );
  DFCNQD1 rd_data_reg_1_ ( .D(n186), .CP(rd_clk), .CDN(n295), .Q(rd_data[1])
         );
  DFQD1 mem_reg_4__2_ ( .D(n291), .CP(wr_clk), .Q(mem[98]) );
  DFQD1 mem_reg_4__3_ ( .D(n290), .CP(wr_clk), .Q(mem[99]) );
  DFQD1 mem_reg_4__4_ ( .D(n289), .CP(wr_clk), .Q(mem[100]) );
  DFQD1 mem_reg_4__5_ ( .D(n288), .CP(wr_clk), .Q(mem[101]) );
  DFQD1 mem_reg_4__6_ ( .D(n287), .CP(wr_clk), .Q(mem[102]) );
  DFQD1 mem_reg_4__7_ ( .D(n286), .CP(wr_clk), .Q(mem[103]) );
  DFQD1 mem_reg_4__8_ ( .D(n256), .CP(wr_clk), .Q(mem[104]) );
  DFQD1 mem_reg_4__9_ ( .D(n255), .CP(wr_clk), .Q(mem[105]) );
  DFQD1 mem_reg_4__10_ ( .D(n254), .CP(wr_clk), .Q(mem[106]) );
  DFQD1 mem_reg_4__11_ ( .D(n253), .CP(wr_clk), .Q(mem[107]) );
  DFQD1 mem_reg_4__1_ ( .D(n292), .CP(wr_clk), .Q(mem[97]) );
  DFQD1 mem_reg_4__12_ ( .D(n19), .CP(wr_clk), .Q(mem[108]) );
  DFQD1 mem_reg_4__13_ ( .D(n20), .CP(wr_clk), .Q(mem[109]) );
  DFQD1 mem_reg_4__14_ ( .D(n21), .CP(wr_clk), .Q(mem[110]) );
  DFQD1 mem_reg_4__15_ ( .D(n22), .CP(wr_clk), .Q(mem[111]) );
  DFQD1 mem_reg_4__16_ ( .D(n23), .CP(wr_clk), .Q(mem[112]) );
  DFQD1 mem_reg_4__17_ ( .D(n24), .CP(wr_clk), .Q(mem[113]) );
  DFQD1 mem_reg_4__18_ ( .D(n25), .CP(wr_clk), .Q(mem[114]) );
  DFQD1 mem_reg_4__19_ ( .D(n26), .CP(wr_clk), .Q(mem[115]) );
  DFQD1 mem_reg_4__20_ ( .D(n27), .CP(wr_clk), .Q(mem[116]) );
  DFQD1 mem_reg_4__21_ ( .D(n28), .CP(wr_clk), .Q(mem[117]) );
  DFQD1 mem_reg_4__22_ ( .D(n29), .CP(wr_clk), .Q(mem[118]) );
  DFQD1 mem_reg_4__23_ ( .D(n30), .CP(wr_clk), .Q(mem[119]) );
  DFQD1 mem_reg_4__0_ ( .D(n257), .CP(wr_clk), .Q(mem[96]) );
  DFCNQD1 wr_ptr_reg_0_ ( .D(n3), .CP(wr_clk), .CDN(n295), .Q(wr_ptr[0]) );
  EDFCNQD1 wr_ptr_reg_2_ ( .D(N34), .E(N22), .CP(wr_clk), .CDN(n295), .Q(
        wr_ptr[2]) );
  DFCNQD1 rd_ptr_reg_2_ ( .D(n283), .CP(rd_clk), .CDN(n295), .Q(rd_ptr[2]) );
  INVD3 U3 ( .I(n225), .ZN(n143) );
  INVD1 U4 ( .I(n6), .ZN(n214) );
  NR2XD0 U5 ( .A1(n65), .A2(n61), .ZN(n9) );
  NR2XD1 U6 ( .A1(n60), .A2(n62), .ZN(n81) );
  CKBD1 U7 ( .I(n92), .Z(n5) );
  NR2D0 U8 ( .A1(reset), .A2(n233), .ZN(n224) );
  CKND2 U9 ( .I(n142), .ZN(n221) );
  NR2D2 U10 ( .A1(n65), .A2(n64), .ZN(n145) );
  CKND2D1 U11 ( .A1(wr_ptr[2]), .A2(n223), .ZN(n233) );
  INVD1 U12 ( .I(rd_ptr[2]), .ZN(n62) );
  XOR2D0 U13 ( .A1(n81), .A2(rd_ptr_gray[3]), .Z(n282) );
  CKBD2 U14 ( .I(n142), .Z(n222) );
  BUFFD2 U15 ( .I(n224), .Z(n4) );
  AN2D2 U16 ( .A1(n41), .A2(n53), .Z(n225) );
  CKND2D1 U17 ( .A1(wr_ptr[0]), .A2(n41), .ZN(n142) );
  XOR2D0 U18 ( .A1(rd_ptr_gray[3]), .A2(wr_ptr_sync[3]), .Z(n47) );
  INVD1 U19 ( .I(wr_ptr[1]), .ZN(n230) );
  XOR2D0 U20 ( .A1(wr_ptr_sync[3]), .A2(wr_ptr_sync[2]), .Z(n44) );
  CKND2 U21 ( .I(reset), .ZN(n295) );
  NR2D1 U22 ( .A1(n232), .A2(n39), .ZN(n41) );
  INVD2 U23 ( .I(wr_ptr[0]), .ZN(n53) );
  IND3D1 U24 ( .A1(n63), .B1(n62), .B2(n235), .ZN(n6) );
  INVD1 U25 ( .I(n228), .ZN(n65) );
  CKND2D0 U26 ( .A1(n229), .A2(n236), .ZN(n63) );
  CKND2D0 U27 ( .A1(n178), .A2(n62), .ZN(n61) );
  INVD0 U28 ( .I(wr_ptr_sync[1]), .ZN(n42) );
  INVD0 U29 ( .I(n44), .ZN(n45) );
  AOI22D0 U30 ( .A1(n81), .A2(mem[169]), .B1(n215), .B2(mem[73]), .ZN(n164) );
  AOI22D0 U31 ( .A1(n81), .A2(mem[173]), .B1(n215), .B2(mem[77]), .ZN(n130) );
  AOI22D0 U32 ( .A1(n81), .A2(mem[175]), .B1(n215), .B2(mem[79]), .ZN(n169) );
  AOI22D0 U33 ( .A1(n81), .A2(mem[179]), .B1(n215), .B2(mem[83]), .ZN(n105) );
  AOI22D0 U34 ( .A1(n81), .A2(mem[182]), .B1(n215), .B2(mem[86]), .ZN(n219) );
  AOI22D0 U35 ( .A1(n81), .A2(mem[188]), .B1(n215), .B2(mem[92]), .ZN(n110) );
  AOI22D0 U36 ( .A1(n81), .A2(mem[190]), .B1(n215), .B2(mem[94]), .ZN(n78) );
  NR2D1 U37 ( .A1(n63), .A2(n61), .ZN(n216) );
  INVD0 U38 ( .I(rd_ptr_sync[1]), .ZN(n32) );
  CKND2D0 U39 ( .A1(n228), .A2(n235), .ZN(n60) );
  AOI22D0 U40 ( .A1(n81), .A2(mem[170]), .B1(n215), .B2(mem[74]), .ZN(n159) );
  AOI21D0 U41 ( .A1(mem[52]), .A2(n214), .B(n122), .ZN(n126) );
  AOI22D0 U42 ( .A1(n81), .A2(mem[174]), .B1(n215), .B2(mem[78]), .ZN(n154) );
  AOI21D0 U43 ( .A1(mem[56]), .A2(n214), .B(n171), .ZN(n175) );
  AOI21D0 U44 ( .A1(mem[57]), .A2(n214), .B(n91), .ZN(n96) );
  AOI22D0 U45 ( .A1(n81), .A2(mem[178]), .B1(n215), .B2(mem[82]), .ZN(n135) );
  AOI21D0 U46 ( .A1(mem[60]), .A2(n214), .B(n144), .ZN(n149) );
  AOI21D0 U47 ( .A1(mem[61]), .A2(n214), .B(n176), .ZN(n181) );
  AOI22D0 U48 ( .A1(n81), .A2(mem[183]), .B1(n215), .B2(mem[87]), .ZN(n89) );
  AOI21D0 U49 ( .A1(mem[64]), .A2(n214), .B(n137), .ZN(n141) );
  AOI21D0 U50 ( .A1(mem[65]), .A2(n214), .B(n97), .ZN(n101) );
  AOI22D0 U51 ( .A1(n81), .A2(mem[187]), .B1(n215), .B2(mem[91]), .ZN(n115) );
  AOI22D0 U52 ( .A1(n81), .A2(mem[189]), .B1(n215), .B2(mem[93]), .ZN(n84) );
  AOI22D0 U53 ( .A1(n81), .A2(mem[191]), .B1(n215), .B2(mem[95]), .ZN(n73) );
  AOI21D0 U54 ( .A1(mem[48]), .A2(n214), .B(n182), .ZN(n210) );
  INVD0 U55 ( .I(wr_ptr_gray[3]), .ZN(n234) );
  CKND2D0 U56 ( .A1(N22), .A2(n53), .ZN(n57) );
  ND3D2 U57 ( .A1(N22), .A2(n230), .A3(n295), .ZN(n39) );
  NR2D0 U58 ( .A1(n53), .A2(n230), .ZN(n231) );
  INVD0 U59 ( .I(n60), .ZN(n56) );
  AOI31D1 U60 ( .A1(n52), .A2(n51), .A3(n50), .B(n49), .ZN(n229) );
  AOI21D0 U61 ( .A1(n235), .A2(n48), .B(n47), .ZN(n50) );
  OAI21D0 U62 ( .A1(n43), .A2(n44), .B(n62), .ZN(n52) );
  NR2D1 U63 ( .A1(n211), .A2(n236), .ZN(n228) );
  MUX2D0 U64 ( .I0(wr_data[0]), .I1(mem[96]), .S(n143), .Z(n257) );
  AOI22D0 U65 ( .A1(n9), .A2(mem[25]), .B1(n216), .B2(mem[1]), .ZN(n163) );
  AOI22D0 U66 ( .A1(n5), .A2(mem[145]), .B1(mem[121]), .B2(n145), .ZN(n162) );
  AOI21D0 U67 ( .A1(mem[49]), .A2(n214), .B(n161), .ZN(n165) );
  ND4D0 U68 ( .A1(n160), .A2(n159), .A3(n158), .A4(n157), .ZN(n187) );
  AOI22D0 U69 ( .A1(n9), .A2(mem[26]), .B1(n216), .B2(mem[2]), .ZN(n158) );
  AOI22D0 U70 ( .A1(n5), .A2(mem[146]), .B1(mem[122]), .B2(n145), .ZN(n157) );
  AOI21D0 U71 ( .A1(mem[50]), .A2(n214), .B(n156), .ZN(n160) );
  ND4D0 U72 ( .A1(n121), .A2(n120), .A3(n119), .A4(n118), .ZN(n188) );
  AOI22D0 U73 ( .A1(n9), .A2(mem[27]), .B1(n216), .B2(mem[3]), .ZN(n119) );
  AOI22D0 U74 ( .A1(n5), .A2(mem[147]), .B1(mem[123]), .B2(n145), .ZN(n118) );
  AOI21D0 U75 ( .A1(mem[51]), .A2(n214), .B(n117), .ZN(n121) );
  ND4D0 U76 ( .A1(n126), .A2(n125), .A3(n124), .A4(n123), .ZN(n189) );
  AOI22D0 U77 ( .A1(n9), .A2(mem[28]), .B1(n216), .B2(mem[4]), .ZN(n124) );
  AOI22D0 U78 ( .A1(n5), .A2(mem[148]), .B1(mem[124]), .B2(n145), .ZN(n123) );
  AOI22D0 U79 ( .A1(n81), .A2(mem[172]), .B1(n215), .B2(mem[76]), .ZN(n125) );
  AOI22D0 U80 ( .A1(n9), .A2(mem[29]), .B1(n216), .B2(mem[5]), .ZN(n129) );
  AOI22D0 U81 ( .A1(n5), .A2(mem[149]), .B1(mem[125]), .B2(n145), .ZN(n128) );
  AOI21D0 U82 ( .A1(mem[53]), .A2(n214), .B(n127), .ZN(n131) );
  ND4D0 U83 ( .A1(n155), .A2(n154), .A3(n153), .A4(n152), .ZN(n191) );
  AOI22D0 U84 ( .A1(n9), .A2(mem[30]), .B1(n216), .B2(mem[6]), .ZN(n153) );
  AOI22D0 U85 ( .A1(n5), .A2(mem[150]), .B1(mem[126]), .B2(n145), .ZN(n152) );
  AOI21D0 U86 ( .A1(mem[54]), .A2(n214), .B(n150), .ZN(n155) );
  ND4D0 U87 ( .A1(n170), .A2(n169), .A3(n168), .A4(n167), .ZN(n192) );
  AOI22D0 U88 ( .A1(n5), .A2(mem[151]), .B1(mem[127]), .B2(n145), .ZN(n167) );
  AOI21D0 U89 ( .A1(mem[55]), .A2(n214), .B(n166), .ZN(n170) );
  ND4D0 U90 ( .A1(n175), .A2(n174), .A3(n173), .A4(n172), .ZN(n193) );
  AOI22D0 U91 ( .A1(n9), .A2(mem[32]), .B1(n216), .B2(mem[8]), .ZN(n173) );
  AOI22D0 U92 ( .A1(n5), .A2(mem[152]), .B1(mem[128]), .B2(n145), .ZN(n172) );
  AOI22D0 U93 ( .A1(n81), .A2(mem[176]), .B1(n215), .B2(mem[80]), .ZN(n174) );
  ND4D0 U94 ( .A1(n96), .A2(n95), .A3(n94), .A4(n93), .ZN(n194) );
  AOI22D0 U95 ( .A1(n9), .A2(mem[33]), .B1(n216), .B2(mem[9]), .ZN(n94) );
  AOI22D0 U96 ( .A1(n5), .A2(mem[153]), .B1(mem[129]), .B2(n145), .ZN(n93) );
  AOI22D0 U97 ( .A1(n81), .A2(mem[177]), .B1(n215), .B2(mem[81]), .ZN(n95) );
  ND4D0 U98 ( .A1(n136), .A2(n135), .A3(n134), .A4(n133), .ZN(n195) );
  AOI22D0 U99 ( .A1(n9), .A2(mem[34]), .B1(n216), .B2(mem[10]), .ZN(n134) );
  AOI22D0 U100 ( .A1(n5), .A2(mem[154]), .B1(mem[130]), .B2(n145), .ZN(n133)
         );
  AOI21D0 U101 ( .A1(mem[58]), .A2(n214), .B(n132), .ZN(n136) );
  ND4D0 U102 ( .A1(n106), .A2(n105), .A3(n104), .A4(n103), .ZN(n196) );
  AOI22D0 U103 ( .A1(n9), .A2(mem[35]), .B1(n216), .B2(mem[11]), .ZN(n104) );
  AOI21D0 U104 ( .A1(mem[59]), .A2(n214), .B(n102), .ZN(n106) );
  ND4D0 U105 ( .A1(n149), .A2(n148), .A3(n147), .A4(n146), .ZN(n197) );
  AOI22D0 U106 ( .A1(n9), .A2(mem[36]), .B1(n216), .B2(mem[12]), .ZN(n147) );
  AOI22D0 U107 ( .A1(n5), .A2(mem[156]), .B1(mem[132]), .B2(n145), .ZN(n146)
         );
  AOI22D0 U108 ( .A1(n81), .A2(mem[180]), .B1(n215), .B2(mem[84]), .ZN(n148)
         );
  ND4D0 U109 ( .A1(n181), .A2(n180), .A3(n179), .A4(n177), .ZN(n198) );
  AOI22D0 U110 ( .A1(n9), .A2(mem[37]), .B1(n216), .B2(mem[13]), .ZN(n179) );
  AOI22D0 U111 ( .A1(n5), .A2(mem[157]), .B1(mem[133]), .B2(n145), .ZN(n177)
         );
  AOI22D0 U112 ( .A1(n81), .A2(mem[181]), .B1(n215), .B2(mem[85]), .ZN(n180)
         );
  ND4D0 U113 ( .A1(n220), .A2(n219), .A3(n218), .A4(n217), .ZN(n199) );
  AOI22D0 U114 ( .A1(n9), .A2(mem[38]), .B1(n216), .B2(mem[14]), .ZN(n218) );
  AOI22D0 U115 ( .A1(n5), .A2(mem[158]), .B1(mem[134]), .B2(n145), .ZN(n217)
         );
  ND4D0 U116 ( .A1(n90), .A2(n89), .A3(n88), .A4(n87), .ZN(n200) );
  AOI22D0 U117 ( .A1(n9), .A2(mem[39]), .B1(n216), .B2(mem[15]), .ZN(n88) );
  AOI22D0 U118 ( .A1(n5), .A2(mem[159]), .B1(mem[135]), .B2(n145), .ZN(n87) );
  AOI21D0 U119 ( .A1(mem[63]), .A2(n214), .B(n86), .ZN(n90) );
  ND4D0 U120 ( .A1(n141), .A2(n140), .A3(n139), .A4(n138), .ZN(n201) );
  AOI22D0 U121 ( .A1(n9), .A2(mem[40]), .B1(n216), .B2(mem[16]), .ZN(n139) );
  AOI22D0 U122 ( .A1(n5), .A2(mem[160]), .B1(mem[136]), .B2(n145), .ZN(n138)
         );
  AOI22D0 U123 ( .A1(n81), .A2(mem[184]), .B1(n215), .B2(mem[88]), .ZN(n140)
         );
  ND4D0 U124 ( .A1(n101), .A2(n100), .A3(n99), .A4(n98), .ZN(n202) );
  AOI22D0 U125 ( .A1(n9), .A2(mem[41]), .B1(n216), .B2(mem[17]), .ZN(n99) );
  AOI22D0 U126 ( .A1(n5), .A2(mem[161]), .B1(mem[137]), .B2(n145), .ZN(n98) );
  AOI22D0 U127 ( .A1(n81), .A2(mem[185]), .B1(n215), .B2(mem[89]), .ZN(n100)
         );
  ND4D0 U128 ( .A1(n69), .A2(n68), .A3(n67), .A4(n66), .ZN(n203) );
  AOI22D0 U129 ( .A1(n9), .A2(mem[42]), .B1(n216), .B2(mem[18]), .ZN(n67) );
  AOI22D0 U130 ( .A1(n5), .A2(mem[162]), .B1(mem[138]), .B2(n145), .ZN(n66) );
  AOI21D0 U131 ( .A1(mem[66]), .A2(n214), .B(n59), .ZN(n69) );
  ND4D0 U132 ( .A1(n116), .A2(n115), .A3(n114), .A4(n113), .ZN(n204) );
  AOI22D0 U133 ( .A1(n9), .A2(mem[43]), .B1(n216), .B2(mem[19]), .ZN(n114) );
  AOI22D0 U134 ( .A1(n5), .A2(mem[163]), .B1(mem[139]), .B2(n145), .ZN(n113)
         );
  AOI21D0 U135 ( .A1(mem[67]), .A2(n214), .B(n112), .ZN(n116) );
  AOI22D0 U136 ( .A1(n9), .A2(mem[44]), .B1(n216), .B2(mem[20]), .ZN(n109) );
  AOI22D0 U137 ( .A1(n5), .A2(mem[164]), .B1(mem[140]), .B2(n145), .ZN(n108)
         );
  AOI21D0 U138 ( .A1(mem[68]), .A2(n214), .B(n107), .ZN(n111) );
  ND4D0 U139 ( .A1(n85), .A2(n84), .A3(n83), .A4(n82), .ZN(n206) );
  AOI22D0 U140 ( .A1(n9), .A2(mem[45]), .B1(n216), .B2(mem[21]), .ZN(n83) );
  AOI22D0 U141 ( .A1(n5), .A2(mem[165]), .B1(mem[141]), .B2(n145), .ZN(n82) );
  AOI21D0 U142 ( .A1(mem[69]), .A2(n214), .B(n80), .ZN(n85) );
  ND4D0 U143 ( .A1(n79), .A2(n78), .A3(n77), .A4(n76), .ZN(n207) );
  AOI22D0 U144 ( .A1(n5), .A2(mem[166]), .B1(mem[142]), .B2(n145), .ZN(n76) );
  AOI21D0 U145 ( .A1(mem[70]), .A2(n214), .B(n75), .ZN(n79) );
  ND4D0 U146 ( .A1(n74), .A2(n73), .A3(n72), .A4(n71), .ZN(n208) );
  AOI22D0 U147 ( .A1(n9), .A2(mem[47]), .B1(n216), .B2(mem[23]), .ZN(n72) );
  AOI22D0 U148 ( .A1(n5), .A2(mem[167]), .B1(mem[143]), .B2(n145), .ZN(n71) );
  AOI21D0 U149 ( .A1(n214), .A2(mem[71]), .B(n70), .ZN(n74) );
  ND4D0 U150 ( .A1(n210), .A2(n185), .A3(n184), .A4(n183), .ZN(n209) );
  AOI22D0 U151 ( .A1(n9), .A2(mem[24]), .B1(n216), .B2(mem[0]), .ZN(n184) );
  AOI22D0 U152 ( .A1(n5), .A2(mem[144]), .B1(mem[120]), .B2(n145), .ZN(n183)
         );
  AOI22D0 U153 ( .A1(n81), .A2(mem[168]), .B1(n215), .B2(mem[72]), .ZN(n185)
         );
  MUX2D0 U154 ( .I0(mem[70]), .I1(wr_data[22]), .S(n293), .Z(n258) );
  MUX2D0 U155 ( .I0(mem[69]), .I1(wr_data[21]), .S(n293), .Z(n259) );
  MUX2D0 U156 ( .I0(mem[68]), .I1(wr_data[20]), .S(n293), .Z(n260) );
  MUX2D0 U157 ( .I0(mem[67]), .I1(wr_data[19]), .S(n293), .Z(n261) );
  MUX2D0 U158 ( .I0(mem[66]), .I1(wr_data[18]), .S(n293), .Z(n262) );
  MUX2D0 U159 ( .I0(mem[65]), .I1(wr_data[17]), .S(n293), .Z(n263) );
  MUX2D0 U160 ( .I0(mem[64]), .I1(wr_data[16]), .S(n293), .Z(n264) );
  MUX2D0 U161 ( .I0(mem[63]), .I1(wr_data[15]), .S(n293), .Z(n265) );
  MUX2D0 U162 ( .I0(mem[61]), .I1(wr_data[13]), .S(n293), .Z(n267) );
  MUX2D0 U163 ( .I0(mem[60]), .I1(wr_data[12]), .S(n293), .Z(n268) );
  MUX2D0 U164 ( .I0(mem[59]), .I1(wr_data[11]), .S(n293), .Z(n269) );
  MUX2D0 U165 ( .I0(mem[58]), .I1(wr_data[10]), .S(n293), .Z(n270) );
  MUX2D0 U166 ( .I0(mem[57]), .I1(wr_data[9]), .S(n293), .Z(n271) );
  MUX2D0 U167 ( .I0(mem[56]), .I1(wr_data[8]), .S(n293), .Z(n272) );
  MUX2D0 U168 ( .I0(mem[55]), .I1(wr_data[7]), .S(n293), .Z(n273) );
  MUX2D0 U169 ( .I0(mem[54]), .I1(wr_data[6]), .S(n293), .Z(n274) );
  MUX2D0 U170 ( .I0(mem[53]), .I1(wr_data[5]), .S(n293), .Z(n275) );
  MUX2D0 U171 ( .I0(mem[52]), .I1(wr_data[4]), .S(n293), .Z(n276) );
  MUX2D0 U172 ( .I0(mem[51]), .I1(wr_data[3]), .S(n293), .Z(n277) );
  MUX2D0 U173 ( .I0(mem[50]), .I1(wr_data[2]), .S(n293), .Z(n278) );
  MUX2D0 U174 ( .I0(mem[49]), .I1(wr_data[1]), .S(n293), .Z(n279) );
  MUX2D0 U175 ( .I0(mem[48]), .I1(wr_data[0]), .S(n293), .Z(n280) );
  AOI21D0 U176 ( .A1(n230), .A2(n54), .B(n223), .ZN(n2) );
  OAI21D0 U177 ( .A1(n56), .A2(n62), .B(n55), .ZN(n283) );
  INVD0 U178 ( .I(n215), .ZN(n55) );
  AOI21D0 U179 ( .A1(n178), .A2(n65), .B(n56), .ZN(n284) );
  IAO21D0 U180 ( .A1(n229), .A2(rd_ptr[0]), .B(n228), .ZN(n285) );
  NR3D2 U181 ( .A1(wr_ptr[0]), .A2(wr_ptr[2]), .A3(n39), .ZN(n7) );
  NR3D2 U182 ( .A1(wr_ptr[2]), .A2(n53), .A3(n39), .ZN(n8) );
  OA22D0 U183 ( .A1(n222), .A2(wr_data[0]), .B1(mem[120]), .B2(n221), .Z(n10)
         );
  OA22D0 U184 ( .A1(n142), .A2(wr_data[1]), .B1(n221), .B2(mem[121]), .Z(n11)
         );
  OA22D0 U185 ( .A1(n142), .A2(wr_data[2]), .B1(n221), .B2(mem[122]), .Z(n12)
         );
  OA22D0 U186 ( .A1(n222), .A2(wr_data[3]), .B1(n221), .B2(mem[123]), .Z(n13)
         );
  OA22D0 U187 ( .A1(n222), .A2(wr_data[4]), .B1(n221), .B2(mem[124]), .Z(n14)
         );
  OA22D0 U188 ( .A1(n222), .A2(wr_data[5]), .B1(n221), .B2(mem[125]), .Z(n15)
         );
  OA22D0 U189 ( .A1(n222), .A2(wr_data[6]), .B1(n221), .B2(mem[126]), .Z(n16)
         );
  OA22D0 U190 ( .A1(n222), .A2(wr_data[7]), .B1(n221), .B2(mem[127]), .Z(n17)
         );
  OA22D0 U191 ( .A1(n222), .A2(wr_data[8]), .B1(n221), .B2(mem[128]), .Z(n18)
         );
  OA22D0 U192 ( .A1(n143), .A2(wr_data[12]), .B1(n225), .B2(mem[108]), .Z(n19)
         );
  OA22D0 U193 ( .A1(n143), .A2(wr_data[13]), .B1(n225), .B2(mem[109]), .Z(n20)
         );
  OA22D0 U194 ( .A1(n143), .A2(wr_data[14]), .B1(n225), .B2(mem[110]), .Z(n21)
         );
  OA22D0 U195 ( .A1(n143), .A2(wr_data[15]), .B1(n225), .B2(mem[111]), .Z(n22)
         );
  OA22D0 U196 ( .A1(n143), .A2(wr_data[16]), .B1(n225), .B2(mem[112]), .Z(n23)
         );
  OA22D0 U197 ( .A1(n143), .A2(wr_data[17]), .B1(n225), .B2(mem[113]), .Z(n24)
         );
  OA22D0 U198 ( .A1(n143), .A2(wr_data[18]), .B1(n225), .B2(mem[114]), .Z(n25)
         );
  OA22D0 U199 ( .A1(n143), .A2(wr_data[19]), .B1(n225), .B2(mem[115]), .Z(n26)
         );
  OA22D0 U200 ( .A1(n143), .A2(wr_data[20]), .B1(n225), .B2(mem[116]), .Z(n27)
         );
  OA22D0 U201 ( .A1(n143), .A2(wr_data[21]), .B1(n225), .B2(mem[117]), .Z(n28)
         );
  OA22D0 U202 ( .A1(n143), .A2(wr_data[22]), .B1(n225), .B2(mem[118]), .Z(n29)
         );
  OA22D0 U203 ( .A1(n143), .A2(wr_data[23]), .B1(n225), .B2(mem[119]), .Z(n30)
         );
  BUFFD2 U204 ( .I(n58), .Z(n293) );
  AOI22D0 U205 ( .A1(n81), .A2(mem[171]), .B1(n215), .B2(mem[75]), .ZN(n120)
         );
  AOI22D0 U206 ( .A1(n9), .A2(mem[31]), .B1(n216), .B2(mem[7]), .ZN(n168) );
  AOI22D0 U207 ( .A1(n5), .A2(mem[155]), .B1(mem[131]), .B2(n145), .ZN(n103)
         );
  AOI21D0 U208 ( .A1(mem[62]), .A2(n214), .B(n213), .ZN(n220) );
  AOI22D0 U209 ( .A1(n81), .A2(mem[186]), .B1(n215), .B2(mem[90]), .ZN(n68) );
  AOI22D0 U210 ( .A1(n9), .A2(mem[46]), .B1(n216), .B2(mem[22]), .ZN(n77) );
  ND4D0 U211 ( .A1(n165), .A2(n164), .A3(n163), .A4(n162), .ZN(n186) );
  ND4D0 U212 ( .A1(n131), .A2(n130), .A3(n129), .A4(n128), .ZN(n190) );
  ND4D0 U213 ( .A1(n111), .A2(n110), .A3(n109), .A4(n108), .ZN(n205) );
  MUX2D0 U214 ( .I0(mem[62]), .I1(wr_data[14]), .S(n293), .Z(n266) );
  INVD0 U215 ( .I(rd_ptr_gray[3]), .ZN(n31) );
  AOI22D0 U216 ( .A1(rd_ptr[2]), .A2(rd_ptr_gray[3]), .B1(n31), .B2(n62), .ZN(
        rd_ptr_gray[2]) );
  MUX2ND0 U217 ( .I0(n53), .I1(wr_ptr[0]), .S(rd_ptr_sync[0]), .ZN(n33) );
  OAI222D0 U218 ( .A1(rd_ptr_sync[3]), .A2(wr_ptr_gray[3]), .B1(n237), .B2(
        n234), .C1(n33), .C2(n230), .ZN(n38) );
  AOI221D0 U219 ( .A1(n33), .A2(n32), .B1(n230), .B2(rd_ptr_sync[1]), .C(
        wr_ptr[2]), .ZN(n36) );
  INVD1 U220 ( .I(wr_ptr[2]), .ZN(n232) );
  AOI221D0 U221 ( .A1(n33), .A2(rd_ptr_sync[1]), .B1(n230), .B2(n32), .C(n232), 
        .ZN(n35) );
  MUX2ND0 U222 ( .I0(n237), .I1(rd_ptr_sync[3]), .S(rd_ptr_sync[2]), .ZN(n34)
         );
  MUX2ND0 U223 ( .I0(n36), .I1(n35), .S(n34), .ZN(n37) );
  OA21D1 U224 ( .A1(n38), .A2(n37), .B(fifo_wr), .Z(N22) );
  OR4D1 U225 ( .A1(reset), .A2(n230), .A3(n232), .A4(n57), .Z(n40) );
  INVD2 U226 ( .I(n40), .ZN(n151) );
  OA22D0 U227 ( .A1(n143), .A2(wr_data[11]), .B1(n225), .B2(mem[107]), .Z(n253) );
  OA22D0 U228 ( .A1(n143), .A2(wr_data[9]), .B1(n225), .B2(mem[105]), .Z(n255)
         );
  OA22D0 U229 ( .A1(n143), .A2(wr_data[10]), .B1(n225), .B2(mem[106]), .Z(n254) );
  OA22D0 U230 ( .A1(n222), .A2(wr_data[12]), .B1(n221), .B2(mem[132]), .Z(n249) );
  OA22D0 U231 ( .A1(n222), .A2(wr_data[9]), .B1(n221), .B2(mem[129]), .Z(n252)
         );
  OA22D0 U232 ( .A1(n222), .A2(wr_data[10]), .B1(n221), .B2(mem[130]), .Z(n251) );
  OA22D0 U233 ( .A1(n222), .A2(wr_data[13]), .B1(n221), .B2(mem[133]), .Z(n248) );
  OA22D0 U234 ( .A1(n222), .A2(wr_data[11]), .B1(n221), .B2(mem[131]), .Z(n250) );
  OA22D0 U235 ( .A1(n143), .A2(wr_data[3]), .B1(n225), .B2(mem[99]), .Z(n290)
         );
  OA22D0 U236 ( .A1(n143), .A2(wr_data[2]), .B1(n225), .B2(mem[98]), .Z(n291)
         );
  OA22D0 U237 ( .A1(n143), .A2(wr_data[8]), .B1(n225), .B2(mem[104]), .Z(n256)
         );
  OA22D0 U238 ( .A1(n143), .A2(wr_data[4]), .B1(n225), .B2(mem[100]), .Z(n289)
         );
  OA22D0 U239 ( .A1(n143), .A2(wr_data[5]), .B1(n225), .B2(mem[101]), .Z(n288)
         );
  OA22D0 U240 ( .A1(n143), .A2(wr_data[6]), .B1(n225), .B2(mem[102]), .Z(n287)
         );
  OA22D0 U241 ( .A1(n143), .A2(wr_data[7]), .B1(n225), .B2(mem[103]), .Z(n286)
         );
  OA22D0 U242 ( .A1(n222), .A2(wr_data[15]), .B1(n221), .B2(mem[135]), .Z(n246) );
  OA22D0 U243 ( .A1(n222), .A2(wr_data[18]), .B1(n221), .B2(mem[138]), .Z(n243) );
  OA22D0 U244 ( .A1(n222), .A2(wr_data[19]), .B1(n221), .B2(mem[139]), .Z(n242) );
  OA22D0 U245 ( .A1(n222), .A2(wr_data[16]), .B1(n221), .B2(mem[136]), .Z(n245) );
  OA22D0 U246 ( .A1(n222), .A2(wr_data[17]), .B1(n221), .B2(mem[137]), .Z(n244) );
  OA22D0 U247 ( .A1(n222), .A2(wr_data[22]), .B1(n221), .B2(mem[142]), .Z(n239) );
  OA22D0 U248 ( .A1(n222), .A2(wr_data[23]), .B1(n221), .B2(mem[143]), .Z(n238) );
  OA22D0 U249 ( .A1(n222), .A2(wr_data[14]), .B1(n221), .B2(mem[134]), .Z(n247) );
  OA22D0 U250 ( .A1(n222), .A2(wr_data[20]), .B1(n221), .B2(mem[140]), .Z(n241) );
  OA22D0 U251 ( .A1(n222), .A2(wr_data[21]), .B1(n221), .B2(mem[141]), .Z(n240) );
  CKND2D0 U252 ( .A1(n178), .A2(rd_ptr[2]), .ZN(n64) );
  OAI21D0 U253 ( .A1(rd_ptr[2]), .A2(n178), .B(n64), .ZN(rd_ptr_gray[1]) );
  AOI22D0 U254 ( .A1(wr_ptr[2]), .A2(wr_ptr_gray[3]), .B1(n234), .B2(n232), 
        .ZN(wr_ptr_gray[2]) );
  CKND2D0 U255 ( .A1(wr_ptr[0]), .A2(N22), .ZN(n54) );
  OA21D0 U256 ( .A1(wr_ptr[0]), .A2(N22), .B(n54), .Z(n3) );
  XNR2D1 U257 ( .A1(rd_ptr[0]), .A2(wr_ptr_sync[0]), .ZN(n48) );
  MUX2ND0 U258 ( .I0(n235), .I1(n48), .S(n42), .ZN(n43) );
  MUX2ND0 U259 ( .I0(n235), .I1(n48), .S(wr_ptr_sync[1]), .ZN(n46) );
  OAI21D1 U260 ( .A1(n46), .A2(n45), .B(rd_ptr[2]), .ZN(n51) );
  INVD0 U261 ( .I(fifo_rd), .ZN(n49) );
  INVD2 U262 ( .I(n229), .ZN(n211) );
  ND2D1 U263 ( .A1(N22), .A2(n231), .ZN(n226) );
  INVD1 U264 ( .I(n226), .ZN(n223) );
  NR2D2 U265 ( .A1(n60), .A2(rd_ptr[2]), .ZN(n215) );
  NR4D0 U266 ( .A1(n57), .A2(wr_ptr[2]), .A3(reset), .A4(n230), .ZN(n58) );
  NR2D1 U267 ( .A1(n63), .A2(n64), .ZN(n212) );
  AO22D0 U268 ( .A1(n212), .A2(mem[114]), .B1(rd_data[18]), .B2(n211), .Z(n59)
         );
  NR3D0 U269 ( .A1(n63), .A2(n178), .A3(n62), .ZN(n92) );
  AO22D0 U270 ( .A1(n212), .A2(mem[119]), .B1(rd_data[23]), .B2(n211), .Z(n70)
         );
  AO22D0 U271 ( .A1(n212), .A2(mem[118]), .B1(rd_data[22]), .B2(n211), .Z(n75)
         );
  AO22D0 U272 ( .A1(n212), .A2(mem[117]), .B1(rd_data[21]), .B2(n211), .Z(n80)
         );
  AO22D0 U273 ( .A1(n212), .A2(mem[111]), .B1(rd_data[15]), .B2(n211), .Z(n86)
         );
  AO22D0 U274 ( .A1(n212), .A2(mem[105]), .B1(rd_data[9]), .B2(n211), .Z(n91)
         );
  AO22D0 U275 ( .A1(n212), .A2(mem[113]), .B1(rd_data[17]), .B2(n211), .Z(n97)
         );
  AO22D0 U276 ( .A1(n212), .A2(mem[107]), .B1(rd_data[11]), .B2(n211), .Z(n102) );
  AO22D0 U277 ( .A1(n212), .A2(mem[116]), .B1(rd_data[20]), .B2(n211), .Z(n107) );
  AO22D0 U278 ( .A1(n212), .A2(mem[115]), .B1(rd_data[19]), .B2(n211), .Z(n112) );
  AO22D0 U279 ( .A1(n212), .A2(mem[99]), .B1(rd_data[3]), .B2(n211), .Z(n117)
         );
  AO22D0 U280 ( .A1(n212), .A2(mem[100]), .B1(rd_data[4]), .B2(n211), .Z(n122)
         );
  AO22D0 U281 ( .A1(n212), .A2(mem[101]), .B1(rd_data[5]), .B2(n211), .Z(n127)
         );
  AO22D0 U282 ( .A1(n212), .A2(mem[106]), .B1(rd_data[10]), .B2(n211), .Z(n132) );
  AO22D0 U283 ( .A1(n212), .A2(mem[112]), .B1(rd_data[16]), .B2(n211), .Z(n137) );
  AO22D0 U284 ( .A1(n212), .A2(mem[108]), .B1(rd_data[12]), .B2(n211), .Z(n144) );
  AO22D0 U285 ( .A1(n212), .A2(mem[102]), .B1(rd_data[6]), .B2(n211), .Z(n150)
         );
  AO22D0 U286 ( .A1(n212), .A2(mem[98]), .B1(rd_data[2]), .B2(n211), .Z(n156)
         );
  AO22D0 U287 ( .A1(n212), .A2(mem[97]), .B1(rd_data[1]), .B2(n211), .Z(n161)
         );
  AO22D0 U288 ( .A1(n212), .A2(mem[103]), .B1(rd_data[7]), .B2(n211), .Z(n166)
         );
  AO22D0 U289 ( .A1(n212), .A2(mem[104]), .B1(rd_data[8]), .B2(n211), .Z(n171)
         );
  AO22D0 U290 ( .A1(n212), .A2(mem[109]), .B1(rd_data[13]), .B2(n211), .Z(n176) );
  AO22D0 U291 ( .A1(n212), .A2(mem[96]), .B1(rd_data[0]), .B2(n211), .Z(n182)
         );
  AO22D0 U292 ( .A1(n212), .A2(mem[110]), .B1(rd_data[14]), .B2(n211), .Z(n213) );
  IAO21D0 U293 ( .A1(wr_ptr[1]), .A2(wr_ptr[0]), .B(n231), .ZN(N33) );
  CKXOR2D0 U294 ( .A1(n178), .A2(n236), .Z(rd_ptr_gray[0]) );
  OA22D0 U295 ( .A1(n143), .A2(wr_data[1]), .B1(mem[97]), .B2(n225), .Z(n292)
         );
  NR3D2 U296 ( .A1(n226), .A2(wr_ptr[2]), .A3(reset), .ZN(n294) );
  AOI22D0 U297 ( .A1(wr_ptr[2]), .A2(wr_ptr[1]), .B1(n230), .B2(n232), .ZN(
        wr_ptr_gray[1]) );
  MUX2ND0 U298 ( .I0(n232), .I1(wr_ptr[2]), .S(n231), .ZN(N34) );
  MUX2ND0 U299 ( .I0(wr_ptr_gray[3]), .I1(n234), .S(n233), .ZN(n281) );
endmodule


module async_fifo_0 ( rd_clk, wr_clk, reset, empty, full, rd_data, fifo_rd, 
        wr_data, fifo_wr );
  output [23:0] rd_data;
  input [23:0] wr_data;
  input rd_clk, wr_clk, reset, fifo_rd, fifo_wr;
  output empty, full;
  wire   N22, N33, N34, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n150, n152, n153, n154, n155, n156,
         n157, n158, n159, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n179, n180,
         n181, n182, n183, n184, n185, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n286, n287, n288,
         n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299,
         n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310,
         n311, n312, n313, n314, n315, n316, n317, n318, n319, n320, n321,
         n322, n323, n324, n325, n326, n327, n328, n329, n330, n331, n332,
         n333, n334, n335, n336, n337, n338, n339, n340, n341, n342, n343,
         n344, n345, n346, n347, n348, n349, n350, n351, n352;
  wire   [2:0] wr_ptr;
  wire   [3:1] wr_ptr_gray;
  wire   [2:0] rd_ptr;
  wire   [3:0] rd_ptr_gray;
  wire   [191:0] mem;
  wire   [3:0] rd_ptr_sync;
  wire   [3:0] rd_ptr_meta;
  wire   [3:0] wr_ptr_sync;
  wire   [3:0] wr_ptr_meta;
  tri   rd_clk;
  tri   wr_clk;
  tri   reset;
  tri   [23:0] rd_data;
  tri   fifo_rd;
  tri   [23:0] wr_data;
  tri   fifo_wr;

  DFCNQD1 wr_ptr_sync_reg_0_ ( .D(wr_ptr_meta[0]), .CP(rd_clk), .CDN(n293), 
        .Q(wr_ptr_sync[0]) );
  DFCND1 rd_ptr_reg_0_ ( .D(n294), .CP(rd_clk), .CDN(n293), .Q(rd_ptr[0]), 
        .QN(n288) );
  DFCND1 rd_ptr_reg_1_ ( .D(n295), .CP(rd_clk), .CDN(n293), .Q(n287), .QN(n347) );
  DFCNQD1 rd_ptr_meta_reg_0_ ( .D(rd_ptr_gray[0]), .CP(wr_clk), .CDN(n293), 
        .Q(rd_ptr_meta[0]) );
  DFCNQD1 rd_ptr_sync_reg_0_ ( .D(rd_ptr_meta[0]), .CP(wr_clk), .CDN(n293), 
        .Q(rd_ptr_sync[0]) );
  DFCNQD1 rd_ptr_reg_2_ ( .D(n296), .CP(rd_clk), .CDN(n293), .Q(rd_ptr[2]) );
  DFCNQD1 rd_ptr_reg_3_ ( .D(n297), .CP(rd_clk), .CDN(n293), .Q(rd_ptr_gray[3]) );
  DFCNQD1 rd_ptr_meta_reg_3_ ( .D(rd_ptr_gray[3]), .CP(wr_clk), .CDN(n293), 
        .Q(rd_ptr_meta[3]) );
  DFCND1 rd_ptr_sync_reg_3_ ( .D(rd_ptr_meta[3]), .CP(wr_clk), .CDN(n293), .Q(
        rd_ptr_sync[3]), .QN(n6) );
  DFCNQD1 rd_ptr_meta_reg_2_ ( .D(rd_ptr_gray[2]), .CP(wr_clk), .CDN(n293), 
        .Q(rd_ptr_meta[2]) );
  DFCNQD1 rd_ptr_sync_reg_2_ ( .D(rd_ptr_meta[2]), .CP(wr_clk), .CDN(n293), 
        .Q(rd_ptr_sync[2]) );
  DFCNQD1 rd_ptr_meta_reg_1_ ( .D(rd_ptr_gray[1]), .CP(wr_clk), .CDN(n293), 
        .Q(rd_ptr_meta[1]) );
  DFCNQD1 rd_ptr_sync_reg_1_ ( .D(rd_ptr_meta[1]), .CP(wr_clk), .CDN(n293), 
        .Q(rd_ptr_sync[1]) );
  DFCNQD1 wr_ptr_reg_1_ ( .D(n352), .CP(wr_clk), .CDN(n293), .Q(wr_ptr[1]) );
  DFCNQD1 wr_ptr_meta_reg_0_ ( .D(N33), .CP(rd_clk), .CDN(n293), .Q(
        wr_ptr_meta[0]) );
  EDFQD1 mem_reg_1__0_ ( .D(wr_data[0]), .E(n4), .CP(wr_clk), .Q(mem[24]) );
  EDFQD1 mem_reg_1__1_ ( .D(wr_data[1]), .E(n4), .CP(wr_clk), .Q(mem[25]) );
  EDFQD1 mem_reg_1__2_ ( .D(wr_data[2]), .E(n4), .CP(wr_clk), .Q(mem[26]) );
  EDFQD1 mem_reg_1__3_ ( .D(wr_data[3]), .E(n4), .CP(wr_clk), .Q(mem[27]) );
  EDFQD1 mem_reg_1__4_ ( .D(wr_data[4]), .E(n4), .CP(wr_clk), .Q(mem[28]) );
  EDFQD1 mem_reg_1__5_ ( .D(wr_data[5]), .E(n4), .CP(wr_clk), .Q(mem[29]) );
  EDFQD1 mem_reg_1__6_ ( .D(wr_data[6]), .E(n4), .CP(wr_clk), .Q(mem[30]) );
  EDFQD1 mem_reg_1__7_ ( .D(wr_data[7]), .E(n4), .CP(wr_clk), .Q(mem[31]) );
  EDFQD1 mem_reg_1__8_ ( .D(wr_data[8]), .E(n4), .CP(wr_clk), .Q(mem[32]) );
  EDFQD1 mem_reg_1__9_ ( .D(wr_data[9]), .E(n4), .CP(wr_clk), .Q(mem[33]) );
  EDFQD1 mem_reg_1__10_ ( .D(wr_data[10]), .E(n4), .CP(wr_clk), .Q(mem[34]) );
  EDFQD1 mem_reg_1__11_ ( .D(wr_data[11]), .E(n4), .CP(wr_clk), .Q(mem[35]) );
  EDFQD1 mem_reg_1__12_ ( .D(wr_data[12]), .E(n4), .CP(wr_clk), .Q(mem[36]) );
  EDFQD1 mem_reg_1__13_ ( .D(wr_data[13]), .E(n4), .CP(wr_clk), .Q(mem[37]) );
  EDFQD1 mem_reg_1__14_ ( .D(wr_data[14]), .E(n4), .CP(wr_clk), .Q(mem[38]) );
  EDFQD1 mem_reg_1__15_ ( .D(wr_data[15]), .E(n4), .CP(wr_clk), .Q(mem[39]) );
  EDFQD1 mem_reg_1__16_ ( .D(wr_data[16]), .E(n4), .CP(wr_clk), .Q(mem[40]) );
  EDFQD1 mem_reg_1__17_ ( .D(wr_data[17]), .E(n4), .CP(wr_clk), .Q(mem[41]) );
  EDFQD1 mem_reg_1__18_ ( .D(wr_data[18]), .E(n4), .CP(wr_clk), .Q(mem[42]) );
  EDFQD1 mem_reg_1__19_ ( .D(wr_data[19]), .E(n4), .CP(wr_clk), .Q(mem[43]) );
  EDFQD1 mem_reg_1__20_ ( .D(wr_data[20]), .E(n4), .CP(wr_clk), .Q(mem[44]) );
  EDFQD1 mem_reg_1__21_ ( .D(wr_data[21]), .E(n4), .CP(wr_clk), .Q(mem[45]) );
  EDFQD1 mem_reg_1__22_ ( .D(wr_data[22]), .E(n4), .CP(wr_clk), .Q(mem[46]) );
  EDFQD1 mem_reg_1__23_ ( .D(wr_data[23]), .E(n4), .CP(wr_clk), .Q(mem[47]) );
  EDFQD1 mem_reg_0__1_ ( .D(wr_data[1]), .E(n5), .CP(wr_clk), .Q(mem[1]) );
  EDFQD1 mem_reg_0__2_ ( .D(wr_data[2]), .E(n5), .CP(wr_clk), .Q(mem[2]) );
  EDFQD1 mem_reg_0__3_ ( .D(wr_data[3]), .E(n5), .CP(wr_clk), .Q(mem[3]) );
  EDFQD1 mem_reg_0__4_ ( .D(wr_data[4]), .E(n5), .CP(wr_clk), .Q(mem[4]) );
  EDFQD1 mem_reg_0__5_ ( .D(wr_data[5]), .E(n5), .CP(wr_clk), .Q(mem[5]) );
  EDFQD1 mem_reg_0__6_ ( .D(wr_data[6]), .E(n5), .CP(wr_clk), .Q(mem[6]) );
  EDFQD1 mem_reg_0__7_ ( .D(wr_data[7]), .E(n5), .CP(wr_clk), .Q(mem[7]) );
  EDFQD1 mem_reg_0__8_ ( .D(wr_data[8]), .E(n5), .CP(wr_clk), .Q(mem[8]) );
  EDFQD1 mem_reg_0__9_ ( .D(wr_data[9]), .E(n5), .CP(wr_clk), .Q(mem[9]) );
  EDFQD1 mem_reg_0__10_ ( .D(wr_data[10]), .E(n5), .CP(wr_clk), .Q(mem[10]) );
  EDFQD1 mem_reg_0__11_ ( .D(wr_data[11]), .E(n5), .CP(wr_clk), .Q(mem[11]) );
  EDFQD1 mem_reg_0__12_ ( .D(wr_data[12]), .E(n5), .CP(wr_clk), .Q(mem[12]) );
  EDFQD1 mem_reg_0__13_ ( .D(wr_data[13]), .E(n5), .CP(wr_clk), .Q(mem[13]) );
  EDFQD1 mem_reg_0__14_ ( .D(wr_data[14]), .E(n5), .CP(wr_clk), .Q(mem[14]) );
  EDFQD1 mem_reg_0__15_ ( .D(wr_data[15]), .E(n5), .CP(wr_clk), .Q(mem[15]) );
  EDFQD1 mem_reg_0__16_ ( .D(wr_data[16]), .E(n5), .CP(wr_clk), .Q(mem[16]) );
  EDFQD1 mem_reg_0__17_ ( .D(wr_data[17]), .E(n5), .CP(wr_clk), .Q(mem[17]) );
  EDFQD1 mem_reg_0__18_ ( .D(wr_data[18]), .E(n5), .CP(wr_clk), .Q(mem[18]) );
  EDFQD1 mem_reg_0__19_ ( .D(wr_data[19]), .E(n5), .CP(wr_clk), .Q(mem[19]) );
  EDFQD1 mem_reg_0__20_ ( .D(wr_data[20]), .E(n5), .CP(wr_clk), .Q(mem[20]) );
  EDFQD1 mem_reg_0__21_ ( .D(wr_data[21]), .E(n5), .CP(wr_clk), .Q(mem[21]) );
  EDFQD1 mem_reg_0__22_ ( .D(wr_data[22]), .E(n5), .CP(wr_clk), .Q(mem[22]) );
  EDFQD1 mem_reg_0__23_ ( .D(wr_data[23]), .E(n5), .CP(wr_clk), .Q(mem[23]) );
  EDFQD1 mem_reg_0__0_ ( .D(wr_data[0]), .E(n5), .CP(wr_clk), .Q(mem[0]) );
  DFQD1 mem_reg_2__0_ ( .D(n299), .CP(wr_clk), .Q(mem[48]) );
  DFQD1 mem_reg_2__1_ ( .D(n300), .CP(wr_clk), .Q(mem[49]) );
  DFQD1 mem_reg_2__2_ ( .D(n301), .CP(wr_clk), .Q(mem[50]) );
  DFQD1 mem_reg_2__3_ ( .D(n302), .CP(wr_clk), .Q(mem[51]) );
  DFQD1 mem_reg_2__4_ ( .D(n303), .CP(wr_clk), .Q(mem[52]) );
  DFQD1 mem_reg_2__5_ ( .D(n304), .CP(wr_clk), .Q(mem[53]) );
  DFQD1 mem_reg_2__6_ ( .D(n305), .CP(wr_clk), .Q(mem[54]) );
  DFQD1 mem_reg_2__7_ ( .D(n306), .CP(wr_clk), .Q(mem[55]) );
  DFQD1 mem_reg_2__8_ ( .D(n307), .CP(wr_clk), .Q(mem[56]) );
  DFQD1 mem_reg_2__9_ ( .D(n308), .CP(wr_clk), .Q(mem[57]) );
  DFQD1 mem_reg_2__10_ ( .D(n309), .CP(wr_clk), .Q(mem[58]) );
  DFQD1 mem_reg_2__11_ ( .D(n310), .CP(wr_clk), .Q(mem[59]) );
  DFQD1 mem_reg_2__12_ ( .D(n311), .CP(wr_clk), .Q(mem[60]) );
  DFQD1 mem_reg_2__13_ ( .D(n312), .CP(wr_clk), .Q(mem[61]) );
  DFQD1 mem_reg_2__14_ ( .D(n313), .CP(wr_clk), .Q(mem[62]) );
  DFQD1 mem_reg_2__15_ ( .D(n314), .CP(wr_clk), .Q(mem[63]) );
  DFQD1 mem_reg_2__16_ ( .D(n315), .CP(wr_clk), .Q(mem[64]) );
  DFQD1 mem_reg_2__17_ ( .D(n316), .CP(wr_clk), .Q(mem[65]) );
  DFQD1 mem_reg_2__18_ ( .D(n317), .CP(wr_clk), .Q(mem[66]) );
  DFQD1 mem_reg_2__19_ ( .D(n318), .CP(wr_clk), .Q(mem[67]) );
  DFQD1 mem_reg_2__20_ ( .D(n319), .CP(wr_clk), .Q(mem[68]) );
  DFQD1 mem_reg_2__21_ ( .D(n320), .CP(wr_clk), .Q(mem[69]) );
  DFQD1 mem_reg_2__22_ ( .D(n321), .CP(wr_clk), .Q(mem[70]) );
  EDFQD1 mem_reg_2__23_ ( .D(wr_data[23]), .E(n348), .CP(wr_clk), .Q(mem[71])
         );
  DFCNQD1 wr_ptr_meta_reg_1_ ( .D(wr_ptr_gray[1]), .CP(rd_clk), .CDN(n293), 
        .Q(wr_ptr_meta[1]) );
  DFCNQD1 wr_ptr_sync_reg_1_ ( .D(wr_ptr_meta[1]), .CP(rd_clk), .CDN(n293), 
        .Q(wr_ptr_sync[1]) );
  EDFQD1 mem_reg_3__21_ ( .D(wr_data[21]), .E(n292), .CP(wr_clk), .Q(mem[93])
         );
  EDFQD1 mem_reg_3__22_ ( .D(wr_data[22]), .E(n292), .CP(wr_clk), .Q(mem[94])
         );
  EDFQD1 mem_reg_3__23_ ( .D(wr_data[23]), .E(n292), .CP(wr_clk), .Q(mem[95])
         );
  EDFQD1 mem_reg_3__0_ ( .D(wr_data[0]), .E(n292), .CP(wr_clk), .Q(mem[72]) );
  EDFQD1 mem_reg_3__1_ ( .D(wr_data[1]), .E(n292), .CP(wr_clk), .Q(mem[73]) );
  EDFQD1 mem_reg_3__2_ ( .D(wr_data[2]), .E(n292), .CP(wr_clk), .Q(mem[74]) );
  EDFQD1 mem_reg_3__3_ ( .D(wr_data[3]), .E(n292), .CP(wr_clk), .Q(mem[75]) );
  EDFQD1 mem_reg_3__4_ ( .D(wr_data[4]), .E(n292), .CP(wr_clk), .Q(mem[76]) );
  EDFQD1 mem_reg_3__5_ ( .D(wr_data[5]), .E(n292), .CP(wr_clk), .Q(mem[77]) );
  EDFQD1 mem_reg_3__6_ ( .D(wr_data[6]), .E(n292), .CP(wr_clk), .Q(mem[78]) );
  EDFQD1 mem_reg_3__7_ ( .D(wr_data[7]), .E(n292), .CP(wr_clk), .Q(mem[79]) );
  EDFQD1 mem_reg_3__8_ ( .D(wr_data[8]), .E(n292), .CP(wr_clk), .Q(mem[80]) );
  EDFQD1 mem_reg_3__9_ ( .D(wr_data[9]), .E(n292), .CP(wr_clk), .Q(mem[81]) );
  EDFQD1 mem_reg_3__10_ ( .D(wr_data[10]), .E(n292), .CP(wr_clk), .Q(mem[82])
         );
  EDFQD1 mem_reg_3__11_ ( .D(wr_data[11]), .E(n292), .CP(wr_clk), .Q(mem[83])
         );
  EDFQD1 mem_reg_3__12_ ( .D(wr_data[12]), .E(n292), .CP(wr_clk), .Q(mem[84])
         );
  EDFQD1 mem_reg_3__13_ ( .D(wr_data[13]), .E(n292), .CP(wr_clk), .Q(mem[85])
         );
  EDFQD1 mem_reg_3__14_ ( .D(wr_data[14]), .E(n292), .CP(wr_clk), .Q(mem[86])
         );
  EDFQD1 mem_reg_3__15_ ( .D(wr_data[15]), .E(n292), .CP(wr_clk), .Q(mem[87])
         );
  EDFQD1 mem_reg_3__16_ ( .D(wr_data[16]), .E(n292), .CP(wr_clk), .Q(mem[88])
         );
  EDFQD1 mem_reg_3__17_ ( .D(wr_data[17]), .E(n292), .CP(wr_clk), .Q(mem[89])
         );
  EDFQD1 mem_reg_3__18_ ( .D(wr_data[18]), .E(n292), .CP(wr_clk), .Q(mem[90])
         );
  EDFQD1 mem_reg_3__19_ ( .D(wr_data[19]), .E(n292), .CP(wr_clk), .Q(mem[91])
         );
  EDFQD1 mem_reg_3__20_ ( .D(wr_data[20]), .E(n292), .CP(wr_clk), .Q(mem[92])
         );
  DFQD1 mem_reg_5__0_ ( .D(n8), .CP(wr_clk), .Q(mem[120]) );
  DFQD1 mem_reg_5__1_ ( .D(n9), .CP(wr_clk), .Q(mem[121]) );
  DFQD1 mem_reg_5__2_ ( .D(n10), .CP(wr_clk), .Q(mem[122]) );
  DFQD1 mem_reg_5__3_ ( .D(n11), .CP(wr_clk), .Q(mem[123]) );
  DFQD1 mem_reg_5__4_ ( .D(n12), .CP(wr_clk), .Q(mem[124]) );
  DFQD1 mem_reg_5__5_ ( .D(n13), .CP(wr_clk), .Q(mem[125]) );
  DFQD1 mem_reg_5__6_ ( .D(n14), .CP(wr_clk), .Q(mem[126]) );
  DFQD1 mem_reg_5__7_ ( .D(n15), .CP(wr_clk), .Q(mem[127]) );
  DFQD1 mem_reg_5__8_ ( .D(n16), .CP(wr_clk), .Q(mem[128]) );
  DFQD1 mem_reg_5__9_ ( .D(n17), .CP(wr_clk), .Q(mem[129]) );
  DFQD1 mem_reg_5__10_ ( .D(n18), .CP(wr_clk), .Q(mem[130]) );
  DFQD1 mem_reg_5__11_ ( .D(n19), .CP(wr_clk), .Q(mem[131]) );
  DFQD1 mem_reg_5__12_ ( .D(n20), .CP(wr_clk), .Q(mem[132]) );
  DFQD1 mem_reg_5__13_ ( .D(n21), .CP(wr_clk), .Q(mem[133]) );
  DFQD1 mem_reg_5__14_ ( .D(n22), .CP(wr_clk), .Q(mem[134]) );
  DFQD1 mem_reg_5__15_ ( .D(n23), .CP(wr_clk), .Q(mem[135]) );
  DFQD1 mem_reg_5__16_ ( .D(n24), .CP(wr_clk), .Q(mem[136]) );
  DFQD1 mem_reg_5__17_ ( .D(n25), .CP(wr_clk), .Q(mem[137]) );
  DFQD1 mem_reg_5__18_ ( .D(n26), .CP(wr_clk), .Q(mem[138]) );
  DFQD1 mem_reg_5__19_ ( .D(n27), .CP(wr_clk), .Q(mem[139]) );
  DFQD1 mem_reg_5__20_ ( .D(n28), .CP(wr_clk), .Q(mem[140]) );
  DFQD1 mem_reg_5__21_ ( .D(n29), .CP(wr_clk), .Q(mem[141]) );
  DFQD1 mem_reg_5__22_ ( .D(n30), .CP(wr_clk), .Q(mem[142]) );
  DFQD1 mem_reg_5__23_ ( .D(n31), .CP(wr_clk), .Q(mem[143]) );
  EDFQD1 mem_reg_6__0_ ( .D(wr_data[0]), .E(n349), .CP(wr_clk), .Q(mem[144])
         );
  EDFQD1 mem_reg_6__1_ ( .D(wr_data[1]), .E(n349), .CP(wr_clk), .Q(mem[145])
         );
  EDFQD1 mem_reg_6__2_ ( .D(wr_data[2]), .E(n349), .CP(wr_clk), .Q(mem[146])
         );
  EDFQD1 mem_reg_6__3_ ( .D(wr_data[3]), .E(n349), .CP(wr_clk), .Q(mem[147])
         );
  EDFQD1 mem_reg_6__4_ ( .D(wr_data[4]), .E(n349), .CP(wr_clk), .Q(mem[148])
         );
  EDFQD1 mem_reg_6__5_ ( .D(wr_data[5]), .E(n349), .CP(wr_clk), .Q(mem[149])
         );
  EDFQD1 mem_reg_6__6_ ( .D(wr_data[6]), .E(n349), .CP(wr_clk), .Q(mem[150])
         );
  EDFQD1 mem_reg_6__7_ ( .D(wr_data[7]), .E(n349), .CP(wr_clk), .Q(mem[151])
         );
  EDFQD1 mem_reg_6__8_ ( .D(wr_data[8]), .E(n349), .CP(wr_clk), .Q(mem[152])
         );
  EDFQD1 mem_reg_6__9_ ( .D(wr_data[9]), .E(n349), .CP(wr_clk), .Q(mem[153])
         );
  EDFQD1 mem_reg_6__10_ ( .D(wr_data[10]), .E(n349), .CP(wr_clk), .Q(mem[154])
         );
  EDFQD1 mem_reg_6__11_ ( .D(wr_data[11]), .E(n349), .CP(wr_clk), .Q(mem[155])
         );
  EDFQD1 mem_reg_6__12_ ( .D(wr_data[12]), .E(n349), .CP(wr_clk), .Q(mem[156])
         );
  EDFQD1 mem_reg_6__13_ ( .D(wr_data[13]), .E(n349), .CP(wr_clk), .Q(mem[157])
         );
  EDFQD1 mem_reg_6__14_ ( .D(wr_data[14]), .E(n349), .CP(wr_clk), .Q(mem[158])
         );
  EDFQD1 mem_reg_6__15_ ( .D(wr_data[15]), .E(n349), .CP(wr_clk), .Q(mem[159])
         );
  EDFQD1 mem_reg_6__16_ ( .D(wr_data[16]), .E(n349), .CP(wr_clk), .Q(mem[160])
         );
  EDFQD1 mem_reg_6__17_ ( .D(wr_data[17]), .E(n349), .CP(wr_clk), .Q(mem[161])
         );
  EDFQD1 mem_reg_6__18_ ( .D(wr_data[18]), .E(n349), .CP(wr_clk), .Q(mem[162])
         );
  EDFQD1 mem_reg_6__19_ ( .D(wr_data[19]), .E(n349), .CP(wr_clk), .Q(mem[163])
         );
  EDFQD1 mem_reg_6__20_ ( .D(wr_data[20]), .E(n349), .CP(wr_clk), .Q(mem[164])
         );
  EDFQD1 mem_reg_6__21_ ( .D(wr_data[21]), .E(n349), .CP(wr_clk), .Q(mem[165])
         );
  EDFQD1 mem_reg_6__22_ ( .D(wr_data[22]), .E(n349), .CP(wr_clk), .Q(mem[166])
         );
  EDFQD1 mem_reg_6__23_ ( .D(wr_data[23]), .E(n349), .CP(wr_clk), .Q(mem[167])
         );
  DFCNQD1 wr_ptr_reg_3_ ( .D(n298), .CP(wr_clk), .CDN(n293), .Q(wr_ptr_gray[3]) );
  DFCNQD1 wr_ptr_meta_reg_3_ ( .D(wr_ptr_gray[3]), .CP(rd_clk), .CDN(n293), 
        .Q(wr_ptr_meta[3]) );
  DFCND1 wr_ptr_sync_reg_3_ ( .D(wr_ptr_meta[3]), .CP(rd_clk), .CDN(n293), .Q(
        wr_ptr_sync[3]), .QN() );
  DFCNQD1 wr_ptr_meta_reg_2_ ( .D(wr_ptr_gray[2]), .CP(rd_clk), .CDN(n293), 
        .Q(wr_ptr_meta[2]) );
  DFCNQD1 wr_ptr_sync_reg_2_ ( .D(wr_ptr_meta[2]), .CP(rd_clk), .CDN(n293), 
        .Q(wr_ptr_sync[2]) );
  EDFQD1 mem_reg_7__0_ ( .D(wr_data[0]), .E(n350), .CP(wr_clk), .Q(mem[168])
         );
  EDFQD1 mem_reg_7__1_ ( .D(wr_data[1]), .E(n350), .CP(wr_clk), .Q(mem[169])
         );
  EDFQD1 mem_reg_7__2_ ( .D(wr_data[2]), .E(n350), .CP(wr_clk), .Q(mem[170])
         );
  EDFQD1 mem_reg_7__3_ ( .D(wr_data[3]), .E(n350), .CP(wr_clk), .Q(mem[171])
         );
  EDFQD1 mem_reg_7__4_ ( .D(wr_data[4]), .E(n350), .CP(wr_clk), .Q(mem[172])
         );
  EDFQD1 mem_reg_7__5_ ( .D(wr_data[5]), .E(n350), .CP(wr_clk), .Q(mem[173])
         );
  EDFQD1 mem_reg_7__6_ ( .D(wr_data[6]), .E(n350), .CP(wr_clk), .Q(mem[174])
         );
  EDFQD1 mem_reg_7__7_ ( .D(wr_data[7]), .E(n350), .CP(wr_clk), .Q(mem[175])
         );
  EDFQD1 mem_reg_7__8_ ( .D(wr_data[8]), .E(n350), .CP(wr_clk), .Q(mem[176])
         );
  EDFQD1 mem_reg_7__9_ ( .D(wr_data[9]), .E(n350), .CP(wr_clk), .Q(mem[177])
         );
  EDFQD1 mem_reg_7__10_ ( .D(wr_data[10]), .E(n350), .CP(wr_clk), .Q(mem[178])
         );
  EDFQD1 mem_reg_7__11_ ( .D(wr_data[11]), .E(n350), .CP(wr_clk), .Q(mem[179])
         );
  EDFQD1 mem_reg_7__12_ ( .D(wr_data[12]), .E(n350), .CP(wr_clk), .Q(mem[180])
         );
  EDFQD1 mem_reg_7__13_ ( .D(wr_data[13]), .E(n350), .CP(wr_clk), .Q(mem[181])
         );
  EDFQD1 mem_reg_7__14_ ( .D(wr_data[14]), .E(n350), .CP(wr_clk), .Q(mem[182])
         );
  EDFQD1 mem_reg_7__15_ ( .D(wr_data[15]), .E(n350), .CP(wr_clk), .Q(mem[183])
         );
  EDFQD1 mem_reg_7__16_ ( .D(wr_data[16]), .E(n350), .CP(wr_clk), .Q(mem[184])
         );
  EDFQD1 mem_reg_7__17_ ( .D(wr_data[17]), .E(n350), .CP(wr_clk), .Q(mem[185])
         );
  EDFQD1 mem_reg_7__18_ ( .D(wr_data[18]), .E(n350), .CP(wr_clk), .Q(mem[186])
         );
  EDFQD1 mem_reg_7__19_ ( .D(wr_data[19]), .E(n350), .CP(wr_clk), .Q(mem[187])
         );
  EDFQD1 mem_reg_7__20_ ( .D(wr_data[20]), .E(n350), .CP(wr_clk), .Q(mem[188])
         );
  EDFQD1 mem_reg_7__21_ ( .D(wr_data[21]), .E(n350), .CP(wr_clk), .Q(mem[189])
         );
  EDFQD1 mem_reg_7__22_ ( .D(wr_data[22]), .E(n350), .CP(wr_clk), .Q(mem[190])
         );
  EDFQD1 mem_reg_7__23_ ( .D(wr_data[23]), .E(n350), .CP(wr_clk), .Q(mem[191])
         );
  DFCNQD1 rd_data_reg_0_ ( .D(n323), .CP(rd_clk), .CDN(n293), .Q(rd_data[0])
         );
  DFCNQD1 rd_data_reg_23_ ( .D(n324), .CP(rd_clk), .CDN(n293), .Q(rd_data[23])
         );
  DFCNQD1 rd_data_reg_22_ ( .D(n325), .CP(rd_clk), .CDN(n293), .Q(rd_data[22])
         );
  DFCNQD1 rd_data_reg_21_ ( .D(n326), .CP(rd_clk), .CDN(n293), .Q(rd_data[21])
         );
  DFCNQD1 rd_data_reg_20_ ( .D(n327), .CP(rd_clk), .CDN(n293), .Q(rd_data[20])
         );
  DFCNQD1 rd_data_reg_19_ ( .D(n328), .CP(rd_clk), .CDN(n293), .Q(rd_data[19])
         );
  DFCNQD1 rd_data_reg_18_ ( .D(n329), .CP(rd_clk), .CDN(n293), .Q(rd_data[18])
         );
  DFCNQD1 rd_data_reg_17_ ( .D(n330), .CP(rd_clk), .CDN(n293), .Q(rd_data[17])
         );
  DFCNQD1 rd_data_reg_16_ ( .D(n331), .CP(rd_clk), .CDN(n293), .Q(rd_data[16])
         );
  DFCNQD1 rd_data_reg_15_ ( .D(n332), .CP(rd_clk), .CDN(n293), .Q(rd_data[15])
         );
  DFCNQD1 rd_data_reg_14_ ( .D(n333), .CP(rd_clk), .CDN(n293), .Q(rd_data[14])
         );
  DFCNQD1 rd_data_reg_13_ ( .D(n334), .CP(rd_clk), .CDN(n293), .Q(rd_data[13])
         );
  DFCNQD1 rd_data_reg_12_ ( .D(n335), .CP(rd_clk), .CDN(n293), .Q(rd_data[12])
         );
  DFCNQD1 rd_data_reg_11_ ( .D(n336), .CP(rd_clk), .CDN(n293), .Q(rd_data[11])
         );
  DFCNQD1 rd_data_reg_10_ ( .D(n337), .CP(rd_clk), .CDN(n293), .Q(rd_data[10])
         );
  DFCNQD1 rd_data_reg_9_ ( .D(n338), .CP(rd_clk), .CDN(n293), .Q(rd_data[9])
         );
  DFCNQD1 rd_data_reg_8_ ( .D(n339), .CP(rd_clk), .CDN(n293), .Q(rd_data[8])
         );
  DFCNQD1 rd_data_reg_7_ ( .D(n340), .CP(rd_clk), .CDN(n293), .Q(rd_data[7])
         );
  DFCNQD1 rd_data_reg_6_ ( .D(n341), .CP(rd_clk), .CDN(n293), .Q(rd_data[6])
         );
  DFCNQD1 rd_data_reg_5_ ( .D(n342), .CP(rd_clk), .CDN(n293), .Q(rd_data[5])
         );
  DFCNQD1 rd_data_reg_4_ ( .D(n343), .CP(rd_clk), .CDN(n293), .Q(rd_data[4])
         );
  DFCNQD1 rd_data_reg_3_ ( .D(n344), .CP(rd_clk), .CDN(n293), .Q(rd_data[3])
         );
  DFCNQD1 rd_data_reg_2_ ( .D(n345), .CP(rd_clk), .CDN(n293), .Q(rd_data[2])
         );
  DFCNQD1 rd_data_reg_1_ ( .D(n346), .CP(rd_clk), .CDN(n293), .Q(rd_data[1])
         );
  DFQD1 mem_reg_4__1_ ( .D(n32), .CP(wr_clk), .Q(mem[97]) );
  DFQD1 mem_reg_4__2_ ( .D(n33), .CP(wr_clk), .Q(mem[98]) );
  DFQD1 mem_reg_4__3_ ( .D(n34), .CP(wr_clk), .Q(mem[99]) );
  DFQD1 mem_reg_4__4_ ( .D(n35), .CP(wr_clk), .Q(mem[100]) );
  DFQD1 mem_reg_4__5_ ( .D(n36), .CP(wr_clk), .Q(mem[101]) );
  DFQD1 mem_reg_4__6_ ( .D(n37), .CP(wr_clk), .Q(mem[102]) );
  DFQD1 mem_reg_4__7_ ( .D(n38), .CP(wr_clk), .Q(mem[103]) );
  DFQD1 mem_reg_4__8_ ( .D(n39), .CP(wr_clk), .Q(mem[104]) );
  DFQD1 mem_reg_4__12_ ( .D(n40), .CP(wr_clk), .Q(mem[108]) );
  DFQD1 mem_reg_4__13_ ( .D(n41), .CP(wr_clk), .Q(mem[109]) );
  DFQD1 mem_reg_4__14_ ( .D(n42), .CP(wr_clk), .Q(mem[110]) );
  DFQD1 mem_reg_4__15_ ( .D(n43), .CP(wr_clk), .Q(mem[111]) );
  DFQD1 mem_reg_4__16_ ( .D(n44), .CP(wr_clk), .Q(mem[112]) );
  DFQD1 mem_reg_4__17_ ( .D(n45), .CP(wr_clk), .Q(mem[113]) );
  DFQD1 mem_reg_4__18_ ( .D(n46), .CP(wr_clk), .Q(mem[114]) );
  DFQD1 mem_reg_4__19_ ( .D(n47), .CP(wr_clk), .Q(mem[115]) );
  DFQD1 mem_reg_4__20_ ( .D(n48), .CP(wr_clk), .Q(mem[116]) );
  DFQD1 mem_reg_4__21_ ( .D(n49), .CP(wr_clk), .Q(mem[117]) );
  DFQD1 mem_reg_4__22_ ( .D(n50), .CP(wr_clk), .Q(mem[118]) );
  DFQD1 mem_reg_4__23_ ( .D(n51), .CP(wr_clk), .Q(mem[119]) );
  DFQD1 mem_reg_4__9_ ( .D(n291), .CP(wr_clk), .Q(mem[105]) );
  DFQD1 mem_reg_4__10_ ( .D(n290), .CP(wr_clk), .Q(mem[106]) );
  DFQD1 mem_reg_4__11_ ( .D(n289), .CP(wr_clk), .Q(mem[107]) );
  DFQD1 mem_reg_4__0_ ( .D(n322), .CP(wr_clk), .Q(mem[96]) );
  EDFCNQD1 wr_ptr_reg_2_ ( .D(N34), .E(N22), .CP(wr_clk), .CDN(n293), .Q(
        wr_ptr[2]) );
  DFCNQD1 wr_ptr_reg_0_ ( .D(n351), .CP(wr_clk), .CDN(n293), .Q(wr_ptr[0]) );
  INVD1 U3 ( .I(n162), .ZN(n163) );
  ND3D1 U4 ( .A1(N22), .A2(n249), .A3(n293), .ZN(n245) );
  INVD0 U5 ( .I(wr_ptr[1]), .ZN(n249) );
  NR2XD0 U6 ( .A1(n246), .A2(n249), .ZN(n254) );
  XOR2D0 U7 ( .A1(n92), .A2(rd_ptr_gray[3]), .Z(n297) );
  CKND2D1 U8 ( .A1(n252), .A2(n287), .ZN(n76) );
  BUFFD2 U9 ( .I(n247), .Z(n4) );
  NR2D1 U10 ( .A1(n255), .A2(n245), .ZN(n161) );
  BUFFD2 U11 ( .I(n244), .Z(n5) );
  ND2D0 U12 ( .A1(N22), .A2(n254), .ZN(n251) );
  CKND2D1 U13 ( .A1(n253), .A2(n288), .ZN(n79) );
  XOR2D0 U14 ( .A1(wr_ptr_sync[3]), .A2(wr_ptr_sync[2]), .Z(n62) );
  XOR2D0 U15 ( .A1(rd_ptr_gray[3]), .A2(wr_ptr_sync[3]), .Z(n65) );
  CKND2 U16 ( .I(reset), .ZN(n293) );
  NR4D8 U17 ( .A1(reset), .A2(n249), .A3(n255), .A4(n248), .ZN(n349) );
  AN2D2 U18 ( .A1(n161), .A2(n246), .Z(n74) );
  CKND2D0 U19 ( .A1(n347), .A2(n78), .ZN(n77) );
  OAI21D0 U20 ( .A1(n64), .A2(n63), .B(rd_ptr[2]), .ZN(n69) );
  INVD0 U21 ( .I(n62), .ZN(n63) );
  AOI21D0 U22 ( .A1(mem[49]), .A2(n235), .B(n227), .ZN(n231) );
  AOI21D0 U23 ( .A1(mem[52]), .A2(n235), .B(n103), .ZN(n107) );
  AOI21D0 U24 ( .A1(mem[53]), .A2(n235), .B(n143), .ZN(n147) );
  AOI21D0 U25 ( .A1(mem[57]), .A2(n235), .B(n108), .ZN(n112) );
  AOI21D0 U26 ( .A1(mem[64]), .A2(n235), .B(n118), .ZN(n122) );
  AOI21D0 U27 ( .A1(mem[67]), .A2(n235), .B(n75), .ZN(n85) );
  AOI21D0 U28 ( .A1(mem[68]), .A2(n235), .B(n91), .ZN(n96) );
  NR3D0 U29 ( .A1(n79), .A2(n347), .A3(n78), .ZN(n98) );
  NR2D1 U30 ( .A1(n79), .A2(n77), .ZN(n237) );
  AOI21D0 U31 ( .A1(mem[48]), .A2(n235), .B(n216), .ZN(n220) );
  INVD0 U32 ( .I(wr_ptr_gray[3]), .ZN(n286) );
  CKND2D0 U33 ( .A1(N22), .A2(n246), .ZN(n248) );
  INVD0 U34 ( .I(rd_ptr[2]), .ZN(n78) );
  INVD1 U35 ( .I(n74), .ZN(n243) );
  AOI21D0 U36 ( .A1(mem[50]), .A2(n235), .B(n176), .ZN(n181) );
  AOI21D0 U37 ( .A1(mem[51]), .A2(n235), .B(n97), .ZN(n102) );
  AOI21D0 U38 ( .A1(mem[54]), .A2(n235), .B(n234), .ZN(n241) );
  AOI21D0 U39 ( .A1(mem[55]), .A2(n235), .B(n165), .ZN(n170) );
  AOI21D0 U40 ( .A1(mem[56]), .A2(n235), .B(n171), .ZN(n175) );
  AOI21D0 U41 ( .A1(mem[58]), .A2(n235), .B(n148), .ZN(n154) );
  AOI21D0 U42 ( .A1(mem[59]), .A2(n235), .B(n155), .ZN(n159) );
  AOI21D0 U43 ( .A1(mem[61]), .A2(n235), .B(n211), .ZN(n215) );
  AOI21D0 U44 ( .A1(mem[62]), .A2(n235), .B(n221), .ZN(n226) );
  AOI21D0 U45 ( .A1(mem[63]), .A2(n235), .B(n113), .ZN(n117) );
  AOI21D0 U46 ( .A1(mem[65]), .A2(n235), .B(n138), .ZN(n142) );
  AOI21D0 U47 ( .A1(mem[66]), .A2(n235), .B(n86), .ZN(n90) );
  AOI21D0 U48 ( .A1(mem[69]), .A2(n235), .B(n133), .ZN(n137) );
  AOI21D0 U49 ( .A1(mem[70]), .A2(n235), .B(n128), .ZN(n132) );
  AOI21D0 U50 ( .A1(n235), .A2(mem[71]), .B(n123), .ZN(n127) );
  INVD0 U51 ( .I(n76), .ZN(n73) );
  AOI31D1 U52 ( .A1(n70), .A2(n69), .A3(n68), .B(n67), .ZN(n253) );
  AOI21D0 U53 ( .A1(n287), .A2(n66), .B(n65), .ZN(n68) );
  OAI21D0 U54 ( .A1(n61), .A2(n62), .B(n78), .ZN(n70) );
  NR2D0 U55 ( .A1(n232), .A2(n288), .ZN(n252) );
  OA21D1 U56 ( .A1(n59), .A2(n58), .B(fifo_wr), .Z(N22) );
  MUX2D0 U57 ( .I0(wr_data[0]), .I1(mem[96]), .S(n243), .Z(n322) );
  ND4D0 U58 ( .A1(n231), .A2(n230), .A3(n229), .A4(n228), .ZN(n346) );
  AOI22D0 U59 ( .A1(n7), .A2(mem[25]), .B1(n237), .B2(mem[1]), .ZN(n229) );
  AOI22D0 U60 ( .A1(n98), .A2(mem[145]), .B1(mem[121]), .B2(n166), .ZN(n228)
         );
  ND4D0 U61 ( .A1(n181), .A2(n180), .A3(n179), .A4(n177), .ZN(n345) );
  AOI22D0 U62 ( .A1(n7), .A2(mem[26]), .B1(n237), .B2(mem[2]), .ZN(n179) );
  AOI22D0 U63 ( .A1(n92), .A2(mem[170]), .B1(n236), .B2(mem[74]), .ZN(n180) );
  AOI22D0 U64 ( .A1(n98), .A2(mem[146]), .B1(mem[122]), .B2(n166), .ZN(n177)
         );
  ND4D0 U65 ( .A1(n102), .A2(n101), .A3(n100), .A4(n99), .ZN(n344) );
  AOI22D0 U66 ( .A1(n7), .A2(mem[27]), .B1(n237), .B2(mem[3]), .ZN(n100) );
  AOI22D0 U67 ( .A1(n92), .A2(mem[171]), .B1(n236), .B2(mem[75]), .ZN(n101) );
  AOI22D0 U68 ( .A1(n98), .A2(mem[147]), .B1(mem[123]), .B2(n166), .ZN(n99) );
  AOI22D0 U69 ( .A1(n7), .A2(mem[28]), .B1(n237), .B2(mem[4]), .ZN(n105) );
  AOI22D0 U70 ( .A1(n222), .A2(mem[148]), .B1(mem[124]), .B2(n166), .ZN(n104)
         );
  AOI22D0 U71 ( .A1(n92), .A2(mem[172]), .B1(n236), .B2(mem[76]), .ZN(n106) );
  ND4D0 U72 ( .A1(n147), .A2(n146), .A3(n145), .A4(n144), .ZN(n342) );
  AOI22D0 U73 ( .A1(n92), .A2(mem[173]), .B1(n236), .B2(mem[77]), .ZN(n146) );
  AOI22D0 U74 ( .A1(n98), .A2(mem[149]), .B1(mem[125]), .B2(n166), .ZN(n144)
         );
  ND4D0 U75 ( .A1(n241), .A2(n240), .A3(n239), .A4(n238), .ZN(n341) );
  AOI22D0 U76 ( .A1(n7), .A2(mem[30]), .B1(n237), .B2(mem[6]), .ZN(n239) );
  AOI22D0 U77 ( .A1(n92), .A2(mem[174]), .B1(n236), .B2(mem[78]), .ZN(n240) );
  AOI22D0 U78 ( .A1(n98), .A2(mem[150]), .B1(mem[126]), .B2(n166), .ZN(n238)
         );
  ND4D0 U79 ( .A1(n170), .A2(n169), .A3(n168), .A4(n167), .ZN(n340) );
  AOI22D0 U80 ( .A1(n7), .A2(mem[31]), .B1(n237), .B2(mem[7]), .ZN(n168) );
  AOI22D0 U81 ( .A1(n92), .A2(mem[175]), .B1(n236), .B2(mem[79]), .ZN(n169) );
  AOI22D0 U82 ( .A1(n98), .A2(mem[151]), .B1(mem[127]), .B2(n166), .ZN(n167)
         );
  ND4D0 U83 ( .A1(n175), .A2(n174), .A3(n173), .A4(n172), .ZN(n339) );
  AOI22D0 U84 ( .A1(n7), .A2(mem[32]), .B1(n237), .B2(mem[8]), .ZN(n173) );
  AOI22D0 U85 ( .A1(n92), .A2(mem[176]), .B1(n236), .B2(mem[80]), .ZN(n174) );
  AOI22D0 U86 ( .A1(n98), .A2(mem[152]), .B1(mem[128]), .B2(n166), .ZN(n172)
         );
  ND4D0 U87 ( .A1(n112), .A2(n111), .A3(n110), .A4(n109), .ZN(n338) );
  AOI22D0 U88 ( .A1(n7), .A2(mem[33]), .B1(n237), .B2(mem[9]), .ZN(n110) );
  AOI22D0 U89 ( .A1(n92), .A2(mem[177]), .B1(n236), .B2(mem[81]), .ZN(n111) );
  ND4D0 U90 ( .A1(n154), .A2(n153), .A3(n152), .A4(n150), .ZN(n337) );
  AOI22D0 U91 ( .A1(n7), .A2(mem[34]), .B1(n237), .B2(mem[10]), .ZN(n152) );
  AOI22D0 U92 ( .A1(n92), .A2(mem[178]), .B1(n236), .B2(mem[82]), .ZN(n153) );
  AOI22D0 U93 ( .A1(n98), .A2(mem[154]), .B1(mem[130]), .B2(n166), .ZN(n150)
         );
  ND4D0 U94 ( .A1(n159), .A2(n158), .A3(n157), .A4(n156), .ZN(n336) );
  AOI22D0 U95 ( .A1(n7), .A2(mem[35]), .B1(n237), .B2(mem[11]), .ZN(n157) );
  AOI22D0 U96 ( .A1(n92), .A2(mem[179]), .B1(n236), .B2(mem[83]), .ZN(n158) );
  AOI22D0 U97 ( .A1(n98), .A2(mem[155]), .B1(mem[131]), .B2(n166), .ZN(n156)
         );
  ND4D0 U98 ( .A1(n210), .A2(n185), .A3(n184), .A4(n183), .ZN(n335) );
  AOI22D0 U99 ( .A1(n7), .A2(mem[36]), .B1(n237), .B2(mem[12]), .ZN(n184) );
  AOI22D0 U100 ( .A1(n92), .A2(mem[180]), .B1(n236), .B2(mem[84]), .ZN(n185)
         );
  AOI22D0 U101 ( .A1(n222), .A2(mem[156]), .B1(mem[132]), .B2(n166), .ZN(n183)
         );
  ND4D0 U102 ( .A1(n215), .A2(n214), .A3(n213), .A4(n212), .ZN(n334) );
  AOI22D0 U103 ( .A1(n7), .A2(mem[37]), .B1(n237), .B2(mem[13]), .ZN(n213) );
  AOI22D0 U104 ( .A1(n92), .A2(mem[181]), .B1(n236), .B2(mem[85]), .ZN(n214)
         );
  AOI22D0 U105 ( .A1(n222), .A2(mem[157]), .B1(mem[133]), .B2(n166), .ZN(n212)
         );
  ND4D0 U106 ( .A1(n226), .A2(n225), .A3(n224), .A4(n223), .ZN(n333) );
  AOI22D0 U107 ( .A1(n7), .A2(mem[38]), .B1(n237), .B2(mem[14]), .ZN(n224) );
  AOI22D0 U108 ( .A1(n92), .A2(mem[182]), .B1(n236), .B2(mem[86]), .ZN(n225)
         );
  AOI22D0 U109 ( .A1(n222), .A2(mem[158]), .B1(mem[134]), .B2(n166), .ZN(n223)
         );
  ND4D0 U110 ( .A1(n117), .A2(n116), .A3(n115), .A4(n114), .ZN(n332) );
  AOI22D0 U111 ( .A1(n7), .A2(mem[39]), .B1(n237), .B2(mem[15]), .ZN(n115) );
  AOI22D0 U112 ( .A1(n92), .A2(mem[183]), .B1(n236), .B2(mem[87]), .ZN(n116)
         );
  AOI22D0 U113 ( .A1(n222), .A2(mem[159]), .B1(mem[135]), .B2(n166), .ZN(n114)
         );
  ND4D0 U114 ( .A1(n122), .A2(n121), .A3(n120), .A4(n119), .ZN(n331) );
  AOI22D0 U115 ( .A1(n7), .A2(mem[40]), .B1(n237), .B2(mem[16]), .ZN(n120) );
  AOI22D0 U116 ( .A1(n222), .A2(mem[160]), .B1(mem[136]), .B2(n166), .ZN(n119)
         );
  ND4D0 U117 ( .A1(n142), .A2(n141), .A3(n140), .A4(n139), .ZN(n330) );
  AOI22D0 U118 ( .A1(n7), .A2(mem[41]), .B1(n237), .B2(mem[17]), .ZN(n140) );
  AOI22D0 U119 ( .A1(n92), .A2(mem[185]), .B1(n236), .B2(mem[89]), .ZN(n141)
         );
  AOI22D0 U120 ( .A1(n222), .A2(mem[161]), .B1(mem[137]), .B2(n166), .ZN(n139)
         );
  ND4D0 U121 ( .A1(n90), .A2(n89), .A3(n88), .A4(n87), .ZN(n329) );
  AOI22D0 U122 ( .A1(n7), .A2(mem[42]), .B1(n237), .B2(mem[18]), .ZN(n88) );
  AOI22D0 U123 ( .A1(n92), .A2(mem[186]), .B1(n236), .B2(mem[90]), .ZN(n89) );
  AOI22D0 U124 ( .A1(n222), .A2(mem[162]), .B1(mem[138]), .B2(n166), .ZN(n87)
         );
  AOI22D0 U125 ( .A1(n7), .A2(mem[43]), .B1(n237), .B2(mem[19]), .ZN(n83) );
  AOI22D0 U126 ( .A1(n222), .A2(mem[163]), .B1(mem[139]), .B2(n166), .ZN(n82)
         );
  AOI22D0 U127 ( .A1(n92), .A2(mem[187]), .B1(n236), .B2(mem[91]), .ZN(n84) );
  ND4D0 U128 ( .A1(n96), .A2(n95), .A3(n94), .A4(n93), .ZN(n327) );
  AOI22D0 U129 ( .A1(n92), .A2(mem[188]), .B1(n236), .B2(mem[92]), .ZN(n95) );
  AOI22D0 U130 ( .A1(n222), .A2(mem[164]), .B1(mem[140]), .B2(n166), .ZN(n93)
         );
  ND4D0 U131 ( .A1(n137), .A2(n136), .A3(n135), .A4(n134), .ZN(n326) );
  AOI22D0 U132 ( .A1(n7), .A2(mem[45]), .B1(n237), .B2(mem[21]), .ZN(n135) );
  AOI22D0 U133 ( .A1(n92), .A2(mem[189]), .B1(n236), .B2(mem[93]), .ZN(n136)
         );
  AOI22D0 U134 ( .A1(n222), .A2(mem[165]), .B1(mem[141]), .B2(n166), .ZN(n134)
         );
  ND4D0 U135 ( .A1(n132), .A2(n131), .A3(n130), .A4(n129), .ZN(n325) );
  AOI22D0 U136 ( .A1(n7), .A2(mem[46]), .B1(n237), .B2(mem[22]), .ZN(n130) );
  AOI22D0 U137 ( .A1(n92), .A2(mem[190]), .B1(n236), .B2(mem[94]), .ZN(n131)
         );
  AOI22D0 U138 ( .A1(n222), .A2(mem[166]), .B1(mem[142]), .B2(n166), .ZN(n129)
         );
  ND4D0 U139 ( .A1(n127), .A2(n126), .A3(n125), .A4(n124), .ZN(n324) );
  AOI22D0 U140 ( .A1(n7), .A2(mem[47]), .B1(n237), .B2(mem[23]), .ZN(n125) );
  AOI22D0 U141 ( .A1(n92), .A2(mem[191]), .B1(n236), .B2(mem[95]), .ZN(n126)
         );
  AOI22D0 U142 ( .A1(n222), .A2(mem[167]), .B1(mem[143]), .B2(n166), .ZN(n124)
         );
  ND4D0 U143 ( .A1(n220), .A2(n219), .A3(n218), .A4(n217), .ZN(n323) );
  AOI22D0 U144 ( .A1(n7), .A2(mem[24]), .B1(n237), .B2(mem[0]), .ZN(n218) );
  AOI22D0 U145 ( .A1(n92), .A2(mem[168]), .B1(n236), .B2(mem[72]), .ZN(n219)
         );
  MUX2D0 U146 ( .I0(mem[70]), .I1(wr_data[22]), .S(n348), .Z(n321) );
  MUX2D0 U147 ( .I0(mem[69]), .I1(wr_data[21]), .S(n348), .Z(n320) );
  MUX2D0 U148 ( .I0(mem[68]), .I1(wr_data[20]), .S(n348), .Z(n319) );
  MUX2D0 U149 ( .I0(mem[67]), .I1(wr_data[19]), .S(n348), .Z(n318) );
  MUX2D0 U150 ( .I0(mem[66]), .I1(wr_data[18]), .S(n348), .Z(n317) );
  MUX2D0 U151 ( .I0(mem[65]), .I1(wr_data[17]), .S(n348), .Z(n316) );
  MUX2D0 U152 ( .I0(mem[64]), .I1(wr_data[16]), .S(n348), .Z(n315) );
  MUX2D0 U153 ( .I0(mem[63]), .I1(wr_data[15]), .S(n348), .Z(n314) );
  MUX2D0 U154 ( .I0(mem[61]), .I1(wr_data[13]), .S(n348), .Z(n312) );
  MUX2D0 U155 ( .I0(mem[60]), .I1(wr_data[12]), .S(n348), .Z(n311) );
  MUX2D0 U156 ( .I0(mem[59]), .I1(wr_data[11]), .S(n348), .Z(n310) );
  MUX2D0 U157 ( .I0(mem[58]), .I1(wr_data[10]), .S(n348), .Z(n309) );
  MUX2D0 U158 ( .I0(mem[57]), .I1(wr_data[9]), .S(n348), .Z(n308) );
  MUX2D0 U159 ( .I0(mem[56]), .I1(wr_data[8]), .S(n348), .Z(n307) );
  MUX2D0 U160 ( .I0(mem[55]), .I1(wr_data[7]), .S(n348), .Z(n306) );
  MUX2D0 U161 ( .I0(mem[54]), .I1(wr_data[6]), .S(n348), .Z(n305) );
  MUX2D0 U162 ( .I0(mem[53]), .I1(wr_data[5]), .S(n348), .Z(n304) );
  MUX2D0 U163 ( .I0(mem[52]), .I1(wr_data[4]), .S(n348), .Z(n303) );
  MUX2D0 U164 ( .I0(mem[51]), .I1(wr_data[3]), .S(n348), .Z(n302) );
  MUX2D0 U165 ( .I0(mem[50]), .I1(wr_data[2]), .S(n348), .Z(n301) );
  MUX2D0 U166 ( .I0(mem[49]), .I1(wr_data[1]), .S(n348), .Z(n300) );
  MUX2D0 U167 ( .I0(mem[48]), .I1(wr_data[0]), .S(n348), .Z(n299) );
  AOI21D0 U168 ( .A1(n249), .A2(n71), .B(n250), .ZN(n352) );
  OAI21D0 U169 ( .A1(n73), .A2(n78), .B(n72), .ZN(n296) );
  INVD0 U170 ( .I(n236), .ZN(n72) );
  AOI21D0 U171 ( .A1(n347), .A2(n81), .B(n73), .ZN(n295) );
  IAO21D0 U172 ( .A1(n253), .A2(rd_ptr[0]), .B(n252), .ZN(n294) );
  NR2D2 U173 ( .A1(n76), .A2(n78), .ZN(n92) );
  NR2D2 U174 ( .A1(n81), .A2(n77), .ZN(n7) );
  CKND2D0 U175 ( .A1(wr_ptr[0]), .A2(n161), .ZN(n162) );
  CKBD1 U176 ( .I(n162), .Z(n164) );
  OA22D0 U177 ( .A1(n164), .A2(wr_data[0]), .B1(mem[120]), .B2(n163), .Z(n8)
         );
  OA22D0 U178 ( .A1(n164), .A2(wr_data[1]), .B1(n163), .B2(mem[121]), .Z(n9)
         );
  OA22D0 U179 ( .A1(n164), .A2(wr_data[2]), .B1(n163), .B2(mem[122]), .Z(n10)
         );
  OA22D0 U180 ( .A1(n164), .A2(wr_data[3]), .B1(n163), .B2(mem[123]), .Z(n11)
         );
  OA22D0 U181 ( .A1(n164), .A2(wr_data[4]), .B1(n163), .B2(mem[124]), .Z(n12)
         );
  OA22D0 U182 ( .A1(n164), .A2(wr_data[5]), .B1(n163), .B2(mem[125]), .Z(n13)
         );
  OA22D0 U183 ( .A1(n164), .A2(wr_data[6]), .B1(n163), .B2(mem[126]), .Z(n14)
         );
  OA22D0 U184 ( .A1(n164), .A2(wr_data[7]), .B1(n163), .B2(mem[127]), .Z(n15)
         );
  OA22D0 U185 ( .A1(n164), .A2(wr_data[8]), .B1(n163), .B2(mem[128]), .Z(n16)
         );
  OA22D0 U186 ( .A1(n164), .A2(wr_data[9]), .B1(n163), .B2(mem[129]), .Z(n17)
         );
  OA22D0 U187 ( .A1(n164), .A2(wr_data[10]), .B1(n163), .B2(mem[130]), .Z(n18)
         );
  OA22D0 U188 ( .A1(n164), .A2(wr_data[11]), .B1(n163), .B2(mem[131]), .Z(n19)
         );
  OA22D0 U189 ( .A1(n164), .A2(wr_data[12]), .B1(n163), .B2(mem[132]), .Z(n20)
         );
  OA22D0 U190 ( .A1(n164), .A2(wr_data[13]), .B1(n163), .B2(mem[133]), .Z(n21)
         );
  OA22D0 U191 ( .A1(n164), .A2(wr_data[14]), .B1(n163), .B2(mem[134]), .Z(n22)
         );
  OA22D0 U192 ( .A1(n164), .A2(wr_data[15]), .B1(n163), .B2(mem[135]), .Z(n23)
         );
  OA22D0 U193 ( .A1(n164), .A2(wr_data[16]), .B1(n163), .B2(mem[136]), .Z(n24)
         );
  OA22D0 U194 ( .A1(n164), .A2(wr_data[17]), .B1(n163), .B2(mem[137]), .Z(n25)
         );
  OA22D0 U195 ( .A1(n164), .A2(wr_data[18]), .B1(n163), .B2(mem[138]), .Z(n26)
         );
  OA22D0 U196 ( .A1(n164), .A2(wr_data[19]), .B1(n163), .B2(mem[139]), .Z(n27)
         );
  OA22D0 U197 ( .A1(n164), .A2(wr_data[20]), .B1(n163), .B2(mem[140]), .Z(n28)
         );
  OA22D0 U198 ( .A1(n164), .A2(wr_data[21]), .B1(n163), .B2(mem[141]), .Z(n29)
         );
  OA22D0 U199 ( .A1(n164), .A2(wr_data[22]), .B1(n163), .B2(mem[142]), .Z(n30)
         );
  OA22D0 U200 ( .A1(n164), .A2(wr_data[23]), .B1(n163), .B2(mem[143]), .Z(n31)
         );
  OA22D0 U201 ( .A1(n243), .A2(wr_data[1]), .B1(mem[97]), .B2(n74), .Z(n32) );
  OA22D0 U202 ( .A1(n243), .A2(wr_data[2]), .B1(n74), .B2(mem[98]), .Z(n33) );
  OA22D0 U203 ( .A1(n243), .A2(wr_data[3]), .B1(n74), .B2(mem[99]), .Z(n34) );
  OA22D0 U204 ( .A1(n243), .A2(wr_data[4]), .B1(n74), .B2(mem[100]), .Z(n35)
         );
  OA22D0 U205 ( .A1(n243), .A2(wr_data[5]), .B1(n74), .B2(mem[101]), .Z(n36)
         );
  OA22D0 U206 ( .A1(n243), .A2(wr_data[6]), .B1(n74), .B2(mem[102]), .Z(n37)
         );
  OA22D0 U207 ( .A1(n243), .A2(wr_data[7]), .B1(n74), .B2(mem[103]), .Z(n38)
         );
  OA22D0 U208 ( .A1(n243), .A2(wr_data[8]), .B1(n74), .B2(mem[104]), .Z(n39)
         );
  OA22D0 U209 ( .A1(n243), .A2(wr_data[12]), .B1(n242), .B2(mem[108]), .Z(n40)
         );
  OA22D0 U210 ( .A1(n243), .A2(wr_data[13]), .B1(n242), .B2(mem[109]), .Z(n41)
         );
  OA22D0 U211 ( .A1(n243), .A2(wr_data[14]), .B1(n242), .B2(mem[110]), .Z(n42)
         );
  OA22D0 U212 ( .A1(n243), .A2(wr_data[15]), .B1(n242), .B2(mem[111]), .Z(n43)
         );
  OA22D0 U213 ( .A1(n243), .A2(wr_data[16]), .B1(n242), .B2(mem[112]), .Z(n44)
         );
  OA22D0 U214 ( .A1(n243), .A2(wr_data[17]), .B1(n242), .B2(mem[113]), .Z(n45)
         );
  OA22D0 U215 ( .A1(n243), .A2(wr_data[18]), .B1(n242), .B2(mem[114]), .Z(n46)
         );
  OA22D0 U216 ( .A1(n243), .A2(wr_data[19]), .B1(n242), .B2(mem[115]), .Z(n47)
         );
  OA22D0 U217 ( .A1(n243), .A2(wr_data[20]), .B1(n242), .B2(mem[116]), .Z(n48)
         );
  OA22D0 U218 ( .A1(n243), .A2(wr_data[21]), .B1(n242), .B2(mem[117]), .Z(n49)
         );
  OA22D0 U219 ( .A1(n243), .A2(wr_data[22]), .B1(n242), .B2(mem[118]), .Z(n50)
         );
  OA22D0 U220 ( .A1(n243), .A2(wr_data[23]), .B1(n242), .B2(mem[119]), .Z(n51)
         );
  INVD0 U221 ( .I(wr_ptr_sync[1]), .ZN(n60) );
  INVD0 U222 ( .I(rd_ptr_sync[1]), .ZN(n53) );
  CKBD1 U223 ( .I(n74), .Z(n242) );
  AOI22D0 U224 ( .A1(n92), .A2(mem[169]), .B1(n236), .B2(mem[73]), .ZN(n230)
         );
  AOI22D0 U225 ( .A1(n7), .A2(mem[29]), .B1(n237), .B2(mem[5]), .ZN(n145) );
  AOI22D0 U226 ( .A1(n98), .A2(mem[153]), .B1(mem[129]), .B2(n166), .ZN(n109)
         );
  AOI21D0 U227 ( .A1(mem[60]), .A2(n235), .B(n182), .ZN(n210) );
  AOI22D0 U228 ( .A1(n92), .A2(mem[184]), .B1(n236), .B2(mem[88]), .ZN(n121)
         );
  AOI22D0 U229 ( .A1(n7), .A2(mem[44]), .B1(n237), .B2(mem[20]), .ZN(n94) );
  AOI22D0 U230 ( .A1(n98), .A2(mem[144]), .B1(mem[120]), .B2(n166), .ZN(n217)
         );
  INVD0 U231 ( .I(n252), .ZN(n81) );
  ND4D0 U232 ( .A1(n107), .A2(n106), .A3(n105), .A4(n104), .ZN(n343) );
  ND4D0 U233 ( .A1(n85), .A2(n84), .A3(n83), .A4(n82), .ZN(n328) );
  MUX2D0 U234 ( .I0(mem[62]), .I1(wr_data[14]), .S(n348), .Z(n313) );
  INVD0 U235 ( .I(rd_ptr_gray[3]), .ZN(n52) );
  AOI22D0 U236 ( .A1(rd_ptr[2]), .A2(rd_ptr_gray[3]), .B1(n52), .B2(n78), .ZN(
        rd_ptr_gray[2]) );
  INVD1 U237 ( .I(wr_ptr[0]), .ZN(n246) );
  MUX2ND0 U238 ( .I0(n246), .I1(wr_ptr[0]), .S(rd_ptr_sync[0]), .ZN(n54) );
  OAI222D0 U239 ( .A1(rd_ptr_sync[3]), .A2(wr_ptr_gray[3]), .B1(n6), .B2(n286), 
        .C1(n54), .C2(n249), .ZN(n59) );
  AOI221D0 U240 ( .A1(n54), .A2(n53), .B1(n249), .B2(rd_ptr_sync[1]), .C(
        wr_ptr[2]), .ZN(n57) );
  INVD1 U241 ( .I(wr_ptr[2]), .ZN(n255) );
  AOI221D0 U242 ( .A1(n54), .A2(rd_ptr_sync[1]), .B1(n249), .B2(n53), .C(n255), 
        .ZN(n56) );
  MUX2ND0 U243 ( .I0(n6), .I1(rd_ptr_sync[3]), .S(rd_ptr_sync[2]), .ZN(n55) );
  MUX2ND0 U244 ( .I0(n57), .I1(n56), .S(n55), .ZN(n58) );
  CKND2D0 U245 ( .A1(wr_ptr[0]), .A2(N22), .ZN(n71) );
  OA21D0 U246 ( .A1(wr_ptr[0]), .A2(N22), .B(n71), .Z(n351) );
  OA22D0 U247 ( .A1(n243), .A2(wr_data[9]), .B1(n242), .B2(mem[105]), .Z(n291)
         );
  OA22D0 U248 ( .A1(n243), .A2(wr_data[10]), .B1(n242), .B2(mem[106]), .Z(n290) );
  OA22D0 U249 ( .A1(n243), .A2(wr_data[11]), .B1(n242), .B2(mem[107]), .Z(n289) );
  AOI22D0 U250 ( .A1(wr_ptr[2]), .A2(wr_ptr[1]), .B1(n249), .B2(n255), .ZN(
        wr_ptr_gray[1]) );
  CKND2D0 U251 ( .A1(n347), .A2(rd_ptr[2]), .ZN(n80) );
  OAI21D0 U252 ( .A1(rd_ptr[2]), .A2(n347), .B(n80), .ZN(rd_ptr_gray[1]) );
  AOI22D0 U253 ( .A1(wr_ptr[2]), .A2(wr_ptr_gray[3]), .B1(n286), .B2(n255), 
        .ZN(wr_ptr_gray[2]) );
  XNR2D1 U254 ( .A1(rd_ptr[0]), .A2(wr_ptr_sync[0]), .ZN(n66) );
  MUX2ND0 U255 ( .I0(n287), .I1(n66), .S(n60), .ZN(n61) );
  MUX2ND0 U256 ( .I0(n287), .I1(n66), .S(wr_ptr_sync[1]), .ZN(n64) );
  INVD0 U257 ( .I(fifo_rd), .ZN(n67) );
  INVD2 U258 ( .I(n253), .ZN(n232) );
  INVD1 U259 ( .I(n251), .ZN(n250) );
  NR2D2 U260 ( .A1(n76), .A2(rd_ptr[2]), .ZN(n236) );
  NR4D8 U261 ( .A1(n248), .A2(wr_ptr[2]), .A3(reset), .A4(n249), .ZN(n348) );
  NR3D1 U262 ( .A1(n79), .A2(rd_ptr[2]), .A3(n347), .ZN(n235) );
  NR2D1 U263 ( .A1(n79), .A2(n80), .ZN(n233) );
  AO22D0 U264 ( .A1(n233), .A2(mem[115]), .B1(rd_data[19]), .B2(n232), .Z(n75)
         );
  CKBD1 U265 ( .I(n98), .Z(n222) );
  NR2D2 U266 ( .A1(n81), .A2(n80), .ZN(n166) );
  AO22D0 U267 ( .A1(n233), .A2(mem[114]), .B1(rd_data[18]), .B2(n232), .Z(n86)
         );
  AO22D0 U268 ( .A1(n233), .A2(mem[116]), .B1(rd_data[20]), .B2(n232), .Z(n91)
         );
  AO22D0 U269 ( .A1(n233), .A2(mem[99]), .B1(rd_data[3]), .B2(n232), .Z(n97)
         );
  AO22D0 U270 ( .A1(n233), .A2(mem[100]), .B1(rd_data[4]), .B2(n232), .Z(n103)
         );
  AO22D0 U271 ( .A1(n233), .A2(mem[105]), .B1(rd_data[9]), .B2(n232), .Z(n108)
         );
  AO22D0 U272 ( .A1(n233), .A2(mem[111]), .B1(rd_data[15]), .B2(n232), .Z(n113) );
  AO22D0 U273 ( .A1(n233), .A2(mem[112]), .B1(rd_data[16]), .B2(n232), .Z(n118) );
  AO22D0 U274 ( .A1(n233), .A2(mem[119]), .B1(rd_data[23]), .B2(n232), .Z(n123) );
  AO22D0 U275 ( .A1(n233), .A2(mem[118]), .B1(rd_data[22]), .B2(n232), .Z(n128) );
  AO22D0 U276 ( .A1(n233), .A2(mem[117]), .B1(rd_data[21]), .B2(n232), .Z(n133) );
  AO22D0 U277 ( .A1(n233), .A2(mem[113]), .B1(rd_data[17]), .B2(n232), .Z(n138) );
  AO22D0 U278 ( .A1(n233), .A2(mem[101]), .B1(rd_data[5]), .B2(n232), .Z(n143)
         );
  AO22D0 U279 ( .A1(n233), .A2(mem[106]), .B1(rd_data[10]), .B2(n232), .Z(n148) );
  AO22D0 U280 ( .A1(n233), .A2(mem[107]), .B1(rd_data[11]), .B2(n232), .Z(n155) );
  AO22D0 U281 ( .A1(n233), .A2(mem[103]), .B1(rd_data[7]), .B2(n232), .Z(n165)
         );
  AO22D0 U282 ( .A1(n233), .A2(mem[104]), .B1(rd_data[8]), .B2(n232), .Z(n171)
         );
  AO22D0 U283 ( .A1(n233), .A2(mem[98]), .B1(rd_data[2]), .B2(n232), .Z(n176)
         );
  AO22D0 U284 ( .A1(n233), .A2(mem[108]), .B1(rd_data[12]), .B2(n232), .Z(n182) );
  AO22D0 U285 ( .A1(n233), .A2(mem[109]), .B1(rd_data[13]), .B2(n232), .Z(n211) );
  AO22D0 U286 ( .A1(n233), .A2(mem[96]), .B1(rd_data[0]), .B2(n232), .Z(n216)
         );
  AO22D0 U287 ( .A1(n233), .A2(mem[110]), .B1(rd_data[14]), .B2(n232), .Z(n221) );
  AO22D0 U288 ( .A1(n233), .A2(mem[97]), .B1(rd_data[1]), .B2(n232), .Z(n227)
         );
  AO22D0 U289 ( .A1(n233), .A2(mem[102]), .B1(rd_data[6]), .B2(n232), .Z(n234)
         );
  IAO21D0 U290 ( .A1(wr_ptr[1]), .A2(wr_ptr[0]), .B(n254), .ZN(N33) );
  CKXOR2D0 U291 ( .A1(n347), .A2(n288), .Z(rd_ptr_gray[0]) );
  NR3D0 U292 ( .A1(wr_ptr[0]), .A2(wr_ptr[2]), .A3(n245), .ZN(n244) );
  NR3D0 U293 ( .A1(wr_ptr[2]), .A2(n246), .A3(n245), .ZN(n247) );
  ND2D1 U294 ( .A1(wr_ptr[2]), .A2(n250), .ZN(n256) );
  NR2D4 U295 ( .A1(reset), .A2(n256), .ZN(n350) );
  NR3D2 U296 ( .A1(n251), .A2(wr_ptr[2]), .A3(reset), .ZN(n292) );
  MUX2ND0 U297 ( .I0(n255), .I1(wr_ptr[2]), .S(n254), .ZN(N34) );
  MUX2ND0 U298 ( .I0(wr_ptr_gray[3]), .I1(n286), .S(n256), .ZN(n298) );
endmodule


module fullchip ( clk1, clk2, mem_in, inst, reset, out );
  input [127:0] mem_in;
  input [43:0] inst;
  output [319:0] out;
  input clk1, clk2, reset;

  tri   clk1;
  tri   clk2;
  tri   [127:0] mem_in;
  tri   [43:0] inst;
  tri   reset;
  tri   [319:0] out;
  tri   [23:0] core_1_sum_in;
  tri   [23:0] core_1_sum_out;
  tri   [23:0] core_2_sum_in;
  tri   [23:0] core_2_sum_out;

  core core_instance_1 ( .reset(reset), .clk(clk1), .sum_in(core_1_sum_in), 
        .sum_out(core_1_sum_out), .mem_in(mem_in[63:0]), .out(out[159:0]), 
        .inst(inst[21:0]) );
  async_fifo_1 fifo_core_1_2 ( .rd_clk(clk2), .wr_clk(clk1), .reset(reset), 
        .empty(), .full(), .rd_data(core_2_sum_in), .fifo_rd(inst[43]), 
        .wr_data(core_1_sum_out), .fifo_wr(inst[20]) );
  async_fifo_0 fifo_core_2_1 ( .rd_clk(clk1), .wr_clk(clk2), .reset(reset), 
        .empty(), .full(), .rd_data(core_1_sum_in), .fifo_rd(inst[21]), 
        .wr_data(core_2_sum_out), .fifo_wr(inst[42]) );
  core core_instance_2 ( .reset(reset), .clk(clk2), .sum_in(core_2_sum_in), 
        .sum_out(core_2_sum_out), .mem_in(mem_in[127:64]), .out(out[319:160]), 
        .inst(inst[43:22]) );
endmodule

