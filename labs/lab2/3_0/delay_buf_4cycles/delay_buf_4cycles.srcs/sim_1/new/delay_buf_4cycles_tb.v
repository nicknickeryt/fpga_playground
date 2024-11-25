`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2024 09:13:06 PM
// Design Name: 
// Module Name: delay_buf_4cycles_tb
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


module delay_buf_4cycles_tb();
    reg clk;
    reg D;
    wire Q;
    
    delay_buf_4cycles uut(clk, D, Q);
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        D = 0; #10
        
        D = 1; #10
        D = 0; #10
        D = 1; #10
        D = 1; #10
        
        D = 0;
        #100
    $finish;
    end 
    
endmodule
