`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2024 09:50:02 PM
// Design Name: 
// Module Name: lock
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


module lock(
    input [2:0] x,
    input clk,
    output wire q
);
    
    reg [2:0] state = 0;
    
    
    wire [2:0] d_inputs;
    assign d_inputs[0] = (~state[1] & ~state[2] & ~x[2] & x[1] & ~x[0]) | (state[1] & ~state[0] & ~x[2] & x[1] & x[0]);
    assign d_inputs[1] = (state[0] & ~state[1] & ~x[2] & ~x[1] & x[0]) | (state[1] & ~state[0] & ~x[2] & x[1] & x[0]);
    assign d_inputs[2] = state[0] & state[1] & x[2] & x[1] & x[0];
    
    assign q = state[2];
    
    always @(posedge clk) begin
        state[0] <= d_inputs[0];
        state[1] <= d_inputs[1];
        state[2] <= d_inputs[2];
    end

endmodule
