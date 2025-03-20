/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : K-2015.06-SP2
// Date      : Wed Mar 19 19:46:51 2025
/////////////////////////////////////////////////////////////


module async_fifo ( rd_clk, wr_clk, reset, empty, full, rd_data, fifo_rd, 
        wr_data, fifo_wr );
  output [23:0] rd_data;
  input [23:0] wr_data;
  input rd_clk, wr_clk, reset, fifo_rd, fifo_wr;
  output empty, full;
  wire   N33, N34, N35, N50, N55, N81, N82, N83, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229,
         n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240,
         n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251,
         n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262,
         n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n273,
         n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, n284,
         n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, n295,
         n296, n297, n298, n299, n300, n301, n302, n303, n304, n305, n306,
         n307, n308, n309, n310, n311, n312, n313, n314, n315;
  wire   [2:0] wr_ptr;
  wire   [3:1] wr_ptr_gray;
  wire   [2:0] rd_ptr;
  wire   [3:1] rd_ptr_gray;
  wire   [191:0] mem;
  wire   [3:0] rd_ptr_sync;
  wire   [3:0] rd_ptr_meta;
  wire   [3:0] wr_ptr_sync;
  wire   [3:0] wr_ptr_meta;

  DFCNQD1 wr_ptr_sync_reg_0_ ( .D(wr_ptr_meta[0]), .CP(rd_clk), .CDN(n315), 
        .Q(wr_ptr_sync[0]) );
  EDFCNQD1 rd_ptr_reg_0_ ( .D(n160), .E(n307), .CP(rd_clk), .CDN(n315), .Q(
        rd_ptr[0]) );
  EDFCNQD1 rd_ptr_reg_1_ ( .D(N81), .E(n307), .CP(rd_clk), .CDN(n315), .Q(
        rd_ptr[1]) );
  DFCNQD1 rd_ptr_meta_reg_1_ ( .D(rd_ptr_gray[1]), .CP(wr_clk), .CDN(n315), 
        .Q(rd_ptr_meta[1]) );
  DFCNQD1 rd_ptr_sync_reg_1_ ( .D(rd_ptr_meta[1]), .CP(wr_clk), .CDN(n315), 
        .Q(rd_ptr_sync[1]) );
  EDFCNQD1 rd_ptr_reg_3_ ( .D(N83), .E(n307), .CP(rd_clk), .CDN(n315), .Q(
        rd_ptr_gray[3]) );
  DFCNQD1 rd_ptr_meta_reg_3_ ( .D(rd_ptr_gray[3]), .CP(wr_clk), .CDN(n315), 
        .Q(rd_ptr_meta[3]) );
  DFCNQD1 rd_ptr_sync_reg_3_ ( .D(rd_ptr_meta[3]), .CP(wr_clk), .CDN(n315), 
        .Q(rd_ptr_sync[3]) );
  DFCNQD1 rd_ptr_meta_reg_2_ ( .D(rd_ptr_gray[2]), .CP(wr_clk), .CDN(n315), 
        .Q(rd_ptr_meta[2]) );
  DFCNQD1 rd_ptr_sync_reg_2_ ( .D(rd_ptr_meta[2]), .CP(wr_clk), .CDN(n315), 
        .Q(rd_ptr_sync[2]) );
  DFCNQD1 rd_ptr_meta_reg_0_ ( .D(N81), .CP(wr_clk), .CDN(n315), .Q(
        rd_ptr_meta[0]) );
  DFCNQD1 rd_ptr_sync_reg_0_ ( .D(rd_ptr_meta[0]), .CP(wr_clk), .CDN(n315), 
        .Q(rd_ptr_sync[0]) );
  EDFCNQD1 wr_ptr_reg_0_ ( .D(n313), .E(n314), .CP(wr_clk), .CDN(n315), .Q(
        wr_ptr[0]) );
  EDFCNQD1 wr_ptr_reg_1_ ( .D(N33), .E(n314), .CP(wr_clk), .CDN(n315), .Q(
        wr_ptr[1]) );
  DFCNQD1 wr_ptr_meta_reg_0_ ( .D(N33), .CP(rd_clk), .CDN(n315), .Q(
        wr_ptr_meta[0]) );
  EDFCNQD1 wr_ptr_reg_2_ ( .D(N34), .E(n314), .CP(wr_clk), .CDN(n315), .Q(
        wr_ptr[2]) );
  DFCNQD1 wr_ptr_meta_reg_1_ ( .D(wr_ptr_gray[1]), .CP(rd_clk), .CDN(n315), 
        .Q(wr_ptr_meta[1]) );
  DFCNQD1 wr_ptr_sync_reg_1_ ( .D(wr_ptr_meta[1]), .CP(rd_clk), .CDN(n315), 
        .Q(wr_ptr_sync[1]) );
  EDFCNQD1 wr_ptr_reg_3_ ( .D(N35), .E(n314), .CP(wr_clk), .CDN(n315), .Q(
        wr_ptr_gray[3]) );
  DFCNQD1 wr_ptr_meta_reg_3_ ( .D(wr_ptr_gray[3]), .CP(rd_clk), .CDN(n315), 
        .Q(wr_ptr_meta[3]) );
  DFCNQD1 wr_ptr_sync_reg_3_ ( .D(wr_ptr_meta[3]), .CP(rd_clk), .CDN(n315), 
        .Q(wr_ptr_sync[3]) );
  DFCNQD1 wr_ptr_meta_reg_2_ ( .D(wr_ptr_gray[2]), .CP(rd_clk), .CDN(n315), 
        .Q(wr_ptr_meta[2]) );
  DFCNQD1 wr_ptr_sync_reg_2_ ( .D(wr_ptr_meta[2]), .CP(rd_clk), .CDN(n315), 
        .Q(wr_ptr_sync[2]) );
  EDFQD1 mem_reg_1__0_ ( .D(wr_data[0]), .E(n310), .CP(wr_clk), .Q(mem[24]) );
  EDFQD1 mem_reg_1__1_ ( .D(wr_data[1]), .E(n310), .CP(wr_clk), .Q(mem[25]) );
  EDFQD1 mem_reg_1__2_ ( .D(wr_data[2]), .E(n310), .CP(wr_clk), .Q(mem[26]) );
  EDFQD1 mem_reg_1__3_ ( .D(wr_data[3]), .E(n310), .CP(wr_clk), .Q(mem[27]) );
  EDFQD1 mem_reg_1__4_ ( .D(wr_data[4]), .E(n310), .CP(wr_clk), .Q(mem[28]) );
  EDFQD1 mem_reg_1__5_ ( .D(wr_data[5]), .E(n310), .CP(wr_clk), .Q(mem[29]) );
  EDFQD1 mem_reg_1__6_ ( .D(wr_data[6]), .E(n310), .CP(wr_clk), .Q(mem[30]) );
  EDFQD1 mem_reg_1__7_ ( .D(wr_data[7]), .E(n310), .CP(wr_clk), .Q(mem[31]) );
  EDFQD1 mem_reg_1__8_ ( .D(wr_data[8]), .E(n310), .CP(wr_clk), .Q(mem[32]) );
  EDFQD1 mem_reg_1__9_ ( .D(wr_data[9]), .E(n310), .CP(wr_clk), .Q(mem[33]) );
  EDFQD1 mem_reg_1__10_ ( .D(wr_data[10]), .E(n310), .CP(wr_clk), .Q(mem[34])
         );
  EDFQD1 mem_reg_1__11_ ( .D(wr_data[11]), .E(n310), .CP(wr_clk), .Q(mem[35])
         );
  EDFQD1 mem_reg_1__12_ ( .D(wr_data[12]), .E(n310), .CP(wr_clk), .Q(mem[36])
         );
  EDFQD1 mem_reg_1__13_ ( .D(wr_data[13]), .E(n310), .CP(wr_clk), .Q(mem[37])
         );
  EDFQD1 mem_reg_1__14_ ( .D(wr_data[14]), .E(n310), .CP(wr_clk), .Q(mem[38])
         );
  EDFQD1 mem_reg_1__15_ ( .D(wr_data[15]), .E(n310), .CP(wr_clk), .Q(mem[39])
         );
  EDFQD1 mem_reg_1__16_ ( .D(wr_data[16]), .E(n310), .CP(wr_clk), .Q(mem[40])
         );
  EDFQD1 mem_reg_1__17_ ( .D(wr_data[17]), .E(n310), .CP(wr_clk), .Q(mem[41])
         );
  EDFQD1 mem_reg_1__18_ ( .D(wr_data[18]), .E(n310), .CP(wr_clk), .Q(mem[42])
         );
  EDFQD1 mem_reg_1__19_ ( .D(wr_data[19]), .E(n310), .CP(wr_clk), .Q(mem[43])
         );
  EDFQD1 mem_reg_1__20_ ( .D(wr_data[20]), .E(n310), .CP(wr_clk), .Q(mem[44])
         );
  EDFQD1 mem_reg_1__21_ ( .D(wr_data[21]), .E(n310), .CP(wr_clk), .Q(mem[45])
         );
  EDFQD1 mem_reg_1__22_ ( .D(wr_data[22]), .E(n310), .CP(wr_clk), .Q(mem[46])
         );
  EDFQD1 mem_reg_1__23_ ( .D(wr_data[23]), .E(n310), .CP(wr_clk), .Q(mem[47])
         );
  EDFQD1 mem_reg_3__21_ ( .D(wr_data[21]), .E(N50), .CP(wr_clk), .Q(mem[93])
         );
  EDFQD1 mem_reg_3__22_ ( .D(wr_data[22]), .E(N50), .CP(wr_clk), .Q(mem[94])
         );
  EDFQD1 mem_reg_3__23_ ( .D(wr_data[23]), .E(N50), .CP(wr_clk), .Q(mem[95])
         );
  EDFQD1 mem_reg_3__20_ ( .D(wr_data[20]), .E(N50), .CP(wr_clk), .Q(mem[92])
         );
  EDFQD1 mem_reg_3__19_ ( .D(wr_data[19]), .E(N50), .CP(wr_clk), .Q(mem[91])
         );
  EDFQD1 mem_reg_3__18_ ( .D(wr_data[18]), .E(N50), .CP(wr_clk), .Q(mem[90])
         );
  EDFQD1 mem_reg_3__17_ ( .D(wr_data[17]), .E(N50), .CP(wr_clk), .Q(mem[89])
         );
  EDFQD1 mem_reg_3__16_ ( .D(wr_data[16]), .E(N50), .CP(wr_clk), .Q(mem[88])
         );
  EDFQD1 mem_reg_3__15_ ( .D(wr_data[15]), .E(N50), .CP(wr_clk), .Q(mem[87])
         );
  EDFQD1 mem_reg_3__14_ ( .D(wr_data[14]), .E(N50), .CP(wr_clk), .Q(mem[86])
         );
  EDFQD1 mem_reg_3__13_ ( .D(wr_data[13]), .E(N50), .CP(wr_clk), .Q(mem[85])
         );
  EDFQD1 mem_reg_3__12_ ( .D(wr_data[12]), .E(N50), .CP(wr_clk), .Q(mem[84])
         );
  EDFQD1 mem_reg_3__11_ ( .D(wr_data[11]), .E(N50), .CP(wr_clk), .Q(mem[83])
         );
  EDFQD1 mem_reg_3__10_ ( .D(wr_data[10]), .E(N50), .CP(wr_clk), .Q(mem[82])
         );
  EDFQD1 mem_reg_3__9_ ( .D(wr_data[9]), .E(N50), .CP(wr_clk), .Q(mem[81]) );
  EDFQD1 mem_reg_3__8_ ( .D(wr_data[8]), .E(N50), .CP(wr_clk), .Q(mem[80]) );
  EDFQD1 mem_reg_3__7_ ( .D(wr_data[7]), .E(N50), .CP(wr_clk), .Q(mem[79]) );
  EDFQD1 mem_reg_3__6_ ( .D(wr_data[6]), .E(N50), .CP(wr_clk), .Q(mem[78]) );
  EDFQD1 mem_reg_3__5_ ( .D(wr_data[5]), .E(N50), .CP(wr_clk), .Q(mem[77]) );
  EDFQD1 mem_reg_3__4_ ( .D(wr_data[4]), .E(N50), .CP(wr_clk), .Q(mem[76]) );
  EDFQD1 mem_reg_3__3_ ( .D(wr_data[3]), .E(N50), .CP(wr_clk), .Q(mem[75]) );
  EDFQD1 mem_reg_3__2_ ( .D(wr_data[2]), .E(N50), .CP(wr_clk), .Q(mem[74]) );
  EDFQD1 mem_reg_3__1_ ( .D(wr_data[1]), .E(N50), .CP(wr_clk), .Q(mem[73]) );
  EDFQD1 mem_reg_3__0_ ( .D(wr_data[0]), .E(N50), .CP(wr_clk), .Q(mem[72]) );
  EDFQD1 mem_reg_5__0_ ( .D(wr_data[0]), .E(n309), .CP(wr_clk), .Q(mem[120])
         );
  EDFQD1 mem_reg_5__1_ ( .D(wr_data[1]), .E(n309), .CP(wr_clk), .Q(mem[121])
         );
  EDFQD1 mem_reg_5__2_ ( .D(wr_data[2]), .E(n309), .CP(wr_clk), .Q(mem[122])
         );
  EDFQD1 mem_reg_5__3_ ( .D(wr_data[3]), .E(n309), .CP(wr_clk), .Q(mem[123])
         );
  EDFQD1 mem_reg_5__4_ ( .D(wr_data[4]), .E(n309), .CP(wr_clk), .Q(mem[124])
         );
  EDFQD1 mem_reg_5__5_ ( .D(wr_data[5]), .E(n309), .CP(wr_clk), .Q(mem[125])
         );
  EDFQD1 mem_reg_5__6_ ( .D(wr_data[6]), .E(n309), .CP(wr_clk), .Q(mem[126])
         );
  EDFQD1 mem_reg_5__7_ ( .D(wr_data[7]), .E(n309), .CP(wr_clk), .Q(mem[127])
         );
  EDFQD1 mem_reg_5__8_ ( .D(wr_data[8]), .E(n309), .CP(wr_clk), .Q(mem[128])
         );
  EDFQD1 mem_reg_5__9_ ( .D(wr_data[9]), .E(n309), .CP(wr_clk), .Q(mem[129])
         );
  EDFQD1 mem_reg_5__10_ ( .D(wr_data[10]), .E(n309), .CP(wr_clk), .Q(mem[130])
         );
  EDFQD1 mem_reg_5__11_ ( .D(wr_data[11]), .E(n309), .CP(wr_clk), .Q(mem[131])
         );
  EDFQD1 mem_reg_5__12_ ( .D(wr_data[12]), .E(n309), .CP(wr_clk), .Q(mem[132])
         );
  EDFQD1 mem_reg_5__13_ ( .D(wr_data[13]), .E(n309), .CP(wr_clk), .Q(mem[133])
         );
  EDFQD1 mem_reg_5__14_ ( .D(wr_data[14]), .E(n309), .CP(wr_clk), .Q(mem[134])
         );
  EDFQD1 mem_reg_5__15_ ( .D(wr_data[15]), .E(n309), .CP(wr_clk), .Q(mem[135])
         );
  EDFQD1 mem_reg_5__16_ ( .D(wr_data[16]), .E(n309), .CP(wr_clk), .Q(mem[136])
         );
  EDFQD1 mem_reg_5__17_ ( .D(wr_data[17]), .E(n309), .CP(wr_clk), .Q(mem[137])
         );
  EDFQD1 mem_reg_5__18_ ( .D(wr_data[18]), .E(n309), .CP(wr_clk), .Q(mem[138])
         );
  EDFQD1 mem_reg_5__19_ ( .D(wr_data[19]), .E(n309), .CP(wr_clk), .Q(mem[139])
         );
  EDFQD1 mem_reg_5__20_ ( .D(wr_data[20]), .E(n309), .CP(wr_clk), .Q(mem[140])
         );
  EDFQD1 mem_reg_5__21_ ( .D(wr_data[21]), .E(n309), .CP(wr_clk), .Q(mem[141])
         );
  EDFQD1 mem_reg_5__22_ ( .D(wr_data[22]), .E(n309), .CP(wr_clk), .Q(mem[142])
         );
  EDFQD1 mem_reg_5__23_ ( .D(wr_data[23]), .E(n309), .CP(wr_clk), .Q(mem[143])
         );
  EDFQD1 mem_reg_0__1_ ( .D(wr_data[1]), .E(n163), .CP(wr_clk), .Q(mem[1]) );
  EDFQD1 mem_reg_0__2_ ( .D(wr_data[2]), .E(n163), .CP(wr_clk), .Q(mem[2]) );
  EDFQD1 mem_reg_0__3_ ( .D(wr_data[3]), .E(n163), .CP(wr_clk), .Q(mem[3]) );
  EDFQD1 mem_reg_0__4_ ( .D(wr_data[4]), .E(n163), .CP(wr_clk), .Q(mem[4]) );
  EDFQD1 mem_reg_0__5_ ( .D(wr_data[5]), .E(n163), .CP(wr_clk), .Q(mem[5]) );
  EDFQD1 mem_reg_0__6_ ( .D(wr_data[6]), .E(n163), .CP(wr_clk), .Q(mem[6]) );
  EDFQD1 mem_reg_0__7_ ( .D(wr_data[7]), .E(n163), .CP(wr_clk), .Q(mem[7]) );
  EDFQD1 mem_reg_0__8_ ( .D(wr_data[8]), .E(n163), .CP(wr_clk), .Q(mem[8]) );
  EDFQD1 mem_reg_0__9_ ( .D(wr_data[9]), .E(n163), .CP(wr_clk), .Q(mem[9]) );
  EDFQD1 mem_reg_0__10_ ( .D(wr_data[10]), .E(n163), .CP(wr_clk), .Q(mem[10])
         );
  EDFQD1 mem_reg_0__11_ ( .D(wr_data[11]), .E(n163), .CP(wr_clk), .Q(mem[11])
         );
  EDFQD1 mem_reg_0__12_ ( .D(wr_data[12]), .E(n163), .CP(wr_clk), .Q(mem[12])
         );
  EDFQD1 mem_reg_0__13_ ( .D(wr_data[13]), .E(n163), .CP(wr_clk), .Q(mem[13])
         );
  EDFQD1 mem_reg_0__14_ ( .D(wr_data[14]), .E(n163), .CP(wr_clk), .Q(mem[14])
         );
  EDFQD1 mem_reg_0__15_ ( .D(wr_data[15]), .E(n163), .CP(wr_clk), .Q(mem[15])
         );
  EDFQD1 mem_reg_0__16_ ( .D(wr_data[16]), .E(n163), .CP(wr_clk), .Q(mem[16])
         );
  EDFQD1 mem_reg_0__17_ ( .D(wr_data[17]), .E(n163), .CP(wr_clk), .Q(mem[17])
         );
  EDFQD1 mem_reg_0__18_ ( .D(wr_data[18]), .E(n163), .CP(wr_clk), .Q(mem[18])
         );
  EDFQD1 mem_reg_0__19_ ( .D(wr_data[19]), .E(n163), .CP(wr_clk), .Q(mem[19])
         );
  EDFQD1 mem_reg_0__20_ ( .D(wr_data[20]), .E(n163), .CP(wr_clk), .Q(mem[20])
         );
  EDFQD1 mem_reg_0__21_ ( .D(wr_data[21]), .E(n163), .CP(wr_clk), .Q(mem[21])
         );
  EDFQD1 mem_reg_0__22_ ( .D(wr_data[22]), .E(n163), .CP(wr_clk), .Q(mem[22])
         );
  EDFQD1 mem_reg_0__23_ ( .D(wr_data[23]), .E(n163), .CP(wr_clk), .Q(mem[23])
         );
  EDFQD1 mem_reg_0__0_ ( .D(wr_data[0]), .E(n163), .CP(wr_clk), .Q(mem[0]) );
  EDFQD1 mem_reg_2__0_ ( .D(wr_data[0]), .E(n312), .CP(wr_clk), .Q(mem[48]) );
  EDFQD1 mem_reg_2__1_ ( .D(wr_data[1]), .E(n312), .CP(wr_clk), .Q(mem[49]) );
  EDFQD1 mem_reg_2__2_ ( .D(wr_data[2]), .E(n312), .CP(wr_clk), .Q(mem[50]) );
  EDFQD1 mem_reg_2__3_ ( .D(wr_data[3]), .E(n312), .CP(wr_clk), .Q(mem[51]) );
  EDFQD1 mem_reg_2__4_ ( .D(wr_data[4]), .E(n312), .CP(wr_clk), .Q(mem[52]) );
  EDFQD1 mem_reg_2__5_ ( .D(wr_data[5]), .E(n312), .CP(wr_clk), .Q(mem[53]) );
  EDFQD1 mem_reg_2__6_ ( .D(wr_data[6]), .E(n312), .CP(wr_clk), .Q(mem[54]) );
  EDFQD1 mem_reg_2__7_ ( .D(wr_data[7]), .E(n312), .CP(wr_clk), .Q(mem[55]) );
  EDFQD1 mem_reg_2__8_ ( .D(wr_data[8]), .E(n312), .CP(wr_clk), .Q(mem[56]) );
  EDFQD1 mem_reg_2__9_ ( .D(wr_data[9]), .E(n312), .CP(wr_clk), .Q(mem[57]) );
  EDFQD1 mem_reg_2__10_ ( .D(wr_data[10]), .E(n312), .CP(wr_clk), .Q(mem[58])
         );
  EDFQD1 mem_reg_2__11_ ( .D(wr_data[11]), .E(n312), .CP(wr_clk), .Q(mem[59])
         );
  EDFQD1 mem_reg_2__12_ ( .D(wr_data[12]), .E(n312), .CP(wr_clk), .Q(mem[60])
         );
  EDFQD1 mem_reg_2__13_ ( .D(wr_data[13]), .E(n312), .CP(wr_clk), .Q(mem[61])
         );
  EDFQD1 mem_reg_2__14_ ( .D(wr_data[14]), .E(n312), .CP(wr_clk), .Q(mem[62])
         );
  EDFQD1 mem_reg_2__15_ ( .D(wr_data[15]), .E(n312), .CP(wr_clk), .Q(mem[63])
         );
  EDFQD1 mem_reg_2__16_ ( .D(wr_data[16]), .E(n312), .CP(wr_clk), .Q(mem[64])
         );
  EDFQD1 mem_reg_2__17_ ( .D(wr_data[17]), .E(n312), .CP(wr_clk), .Q(mem[65])
         );
  EDFQD1 mem_reg_4__0_ ( .D(wr_data[0]), .E(n311), .CP(wr_clk), .Q(mem[96]) );
  EDFQD1 mem_reg_4__1_ ( .D(wr_data[1]), .E(n311), .CP(wr_clk), .Q(mem[97]) );
  EDFQD1 mem_reg_4__2_ ( .D(wr_data[2]), .E(n311), .CP(wr_clk), .Q(mem[98]) );
  EDFQD1 mem_reg_4__3_ ( .D(wr_data[3]), .E(n311), .CP(wr_clk), .Q(mem[99]) );
  EDFQD1 mem_reg_4__4_ ( .D(wr_data[4]), .E(n311), .CP(wr_clk), .Q(mem[100])
         );
  EDFQD1 mem_reg_4__5_ ( .D(wr_data[5]), .E(n311), .CP(wr_clk), .Q(mem[101])
         );
  EDFQD1 mem_reg_4__6_ ( .D(wr_data[6]), .E(n311), .CP(wr_clk), .Q(mem[102])
         );
  EDFQD1 mem_reg_4__7_ ( .D(wr_data[7]), .E(n311), .CP(wr_clk), .Q(mem[103])
         );
  EDFQD1 mem_reg_4__8_ ( .D(wr_data[8]), .E(n311), .CP(wr_clk), .Q(mem[104])
         );
  EDFQD1 mem_reg_4__9_ ( .D(wr_data[9]), .E(n311), .CP(wr_clk), .Q(mem[105])
         );
  EDFQD1 mem_reg_4__10_ ( .D(wr_data[10]), .E(n311), .CP(wr_clk), .Q(mem[106])
         );
  EDFQD1 mem_reg_4__11_ ( .D(wr_data[11]), .E(n311), .CP(wr_clk), .Q(mem[107])
         );
  EDFQD1 mem_reg_4__12_ ( .D(wr_data[12]), .E(n311), .CP(wr_clk), .Q(mem[108])
         );
  EDFQD1 mem_reg_4__13_ ( .D(wr_data[13]), .E(n311), .CP(wr_clk), .Q(mem[109])
         );
  EDFQD1 mem_reg_4__14_ ( .D(wr_data[14]), .E(n311), .CP(wr_clk), .Q(mem[110])
         );
  EDFQD1 mem_reg_4__15_ ( .D(wr_data[15]), .E(n311), .CP(wr_clk), .Q(mem[111])
         );
  EDFQD1 mem_reg_4__16_ ( .D(wr_data[16]), .E(n311), .CP(wr_clk), .Q(mem[112])
         );
  EDFQD1 mem_reg_4__17_ ( .D(wr_data[17]), .E(n311), .CP(wr_clk), .Q(mem[113])
         );
  EDFQD1 mem_reg_4__18_ ( .D(wr_data[18]), .E(n311), .CP(wr_clk), .Q(mem[114])
         );
  EDFQD1 mem_reg_4__19_ ( .D(wr_data[19]), .E(n311), .CP(wr_clk), .Q(mem[115])
         );
  EDFQD1 mem_reg_4__20_ ( .D(wr_data[20]), .E(n311), .CP(wr_clk), .Q(mem[116])
         );
  EDFQD1 mem_reg_4__21_ ( .D(wr_data[21]), .E(n311), .CP(wr_clk), .Q(mem[117])
         );
  EDFQD1 mem_reg_4__22_ ( .D(wr_data[22]), .E(n311), .CP(wr_clk), .Q(mem[118])
         );
  EDFQD1 mem_reg_4__23_ ( .D(wr_data[23]), .E(n311), .CP(wr_clk), .Q(mem[119])
         );
  EDFQD1 mem_reg_6__0_ ( .D(wr_data[0]), .E(n162), .CP(wr_clk), .Q(mem[144])
         );
  EDFQD1 mem_reg_6__1_ ( .D(wr_data[1]), .E(n162), .CP(wr_clk), .Q(mem[145])
         );
  EDFQD1 mem_reg_6__2_ ( .D(wr_data[2]), .E(n162), .CP(wr_clk), .Q(mem[146])
         );
  EDFQD1 mem_reg_6__3_ ( .D(wr_data[3]), .E(n162), .CP(wr_clk), .Q(mem[147])
         );
  EDFQD1 mem_reg_6__4_ ( .D(wr_data[4]), .E(n162), .CP(wr_clk), .Q(mem[148])
         );
  EDFQD1 mem_reg_6__5_ ( .D(wr_data[5]), .E(n162), .CP(wr_clk), .Q(mem[149])
         );
  EDFQD1 mem_reg_6__6_ ( .D(wr_data[6]), .E(n162), .CP(wr_clk), .Q(mem[150])
         );
  EDFQD1 mem_reg_6__7_ ( .D(wr_data[7]), .E(n162), .CP(wr_clk), .Q(mem[151])
         );
  EDFQD1 mem_reg_6__8_ ( .D(wr_data[8]), .E(n162), .CP(wr_clk), .Q(mem[152])
         );
  EDFQD1 mem_reg_6__9_ ( .D(wr_data[9]), .E(n162), .CP(wr_clk), .Q(mem[153])
         );
  EDFQD1 mem_reg_6__10_ ( .D(wr_data[10]), .E(n162), .CP(wr_clk), .Q(mem[154])
         );
  EDFQD1 mem_reg_6__11_ ( .D(wr_data[11]), .E(n162), .CP(wr_clk), .Q(mem[155])
         );
  EDFQD1 mem_reg_6__12_ ( .D(wr_data[12]), .E(n162), .CP(wr_clk), .Q(mem[156])
         );
  EDFQD1 mem_reg_6__13_ ( .D(wr_data[13]), .E(n162), .CP(wr_clk), .Q(mem[157])
         );
  EDFQD1 mem_reg_6__14_ ( .D(wr_data[14]), .E(n162), .CP(wr_clk), .Q(mem[158])
         );
  EDFQD1 mem_reg_6__15_ ( .D(wr_data[15]), .E(n162), .CP(wr_clk), .Q(mem[159])
         );
  EDFQD1 mem_reg_6__16_ ( .D(wr_data[16]), .E(n162), .CP(wr_clk), .Q(mem[160])
         );
  EDFQD1 mem_reg_6__17_ ( .D(wr_data[17]), .E(n162), .CP(wr_clk), .Q(mem[161])
         );
  EDFQD1 mem_reg_6__18_ ( .D(wr_data[18]), .E(n162), .CP(wr_clk), .Q(mem[162])
         );
  EDFQD1 mem_reg_6__19_ ( .D(wr_data[19]), .E(n162), .CP(wr_clk), .Q(mem[163])
         );
  EDFQD1 mem_reg_6__20_ ( .D(wr_data[20]), .E(n162), .CP(wr_clk), .Q(mem[164])
         );
  EDFQD1 mem_reg_6__21_ ( .D(wr_data[21]), .E(n162), .CP(wr_clk), .Q(mem[165])
         );
  EDFQD1 mem_reg_6__22_ ( .D(wr_data[22]), .E(n162), .CP(wr_clk), .Q(mem[166])
         );
  EDFQD1 mem_reg_6__23_ ( .D(wr_data[23]), .E(n162), .CP(wr_clk), .Q(mem[167])
         );
  EDFQD1 mem_reg_7__0_ ( .D(wr_data[0]), .E(n308), .CP(wr_clk), .Q(mem[168])
         );
  EDFQD1 mem_reg_7__1_ ( .D(wr_data[1]), .E(n308), .CP(wr_clk), .Q(mem[169])
         );
  EDFQD1 mem_reg_7__2_ ( .D(wr_data[2]), .E(n308), .CP(wr_clk), .Q(mem[170])
         );
  EDFQD1 mem_reg_7__3_ ( .D(wr_data[3]), .E(n308), .CP(wr_clk), .Q(mem[171])
         );
  EDFQD1 mem_reg_7__4_ ( .D(wr_data[4]), .E(n308), .CP(wr_clk), .Q(mem[172])
         );
  EDFQD1 mem_reg_7__5_ ( .D(wr_data[5]), .E(n308), .CP(wr_clk), .Q(mem[173])
         );
  EDFQD1 mem_reg_7__6_ ( .D(wr_data[6]), .E(n308), .CP(wr_clk), .Q(mem[174])
         );
  EDFQD1 mem_reg_7__7_ ( .D(wr_data[7]), .E(n308), .CP(wr_clk), .Q(mem[175])
         );
  EDFQD1 mem_reg_7__8_ ( .D(wr_data[8]), .E(n308), .CP(wr_clk), .Q(mem[176])
         );
  EDFQD1 mem_reg_7__9_ ( .D(wr_data[9]), .E(n308), .CP(wr_clk), .Q(mem[177])
         );
  EDFQD1 mem_reg_7__10_ ( .D(wr_data[10]), .E(n308), .CP(wr_clk), .Q(mem[178])
         );
  EDFQD1 mem_reg_7__11_ ( .D(wr_data[11]), .E(n308), .CP(wr_clk), .Q(mem[179])
         );
  EDFQD1 mem_reg_7__12_ ( .D(wr_data[12]), .E(n308), .CP(wr_clk), .Q(mem[180])
         );
  EDFQD1 mem_reg_7__13_ ( .D(wr_data[13]), .E(n308), .CP(wr_clk), .Q(mem[181])
         );
  EDFQD1 mem_reg_7__14_ ( .D(wr_data[14]), .E(n308), .CP(wr_clk), .Q(mem[182])
         );
  EDFQD1 mem_reg_7__15_ ( .D(wr_data[15]), .E(n308), .CP(wr_clk), .Q(mem[183])
         );
  EDFQD1 mem_reg_7__16_ ( .D(wr_data[16]), .E(n308), .CP(wr_clk), .Q(mem[184])
         );
  EDFQD1 mem_reg_7__17_ ( .D(wr_data[17]), .E(n308), .CP(wr_clk), .Q(mem[185])
         );
  EDFQD1 mem_reg_7__18_ ( .D(wr_data[18]), .E(n308), .CP(wr_clk), .Q(mem[186])
         );
  EDFQD1 mem_reg_7__19_ ( .D(wr_data[19]), .E(n308), .CP(wr_clk), .Q(mem[187])
         );
  EDFQD1 mem_reg_7__20_ ( .D(wr_data[20]), .E(n308), .CP(wr_clk), .Q(mem[188])
         );
  EDFQD1 mem_reg_7__21_ ( .D(wr_data[21]), .E(n308), .CP(wr_clk), .Q(mem[189])
         );
  EDFQD1 mem_reg_7__22_ ( .D(wr_data[22]), .E(n308), .CP(wr_clk), .Q(mem[190])
         );
  EDFQD1 mem_reg_7__23_ ( .D(wr_data[23]), .E(n308), .CP(wr_clk), .Q(mem[191])
         );
  EDFCNQD1 rd_data_reg_0_ ( .D(n159), .E(n307), .CP(rd_clk), .CDN(n315), .Q(
        rd_data[0]) );
  EDFCNQD1 rd_data_reg_23_ ( .D(n136), .E(n307), .CP(rd_clk), .CDN(n315), .Q(
        rd_data[23]) );
  EDFCNQD1 rd_data_reg_22_ ( .D(n137), .E(n307), .CP(rd_clk), .CDN(n315), .Q(
        rd_data[22]) );
  EDFCNQD1 rd_data_reg_21_ ( .D(n138), .E(n307), .CP(rd_clk), .CDN(n315), .Q(
        rd_data[21]) );
  EDFCNQD1 rd_data_reg_20_ ( .D(n139), .E(n307), .CP(rd_clk), .CDN(n315), .Q(
        rd_data[20]) );
  EDFCNQD1 rd_data_reg_19_ ( .D(n140), .E(n307), .CP(rd_clk), .CDN(n315), .Q(
        rd_data[19]) );
  EDFCNQD1 rd_data_reg_18_ ( .D(n141), .E(n307), .CP(rd_clk), .CDN(n315), .Q(
        rd_data[18]) );
  EDFCNQD1 rd_data_reg_17_ ( .D(n142), .E(n307), .CP(rd_clk), .CDN(n315), .Q(
        rd_data[17]) );
  EDFCNQD1 rd_data_reg_16_ ( .D(n143), .E(n307), .CP(rd_clk), .CDN(n315), .Q(
        rd_data[16]) );
  EDFCNQD1 rd_data_reg_15_ ( .D(n144), .E(n307), .CP(rd_clk), .CDN(n315), .Q(
        rd_data[15]) );
  EDFCNQD1 rd_data_reg_14_ ( .D(n145), .E(n307), .CP(rd_clk), .CDN(n315), .Q(
        rd_data[14]) );
  EDFCNQD1 rd_data_reg_13_ ( .D(n146), .E(n307), .CP(rd_clk), .CDN(n315), .Q(
        rd_data[13]) );
  EDFCNQD1 rd_data_reg_12_ ( .D(n147), .E(n307), .CP(rd_clk), .CDN(n315), .Q(
        rd_data[12]) );
  EDFCNQD1 rd_data_reg_11_ ( .D(n148), .E(n307), .CP(rd_clk), .CDN(n315), .Q(
        rd_data[11]) );
  EDFCNQD1 rd_data_reg_10_ ( .D(n149), .E(n307), .CP(rd_clk), .CDN(n315), .Q(
        rd_data[10]) );
  EDFCNQD1 rd_data_reg_9_ ( .D(n150), .E(n307), .CP(rd_clk), .CDN(n315), .Q(
        rd_data[9]) );
  EDFCNQD1 rd_data_reg_8_ ( .D(n151), .E(n307), .CP(rd_clk), .CDN(n315), .Q(
        rd_data[8]) );
  EDFCNQD1 rd_data_reg_7_ ( .D(n152), .E(n307), .CP(rd_clk), .CDN(n315), .Q(
        rd_data[7]) );
  EDFCNQD1 rd_data_reg_6_ ( .D(n153), .E(n307), .CP(rd_clk), .CDN(n315), .Q(
        rd_data[6]) );
  EDFCNQD1 rd_data_reg_5_ ( .D(n154), .E(n307), .CP(rd_clk), .CDN(n315), .Q(
        rd_data[5]) );
  EDFCNQD1 rd_data_reg_4_ ( .D(n155), .E(n307), .CP(rd_clk), .CDN(n315), .Q(
        rd_data[4]) );
  EDFCNQD1 rd_data_reg_3_ ( .D(n156), .E(N55), .CP(rd_clk), .CDN(n315), .Q(
        rd_data[3]) );
  EDFCNQD1 rd_data_reg_2_ ( .D(n157), .E(N55), .CP(rd_clk), .CDN(n315), .Q(
        rd_data[2]) );
  EDFCNQD1 rd_data_reg_1_ ( .D(n158), .E(N55), .CP(rd_clk), .CDN(n315), .Q(
        rd_data[1]) );
  EDFCNQD1 rd_ptr_reg_2_ ( .D(N82), .E(n307), .CP(rd_clk), .CDN(n315), .Q(
        rd_ptr[2]) );
  EDFQD2 mem_reg_2__19_ ( .D(wr_data[19]), .E(n312), .CP(wr_clk), .Q(mem[67])
         );
  EDFQD2 mem_reg_2__20_ ( .D(wr_data[20]), .E(n312), .CP(wr_clk), .Q(mem[68])
         );
  EDFQD2 mem_reg_2__21_ ( .D(wr_data[21]), .E(n312), .CP(wr_clk), .Q(mem[69])
         );
  EDFQD2 mem_reg_2__22_ ( .D(wr_data[22]), .E(n312), .CP(wr_clk), .Q(mem[70])
         );
  EDFQD1 mem_reg_2__23_ ( .D(wr_data[23]), .E(n312), .CP(wr_clk), .Q(mem[71])
         );
  EDFQD1 mem_reg_2__18_ ( .D(wr_data[18]), .E(n312), .CP(wr_clk), .Q(mem[66])
         );
  BUFFD2 U186 ( .I(N55), .Z(n307) );
  INR2D1 U187 ( .A1(fifo_rd), .B1(empty), .ZN(N55) );
  NR2D3 U188 ( .A1(full), .A2(n173), .ZN(n314) );
  NR2D0 U189 ( .A1(rd_ptr[2]), .A2(n198), .ZN(n297) );
  OAI221D0 U190 ( .A1(n180), .A2(rd_ptr[2]), .B1(n179), .B2(rd_ptr_gray[3]), 
        .C(n178), .ZN(n186) );
  INVD2 U191 ( .I(n177), .ZN(n312) );
  CKND2 U192 ( .I(n302), .ZN(n174) );
  OAI21D1 U193 ( .A1(n184), .A2(rd_ptr[1]), .B(n183), .ZN(n185) );
  NR2XD0 U194 ( .A1(n306), .A2(n197), .ZN(n295) );
  NR2XD0 U195 ( .A1(n195), .A2(n306), .ZN(n293) );
  NR2XD0 U196 ( .A1(n196), .A2(n306), .ZN(n296) );
  NR2XD0 U197 ( .A1(rd_ptr[2]), .A2(n196), .ZN(n294) );
  NR2XD0 U198 ( .A1(rd_ptr[2]), .A2(n195), .ZN(n292) );
  NR2XD0 U199 ( .A1(rd_ptr[2]), .A2(n197), .ZN(n291) );
  XOR2D0 U200 ( .A1(n303), .A2(rd_ptr_gray[3]), .Z(N83) );
  XOR2D0 U201 ( .A1(rd_ptr_sync[3]), .A2(wr_ptr_gray[3]), .Z(n167) );
  INVD1 U202 ( .I(wr_ptr[0]), .ZN(n313) );
  XOR2D0 U203 ( .A1(wr_ptr_sync[0]), .A2(rd_ptr[0]), .Z(n181) );
  IND2D1 U204 ( .A1(wr_ptr[1]), .B1(wr_ptr[0]), .ZN(n189) );
  INVD0 U205 ( .I(fifo_wr), .ZN(n173) );
  CKND2 U206 ( .I(reset), .ZN(n315) );
  NR2D3 U207 ( .A1(n186), .A2(n185), .ZN(empty) );
  ND3D1 U208 ( .A1(n168), .A2(n167), .A3(n166), .ZN(n172) );
  OAI21D1 U209 ( .A1(n170), .A2(n169), .B(wr_ptr[1]), .ZN(n168) );
  INVD3 U210 ( .I(n175), .ZN(n311) );
  XNR2D0 U211 ( .A1(wr_ptr_sync[1]), .A2(n180), .ZN(n182) );
  IOA21D0 U212 ( .A1(n182), .A2(n181), .B(rd_ptr[1]), .ZN(n183) );
  NR2D0 U213 ( .A1(n182), .A2(n181), .ZN(n184) );
  INVD0 U214 ( .I(wr_ptr_sync[3]), .ZN(n179) );
  AOI22D0 U215 ( .A1(n297), .A2(mem[73]), .B1(n303), .B2(mem[169]), .ZN(n203)
         );
  AOI22D0 U216 ( .A1(n297), .A2(mem[85]), .B1(n303), .B2(mem[181]), .ZN(n298)
         );
  AOI22D0 U217 ( .A1(n297), .A2(mem[86]), .B1(n303), .B2(mem[182]), .ZN(n279)
         );
  CKND2D0 U218 ( .A1(wr_ptr[0]), .A2(wr_ptr[1]), .ZN(n193) );
  CKND2D0 U219 ( .A1(n191), .A2(wr_ptr[2]), .ZN(n304) );
  INVD0 U220 ( .I(n193), .ZN(n191) );
  INVD0 U221 ( .I(rd_ptr[2]), .ZN(n306) );
  CKND2D0 U222 ( .A1(rd_ptr[0]), .A2(n305), .ZN(n196) );
  CKND2D0 U223 ( .A1(rd_ptr[1]), .A2(n160), .ZN(n197) );
  XNR2D0 U224 ( .A1(wr_ptr[0]), .A2(rd_ptr_sync[0]), .ZN(n169) );
  XNR2D0 U225 ( .A1(n192), .A2(n165), .ZN(n166) );
  CKND2D0 U226 ( .A1(rd_ptr[1]), .A2(rd_ptr[0]), .ZN(n198) );
  AOI22D0 U227 ( .A1(n297), .A2(mem[74]), .B1(n303), .B2(mem[170]), .ZN(n263)
         );
  AOI22D0 U228 ( .A1(n297), .A2(mem[76]), .B1(n303), .B2(mem[172]), .ZN(n267)
         );
  AOI22D0 U229 ( .A1(n297), .A2(mem[77]), .B1(n303), .B2(mem[173]), .ZN(n235)
         );
  AOI22D0 U230 ( .A1(n297), .A2(mem[78]), .B1(n303), .B2(mem[174]), .ZN(n239)
         );
  AOI22D0 U231 ( .A1(n297), .A2(mem[80]), .B1(n303), .B2(mem[176]), .ZN(n199)
         );
  AOI22D0 U232 ( .A1(n297), .A2(mem[81]), .B1(n303), .B2(mem[177]), .ZN(n231)
         );
  AOI22D0 U233 ( .A1(n297), .A2(mem[82]), .B1(n303), .B2(mem[178]), .ZN(n255)
         );
  AOI22D0 U234 ( .A1(n297), .A2(mem[84]), .B1(n303), .B2(mem[180]), .ZN(n215)
         );
  AOI22D0 U235 ( .A1(n297), .A2(mem[87]), .B1(n303), .B2(mem[183]), .ZN(n275)
         );
  AOI22D0 U236 ( .A1(n297), .A2(mem[88]), .B1(n303), .B2(mem[184]), .ZN(n251)
         );
  AOI22D0 U237 ( .A1(n297), .A2(mem[89]), .B1(n303), .B2(mem[185]), .ZN(n227)
         );
  AOI22D0 U238 ( .A1(n297), .A2(mem[91]), .B1(n303), .B2(mem[187]), .ZN(n211)
         );
  AOI22D0 U239 ( .A1(n297), .A2(mem[92]), .B1(n303), .B2(mem[188]), .ZN(n207)
         );
  AOI22D0 U240 ( .A1(n297), .A2(mem[93]), .B1(n303), .B2(mem[189]), .ZN(n247)
         );
  AOI22D0 U241 ( .A1(n297), .A2(mem[95]), .B1(n303), .B2(mem[191]), .ZN(n271)
         );
  AOI22D0 U242 ( .A1(n297), .A2(mem[72]), .B1(n303), .B2(mem[168]), .ZN(n223)
         );
  CKND2D0 U243 ( .A1(n190), .A2(wr_ptr[2]), .ZN(n187) );
  IND2D0 U244 ( .A1(wr_ptr[2]), .B1(wr_ptr[1]), .ZN(n188) );
  INVD0 U245 ( .I(wr_ptr[1]), .ZN(n190) );
  INVD0 U246 ( .I(rd_ptr[1]), .ZN(n305) );
  AOI22D0 U247 ( .A1(rd_ptr[2]), .A2(n180), .B1(rd_ptr_gray[3]), .B2(n179), 
        .ZN(n178) );
  AOI22D0 U248 ( .A1(n292), .A2(mem[1]), .B1(n291), .B2(mem[49]), .ZN(n206) );
  AOI22D0 U249 ( .A1(n296), .A2(mem[121]), .B1(n295), .B2(mem[145]), .ZN(n204)
         );
  AOI22D0 U250 ( .A1(n294), .A2(mem[25]), .B1(n293), .B2(mem[97]), .ZN(n205)
         );
  ND4D0 U251 ( .A1(n266), .A2(n265), .A3(n264), .A4(n263), .ZN(n157) );
  AOI22D0 U252 ( .A1(n292), .A2(mem[2]), .B1(n291), .B2(mem[50]), .ZN(n266) );
  AOI22D0 U253 ( .A1(n296), .A2(mem[122]), .B1(n295), .B2(mem[146]), .ZN(n264)
         );
  AOI22D0 U254 ( .A1(n294), .A2(mem[26]), .B1(n293), .B2(mem[98]), .ZN(n265)
         );
  ND4D0 U255 ( .A1(n222), .A2(n221), .A3(n220), .A4(n219), .ZN(n156) );
  AOI22D0 U256 ( .A1(n292), .A2(mem[3]), .B1(n291), .B2(mem[51]), .ZN(n222) );
  AOI22D0 U257 ( .A1(n296), .A2(mem[123]), .B1(n295), .B2(mem[147]), .ZN(n220)
         );
  AOI22D0 U258 ( .A1(n297), .A2(mem[75]), .B1(n303), .B2(mem[171]), .ZN(n219)
         );
  ND4D0 U259 ( .A1(n270), .A2(n269), .A3(n268), .A4(n267), .ZN(n155) );
  AOI22D0 U260 ( .A1(n292), .A2(mem[4]), .B1(n291), .B2(mem[52]), .ZN(n270) );
  AOI22D0 U261 ( .A1(n296), .A2(mem[124]), .B1(n295), .B2(mem[148]), .ZN(n268)
         );
  AOI22D0 U262 ( .A1(n294), .A2(mem[28]), .B1(n293), .B2(mem[100]), .ZN(n269)
         );
  ND4D0 U263 ( .A1(n238), .A2(n237), .A3(n236), .A4(n235), .ZN(n154) );
  AOI22D0 U264 ( .A1(n292), .A2(mem[5]), .B1(n291), .B2(mem[53]), .ZN(n238) );
  AOI22D0 U265 ( .A1(n296), .A2(mem[125]), .B1(n295), .B2(mem[149]), .ZN(n236)
         );
  AOI22D0 U266 ( .A1(n294), .A2(mem[29]), .B1(n293), .B2(mem[101]), .ZN(n237)
         );
  ND4D0 U267 ( .A1(n242), .A2(n241), .A3(n240), .A4(n239), .ZN(n153) );
  AOI22D0 U268 ( .A1(n292), .A2(mem[6]), .B1(n291), .B2(mem[54]), .ZN(n242) );
  AOI22D0 U269 ( .A1(n296), .A2(mem[126]), .B1(n295), .B2(mem[150]), .ZN(n240)
         );
  AOI22D0 U270 ( .A1(n294), .A2(mem[30]), .B1(n293), .B2(mem[102]), .ZN(n241)
         );
  ND4D0 U271 ( .A1(n246), .A2(n245), .A3(n244), .A4(n243), .ZN(n152) );
  AOI22D0 U272 ( .A1(n292), .A2(mem[7]), .B1(n291), .B2(mem[55]), .ZN(n246) );
  AOI22D0 U273 ( .A1(n294), .A2(mem[31]), .B1(n293), .B2(mem[103]), .ZN(n245)
         );
  AOI22D0 U274 ( .A1(n297), .A2(mem[79]), .B1(n303), .B2(mem[175]), .ZN(n243)
         );
  ND4D0 U275 ( .A1(n202), .A2(n201), .A3(n200), .A4(n199), .ZN(n151) );
  AOI22D0 U276 ( .A1(n292), .A2(mem[8]), .B1(n291), .B2(mem[56]), .ZN(n202) );
  AOI22D0 U277 ( .A1(n296), .A2(mem[128]), .B1(n295), .B2(mem[152]), .ZN(n200)
         );
  AOI22D0 U278 ( .A1(n294), .A2(mem[32]), .B1(n293), .B2(mem[104]), .ZN(n201)
         );
  ND4D0 U279 ( .A1(n234), .A2(n233), .A3(n232), .A4(n231), .ZN(n150) );
  AOI22D0 U280 ( .A1(n292), .A2(mem[9]), .B1(n291), .B2(mem[57]), .ZN(n234) );
  AOI22D0 U281 ( .A1(n296), .A2(mem[129]), .B1(n295), .B2(mem[153]), .ZN(n232)
         );
  AOI22D0 U282 ( .A1(n294), .A2(mem[33]), .B1(n293), .B2(mem[105]), .ZN(n233)
         );
  ND4D0 U283 ( .A1(n258), .A2(n257), .A3(n256), .A4(n255), .ZN(n149) );
  AOI22D0 U284 ( .A1(n292), .A2(mem[10]), .B1(n291), .B2(mem[58]), .ZN(n258)
         );
  AOI22D0 U285 ( .A1(n296), .A2(mem[130]), .B1(n295), .B2(mem[154]), .ZN(n256)
         );
  AOI22D0 U286 ( .A1(n294), .A2(mem[34]), .B1(n293), .B2(mem[106]), .ZN(n257)
         );
  ND4D0 U287 ( .A1(n286), .A2(n285), .A3(n284), .A4(n283), .ZN(n148) );
  AOI22D0 U288 ( .A1(n292), .A2(mem[11]), .B1(n291), .B2(mem[59]), .ZN(n286)
         );
  AOI22D0 U289 ( .A1(n296), .A2(mem[131]), .B1(n295), .B2(mem[155]), .ZN(n284)
         );
  AOI22D0 U290 ( .A1(n294), .A2(mem[35]), .B1(n293), .B2(mem[107]), .ZN(n285)
         );
  ND4D0 U291 ( .A1(n218), .A2(n217), .A3(n216), .A4(n215), .ZN(n147) );
  AOI22D0 U292 ( .A1(n292), .A2(mem[12]), .B1(n291), .B2(mem[60]), .ZN(n218)
         );
  AOI22D0 U293 ( .A1(n296), .A2(mem[132]), .B1(n295), .B2(mem[156]), .ZN(n216)
         );
  AOI22D0 U294 ( .A1(n294), .A2(mem[36]), .B1(n293), .B2(mem[108]), .ZN(n217)
         );
  AOI22D0 U295 ( .A1(n292), .A2(mem[13]), .B1(n291), .B2(mem[61]), .ZN(n301)
         );
  AOI22D0 U296 ( .A1(n296), .A2(mem[133]), .B1(n295), .B2(mem[157]), .ZN(n299)
         );
  AOI22D0 U297 ( .A1(n294), .A2(mem[37]), .B1(n293), .B2(mem[109]), .ZN(n300)
         );
  ND4D0 U298 ( .A1(n282), .A2(n281), .A3(n280), .A4(n279), .ZN(n145) );
  AOI22D0 U299 ( .A1(n296), .A2(mem[134]), .B1(n295), .B2(mem[158]), .ZN(n280)
         );
  AOI22D0 U300 ( .A1(n294), .A2(mem[38]), .B1(n293), .B2(mem[110]), .ZN(n281)
         );
  ND4D0 U301 ( .A1(n278), .A2(n277), .A3(n276), .A4(n275), .ZN(n144) );
  AOI22D0 U302 ( .A1(n292), .A2(mem[15]), .B1(n291), .B2(mem[63]), .ZN(n278)
         );
  AOI22D0 U303 ( .A1(n296), .A2(mem[135]), .B1(n295), .B2(mem[159]), .ZN(n276)
         );
  AOI22D0 U304 ( .A1(n294), .A2(mem[39]), .B1(n293), .B2(mem[111]), .ZN(n277)
         );
  ND4D0 U305 ( .A1(n254), .A2(n253), .A3(n252), .A4(n251), .ZN(n143) );
  AOI22D0 U306 ( .A1(n292), .A2(mem[16]), .B1(n291), .B2(mem[64]), .ZN(n254)
         );
  AOI22D0 U307 ( .A1(n296), .A2(mem[136]), .B1(n295), .B2(mem[160]), .ZN(n252)
         );
  AOI22D0 U308 ( .A1(n294), .A2(mem[40]), .B1(n293), .B2(mem[112]), .ZN(n253)
         );
  ND4D0 U309 ( .A1(n230), .A2(n229), .A3(n228), .A4(n227), .ZN(n142) );
  AOI22D0 U310 ( .A1(n292), .A2(mem[17]), .B1(n291), .B2(mem[65]), .ZN(n230)
         );
  AOI22D0 U311 ( .A1(n296), .A2(mem[137]), .B1(n295), .B2(mem[161]), .ZN(n228)
         );
  AOI22D0 U312 ( .A1(n294), .A2(mem[41]), .B1(n293), .B2(mem[113]), .ZN(n229)
         );
  ND4D0 U313 ( .A1(n290), .A2(n289), .A3(n288), .A4(n287), .ZN(n141) );
  AOI22D0 U314 ( .A1(n292), .A2(mem[18]), .B1(n291), .B2(mem[66]), .ZN(n290)
         );
  AOI22D0 U315 ( .A1(n296), .A2(mem[138]), .B1(n295), .B2(mem[162]), .ZN(n288)
         );
  AOI22D0 U316 ( .A1(n297), .A2(mem[90]), .B1(n303), .B2(mem[186]), .ZN(n287)
         );
  ND4D0 U317 ( .A1(n214), .A2(n213), .A3(n212), .A4(n211), .ZN(n140) );
  AOI22D0 U318 ( .A1(n292), .A2(mem[19]), .B1(n291), .B2(mem[67]), .ZN(n214)
         );
  AOI22D0 U319 ( .A1(n296), .A2(mem[139]), .B1(n295), .B2(mem[163]), .ZN(n212)
         );
  AOI22D0 U320 ( .A1(n294), .A2(mem[43]), .B1(n293), .B2(mem[115]), .ZN(n213)
         );
  ND4D0 U321 ( .A1(n210), .A2(n209), .A3(n208), .A4(n207), .ZN(n139) );
  AOI22D0 U322 ( .A1(n292), .A2(mem[20]), .B1(n291), .B2(mem[68]), .ZN(n210)
         );
  AOI22D0 U323 ( .A1(n296), .A2(mem[140]), .B1(n295), .B2(mem[164]), .ZN(n208)
         );
  AOI22D0 U324 ( .A1(n294), .A2(mem[44]), .B1(n293), .B2(mem[116]), .ZN(n209)
         );
  ND4D0 U325 ( .A1(n250), .A2(n249), .A3(n248), .A4(n247), .ZN(n138) );
  AOI22D0 U326 ( .A1(n292), .A2(mem[21]), .B1(n291), .B2(mem[69]), .ZN(n250)
         );
  AOI22D0 U327 ( .A1(n296), .A2(mem[141]), .B1(n295), .B2(mem[165]), .ZN(n248)
         );
  AOI22D0 U328 ( .A1(n294), .A2(mem[45]), .B1(n293), .B2(mem[117]), .ZN(n249)
         );
  ND4D0 U329 ( .A1(n262), .A2(n261), .A3(n260), .A4(n259), .ZN(n137) );
  AOI22D0 U330 ( .A1(n292), .A2(mem[22]), .B1(n291), .B2(mem[70]), .ZN(n262)
         );
  AOI22D0 U331 ( .A1(n294), .A2(mem[46]), .B1(n293), .B2(mem[118]), .ZN(n261)
         );
  AOI22D0 U332 ( .A1(n297), .A2(mem[94]), .B1(n303), .B2(mem[190]), .ZN(n259)
         );
  ND4D0 U333 ( .A1(n274), .A2(n273), .A3(n272), .A4(n271), .ZN(n136) );
  AOI22D0 U334 ( .A1(n292), .A2(mem[23]), .B1(n291), .B2(mem[71]), .ZN(n274)
         );
  AOI22D0 U335 ( .A1(n296), .A2(mem[143]), .B1(n295), .B2(mem[167]), .ZN(n272)
         );
  AOI22D0 U336 ( .A1(n294), .A2(mem[47]), .B1(n293), .B2(mem[119]), .ZN(n273)
         );
  ND4D0 U337 ( .A1(n226), .A2(n225), .A3(n224), .A4(n223), .ZN(n159) );
  AOI22D0 U338 ( .A1(n292), .A2(mem[0]), .B1(n291), .B2(mem[48]), .ZN(n226) );
  AOI22D0 U339 ( .A1(n296), .A2(mem[120]), .B1(n295), .B2(mem[144]), .ZN(n224)
         );
  AOI22D0 U340 ( .A1(n294), .A2(mem[24]), .B1(n293), .B2(mem[96]), .ZN(n225)
         );
  OR2D0 U341 ( .A1(n176), .A2(n187), .Z(n175) );
  OR2D0 U342 ( .A1(n176), .A2(n188), .Z(n177) );
  IOA21D0 U343 ( .A1(n193), .A2(n192), .B(n304), .ZN(n194) );
  OAI21D0 U344 ( .A1(n190), .A2(wr_ptr[0]), .B(n189), .ZN(N33) );
  CKND2D0 U345 ( .A1(n196), .A2(n197), .ZN(N81) );
  INVD0 U346 ( .I(rd_ptr[0]), .ZN(n160) );
  NR2D4 U347 ( .A1(n172), .A2(n171), .ZN(full) );
  NR3D2 U348 ( .A1(n176), .A2(n190), .A3(n192), .ZN(n162) );
  NR3D2 U349 ( .A1(n176), .A2(wr_ptr[1]), .A3(wr_ptr[2]), .ZN(n163) );
  CKND2D0 U350 ( .A1(n305), .A2(n160), .ZN(n195) );
  INVD0 U351 ( .I(rd_ptr_sync[1]), .ZN(n164) );
  AOI22D0 U352 ( .A1(n294), .A2(mem[27]), .B1(n293), .B2(mem[99]), .ZN(n221)
         );
  AOI22D0 U353 ( .A1(n296), .A2(mem[127]), .B1(n295), .B2(mem[151]), .ZN(n244)
         );
  AOI22D0 U354 ( .A1(n297), .A2(mem[83]), .B1(n303), .B2(mem[179]), .ZN(n283)
         );
  AOI22D0 U355 ( .A1(n292), .A2(mem[14]), .B1(n291), .B2(mem[62]), .ZN(n282)
         );
  AOI22D0 U356 ( .A1(n294), .A2(mem[42]), .B1(n293), .B2(mem[114]), .ZN(n289)
         );
  AOI22D0 U357 ( .A1(n296), .A2(mem[142]), .B1(n295), .B2(mem[166]), .ZN(n260)
         );
  AOI21D1 U358 ( .A1(n170), .A2(n169), .B(wr_ptr[1]), .ZN(n171) );
  ND4D0 U359 ( .A1(n206), .A2(n205), .A3(n204), .A4(n203), .ZN(n158) );
  ND4D0 U360 ( .A1(n301), .A2(n300), .A3(n299), .A4(n298), .ZN(n146) );
  XNR2D1 U361 ( .A1(rd_ptr_sync[3]), .A2(rd_ptr_sync[2]), .ZN(n165) );
  XNR2D1 U362 ( .A1(n165), .A2(n164), .ZN(n170) );
  INVD1 U363 ( .I(wr_ptr[2]), .ZN(n192) );
  ND2D4 U364 ( .A1(n314), .A2(n315), .ZN(n302) );
  ND2D2 U365 ( .A1(n174), .A2(n313), .ZN(n176) );
  MUX2ND0 U366 ( .I0(wr_ptr_sync[3]), .I1(n179), .S(wr_ptr_sync[2]), .ZN(n180)
         );
  NR3D2 U367 ( .A1(n302), .A2(wr_ptr[2]), .A3(n189), .ZN(n310) );
  NR3D2 U368 ( .A1(n302), .A2(n188), .A3(n313), .ZN(N50) );
  NR3D2 U369 ( .A1(n302), .A2(n192), .A3(n189), .ZN(n309) );
  AO21D0 U370 ( .A1(rd_ptr[2]), .A2(n198), .B(n297), .Z(N82) );
  CKND2D0 U371 ( .A1(n188), .A2(n187), .ZN(wr_ptr_gray[1]) );
  INVD0 U372 ( .I(n194), .ZN(N34) );
  NR2D1 U373 ( .A1(n306), .A2(n198), .ZN(n303) );
  NR2D2 U374 ( .A1(n302), .A2(n304), .ZN(n308) );
  CKXOR2D0 U375 ( .A1(wr_ptr[2]), .A2(wr_ptr_gray[3]), .Z(wr_ptr_gray[2]) );
  CKXOR2D0 U376 ( .A1(rd_ptr_gray[3]), .A2(rd_ptr[2]), .Z(rd_ptr_gray[2]) );
  XNR2D0 U377 ( .A1(n304), .A2(wr_ptr_gray[3]), .ZN(N35) );
  AOI22D0 U378 ( .A1(rd_ptr[1]), .A2(rd_ptr[2]), .B1(n306), .B2(n305), .ZN(
        rd_ptr_gray[1]) );
endmodule

