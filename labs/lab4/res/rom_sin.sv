`timescale 1ns / 1ps

module rom_sin(input clk,
   input [6 : 0] addr,
   output reg [7: 0] data
    );

function real sin (input real x);
  if (x > 0.25) // cos is easier to calculate
     sin= cos( 1.570796327 - x); // sin(x) = cos(90 - x)
  else begin // Taylor
    real x2= x*x; 
    sin= x * (1.0 + x2 * ( -1.0 / 6.0 + x2 * ( 1.0 / 120.0 - x2 / 5040.0) ) ); // Taylor series skiped x^9 / 9!
    end 
endfunction
       

function real cos (input real x);
    if( x <= 0.25) begin // Taylor
      real x2= x*x;
      cos= 1.0 + x2 * (-0.5 + x2 * (1.0/24.0 + x2 * (-1.0/720.0 + x2/40320.0) ) ); // skipped -x^10 / 10!
      end
    else begin // use formula cos(4x) = f( cos(x) )
      real cosx4= cos(0.25 * x); // cos(4x) = 2*cos^2(2x)-1 = 8*cos^4(x) - 8*cos^2(x) + 1
      cosx4= cosx4 * cosx4;
      cos= 8.0 * (cosx4 * (cosx4 - 1.0) ) + 1.0; // 
    end
endfunction
parameter Pi= 3.141592653589;

reg [7:0] rom[127:0];

integer i, sin_i;
initial begin
  rom[0]= 128; // 0 deg
  rom[32]= 255; // 90 deg
  rom[64]= 128; // 180 deg
  rom[96]= 1; // 270 deg
  
  for(i=1; i<32; i= i+1) begin 
    sin_i= 0.5 + 127.0 * sin(i * Pi / 64.0); // angle 0 to 90 deg
    rom[i]= 128 + sin_i; // 0 to 90 deg
    rom[64 - i]= 128 + sin_i; // 180 downto 90 deg
    rom[64 + i]= 128 - sin_i; // 180 to 270 deg
    rom[128-i]= 128 - sin_i; // 270 to 360 deg
  end
end

assign data= rom[addr];    
           
endmodule

