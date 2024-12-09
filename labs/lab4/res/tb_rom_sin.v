`timescale 1ns / 1ps

module tb_rom_sin( );

  reg [6:0] addr;
  wire [7:0] data;
  
  rom_sin UUT (.addr(addr), .data(data));

initial begin
   addr=0;
   forever #10 addr= addr + 1;
end 
endmodule
