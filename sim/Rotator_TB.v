`timescale 1ns/1ns
module Rotator_TB;
    reg  clk, rstn;
    wire rst = ~rstn;

   //clock
    always begin
        clk = 0 ; #5 ;
        clk = 1 ; #5 ;
    end

   //reset
    initial begin
        rstn      = 1'b0 ;
        #8 ;      rstn      = 1'b1 ;
    end

    reg [15:0] io_in_x;
    reg [15:0] io_in_y;
    reg [15:0] io_in_a;
    wire [15:0] io_out_x;
    wire [15:0] io_out_y;
    wire [15:0] io_out_a;

    reg [15:0] test_out_x;
    reg [15:0] test_out_y;
    reg [15:0] test_out_a;

    //driver
    initial begin
        #55 ;
        repeat(30) @(negedge clk );
        io_in_a = 16'sd1;
        io_in_x = 16'shff;
        io_in_y = 16'shaa;
        repeat(30) @(negedge clk);
        io_in_a = -16'sd1;
        io_in_x = 16'shff;
        io_in_y = 16'shaa;
    end

    //module instantiation
    Rotator uut (
      .clock            (clk),
      .reset            (rst),
      .io_in_x          (io_in_x),
      .io_in_y          (io_in_y),
      .io_in_a          (io_in_a),
      .io_out_x         (io_out_x),
      .io_out_y         (io_out_y),
      .io_out_a         (io_out_a)
     );
endmodule