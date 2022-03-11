circuit Combinator :
  module Combinator :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip word1 : UInt<32>, flip word2 : UInt<32>, out : UInt<32>}

    node word1_16bit = dshl(io.word1, UInt<5>("h10")) @[combinator.scala 18:31]
    node word2_16bit = and(io.word2, UInt<32>("hffff")) @[combinator.scala 19:30]
    node _io_out_T = or(word1_16bit, word2_16bit) @[combinator.scala 20:25]
    io.out <= _io_out_T @[combinator.scala 20:10]

