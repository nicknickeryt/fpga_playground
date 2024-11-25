`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2024 07:44:06 PM
// Design Name: 
// Module Name: counter_modulo_n_simple
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

module counter_modulo_n_simple_tb();
    reg clk;
    reg up;
    wire [2:0] Q;
    
    counter_modulo_n_simple uut(clk, up, Q);
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        up = 1;
        #100;
        up = 0;
        #100
        $finish;
    end
endmodule