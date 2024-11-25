`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2024 07:27:32 PM
// Design Name: 
// Module Name: counter_modulo_n_async_reset_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module counter_modulo_n_async_reset_tb();
    reg clk;
    reg reset;
    reg up;
    reg ce;
    wire [M-1:0] Q;
    
    parameter N = 4;
    localparam M = $clog2(N);
    
    counter_modulo_n_async_reset uut(clk, reset, up, ce, Q);
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        ce = 1;
        reset = 0;
        
        up = 1;
        #40;
        ce = 0;
        #40;
        ce = 1;
        #40;
        
        up = 0;
        #98
        
        reset = 1;
        #40
        
        $finish;
    end
    
     
endmodule
