`timescale 1ns / 1ps

module fifo16Kb(
    input aclk,
    input sd_clk,
    input rst,
    input [31:0] axi_data_in,
    input [31:0] sd_data_in,
    output [31:0] sd_data_out,
    output [31:0] axi_data_out,
    input sd_rd_en,
    input axi_rd_en,
    input axi_wr_en,
    input sd_wr_en,
    output sd_full_o
    );

  CW_fifo_s2_sf #(
    .width ( 32  ),
    .depth ( 128 ),
    .pop_sync ( 2 ),
    .rst_mode ( 2 ) // Asynchronous reset for control only
  ) i_axi_fifo (
    .rst_n     ( ~rst        ),
    .clk_push  ( aclk        ),
    .clk_pop   ( sd_clk      ),
    .push_req_n( ~axi_wr_en  ),
    .pop_req_n ( ~sd_rd_en   ),
    .data_in   ( axi_data_in ),
    .data_out  ( sd_data_out ),
    .push_full ( ),
    .pop_empty ( )
  );

  CW_fifo_s2_sf #(
    .width ( 32  ),
    .depth ( 128 ),
    .pop_sync ( 2 ),
    .rst_mode ( 2 ) // Asynchronous reset for control only
  ) i_sd_fifo (
    .rst_n     ( ~rst         ),
    .clk_push  ( sd_clk       ),
    .clk_pop   ( aclk         ),
    .push_req_n( ~sd_wr_en    ),
    .pop_req_n ( ~axi_rd_en   ),
    .data_in   ( sd_data_in   ),
    .data_out  ( axi_data_out ),
    .push_full ( sd_full_o    ),
    .pop_empty ( )
  );
     
endmodule
