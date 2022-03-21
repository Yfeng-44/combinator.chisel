module GPUMemCombinator32B(
  input         clock,
  input         reset,
  input  [15:0] io_payload_0,
  input  [15:0] io_payload_1,
  input  [15:0] io_payload_2,
  input  [15:0] io_payload_3,
  input  [15:0] io_payload_4,
  input  [15:0] io_payload_5,
  input  [15:0] io_payload_6,
  input  [15:0] io_payload_7,
  input  [15:0] io_weights_0,
  input  [15:0] io_weights_1,
  input  [15:0] io_weights_2,
  input  [15:0] io_weights_3,
  input  [15:0] io_weights_4,
  input  [15:0] io_weights_5,
  input  [15:0] io_weights_6,
  input  [15:0] io_weights_7,
  input  [15:0] io_weights_8,
  input  [15:0] io_weights_9,
  input  [15:0] io_weights_10,
  input  [15:0] io_weights_11,
  input  [15:0] io_weights_12,
  input  [15:0] io_weights_13,
  input  [15:0] io_weights_14,
  input  [15:0] io_weights_15,
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
  wire [15:0] half_weights1 = io_weights_0 & 16'hff00; // @[combinator.scala 96:41]
  wire [15:0] half_weights2 = io_weights_1 & 16'hff00; // @[combinator.scala 97:45]
  wire [15:0] half_payload1 = {{8'd0}, io_payload_0[15:8]}; // @[combinator.scala 99:40]
  wire [15:0] half_payload2 = io_payload_0 & 16'hff; // @[combinator.scala 100:39]
  wire [15:0] half_weights1_1 = io_weights_2 & 16'hff00; // @[combinator.scala 96:41]
  wire [15:0] half_weights2_1 = io_weights_3 & 16'hff00; // @[combinator.scala 97:45]
  wire [15:0] half_payload1_1 = {{8'd0}, io_payload_1[15:8]}; // @[combinator.scala 99:40]
  wire [15:0] half_payload2_1 = io_payload_1 & 16'hff; // @[combinator.scala 100:39]
  wire [15:0] half_weights1_2 = io_weights_4 & 16'hff00; // @[combinator.scala 96:41]
  wire [15:0] half_weights2_2 = io_weights_5 & 16'hff00; // @[combinator.scala 97:45]
  wire [15:0] half_payload1_2 = {{8'd0}, io_payload_2[15:8]}; // @[combinator.scala 99:40]
  wire [15:0] half_payload2_2 = io_payload_2 & 16'hff; // @[combinator.scala 100:39]
  wire [15:0] half_weights1_3 = io_weights_6 & 16'hff00; // @[combinator.scala 96:41]
  wire [15:0] half_weights2_3 = io_weights_7 & 16'hff00; // @[combinator.scala 97:45]
  wire [15:0] half_payload1_3 = {{8'd0}, io_payload_3[15:8]}; // @[combinator.scala 99:40]
  wire [15:0] half_payload2_3 = io_payload_3 & 16'hff; // @[combinator.scala 100:39]
  wire [15:0] half_weights1_4 = io_weights_8 & 16'hff00; // @[combinator.scala 96:41]
  wire [15:0] half_weights2_4 = io_weights_9 & 16'hff00; // @[combinator.scala 97:45]
  wire [15:0] half_payload1_4 = {{8'd0}, io_payload_4[15:8]}; // @[combinator.scala 99:40]
  wire [15:0] half_payload2_4 = io_payload_4 & 16'hff; // @[combinator.scala 100:39]
  wire [15:0] half_weights1_5 = io_weights_10 & 16'hff00; // @[combinator.scala 96:41]
  wire [15:0] half_weights2_5 = io_weights_11 & 16'hff00; // @[combinator.scala 97:45]
  wire [15:0] half_payload1_5 = {{8'd0}, io_payload_5[15:8]}; // @[combinator.scala 99:40]
  wire [15:0] half_payload2_5 = io_payload_5 & 16'hff; // @[combinator.scala 100:39]
  wire [15:0] half_weights1_6 = io_weights_12 & 16'hff00; // @[combinator.scala 96:41]
  wire [15:0] half_weights2_6 = io_weights_13 & 16'hff00; // @[combinator.scala 97:45]
  wire [15:0] half_payload1_6 = {{8'd0}, io_payload_6[15:8]}; // @[combinator.scala 99:40]
  wire [15:0] half_payload2_6 = io_payload_6 & 16'hff; // @[combinator.scala 100:39]
  wire [15:0] half_weights1_7 = io_weights_14 & 16'hff00; // @[combinator.scala 96:41]
  wire [15:0] half_weights2_7 = io_weights_15 & 16'hff00; // @[combinator.scala 97:45]
  wire [15:0] half_payload1_7 = {{8'd0}, io_payload_7[15:8]}; // @[combinator.scala 99:40]
  wire [15:0] half_payload2_7 = io_payload_7 & 16'hff; // @[combinator.scala 100:39]
  assign io_out_0 = half_weights1 | half_payload1; // @[combinator.scala 102:34]
  assign io_out_1 = half_weights2 | half_payload2; // @[combinator.scala 103:38]
  assign io_out_2 = half_weights1_1 | half_payload1_1; // @[combinator.scala 102:34]
  assign io_out_3 = half_weights2_1 | half_payload2_1; // @[combinator.scala 103:38]
  assign io_out_4 = half_weights1_2 | half_payload1_2; // @[combinator.scala 102:34]
  assign io_out_5 = half_weights2_2 | half_payload2_2; // @[combinator.scala 103:38]
  assign io_out_6 = half_weights1_3 | half_payload1_3; // @[combinator.scala 102:34]
  assign io_out_7 = half_weights2_3 | half_payload2_3; // @[combinator.scala 103:38]
  assign io_out_8 = half_weights1_4 | half_payload1_4; // @[combinator.scala 102:34]
  assign io_out_9 = half_weights2_4 | half_payload2_4; // @[combinator.scala 103:38]
  assign io_out_10 = half_weights1_5 | half_payload1_5; // @[combinator.scala 102:34]
  assign io_out_11 = half_weights2_5 | half_payload2_5; // @[combinator.scala 103:38]
  assign io_out_12 = half_weights1_6 | half_payload1_6; // @[combinator.scala 102:34]
  assign io_out_13 = half_weights2_6 | half_payload2_6; // @[combinator.scala 103:38]
  assign io_out_14 = half_weights1_7 | half_payload1_7; // @[combinator.scala 102:34]
  assign io_out_15 = half_weights2_7 | half_payload2_7; // @[combinator.scala 103:38]
endmodule
