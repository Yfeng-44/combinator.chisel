module Combinator4B(
  input  [31:0] io_word1,
  input  [31:0] io_word2,
  output [31:0] io_out
);
  wire [47:0] _GEN_0 = {io_word1, 16'h0}; // @[combinator.scala 16:37]
  wire [62:0] word1_16bit = {{15'd0}, _GEN_0}; // @[combinator.scala 16:37]
  wire [31:0] word2_16bit = io_word2 & 32'hffff; // @[combinator.scala 17:36]
  wire [62:0] _GEN_1 = {{31'd0}, word2_16bit}; // @[combinator.scala 18:25]
  wire [62:0] _io_out_T = word1_16bit | _GEN_1; // @[combinator.scala 18:25]
  assign io_out = _io_out_T[31:0]; // @[combinator.scala 18:10]
endmodule
module Combinator64B(
  input         clock,
  input         reset,
  input  [31:0] io_cacheLine_0,
  input  [31:0] io_cacheLine_1,
  input  [31:0] io_cacheLine_2,
  input  [31:0] io_cacheLine_3,
  input  [31:0] io_cacheLine_4,
  input  [31:0] io_cacheLine_5,
  input  [31:0] io_cacheLine_6,
  input  [31:0] io_cacheLine_7,
  input  [31:0] io_cacheLine_8,
  input  [31:0] io_cacheLine_9,
  input  [31:0] io_cacheLine_10,
  input  [31:0] io_cacheLine_11,
  input  [31:0] io_cacheLine_12,
  input  [31:0] io_cacheLine_13,
  input  [31:0] io_cacheLine_14,
  input  [31:0] io_cacheLine_15,
  output [31:0] io_out_0,
  output [31:0] io_out_1,
  output [31:0] io_out_2,
  output [31:0] io_out_3,
  output [31:0] io_out_4,
  output [31:0] io_out_5,
  output [31:0] io_out_6,
  output [31:0] io_out_7
);
  wire [31:0] combinator4Bvec_0_io_word1; // @[combinator.scala 28:62]
  wire [31:0] combinator4Bvec_0_io_word2; // @[combinator.scala 28:62]
  wire [31:0] combinator4Bvec_0_io_out; // @[combinator.scala 28:62]
  wire [31:0] combinator4Bvec_1_io_word1; // @[combinator.scala 28:62]
  wire [31:0] combinator4Bvec_1_io_word2; // @[combinator.scala 28:62]
  wire [31:0] combinator4Bvec_1_io_out; // @[combinator.scala 28:62]
  wire [31:0] combinator4Bvec_2_io_word1; // @[combinator.scala 28:62]
  wire [31:0] combinator4Bvec_2_io_word2; // @[combinator.scala 28:62]
  wire [31:0] combinator4Bvec_2_io_out; // @[combinator.scala 28:62]
  wire [31:0] combinator4Bvec_3_io_word1; // @[combinator.scala 28:62]
  wire [31:0] combinator4Bvec_3_io_word2; // @[combinator.scala 28:62]
  wire [31:0] combinator4Bvec_3_io_out; // @[combinator.scala 28:62]
  wire [31:0] combinator4Bvec_4_io_word1; // @[combinator.scala 28:62]
  wire [31:0] combinator4Bvec_4_io_word2; // @[combinator.scala 28:62]
  wire [31:0] combinator4Bvec_4_io_out; // @[combinator.scala 28:62]
  wire [31:0] combinator4Bvec_5_io_word1; // @[combinator.scala 28:62]
  wire [31:0] combinator4Bvec_5_io_word2; // @[combinator.scala 28:62]
  wire [31:0] combinator4Bvec_5_io_out; // @[combinator.scala 28:62]
  wire [31:0] combinator4Bvec_6_io_word1; // @[combinator.scala 28:62]
  wire [31:0] combinator4Bvec_6_io_word2; // @[combinator.scala 28:62]
  wire [31:0] combinator4Bvec_6_io_out; // @[combinator.scala 28:62]
  wire [31:0] combinator4Bvec_7_io_word1; // @[combinator.scala 28:62]
  wire [31:0] combinator4Bvec_7_io_word2; // @[combinator.scala 28:62]
  wire [31:0] combinator4Bvec_7_io_out; // @[combinator.scala 28:62]
  Combinator4B combinator4Bvec_0 ( // @[combinator.scala 28:62]
    .io_word1(combinator4Bvec_0_io_word1),
    .io_word2(combinator4Bvec_0_io_word2),
    .io_out(combinator4Bvec_0_io_out)
  );
  Combinator4B combinator4Bvec_1 ( // @[combinator.scala 28:62]
    .io_word1(combinator4Bvec_1_io_word1),
    .io_word2(combinator4Bvec_1_io_word2),
    .io_out(combinator4Bvec_1_io_out)
  );
  Combinator4B combinator4Bvec_2 ( // @[combinator.scala 28:62]
    .io_word1(combinator4Bvec_2_io_word1),
    .io_word2(combinator4Bvec_2_io_word2),
    .io_out(combinator4Bvec_2_io_out)
  );
  Combinator4B combinator4Bvec_3 ( // @[combinator.scala 28:62]
    .io_word1(combinator4Bvec_3_io_word1),
    .io_word2(combinator4Bvec_3_io_word2),
    .io_out(combinator4Bvec_3_io_out)
  );
  Combinator4B combinator4Bvec_4 ( // @[combinator.scala 28:62]
    .io_word1(combinator4Bvec_4_io_word1),
    .io_word2(combinator4Bvec_4_io_word2),
    .io_out(combinator4Bvec_4_io_out)
  );
  Combinator4B combinator4Bvec_5 ( // @[combinator.scala 28:62]
    .io_word1(combinator4Bvec_5_io_word1),
    .io_word2(combinator4Bvec_5_io_word2),
    .io_out(combinator4Bvec_5_io_out)
  );
  Combinator4B combinator4Bvec_6 ( // @[combinator.scala 28:62]
    .io_word1(combinator4Bvec_6_io_word1),
    .io_word2(combinator4Bvec_6_io_word2),
    .io_out(combinator4Bvec_6_io_out)
  );
  Combinator4B combinator4Bvec_7 ( // @[combinator.scala 28:62]
    .io_word1(combinator4Bvec_7_io_word1),
    .io_word2(combinator4Bvec_7_io_word2),
    .io_out(combinator4Bvec_7_io_out)
  );
  assign io_out_0 = combinator4Bvec_0_io_out; // @[combinator.scala 32:15]
  assign io_out_1 = combinator4Bvec_1_io_out; // @[combinator.scala 32:15]
  assign io_out_2 = combinator4Bvec_2_io_out; // @[combinator.scala 32:15]
  assign io_out_3 = combinator4Bvec_3_io_out; // @[combinator.scala 32:15]
  assign io_out_4 = combinator4Bvec_4_io_out; // @[combinator.scala 32:15]
  assign io_out_5 = combinator4Bvec_5_io_out; // @[combinator.scala 32:15]
  assign io_out_6 = combinator4Bvec_6_io_out; // @[combinator.scala 32:15]
  assign io_out_7 = combinator4Bvec_7_io_out; // @[combinator.scala 32:15]
  assign combinator4Bvec_0_io_word1 = io_cacheLine_0; // @[combinator.scala 30:33]
  assign combinator4Bvec_0_io_word2 = io_cacheLine_1; // @[combinator.scala 31:33]
  assign combinator4Bvec_1_io_word1 = io_cacheLine_2; // @[combinator.scala 30:33]
  assign combinator4Bvec_1_io_word2 = io_cacheLine_3; // @[combinator.scala 31:33]
  assign combinator4Bvec_2_io_word1 = io_cacheLine_4; // @[combinator.scala 30:33]
  assign combinator4Bvec_2_io_word2 = io_cacheLine_5; // @[combinator.scala 31:33]
  assign combinator4Bvec_3_io_word1 = io_cacheLine_6; // @[combinator.scala 30:33]
  assign combinator4Bvec_3_io_word2 = io_cacheLine_7; // @[combinator.scala 31:33]
  assign combinator4Bvec_4_io_word1 = io_cacheLine_8; // @[combinator.scala 30:33]
  assign combinator4Bvec_4_io_word2 = io_cacheLine_9; // @[combinator.scala 31:33]
  assign combinator4Bvec_5_io_word1 = io_cacheLine_10; // @[combinator.scala 30:33]
  assign combinator4Bvec_5_io_word2 = io_cacheLine_11; // @[combinator.scala 31:33]
  assign combinator4Bvec_6_io_word1 = io_cacheLine_12; // @[combinator.scala 30:33]
  assign combinator4Bvec_6_io_word2 = io_cacheLine_13; // @[combinator.scala 31:33]
  assign combinator4Bvec_7_io_word1 = io_cacheLine_14; // @[combinator.scala 30:33]
  assign combinator4Bvec_7_io_word2 = io_cacheLine_15; // @[combinator.scala 31:33]
endmodule
