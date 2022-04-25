import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec
import  chisel3._

class CordicComputerTest extends AnyFlatSpec with ChiselScalatestTester {
  val W1 = 18
  val W2 = 18
  val K = 1 / 1.64676

  behavior of "CordicComputer"
  it should "pass" in {
    test(new CordicComputer(18, 1, 16, W2, 16)) { c =>
      c.clock.setTimeout(0)
      for (i <- 0 to 7) {
        testTask(c, 22.5 * i)
      }

      println("CordicComputer test done")
    }
  }

  def testTask(c: CordicComputer, deg: Double) {
    c.io_in.a.poke(c.scaleDegree(deg, W2).S((W2 + 2).W))
    c.clock.step(17)
    println("input value = " + deg.toString + "  " + c.scaleDegree(deg, W2).toString + "  " +  c.scaleDegree(deg, W2).toBinaryString)
    println(c.io_out.peek())
    println("cos value = " + Float2Fix(math.cos(math.toRadians(deg)), 1, 16))
    println("sin value = " + Float2Fix(math.sin(math.toRadians(deg)), 1, 16))
    println()
  }

  def Float2Fix(a: Double, I: Int, F: Int) = {
    val b = (a.abs * math.pow(2, F)).toInt

    if (a < 0) {
      (-b).S((I + F + 1).W)
    } else {
      b.S((I + F + 1).W)
    }
  }

  def Fix2Float(a: Int, F: Int) = {
    a / math.pow(2, F)
  }
}
