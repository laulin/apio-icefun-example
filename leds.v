module leds(output wire LED1,
            output wire LCOL1,
            input CLK_12MHZ);

wire input_clk;
wire output_clk;
assign LCOL1 = 1'b0;

assign input_clk = CLK_12MHZ;
assign LED1 = output_clk;

divider my_divider(.input_clk(input_clk), .output_clk(output_clk));

endmodule
