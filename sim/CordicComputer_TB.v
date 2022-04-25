`timescale 1ns/1ns
module CordicComputer_TB;
    reg  clk, rstn;
    wire rst = ~rstn;
    parameter W2 = 18;
    `define M_PI (3.14159265358979323846)
    `define DTOR (`M_PI / 180.0)
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

    function integer scaleDegree;
        input real deg;
        begin
            scaleDegree = ($pow(2, W2 - 2) / 45.0) * deg;
            $display("deg = %.1f, scaleDegree = %d, cos = %f, sin = %f\n", deg, scaleDegree, $cos(deg * `DTOR), $sin(deg * `DTOR));
        end
    endfunction

    reg [19:0] io_in_a;
    wire [17:0] io_out_s;
    wire [17:0] io_out_c;

    //driver
    integer i = 0;
    real sin, cos;
    initial begin
        #8;
        forever @(negedge clk) begin
            io_in_a = scaleDegree(1.0 * i);
            i = i + 1;
        end
    end

    always @(posedge clk) begin
        sin = io_out_s / $pow(2, 16);
        cos = io_out_c / $pow(2, 16);
    end

    //module instantiation
    CordicComputer uut (
      .clock            (clk),
      .reset            (rst),
      .io_in_a          (io_in_a),
      .io_out_s         (io_out_s),
      .io_out_c         (io_out_c)
     );
endmodule