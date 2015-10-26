
module nios_system (
	clk_clk,
	leds_export,
	switches_export);	

	input		clk_clk;
	output	[7:0]	leds_export;
	input	[7:0]	switches_export;
endmodule
