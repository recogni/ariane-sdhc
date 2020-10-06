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

module IDDR_p(
    input reset,
    input clock,
    input  wire [7:0] in_ddr,
    output reg [7:0] iddr_Q1,
    output reg [7:0] iddr_Q2
    );
          
  always @(posedge clock or posedge reset) begin
    if (reset) begin
      iddr_Q1 <= '0;
    end else begin
      iddr_Q1 <= in_ddr;
    end
  end

  always @(negedge clock or posedge reset) begin
    if (reset) begin
      iddr_Q2 <= '0;
    end else begin
      iddr_Q2 <= in_ddr;
    end
  end

endmodule
