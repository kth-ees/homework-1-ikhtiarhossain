module decoder (
  input logic [3:0] binary,
  output logic [15:0] one_hot
);

  demux_1to16 demux (
    .in (1'b1),
    .sel (binary),
    .y (one_hot)
  );

endmodule
