`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2024 12:40:43 AM
// Design Name: 
// Module Name: johnson_buffer_tb
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


module johnson_buffer_tb();
    reg clk;
    wire [3:0] Q;
    
    johnson_buffer uut(clk, Q);
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
   
    initial begin
        #120 
    $finish;
    end 
    
endmodule
