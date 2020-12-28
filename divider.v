module divider 
#(
    parameter WIDTH=23,
    parameter MODULO=6000000
)

(
    input input_clk,
    output output_clk
);

reg [WIDTH-1:0] counter;
reg _output_clk;

initial begin
    _output_clk = 0;
    counter = 0;
end

always @ (posedge input_clk) begin
    if (counter < MODULO-1) begin
        counter <= counter + 1;
    end else begin
        _output_clk <= ~_output_clk;
        counter <= 0;
    end
end

assign output_clk = _output_clk;
    
endmodule