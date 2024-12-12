`timescale 1ns / 1ps

module double_ram_dist(
   input clk,
   input we, // write ebable
   input [3 : 0] addr,// address
   input [15 : 0] din, // input data
   output [15 : 0] dout // output data
   );
   
   ram_dist ram0(clk, we, addr, din[15:8], dout[15:8]);
   ram_dist ram1(clk, we, addr, din[7:0], dout[7:0]);
   
endmodule
