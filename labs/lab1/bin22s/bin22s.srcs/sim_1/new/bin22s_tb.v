`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2024 05:45:22 PM
// Design Name: 
// Module Name: bin22s_tb
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


module bin22s_tb();

reg [3:0] x;
wire [3:0] y;

bin22s uut(x, y);

initial begin
    x = 4'b0001;    
    #10
$finish;
end

endmodule
