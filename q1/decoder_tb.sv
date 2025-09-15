module decoder_tb;

  // Testbench signals
  logic [3:0] binary;
  logic [15:0] one_hot;

  // Instantiate the decoder module
  decoder uut (
    .binary(binary),
    .one_hot(one_hot)
  );

  initial begin
    for (int i = 0; i < 10; i++) begin
      binary = $urandom_range(0, 15);
      #5;
      $display("binary=%b one_hot=%b", binary, one_hot);
    end
    $finish;
  end

endmodule
