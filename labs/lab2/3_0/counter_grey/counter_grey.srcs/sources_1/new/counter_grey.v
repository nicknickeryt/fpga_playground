`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2024 09:56:09 PM
// Design Name: 
// Module Name: counter_grey
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

// Gray counter 3 bit 0 -> 6
module counter_grey(
input clk,
output [2:0] Q
    );

parameter modulo = 6;

reg [2:0] qbin = 0;
 
always @(posedge clk) begin
//    if(qbin == modulo - 1) qbin <= 0; // ewentualne modulo
//    else
        qbin = qbin + 1;
end

assign Q = qbin ^ (qbin >> 1);      // Gray code = (binary) xor (binary right bitshift 1) 

endmodule
