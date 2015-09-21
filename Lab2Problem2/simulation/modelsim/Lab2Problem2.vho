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

-- DATE "09/21/2015 17:03:20"

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
	modeSelect : IN std_logic_vector(2 DOWNTO 0);
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
-- RegOut[0]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut[1]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut[2]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut[3]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Carryout	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- modeSelect[1]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- modeSelect[0]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- modeSelect[2]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AH16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_modeSelect : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_C : std_logic;
SIGNAL ww_RegOut : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Carryout : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \modeSelect[2]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \modeSelect[0]~input_o\ : std_logic;
SIGNAL \modeSelect[1]~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \WideAnd1~0_combout\ : std_logic;
SIGNAL \WideOr0~1_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \WideOr1~1_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \fulladderAB|add1|u5~0_combout\ : std_logic;
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
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_modeSelect[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_modeSelect[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_modeSelect[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_C~input_o\ : std_logic;
SIGNAL \ALT_INV_WideOr3~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr2~0_combout\ : std_logic;
SIGNAL \fulladderAB|add1|ALT_INV_u5~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr1~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideAnd1~0_combout\ : std_logic;

BEGIN

ww_modeSelect <= modeSelect;
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
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_modeSelect[2]~input_o\ <= NOT \modeSelect[2]~input_o\;
\ALT_INV_modeSelect[0]~input_o\ <= NOT \modeSelect[0]~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_modeSelect[1]~input_o\ <= NOT \modeSelect[1]~input_o\;
\ALT_INV_C~input_o\ <= NOT \C~input_o\;
\ALT_INV_WideOr3~0_combout\ <= NOT \WideOr3~0_combout\;
\ALT_INV_WideOr2~0_combout\ <= NOT \WideOr2~0_combout\;
\fulladderAB|add1|ALT_INV_u5~0_combout\ <= NOT \fulladderAB|add1|u5~0_combout\;
\ALT_INV_WideOr1~0_combout\ <= NOT \WideOr1~0_combout\;
\ALT_INV_WideOr0~0_combout\ <= NOT \WideOr0~0_combout\;
\ALT_INV_WideAnd1~0_combout\ <= NOT \WideAnd1~0_combout\;

-- Location: IOOBUF_X38_Y0_N19
\RegOut[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr0~1_combout\,
	devoe => ww_devoe,
	o => ww_RegOut(0));

-- Location: IOOBUF_X46_Y0_N36
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

-- Location: IOOBUF_X38_Y0_N36
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

-- Location: IOOBUF_X38_Y0_N53
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

-- Location: IOOBUF_X40_Y0_N59
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

-- Location: IOIBUF_X42_Y0_N18
\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\modeSelect[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_modeSelect(2),
	o => \modeSelect[2]~input_o\);

-- Location: IOIBUF_X40_Y0_N41
\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X40_Y0_N75
\modeSelect[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_modeSelect(0),
	o => \modeSelect[0]~input_o\);

-- Location: IOIBUF_X44_Y0_N35
\modeSelect[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_modeSelect(1),
	o => \modeSelect[1]~input_o\);

-- Location: IOIBUF_X42_Y0_N52
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: MLABCELL_X42_Y1_N36
\WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = ( \modeSelect[1]~input_o\ & ( \reset~input_o\ & ( (\A[0]~input_o\ & !\B[0]~input_o\) ) ) ) # ( !\modeSelect[1]~input_o\ & ( \reset~input_o\ & ( (\A[0]~input_o\ & !\B[0]~input_o\) ) ) ) # ( \modeSelect[1]~input_o\ & ( !\reset~input_o\ 
-- & ( (!\A[0]~input_o\ & (!\B[0]~input_o\ & ((!\modeSelect[2]~input_o\) # (\modeSelect[0]~input_o\)))) # (\A[0]~input_o\ & (((\B[0]~input_o\ & \modeSelect[0]~input_o\)))) ) ) ) # ( !\modeSelect[1]~input_o\ & ( !\reset~input_o\ & ( (!\A[0]~input_o\ & 
-- (!\B[0]~input_o\ & ((\modeSelect[0]~input_o\) # (\modeSelect[2]~input_o\)))) # (\A[0]~input_o\ & (!\B[0]~input_o\ $ (((\modeSelect[0]~input_o\) # (\modeSelect[2]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000110100101100000001010010101010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_modeSelect[2]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_modeSelect[0]~input_o\,
	datae => \ALT_INV_modeSelect[1]~input_o\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \WideOr0~0_combout\);

-- Location: IOIBUF_X42_Y0_N1
\C~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => \C~input_o\);

-- Location: MLABCELL_X42_Y1_N30
\WideAnd1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideAnd1~0_combout\ = ( !\modeSelect[1]~input_o\ & ( !\reset~input_o\ & ( (\modeSelect[2]~input_o\ & !\modeSelect[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_modeSelect[2]~input_o\,
	datad => \ALT_INV_modeSelect[0]~input_o\,
	datae => \ALT_INV_modeSelect[1]~input_o\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \WideAnd1~0_combout\);

-- Location: MLABCELL_X42_Y1_N45
\WideOr0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr0~1_combout\ = ( \C~input_o\ & ( \WideAnd1~0_combout\ ) ) # ( !\C~input_o\ & ( \WideAnd1~0_combout\ & ( !\WideOr0~0_combout\ ) ) ) # ( \C~input_o\ & ( !\WideAnd1~0_combout\ & ( !\WideOr0~0_combout\ ) ) ) # ( !\C~input_o\ & ( !\WideAnd1~0_combout\ & 
-- ( !\WideOr0~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideOr0~0_combout\,
	datae => \ALT_INV_C~input_o\,
	dataf => \ALT_INV_WideAnd1~0_combout\,
	combout => \WideOr0~1_combout\);

-- Location: IOIBUF_X44_Y0_N52
\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X46_Y0_N52
\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: MLABCELL_X42_Y1_N51
\WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = ( \modeSelect[1]~input_o\ & ( \A[1]~input_o\ & ( (!\reset~input_o\ & (\modeSelect[0]~input_o\ & \B[1]~input_o\)) # (\reset~input_o\ & ((!\B[1]~input_o\))) ) ) ) # ( !\modeSelect[1]~input_o\ & ( \A[1]~input_o\ & ( !\B[1]~input_o\ $ 
-- (((!\reset~input_o\ & ((\modeSelect[2]~input_o\) # (\modeSelect[0]~input_o\))))) ) ) ) # ( \modeSelect[1]~input_o\ & ( !\A[1]~input_o\ & ( (!\reset~input_o\ & (!\B[1]~input_o\ & ((!\modeSelect[2]~input_o\) # (\modeSelect[0]~input_o\)))) ) ) ) # ( 
-- !\modeSelect[1]~input_o\ & ( !\A[1]~input_o\ & ( (!\reset~input_o\ & (!\B[1]~input_o\ & ((\modeSelect[2]~input_o\) # (\modeSelect[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000000000101000100000000011010101001010100101010100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \ALT_INV_modeSelect[0]~input_o\,
	datac => \ALT_INV_modeSelect[2]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_modeSelect[1]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \WideOr1~0_combout\);

-- Location: MLABCELL_X42_Y1_N57
\WideOr1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr1~1_combout\ = ( \C~input_o\ & ( \WideOr1~0_combout\ & ( (\WideAnd1~0_combout\ & ((\A[0]~input_o\) # (\B[0]~input_o\))) ) ) ) # ( !\C~input_o\ & ( \WideOr1~0_combout\ & ( (\WideAnd1~0_combout\ & \A[0]~input_o\) ) ) ) # ( \C~input_o\ & ( 
-- !\WideOr1~0_combout\ ) ) # ( !\C~input_o\ & ( !\WideOr1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000011110000010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_WideAnd1~0_combout\,
	datad => \ALT_INV_A[0]~input_o\,
	datae => \ALT_INV_C~input_o\,
	dataf => \ALT_INV_WideOr1~0_combout\,
	combout => \WideOr1~1_combout\);

-- Location: IOIBUF_X46_Y0_N1
\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X44_Y0_N18
\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: MLABCELL_X42_Y1_N6
\WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = ( \A[2]~input_o\ & ( \B[2]~input_o\ & ( (!\reset~input_o\ & (((\modeSelect[2]~input_o\ & !\modeSelect[1]~input_o\)) # (\modeSelect[0]~input_o\))) ) ) ) # ( \A[2]~input_o\ & ( !\B[2]~input_o\ & ( ((!\modeSelect[2]~input_o\ & 
-- (!\modeSelect[1]~input_o\ & !\modeSelect[0]~input_o\))) # (\reset~input_o\) ) ) ) # ( !\A[2]~input_o\ & ( !\B[2]~input_o\ & ( (!\reset~input_o\ & ((!\modeSelect[2]~input_o\ $ (!\modeSelect[1]~input_o\)) # (\modeSelect[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100010101010110101010101010100000000000000000010000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \ALT_INV_modeSelect[2]~input_o\,
	datac => \ALT_INV_modeSelect[1]~input_o\,
	datad => \ALT_INV_modeSelect[0]~input_o\,
	datae => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \WideOr2~0_combout\);

-- Location: MLABCELL_X42_Y1_N0
\fulladderAB|add1|u5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fulladderAB|add1|u5~0_combout\ = ( \C~input_o\ & ( \A[1]~input_o\ & ( ((\B[1]~input_o\) # (\B[0]~input_o\)) # (\A[0]~input_o\) ) ) ) # ( !\C~input_o\ & ( \A[1]~input_o\ & ( ((\A[0]~input_o\ & \B[0]~input_o\)) # (\B[1]~input_o\) ) ) ) # ( \C~input_o\ & ( 
-- !\A[1]~input_o\ & ( (\B[1]~input_o\ & ((\B[0]~input_o\) # (\A[0]~input_o\))) ) ) ) # ( !\C~input_o\ & ( !\A[1]~input_o\ & ( (\A[0]~input_o\ & (\B[0]~input_o\ & \B[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000001110000011100011111000111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_C~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \fulladderAB|add1|u5~0_combout\);

-- Location: MLABCELL_X42_Y1_N15
\WideOr2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr2~1_combout\ = ( \fulladderAB|add1|u5~0_combout\ & ( \A[1]~input_o\ & ( (!\WideOr2~0_combout\) # (\WideAnd1~0_combout\) ) ) ) # ( !\fulladderAB|add1|u5~0_combout\ & ( \A[1]~input_o\ & ( (!\WideOr2~0_combout\) # (\WideAnd1~0_combout\) ) ) ) # ( 
-- \fulladderAB|add1|u5~0_combout\ & ( !\A[1]~input_o\ & ( (!\WideOr2~0_combout\) # (\WideAnd1~0_combout\) ) ) ) # ( !\fulladderAB|add1|u5~0_combout\ & ( !\A[1]~input_o\ & ( !\WideOr2~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100111111001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_WideAnd1~0_combout\,
	datac => \ALT_INV_WideOr2~0_combout\,
	datae => \fulladderAB|add1|ALT_INV_u5~0_combout\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \WideOr2~1_combout\);

-- Location: IOIBUF_X42_Y0_N35
\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X44_Y0_N1
\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: MLABCELL_X42_Y1_N9
\WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr3~0_combout\ = ( \A[3]~input_o\ & ( \B[3]~input_o\ & ( (!\reset~input_o\ & (((\modeSelect[2]~input_o\ & !\modeSelect[1]~input_o\)) # (\modeSelect[0]~input_o\))) ) ) ) # ( \A[3]~input_o\ & ( !\B[3]~input_o\ & ( ((!\modeSelect[2]~input_o\ & 
-- (!\modeSelect[0]~input_o\ & !\modeSelect[1]~input_o\))) # (\reset~input_o\) ) ) ) # ( !\A[3]~input_o\ & ( !\B[3]~input_o\ & ( (!\reset~input_o\ & ((!\modeSelect[2]~input_o\ $ (!\modeSelect[1]~input_o\)) # (\modeSelect[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101010001010110101010101010100000000000000000010101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \ALT_INV_modeSelect[2]~input_o\,
	datac => \ALT_INV_modeSelect[0]~input_o\,
	datad => \ALT_INV_modeSelect[1]~input_o\,
	datae => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \WideOr3~0_combout\);

-- Location: MLABCELL_X42_Y1_N18
\WideOr3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr3~1_combout\ = ( \A[2]~input_o\ & ( \B[2]~input_o\ & ( (!\WideOr3~0_combout\) # (\WideAnd1~0_combout\) ) ) ) # ( !\A[2]~input_o\ & ( \B[2]~input_o\ & ( (!\WideOr3~0_combout\) # ((\fulladderAB|add1|u5~0_combout\ & \WideAnd1~0_combout\)) ) ) ) # ( 
-- \A[2]~input_o\ & ( !\B[2]~input_o\ & ( (!\WideOr3~0_combout\) # (\WideAnd1~0_combout\) ) ) ) # ( !\A[2]~input_o\ & ( !\B[2]~input_o\ & ( !\WideOr3~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001111111111001100110011111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_WideOr3~0_combout\,
	datac => \fulladderAB|add1|ALT_INV_u5~0_combout\,
	datad => \ALT_INV_WideAnd1~0_combout\,
	datae => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \WideOr3~1_combout\);

-- Location: MLABCELL_X42_Y1_N24
\comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = ( \A[2]~input_o\ & ( \B[2]~input_o\ & ( (\WideAnd1~0_combout\ & ((\A[3]~input_o\) # (\B[3]~input_o\))) ) ) ) # ( !\A[2]~input_o\ & ( \B[2]~input_o\ & ( (\WideAnd1~0_combout\ & (((\B[3]~input_o\ & \fulladderAB|add1|u5~0_combout\)) # 
-- (\A[3]~input_o\))) ) ) ) # ( \A[2]~input_o\ & ( !\B[2]~input_o\ & ( (\WideAnd1~0_combout\ & (((\B[3]~input_o\ & \fulladderAB|add1|u5~0_combout\)) # (\A[3]~input_o\))) ) ) ) # ( !\A[2]~input_o\ & ( !\B[2]~input_o\ & ( (\A[3]~input_o\ & 
-- \WideAnd1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011011100000000001101110000000001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_A[3]~input_o\,
	datac => \fulladderAB|add1|ALT_INV_u5~0_combout\,
	datad => \ALT_INV_WideAnd1~0_combout\,
	datae => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \comb~0_combout\);

-- Location: IOIBUF_X10_Y0_N92
\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: LABCELL_X61_Y8_N0
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


