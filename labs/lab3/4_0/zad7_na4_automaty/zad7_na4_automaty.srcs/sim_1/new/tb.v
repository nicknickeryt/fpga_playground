`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2024 08:13:56 PM
// Design Name: 
// Module Name: tb
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


module tb();
    reg  clk;       // Wejście zegarowe
    reg reset;     // Sygnał resetu
    wire [6:0] q;
    
    auto ts(clk, reset, q);
    
    always begin 
        #10 clk = ~clk;
    end
    
    initial begin
        clk = 0;
        reset = 1;
        #15
        reset = 0;
        
        #200
        
        $finish;
   end
    
endmodule
