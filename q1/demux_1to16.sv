module demux_1to16 (
    input logic in,
    input logic [3:0] sel,
    output logic [15:0] y
);

    always_comb begin
        y = '0; // initial outputs
        y[sel] = in;
    end

endmodule