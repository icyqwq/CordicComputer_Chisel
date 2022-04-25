import Chisel.switch
import chisel3._
import chisel3.util.is
// W1: bit width of fixed-point numbers
// I: bit width of integer part of fixed-point
// F: bit width of fractional part of fixed-point
// W2: bit width of angle, angle mapped [0, 45] to [0, 2^W2]
// STAGE: total stages (iterations)
class CordicComputer(W1: Int, I:Int, F:Int, W2: Int, STAGE: Int) extends Module {
  val io_in = IO(new Bundle {
    val a = Input(SInt((W2 + 2).W)) // angle to be calculated
//    val valid = Input(UInt(1.W)) // pipeline valid signal
  })

  val io_out = IO(new Bundle {
    val s = Output(SInt(W1.W)) // sin (a)
    val c = Output(SInt(W1.W)) // cos (a)
//    val valid = Output(UInt(1.W)) // pipeline valid signal
  })

  val K = 1 / 1.64676
  val XINIT = Float2Fix(K, I, F).S(W1.W)
  val YINIT = 0.S(W1.W)

  def Float2Fix(a: Double, I: Int, F: Int) = {
    (a * math.pow(2, F)).toInt
  }

  def scaleDegree(deg: Double, w: Int) = {
    ((math.pow(2, w - 2) / 45) * deg).toInt
  }

  val xi = Wire(Vec(STAGE, SInt(W1.W)))
  val yi = Wire(Vec(STAGE, SInt(W1.W)))
  val ai = Wire(Vec(STAGE, SInt(W2.W)))

  val x = RegInit(XINIT)
  val y = RegInit(YINIT)
  val a = RegInit(0.S(W2.W))

  when (io_in.a(W2, W2 - 2) === "b000".U) {
    x := XINIT
    y := YINIT
    a := io_in.a
  } .elsewhen(io_in.a(W2, W2 - 2) === "b001".U) {
    x := -YINIT
    y := XINIT
    a := io_in.a - scaleDegree(90, W2).S((W2 + 2).W)
  } .elsewhen(io_in.a(W2, W2 - 2) === "b010".U) {
    x := -YINIT
    y := XINIT
    a := io_in.a - scaleDegree(90, W2).S((W2 + 2).W)
  } .elsewhen(io_in.a(W2, W2 - 2) === "b011".U) {
    x := -XINIT
    y := -YINIT
    a := io_in.a - scaleDegree(180, W2).S((W2 + 2).W)
  } .elsewhen(io_in.a(W2, W2 - 2) === "b100".U) {
    x := -XINIT
    y := -YINIT
    a := io_in.a - scaleDegree(180, W2).S((W2 + 2).W)
  } .elsewhen(io_in.a(W2, W2 - 2) === "b101".U) {
    x := YINIT
    y := -XINIT
    a := io_in.a - scaleDegree(270, W2).S((W2 + 2).W)
  } .elsewhen(io_in.a(W2, W2 - 2) === "b110".U) {
    x := YINIT
    y := -XINIT
    a := io_in.a - scaleDegree(270, W2).S((W2 + 2).W)
  } .elsewhen(io_in.a(W2, W2 - 2) === "b111".U) {
    x := XINIT
    y := YINIT
    a := io_in.a
  } .otherwise {
    x := XINIT
    y := YINIT
    a := 0.S(W2.W)
  }

  val rotator_0 = Module(new Rotator(W1, W2, 0, scaleDegree(math.toDegrees(math.atan(math.pow(2, 0))), W2)))
  rotator_0.io_in.x := x
  rotator_0.io_in.y := y
  rotator_0.io_in.a := a
  xi(0) := rotator_0.io_out.x
  yi(0) := rotator_0.io_out.y
  ai(0) := rotator_0.io_out.a

  for (i <- 1 to STAGE - 1) {
    val deg = scaleDegree(math.toDegrees(math.atan(math.pow(2, -i))), W2)
    val rotator = Module(new Rotator(W1, W2, i, deg))
    rotator.io_in.x := xi(i - 1)
    rotator.io_in.y := yi(i - 1)
    rotator.io_in.a := ai(i - 1)
    xi(i) := rotator.io_out.x
    yi(i) := rotator.io_out.y
    ai(i) := rotator.io_out.a
  }

  io_out.c := xi(STAGE - 1)
  io_out.s := yi(STAGE - 1)

}

object CordicComputer extends App {
  (new chisel3.stage.ChiselStage).emitVerilog(
    new CordicComputer(18, 1, 16, 18, 16),
    Array("--target-dir", "verilog/")
  )
}