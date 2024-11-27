`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2024 01:46:25 AM
// Design Name: 
// Module Name: shift_register_multiply_subtract
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


module shift_register_multiply_subtract(
input clk,
input [3:0] D,
input load,
input multiply,
output reg [3:0] Q = 0,
output reg O = 0
    );
    
    always @(posedge clk) begin
        if(load) Q <= D;
        else begin
            if(multiply) begin
                Q = Q <<< 1;
                if( Q[3] != D[3] ) O <= 1;
            end
            else Q = Q >>> 1;
        end
    end
    
endmodule
