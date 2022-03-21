module GPUMemDisaggregator32B(
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
  assign io_out_0 = {{8'd0}, io_payload_0[15:8]}; // @[combinator.scala 93:35]
  assign io_out_1 = io_payload_0 & 16'hff; // @[combinator.scala 94:37]
  assign io_out_2 = {{8'd0}, io_payload_1[15:8]}; // @[combinator.scala 93:35]
  assign io_out_3 = io_payload_1 & 16'hff; // @[combinator.scala 94:37]
  assign io_out_4 = {{8'd0}, io_payload_2[15:8]}; // @[combinator.scala 93:35]
  assign io_out_5 = io_payload_2 & 16'hff; // @[combinator.scala 94:37]
  assign io_out_6 = {{8'd0}, io_payload_3[15:8]}; // @[combinator.scala 93:35]
  assign io_out_7 = io_payload_3 & 16'hff; // @[combinator.scala 94:37]
  assign io_out_8 = {{8'd0}, io_payload_4[15:8]}; // @[combinator.scala 93:35]
  assign io_out_9 = io_payload_4 & 16'hff; // @[combinator.scala 94:37]
  assign io_out_10 = {{8'd0}, io_payload_5[15:8]}; // @[combinator.scala 93:35]
  assign io_out_11 = io_payload_5 & 16'hff; // @[combinator.scala 94:37]
  assign io_out_12 = {{8'd0}, io_payload_6[15:8]}; // @[combinator.scala 93:35]
  assign io_out_13 = io_payload_6 & 16'hff; // @[combinator.scala 94:37]
  assign io_out_14 = {{8'd0}, io_payload_7[15:8]}; // @[combinator.scala 93:35]
  assign io_out_15 = io_payload_7 & 16'hff; // @[combinator.scala 94:37]
endmodule
