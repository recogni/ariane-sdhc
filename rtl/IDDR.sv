module IDDR #(
    parameter DDR_CLK_EDGE="OPPOSITE_EDGE",
    parameter SRTYPE="SYNC"
)  (
    output logic Q1,
    output logic Q2,
    input logic C,
    input logic CE,
    input logic D,
    input logic R,
    input logic S
);
    reg pos_flop;
    reg neg_flop;

    always_ff @(posedge C) begin
        if (CE == 1'b1) begin
            if (R == 1'b1) begin
                pos_flop <= 1'b0;
            end else if (S == 1'b1) begin
                pos_flop <= 1'b1;
            end else begin
                pos_flop <= D;
            end
        end
    end

    if (DDR_CLK_EDGE == "OPPOSITE_EDGE") begin 
        always_ff @(negedge C) begin
            if (CE == 1'b1) begin
                if (R == 1'b1) begin
                    neg_flop <= 1'b0;
                end else if (S == 1'b1) begin
                    neg_flop <= 1'b1;
                end else begin
                    neg_flop <= D;
                end
            end
        end
    end else begin
        $error("IDDR requires OPPOSITE_EDGE timing");
    end

endmodule
