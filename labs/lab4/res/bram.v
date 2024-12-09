`timescale 1ns / 1ps

module bram(input clk,
   input we, // write ebable
   input [awidth-1 : 0] addr,// address
   input [dwidth-1 : 0] din, // input data
   output reg [dwidth-1 : 0] dout // output data
  );
   parameter awidth = 4; // address bus bit width
   parameter dwidth = 8; // data bus bit width

   reg [dwidth-1 : 0] ram [(2**awidth)-1 : 0];

   //wire [RAM_WIDTH-1:0] <output_data>;

   //<reg_or_wire> [RAM_ADDR_BITS-1:0] <read_address>, <write_address>;
   //<reg_or_wire> [RAM_WIDTH-1:0] <input_data>;

   always @(posedge clk) begin
      if (we)
         ram[addr] <= din;
      dout<= ram[addr];
   end
  
					
endmodule

