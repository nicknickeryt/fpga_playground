`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2024 09:39:18 PM
// Design Name: 
// Module Name: sequence_detector_101_tb
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


module sequence_detector_101_tb();
    reg clk;
    reg Din;
    wire Q;
    
    sequence_detector_101 uut(clk, Din, Q);
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        Din = 1;
        #10
        Din = 0;
        #10
        Din = 1;
        #10
        
        Din = 0;
        #10
        Din = 1;
        
        #10
        Din = 0;
        #100
        
    $finish;
    end
    
endmodule
