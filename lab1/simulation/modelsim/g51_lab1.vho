-- Copyright (C) 2016  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"

-- DATE "03/01/2019 11:40:33"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
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

ENTITY 	g51_lab1 IS
    PORT (
	code : IN std_logic_vector(3 DOWNTO 0);
	segments : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END g51_lab1;

-- Design Ports Information
-- segments[0]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments[1]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments[2]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments[3]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments[4]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments[5]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments[6]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- code[0]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- code[3]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- code[1]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- code[2]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF g51_lab1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_code : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_segments : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \code[3]~input_o\ : std_logic;
SIGNAL \code[0]~input_o\ : std_logic;
SIGNAL \code[2]~input_o\ : std_logic;
SIGNAL \code[1]~input_o\ : std_logic;
SIGNAL \segments~0_combout\ : std_logic;
SIGNAL \segments~1_combout\ : std_logic;
SIGNAL \segments~2_combout\ : std_logic;
SIGNAL \segments~3_combout\ : std_logic;
SIGNAL \segments~4_combout\ : std_logic;
SIGNAL \segments~5_combout\ : std_logic;
SIGNAL \segments~6_combout\ : std_logic;
SIGNAL \ALT_INV_code[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_code[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_code[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_code[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_segments~5_combout\ : std_logic;

BEGIN

ww_code <= code;
segments <= ww_segments;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_code[2]~input_o\ <= NOT \code[2]~input_o\;
\ALT_INV_code[1]~input_o\ <= NOT \code[1]~input_o\;
\ALT_INV_code[3]~input_o\ <= NOT \code[3]~input_o\;
\ALT_INV_code[0]~input_o\ <= NOT \code[0]~input_o\;
\ALT_INV_segments~5_combout\ <= NOT \segments~5_combout\;

-- Location: IOOBUF_X89_Y21_N5
\segments[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \segments~0_combout\,
	devoe => ww_devoe,
	o => ww_segments(0));

-- Location: IOOBUF_X89_Y20_N62
\segments[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \segments~1_combout\,
	devoe => ww_devoe,
	o => ww_segments(1));

-- Location: IOOBUF_X89_Y21_N56
\segments[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \segments~2_combout\,
	devoe => ww_devoe,
	o => ww_segments(2));

-- Location: IOOBUF_X89_Y23_N22
\segments[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \segments~3_combout\,
	devoe => ww_devoe,
	o => ww_segments(3));

-- Location: IOOBUF_X89_Y23_N5
\segments[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \segments~4_combout\,
	devoe => ww_devoe,
	o => ww_segments(4));

-- Location: IOOBUF_X89_Y23_N56
\segments[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_segments~5_combout\,
	devoe => ww_devoe,
	o => ww_segments(5));

-- Location: IOOBUF_X89_Y23_N39
\segments[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \segments~6_combout\,
	devoe => ww_devoe,
	o => ww_segments(6));

-- Location: IOIBUF_X89_Y21_N21
\code[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_code(3),
	o => \code[3]~input_o\);

-- Location: IOIBUF_X89_Y20_N44
\code[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_code(0),
	o => \code[0]~input_o\);

-- Location: IOIBUF_X89_Y20_N95
\code[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_code(2),
	o => \code[2]~input_o\);

-- Location: IOIBUF_X89_Y21_N38
\code[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_code(1),
	o => \code[1]~input_o\);

-- Location: LABCELL_X88_Y21_N0
\segments~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \segments~0_combout\ = ( !\code[2]~input_o\ & ( \code[1]~input_o\ & ( (\code[3]~input_o\ & \code[0]~input_o\) ) ) ) # ( \code[2]~input_o\ & ( !\code[1]~input_o\ & ( !\code[3]~input_o\ $ (\code[0]~input_o\) ) ) ) # ( !\code[2]~input_o\ & ( 
-- !\code[1]~input_o\ & ( (!\code[3]~input_o\ & \code[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010101001011010010100000101000001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_code[3]~input_o\,
	datac => \ALT_INV_code[0]~input_o\,
	datae => \ALT_INV_code[2]~input_o\,
	dataf => \ALT_INV_code[1]~input_o\,
	combout => \segments~0_combout\);

-- Location: LABCELL_X88_Y21_N9
\segments~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \segments~1_combout\ = ( \code[2]~input_o\ & ( \code[1]~input_o\ & ( (!\code[0]~input_o\) # (\code[3]~input_o\) ) ) ) # ( !\code[2]~input_o\ & ( \code[1]~input_o\ & ( (\code[0]~input_o\ & \code[3]~input_o\) ) ) ) # ( \code[2]~input_o\ & ( 
-- !\code[1]~input_o\ & ( !\code[0]~input_o\ $ (!\code[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011010101000000000010101011010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_code[0]~input_o\,
	datad => \ALT_INV_code[3]~input_o\,
	datae => \ALT_INV_code[2]~input_o\,
	dataf => \ALT_INV_code[1]~input_o\,
	combout => \segments~1_combout\);

-- Location: LABCELL_X88_Y21_N42
\segments~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \segments~2_combout\ = ( \code[2]~input_o\ & ( \code[1]~input_o\ & ( \code[3]~input_o\ ) ) ) # ( !\code[2]~input_o\ & ( \code[1]~input_o\ & ( (!\code[3]~input_o\ & !\code[0]~input_o\) ) ) ) # ( \code[2]~input_o\ & ( !\code[1]~input_o\ & ( 
-- (\code[3]~input_o\ & !\code[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000010100000101000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_code[3]~input_o\,
	datac => \ALT_INV_code[0]~input_o\,
	datae => \ALT_INV_code[2]~input_o\,
	dataf => \ALT_INV_code[1]~input_o\,
	combout => \segments~2_combout\);

-- Location: LABCELL_X88_Y21_N51
\segments~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \segments~3_combout\ = ( \code[2]~input_o\ & ( \code[1]~input_o\ & ( \code[0]~input_o\ ) ) ) # ( !\code[2]~input_o\ & ( \code[1]~input_o\ & ( (!\code[0]~input_o\ & \code[3]~input_o\) ) ) ) # ( \code[2]~input_o\ & ( !\code[1]~input_o\ & ( 
-- (!\code[0]~input_o\ & !\code[3]~input_o\) ) ) ) # ( !\code[2]~input_o\ & ( !\code[1]~input_o\ & ( (\code[0]~input_o\ & \code[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101101010100000000000000000101010100101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_code[0]~input_o\,
	datad => \ALT_INV_code[3]~input_o\,
	datae => \ALT_INV_code[2]~input_o\,
	dataf => \ALT_INV_code[1]~input_o\,
	combout => \segments~3_combout\);

-- Location: LABCELL_X88_Y21_N54
\segments~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \segments~4_combout\ = ( \code[2]~input_o\ & ( \code[1]~input_o\ & ( (!\code[3]~input_o\ & \code[0]~input_o\) ) ) ) # ( !\code[2]~input_o\ & ( \code[1]~input_o\ & ( (!\code[3]~input_o\ & \code[0]~input_o\) ) ) ) # ( \code[2]~input_o\ & ( 
-- !\code[1]~input_o\ & ( !\code[3]~input_o\ ) ) ) # ( !\code[2]~input_o\ & ( !\code[1]~input_o\ & ( \code[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111101010101010101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_code[3]~input_o\,
	datac => \ALT_INV_code[0]~input_o\,
	datae => \ALT_INV_code[2]~input_o\,
	dataf => \ALT_INV_code[1]~input_o\,
	combout => \segments~4_combout\);

-- Location: LABCELL_X88_Y21_N33
\segments~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \segments~5_combout\ = ( \code[2]~input_o\ & ( \code[1]~input_o\ & ( (!\code[0]~input_o\) # (\code[3]~input_o\) ) ) ) # ( !\code[2]~input_o\ & ( \code[1]~input_o\ & ( \code[3]~input_o\ ) ) ) # ( \code[2]~input_o\ & ( !\code[1]~input_o\ & ( 
-- (!\code[0]~input_o\) # (!\code[3]~input_o\) ) ) ) # ( !\code[2]~input_o\ & ( !\code[1]~input_o\ & ( (!\code[0]~input_o\) # (\code[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011111111111111111010101000000000111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_code[0]~input_o\,
	datad => \ALT_INV_code[3]~input_o\,
	datae => \ALT_INV_code[2]~input_o\,
	dataf => \ALT_INV_code[1]~input_o\,
	combout => \segments~5_combout\);

-- Location: LABCELL_X88_Y21_N36
\segments~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \segments~6_combout\ = ( \code[2]~input_o\ & ( \code[1]~input_o\ & ( (!\code[3]~input_o\ & \code[0]~input_o\) ) ) ) # ( \code[2]~input_o\ & ( !\code[1]~input_o\ & ( (\code[3]~input_o\ & !\code[0]~input_o\) ) ) ) # ( !\code[2]~input_o\ & ( 
-- !\code[1]~input_o\ & ( !\code[3]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010010100000101000000000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_code[3]~input_o\,
	datac => \ALT_INV_code[0]~input_o\,
	datae => \ALT_INV_code[2]~input_o\,
	dataf => \ALT_INV_code[1]~input_o\,
	combout => \segments~6_combout\);

-- Location: LABCELL_X23_Y4_N0
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


