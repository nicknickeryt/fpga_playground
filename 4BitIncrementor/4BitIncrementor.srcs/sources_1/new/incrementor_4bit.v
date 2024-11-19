`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2024 02:29:35 PM
// Design Name: 
// Module Name: incrementor_4bit
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


module incrementor_4bit(
    input [3:0] x,
    output [3:0] y
    );
    
    wire [4:0] a;
  
    assign a[0] = 1;
    
    half_adder halfAdder1 (a[0], x[0], y[0], a[1]);
    half_adder halfAdder2 (a[1], x[1], y[1], a[2]);
    half_adder halfAdder3 (a[2], x[2], y[2], a[3]);
    half_adder halfAdder4 (a[3], x[3], y[3], a[4]);
    
    
endmodule
