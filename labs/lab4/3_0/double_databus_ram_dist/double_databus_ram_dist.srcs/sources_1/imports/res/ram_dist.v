`timescale 1ns / 1ps

module ram_dist(input clk,
   input we, // write ebable
   input [awidth-1 : 0] addr,// address
   input [dwidth-1 : 0] din, // input data
   output [dwidth-1 : 0] dout // output data
  );
   parameter awidth = 4; // address bus bit width
   parameter dwidth = 8; // data bus bit width

   (* ram_style="distributed" *)
   reg [dwidth-1 : 0] ram [(2**awidth)-1 : 0];

   always @(posedge clk) begin
      if (we)
         ram[addr] <= din;
   end
   assign dout = ram[addr];
					
endmodule
