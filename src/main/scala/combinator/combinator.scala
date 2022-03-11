// See README.md for license details.

package combinator

import chisel3._


class Combinator4B extends Module{
  val io = IO(
    new Bundle{
      val word1: UInt = Input(UInt(32.W))
      val word2: UInt = Input(UInt(32.W))
      val out: UInt = Output(UInt(32.W))
    }
  )
  val word1_16bit: UInt = (io.word1 << 16.U).asUInt
  val word2_16bit: UInt = io.word2 & "h0000ffff".asUInt(32.W)
  io.out := word1_16bit | word2_16bit
}

class Combinator64B extends Module{
  val io = IO(
    new Bundle() {
      val cacheLine: Vec[UInt] = Input(Vec(16, UInt(32.W)))
      val out: Vec[UInt] = Output(Vec(8, UInt(32.W)))
    }
  )
  val combinator4Bvec: Seq[Combinator4B] = Seq.fill(8)(Module(new Combinator4B))
  for (i <- 0 until 8) {
    combinator4Bvec(i).io.word1 := io.cacheLine(2 * i)
    combinator4Bvec(i).io.word2 := io.cacheLine(2 * i + 1)
    io.out(i) := combinator4Bvec(i).io.out
  }
}

class GPUMemCombinator extends Module {
  val io = IO(
    new Bundle() {
      val payload: Vec[UInt] = Input(Vec(8, UInt(32.W))) // the result we got from the combinator
      val weights: Vec[UInt] = Input(Vec(16, UInt(32.W))) // the weights that in the GPU
      val out: Vec[UInt] = Output(Vec(16, UInt(32.W)))
    }
  )
  val mask: UInt = "hffff0000".asUInt(32.W) // the mask to mask out the last 16bit of each word in GPU mem
  for (i <- 0 until 8) {
    val half_weights1 = io.weights(2*i) & mask
    val half_weights2 = io.weights(2*i+1) & mask

    val half_payload1 = (io.payload(i) >> 16.U).asUInt // get the first 16bit and move then them to the right
    val half_payload2 = io.payload(i) & "h0000ffff".asUInt(32.W) // Get the last 16 bit

    io.out(2*i) := half_weights1 | half_payload1
    io.out(2*i + 1) := half_weights2 | half_payload2
  }
}


// To Compile the Chisel into Verilog
//import chisel3.stage.ChiselStage

//object GCDDriver extends App {
//  (new ChiselStage).emitVerilog(new Combinator4B, args)
//}