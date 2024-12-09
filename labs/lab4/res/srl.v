`timescale 1ns / 1ps
// Shift Register LUT
module srl(input clk,
   input we, // write ebable
   input [select_width-1 : 0] sel,// 
   input din, // input data
   output dout // output data
    );
    
   parameter select_width = 4;
   reg [(2**select_width)-1 : 0] Q = {2**select_width{1'b0}}; // shift register

  always @(posedge clk) begin
    if (we)
      Q<= {Q[2**select_width-2:0], din};
  end
  
  assign dout = Q[sel];
					
endmodule
