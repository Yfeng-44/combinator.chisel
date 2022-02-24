// See README.md for license details.

package combinator

import chisel3._
import chisel3._

// Note ??? will compile but not work at runtime.

class Combinator extends Module{
  val io = IO(
    new Bundle{
      val word1 = Input(UInt(32.W))
      val word2 = Input(UInt(32.W))
      val out = Output(UInt(32.W))
    }
  )
  val word1_16bit = (io.word1 << 16.U).asUInt
  val word2_16bit = io.word2 & "h0000ffff".asUInt(32.W)
  io.out := word1_16bit | word2_16bit
}

