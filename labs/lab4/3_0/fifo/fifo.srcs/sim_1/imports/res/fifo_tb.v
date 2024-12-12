`timescale 1ns / 1ps

module fifo_tb;

  reg CLK;
  reg [15:0] DI;
  reg RDEN, RST, WREN;
  wire ALMOSTEMPTY, ALMOSTFULL, EMPTY, FULL, RDERR, WRERR;
  wire [15:0] DO;
  wire [9:0] RDCOUNT, WRCOUNT;


  fifo dut (
    .ALMOSTEMPTY(ALMOSTEMPTY),
    .ALMOSTFULL(ALMOSTFULL),
    .DO(DO),
    .EMPTY(EMPTY),
    .FULL(FULL),
    .RDCOUNT(RDCOUNT),
    .RDERR(RDERR),
    .WRCOUNT(WRCOUNT),
    .WRERR(WRERR),
    .CLK(CLK),
    .DI(DI),
    .RDEN(RDEN),
    .RST(RST),
    .WREN(WREN)
  );


  always #5 CLK = ~CLK;
  always #20 DI = DI+1;


  initial begin
    CLK = 0;  
    DI = 0;
    RST = 1;
    #100;
    RST = 0;
    #100;
    end
    
    initial begin
    RDEN = 0;
    #220;
    RDEN = 1;
    #100
    RDEN = 0;
    #50
    RDEN = 1;
    #200
    RDEN = 0;
    #10600;
    RDEN = 1;
    end
    initial begin
    WREN = 0;
        #120;
    WREN = 1;
    #100;
    WREN = 0;
    #200
    WREN = 1;
    #10600;
    WREN = 0;
    end


endmodule
