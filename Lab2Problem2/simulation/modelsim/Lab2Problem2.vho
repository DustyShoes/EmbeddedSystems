-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Web Edition"

-- DATE "09/21/2015 11:35:45"

-- 
-- Device: Altera 5CSEMA4U23C6 Package UFBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Lab2Problem2 IS
    PORT (
	\Select\ : IN std_logic_vector(2 DOWNTO 0);
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	C : IN std_logic;
	RegOut : BUFFER std_logic_vector(3 DOWNTO 0);
	Carryout : BUFFER std_logic;
	clock : IN std_logic;
	reset : IN std_logic
	);
END Lab2Problem2;

-- Design Ports Information
-- RegOut[0]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut[1]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut[2]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut[3]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Carryout	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Select[2]	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Select[0]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Select[1]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab2Problem2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \ww_Select\ : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_C : std_logic;
SIGNAL ww_RegOut : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Carryout : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \Select[1]~input_o\ : std_logic;
SIGNAL \Select[0]~input_o\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \Select[2]~input_o\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \WideAnd1~combout\ : std_logic;
SIGNAL \WideOr1~1_combout\ : std_logic;
SIGNAL \fulladderAB|add1|u5~0_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \WideOr2~1_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \WideOr3~0_combout\ : std_logic;
SIGNAL \WideOr3~1_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_C~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Select[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Select[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Select[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_WideOr3~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr2~0_combout\ : std_logic;
SIGNAL \fulladderAB|add1|ALT_INV_u5~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr1~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideAnd1~combout\ : std_logic;

BEGIN

\ww_Select\ <= \Select\;
ww_A <= A;
ww_B <= B;
ww_C <= C;
RegOut <= ww_RegOut;
Carryout <= ww_Carryout;
ww_clock <= clock;
ww_reset <= reset;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_C~input_o\ <= NOT \C~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_Select[1]~input_o\ <= NOT \Select[1]~input_o\;
\ALT_INV_Select[0]~input_o\ <= NOT \Select[0]~input_o\;
\ALT_INV_Select[2]~input_o\ <= NOT \Select[2]~input_o\;
\ALT_INV_WideOr3~0_combout\ <= NOT \WideOr3~0_combout\;
\ALT_INV_WideOr2~0_combout\ <= NOT \WideOr2~0_combout\;
\fulladderAB|add1|ALT_INV_u5~0_combout\ <= NOT \fulladderAB|add1|u5~0_combout\;
\ALT_INV_WideOr1~0_combout\ <= NOT \WideOr1~0_combout\;
\ALT_INV_WideAnd1~combout\ <= NOT \WideAnd1~combout\;

-- Location: IOOBUF_X65_Y0_N36
\RegOut[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr0~0_combout\,
	devoe => ww_devoe,
	o => ww_RegOut(0));

-- Location: IOOBUF_X68_Y10_N96
\RegOut[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr1~1_combout\,
	devoe => ww_devoe,
	o => ww_RegOut(1));

-- Location: IOOBUF_X68_Y13_N39
\RegOut[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr2~1_combout\,
	devoe => ww_devoe,
	o => ww_RegOut(2));

-- Location: IOOBUF_X66_Y0_N53
\RegOut[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr3~1_combout\,
	devoe => ww_devoe,
	o => ww_RegOut(3));

-- Location: IOOBUF_X68_Y13_N22
\Carryout~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comb~0_combout\,
	devoe => ww_devoe,
	o => ww_Carryout);

-- Location: IOIBUF_X68_Y11_N4
\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X68_Y10_N44
\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X68_Y11_N55
\Select[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_Select\(1),
	o => \Select[1]~input_o\);

-- Location: IOIBUF_X68_Y11_N21
\Select[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_Select\(0),
	o => \Select[0]~input_o\);

-- Location: IOIBUF_X68_Y13_N55
\C~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => \C~input_o\);

-- Location: IOIBUF_X66_Y0_N35
\Select[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_Select\(2),
	o => \Select[2]~input_o\);

-- Location: LABCELL_X67_Y11_N30
\WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = ( \C~input_o\ & ( \Select[2]~input_o\ & ( (!\Select[0]~input_o\) # (!\A[0]~input_o\ $ (!\B[0]~input_o\)) ) ) ) # ( !\C~input_o\ & ( \Select[2]~input_o\ & ( (!\Select[1]~input_o\ & (!\A[0]~input_o\ $ ((!\B[0]~input_o\)))) # 
-- (\Select[1]~input_o\ & ((!\Select[0]~input_o\) # (!\A[0]~input_o\ $ (!\B[0]~input_o\)))) ) ) ) # ( \C~input_o\ & ( !\Select[2]~input_o\ & ( (!\B[0]~input_o\ & (!\A[0]~input_o\ $ (((\Select[0]~input_o\) # (\Select[1]~input_o\))))) # (\B[0]~input_o\ & 
-- ((!\A[0]~input_o\) # ((!\Select[0]~input_o\)))) ) ) ) # ( !\C~input_o\ & ( !\Select[2]~input_o\ & ( (!\B[0]~input_o\ & (!\A[0]~input_o\ $ (((\Select[0]~input_o\) # (\Select[1]~input_o\))))) # (\B[0]~input_o\ & ((!\A[0]~input_o\) # 
-- ((!\Select[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011011101100110101101110110011001101111011001101111111101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_Select[1]~input_o\,
	datad => \ALT_INV_Select[0]~input_o\,
	datae => \ALT_INV_C~input_o\,
	dataf => \ALT_INV_Select[2]~input_o\,
	combout => \WideOr0~0_combout\);

-- Location: IOIBUF_X68_Y11_N38
\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X68_Y12_N55
\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LABCELL_X67_Y11_N42
\WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = ( \B[1]~input_o\ & ( \Select[2]~input_o\ & ( (\A[1]~input_o\ & ((!\Select[1]~input_o\) # (\Select[0]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( \Select[2]~input_o\ & ( (!\A[1]~input_o\ & ((!\Select[1]~input_o\) # 
-- (\Select[0]~input_o\))) ) ) ) # ( \B[1]~input_o\ & ( !\Select[2]~input_o\ & ( (\Select[0]~input_o\ & \A[1]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\Select[2]~input_o\ & ( !\A[1]~input_o\ $ (((!\Select[1]~input_o\ & !\Select[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011110001000000000000011001110111011000000000000000010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Select[1]~input_o\,
	datab => \ALT_INV_Select[0]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_Select[2]~input_o\,
	combout => \WideOr1~0_combout\);

-- Location: LABCELL_X67_Y11_N39
WideAnd1 : cyclonev_lcell_comb
-- Equation(s):
-- \WideAnd1~combout\ = ( \Select[2]~input_o\ & ( (!\Select[1]~input_o\ & !\Select[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Select[1]~input_o\,
	datac => \ALT_INV_Select[0]~input_o\,
	dataf => \ALT_INV_Select[2]~input_o\,
	combout => \WideAnd1~combout\);

-- Location: LABCELL_X67_Y11_N48
\WideOr1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr1~1_combout\ = ( \B[0]~input_o\ & ( \A[0]~input_o\ & ( (!\WideOr1~0_combout\) # (\WideAnd1~combout\) ) ) ) # ( !\B[0]~input_o\ & ( \A[0]~input_o\ & ( (!\WideOr1~0_combout\) # (\WideAnd1~combout\) ) ) ) # ( \B[0]~input_o\ & ( !\A[0]~input_o\ & ( 
-- (!\WideOr1~0_combout\) # ((\C~input_o\ & \WideAnd1~combout\)) ) ) ) # ( !\B[0]~input_o\ & ( !\A[0]~input_o\ & ( !\WideOr1~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100111111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_WideOr1~0_combout\,
	datac => \ALT_INV_C~input_o\,
	datad => \ALT_INV_WideAnd1~combout\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \WideOr1~1_combout\);

-- Location: LABCELL_X67_Y11_N27
\fulladderAB|add1|u5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fulladderAB|add1|u5~0_combout\ = ( \C~input_o\ & ( \A[1]~input_o\ & ( ((\B[0]~input_o\) # (\B[1]~input_o\)) # (\A[0]~input_o\) ) ) ) # ( !\C~input_o\ & ( \A[1]~input_o\ & ( ((\A[0]~input_o\ & \B[0]~input_o\)) # (\B[1]~input_o\) ) ) ) # ( \C~input_o\ & ( 
-- !\A[1]~input_o\ & ( (\B[1]~input_o\ & ((\B[0]~input_o\) # (\A[0]~input_o\))) ) ) ) # ( !\C~input_o\ & ( !\A[1]~input_o\ & ( (\A[0]~input_o\ & (\B[1]~input_o\ & \B[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000100110001001100110111001101110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_C~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \fulladderAB|add1|u5~0_combout\);

-- Location: IOIBUF_X68_Y12_N38
\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X68_Y12_N21
\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LABCELL_X67_Y11_N0
\WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = ( \Select[2]~input_o\ & ( (!\Select[0]~input_o\ & (!\Select[1]~input_o\ & (!\B[2]~input_o\ $ (\A[2]~input_o\)))) # (\Select[0]~input_o\ & (!\B[2]~input_o\ $ (((\A[2]~input_o\))))) ) ) # ( !\Select[2]~input_o\ & ( (!\B[2]~input_o\ & 
-- (!\A[2]~input_o\ $ (((!\Select[0]~input_o\ & !\Select[1]~input_o\))))) # (\B[2]~input_o\ & (\Select[0]~input_o\ & ((\A[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101010010001001010101001000110100010010100011010001001010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_Select[0]~input_o\,
	datac => \ALT_INV_Select[1]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_Select[2]~input_o\,
	combout => \WideOr2~0_combout\);

-- Location: LABCELL_X67_Y11_N9
\WideOr2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr2~1_combout\ = ( \WideOr2~0_combout\ & ( \A[1]~input_o\ & ( \WideAnd1~combout\ ) ) ) # ( !\WideOr2~0_combout\ & ( \A[1]~input_o\ ) ) # ( \WideOr2~0_combout\ & ( !\A[1]~input_o\ & ( (\fulladderAB|add1|u5~0_combout\ & \WideAnd1~combout\) ) ) ) # ( 
-- !\WideOr2~0_combout\ & ( !\A[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000001010000010111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fulladderAB|add1|ALT_INV_u5~0_combout\,
	datac => \ALT_INV_WideAnd1~combout\,
	datae => \ALT_INV_WideOr2~0_combout\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \WideOr2~1_combout\);

-- Location: IOIBUF_X68_Y10_N78
\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X68_Y12_N4
\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LABCELL_X67_Y11_N15
\WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr3~0_combout\ = ( \B[3]~input_o\ & ( (\A[3]~input_o\ & (((\Select[2]~input_o\ & !\Select[1]~input_o\)) # (\Select[0]~input_o\))) ) ) # ( !\B[3]~input_o\ & ( (!\A[3]~input_o\ & ((!\Select[2]~input_o\ $ (!\Select[1]~input_o\)) # 
-- (\Select[0]~input_o\))) # (\A[3]~input_o\ & (!\Select[2]~input_o\ & (!\Select[0]~input_o\ & !\Select[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110101010001010011010101000101000010101000001010001010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_Select[2]~input_o\,
	datac => \ALT_INV_Select[0]~input_o\,
	datad => \ALT_INV_Select[1]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \WideOr3~0_combout\);

-- Location: LABCELL_X67_Y11_N18
\WideOr3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr3~1_combout\ = ( \A[2]~input_o\ & ( (!\WideOr3~0_combout\) # (\WideAnd1~combout\) ) ) # ( !\A[2]~input_o\ & ( (!\WideOr3~0_combout\) # ((\fulladderAB|add1|u5~0_combout\ & (\B[2]~input_o\ & \WideAnd1~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001101110011001111111111001100110011011100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fulladderAB|add1|ALT_INV_u5~0_combout\,
	datab => \ALT_INV_WideOr3~0_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_WideAnd1~combout\,
	datae => \ALT_INV_A[2]~input_o\,
	combout => \WideOr3~1_combout\);

-- Location: LABCELL_X67_Y11_N54
\comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = ( \B[2]~input_o\ & ( \A[3]~input_o\ & ( \WideAnd1~combout\ ) ) ) # ( !\B[2]~input_o\ & ( \A[3]~input_o\ & ( \WideAnd1~combout\ ) ) ) # ( \B[2]~input_o\ & ( !\A[3]~input_o\ & ( (\B[3]~input_o\ & (\WideAnd1~combout\ & ((\A[2]~input_o\) # 
-- (\fulladderAB|add1|u5~0_combout\)))) ) ) ) # ( !\B[2]~input_o\ & ( !\A[3]~input_o\ & ( (\B[3]~input_o\ & (\WideAnd1~combout\ & (\fulladderAB|add1|u5~0_combout\ & \A[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000010001000100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_WideAnd1~combout\,
	datac => \fulladderAB|add1|ALT_INV_u5~0_combout\,
	datad => \ALT_INV_A[2]~input_o\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \comb~0_combout\);

-- Location: IOIBUF_X68_Y10_N61
\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: IOIBUF_X68_Y13_N4
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LABCELL_X63_Y8_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


