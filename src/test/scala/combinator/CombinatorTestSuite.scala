// See README.md for license details.

package combinator

import chisel3._
import chisel3.tester._
import org.scalatest.FreeSpec
import chisel3.experimental.BundleLiterals._
import chisel3._
import chisel3.tester._
import chisel3.experimental.BundleLiterals._
import chiseltest.RawTester.test

import scala.language.implicitConversions

object CombinatorBehvior {
  def testCombineOutSmall: Boolean = {
    test(new Combinator) {
      dut =>
        for (i <- 0 to 100) {
          for (j <- 0 to 100) {
            dut.io.word1.poke(i.U(32.W))
            dut.io.word2.poke(j.U(32.W))
            dut.io.out.expect(
              ((i << 16) | (j & 0x0000ffff)).U
            )
            println(i, j,(i << 16) | (j & 0x0000ffff))
          }
        }
    }
    true
  }

  def testCombineOutLarge: Boolean = {
    test(new Combinator) {
      dut =>
        for (i <- 543424612 to 543425148) {
          for (j <- 0 to 100) {
            dut.io.word1.poke(i.U(32.W))
            dut.io.word2.poke(j.U(32.W))
            dut.io.out.expect(
              ((i << 16) | (j & 0x0000ffff)).U
            )
            println(i, j,(i << 16) | (j & 0x0000ffff))
          }
        }
    }
    true
  }
}
