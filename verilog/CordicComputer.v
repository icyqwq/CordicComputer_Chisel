module Rotator(
  input         clock,
  input         reset,
  input  [17:0] io_in_x,
  input  [17:0] io_in_y,
  input  [17:0] io_in_a,
  output [17:0] io_out_x,
  output [17:0] io_out_y,
  output [17:0] io_out_a
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg [17:0] xo; // @[Rotator.scala 20:19]
  reg [17:0] yo; // @[Rotator.scala 21:19]
  reg [17:0] ao; // @[Rotator.scala 22:19]
  wire [17:0] _xo_T_3 = $signed(io_in_x) + $signed(io_in_y); // @[Rotator.scala 29:19]
  wire [17:0] _yo_T_3 = $signed(io_in_y) - $signed(io_in_x); // @[Rotator.scala 30:19]
  wire [17:0] _ao_T_2 = $signed(io_in_a) + 18'sh10000; // @[Rotator.scala 31:19]
  wire [17:0] _xo_T_7 = $signed(io_in_x) - $signed(io_in_y); // @[Rotator.scala 33:19]
  wire [17:0] _yo_T_7 = $signed(io_in_y) + $signed(io_in_x); // @[Rotator.scala 34:19]
  wire [17:0] _ao_T_5 = $signed(io_in_a) - 18'sh10000; // @[Rotator.scala 35:19]
  assign io_out_x = xo; // @[Rotator.scala 24:12]
  assign io_out_y = yo; // @[Rotator.scala 25:12]
  assign io_out_a = ao; // @[Rotator.scala 26:12]
  always @(posedge clock) begin
    if (reset) begin // @[Rotator.scala 20:19]
      xo <= 18'sh0; // @[Rotator.scala 20:19]
    end else if ($signed(io_in_a) < 18'sh0) begin // @[Rotator.scala 28:23]
      xo <= _xo_T_3; // @[Rotator.scala 29:8]
    end else if ($signed(io_in_a) >= 18'sh0) begin // @[Rotator.scala 32:32]
      xo <= _xo_T_7; // @[Rotator.scala 33:8]
    end else begin
      xo <= 18'sh0; // @[Rotator.scala 37:8]
    end
    if (reset) begin // @[Rotator.scala 21:19]
      yo <= 18'sh0; // @[Rotator.scala 21:19]
    end else if ($signed(io_in_a) < 18'sh0) begin // @[Rotator.scala 28:23]
      yo <= _yo_T_3; // @[Rotator.scala 30:8]
    end else if ($signed(io_in_a) >= 18'sh0) begin // @[Rotator.scala 32:32]
      yo <= _yo_T_7; // @[Rotator.scala 34:8]
    end else begin
      yo <= 18'sh0; // @[Rotator.scala 38:8]
    end
    if (reset) begin // @[Rotator.scala 22:19]
      ao <= 18'sh0; // @[Rotator.scala 22:19]
    end else if ($signed(io_in_a) < 18'sh0) begin // @[Rotator.scala 28:23]
      ao <= _ao_T_2; // @[Rotator.scala 31:8]
    end else if ($signed(io_in_a) >= 18'sh0) begin // @[Rotator.scala 32:32]
      ao <= _ao_T_5; // @[Rotator.scala 35:8]
    end else begin
      ao <= 18'sh0; // @[Rotator.scala 39:8]
    end
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
  xo = _RAND_0[17:0];
  _RAND_1 = {1{`RANDOM}};
  yo = _RAND_1[17:0];
  _RAND_2 = {1{`RANDOM}};
  ao = _RAND_2[17:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Rotator_1(
  input         clock,
  input         reset,
  input  [17:0] io_in_x,
  input  [17:0] io_in_y,
  input  [17:0] io_in_a,
  output [17:0] io_out_x,
  output [17:0] io_out_y,
  output [17:0] io_out_a
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg [17:0] xo; // @[Rotator.scala 20:19]
  reg [17:0] yo; // @[Rotator.scala 21:19]
  reg [17:0] ao; // @[Rotator.scala 22:19]
  wire [16:0] _GEN_6 = io_in_y[17:1]; // @[Rotator.scala 29:30]
  wire [17:0] _xo_T = {{1{_GEN_6[16]}},_GEN_6}; // @[Rotator.scala 29:30]
  wire [17:0] _xo_T_3 = $signed(io_in_x) + $signed(_xo_T); // @[Rotator.scala 29:19]
  wire [16:0] _GEN_7 = io_in_x[17:1]; // @[Rotator.scala 30:30]
  wire [17:0] _yo_T = {{1{_GEN_7[16]}},_GEN_7}; // @[Rotator.scala 30:30]
  wire [17:0] _yo_T_3 = $signed(io_in_y) - $signed(_yo_T); // @[Rotator.scala 30:19]
  wire [17:0] _ao_T_2 = $signed(io_in_a) + 18'sh9720; // @[Rotator.scala 31:19]
  wire [17:0] _xo_T_7 = $signed(io_in_x) - $signed(_xo_T); // @[Rotator.scala 33:19]
  wire [17:0] _yo_T_7 = $signed(io_in_y) + $signed(_yo_T); // @[Rotator.scala 34:19]
  wire [17:0] _ao_T_5 = $signed(io_in_a) - 18'sh9720; // @[Rotator.scala 35:19]
  assign io_out_x = xo; // @[Rotator.scala 24:12]
  assign io_out_y = yo; // @[Rotator.scala 25:12]
  assign io_out_a = ao; // @[Rotator.scala 26:12]
  always @(posedge clock) begin
    if (reset) begin // @[Rotator.scala 20:19]
      xo <= 18'sh0; // @[Rotator.scala 20:19]
    end else if ($signed(io_in_a) < 18'sh0) begin // @[Rotator.scala 28:23]
      xo <= _xo_T_3; // @[Rotator.scala 29:8]
    end else if ($signed(io_in_a) >= 18'sh0) begin // @[Rotator.scala 32:32]
      xo <= _xo_T_7; // @[Rotator.scala 33:8]
    end else begin
      xo <= 18'sh0; // @[Rotator.scala 37:8]
    end
    if (reset) begin // @[Rotator.scala 21:19]
      yo <= 18'sh0; // @[Rotator.scala 21:19]
    end else if ($signed(io_in_a) < 18'sh0) begin // @[Rotator.scala 28:23]
      yo <= _yo_T_3; // @[Rotator.scala 30:8]
    end else if ($signed(io_in_a) >= 18'sh0) begin // @[Rotator.scala 32:32]
      yo <= _yo_T_7; // @[Rotator.scala 34:8]
    end else begin
      yo <= 18'sh0; // @[Rotator.scala 38:8]
    end
    if (reset) begin // @[Rotator.scala 22:19]
      ao <= 18'sh0; // @[Rotator.scala 22:19]
    end else if ($signed(io_in_a) < 18'sh0) begin // @[Rotator.scala 28:23]
      ao <= _ao_T_2; // @[Rotator.scala 31:8]
    end else if ($signed(io_in_a) >= 18'sh0) begin // @[Rotator.scala 32:32]
      ao <= _ao_T_5; // @[Rotator.scala 35:8]
    end else begin
      ao <= 18'sh0; // @[Rotator.scala 39:8]
    end
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
  xo = _RAND_0[17:0];
  _RAND_1 = {1{`RANDOM}};
  yo = _RAND_1[17:0];
  _RAND_2 = {1{`RANDOM}};
  ao = _RAND_2[17:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Rotator_2(
  input         clock,
  input         reset,
  input  [17:0] io_in_x,
  input  [17:0] io_in_y,
  input  [17:0] io_in_a,
  output [17:0] io_out_x,
  output [17:0] io_out_y,
  output [17:0] io_out_a
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg [17:0] xo; // @[Rotator.scala 20:19]
  reg [17:0] yo; // @[Rotator.scala 21:19]
  reg [17:0] ao; // @[Rotator.scala 22:19]
  wire [15:0] _GEN_6 = io_in_y[17:2]; // @[Rotator.scala 29:30]
  wire [17:0] _xo_T = {{2{_GEN_6[15]}},_GEN_6}; // @[Rotator.scala 29:30]
  wire [17:0] _xo_T_3 = $signed(io_in_x) + $signed(_xo_T); // @[Rotator.scala 29:19]
  wire [15:0] _GEN_7 = io_in_x[17:2]; // @[Rotator.scala 30:30]
  wire [17:0] _yo_T = {{2{_GEN_7[15]}},_GEN_7}; // @[Rotator.scala 30:30]
  wire [17:0] _yo_T_3 = $signed(io_in_y) - $signed(_yo_T); // @[Rotator.scala 30:19]
  wire [17:0] _ao_T_2 = $signed(io_in_a) + 18'sh4fd9; // @[Rotator.scala 31:19]
  wire [17:0] _xo_T_7 = $signed(io_in_x) - $signed(_xo_T); // @[Rotator.scala 33:19]
  wire [17:0] _yo_T_7 = $signed(io_in_y) + $signed(_yo_T); // @[Rotator.scala 34:19]
  wire [17:0] _ao_T_5 = $signed(io_in_a) - 18'sh4fd9; // @[Rotator.scala 35:19]
  assign io_out_x = xo; // @[Rotator.scala 24:12]
  assign io_out_y = yo; // @[Rotator.scala 25:12]
  assign io_out_a = ao; // @[Rotator.scala 26:12]
  always @(posedge clock) begin
    if (reset) begin // @[Rotator.scala 20:19]
      xo <= 18'sh0; // @[Rotator.scala 20:19]
    end else if ($signed(io_in_a) < 18'sh0) begin // @[Rotator.scala 28:23]
      xo <= _xo_T_3; // @[Rotator.scala 29:8]
    end else if ($signed(io_in_a) >= 18'sh0) begin // @[Rotator.scala 32:32]
      xo <= _xo_T_7; // @[Rotator.scala 33:8]
    end else begin
      xo <= 18'sh0; // @[Rotator.scala 37:8]
    end
    if (reset) begin // @[Rotator.scala 21:19]
      yo <= 18'sh0; // @[Rotator.scala 21:19]
    end else if ($signed(io_in_a) < 18'sh0) begin // @[Rotator.scala 28:23]
      yo <= _yo_T_3; // @[Rotator.scala 30:8]
    end else if ($signed(io_in_a) >= 18'sh0) begin // @[Rotator.scala 32:32]
      yo <= _yo_T_7; // @[Rotator.scala 34:8]
    end else begin
      yo <= 18'sh0; // @[Rotator.scala 38:8]
    end
    if (reset) begin // @[Rotator.scala 22:19]
      ao <= 18'sh0; // @[Rotator.scala 22:19]
    end else if ($signed(io_in_a) < 18'sh0) begin // @[Rotator.scala 28:23]
      ao <= _ao_T_2; // @[Rotator.scala 31:8]
    end else if ($signed(io_in_a) >= 18'sh0) begin // @[Rotator.scala 32:32]
      ao <= _ao_T_5; // @[Rotator.scala 35:8]
    end else begin
      ao <= 18'sh0; // @[Rotator.scala 39:8]
    end
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
  xo = _RAND_0[17:0];
  _RAND_1 = {1{`RANDOM}};
  yo = _RAND_1[17:0];
  _RAND_2 = {1{`RANDOM}};
  ao = _RAND_2[17:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Rotator_3(
  input         clock,
  input         reset,
  input  [17:0] io_in_x,
  input  [17:0] io_in_y,
  input  [17:0] io_in_a,
  output [17:0] io_out_x,
  output [17:0] io_out_y,
  output [17:0] io_out_a
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg [17:0] xo; // @[Rotator.scala 20:19]
  reg [17:0] yo; // @[Rotator.scala 21:19]
  reg [17:0] ao; // @[Rotator.scala 22:19]
  wire [14:0] _GEN_6 = io_in_y[17:3]; // @[Rotator.scala 29:30]
  wire [17:0] _xo_T = {{3{_GEN_6[14]}},_GEN_6}; // @[Rotator.scala 29:30]
  wire [17:0] _xo_T_3 = $signed(io_in_x) + $signed(_xo_T); // @[Rotator.scala 29:19]
  wire [14:0] _GEN_7 = io_in_x[17:3]; // @[Rotator.scala 30:30]
  wire [17:0] _yo_T = {{3{_GEN_7[14]}},_GEN_7}; // @[Rotator.scala 30:30]
  wire [17:0] _yo_T_3 = $signed(io_in_y) - $signed(_yo_T); // @[Rotator.scala 30:19]
  wire [17:0] _ao_T_2 = $signed(io_in_a) + 18'sh2888; // @[Rotator.scala 31:19]
  wire [17:0] _xo_T_7 = $signed(io_in_x) - $signed(_xo_T); // @[Rotator.scala 33:19]
  wire [17:0] _yo_T_7 = $signed(io_in_y) + $signed(_yo_T); // @[Rotator.scala 34:19]
  wire [17:0] _ao_T_5 = $signed(io_in_a) - 18'sh2888; // @[Rotator.scala 35:19]
  assign io_out_x = xo; // @[Rotator.scala 24:12]
  assign io_out_y = yo; // @[Rotator.scala 25:12]
  assign io_out_a = ao; // @[Rotator.scala 26:12]
  always @(posedge clock) begin
    if (reset) begin // @[Rotator.scala 20:19]
      xo <= 18'sh0; // @[Rotator.scala 20:19]
    end else if ($signed(io_in_a) < 18'sh0) begin // @[Rotator.scala 28:23]
      xo <= _xo_T_3; // @[Rotator.scala 29:8]
    end else if ($signed(io_in_a) >= 18'sh0) begin // @[Rotator.scala 32:32]
      xo <= _xo_T_7; // @[Rotator.scala 33:8]
    end else begin
      xo <= 18'sh0; // @[Rotator.scala 37:8]
    end
    if (reset) begin // @[Rotator.scala 21:19]
      yo <= 18'sh0; // @[Rotator.scala 21:19]
    end else if ($signed(io_in_a) < 18'sh0) begin // @[Rotator.scala 28:23]
      yo <= _yo_T_3; // @[Rotator.scala 30:8]
    end else if ($signed(io_in_a) >= 18'sh0) begin // @[Rotator.scala 32:32]
      yo <= _yo_T_7; // @[Rotator.scala 34:8]
    end else begin
      yo <= 18'sh0; // @[Rotator.scala 38:8]
    end
    if (reset) begin // @[Rotator.scala 22:19]
      ao <= 18'sh0; // @[Rotator.scala 22:19]
    end else if ($signed(io_in_a) < 18'sh0) begin // @[Rotator.scala 28:23]
      ao <= _ao_T_2; // @[Rotator.scala 31:8]
    end else if ($signed(io_in_a) >= 18'sh0) begin // @[Rotator.scala 32:32]
      ao <= _ao_T_5; // @[Rotator.scala 35:8]
    end else begin
      ao <= 18'sh0; // @[Rotator.scala 39:8]
    end
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
  xo = _RAND_0[17:0];
  _RAND_1 = {1{`RANDOM}};
  yo = _RAND_1[17:0];
  _RAND_2 = {1{`RANDOM}};
  ao = _RAND_2[17:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Rotator_4(
  input         clock,
  input         reset,
  input  [17:0] io_in_x,
  input  [17:0] io_in_y,
  input  [17:0] io_in_a,
  output [17:0] io_out_x,
  output [17:0] io_out_y,
  output [17:0] io_out_a
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg [17:0] xo; // @[Rotator.scala 20:19]
  reg [17:0] yo; // @[Rotator.scala 21:19]
  reg [17:0] ao; // @[Rotator.scala 22:19]
  wire [13:0] _GEN_6 = io_in_y[17:4]; // @[Rotator.scala 29:30]
  wire [17:0] _xo_T = {{4{_GEN_6[13]}},_GEN_6}; // @[Rotator.scala 29:30]
  wire [17:0] _xo_T_3 = $signed(io_in_x) + $signed(_xo_T); // @[Rotator.scala 29:19]
  wire [13:0] _GEN_7 = io_in_x[17:4]; // @[Rotator.scala 30:30]
  wire [17:0] _yo_T = {{4{_GEN_7[13]}},_GEN_7}; // @[Rotator.scala 30:30]
  wire [17:0] _yo_T_3 = $signed(io_in_y) - $signed(_yo_T); // @[Rotator.scala 30:19]
  wire [17:0] _ao_T_2 = $signed(io_in_a) + 18'sh1458; // @[Rotator.scala 31:19]
  wire [17:0] _xo_T_7 = $signed(io_in_x) - $signed(_xo_T); // @[Rotator.scala 33:19]
  wire [17:0] _yo_T_7 = $signed(io_in_y) + $signed(_yo_T); // @[Rotator.scala 34:19]
  wire [17:0] _ao_T_5 = $signed(io_in_a) - 18'sh1458; // @[Rotator.scala 35:19]
  assign io_out_x = xo; // @[Rotator.scala 24:12]
  assign io_out_y = yo; // @[Rotator.scala 25:12]
  assign io_out_a = ao; // @[Rotator.scala 26:12]
  always @(posedge clock) begin
    if (reset) begin // @[Rotator.scala 20:19]
      xo <= 18'sh0; // @[Rotator.scala 20:19]
    end else if ($signed(io_in_a) < 18'sh0) begin // @[Rotator.scala 28:23]
      xo <= _xo_T_3; // @[Rotator.scala 29:8]
    end else if ($signed(io_in_a) >= 18'sh0) begin // @[Rotator.scala 32:32]
      xo <= _xo_T_7; // @[Rotator.scala 33:8]
    end else begin
      xo <= 18'sh0; // @[Rotator.scala 37:8]
    end
    if (reset) begin // @[Rotator.scala 21:19]
      yo <= 18'sh0; // @[Rotator.scala 21:19]
    end else if ($signed(io_in_a) < 18'sh0) begin // @[Rotator.scala 28:23]
      yo <= _yo_T_3; // @[Rotator.scala 30:8]
    end else if ($signed(io_in_a) >= 18'sh0) begin // @[Rotator.scala 32:32]
      yo <= _yo_T_7; // @[Rotator.scala 34:8]
    end else begin
      yo <= 18'sh0; // @[Rotator.scala 38:8]
    end
    if (reset) begin // @[Rotator.scala 22:19]
      ao <= 18'sh0; // @[Rotator.scala 22:19]
    end else if ($signed(io_in_a) < 18'sh0) begin // @[Rotator.scala 28:23]
      ao <= _ao_T_2; // @[Rotator.scala 31:8]
    end else if ($signed(io_in_a) >= 18'sh0) begin // @[Rotator.scala 32:32]
      ao <= _ao_T_5; // @[Rotator.scala 35:8]
    end else begin
      ao <= 18'sh0; // @[Rotator.scala 39:8]
    end
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
  xo = _RAND_0[17:0];
  _RAND_1 = {1{`RANDOM}};
  yo = _RAND_1[17:0];
  _RAND_2 = {1{`RANDOM}};
  ao = _RAND_2[17:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Rotator_5(
  input         clock,
  input         reset,
  input  [17:0] io_in_x,
  input  [17:0] io_in_y,
  input  [17:0] io_in_a,
  output [17:0] io_out_x,
  output [17:0] io_out_y,
  output [17:0] io_out_a
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg [17:0] xo; // @[Rotator.scala 20:19]
  reg [17:0] yo; // @[Rotator.scala 21:19]
  reg [17:0] ao; // @[Rotator.scala 22:19]
  wire [12:0] _GEN_6 = io_in_y[17:5]; // @[Rotator.scala 29:30]
  wire [17:0] _xo_T = {{5{_GEN_6[12]}},_GEN_6}; // @[Rotator.scala 29:30]
  wire [17:0] _xo_T_3 = $signed(io_in_x) + $signed(_xo_T); // @[Rotator.scala 29:19]
  wire [12:0] _GEN_7 = io_in_x[17:5]; // @[Rotator.scala 30:30]
  wire [17:0] _yo_T = {{5{_GEN_7[12]}},_GEN_7}; // @[Rotator.scala 30:30]
  wire [17:0] _yo_T_3 = $signed(io_in_y) - $signed(_yo_T); // @[Rotator.scala 30:19]
  wire [17:0] _ao_T_2 = $signed(io_in_a) + 18'sha2e; // @[Rotator.scala 31:19]
  wire [17:0] _xo_T_7 = $signed(io_in_x) - $signed(_xo_T); // @[Rotator.scala 33:19]
  wire [17:0] _yo_T_7 = $signed(io_in_y) + $signed(_yo_T); // @[Rotator.scala 34:19]
  wire [17:0] _ao_T_5 = $signed(io_in_a) - 18'sha2e; // @[Rotator.scala 35:19]
  assign io_out_x = xo; // @[Rotator.scala 24:12]
  assign io_out_y = yo; // @[Rotator.scala 25:12]
  assign io_out_a = ao; // @[Rotator.scala 26:12]
  always @(posedge clock) begin
    if (reset) begin // @[Rotator.scala 20:19]
      xo <= 18'sh0; // @[Rotator.scala 20:19]
    end else if ($signed(io_in_a) < 18'sh0) begin // @[Rotator.scala 28:23]
      xo <= _xo_T_3; // @[Rotator.scala 29:8]
    end else if ($signed(io_in_a) >= 18'sh0) begin // @[Rotator.scala 32:32]
      xo <= _xo_T_7; // @[Rotator.scala 33:8]
    end else begin
      xo <= 18'sh0; // @[Rotator.scala 37:8]
    end
    if (reset) begin // @[Rotator.scala 21:19]
      yo <= 18'sh0; // @[Rotator.scala 21:19]
    end else if ($signed(io_in_a) < 18'sh0) begin // @[Rotator.scala 28:23]
      yo <= _yo_T_3; // @[Rotator.scala 30:8]
    end else if ($signed(io_in_a) >= 18'sh0) begin // @[Rotator.scala 32:32]
      yo <= _yo_T_7; // @[Rotator.scala 34:8]
    end else begin
      yo <= 18'sh0; // @[Rotator.scala 38:8]
    end
    if (reset) begin // @[Rotator.scala 22:19]
      ao <= 18'sh0; // @[Rotator.scala 22:19]
    end else if ($signed(io_in_a) < 18'sh0) begin // @[Rotator.scala 28:23]
      ao <= _ao_T_2; // @[Rotator.scala 31:8]
    end else if ($signed(io_in_a) >= 18'sh0) begin // @[Rotator.scala 32:32]
      ao <= _ao_T_5; // @[Rotator.scala 35:8]
    end else begin
      ao <= 18'sh0; // @[Rotator.scala 39:8]
    end
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
  xo = _RAND_0[17:0];
  _RAND_1 = {1{`RANDOM}};
  yo = _RAND_1[17:0];
  _RAND_2 = {1{`RANDOM}};
  ao = _RAND_2[17:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Rotator_6(
  input         clock,
  input         reset,
  input  [17:0] io_in_x,
  input  [17:0] io_in_y,
  input  [17:0] io_in_a,
  output [17:0] io_out_x,
  output [17:0] io_out_y,
  output [17:0] io_out_a
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg [17:0] xo; // @[Rotator.scala 20:19]
  reg [17:0] yo; // @[Rotator.scala 21:19]
  reg [17:0] ao; // @[Rotator.scala 22:19]
  wire [11:0] _GEN_6 = io_in_y[17:6]; // @[Rotator.scala 29:30]
  wire [17:0] _xo_T = {{6{_GEN_6[11]}},_GEN_6}; // @[Rotator.scala 29:30]
  wire [17:0] _xo_T_3 = $signed(io_in_x) + $signed(_xo_T); // @[Rotator.scala 29:19]
  wire [11:0] _GEN_7 = io_in_x[17:6]; // @[Rotator.scala 30:30]
  wire [17:0] _yo_T = {{6{_GEN_7[11]}},_GEN_7}; // @[Rotator.scala 30:30]
  wire [17:0] _yo_T_3 = $signed(io_in_y) - $signed(_yo_T); // @[Rotator.scala 30:19]
  wire [17:0] _ao_T_2 = $signed(io_in_a) + 18'sh517; // @[Rotator.scala 31:19]
  wire [17:0] _xo_T_7 = $signed(io_in_x) - $signed(_xo_T); // @[Rotator.scala 33:19]
  wire [17:0] _yo_T_7 = $signed(io_in_y) + $signed(_yo_T); // @[Rotator.scala 34:19]
  wire [17:0] _ao_T_5 = $signed(io_in_a) - 18'sh517; // @[Rotator.scala 35:19]
  assign io_out_x = xo; // @[Rotator.scala 24:12]
  assign io_out_y = yo; // @[Rotator.scala 25:12]
  assign io_out_a = ao; // @[Rotator.scala 26:12]
  always @(posedge clock) begin
    if (reset) begin // @[Rotator.scala 20:19]
      xo <= 18'sh0; // @[Rotator.scala 20:19]
    end else if ($signed(io_in_a) < 18'sh0) begin // @[Rotator.scala 28:23]
      xo <= _xo_T_3; // @[Rotator.scala 29:8]
    end else if ($signed(io_in_a) >= 18'sh0) begin // @[Rotator.scala 32:32]
      xo <= _xo_T_7; // @[Rotator.scala 33:8]
    end else begin
      xo <= 18'sh0; // @[Rotator.scala 37:8]
    end
    if (reset) begin // @[Rotator.scala 21:19]
      yo <= 18'sh0; // @[Rotator.scala 21:19]
    end else if ($signed(io_in_a) < 18'sh0) begin // @[Rotator.scala 28:23]
      yo <= _yo_T_3; // @[Rotator.scala 30:8]
    end else if ($signed(io_in_a) >= 18'sh0) begin // @[Rotator.scala 32:32]
      yo <= _yo_T_7; // @[Rotator.scala 34:8]
    end else begin
      yo <= 18'sh0; // @[Rotator.scala 38:8]
    end
    if (reset) begin // @[Rotator.scala 22:19]
      ao <= 18'sh0; // @[Rotator.scala 22:19]
    end else if ($signed(io_in_a) < 18'sh0) begin // @[Rotator.scala 28:23]
      ao <= _ao_T_2; // @[Rotator.scala 31:8]
    end else if ($signed(io_in_a) >= 18'sh0) begin // @[Rotator.scala 32:32]
      ao <= _ao_T_5; // @[Rotator.scala 35:8]
    end else begin
      ao <= 18'sh0; // @[Rotator.scala 39:8]
    end
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
  xo = _RAND_0[17:0];
  _RAND_1 = {1{`RANDOM}};
  yo = _RAND_1[17:0];
  _RAND_2 = {1{`RANDOM}};
  ao = _RAND_2[17:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Rotator_7(
  input         clock,
  input         reset,
  input  [17:0] io_in_x,
  input  [17:0] io_in_y,
  input  [17:0] io_in_a,
  output [17:0] io_out_x,
  output [17:0] io_out_y,
  output [17:0] io_out_a
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg [17:0] xo; // @[Rotator.scala 20:19]
  reg [17:0] yo; // @[Rotator.scala 21:19]
  reg [17:0] ao; // @[Rotator.scala 22:19]
  wire [10:0] _GEN_6 = io_in_y[17:7]; // @[Rotator.scala 29:30]
  wire [17:0] _xo_T = {{7{_GEN_6[10]}},_GEN_6}; // @[Rotator.scala 29:30]
  wire [17:0] _xo_T_3 = $signed(io_in_x) + $signed(_xo_T); // @[Rotator.scala 29:19]
  wire [10:0] _GEN_7 = io_in_x[17:7]; // @[Rotator.scala 30:30]
  wire [17:0] _yo_T = {{7{_GEN_7[10]}},_GEN_7}; // @[Rotator.scala 30:30]
  wire [17:0] _yo_T_3 = $signed(io_in_y) - $signed(_yo_T); // @[Rotator.scala 30:19]
  wire [17:0] _ao_T_2 = $signed(io_in_a) + 18'sh28b; // @[Rotator.scala 31:19]
  wire [17:0] _xo_T_7 = $signed(io_in_x) - $signed(_xo_T); // @[Rotator.scala 33:19]
  wire [17:0] _yo_T_7 = $signed(io_in_y) + $signed(_yo_T); // @[Rotator.scala 34:19]
  wire [17:0] _ao_T_5 = $signed(io_in_a) - 18'sh28b; // @[Rotator.scala 35:19]
  assign io_out_x = xo; // @[Rotator.scala 24:12]
  assign io_out_y = yo; // @[Rotator.scala 25:12]
  assign io_out_a = ao; // @[Rotator.scala 26:12]
  always @(posedge clock) begin
    if (reset) begin // @[Rotator.scala 20:19]
      xo <= 18'sh0; // @[Rotator.scala 20:19]
    end else if ($signed(io_in_a) < 18'sh0) begin // @[Rotator.scala 28:23]
      xo <= _xo_T_3; // @[Rotator.scala 29:8]
    end else if ($signed(io_in_a) >= 18'sh0) begin // @[Rotator.scala 32:32]
      xo <= _xo_T_7; // @[Rotator.scala 33:8]
    end else begin
      xo <= 18'sh0; // @[Rotator.scala 37:8]
    end
    if (reset) begin // @[Rotator.scala 21:19]
      yo <= 18'sh0; // @[Rotator.scala 21:19]
    end else if ($signed(io_in_a) < 18'sh0) begin // @[Rotator.scala 28:23]
      yo <= _yo_T_3; // @[Rotator.scala 30:8]
    end else if ($signed(io_in_a) >= 18'sh0) begin // @[Rotator.scala 32:32]
      yo <= _yo_T_7; // @[Rotator.scala 34:8]
    end else begin
      yo <= 18'sh0; // @[Rotator.scala 38:8]
    end
    if (reset) begin // @[Rotator.scala 22:19]
      ao <= 18'sh0; // @[Rotator.scala 22:19]
    end else if ($signed(io_in_a) < 18'sh0) begin // @[Rotator.scala 28:23]
      ao <= _ao_T_2; // @[Rotator.scala 31:8]
    end else if ($signed(io_in_a) >= 18'sh0) begin // @[Rotator.scala 32:32]
      ao <= _ao_T_5; // @[Rotator.scala 35:8]
    end else begin
      ao <= 18'sh0; // @[Rotator.scala 39:8]
    end
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
  xo = _RAND_0[17:0];
  _RAND_1 = {1{`RANDOM}};
  yo = _RAND_1[17:0];
  _RAND_2 = {1{`RANDOM}};
  ao = _RAND_2[17:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Rotator_8(
  input         clock,
  input         reset,
  input  [17:0] io_in_x,
  input  [17:0] io_in_y,
  input  [17:0] io_in_a,
  output [17:0] io_out_x,
  output [17:0] io_out_y,
  output [17:0] io_out_a
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg [17:0] xo; // @[Rotator.scala 20:19]
  reg [17:0] yo; // @[Rotator.scala 21:19]
  reg [17:0] ao; // @[Rotator.scala 22:19]
  wire [9:0] _GEN_6 = io_in_y[17:8]; // @[Rotator.scala 29:30]
  wire [17:0] _xo_T = {{8{_GEN_6[9]}},_GEN_6}; // @[Rotator.scala 29:30]
  wire [17:0] _xo_T_3 = $signed(io_in_x) + $signed(_xo_T); // @[Rotator.scala 29:19]
  wire [9:0] _GEN_7 = io_in_x[17:8]; // @[Rotator.scala 30:30]
  wire [17:0] _yo_T = {{8{_GEN_7[9]}},_GEN_7}; // @[Rotator.scala 30:30]
  wire [17:0] _yo_T_3 = $signed(io_in_y) - $signed(_yo_T); // @[Rotator.scala 30:19]
  wire [17:0] _ao_T_2 = $signed(io_in_a) + 18'sh145; // @[Rotator.scala 31:19]
  wire [17:0] _xo_T_7 = $signed(io_in_x) - $signed(_xo_T); // @[Rotator.scala 33:19]
  wire [17:0] _yo_T_7 = $signed(io_in_y) + $signed(_yo_T); // @[Rotator.scala 34:19]
  wire [17:0] _ao_T_5 = $signed(io_in_a) - 18'sh145; // @[Rotator.scala 35:19]
  assign io_out_x = xo; // @[Rotator.scala 24:12]
  assign io_out_y = yo; // @[Rotator.scala 25:12]
  assign io_out_a = ao; // @[Rotator.scala 26:12]
  always @(posedge clock) begin
    if (reset) begin // @[Rotator.scala 20:19]
      xo <= 18'sh0; // @[Rotator.scala 20:19]
    end else if ($signed(io_in_a) < 18'sh0) begin // @[Rotator.scala 28:23]
      xo <= _xo_T_3; // @[Rotator.scala 29:8]
    end else if ($signed(io_in_a) >= 18'sh0) begin // @[Rotator.scala 32:32]
      xo <= _xo_T_7; // @[Rotator.scala 33:8]
    end else begin
      xo <= 18'sh0; // @[Rotator.scala 37:8]
    end
    if (reset) begin // @[Rotator.scala 21:19]
      yo <= 18'sh0; // @[Rotator.scala 21:19]
    end else if ($signed(io_in_a) < 18'sh0) begin // @[Rotator.scala 28:23]
      yo <= _yo_T_3; // @[Rotator.scala 30:8]
    end else if ($signed(io_in_a) >= 18'sh0) begin // @[Rotator.scala 32:32]
      yo <= _yo_T_7; // @[Rotator.scala 34:8]
    end else begin
      yo <= 18'sh0; // @[Rotator.scala 38:8]
    end
    if (reset) begin // @[Rotator.scala 22:19]
      ao <= 18'sh0; // @[Rotator.scala 22:19]
    end else if ($signed(io_in_a) < 18'sh0) begin // @[Rotator.scala 28:23]
      ao <= _ao_T_2; // @[Rotator.scala 31:8]
    end else if ($signed(io_in_a) >= 18'sh0) begin // @[Rotator.scala 32:32]
      ao <= _ao_T_5; // @[Rotator.scala 35:8]
    end else begin
      ao <= 18'sh0; // @[Rotator.scala 39:8]
    end
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
  xo = _RAND_0[17:0];
  _RAND_1 = {1{`RANDOM}};
  yo = _RAND_1[17:0];
  _RAND_2 = {1{`RANDOM}};
  ao = _RAND_2[17:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Rotator_9(
  input         clock,
  input         reset,
  input  [17:0] io_in_x,
  input  [17:0] io_in_y,
  input  [17:0] io_in_a,
  output [17:0] io_out_x,
  output [17:0] io_out_y,
  output [17:0] io_out_a
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg [17:0] xo; // @[Rotator.scala 20:19]
  reg [17:0] yo; // @[Rotator.scala 21:19]
  reg [17:0] ao; // @[Rotator.scala 22:19]
  wire [8:0] _GEN_6 = io_in_y[17:9]; // @[Rotator.scala 29:30]
  wire [17:0] _xo_T = {{9{_GEN_6[8]}},_GEN_6}; // @[Rotator.scala 29:30]
  wire [17:0] _xo_T_3 = $signed(io_in_x) + $signed(_xo_T); // @[Rotator.scala 29:19]
  wire [8:0] _GEN_7 = io_in_x[17:9]; // @[Rotator.scala 30:30]
  wire [17:0] _yo_T = {{9{_GEN_7[8]}},_GEN_7}; // @[Rotator.scala 30:30]
  wire [17:0] _yo_T_3 = $signed(io_in_y) - $signed(_yo_T); // @[Rotator.scala 30:19]
  wire [17:0] _ao_T_2 = $signed(io_in_a) + 18'sha2; // @[Rotator.scala 31:19]
  wire [17:0] _xo_T_7 = $signed(io_in_x) - $signed(_xo_T); // @[Rotator.scala 33:19]
  wire [17:0] _yo_T_7 = $signed(io_in_y) + $signed(_yo_T); // @[Rotator.scala 34:19]
  wire [17:0] _ao_T_5 = $signed(io_in_a) - 18'sha2; // @[Rotator.scala 35:19]
  assign io_out_x = xo; // @[Rotator.scala 24:12]
  assign io_out_y = yo; // @[Rotator.scala 25:12]
  assign io_out_a = ao; // @[Rotator.scala 26:12]
  always @(posedge clock) begin
    if (reset) begin // @[Rotator.scala 20:19]
      xo <= 18'sh0; // @[Rotator.scala 20:19]
    end else if ($signed(io_in_a) < 18'sh0) begin // @[Rotator.scala 28:23]
      xo <= _xo_T_3; // @[Rotator.scala 29:8]
    end else if ($signed(io_in_a) >= 18'sh0) begin // @[Rotator.scala 32:32]
      xo <= _xo_T_7; // @[Rotator.scala 33:8]
    end else begin
      xo <= 18'sh0; // @[Rotator.scala 37:8]
    end
    if (reset) begin // @[Rotator.scala 21:19]
      yo <= 18'sh0; // @[Rotator.scala 21:19]
    end else if ($signed(io_in_a) < 18'sh0) begin // @[Rotator.scala 28:23]
      yo <= _yo_T_3; // @[Rotator.scala 30:8]
    end else if ($signed(io_in_a) >= 18'sh0) begin // @[Rotator.scala 32:32]
      yo <= _yo_T_7; // @[Rotator.scala 34:8]
    end else begin
      yo <= 18'sh0; // @[Rotator.scala 38:8]
    end
    if (reset) begin // @[Rotator.scala 22:19]
      ao <= 18'sh0; // @[Rotator.scala 22:19]
    end else if ($signed(io_in_a) < 18'sh0) begin // @[Rotator.scala 28:23]
      ao <= _ao_T_2; // @[Rotator.scala 31:8]
    end else if ($signed(io_in_a) >= 18'sh0) begin // @[Rotator.scala 32:32]
      ao <= _ao_T_5; // @[Rotator.scala 35:8]
    end else begin
      ao <= 18'sh0; // @[Rotator.scala 39:8]
    end
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
  xo = _RAND_0[17:0];
  _RAND_1 = {1{`RANDOM}};
  yo = _RAND_1[17:0];
  _RAND_2 = {1{`RANDOM}};
  ao = _RAND_2[17:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Rotator_10(
  input         clock,
  input         reset,
  input  [17:0] io_in_x,
  input  [17:0] io_in_y,
  input  [17:0] io_in_a,
  output [17:0] io_out_x,
  output [17:0] io_out_y,
  output [17:0] io_out_a
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg [17:0] xo; // @[Rotator.scala 20:19]
  reg [17:0] yo; // @[Rotator.scala 21:19]
  reg [17:0] ao; // @[Rotator.scala 22:19]
  wire [7:0] _GEN_6 = io_in_y[17:10]; // @[Rotator.scala 29:30]
  wire [17:0] _xo_T = {{10{_GEN_6[7]}},_GEN_6}; // @[Rotator.scala 29:30]
  wire [17:0] _xo_T_3 = $signed(io_in_x) + $signed(_xo_T); // @[Rotator.scala 29:19]
  wire [7:0] _GEN_7 = io_in_x[17:10]; // @[Rotator.scala 30:30]
  wire [17:0] _yo_T = {{10{_GEN_7[7]}},_GEN_7}; // @[Rotator.scala 30:30]
  wire [17:0] _yo_T_3 = $signed(io_in_y) - $signed(_yo_T); // @[Rotator.scala 30:19]
  wire [17:0] _ao_T_2 = $signed(io_in_a) + 18'sh51; // @[Rotator.scala 31:19]
  wire [17:0] _xo_T_7 = $signed(io_in_x) - $signed(_xo_T); // @[Rotator.scala 33:19]
  wire [17:0] _yo_T_7 = $signed(io_in_y) + $signed(_yo_T); // @[Rotator.scala 34:19]
  wire [17:0] _ao_T_5 = $signed(io_in_a) - 18'sh51; // @[Rotator.scala 35:19]
  assign io_out_x = xo; // @[Rotator.scala 24:12]
  assign io_out_y = yo; // @[Rotator.scala 25:12]
  assign io_out_a = ao; // @[Rotator.scala 26:12]
  always @(posedge clock) begin
    if (reset) begin // @[Rotator.scala 20:19]
      xo <= 18'sh0; // @[Rotator.scala 20:19]
    end else if ($signed(io_in_a) < 18'sh0) begin // @[Rotator.scala 28:23]
      xo <= _xo_T_3; // @[Rotator.scala 29:8]
    end else if ($signed(io_in_a) >= 18'sh0) begin // @[Rotator.scala 32:32]
      xo <= _xo_T_7; // @[Rotator.scala 33:8]
    end else begin
      xo <= 18'sh0; // @[Rotator.scala 37:8]
    end
    if (reset) begin // @[Rotator.scala 21:19]
      yo <= 18'sh0; // @[Rotator.scala 21:19]
    end else if ($signed(io_in_a) < 18'sh0) begin // @[Rotator.scala 28:23]
      yo <= _yo_T_3; // @[Rotator.scala 30:8]
    end else if ($signed(io_in_a) >= 18'sh0) begin // @[Rotator.scala 32:32]
      yo <= _yo_T_7; // @[Rotator.scala 34:8]
    end else begin
      yo <= 18'sh0; // @[Rotator.scala 38:8]
    end
    if (reset) begin // @[Rotator.scala 22:19]
      ao <= 18'sh0; // @[Rotator.scala 22:19]
    end else if ($signed(io_in_a) < 18'sh0) begin // @[Rotator.scala 28:23]
      ao <= _ao_T_2; // @[Rotator.scala 31:8]
    end else if ($signed(io_in_a) >= 18'sh0) begin // @[Rotator.scala 32:32]
      ao <= _ao_T_5; // @[Rotator.scala 35:8]
    end else begin
      ao <= 18'sh0; // @[Rotator.scala 39:8]
    end
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
  xo = _RAND_0[17:0];
  _RAND_1 = {1{`RANDOM}};
  yo = _RAND_1[17:0];
  _RAND_2 = {1{`RANDOM}};
  ao = _RAND_2[17:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Rotator_11(
  input         clock,
  input         reset,
  input  [17:0] io_in_x,
  input  [17:0] io_in_y,
  input  [17:0] io_in_a,
  output [17:0] io_out_x,
  output [17:0] io_out_y,
  output [17:0] io_out_a
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg [17:0] xo; // @[Rotator.scala 20:19]
  reg [17:0] yo; // @[Rotator.scala 21:19]
  reg [17:0] ao; // @[Rotator.scala 22:19]
  wire [6:0] _GEN_6 = io_in_y[17:11]; // @[Rotator.scala 29:30]
  wire [17:0] _xo_T = {{11{_GEN_6[6]}},_GEN_6}; // @[Rotator.scala 29:30]
  wire [17:0] _xo_T_3 = $signed(io_in_x) + $signed(_xo_T); // @[Rotator.scala 29:19]
  wire [6:0] _GEN_7 = io_in_x[17:11]; // @[Rotator.scala 30:30]
  wire [17:0] _yo_T = {{11{_GEN_7[6]}},_GEN_7}; // @[Rotator.scala 30:30]
  wire [17:0] _yo_T_3 = $signed(io_in_y) - $signed(_yo_T); // @[Rotator.scala 30:19]
  wire [17:0] _ao_T_2 = $signed(io_in_a) + 18'sh28; // @[Rotator.scala 31:19]
  wire [17:0] _xo_T_7 = $signed(io_in_x) - $signed(_xo_T); // @[Rotator.scala 33:19]
  wire [17:0] _yo_T_7 = $signed(io_in_y) + $signed(_yo_T); // @[Rotator.scala 34:19]
  wire [17:0] _ao_T_5 = $signed(io_in_a) - 18'sh28; // @[Rotator.scala 35:19]
  assign io_out_x = xo; // @[Rotator.scala 24:12]
  assign io_out_y = yo; // @[Rotator.scala 25:12]
  assign io_out_a = ao; // @[Rotator.scala 26:12]
  always @(posedge clock) begin
    if (reset) begin // @[Rotator.scala 20:19]
      xo <= 18'sh0; // @[Rotator.scala 20:19]
    end else if ($signed(io_in_a) < 18'sh0) begin // @[Rotator.scala 28:23]
      xo <= _xo_T_3; // @[Rotator.scala 29:8]
    end else if ($signed(io_in_a) >= 18'sh0) begin // @[Rotator.scala 32:32]
      xo <= _xo_T_7; // @[Rotator.scala 33:8]
    end else begin
      xo <= 18'sh0; // @[Rotator.scala 37:8]
    end
    if (reset) begin // @[Rotator.scala 21:19]
      yo <= 18'sh0; // @[Rotator.scala 21:19]
    end else if ($signed(io_in_a) < 18'sh0) begin // @[Rotator.scala 28:23]
      yo <= _yo_T_3; // @[Rotator.scala 30:8]
    end else if ($signed(io_in_a) >= 18'sh0) begin // @[Rotator.scala 32:32]
      yo <= _yo_T_7; // @[Rotator.scala 34:8]
    end else begin
      yo <= 18'sh0; // @[Rotator.scala 38:8]
    end
    if (reset) begin // @[Rotator.scala 22:19]
      ao <= 18'sh0; // @[Rotator.scala 22:19]
    end else if ($signed(io_in_a) < 18'sh0) begin // @[Rotator.scala 28:23]
      ao <= _ao_T_2; // @[Rotator.scala 31:8]
    end else if ($signed(io_in_a) >= 18'sh0) begin // @[Rotator.scala 32:32]
      ao <= _ao_T_5; // @[Rotator.scala 35:8]
    end else begin
      ao <= 18'sh0; // @[Rotator.scala 39:8]
    end
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
  xo = _RAND_0[17:0];
  _RAND_1 = {1{`RANDOM}};
  yo = _RAND_1[17:0];
  _RAND_2 = {1{`RANDOM}};
  ao = _RAND_2[17:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Rotator_12(
  input         clock,
  input         reset,
  input  [17:0] io_in_x,
  input  [17:0] io_in_y,
  input  [17:0] io_in_a,
  output [17:0] io_out_x,
  output [17:0] io_out_y,
  output [17:0] io_out_a
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg [17:0] xo; // @[Rotator.scala 20:19]
  reg [17:0] yo; // @[Rotator.scala 21:19]
  reg [17:0] ao; // @[Rotator.scala 22:19]
  wire [5:0] _GEN_6 = io_in_y[17:12]; // @[Rotator.scala 29:30]
  wire [17:0] _xo_T = {{12{_GEN_6[5]}},_GEN_6}; // @[Rotator.scala 29:30]
  wire [17:0] _xo_T_3 = $signed(io_in_x) + $signed(_xo_T); // @[Rotator.scala 29:19]
  wire [5:0] _GEN_7 = io_in_x[17:12]; // @[Rotator.scala 30:30]
  wire [17:0] _yo_T = {{12{_GEN_7[5]}},_GEN_7}; // @[Rotator.scala 30:30]
  wire [17:0] _yo_T_3 = $signed(io_in_y) - $signed(_yo_T); // @[Rotator.scala 30:19]
  wire [17:0] _ao_T_2 = $signed(io_in_a) + 18'sh14; // @[Rotator.scala 31:19]
  wire [17:0] _xo_T_7 = $signed(io_in_x) - $signed(_xo_T); // @[Rotator.scala 33:19]
  wire [17:0] _yo_T_7 = $signed(io_in_y) + $signed(_yo_T); // @[Rotator.scala 34:19]
  wire [17:0] _ao_T_5 = $signed(io_in_a) - 18'sh14; // @[Rotator.scala 35:19]
  assign io_out_x = xo; // @[Rotator.scala 24:12]
  assign io_out_y = yo; // @[Rotator.scala 25:12]
  assign io_out_a = ao; // @[Rotator.scala 26:12]
  always @(posedge clock) begin
    if (reset) begin // @[Rotator.scala 20:19]
      xo <= 18'sh0; // @[Rotator.scala 20:19]
    end else if ($signed(io_in_a) < 18'sh0) begin // @[Rotator.scala 28:23]
      xo <= _xo_T_3; // @[Rotator.scala 29:8]
    end else if ($signed(io_in_a) >= 18'sh0) begin // @[Rotator.scala 32:32]
      xo <= _xo_T_7; // @[Rotator.scala 33:8]
    end else begin
      xo <= 18'sh0; // @[Rotator.scala 37:8]
    end
    if (reset) begin // @[Rotator.scala 21:19]
      yo <= 18'sh0; // @[Rotator.scala 21:19]
    end else if ($signed(io_in_a) < 18'sh0) begin // @[Rotator.scala 28:23]
      yo <= _yo_T_3; // @[Rotator.scala 30:8]
    end else if ($signed(io_in_a) >= 18'sh0) begin // @[Rotator.scala 32:32]
      yo <= _yo_T_7; // @[Rotator.scala 34:8]
    end else begin
      yo <= 18'sh0; // @[Rotator.scala 38:8]
    end
    if (reset) begin // @[Rotator.scala 22:19]
      ao <= 18'sh0; // @[Rotator.scala 22:19]
    end else if ($signed(io_in_a) < 18'sh0) begin // @[Rotator.scala 28:23]
      ao <= _ao_T_2; // @[Rotator.scala 31:8]
    end else if ($signed(io_in_a) >= 18'sh0) begin // @[Rotator.scala 32:32]
      ao <= _ao_T_5; // @[Rotator.scala 35:8]
    end else begin
      ao <= 18'sh0; // @[Rotator.scala 39:8]
    end
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
  xo = _RAND_0[17:0];
  _RAND_1 = {1{`RANDOM}};
  yo = _RAND_1[17:0];
  _RAND_2 = {1{`RANDOM}};
  ao = _RAND_2[17:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Rotator_13(
  input         clock,
  input         reset,
  input  [17:0] io_in_x,
  input  [17:0] io_in_y,
  input  [17:0] io_in_a,
  output [17:0] io_out_x,
  output [17:0] io_out_y,
  output [17:0] io_out_a
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg [17:0] xo; // @[Rotator.scala 20:19]
  reg [17:0] yo; // @[Rotator.scala 21:19]
  reg [17:0] ao; // @[Rotator.scala 22:19]
  wire [4:0] _GEN_6 = io_in_y[17:13]; // @[Rotator.scala 29:30]
  wire [17:0] _xo_T = {{13{_GEN_6[4]}},_GEN_6}; // @[Rotator.scala 29:30]
  wire [17:0] _xo_T_3 = $signed(io_in_x) + $signed(_xo_T); // @[Rotator.scala 29:19]
  wire [4:0] _GEN_7 = io_in_x[17:13]; // @[Rotator.scala 30:30]
  wire [17:0] _yo_T = {{13{_GEN_7[4]}},_GEN_7}; // @[Rotator.scala 30:30]
  wire [17:0] _yo_T_3 = $signed(io_in_y) - $signed(_yo_T); // @[Rotator.scala 30:19]
  wire [17:0] _ao_T_2 = $signed(io_in_a) + 18'sha; // @[Rotator.scala 31:19]
  wire [17:0] _xo_T_7 = $signed(io_in_x) - $signed(_xo_T); // @[Rotator.scala 33:19]
  wire [17:0] _yo_T_7 = $signed(io_in_y) + $signed(_yo_T); // @[Rotator.scala 34:19]
  wire [17:0] _ao_T_5 = $signed(io_in_a) - 18'sha; // @[Rotator.scala 35:19]
  assign io_out_x = xo; // @[Rotator.scala 24:12]
  assign io_out_y = yo; // @[Rotator.scala 25:12]
  assign io_out_a = ao; // @[Rotator.scala 26:12]
  always @(posedge clock) begin
    if (reset) begin // @[Rotator.scala 20:19]
      xo <= 18'sh0; // @[Rotator.scala 20:19]
    end else if ($signed(io_in_a) < 18'sh0) begin // @[Rotator.scala 28:23]
      xo <= _xo_T_3; // @[Rotator.scala 29:8]
    end else if ($signed(io_in_a) >= 18'sh0) begin // @[Rotator.scala 32:32]
      xo <= _xo_T_7; // @[Rotator.scala 33:8]
    end else begin
      xo <= 18'sh0; // @[Rotator.scala 37:8]
    end
    if (reset) begin // @[Rotator.scala 21:19]
      yo <= 18'sh0; // @[Rotator.scala 21:19]
    end else if ($signed(io_in_a) < 18'sh0) begin // @[Rotator.scala 28:23]
      yo <= _yo_T_3; // @[Rotator.scala 30:8]
    end else if ($signed(io_in_a) >= 18'sh0) begin // @[Rotator.scala 32:32]
      yo <= _yo_T_7; // @[Rotator.scala 34:8]
    end else begin
      yo <= 18'sh0; // @[Rotator.scala 38:8]
    end
    if (reset) begin // @[Rotator.scala 22:19]
      ao <= 18'sh0; // @[Rotator.scala 22:19]
    end else if ($signed(io_in_a) < 18'sh0) begin // @[Rotator.scala 28:23]
      ao <= _ao_T_2; // @[Rotator.scala 31:8]
    end else if ($signed(io_in_a) >= 18'sh0) begin // @[Rotator.scala 32:32]
      ao <= _ao_T_5; // @[Rotator.scala 35:8]
    end else begin
      ao <= 18'sh0; // @[Rotator.scala 39:8]
    end
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
  xo = _RAND_0[17:0];
  _RAND_1 = {1{`RANDOM}};
  yo = _RAND_1[17:0];
  _RAND_2 = {1{`RANDOM}};
  ao = _RAND_2[17:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Rotator_14(
  input         clock,
  input         reset,
  input  [17:0] io_in_x,
  input  [17:0] io_in_y,
  input  [17:0] io_in_a,
  output [17:0] io_out_x,
  output [17:0] io_out_y,
  output [17:0] io_out_a
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg [17:0] xo; // @[Rotator.scala 20:19]
  reg [17:0] yo; // @[Rotator.scala 21:19]
  reg [17:0] ao; // @[Rotator.scala 22:19]
  wire [3:0] _GEN_6 = io_in_y[17:14]; // @[Rotator.scala 29:30]
  wire [17:0] _xo_T = {{14{_GEN_6[3]}},_GEN_6}; // @[Rotator.scala 29:30]
  wire [17:0] _xo_T_3 = $signed(io_in_x) + $signed(_xo_T); // @[Rotator.scala 29:19]
  wire [3:0] _GEN_7 = io_in_x[17:14]; // @[Rotator.scala 30:30]
  wire [17:0] _yo_T = {{14{_GEN_7[3]}},_GEN_7}; // @[Rotator.scala 30:30]
  wire [17:0] _yo_T_3 = $signed(io_in_y) - $signed(_yo_T); // @[Rotator.scala 30:19]
  wire [17:0] _ao_T_2 = $signed(io_in_a) + 18'sh5; // @[Rotator.scala 31:19]
  wire [17:0] _xo_T_7 = $signed(io_in_x) - $signed(_xo_T); // @[Rotator.scala 33:19]
  wire [17:0] _yo_T_7 = $signed(io_in_y) + $signed(_yo_T); // @[Rotator.scala 34:19]
  wire [17:0] _ao_T_5 = $signed(io_in_a) - 18'sh5; // @[Rotator.scala 35:19]
  assign io_out_x = xo; // @[Rotator.scala 24:12]
  assign io_out_y = yo; // @[Rotator.scala 25:12]
  assign io_out_a = ao; // @[Rotator.scala 26:12]
  always @(posedge clock) begin
    if (reset) begin // @[Rotator.scala 20:19]
      xo <= 18'sh0; // @[Rotator.scala 20:19]
    end else if ($signed(io_in_a) < 18'sh0) begin // @[Rotator.scala 28:23]
      xo <= _xo_T_3; // @[Rotator.scala 29:8]
    end else if ($signed(io_in_a) >= 18'sh0) begin // @[Rotator.scala 32:32]
      xo <= _xo_T_7; // @[Rotator.scala 33:8]
    end else begin
      xo <= 18'sh0; // @[Rotator.scala 37:8]
    end
    if (reset) begin // @[Rotator.scala 21:19]
      yo <= 18'sh0; // @[Rotator.scala 21:19]
    end else if ($signed(io_in_a) < 18'sh0) begin // @[Rotator.scala 28:23]
      yo <= _yo_T_3; // @[Rotator.scala 30:8]
    end else if ($signed(io_in_a) >= 18'sh0) begin // @[Rotator.scala 32:32]
      yo <= _yo_T_7; // @[Rotator.scala 34:8]
    end else begin
      yo <= 18'sh0; // @[Rotator.scala 38:8]
    end
    if (reset) begin // @[Rotator.scala 22:19]
      ao <= 18'sh0; // @[Rotator.scala 22:19]
    end else if ($signed(io_in_a) < 18'sh0) begin // @[Rotator.scala 28:23]
      ao <= _ao_T_2; // @[Rotator.scala 31:8]
    end else if ($signed(io_in_a) >= 18'sh0) begin // @[Rotator.scala 32:32]
      ao <= _ao_T_5; // @[Rotator.scala 35:8]
    end else begin
      ao <= 18'sh0; // @[Rotator.scala 39:8]
    end
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
  xo = _RAND_0[17:0];
  _RAND_1 = {1{`RANDOM}};
  yo = _RAND_1[17:0];
  _RAND_2 = {1{`RANDOM}};
  ao = _RAND_2[17:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Rotator_15(
  input         clock,
  input         reset,
  input  [17:0] io_in_x,
  input  [17:0] io_in_y,
  input  [17:0] io_in_a,
  output [17:0] io_out_x,
  output [17:0] io_out_y
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  reg [17:0] xo; // @[Rotator.scala 20:19]
  reg [17:0] yo; // @[Rotator.scala 21:19]
  wire [2:0] _GEN_6 = io_in_y[17:15]; // @[Rotator.scala 29:30]
  wire [17:0] _xo_T = {{15{_GEN_6[2]}},_GEN_6}; // @[Rotator.scala 29:30]
  wire [17:0] _xo_T_3 = $signed(io_in_x) + $signed(_xo_T); // @[Rotator.scala 29:19]
  wire [2:0] _GEN_7 = io_in_x[17:15]; // @[Rotator.scala 30:30]
  wire [17:0] _yo_T = {{15{_GEN_7[2]}},_GEN_7}; // @[Rotator.scala 30:30]
  wire [17:0] _yo_T_3 = $signed(io_in_y) - $signed(_yo_T); // @[Rotator.scala 30:19]
  wire [17:0] _xo_T_7 = $signed(io_in_x) - $signed(_xo_T); // @[Rotator.scala 33:19]
  wire [17:0] _yo_T_7 = $signed(io_in_y) + $signed(_yo_T); // @[Rotator.scala 34:19]
  assign io_out_x = xo; // @[Rotator.scala 24:12]
  assign io_out_y = yo; // @[Rotator.scala 25:12]
  always @(posedge clock) begin
    if (reset) begin // @[Rotator.scala 20:19]
      xo <= 18'sh0; // @[Rotator.scala 20:19]
    end else if ($signed(io_in_a) < 18'sh0) begin // @[Rotator.scala 28:23]
      xo <= _xo_T_3; // @[Rotator.scala 29:8]
    end else if ($signed(io_in_a) >= 18'sh0) begin // @[Rotator.scala 32:32]
      xo <= _xo_T_7; // @[Rotator.scala 33:8]
    end else begin
      xo <= 18'sh0; // @[Rotator.scala 37:8]
    end
    if (reset) begin // @[Rotator.scala 21:19]
      yo <= 18'sh0; // @[Rotator.scala 21:19]
    end else if ($signed(io_in_a) < 18'sh0) begin // @[Rotator.scala 28:23]
      yo <= _yo_T_3; // @[Rotator.scala 30:8]
    end else if ($signed(io_in_a) >= 18'sh0) begin // @[Rotator.scala 32:32]
      yo <= _yo_T_7; // @[Rotator.scala 34:8]
    end else begin
      yo <= 18'sh0; // @[Rotator.scala 38:8]
    end
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
  xo = _RAND_0[17:0];
  _RAND_1 = {1{`RANDOM}};
  yo = _RAND_1[17:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module CordicComputer(
  input         clock,
  input         reset,
  input  [19:0] io_in_a,
  output [17:0] io_out_s,
  output [17:0] io_out_c
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  wire  rotator_0_clock; // @[CordicComputer.scala 81:25]
  wire  rotator_0_reset; // @[CordicComputer.scala 81:25]
  wire [17:0] rotator_0_io_in_x; // @[CordicComputer.scala 81:25]
  wire [17:0] rotator_0_io_in_y; // @[CordicComputer.scala 81:25]
  wire [17:0] rotator_0_io_in_a; // @[CordicComputer.scala 81:25]
  wire [17:0] rotator_0_io_out_x; // @[CordicComputer.scala 81:25]
  wire [17:0] rotator_0_io_out_y; // @[CordicComputer.scala 81:25]
  wire [17:0] rotator_0_io_out_a; // @[CordicComputer.scala 81:25]
  wire  rotator_clock; // @[CordicComputer.scala 91:25]
  wire  rotator_reset; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_io_in_x; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_io_in_y; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_io_in_a; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_io_out_x; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_io_out_y; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_io_out_a; // @[CordicComputer.scala 91:25]
  wire  rotator_1_clock; // @[CordicComputer.scala 91:25]
  wire  rotator_1_reset; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_1_io_in_x; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_1_io_in_y; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_1_io_in_a; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_1_io_out_x; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_1_io_out_y; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_1_io_out_a; // @[CordicComputer.scala 91:25]
  wire  rotator_2_clock; // @[CordicComputer.scala 91:25]
  wire  rotator_2_reset; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_2_io_in_x; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_2_io_in_y; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_2_io_in_a; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_2_io_out_x; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_2_io_out_y; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_2_io_out_a; // @[CordicComputer.scala 91:25]
  wire  rotator_3_clock; // @[CordicComputer.scala 91:25]
  wire  rotator_3_reset; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_3_io_in_x; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_3_io_in_y; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_3_io_in_a; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_3_io_out_x; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_3_io_out_y; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_3_io_out_a; // @[CordicComputer.scala 91:25]
  wire  rotator_4_clock; // @[CordicComputer.scala 91:25]
  wire  rotator_4_reset; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_4_io_in_x; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_4_io_in_y; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_4_io_in_a; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_4_io_out_x; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_4_io_out_y; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_4_io_out_a; // @[CordicComputer.scala 91:25]
  wire  rotator_5_clock; // @[CordicComputer.scala 91:25]
  wire  rotator_5_reset; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_5_io_in_x; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_5_io_in_y; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_5_io_in_a; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_5_io_out_x; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_5_io_out_y; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_5_io_out_a; // @[CordicComputer.scala 91:25]
  wire  rotator_6_clock; // @[CordicComputer.scala 91:25]
  wire  rotator_6_reset; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_6_io_in_x; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_6_io_in_y; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_6_io_in_a; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_6_io_out_x; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_6_io_out_y; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_6_io_out_a; // @[CordicComputer.scala 91:25]
  wire  rotator_7_clock; // @[CordicComputer.scala 91:25]
  wire  rotator_7_reset; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_7_io_in_x; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_7_io_in_y; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_7_io_in_a; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_7_io_out_x; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_7_io_out_y; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_7_io_out_a; // @[CordicComputer.scala 91:25]
  wire  rotator_8_clock; // @[CordicComputer.scala 91:25]
  wire  rotator_8_reset; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_8_io_in_x; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_8_io_in_y; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_8_io_in_a; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_8_io_out_x; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_8_io_out_y; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_8_io_out_a; // @[CordicComputer.scala 91:25]
  wire  rotator_9_clock; // @[CordicComputer.scala 91:25]
  wire  rotator_9_reset; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_9_io_in_x; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_9_io_in_y; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_9_io_in_a; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_9_io_out_x; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_9_io_out_y; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_9_io_out_a; // @[CordicComputer.scala 91:25]
  wire  rotator_10_clock; // @[CordicComputer.scala 91:25]
  wire  rotator_10_reset; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_10_io_in_x; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_10_io_in_y; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_10_io_in_a; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_10_io_out_x; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_10_io_out_y; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_10_io_out_a; // @[CordicComputer.scala 91:25]
  wire  rotator_11_clock; // @[CordicComputer.scala 91:25]
  wire  rotator_11_reset; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_11_io_in_x; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_11_io_in_y; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_11_io_in_a; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_11_io_out_x; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_11_io_out_y; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_11_io_out_a; // @[CordicComputer.scala 91:25]
  wire  rotator_12_clock; // @[CordicComputer.scala 91:25]
  wire  rotator_12_reset; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_12_io_in_x; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_12_io_in_y; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_12_io_in_a; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_12_io_out_x; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_12_io_out_y; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_12_io_out_a; // @[CordicComputer.scala 91:25]
  wire  rotator_13_clock; // @[CordicComputer.scala 91:25]
  wire  rotator_13_reset; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_13_io_in_x; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_13_io_in_y; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_13_io_in_a; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_13_io_out_x; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_13_io_out_y; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_13_io_out_a; // @[CordicComputer.scala 91:25]
  wire  rotator_14_clock; // @[CordicComputer.scala 91:25]
  wire  rotator_14_reset; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_14_io_in_x; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_14_io_in_y; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_14_io_in_a; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_14_io_out_x; // @[CordicComputer.scala 91:25]
  wire [17:0] rotator_14_io_out_y; // @[CordicComputer.scala 91:25]
  reg [17:0] x; // @[CordicComputer.scala 37:18]
  reg [17:0] y; // @[CordicComputer.scala 38:18]
  reg [17:0] a; // @[CordicComputer.scala 39:18]
  wire [19:0] _a_T_2 = $signed(io_in_a) - 20'sh20000; // @[CordicComputer.scala 50:18]
  wire [17:0] _x_T_8 = 18'sh0 - 18'sh9b74; // @[CordicComputer.scala 56:10]
  wire [19:0] _a_T_8 = $signed(io_in_a) - 20'sh40000; // @[CordicComputer.scala 58:18]
  wire [19:0] _a_T_14 = $signed(io_in_a) - 20'sh60000; // @[CordicComputer.scala 66:18]
  wire [19:0] _GEN_2 = io_in_a[18:16] == 3'h7 ? $signed(io_in_a) : $signed(20'sh0); // @[CordicComputer.scala 71:49 74:7 78:7]
  wire [17:0] _GEN_3 = io_in_a[18:16] == 3'h6 ? $signed(18'sh0) : $signed(18'sh9b74); // @[CordicComputer.scala 67:49 68:7]
  wire [17:0] _GEN_4 = io_in_a[18:16] == 3'h6 ? $signed(_x_T_8) : $signed(18'sh0); // @[CordicComputer.scala 67:49 69:7]
  wire [19:0] _GEN_5 = io_in_a[18:16] == 3'h6 ? $signed(_a_T_14) : $signed(_GEN_2); // @[CordicComputer.scala 67:49 70:7]
  wire [17:0] _GEN_6 = io_in_a[18:16] == 3'h5 ? $signed(18'sh0) : $signed(_GEN_3); // @[CordicComputer.scala 63:49 64:7]
  wire [17:0] _GEN_7 = io_in_a[18:16] == 3'h5 ? $signed(_x_T_8) : $signed(_GEN_4); // @[CordicComputer.scala 63:49 65:7]
  wire [19:0] _GEN_8 = io_in_a[18:16] == 3'h5 ? $signed(_a_T_14) : $signed(_GEN_5); // @[CordicComputer.scala 63:49 66:7]
  wire [17:0] _GEN_9 = io_in_a[18:16] == 3'h4 ? $signed(_x_T_8) : $signed(_GEN_6); // @[CordicComputer.scala 59:49 60:7]
  wire [17:0] _GEN_10 = io_in_a[18:16] == 3'h4 ? $signed(18'sh0) : $signed(_GEN_7); // @[CordicComputer.scala 59:49 61:7]
  wire [19:0] _GEN_11 = io_in_a[18:16] == 3'h4 ? $signed(_a_T_8) : $signed(_GEN_8); // @[CordicComputer.scala 59:49 62:7]
  wire [17:0] _GEN_12 = io_in_a[18:16] == 3'h3 ? $signed(_x_T_8) : $signed(_GEN_9); // @[CordicComputer.scala 55:49 56:7]
  wire [17:0] _GEN_13 = io_in_a[18:16] == 3'h3 ? $signed(18'sh0) : $signed(_GEN_10); // @[CordicComputer.scala 55:49 57:7]
  wire [19:0] _GEN_14 = io_in_a[18:16] == 3'h3 ? $signed(_a_T_8) : $signed(_GEN_11); // @[CordicComputer.scala 55:49 58:7]
  wire [19:0] _GEN_17 = io_in_a[18:16] == 3'h2 ? $signed(_a_T_2) : $signed(_GEN_14); // @[CordicComputer.scala 51:49 54:7]
  wire [19:0] _GEN_20 = io_in_a[18:16] == 3'h1 ? $signed(_a_T_2) : $signed(_GEN_17); // @[CordicComputer.scala 47:49 50:7]
  wire [19:0] _GEN_23 = io_in_a[18:16] == 3'h0 ? $signed(io_in_a) : $signed(_GEN_20); // @[CordicComputer.scala 41:43 46:7]
  wire [19:0] _GEN_24 = reset ? $signed(20'sh0) : $signed(_GEN_23); // @[CordicComputer.scala 39:{18,18}]
  Rotator rotator_0 ( // @[CordicComputer.scala 81:25]
    .clock(rotator_0_clock),
    .reset(rotator_0_reset),
    .io_in_x(rotator_0_io_in_x),
    .io_in_y(rotator_0_io_in_y),
    .io_in_a(rotator_0_io_in_a),
    .io_out_x(rotator_0_io_out_x),
    .io_out_y(rotator_0_io_out_y),
    .io_out_a(rotator_0_io_out_a)
  );
  Rotator_1 rotator ( // @[CordicComputer.scala 91:25]
    .clock(rotator_clock),
    .reset(rotator_reset),
    .io_in_x(rotator_io_in_x),
    .io_in_y(rotator_io_in_y),
    .io_in_a(rotator_io_in_a),
    .io_out_x(rotator_io_out_x),
    .io_out_y(rotator_io_out_y),
    .io_out_a(rotator_io_out_a)
  );
  Rotator_2 rotator_1 ( // @[CordicComputer.scala 91:25]
    .clock(rotator_1_clock),
    .reset(rotator_1_reset),
    .io_in_x(rotator_1_io_in_x),
    .io_in_y(rotator_1_io_in_y),
    .io_in_a(rotator_1_io_in_a),
    .io_out_x(rotator_1_io_out_x),
    .io_out_y(rotator_1_io_out_y),
    .io_out_a(rotator_1_io_out_a)
  );
  Rotator_3 rotator_2 ( // @[CordicComputer.scala 91:25]
    .clock(rotator_2_clock),
    .reset(rotator_2_reset),
    .io_in_x(rotator_2_io_in_x),
    .io_in_y(rotator_2_io_in_y),
    .io_in_a(rotator_2_io_in_a),
    .io_out_x(rotator_2_io_out_x),
    .io_out_y(rotator_2_io_out_y),
    .io_out_a(rotator_2_io_out_a)
  );
  Rotator_4 rotator_3 ( // @[CordicComputer.scala 91:25]
    .clock(rotator_3_clock),
    .reset(rotator_3_reset),
    .io_in_x(rotator_3_io_in_x),
    .io_in_y(rotator_3_io_in_y),
    .io_in_a(rotator_3_io_in_a),
    .io_out_x(rotator_3_io_out_x),
    .io_out_y(rotator_3_io_out_y),
    .io_out_a(rotator_3_io_out_a)
  );
  Rotator_5 rotator_4 ( // @[CordicComputer.scala 91:25]
    .clock(rotator_4_clock),
    .reset(rotator_4_reset),
    .io_in_x(rotator_4_io_in_x),
    .io_in_y(rotator_4_io_in_y),
    .io_in_a(rotator_4_io_in_a),
    .io_out_x(rotator_4_io_out_x),
    .io_out_y(rotator_4_io_out_y),
    .io_out_a(rotator_4_io_out_a)
  );
  Rotator_6 rotator_5 ( // @[CordicComputer.scala 91:25]
    .clock(rotator_5_clock),
    .reset(rotator_5_reset),
    .io_in_x(rotator_5_io_in_x),
    .io_in_y(rotator_5_io_in_y),
    .io_in_a(rotator_5_io_in_a),
    .io_out_x(rotator_5_io_out_x),
    .io_out_y(rotator_5_io_out_y),
    .io_out_a(rotator_5_io_out_a)
  );
  Rotator_7 rotator_6 ( // @[CordicComputer.scala 91:25]
    .clock(rotator_6_clock),
    .reset(rotator_6_reset),
    .io_in_x(rotator_6_io_in_x),
    .io_in_y(rotator_6_io_in_y),
    .io_in_a(rotator_6_io_in_a),
    .io_out_x(rotator_6_io_out_x),
    .io_out_y(rotator_6_io_out_y),
    .io_out_a(rotator_6_io_out_a)
  );
  Rotator_8 rotator_7 ( // @[CordicComputer.scala 91:25]
    .clock(rotator_7_clock),
    .reset(rotator_7_reset),
    .io_in_x(rotator_7_io_in_x),
    .io_in_y(rotator_7_io_in_y),
    .io_in_a(rotator_7_io_in_a),
    .io_out_x(rotator_7_io_out_x),
    .io_out_y(rotator_7_io_out_y),
    .io_out_a(rotator_7_io_out_a)
  );
  Rotator_9 rotator_8 ( // @[CordicComputer.scala 91:25]
    .clock(rotator_8_clock),
    .reset(rotator_8_reset),
    .io_in_x(rotator_8_io_in_x),
    .io_in_y(rotator_8_io_in_y),
    .io_in_a(rotator_8_io_in_a),
    .io_out_x(rotator_8_io_out_x),
    .io_out_y(rotator_8_io_out_y),
    .io_out_a(rotator_8_io_out_a)
  );
  Rotator_10 rotator_9 ( // @[CordicComputer.scala 91:25]
    .clock(rotator_9_clock),
    .reset(rotator_9_reset),
    .io_in_x(rotator_9_io_in_x),
    .io_in_y(rotator_9_io_in_y),
    .io_in_a(rotator_9_io_in_a),
    .io_out_x(rotator_9_io_out_x),
    .io_out_y(rotator_9_io_out_y),
    .io_out_a(rotator_9_io_out_a)
  );
  Rotator_11 rotator_10 ( // @[CordicComputer.scala 91:25]
    .clock(rotator_10_clock),
    .reset(rotator_10_reset),
    .io_in_x(rotator_10_io_in_x),
    .io_in_y(rotator_10_io_in_y),
    .io_in_a(rotator_10_io_in_a),
    .io_out_x(rotator_10_io_out_x),
    .io_out_y(rotator_10_io_out_y),
    .io_out_a(rotator_10_io_out_a)
  );
  Rotator_12 rotator_11 ( // @[CordicComputer.scala 91:25]
    .clock(rotator_11_clock),
    .reset(rotator_11_reset),
    .io_in_x(rotator_11_io_in_x),
    .io_in_y(rotator_11_io_in_y),
    .io_in_a(rotator_11_io_in_a),
    .io_out_x(rotator_11_io_out_x),
    .io_out_y(rotator_11_io_out_y),
    .io_out_a(rotator_11_io_out_a)
  );
  Rotator_13 rotator_12 ( // @[CordicComputer.scala 91:25]
    .clock(rotator_12_clock),
    .reset(rotator_12_reset),
    .io_in_x(rotator_12_io_in_x),
    .io_in_y(rotator_12_io_in_y),
    .io_in_a(rotator_12_io_in_a),
    .io_out_x(rotator_12_io_out_x),
    .io_out_y(rotator_12_io_out_y),
    .io_out_a(rotator_12_io_out_a)
  );
  Rotator_14 rotator_13 ( // @[CordicComputer.scala 91:25]
    .clock(rotator_13_clock),
    .reset(rotator_13_reset),
    .io_in_x(rotator_13_io_in_x),
    .io_in_y(rotator_13_io_in_y),
    .io_in_a(rotator_13_io_in_a),
    .io_out_x(rotator_13_io_out_x),
    .io_out_y(rotator_13_io_out_y),
    .io_out_a(rotator_13_io_out_a)
  );
  Rotator_15 rotator_14 ( // @[CordicComputer.scala 91:25]
    .clock(rotator_14_clock),
    .reset(rotator_14_reset),
    .io_in_x(rotator_14_io_in_x),
    .io_in_y(rotator_14_io_in_y),
    .io_in_a(rotator_14_io_in_a),
    .io_out_x(rotator_14_io_out_x),
    .io_out_y(rotator_14_io_out_y)
  );
  assign io_out_s = rotator_14_io_out_y; // @[CordicComputer.scala 34:16 96:11]
  assign io_out_c = rotator_14_io_out_x; // @[CordicComputer.scala 33:16 95:11]
  assign rotator_0_clock = clock;
  assign rotator_0_reset = reset;
  assign rotator_0_io_in_x = x; // @[CordicComputer.scala 82:21]
  assign rotator_0_io_in_y = y; // @[CordicComputer.scala 83:21]
  assign rotator_0_io_in_a = a; // @[CordicComputer.scala 84:21]
  assign rotator_clock = clock;
  assign rotator_reset = reset;
  assign rotator_io_in_x = rotator_0_io_out_x; // @[CordicComputer.scala 33:16 85:9]
  assign rotator_io_in_y = rotator_0_io_out_y; // @[CordicComputer.scala 34:16 86:9]
  assign rotator_io_in_a = rotator_0_io_out_a; // @[CordicComputer.scala 35:16 87:9]
  assign rotator_1_clock = clock;
  assign rotator_1_reset = reset;
  assign rotator_1_io_in_x = rotator_io_out_x; // @[CordicComputer.scala 33:16 95:11]
  assign rotator_1_io_in_y = rotator_io_out_y; // @[CordicComputer.scala 34:16 96:11]
  assign rotator_1_io_in_a = rotator_io_out_a; // @[CordicComputer.scala 35:16 97:11]
  assign rotator_2_clock = clock;
  assign rotator_2_reset = reset;
  assign rotator_2_io_in_x = rotator_1_io_out_x; // @[CordicComputer.scala 33:16 95:11]
  assign rotator_2_io_in_y = rotator_1_io_out_y; // @[CordicComputer.scala 34:16 96:11]
  assign rotator_2_io_in_a = rotator_1_io_out_a; // @[CordicComputer.scala 35:16 97:11]
  assign rotator_3_clock = clock;
  assign rotator_3_reset = reset;
  assign rotator_3_io_in_x = rotator_2_io_out_x; // @[CordicComputer.scala 33:16 95:11]
  assign rotator_3_io_in_y = rotator_2_io_out_y; // @[CordicComputer.scala 34:16 96:11]
  assign rotator_3_io_in_a = rotator_2_io_out_a; // @[CordicComputer.scala 35:16 97:11]
  assign rotator_4_clock = clock;
  assign rotator_4_reset = reset;
  assign rotator_4_io_in_x = rotator_3_io_out_x; // @[CordicComputer.scala 33:16 95:11]
  assign rotator_4_io_in_y = rotator_3_io_out_y; // @[CordicComputer.scala 34:16 96:11]
  assign rotator_4_io_in_a = rotator_3_io_out_a; // @[CordicComputer.scala 35:16 97:11]
  assign rotator_5_clock = clock;
  assign rotator_5_reset = reset;
  assign rotator_5_io_in_x = rotator_4_io_out_x; // @[CordicComputer.scala 33:16 95:11]
  assign rotator_5_io_in_y = rotator_4_io_out_y; // @[CordicComputer.scala 34:16 96:11]
  assign rotator_5_io_in_a = rotator_4_io_out_a; // @[CordicComputer.scala 35:16 97:11]
  assign rotator_6_clock = clock;
  assign rotator_6_reset = reset;
  assign rotator_6_io_in_x = rotator_5_io_out_x; // @[CordicComputer.scala 33:16 95:11]
  assign rotator_6_io_in_y = rotator_5_io_out_y; // @[CordicComputer.scala 34:16 96:11]
  assign rotator_6_io_in_a = rotator_5_io_out_a; // @[CordicComputer.scala 35:16 97:11]
  assign rotator_7_clock = clock;
  assign rotator_7_reset = reset;
  assign rotator_7_io_in_x = rotator_6_io_out_x; // @[CordicComputer.scala 33:16 95:11]
  assign rotator_7_io_in_y = rotator_6_io_out_y; // @[CordicComputer.scala 34:16 96:11]
  assign rotator_7_io_in_a = rotator_6_io_out_a; // @[CordicComputer.scala 35:16 97:11]
  assign rotator_8_clock = clock;
  assign rotator_8_reset = reset;
  assign rotator_8_io_in_x = rotator_7_io_out_x; // @[CordicComputer.scala 33:16 95:11]
  assign rotator_8_io_in_y = rotator_7_io_out_y; // @[CordicComputer.scala 34:16 96:11]
  assign rotator_8_io_in_a = rotator_7_io_out_a; // @[CordicComputer.scala 35:16 97:11]
  assign rotator_9_clock = clock;
  assign rotator_9_reset = reset;
  assign rotator_9_io_in_x = rotator_8_io_out_x; // @[CordicComputer.scala 33:16 95:11]
  assign rotator_9_io_in_y = rotator_8_io_out_y; // @[CordicComputer.scala 34:16 96:11]
  assign rotator_9_io_in_a = rotator_8_io_out_a; // @[CordicComputer.scala 35:16 97:11]
  assign rotator_10_clock = clock;
  assign rotator_10_reset = reset;
  assign rotator_10_io_in_x = rotator_9_io_out_x; // @[CordicComputer.scala 33:16 95:11]
  assign rotator_10_io_in_y = rotator_9_io_out_y; // @[CordicComputer.scala 34:16 96:11]
  assign rotator_10_io_in_a = rotator_9_io_out_a; // @[CordicComputer.scala 35:16 97:11]
  assign rotator_11_clock = clock;
  assign rotator_11_reset = reset;
  assign rotator_11_io_in_x = rotator_10_io_out_x; // @[CordicComputer.scala 33:16 95:11]
  assign rotator_11_io_in_y = rotator_10_io_out_y; // @[CordicComputer.scala 34:16 96:11]
  assign rotator_11_io_in_a = rotator_10_io_out_a; // @[CordicComputer.scala 35:16 97:11]
  assign rotator_12_clock = clock;
  assign rotator_12_reset = reset;
  assign rotator_12_io_in_x = rotator_11_io_out_x; // @[CordicComputer.scala 33:16 95:11]
  assign rotator_12_io_in_y = rotator_11_io_out_y; // @[CordicComputer.scala 34:16 96:11]
  assign rotator_12_io_in_a = rotator_11_io_out_a; // @[CordicComputer.scala 35:16 97:11]
  assign rotator_13_clock = clock;
  assign rotator_13_reset = reset;
  assign rotator_13_io_in_x = rotator_12_io_out_x; // @[CordicComputer.scala 33:16 95:11]
  assign rotator_13_io_in_y = rotator_12_io_out_y; // @[CordicComputer.scala 34:16 96:11]
  assign rotator_13_io_in_a = rotator_12_io_out_a; // @[CordicComputer.scala 35:16 97:11]
  assign rotator_14_clock = clock;
  assign rotator_14_reset = reset;
  assign rotator_14_io_in_x = rotator_13_io_out_x; // @[CordicComputer.scala 33:16 95:11]
  assign rotator_14_io_in_y = rotator_13_io_out_y; // @[CordicComputer.scala 34:16 96:11]
  assign rotator_14_io_in_a = rotator_13_io_out_a; // @[CordicComputer.scala 35:16 97:11]
  always @(posedge clock) begin
    if (reset) begin // @[CordicComputer.scala 37:18]
      x <= 18'sh9b74; // @[CordicComputer.scala 37:18]
    end else if (io_in_a[18:16] == 3'h0) begin // @[CordicComputer.scala 41:43]
      x <= 18'sh9b74; // @[CordicComputer.scala 44:7]
    end else if (io_in_a[18:16] == 3'h1) begin // @[CordicComputer.scala 47:49]
      x <= 18'sh0; // @[CordicComputer.scala 48:7]
    end else if (io_in_a[18:16] == 3'h2) begin // @[CordicComputer.scala 51:49]
      x <= 18'sh0; // @[CordicComputer.scala 52:7]
    end else begin
      x <= _GEN_12;
    end
    if (reset) begin // @[CordicComputer.scala 38:18]
      y <= 18'sh0; // @[CordicComputer.scala 38:18]
    end else if (io_in_a[18:16] == 3'h0) begin // @[CordicComputer.scala 41:43]
      y <= 18'sh0; // @[CordicComputer.scala 45:7]
    end else if (io_in_a[18:16] == 3'h1) begin // @[CordicComputer.scala 47:49]
      y <= 18'sh9b74; // @[CordicComputer.scala 49:7]
    end else if (io_in_a[18:16] == 3'h2) begin // @[CordicComputer.scala 51:49]
      y <= 18'sh9b74; // @[CordicComputer.scala 53:7]
    end else begin
      y <= _GEN_13;
    end
    a <= _GEN_24[17:0]; // @[CordicComputer.scala 39:{18,18}]
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
  x = _RAND_0[17:0];
  _RAND_1 = {1{`RANDOM}};
  y = _RAND_1[17:0];
  _RAND_2 = {1{`RANDOM}};
  a = _RAND_2[17:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
