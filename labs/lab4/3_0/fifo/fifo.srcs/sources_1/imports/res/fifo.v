`timescale 1ns / 1ps

module fifo(
      output ALMOSTEMPTY, // 1-bit output almost empty
      output ALMOSTFULL,    // 1-bit output almost full
      output [15 : 0] DO,    // Output data, width defined
      output EMPTY,         // 1-bit output empty
      output FULL,          // 1-bit output full
      output [9:0] RDCOUNT, // Output read count, width determined by FIFO depth
      output RDERR,         // 1-bit output read error
      output [9:0] WRCOUNT, // Output write count, width determined by FIFO depth
      output WRERR,         // 1-bit output write error
      input CLK,            // 1-bit input clock
      input [15:0] DI,      // Input data
      input RDEN,           // 1-bit input read enable
      input RST,            // 1-bit input reset
      input WREN            // 1-bit input write enable
    );
    
    FIFO_SYNC_MACRO  #(
      .DEVICE("7SERIES"), // Target Device: "7SERIES" 
      .ALMOST_EMPTY_OFFSET(9'h004), // Sets the almost empty threshold
      .ALMOST_FULL_OFFSET(9'h004),  // Sets almost full threshold
      .DATA_WIDTH(16), // Valid values are 1-72 (37-72 only valid when FIFO_SIZE="36Kb")
      .DO_REG(0),     // Optional output register (0 or 1)
      .FIFO_SIZE ("18Kb")  // Target BRAM: "18Kb" or "36Kb" 
   ) FIFO_SYNC_MACRO_inst (
      .ALMOSTEMPTY(ALMOSTEMPTY), // 1-bit output almost empty
      .ALMOSTFULL(ALMOSTFULL),   // 1-bit output almost full
      .DO(DO),                   // Output data, width defined by DATA_WIDTH parameter
      .EMPTY(EMPTY),             // 1-bit output empty
      .FULL(FULL),               // 1-bit output full
      .RDCOUNT(RDCOUNT),         // Output read count, width determined by FIFO depth
      .RDERR(RDERR),             // 1-bit output read error
      .WRCOUNT(WRCOUNT),         // Output write count, width determined by FIFO depth
      .WRERR(WRERR),             // 1-bit output write error
      .CLK(CLK),                 // 1-bit input clock
      .DI(DI),                   // Input data, width defined by DATA_WIDTH parameter
      .RDEN(RDEN),               // 1-bit input read enable
      .RST(RST),                 // 1-bit input reset
      .WREN(WREN)                // 1-bit input write enable
    );

endmodule
