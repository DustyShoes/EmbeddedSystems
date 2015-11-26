	component BoardConfigQsys is
		port (
			clk_clk                                   : in    std_logic                     := 'X';             -- clk
			pio_0_switches_external_connection_export : in    std_logic_vector(7 downto 0)  := (others => 'X'); -- export
			out_port_from_leds_export                 : out   std_logic_vector(7 downto 0);                     -- export
			inout_sdram_addr                          : out   std_logic_vector(12 downto 0);                    -- addr
			inout_sdram_ba                            : out   std_logic_vector(1 downto 0);                     -- ba
			inout_sdram_cas_n                         : out   std_logic;                                        -- cas_n
			inout_sdram_cke                           : out   std_logic;                                        -- cke
			inout_sdram_cs_n                          : out   std_logic;                                        -- cs_n
			inout_sdram_dq                            : inout std_logic_vector(15 downto 0) := (others => 'X'); -- dq
			inout_sdram_dqm                           : out   std_logic_vector(1 downto 0);                     -- dqm
			inout_sdram_ras_n                         : out   std_logic;                                        -- ras_n
			inout_sdram_we_n                          : out   std_logic                                         -- we_n
		);
	end component BoardConfigQsys;

	u0 : component BoardConfigQsys
		port map (
			clk_clk                                   => CONNECTED_TO_clk_clk,                                   --                                clk.clk
			pio_0_switches_external_connection_export => CONNECTED_TO_pio_0_switches_external_connection_export, -- pio_0_switches_external_connection.export
			out_port_from_leds_export                 => CONNECTED_TO_out_port_from_leds_export,                 --                 out_port_from_leds.export
			inout_sdram_addr                          => CONNECTED_TO_inout_sdram_addr,                          --                        inout_sdram.addr
			inout_sdram_ba                            => CONNECTED_TO_inout_sdram_ba,                            --                                   .ba
			inout_sdram_cas_n                         => CONNECTED_TO_inout_sdram_cas_n,                         --                                   .cas_n
			inout_sdram_cke                           => CONNECTED_TO_inout_sdram_cke,                           --                                   .cke
			inout_sdram_cs_n                          => CONNECTED_TO_inout_sdram_cs_n,                          --                                   .cs_n
			inout_sdram_dq                            => CONNECTED_TO_inout_sdram_dq,                            --                                   .dq
			inout_sdram_dqm                           => CONNECTED_TO_inout_sdram_dqm,                           --                                   .dqm
			inout_sdram_ras_n                         => CONNECTED_TO_inout_sdram_ras_n,                         --                                   .ras_n
			inout_sdram_we_n                          => CONNECTED_TO_inout_sdram_we_n                           --                                   .we_n
		);

