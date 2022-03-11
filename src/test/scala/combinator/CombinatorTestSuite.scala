// See README.md for license details.

package combinator

import chisel3._
import chisel3.tester._
import chisel3.experimental.BundleLiterals._
import chisel3._
import chisel3.tester._
import chisel3.experimental.BundleLiterals._
import chiseltest.RawTester.test

import scala.language.implicitConversions

object CombinatorBehvior {
  def testCombineOutSmall: Boolean = {
    test(new Combinator4B) {
      dut =>
        for (i <- 0 to 100) {
          for (j <- 0 to 100) {
            dut.io.word1.poke(i.U(32.W))
            dut.io.word2.poke(j.U(32.W))
            dut.io.out.expect(
              ((i << 16) | (j & 0x0000ffff)).U
            )
            // println(i, j,(i << 16) | (j & 0x0000ffff))
          }
        }
    }
    true
  }

  def testCombineOutLarge: Boolean = {
    test(new Combinator4B) {
      dut =>
        for (i <- 543424612 to 543425148) {
          for (j <- 0 to 100) {
            dut.io.word1.poke(i.U(32.W))
            dut.io.word2.poke(j.U(32.W))
            dut.io.out.expect(
              ((i << 16) | (j & 0x0000ffff)).U
            )
            //println(i, j,(i << 16) | (j & 0x0000ffff))
          }
        }
    }
    true
  }
}

object Combinator64BBehaviour {
  def testCombine64B: Boolean = {
    test(new Combinator64B) {
      dut =>
        val sample_intput = Seq(52,85,1,8,3,2,7, 33, 123, 55, 11, 9, 44, 534,66, 12)
        for (i <- 0 until 16) {
          dut.io.cacheLine(i).poke(sample_intput(i).U(32.W))
        }
        for (i <- 0 until 8) {
          dut.io.out(i).expect(
            ( (sample_intput(i*2) <<16) | (sample_intput(i*2+1) & 0x0000ffff) ).U
          )
          println(sample_intput(2*i), sample_intput(2*i+1), (sample_intput(i*2) <<16) | (sample_intput(i*2+1) & 0x0000ffff) )
        }
    }
    true
  }
}

object GPUMemCombinatorBehaviour {
  def testGPUMemCombinator: Boolean = {
    test(new GPUMemCombinator) {
      dut =>
        val CPU_cache = Seq(52,85,1,8,3,2,7, 33, 123, 55, 11, 9, 44, 534,66, 12)
        val GPU_cache = Seq(99, 12, 3, 199, 22, 54, 22, 123,564, 55, 34, 12,86, 98, 0, 12)

        for (i <- 0 until 8) {
          dut.io.payload(i).poke(CPU_cache(i).U(32.W))
        }

        for (i <-0 until 16) {
          dut.io.weights(i).poke(GPU_cache(i).U(32.W))
        }
        val mask = 0xffff0000
        for (i <- 0 until 8) {
          val half_weights1 = GPU_cache(i) & mask
          val half_weights2 = GPU_cache(i) & mask

          val half_payloads1 = CPU_cache(i) >> 16
          val half_payloads2 = CPU_cache(i) & 0x0000ffff
          dut.io.out(2*i).expect((half_weights1 | half_payloads1).U)
          dut.io.out(2*i+1).expect((half_weights2 | half_payloads2).U)
        }
    }
    true
  }
}
