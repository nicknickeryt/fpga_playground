`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2024 09:37:12 PM
// Design Name: 
// Module Name: sequence_detector_101
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


module sequence_detector_101(
    input clk,
    input Din,
    output reg Q = 0
    );
    
    reg [2:0] QH = 0;
    
    always @(posedge clk) begin
        QH = {QH[1:0], Din};
        if(QH == 3'b101) Q = ~Q;
    end
    
endmodule
