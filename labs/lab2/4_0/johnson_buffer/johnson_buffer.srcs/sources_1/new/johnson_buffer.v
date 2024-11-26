`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2024 12:39:56 AM
// Design Name: 
// Module Name: johnson_buffer
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


module johnson_buffer(
    input clk,
    output reg [3:0] Q = 0
    );
    
    always @(posedge clk)
        if(!Q[3]) Q <= { Q[2:0], 1'b1 };
        else Q <= Q << 1;
endmodule
