`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2024 01:07:23 AM
// Design Name: 
// Module Name: serial_transmit_piso_sipo_strobe_tb
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


module serial_transmit_piso_sipo_strobe_tb();

reg clk;
reg [3:0] D;
wire data;
wire [3:0] Q;
wire strobe;

serial_transmit_piso_sipo_strobe uut(clk, D, Q, data, strobe);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    D = 4'b0101;
    #80
    D = 4'b1011;
    #120
$finish;
end

endmodule
