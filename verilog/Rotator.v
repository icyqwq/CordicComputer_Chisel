module Rotator(
  input         clock,
  input         reset,
  input  [15:0] io_in_x,
  input  [15:0] io_in_y,
  input  [15:0] io_in_a,
  output [15:0] io_out_x,
  output [15:0] io_out_y,
  output [15:0] io_out_a
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg [15:0] xo; // @[Rotator.scala 20:19]
  reg [15:0] yo; // @[Rotator.scala 21:19]
  reg [15:0] ao; // @[Rotator.scala 22:19]
  wire  _T = $signed(io_in_a) < 16'sh0; // @[Rotator.scala 28:16]
  wire [12:0] _GEN_6 = io_in_y[15:3]; // @[Rotator.scala 29:30]
  wire [15:0] _xo_T = {{3{_GEN_6[12]}},_GEN_6}; // @[Rotator.scala 29:30]
  wire [15:0] _xo_T_3 = $signed(io_in_x) + $signed(_xo_T); // @[Rotator.scala 29:19]
  wire [12:0] _GEN_7 = io_in_x[15:3]; // @[Rotator.scala 30:30]
  wire [15:0] _yo_T = {{3{_GEN_7[12]}},_GEN_7}; // @[Rotator.scala 30:30]
  wire [15:0] _yo_T_3 = $signed(io_in_y) - $signed(_yo_T); // @[Rotator.scala 30:19]
  wire [15:0] _ao_T_2 = $signed(io_in_a) + 16'she9; // @[Rotator.scala 31:19]
  wire  _T_5 = ~reset; // @[Rotator.scala 32:11]
  wire  _T_6 = $signed(io_in_a) >= 16'sh0; // @[Rotator.scala 33:24]
  wire [15:0] _xo_T_7 = $signed(io_in_x) - $signed(_xo_T); // @[Rotator.scala 34:19]
  wire [15:0] _yo_T_7 = $signed(io_in_y) + $signed(_yo_T); // @[Rotator.scala 35:19]
  wire [15:0] _ao_T_5 = $signed(io_in_a) - 16'she9; // @[Rotator.scala 36:19]
  assign io_out_x = xo; // @[Rotator.scala 24:12]
  assign io_out_y = yo; // @[Rotator.scala 25:12]
  assign io_out_a = ao; // @[Rotator.scala 26:12]
  always @(posedge clock) begin
    if (reset) begin // @[Rotator.scala 20:19]
      xo <= 16'sh0; // @[Rotator.scala 20:19]
    end else if ($signed(io_in_a) < 16'sh0) begin // @[Rotator.scala 28:23]
      xo <= _xo_T_3; // @[Rotator.scala 29:8]
    end else if ($signed(io_in_a) >= 16'sh0) begin // @[Rotator.scala 33:32]
      xo <= _xo_T_7; // @[Rotator.scala 34:8]
    end else begin
      xo <= 16'sh0; // @[Rotator.scala 39:8]
    end
    if (reset) begin // @[Rotator.scala 21:19]
      yo <= 16'sh0; // @[Rotator.scala 21:19]
    end else if ($signed(io_in_a) < 16'sh0) begin // @[Rotator.scala 28:23]
      yo <= _yo_T_3; // @[Rotator.scala 30:8]
    end else if ($signed(io_in_a) >= 16'sh0) begin // @[Rotator.scala 33:32]
      yo <= _yo_T_7; // @[Rotator.scala 35:8]
    end else begin
      yo <= 16'sh0; // @[Rotator.scala 40:8]
    end
    if (reset) begin // @[Rotator.scala 22:19]
      ao <= 16'sh0; // @[Rotator.scala 22:19]
    end else if ($signed(io_in_a) < 16'sh0) begin // @[Rotator.scala 28:23]
      ao <= _ao_T_2; // @[Rotator.scala 31:8]
    end else if ($signed(io_in_a) >= 16'sh0) begin // @[Rotator.scala 33:32]
      ao <= _ao_T_5; // @[Rotator.scala 36:8]
    end else begin
      ao <= 16'sh0; // @[Rotator.scala 41:8]
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T & ~reset) begin
          $fwrite(32'h80000002,"[%d] %d + %d = %d\n",2'h3,io_in_a,16'she9,_ao_T_2); // @[Rotator.scala 32:11]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~_T & _T_6 & _T_5) begin
          $fwrite(32'h80000002,"[%d] %d + %d = %d\n",2'h3,io_in_a,16'she9,_ao_T_2); // @[Rotator.scala 37:11]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  xo = _RAND_0[15:0];
  _RAND_1 = {1{`RANDOM}};
  yo = _RAND_1[15:0];
  _RAND_2 = {1{`RANDOM}};
  ao = _RAND_2[15:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
