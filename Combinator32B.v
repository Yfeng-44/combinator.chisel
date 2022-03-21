module Combinator2B(
  input  [15:0] io_word1,
  input  [15:0] io_word2,
  output [15:0] io_out
);
  wire [23:0] _GEN_0 = {io_word1, 8'h0}; // @[combinator.scala 16:30]
  wire [30:0] word1_8bit = {{7'd0}, _GEN_0}; // @[combinator.scala 16:30]
  wire [15:0] word2_8bit = io_word2 & 16'hff; // @[combinator.scala 17:29]
  wire [30:0] _GEN_1 = {{15'd0}, word2_8bit}; // @[combinator.scala 18:24]
  wire [30:0] _io_out_T = word1_8bit | _GEN_1; // @[combinator.scala 18:24]
  assign io_out = _io_out_T[15:0]; // @[combinator.scala 18:10]
endmodule
module Combinator32B(
  input         clock,
  input         reset,
  input  [15:0] io_cacheLine_0,
  input  [15:0] io_cacheLine_1,
  input  [15:0] io_cacheLine_2,
  input  [15:0] io_cacheLine_3,
  input  [15:0] io_cacheLine_4,
  input  [15:0] io_cacheLine_5,
  input  [15:0] io_cacheLine_6,
  input  [15:0] io_cacheLine_7,
  input  [15:0] io_cacheLine_8,
  input  [15:0] io_cacheLine_9,
  input  [15:0] io_cacheLine_10,
  input  [15:0] io_cacheLine_11,
  input  [15:0] io_cacheLine_12,
  input  [15:0] io_cacheLine_13,
  input  [15:0] io_cacheLine_14,
  input  [15:0] io_cacheLine_15,
  output [15:0] io_out_0,
  output [15:0] io_out_1,
  output [15:0] io_out_2,
  output [15:0] io_out_3,
  output [15:0] io_out_4,
  output [15:0] io_out_5,
  output [15:0] io_out_6,
  output [15:0] io_out_7
);
  wire [15:0] combinator2BVec_0_io_word1; // @[combinator.scala 56:43]
  wire [15:0] combinator2BVec_0_io_word2; // @[combinator.scala 56:43]
  wire [15:0] combinator2BVec_0_io_out; // @[combinator.scala 56:43]
  wire [15:0] combinator2BVec_1_io_word1; // @[combinator.scala 56:43]
  wire [15:0] combinator2BVec_1_io_word2; // @[combinator.scala 56:43]
  wire [15:0] combinator2BVec_1_io_out; // @[combinator.scala 56:43]
  wire [15:0] combinator2BVec_2_io_word1; // @[combinator.scala 56:43]
  wire [15:0] combinator2BVec_2_io_word2; // @[combinator.scala 56:43]
  wire [15:0] combinator2BVec_2_io_out; // @[combinator.scala 56:43]
  wire [15:0] combinator2BVec_3_io_word1; // @[combinator.scala 56:43]
  wire [15:0] combinator2BVec_3_io_word2; // @[combinator.scala 56:43]
  wire [15:0] combinator2BVec_3_io_out; // @[combinator.scala 56:43]
  wire [15:0] combinator2BVec_4_io_word1; // @[combinator.scala 56:43]
  wire [15:0] combinator2BVec_4_io_word2; // @[combinator.scala 56:43]
  wire [15:0] combinator2BVec_4_io_out; // @[combinator.scala 56:43]
  wire [15:0] combinator2BVec_5_io_word1; // @[combinator.scala 56:43]
  wire [15:0] combinator2BVec_5_io_word2; // @[combinator.scala 56:43]
  wire [15:0] combinator2BVec_5_io_out; // @[combinator.scala 56:43]
  wire [15:0] combinator2BVec_6_io_word1; // @[combinator.scala 56:43]
  wire [15:0] combinator2BVec_6_io_word2; // @[combinator.scala 56:43]
  wire [15:0] combinator2BVec_6_io_out; // @[combinator.scala 56:43]
  wire [15:0] combinator2BVec_7_io_word1; // @[combinator.scala 56:43]
  wire [15:0] combinator2BVec_7_io_word2; // @[combinator.scala 56:43]
  wire [15:0] combinator2BVec_7_io_out; // @[combinator.scala 56:43]
  Combinator2B combinator2BVec_0 ( // @[combinator.scala 56:43]
    .io_word1(combinator2BVec_0_io_word1),
    .io_word2(combinator2BVec_0_io_word2),
    .io_out(combinator2BVec_0_io_out)
  );
  Combinator2B combinator2BVec_1 ( // @[combinator.scala 56:43]
    .io_word1(combinator2BVec_1_io_word1),
    .io_word2(combinator2BVec_1_io_word2),
    .io_out(combinator2BVec_1_io_out)
  );
  Combinator2B combinator2BVec_2 ( // @[combinator.scala 56:43]
    .io_word1(combinator2BVec_2_io_word1),
    .io_word2(combinator2BVec_2_io_word2),
    .io_out(combinator2BVec_2_io_out)
  );
  Combinator2B combinator2BVec_3 ( // @[combinator.scala 56:43]
    .io_word1(combinator2BVec_3_io_word1),
    .io_word2(combinator2BVec_3_io_word2),
    .io_out(combinator2BVec_3_io_out)
  );
  Combinator2B combinator2BVec_4 ( // @[combinator.scala 56:43]
    .io_word1(combinator2BVec_4_io_word1),
    .io_word2(combinator2BVec_4_io_word2),
    .io_out(combinator2BVec_4_io_out)
  );
  Combinator2B combinator2BVec_5 ( // @[combinator.scala 56:43]
    .io_word1(combinator2BVec_5_io_word1),
    .io_word2(combinator2BVec_5_io_word2),
    .io_out(combinator2BVec_5_io_out)
  );
  Combinator2B combinator2BVec_6 ( // @[combinator.scala 56:43]
    .io_word1(combinator2BVec_6_io_word1),
    .io_word2(combinator2BVec_6_io_word2),
    .io_out(combinator2BVec_6_io_out)
  );
  Combinator2B combinator2BVec_7 ( // @[combinator.scala 56:43]
    .io_word1(combinator2BVec_7_io_word1),
    .io_word2(combinator2BVec_7_io_word2),
    .io_out(combinator2BVec_7_io_out)
  );
  assign io_out_0 = combinator2BVec_0_io_out; // @[combinator.scala 60:15]
  assign io_out_1 = combinator2BVec_1_io_out; // @[combinator.scala 60:15]
  assign io_out_2 = combinator2BVec_2_io_out; // @[combinator.scala 60:15]
  assign io_out_3 = combinator2BVec_3_io_out; // @[combinator.scala 60:15]
  assign io_out_4 = combinator2BVec_4_io_out; // @[combinator.scala 60:15]
  assign io_out_5 = combinator2BVec_5_io_out; // @[combinator.scala 60:15]
  assign io_out_6 = combinator2BVec_6_io_out; // @[combinator.scala 60:15]
  assign io_out_7 = combinator2BVec_7_io_out; // @[combinator.scala 60:15]
  assign combinator2BVec_0_io_word1 = io_cacheLine_0; // @[combinator.scala 58:33]
  assign combinator2BVec_0_io_word2 = io_cacheLine_1; // @[combinator.scala 59:33]
  assign combinator2BVec_1_io_word1 = io_cacheLine_2; // @[combinator.scala 58:33]
  assign combinator2BVec_1_io_word2 = io_cacheLine_3; // @[combinator.scala 59:33]
  assign combinator2BVec_2_io_word1 = io_cacheLine_4; // @[combinator.scala 58:33]
  assign combinator2BVec_2_io_word2 = io_cacheLine_5; // @[combinator.scala 59:33]
  assign combinator2BVec_3_io_word1 = io_cacheLine_6; // @[combinator.scala 58:33]
  assign combinator2BVec_3_io_word2 = io_cacheLine_7; // @[combinator.scala 59:33]
  assign combinator2BVec_4_io_word1 = io_cacheLine_8; // @[combinator.scala 58:33]
  assign combinator2BVec_4_io_word2 = io_cacheLine_9; // @[combinator.scala 59:33]
  assign combinator2BVec_5_io_word1 = io_cacheLine_10; // @[combinator.scala 58:33]
  assign combinator2BVec_5_io_word2 = io_cacheLine_11; // @[combinator.scala 59:33]
  assign combinator2BVec_6_io_word1 = io_cacheLine_12; // @[combinator.scala 58:33]
  assign combinator2BVec_6_io_word2 = io_cacheLine_13; // @[combinator.scala 59:33]
  assign combinator2BVec_7_io_word1 = io_cacheLine_14; // @[combinator.scala 58:33]
  assign combinator2BVec_7_io_word2 = io_cacheLine_15; // @[combinator.scala 59:33]
endmodule
