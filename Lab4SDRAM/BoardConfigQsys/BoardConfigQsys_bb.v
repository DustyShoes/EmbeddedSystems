
module BoardConfigQsys (
	clk_clk,
	pio_0_switches_external_connection_export,
	out_port_from_leds_export,
	inout_sdram_addr,
	inout_sdram_ba,
	inout_sdram_cas_n,
	inout_sdram_cke,
	inout_sdram_cs_n,
	inout_sdram_dq,
	inout_sdram_dqm,
	inout_sdram_ras_n,
	inout_sdram_we_n);	

	input		clk_clk;
	input	[7:0]	pio_0_switches_external_connection_export;
	output	[7:0]	out_port_from_leds_export;
	output	[12:0]	inout_sdram_addr;
	output	[1:0]	inout_sdram_ba;
	output		inout_sdram_cas_n;
	output		inout_sdram_cke;
	output		inout_sdram_cs_n;
	inout	[15:0]	inout_sdram_dq;
	output	[1:0]	inout_sdram_dqm;
	output		inout_sdram_ras_n;
	output		inout_sdram_we_n;
endmodule
