module Combinator(
  input         clock,
  input         reset,
  input  [31:0] io_word1,
  input  [31:0] io_word2,
  output [31:0] io_out
);
  wire [47:0] _GEN_0 = {io_word1, 16'h0}; // @[combinator.scala 18:31]
  wire [62:0] word1_16bit = {{15'd0}, _GEN_0}; // @[combinator.scala 18:31]
  wire [31:0] word2_16bit = io_word2 & 32'hffff; // @[combinator.scala 19:30]
  wire [62:0] _GEN_1 = {{31'd0}, word2_16bit}; // @[combinator.scala 20:25]
  wire [62:0] _io_out_T = word1_16bit | _GEN_1; // @[combinator.scala 20:25]
  assign io_out = _io_out_T[31:0]; // @[combinator.scala 20:10]
endmodule
