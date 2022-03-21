circuit Combinator32B :
  module Combinator2B :
    input clock : Clock
    input reset : Reset
    output io : { flip word1 : UInt<16>, flip word2 : UInt<16>, out : UInt<16>}

    node word1_8bit = dshl(io.word1, UInt<4>("h8")) @[combinator.scala 16:30]
    node word2_8bit = and(io.word2, UInt<16>("hff")) @[combinator.scala 17:29]
    node _io_out_T = or(word1_8bit, word2_8bit) @[combinator.scala 18:24]
    io.out <= _io_out_T @[combinator.scala 18:10]

  module Combinator2B_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip word1 : UInt<16>, flip word2 : UInt<16>, out : UInt<16>}

    node word1_8bit = dshl(io.word1, UInt<4>("h8")) @[combinator.scala 16:30]
    node word2_8bit = and(io.word2, UInt<16>("hff")) @[combinator.scala 17:29]
    node _io_out_T = or(word1_8bit, word2_8bit) @[combinator.scala 18:24]
    io.out <= _io_out_T @[combinator.scala 18:10]

  module Combinator2B_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip word1 : UInt<16>, flip word2 : UInt<16>, out : UInt<16>}

    node word1_8bit = dshl(io.word1, UInt<4>("h8")) @[combinator.scala 16:30]
    node word2_8bit = and(io.word2, UInt<16>("hff")) @[combinator.scala 17:29]
    node _io_out_T = or(word1_8bit, word2_8bit) @[combinator.scala 18:24]
    io.out <= _io_out_T @[combinator.scala 18:10]

  module Combinator2B_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip word1 : UInt<16>, flip word2 : UInt<16>, out : UInt<16>}

    node word1_8bit = dshl(io.word1, UInt<4>("h8")) @[combinator.scala 16:30]
    node word2_8bit = and(io.word2, UInt<16>("hff")) @[combinator.scala 17:29]
    node _io_out_T = or(word1_8bit, word2_8bit) @[combinator.scala 18:24]
    io.out <= _io_out_T @[combinator.scala 18:10]

  module Combinator2B_4 :
    input clock : Clock
    input reset : Reset
    output io : { flip word1 : UInt<16>, flip word2 : UInt<16>, out : UInt<16>}

    node word1_8bit = dshl(io.word1, UInt<4>("h8")) @[combinator.scala 16:30]
    node word2_8bit = and(io.word2, UInt<16>("hff")) @[combinator.scala 17:29]
    node _io_out_T = or(word1_8bit, word2_8bit) @[combinator.scala 18:24]
    io.out <= _io_out_T @[combinator.scala 18:10]

  module Combinator2B_5 :
    input clock : Clock
    input reset : Reset
    output io : { flip word1 : UInt<16>, flip word2 : UInt<16>, out : UInt<16>}

    node word1_8bit = dshl(io.word1, UInt<4>("h8")) @[combinator.scala 16:30]
    node word2_8bit = and(io.word2, UInt<16>("hff")) @[combinator.scala 17:29]
    node _io_out_T = or(word1_8bit, word2_8bit) @[combinator.scala 18:24]
    io.out <= _io_out_T @[combinator.scala 18:10]

  module Combinator2B_6 :
    input clock : Clock
    input reset : Reset
    output io : { flip word1 : UInt<16>, flip word2 : UInt<16>, out : UInt<16>}

    node word1_8bit = dshl(io.word1, UInt<4>("h8")) @[combinator.scala 16:30]
    node word2_8bit = and(io.word2, UInt<16>("hff")) @[combinator.scala 17:29]
    node _io_out_T = or(word1_8bit, word2_8bit) @[combinator.scala 18:24]
    io.out <= _io_out_T @[combinator.scala 18:10]

  module Combinator2B_7 :
    input clock : Clock
    input reset : Reset
    output io : { flip word1 : UInt<16>, flip word2 : UInt<16>, out : UInt<16>}

    node word1_8bit = dshl(io.word1, UInt<4>("h8")) @[combinator.scala 16:30]
    node word2_8bit = and(io.word2, UInt<16>("hff")) @[combinator.scala 17:29]
    node _io_out_T = or(word1_8bit, word2_8bit) @[combinator.scala 18:24]
    io.out <= _io_out_T @[combinator.scala 18:10]

  module Combinator32B :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip cacheLine : UInt<16>[16], out : UInt<16>[8]}

    inst combinator2BVec_0 of Combinator2B @[combinator.scala 56:43]
    combinator2BVec_0.clock <= clock
    combinator2BVec_0.reset <= reset
    inst combinator2BVec_1 of Combinator2B_1 @[combinator.scala 56:43]
    combinator2BVec_1.clock <= clock
    combinator2BVec_1.reset <= reset
    inst combinator2BVec_2 of Combinator2B_2 @[combinator.scala 56:43]
    combinator2BVec_2.clock <= clock
    combinator2BVec_2.reset <= reset
    inst combinator2BVec_3 of Combinator2B_3 @[combinator.scala 56:43]
    combinator2BVec_3.clock <= clock
    combinator2BVec_3.reset <= reset
    inst combinator2BVec_4 of Combinator2B_4 @[combinator.scala 56:43]
    combinator2BVec_4.clock <= clock
    combinator2BVec_4.reset <= reset
    inst combinator2BVec_5 of Combinator2B_5 @[combinator.scala 56:43]
    combinator2BVec_5.clock <= clock
    combinator2BVec_5.reset <= reset
    inst combinator2BVec_6 of Combinator2B_6 @[combinator.scala 56:43]
    combinator2BVec_6.clock <= clock
    combinator2BVec_6.reset <= reset
    inst combinator2BVec_7 of Combinator2B_7 @[combinator.scala 56:43]
    combinator2BVec_7.clock <= clock
    combinator2BVec_7.reset <= reset
    combinator2BVec_0.io.word1 <= io.cacheLine[0] @[combinator.scala 58:33]
    combinator2BVec_0.io.word2 <= io.cacheLine[1] @[combinator.scala 59:33]
    io.out[0] <= combinator2BVec_0.io.out @[combinator.scala 60:15]
    combinator2BVec_1.io.word1 <= io.cacheLine[2] @[combinator.scala 58:33]
    combinator2BVec_1.io.word2 <= io.cacheLine[3] @[combinator.scala 59:33]
    io.out[1] <= combinator2BVec_1.io.out @[combinator.scala 60:15]
    combinator2BVec_2.io.word1 <= io.cacheLine[4] @[combinator.scala 58:33]
    combinator2BVec_2.io.word2 <= io.cacheLine[5] @[combinator.scala 59:33]
    io.out[2] <= combinator2BVec_2.io.out @[combinator.scala 60:15]
    combinator2BVec_3.io.word1 <= io.cacheLine[6] @[combinator.scala 58:33]
    combinator2BVec_3.io.word2 <= io.cacheLine[7] @[combinator.scala 59:33]
    io.out[3] <= combinator2BVec_3.io.out @[combinator.scala 60:15]
    combinator2BVec_4.io.word1 <= io.cacheLine[8] @[combinator.scala 58:33]
    combinator2BVec_4.io.word2 <= io.cacheLine[9] @[combinator.scala 59:33]
    io.out[4] <= combinator2BVec_4.io.out @[combinator.scala 60:15]
    combinator2BVec_5.io.word1 <= io.cacheLine[10] @[combinator.scala 58:33]
    combinator2BVec_5.io.word2 <= io.cacheLine[11] @[combinator.scala 59:33]
    io.out[5] <= combinator2BVec_5.io.out @[combinator.scala 60:15]
    combinator2BVec_6.io.word1 <= io.cacheLine[12] @[combinator.scala 58:33]
    combinator2BVec_6.io.word2 <= io.cacheLine[13] @[combinator.scala 59:33]
    io.out[6] <= combinator2BVec_6.io.out @[combinator.scala 60:15]
    combinator2BVec_7.io.word1 <= io.cacheLine[14] @[combinator.scala 58:33]
    combinator2BVec_7.io.word2 <= io.cacheLine[15] @[combinator.scala 59:33]
    io.out[7] <= combinator2BVec_7.io.out @[combinator.scala 60:15]

