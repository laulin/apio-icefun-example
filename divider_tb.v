`timescale 100 ns / 10 ns


module divider_tb;


initial begin
    $dumpfile("divider_tb.vcd");
    $dumpvars(0, UUT);
end

reg input_clock;
wire output_clock;

divider #(4,3) UUT(.input_clk(input_clock), .output_clk(output_clock));


initial begin
    input_clock = 0;
end

always begin
    #1 input_clock = ~input_clock;
end

initial begin
    repeat(10) @(posedge input_clock);

    $finish;
end

endmodule