module GPUMemCombinator(
  input         clock,
  input         reset,
  input  [31:0] io_payload_0,
  input  [31:0] io_payload_1,
  input  [31:0] io_payload_2,
  input  [31:0] io_payload_3,
  input  [31:0] io_payload_4,
  input  [31:0] io_payload_5,
  input  [31:0] io_payload_6,
  input  [31:0] io_payload_7,
  input  [31:0] io_weights_0,
  input  [31:0] io_weights_1,
  input  [31:0] io_weights_2,
  input  [31:0] io_weights_3,
  input  [31:0] io_weights_4,
  input  [31:0] io_weights_5,
  input  [31:0] io_weights_6,
  input  [31:0] io_weights_7,
  input  [31:0] io_weights_8,
  input  [31:0] io_weights_9,
  input  [31:0] io_weights_10,
  input  [31:0] io_weights_11,
  input  [31:0] io_weights_12,
  input  [31:0] io_weights_13,
  input  [31:0] io_weights_14,
  input  [31:0] io_weights_15,
  output [31:0] io_out_0,
  output [31:0] io_out_1,
  output [31:0] io_out_2,
  output [31:0] io_out_3,
  output [31:0] io_out_4,
  output [31:0] io_out_5,
  output [31:0] io_out_6,
  output [31:0] io_out_7,
  output [31:0] io_out_8,
  output [31:0] io_out_9,
  output [31:0] io_out_10,
  output [31:0] io_out_11,
  output [31:0] io_out_12,
  output [31:0] io_out_13,
  output [31:0] io_out_14,
  output [31:0] io_out_15
);
  wire [31:0] half_weights1 = io_weights_0 & 32'hffff0000; // @[combinator.scala 46:41]
  wire [31:0] half_weights2 = io_weights_1 & 32'hffff0000; // @[combinator.scala 47:43]
  wire [31:0] half_payload1 = {{16'd0}, io_payload_0[31:16]}; // @[combinator.scala 49:40]
  wire [31:0] half_payload2 = io_payload_0 & 32'hffff; // @[combinator.scala 50:39]
  wire [31:0] half_weights1_1 = io_weights_2 & 32'hffff0000; // @[combinator.scala 46:41]
  wire [31:0] half_weights2_1 = io_weights_3 & 32'hffff0000; // @[combinator.scala 47:43]
  wire [31:0] half_payload1_1 = {{16'd0}, io_payload_1[31:16]}; // @[combinator.scala 49:40]
  wire [31:0] half_payload2_1 = io_payload_1 & 32'hffff; // @[combinator.scala 50:39]
  wire [31:0] half_weights1_2 = io_weights_4 & 32'hffff0000; // @[combinator.scala 46:41]
  wire [31:0] half_weights2_2 = io_weights_5 & 32'hffff0000; // @[combinator.scala 47:43]
  wire [31:0] half_payload1_2 = {{16'd0}, io_payload_2[31:16]}; // @[combinator.scala 49:40]
  wire [31:0] half_payload2_2 = io_payload_2 & 32'hffff; // @[combinator.scala 50:39]
  wire [31:0] half_weights1_3 = io_weights_6 & 32'hffff0000; // @[combinator.scala 46:41]
  wire [31:0] half_weights2_3 = io_weights_7 & 32'hffff0000; // @[combinator.scala 47:43]
  wire [31:0] half_payload1_3 = {{16'd0}, io_payload_3[31:16]}; // @[combinator.scala 49:40]
  wire [31:0] half_payload2_3 = io_payload_3 & 32'hffff; // @[combinator.scala 50:39]
  wire [31:0] half_weights1_4 = io_weights_8 & 32'hffff0000; // @[combinator.scala 46:41]
  wire [31:0] half_weights2_4 = io_weights_9 & 32'hffff0000; // @[combinator.scala 47:43]
  wire [31:0] half_payload1_4 = {{16'd0}, io_payload_4[31:16]}; // @[combinator.scala 49:40]
  wire [31:0] half_payload2_4 = io_payload_4 & 32'hffff; // @[combinator.scala 50:39]
  wire [31:0] half_weights1_5 = io_weights_10 & 32'hffff0000; // @[combinator.scala 46:41]
  wire [31:0] half_weights2_5 = io_weights_11 & 32'hffff0000; // @[combinator.scala 47:43]
  wire [31:0] half_payload1_5 = {{16'd0}, io_payload_5[31:16]}; // @[combinator.scala 49:40]
  wire [31:0] half_payload2_5 = io_payload_5 & 32'hffff; // @[combinator.scala 50:39]
  wire [31:0] half_weights1_6 = io_weights_12 & 32'hffff0000; // @[combinator.scala 46:41]
  wire [31:0] half_weights2_6 = io_weights_13 & 32'hffff0000; // @[combinator.scala 47:43]
  wire [31:0] half_payload1_6 = {{16'd0}, io_payload_6[31:16]}; // @[combinator.scala 49:40]
  wire [31:0] half_payload2_6 = io_payload_6 & 32'hffff; // @[combinator.scala 50:39]
  wire [31:0] half_weights1_7 = io_weights_14 & 32'hffff0000; // @[combinator.scala 46:41]
  wire [31:0] half_weights2_7 = io_weights_15 & 32'hffff0000; // @[combinator.scala 47:43]
  wire [31:0] half_payload1_7 = {{16'd0}, io_payload_7[31:16]}; // @[combinator.scala 49:40]
  wire [31:0] half_payload2_7 = io_payload_7 & 32'hffff; // @[combinator.scala 50:39]
  assign io_out_0 = half_weights1 | half_payload1; // @[combinator.scala 52:34]
  assign io_out_1 = half_weights2 | half_payload2; // @[combinator.scala 53:38]
  assign io_out_2 = half_weights1_1 | half_payload1_1; // @[combinator.scala 52:34]
  assign io_out_3 = half_weights2_1 | half_payload2_1; // @[combinator.scala 53:38]
  assign io_out_4 = half_weights1_2 | half_payload1_2; // @[combinator.scala 52:34]
  assign io_out_5 = half_weights2_2 | half_payload2_2; // @[combinator.scala 53:38]
  assign io_out_6 = half_weights1_3 | half_payload1_3; // @[combinator.scala 52:34]
  assign io_out_7 = half_weights2_3 | half_payload2_3; // @[combinator.scala 53:38]
  assign io_out_8 = half_weights1_4 | half_payload1_4; // @[combinator.scala 52:34]
  assign io_out_9 = half_weights2_4 | half_payload2_4; // @[combinator.scala 53:38]
  assign io_out_10 = half_weights1_5 | half_payload1_5; // @[combinator.scala 52:34]
  assign io_out_11 = half_weights2_5 | half_payload2_5; // @[combinator.scala 53:38]
  assign io_out_12 = half_weights1_6 | half_payload1_6; // @[combinator.scala 52:34]
  assign io_out_13 = half_weights2_6 | half_payload2_6; // @[combinator.scala 53:38]
  assign io_out_14 = half_weights1_7 | half_payload1_7; // @[combinator.scala 52:34]
  assign io_out_15 = half_weights2_7 | half_payload2_7; // @[combinator.scala 53:38]
endmodule
