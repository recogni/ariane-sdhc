module ODDR_shdc #(
    parameter DDR_CLK_EDGE="SAME_EDGE",
    parameter INIT=1'b0,
    parameter SRTYPE="SYNC"
)  (
    output logic Q,
    input logic C,
    input logic CE,
    input logic D1,
    input logic D2,
    input logic R,
    input logic S
);
    reg pos_flop;
    reg neg_flop;

    // FIXME - replace this with glitchless mux
    assign Q = C ? pos_flop : neg_flop;

    always_ff @(posedge C) begin
        if (CE == 1'b1) begin
            if (R == 1'b1) begin
                pos_flop <= 1'b0;
            end else if (S == 1'b1) begin
                pos_flop <= 1'b1;
            end else begin
                pos_flop <= D1;
            end
        end
    end

    if (DDR_CLK_EDGE == "SAME_EDGE") begin 
        always_ff @(posedge C) begin
            if (CE == 1'b1) begin
                if (R == 1'b1) begin
                    neg_flop <= 1'b0;
                end else if (S == 1'b1) begin
                    neg_flop <= 1'b1;
                end else begin
                    neg_flop <= D2;
                end
            end
        end
    end else begin
        $error("ODDR requires SAME_EDGE timing");
    end

endmodule
