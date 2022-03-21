circuit Combinator64B :
  module Combinator4B :
    input clock : Clock
    input reset : Reset
    output io : { flip word1 : UInt<32>, flip word2 : UInt<32>, out : UInt<32>}

    node word1_16bit = dshl(io.word1, UInt<5>("h10")) @[combinator.scala 16:37]
    node word2_16bit = and(io.word2, UInt<32>("hffff")) @[combinator.scala 17:36]
    node _io_out_T = or(word1_16bit, word2_16bit) @[combinator.scala 18:25]
    io.out <= _io_out_T @[combinator.scala 18:10]

  module Combinator4B_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip word1 : UInt<32>, flip word2 : UInt<32>, out : UInt<32>}

    node word1_16bit = dshl(io.word1, UInt<5>("h10")) @[combinator.scala 16:37]
    node word2_16bit = and(io.word2, UInt<32>("hffff")) @[combinator.scala 17:36]
    node _io_out_T = or(word1_16bit, word2_16bit) @[combinator.scala 18:25]
    io.out <= _io_out_T @[combinator.scala 18:10]

  module Combinator4B_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip word1 : UInt<32>, flip word2 : UInt<32>, out : UInt<32>}

    node word1_16bit = dshl(io.word1, UInt<5>("h10")) @[combinator.scala 16:37]
    node word2_16bit = and(io.word2, UInt<32>("hffff")) @[combinator.scala 17:36]
    node _io_out_T = or(word1_16bit, word2_16bit) @[combinator.scala 18:25]
    io.out <= _io_out_T @[combinator.scala 18:10]

  module Combinator4B_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip word1 : UInt<32>, flip word2 : UInt<32>, out : UInt<32>}

    node word1_16bit = dshl(io.word1, UInt<5>("h10")) @[combinator.scala 16:37]
    node word2_16bit = and(io.word2, UInt<32>("hffff")) @[combinator.scala 17:36]
    node _io_out_T = or(word1_16bit, word2_16bit) @[combinator.scala 18:25]
    io.out <= _io_out_T @[combinator.scala 18:10]

  module Combinator4B_4 :
    input clock : Clock
    input reset : Reset
    output io : { flip word1 : UInt<32>, flip word2 : UInt<32>, out : UInt<32>}

    node word1_16bit = dshl(io.word1, UInt<5>("h10")) @[combinator.scala 16:37]
    node word2_16bit = and(io.word2, UInt<32>("hffff")) @[combinator.scala 17:36]
    node _io_out_T = or(word1_16bit, word2_16bit) @[combinator.scala 18:25]
    io.out <= _io_out_T @[combinator.scala 18:10]

  module Combinator4B_5 :
    input clock : Clock
    input reset : Reset
    output io : { flip word1 : UInt<32>, flip word2 : UInt<32>, out : UInt<32>}

    node word1_16bit = dshl(io.word1, UInt<5>("h10")) @[combinator.scala 16:37]
    node word2_16bit = and(io.word2, UInt<32>("hffff")) @[combinator.scala 17:36]
    node _io_out_T = or(word1_16bit, word2_16bit) @[combinator.scala 18:25]
    io.out <= _io_out_T @[combinator.scala 18:10]

  module Combinator4B_6 :
    input clock : Clock
    input reset : Reset
    output io : { flip word1 : UInt<32>, flip word2 : UInt<32>, out : UInt<32>}

    node word1_16bit = dshl(io.word1, UInt<5>("h10")) @[combinator.scala 16:37]
    node word2_16bit = and(io.word2, UInt<32>("hffff")) @[combinator.scala 17:36]
    node _io_out_T = or(word1_16bit, word2_16bit) @[combinator.scala 18:25]
    io.out <= _io_out_T @[combinator.scala 18:10]

  module Combinator4B_7 :
    input clock : Clock
    input reset : Reset
    output io : { flip word1 : UInt<32>, flip word2 : UInt<32>, out : UInt<32>}

    node word1_16bit = dshl(io.word1, UInt<5>("h10")) @[combinator.scala 16:37]
    node word2_16bit = and(io.word2, UInt<32>("hffff")) @[combinator.scala 17:36]
    node _io_out_T = or(word1_16bit, word2_16bit) @[combinator.scala 18:25]
    io.out <= _io_out_T @[combinator.scala 18:10]

  module Combinator64B :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip cacheLine : UInt<32>[16], out : UInt<32>[8]}

    inst combinator4Bvec_0 of Combinator4B @[combinator.scala 28:62]
    combinator4Bvec_0.clock <= clock
    combinator4Bvec_0.reset <= reset
    inst combinator4Bvec_1 of Combinator4B_1 @[combinator.scala 28:62]
    combinator4Bvec_1.clock <= clock
    combinator4Bvec_1.reset <= reset
    inst combinator4Bvec_2 of Combinator4B_2 @[combinator.scala 28:62]
    combinator4Bvec_2.clock <= clock
    combinator4Bvec_2.reset <= reset
    inst combinator4Bvec_3 of Combinator4B_3 @[combinator.scala 28:62]
    combinator4Bvec_3.clock <= clock
    combinator4Bvec_3.reset <= reset
    inst combinator4Bvec_4 of Combinator4B_4 @[combinator.scala 28:62]
    combinator4Bvec_4.clock <= clock
    combinator4Bvec_4.reset <= reset
    inst combinator4Bvec_5 of Combinator4B_5 @[combinator.scala 28:62]
    combinator4Bvec_5.clock <= clock
    combinator4Bvec_5.reset <= reset
    inst combinator4Bvec_6 of Combinator4B_6 @[combinator.scala 28:62]
    combinator4Bvec_6.clock <= clock
    combinator4Bvec_6.reset <= reset
    inst combinator4Bvec_7 of Combinator4B_7 @[combinator.scala 28:62]
    combinator4Bvec_7.clock <= clock
    combinator4Bvec_7.reset <= reset
    combinator4Bvec_0.io.word1 <= io.cacheLine[0] @[combinator.scala 30:33]
    combinator4Bvec_0.io.word2 <= io.cacheLine[1] @[combinator.scala 31:33]
    io.out[0] <= combinator4Bvec_0.io.out @[combinator.scala 32:15]
    combinator4Bvec_1.io.word1 <= io.cacheLine[2] @[combinator.scala 30:33]
    combinator4Bvec_1.io.word2 <= io.cacheLine[3] @[combinator.scala 31:33]
    io.out[1] <= combinator4Bvec_1.io.out @[combinator.scala 32:15]
    combinator4Bvec_2.io.word1 <= io.cacheLine[4] @[combinator.scala 30:33]
    combinator4Bvec_2.io.word2 <= io.cacheLine[5] @[combinator.scala 31:33]
    io.out[2] <= combinator4Bvec_2.io.out @[combinator.scala 32:15]
    combinator4Bvec_3.io.word1 <= io.cacheLine[6] @[combinator.scala 30:33]
    combinator4Bvec_3.io.word2 <= io.cacheLine[7] @[combinator.scala 31:33]
    io.out[3] <= combinator4Bvec_3.io.out @[combinator.scala 32:15]
    combinator4Bvec_4.io.word1 <= io.cacheLine[8] @[combinator.scala 30:33]
    combinator4Bvec_4.io.word2 <= io.cacheLine[9] @[combinator.scala 31:33]
    io.out[4] <= combinator4Bvec_4.io.out @[combinator.scala 32:15]
    combinator4Bvec_5.io.word1 <= io.cacheLine[10] @[combinator.scala 30:33]
    combinator4Bvec_5.io.word2 <= io.cacheLine[11] @[combinator.scala 31:33]
    io.out[5] <= combinator4Bvec_5.io.out @[combinator.scala 32:15]
    combinator4Bvec_6.io.word1 <= io.cacheLine[12] @[combinator.scala 30:33]
    combinator4Bvec_6.io.word2 <= io.cacheLine[13] @[combinator.scala 31:33]
    io.out[6] <= combinator4Bvec_6.io.out @[combinator.scala 32:15]
    combinator4Bvec_7.io.word1 <= io.cacheLine[14] @[combinator.scala 30:33]
    combinator4Bvec_7.io.word2 <= io.cacheLine[15] @[combinator.scala 31:33]
    io.out[7] <= combinator4Bvec_7.io.out @[combinator.scala 32:15]

