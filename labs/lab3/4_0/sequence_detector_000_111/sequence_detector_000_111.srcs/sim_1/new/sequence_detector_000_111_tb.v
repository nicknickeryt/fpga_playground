`timescale 1ns / 1ps

module sequence_detector_000_111_tb();
    reg clk;
    reg Din;
    wire [1:0] Q;
    
    sequence_detector_000_111 uut(clk, Din, Q);
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        Din = 0;
        #40
        Din = 1;
        #30
        Din = 0;
        #30;
    $finish;
    end
    
endmodule
