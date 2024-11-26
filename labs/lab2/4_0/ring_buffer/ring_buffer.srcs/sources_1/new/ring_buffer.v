`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2024 12:27:19 AM
// Design Name: 
// Module Name: ring_buffer
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


module ring_buffer(
    input clk,
    output reg [2:0] Q = 1
    );
    always @(posedge clk)
        Q <= { Q[1:0], Q[2] };
endmodule
