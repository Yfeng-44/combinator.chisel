module GPURowDisaggregator32B(
  input         clock,
  input         reset,
  input  [15:0] io_disaggregatedData_0,
  input  [15:0] io_disaggregatedData_1,
  input  [15:0] io_disaggregatedData_2,
  input  [15:0] io_disaggregatedData_3,
  input  [15:0] io_disaggregatedData_4,
  input  [15:0] io_disaggregatedData_5,
  input  [15:0] io_disaggregatedData_6,
  input  [15:0] io_disaggregatedData_7,
  input  [15:0] io_disaggregatedData_8,
  input  [15:0] io_disaggregatedData_9,
  input  [15:0] io_disaggregatedData_10,
  input  [15:0] io_disaggregatedData_11,
  input  [15:0] io_disaggregatedData_12,
  input  [15:0] io_disaggregatedData_13,
  input  [15:0] io_disaggregatedData_14,
  input  [15:0] io_disaggregatedData_15,
  input  [15:0] io_rowBuffer_0,
  input  [15:0] io_rowBuffer_1,
  input  [15:0] io_rowBuffer_2,
  input  [15:0] io_rowBuffer_3,
  input  [15:0] io_rowBuffer_4,
  input  [15:0] io_rowBuffer_5,
  input  [15:0] io_rowBuffer_6,
  input  [15:0] io_rowBuffer_7,
  input  [15:0] io_rowBuffer_8,
  input  [15:0] io_rowBuffer_9,
  input  [15:0] io_rowBuffer_10,
  input  [15:0] io_rowBuffer_11,
  input  [15:0] io_rowBuffer_12,
  input  [15:0] io_rowBuffer_13,
  input  [15:0] io_rowBuffer_14,
  input  [15:0] io_rowBuffer_15,
  output [15:0] io_out_0,
  output [15:0] io_out_1,
  output [15:0] io_out_2,
  output [15:0] io_out_3,
  output [15:0] io_out_4,
  output [15:0] io_out_5,
  output [15:0] io_out_6,
  output [15:0] io_out_7,
  output [15:0] io_out_8,
  output [15:0] io_out_9,
  output [15:0] io_out_10,
  output [15:0] io_out_11,
  output [15:0] io_out_12,
  output [15:0] io_out_13,
  output [15:0] io_out_14,
  output [15:0] io_out_15
);
  wire [15:0] masked_words = io_rowBuffer_0 & 16'hff00; // @[combinator.scala 108:40]
  wire [15:0] masked_words_1 = io_rowBuffer_1 & 16'hff00; // @[combinator.scala 108:40]
  wire [15:0] masked_words_2 = io_rowBuffer_2 & 16'hff00; // @[combinator.scala 108:40]
  wire [15:0] masked_words_3 = io_rowBuffer_3 & 16'hff00; // @[combinator.scala 108:40]
  wire [15:0] masked_words_4 = io_rowBuffer_4 & 16'hff00; // @[combinator.scala 108:40]
  wire [15:0] masked_words_5 = io_rowBuffer_5 & 16'hff00; // @[combinator.scala 108:40]
  wire [15:0] masked_words_6 = io_rowBuffer_6 & 16'hff00; // @[combinator.scala 108:40]
  wire [15:0] masked_words_7 = io_rowBuffer_7 & 16'hff00; // @[combinator.scala 108:40]
  wire [15:0] masked_words_8 = io_rowBuffer_8 & 16'hff00; // @[combinator.scala 108:40]
  wire [15:0] masked_words_9 = io_rowBuffer_9 & 16'hff00; // @[combinator.scala 108:40]
  wire [15:0] masked_words_10 = io_rowBuffer_10 & 16'hff00; // @[combinator.scala 108:40]
  wire [15:0] masked_words_11 = io_rowBuffer_11 & 16'hff00; // @[combinator.scala 108:40]
  wire [15:0] masked_words_12 = io_rowBuffer_12 & 16'hff00; // @[combinator.scala 108:40]
  wire [15:0] masked_words_13 = io_rowBuffer_13 & 16'hff00; // @[combinator.scala 108:40]
  wire [15:0] masked_words_14 = io_rowBuffer_14 & 16'hff00; // @[combinator.scala 108:40]
  wire [15:0] masked_words_15 = io_rowBuffer_15 & 16'hff00; // @[combinator.scala 108:40]
  assign io_out_0 = masked_words | io_disaggregatedData_0; // @[combinator.scala 109:31]
  assign io_out_1 = masked_words_1 | io_disaggregatedData_1; // @[combinator.scala 109:31]
  assign io_out_2 = masked_words_2 | io_disaggregatedData_2; // @[combinator.scala 109:31]
  assign io_out_3 = masked_words_3 | io_disaggregatedData_3; // @[combinator.scala 109:31]
  assign io_out_4 = masked_words_4 | io_disaggregatedData_4; // @[combinator.scala 109:31]
  assign io_out_5 = masked_words_5 | io_disaggregatedData_5; // @[combinator.scala 109:31]
  assign io_out_6 = masked_words_6 | io_disaggregatedData_6; // @[combinator.scala 109:31]
  assign io_out_7 = masked_words_7 | io_disaggregatedData_7; // @[combinator.scala 109:31]
  assign io_out_8 = masked_words_8 | io_disaggregatedData_8; // @[combinator.scala 109:31]
  assign io_out_9 = masked_words_9 | io_disaggregatedData_9; // @[combinator.scala 109:31]
  assign io_out_10 = masked_words_10 | io_disaggregatedData_10; // @[combinator.scala 109:31]
  assign io_out_11 = masked_words_11 | io_disaggregatedData_11; // @[combinator.scala 109:31]
  assign io_out_12 = masked_words_12 | io_disaggregatedData_12; // @[combinator.scala 109:31]
  assign io_out_13 = masked_words_13 | io_disaggregatedData_13; // @[combinator.scala 109:31]
  assign io_out_14 = masked_words_14 | io_disaggregatedData_14; // @[combinator.scala 109:31]
  assign io_out_15 = masked_words_15 | io_disaggregatedData_15; // @[combinator.scala 109:31]
endmodule
