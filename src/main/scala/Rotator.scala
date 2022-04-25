import chisel3._

// W1: bit width of fixed-point numbers
// W2: bit width of angle, angle mapped [0, 45] to [0, 2^W2]
// STAGE: the stage belongs to this rotator
// TAN: the tan(n) belongs to this rotator
class Rotator(W1: Int, W2: Int, STAGE: Int, ANGLE: Int) extends Module {
  val io_in = IO(new Bundle {
    val x = Input(SInt(W1.W)) // input vector x
    val y = Input(SInt(W1.W)) // input vector y
    val a = Input(SInt(W2.W)) // input angle
  })

  val io_out = IO(new Bundle {
    val x = Output(SInt(W1.W)) // rotated vector x
    val y = Output(SInt(W1.W)) // rotated vector y
    val a = Output(SInt(W2.W)) // rotated angle
  })

  val xo = RegInit(0.S(W1.W))
  val yo = RegInit(0.S(W1.W))
  val ao = RegInit(0.S(W2.W))

  io_out.x <> xo
  io_out.y <> yo
  io_out.a <> ao

  when(io_in.a < 0.S) {
    xo := io_in.x + (io_in.y >> STAGE.U)
    yo := io_in.y - (io_in.x >> STAGE.U)
    ao := io_in.a + ANGLE.S(W2.W)
  } .elsewhen (io_in.a >= 0.S) {
    xo := io_in.x - (io_in.y >> STAGE.U)
    yo := io_in.y + (io_in.x >> STAGE.U)
    ao := io_in.a - ANGLE.S(W2.W)
  } .otherwise {
    xo := 0.S
    yo := 0.S
    ao := 0.S
  }

}

object Rotator extends App {
  (new chisel3.stage.ChiselStage).emitVerilog(
    new Rotator(16, 16, 3, 233),
    Array("--target-dir", "verilog/")
  )
}

