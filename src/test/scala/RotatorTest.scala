import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec
import  chisel3._

class RotatorTest extends AnyFlatSpec with ChiselScalatestTester {
  behavior of "Rotator"
  it should "pass" in {
    test(new Rotator(16, 16, 3, 233)) { c =>
      var data = (0.S, 0.S, 0.S)
      c.clock.setTimeout(0)
      c.io_in.x.poke(-20.S)
      c.io_in.y.poke(0.S)
      c.io_in.a.poke(-1.S)
      c.clock.step(2)
      data = getResult(-20, 0, -1, 3, 233)
      println(c.io_out.peek())
      c.io_out.x.expect(data._1)
      c.io_out.y.expect(data._2)
      c.io_out.a.expect(data._3)

      c.io_in.x.poke(20.S)
      c.io_in.y.poke(0.S)
      c.io_in.a.poke(1.S)
      c.clock.step(2)
      data = getResult(20, 0, 1, 3, 233)
      c.io_out.x.expect(data._1)
      c.io_out.y.expect(data._2)
      c.io_out.a.expect(data._3)

      println("Rotator test done")
    }
  }

  def getResult(xin: Int, yin:Int, ain:Int, stage:Int, tan: Int) = {
    if (ain < 0) {
      val x = xin + (yin >> stage)
      val y = yin - (xin >> stage)
      val a = ain + tan
      (x.S, y.S, a.S)
    }
    else {
      val x = xin - (yin >> stage)
      val y = yin + (xin >> stage)
      val a = ain - tan
      (x.S, y.S, a.S)
    }
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
