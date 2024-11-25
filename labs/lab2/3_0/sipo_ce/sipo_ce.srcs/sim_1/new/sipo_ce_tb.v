`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2024 08:49:33 PM
// Design Name: 
// Module Name: sipo_ce_tb
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


module sipo_ce_tb();
    reg clk;
    reg ce;
    reg clear;
    reg D;            // serial input
    wire [3:0] QPAR;    // parallel output
    
    sipo_ce uut(clk, ce, clear, D, QPAR);
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        clear = 1;
        ce = 1;
        D = 1;
        
        #10
        clear = 0;
        D = 1; #10
        D = 0; #10
        D = 1; #10
        D = 1; #10
        ce = 0;
        
        #10
        clear = 1;
        
        #10
        clear = 0;
        
        D = 1; #10
        D = 0; #10
        D = 0; #10
        D = 1; #10
        ce = 0;
        
        #50
        ce = 1;
        clear = 1;
        #10
        clear = 0;
        
        D = 1; #10
        D = 0; #10
        D = 0; #10
        D = 1; #10
        ce = 0;
        
        #50
        
    $finish;
    end
     
endmodule
