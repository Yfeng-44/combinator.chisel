circuit GPUMemDisaggregator32B :
  module GPUMemDisaggregator32B :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip payload : UInt<16>[8], out : UInt<16>[16]}

    node _io_out_0_T = dshr(io.payload[0], UInt<4>("h8")) @[combinator.scala 93:35]
    io.out[0] <= _io_out_0_T @[combinator.scala 93:17]
    node _io_out_1_T = and(io.payload[0], UInt<16>("hff")) @[combinator.scala 94:37]
    io.out[1] <= _io_out_1_T @[combinator.scala 94:19]
    node _io_out_2_T = dshr(io.payload[1], UInt<4>("h8")) @[combinator.scala 93:35]
    io.out[2] <= _io_out_2_T @[combinator.scala 93:17]
    node _io_out_3_T = and(io.payload[1], UInt<16>("hff")) @[combinator.scala 94:37]
    io.out[3] <= _io_out_3_T @[combinator.scala 94:19]
    node _io_out_4_T = dshr(io.payload[2], UInt<4>("h8")) @[combinator.scala 93:35]
    io.out[4] <= _io_out_4_T @[combinator.scala 93:17]
    node _io_out_5_T = and(io.payload[2], UInt<16>("hff")) @[combinator.scala 94:37]
    io.out[5] <= _io_out_5_T @[combinator.scala 94:19]
    node _io_out_6_T = dshr(io.payload[3], UInt<4>("h8")) @[combinator.scala 93:35]
    io.out[6] <= _io_out_6_T @[combinator.scala 93:17]
    node _io_out_7_T = and(io.payload[3], UInt<16>("hff")) @[combinator.scala 94:37]
    io.out[7] <= _io_out_7_T @[combinator.scala 94:19]
    node _io_out_8_T = dshr(io.payload[4], UInt<4>("h8")) @[combinator.scala 93:35]
    io.out[8] <= _io_out_8_T @[combinator.scala 93:17]
    node _io_out_9_T = and(io.payload[4], UInt<16>("hff")) @[combinator.scala 94:37]
    io.out[9] <= _io_out_9_T @[combinator.scala 94:19]
    node _io_out_10_T = dshr(io.payload[5], UInt<4>("h8")) @[combinator.scala 93:35]
    io.out[10] <= _io_out_10_T @[combinator.scala 93:17]
    node _io_out_11_T = and(io.payload[5], UInt<16>("hff")) @[combinator.scala 94:37]
    io.out[11] <= _io_out_11_T @[combinator.scala 94:19]
    node _io_out_12_T = dshr(io.payload[6], UInt<4>("h8")) @[combinator.scala 93:35]
    io.out[12] <= _io_out_12_T @[combinator.scala 93:17]
    node _io_out_13_T = and(io.payload[6], UInt<16>("hff")) @[combinator.scala 94:37]
    io.out[13] <= _io_out_13_T @[combinator.scala 94:19]
    node _io_out_14_T = dshr(io.payload[7], UInt<4>("h8")) @[combinator.scala 93:35]
    io.out[14] <= _io_out_14_T @[combinator.scala 93:17]
    node _io_out_15_T = and(io.payload[7], UInt<16>("hff")) @[combinator.scala 94:37]
    io.out[15] <= _io_out_15_T @[combinator.scala 94:19]

