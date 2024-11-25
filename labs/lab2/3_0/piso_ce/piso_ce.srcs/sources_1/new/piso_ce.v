`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2024 07:53:08 PM
// Design Name: 
// Module Name: piso_ce
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


module piso_ce(
    input clk,
    input load,
    input ce,
    input [3:0] D,   // parallel inpu
    output reg QSER = 0  // serial output
//    Jankowy sposób bez rejestruj
//    output QSER = 0  // serial output
    );
    
    reg [3:0] Q = 0; //parallel input helper
    
    always @(posedge clk) begin
        if(ce)
            if(load) begin Q <= D; end
            else begin
                // Jankowy sposób jest prześliczny ale jestem na niego zbyt głupi albo leniwy
                // Q <= {Q[2:0], 1'b0};    // here we shift Q parallel input helper, ex. we have 1011, then we have 0101, to the last digit is lost, and everything is being shifted right
                
                // this method should also work but it's dirty and foolish lol
                Q[3] <= Q[2];
                Q[2] <= Q[1];
                Q[1] <= Q[0];
                Q[0] <= 1'b0;
                QSER <= Q[3];    // nakoniec my zdjes' perepisujem posljednjeje czisło
            end
        end
//        assign QSER = Q[3];   // Jankowy sposób
    
endmodule
