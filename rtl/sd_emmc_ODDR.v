//////////////////////////////////////////////////////////////////////////////////
// Company: Optimal Dynamics LLC
// Engineer: Azamat Beksadaev, Baktiiar Kukanov 
// 
// Create Date: 10/02/2015 11:41:32 AM
// Design Name: 
// Module Name: data_serial
// Project Name: eMMC Host Controller
// Target Devices: Xilinx ZYNQ 7000
// Tool Versions: Vivado 2016.2
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

`define XILINX 1
// xilinx translate_off
`undef  XILINX
// xilinx translate_on

module ODDR_p(
  input reset,
  input clock,
  input [7:0] d1_wire,
  input [7:0] d2_wire,
  output [7:0] oq
  );

`ifdef XILINX
  parameter SR_TYPE = "ASYNC";
`else
  parameter SR_TYPE = "SYNC";
`endif

  ODDR_sdhc #(
  .DDR_CLK_EDGE ( "SAME_EDGE" ),           // "SAME_EDGE" or "OPPOSITE_EDGE"
  .INIT         ( 1'b0 ),                  // Initial value of    Q:1'b0 or 1'b1
  .SRTYPE       ( SR_TYPE )                 // Set/Reset type: "SYNC" or "ASYNC"
  ) ODDR_inst0 (
  .Q(oq[0]),                               // 1-bit DDR output
  .C(clock),                               // 1-bit clock input
  .CE(1'b1),                               // 1-bit clock enable input
  .D1(d1_wire[0]),                         // 1-bit data  input (positive edge)
  .D2(d2_wire[0]),                         // 1-bit data  input (negative edge)
  .R(reset),                               // 1-bit reset
  .S(1'b0)                                 // 1-bit set
  );
  
  ODDR_sdhc #(
  .DDR_CLK_EDGE ( "SAME_EDGE" ),           // "SAME_EDGE" or "OPPOSITE_EDGE"
  .INIT         ( 1'b0 ),                  // Initial value of    Q:1'b0 or 1'b1
  .SRTYPE       ( SR_TYPE )                 // Set/Reset type: "SYNC" or "ASYNC"
  ) ODDR_inst1 (
  .Q(oq[1]),                               // 1-bit DDR output
  .C(clock),                               // 1-bit clock input
  .CE(1'b1),                               // 1-bit clock enable input
  .D1(d1_wire[1]),                         // 1-bit data  input (positive edge)
  .D2(d2_wire[1]),                         // 1-bit data  input (negative edge)
  .R(reset),                               // 1-bit reset
  .S(1'b0)                                 // 1-bit set
  );

  ODDR_sdhc #(
  .DDR_CLK_EDGE ( "SAME_EDGE" ),           // "SAME_EDGE" or "OPPOSITE_EDGE"
  .INIT         ( 1'b0 ),                  // Initial value of    Q:1'b0 or 1'b1
  .SRTYPE       ( SR_TYPE )                 // Set/Reset type: "SYNC" or "ASYNC"
  ) ODDR_inst2 (
  .Q(oq[2]),                               // 1-bit DDR output
  .C(clock),                               // 1-bit clock input
  .CE(1'b1),                               // 1-bit clock enable input
  .D1(d1_wire[2]),                         // 1-bit data  input (positive edge)
  .D2(d2_wire[2]),                         // 1-bit data  input (negative edge)
  .R(reset),                               // 1-bit reset
  .S(1'b0)                                 // 1-bit set
  );

  ODDR_sdhc #(
  .DDR_CLK_EDGE ( "SAME_EDGE" ),           // "SAME_EDGE" or "OPPOSITE_EDGE"
  .INIT         ( 1'b0 ),                  // Initial value of    Q:1'b0 or 1'b1
  .SRTYPE       ( SR_TYPE )                 // Set/Reset type: "SYNC" or "ASYNC"
  ) ODDR_inst3 (
  .Q(oq[3]),                               // 1-bit DDR output
  .C(clock),                               // 1-bit clock input
  .CE(1'b1),                               // 1-bit clock enable input
  .D1(d1_wire[3]),                         // 1-bit data  input (positive edge)
  .D2(d2_wire[3]),                         // 1-bit data  input (negative edge)
  .R(reset),                               // 1-bit reset
  .S(1'b0)                                 // 1-bit set
  );

  ODDR_sdhc #(
  .DDR_CLK_EDGE ( "SAME_EDGE" ),           // "SAME_EDGE" or "OPPOSITE_EDGE"
  .INIT         ( 1'b0 ),                  // Initial value of    Q:1'b0 or 1'b1
  .SRTYPE       ( SR_TYPE )                 // Set/Reset type: "SYNC" or "ASYNC"
  ) ODDR_inst4 (
  .Q(oq[4]),                               // 1-bit DDR output
  .C(clock),                               // 1-bit clock input
  .CE(1'b1),                               // 1-bit clock enable input
  .D1(d1_wire[4]),                         // 1-bit data  input (positive edge)
  .D2(d2_wire[4]),                         // 1-bit data  input (negative edge)
  .R(reset),                               // 1-bit reset
  .S(1'b0)                                 // 1-bit set
  );

  ODDR_sdhc #(
  .DDR_CLK_EDGE ( "SAME_EDGE" ),           // "SAME_EDGE" or "OPPOSITE_EDGE"
  .INIT         ( 1'b0 ),                  // Initial value of    Q:1'b0 or 1'b1
  .SRTYPE       ( SR_TYPE )                 // Set/Reset type: "SYNC" or "ASYNC"
  ) ODDR_inst5 (
  .Q(oq[5]),                               // 1-bit DDR output
  .C(clock),                               // 1-bit clock input
  .CE(1'b1),                               // 1-bit clock enable input
  .D1(d1_wire[5]),                         // 1-bit data  input (positive edge)
  .D2(d2_wire[5]),                         // 1-bit data  input (negative edge)
  .R(reset),                               // 1-bit reset
  .S(1'b0)                                 // 1-bit set
  );

  ODDR_sdhc #(
  .DDR_CLK_EDGE ( "SAME_EDGE" ),           // "SAME_EDGE" or "OPPOSITE_EDGE"
  .INIT         ( 1'b0 ),                  // Initial value of    Q:1'b0 or 1'b1
  .SRTYPE       ( SR_TYPE )                 // Set/Reset type: "SYNC" or "ASYNC"
  ) ODDR_inst6 (
  .Q(oq[6]),                               // 1-bit DDR output
  .C(clock),                               // 1-bit clock input
  .CE(1'b1),                               // 1-bit clock enable input
  .D1(d1_wire[6]),                         // 1-bit data  input (positive edge)
  .D2(d2_wire[6]),                         // 1-bit data  input (negative edge)
  .R(reset),                               // 1-bit reset
  .S(1'b0)                                 // 1-bit set
  );

  ODDR_sdhc #(
  .DDR_CLK_EDGE ( "SAME_EDGE" ),           // "SAME_EDGE" or "OPPOSITE_EDGE"
  .INIT         ( 1'b0 ),                  // Initial value of    Q:1'b0 or 1'b1
  .SRTYPE       ( SR_TYPE )                 // Set/Reset type: "SYNC" or "ASYNC"
  ) ODDR_inst7 (
  .Q(oq[7]),                               // 1-bit DDR output
  .C(clock),                               // 1-bit clock input
  .CE(1'b1),                               // 1-bit clock enable input
  .D1(d1_wire[7]),                         // 1-bit data  input (positive edge)
  .D2(d2_wire[7]),                         // 1-bit data  input (negative edge)
  .R(reset),                               // 1-bit reset
  .S(1'b0)                                 // 1-bit set
  );

endmodule
