package combinator

import combinator.CombinatorBehvior
import org.scalatest.freespec.AnyFreeSpec

import scala.language.implicitConversions
import chiseltest._



class CombinatorTester extends AnyFreeSpec with ChiselScalatestTester {

  "Combinator Should correctly calculate out for small number" in {
    assert(CombinatorBehvior.testCombineOutSmall)
  }

  "Combinator Should correctly calculate out for large number" in {
    assert(CombinatorBehvior.testCombineOutLarge)
  }

  "Combinator64B Should correcet the out" in {
    assert(Combinator64BBehaviour.testCombine64B)
  }

  "GPUMemCombinator Should correctly out" in {
    assert(GPUMemCombinatorBehaviour.testGPUMemCombinator)
  }
}
