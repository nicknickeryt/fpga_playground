`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2024 09:32:10 PM
// Design Name: 
// Module Name: shifter_left_right_parallel
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


module shifter_left_right_parallel(
    input clk,
    input Left,
    input load,
    input [3:0] D,
    output reg [3:0] Q = 0
    );
    
    always @(posedge clk)
        if(load)
            Q <= D;
        else if(Left)
            Q <= { D[2:0], D[3] };
        else 
            Q <= { D[0],  D[3:1] }; 
    
endmodule
