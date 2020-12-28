module divider (
    input input_clk,
    output output_clk
);

reg [31:0] counter;
reg _output_clk;

always @ (posedge input_clk) begin
    counter <= counter + 1;
    _output_clk <= counter[22];
end

assign output_clk = _output_clk;
    
endmodule