`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2024 09:02:52 PM
// Design Name: 
// Module Name: delay_buf_4cycles
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


module delay_buf_4cycles(
    input clk,
    input D,
    output Q
    );
    parameter delay = 4;                       // how many clock cycles should we delay?
    
    reg [delay-1:0] QSHIFT = 0;                 // helper parallel-ish register that's gonna be shifted
    
    always @(posedge clk)
        QSHIFT <= {QSHIFT[delay-2:0], D};       // now we shift QSHIFT with D as in PISO or sth
                                                // every clk D is becoming closer and closer to last Q, Q[delay-1] 
    assign Q = QSHIFT[delay-1];
    
endmodule
