`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2024 06:50:29 PM
// Design Name: 
// Module Name: counter_modulo_n_up_down_tb
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

module counter_modulo_n_up_down_tb();
    reg clk;
    reg reset;
    reg up;
    reg ce;
    
    parameter N = 63;
    localparam M = $clog2(N); 
    
    wire [M-1:0] Q;   
    
    
    counter_modulo_n_up_down uut(clk, reset, up, ce, Q);
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        reset = 0;
        ce = 1;
        up = 1;
        #570;
        ce = 0;
        #60;
        ce = 1;
        #80;
        up = 0;
        #670;
        reset = 1;
        #20;
    $finish;
end
    
endmodule
