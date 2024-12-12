`timescale 1ns / 1ps

module quadro_addrbus_ram_dist(
   input clk,
   input we, // write enable
   input [15:0] addr, // address
   input [7:0] din, // input data
   output reg [7:0] dout // output data
   );

   wire [7:0] dout0, dout1, dout2, dout3;
   reg [1:0] addr_select;
   
   always @(*) begin
      addr_select = addr[15:14];
      case(addr_select)
         2'b00: dout = dout0;
         2'b01: dout = dout1;
         2'b10: dout = dout2;
         2'b11: dout = dout3;
      endcase
   end

   ram_dist ram0(clk, we, addr[13:0], din, dout0);
   ram_dist ram1(clk, we, addr[13:0], din, dout1);
   ram_dist ram2(clk, we, addr[13:0], din, dout2);
   ram_dist ram3(clk, we, addr[13:0], din, dout3);
   
endmodule