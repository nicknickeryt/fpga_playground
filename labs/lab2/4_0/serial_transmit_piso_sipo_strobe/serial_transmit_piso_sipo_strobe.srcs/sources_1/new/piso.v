`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2024 01:09:05 AM
// Design Name: 
// Module Name: piso
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


module piso(
    input clk,
    input load,
    input [3:0] D,   // parallel inpu
    output reg QSER = 0  // serial output
    );
    
    reg [3:0] Q = 0;
    
     always @(posedge clk) begin
        if(load) begin Q <= D; end
        else begin
             Q <= {Q[2:0], 1'b0};    
        end
        assign QSER = Q[3];  
     end
endmodule
