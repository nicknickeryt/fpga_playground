`timescale 1ns / 1ps

module seg7(
    input [3:0] x,
    output a, b, c, d, e, f, g, com,
    output [3:0] leds);

assign leds = x;

assign com = 0;

assign a = ( (~x[2]) & (~x[0]) )  | x[1] | ( x[2] & x[0] ) | x[3];
assign b = (~x[2]) | ( (~x[1]) & (~x[0] ) ) | (x[1] & x[0]);
assign c = (~x[1]) | x[0] | x[2];
assign d = ( (~x[2]) & (~x[0]) ) | ( (~x[2]) & x[1]) | ( x[2] & (~x[1]) & x[0]) | ( x[1] & (~x[0]) ) | x[3];
assign e = (x[1] & (~x[0])) | ((~x[2] & ~x[0]));
assign f = ( (~x[1]) & ~(x[0]) ) | ( x[2] & (~x[1]) ) | ( x[2] & (~x[0]) ) | x[3];
assign g = ( (~x[2]) & x[1] ) | ( x[2] & (~x[1]) ) | x[3] | ( x[2] & (~x[0]) );

endmodule