`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2024 12:48:13 AM
// Design Name: 
// Module Name: very_good_sipo_tb
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


module very_good_sipo_tb();
    reg clk;
    reg din;
    wire [3:0] Q;
    
    very_good_sipo uut(clk, din, Q);
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        din = 1; #10
        din = 1; #10
        din = 0; #10
        din = 1; #10
        
        
        din = 0; #10
        din = 1; #10
        din = 0; #10
        din = 1; #10
        
        #10
        
    $finish;    
    end 
    
endmodule
