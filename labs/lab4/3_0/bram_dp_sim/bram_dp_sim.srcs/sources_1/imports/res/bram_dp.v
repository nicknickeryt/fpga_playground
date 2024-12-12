`timescale 1ns / 1ps

module bram_dp(
   // Port A
   input clkA,
   input weA, // write ebable
   input [awidth-1 : 0] addrA,// address
   input [dwidth-1 : 0] dinA, // input data
   output reg [dwidth-1 : 0] doutA, // output data
   // Port B
   input clkB,
   input weB, // write ebable
   input [awidth-1 : 0] addrB,// address
   input [dwidth-1 : 0] dinB, // input data
   output reg [dwidth-1 : 0] doutB // output data
  );
   parameter awidth = 4; // address bus bit width
   parameter dwidth = 8; // data bus bit width

   reg [dwidth-1 : 0] ram [(2**awidth)-1 : 0];
   // port A
   always @(posedge clkA) begin
      if (weA)
         ram[addrA] <= dinA;
      doutA<= ram[addrA];
   end
  
   // port B
   always @(posedge clkB) begin
      if (weB)
         ram[addrB] <= dinB;
      doutB<= ram[addrB];
   end
  
					
endmodule
