-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Standard Edition"

-- DATE "03/11/2019 15:12:28"

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

ENTITY 	g51_adder IS
    PORT (
	A : IN std_logic_vector(4 DOWNTO 0);
	B : IN std_logic_vector(4 DOWNTO 0);
	decoded_A : BUFFER std_logic_vector(13 DOWNTO 0);
	decoded_B : BUFFER std_logic_vector(13 DOWNTO 0);
	decoded_AplusB : BUFFER std_logic_vector(13 DOWNTO 0)
	);
END g51_adder;

-- Design Ports Information
-- decoded_A[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_A[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_A[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_A[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_A[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_A[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_A[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_A[7]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_A[8]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_A[9]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_A[10]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_A[11]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_A[12]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_A[13]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_B[0]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_B[1]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_B[2]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_B[3]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_B[4]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_B[5]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_B[6]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_B[7]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_B[8]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_B[9]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_B[10]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_B[11]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_B[12]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_B[13]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[0]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[1]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[2]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[4]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[5]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[6]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[7]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[8]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[9]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[10]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[11]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[12]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[13]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF g51_adder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_decoded_A : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_decoded_B : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_decoded_AplusB : std_logic_vector(13 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \Decoder_a0|segments[0]~0_combout\ : std_logic;
SIGNAL \Decoder_a0|segments[1]~1_combout\ : std_logic;
SIGNAL \Decoder_a0|segments[2]~2_combout\ : std_logic;
SIGNAL \Decoder_a0|segments[3]~3_combout\ : std_logic;
SIGNAL \Decoder_a0|segments[4]~4_combout\ : std_logic;
SIGNAL \Decoder_a0|segments[5]~5_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \Decoder_b0|segments[0]~0_combout\ : std_logic;
SIGNAL \Decoder_b0|segments[1]~1_combout\ : std_logic;
SIGNAL \Decoder_b0|segments[2]~2_combout\ : std_logic;
SIGNAL \Decoder_b0|segments[3]~3_combout\ : std_logic;
SIGNAL \Decoder_b0|segments[4]~4_combout\ : std_logic;
SIGNAL \Decoder_b0|segments[5]~5_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Decoder_sum0|segments[0]~0_combout\ : std_logic;
SIGNAL \Decoder_sum0|segments[1]~1_combout\ : std_logic;
SIGNAL \Decoder_sum0|segments[2]~2_combout\ : std_logic;
SIGNAL \Decoder_sum0|segments[3]~3_combout\ : std_logic;
SIGNAL \Decoder_sum0|segments[4]~4_combout\ : std_logic;
SIGNAL \Decoder_sum0|segments[5]~5_combout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Decoder_sum1|segments~0_combout\ : std_logic;
SIGNAL \Decoder_sum1|segments~1_combout\ : std_logic;
SIGNAL \Decoder_sum1|segments\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \Decoder_b0|segments\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \Decoder_a0|segments\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \Decoder_sum0|segments\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
decoded_A <= ww_decoded_A;
decoded_B <= ww_decoded_B;
decoded_AplusB <= ww_decoded_AplusB;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_Add0~21_sumout\ <= NOT \Add0~21_sumout\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;

-- Location: IOOBUF_X89_Y8_N39
\decoded_A[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_a0|segments[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_A(0));

-- Location: IOOBUF_X89_Y11_N79
\decoded_A[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_a0|segments[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_decoded_A(1));

-- Location: IOOBUF_X89_Y11_N96
\decoded_A[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_a0|segments[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_decoded_A(2));

-- Location: IOOBUF_X89_Y4_N79
\decoded_A[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_a0|segments[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_decoded_A(3));

-- Location: IOOBUF_X89_Y13_N56
\decoded_A[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_a0|segments[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_decoded_A(4));

-- Location: IOOBUF_X89_Y13_N39
\decoded_A[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_a0|segments[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_decoded_A(5));

-- Location: IOOBUF_X89_Y4_N96
\decoded_A[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_a0|segments\(6),
	devoe => ww_devoe,
	o => ww_decoded_A(6));

-- Location: IOOBUF_X89_Y6_N39
\decoded_A[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A[4]~input_o\,
	devoe => ww_devoe,
	o => ww_decoded_A(7));

-- Location: IOOBUF_X89_Y6_N56
\decoded_A[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_decoded_A(8));

-- Location: IOOBUF_X89_Y16_N39
\decoded_A[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_decoded_A(9));

-- Location: IOOBUF_X89_Y16_N56
\decoded_A[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A[4]~input_o\,
	devoe => ww_devoe,
	o => ww_decoded_A(10));

-- Location: IOOBUF_X89_Y15_N39
\decoded_A[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A[4]~input_o\,
	devoe => ww_devoe,
	o => ww_decoded_A(11));

-- Location: IOOBUF_X89_Y15_N56
\decoded_A[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A[4]~input_o\,
	devoe => ww_devoe,
	o => ww_decoded_A(12));

-- Location: IOOBUF_X89_Y8_N56
\decoded_A[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_decoded_A(13));

-- Location: IOOBUF_X89_Y9_N22
\decoded_B[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_b0|segments[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_B(0));

-- Location: IOOBUF_X89_Y23_N39
\decoded_B[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_b0|segments[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_decoded_B(1));

-- Location: IOOBUF_X89_Y23_N56
\decoded_B[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_b0|segments[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_decoded_B(2));

-- Location: IOOBUF_X89_Y20_N79
\decoded_B[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_b0|segments[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_decoded_B(3));

-- Location: IOOBUF_X89_Y25_N39
\decoded_B[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_b0|segments[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_decoded_B(4));

-- Location: IOOBUF_X89_Y20_N96
\decoded_B[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_b0|segments[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_decoded_B(5));

-- Location: IOOBUF_X89_Y25_N56
\decoded_B[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_b0|segments\(6),
	devoe => ww_devoe,
	o => ww_decoded_B(6));

-- Location: IOOBUF_X89_Y16_N5
\decoded_B[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \B[4]~input_o\,
	devoe => ww_devoe,
	o => ww_decoded_B(7));

-- Location: IOOBUF_X89_Y16_N22
\decoded_B[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_decoded_B(8));

-- Location: IOOBUF_X89_Y4_N45
\decoded_B[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_decoded_B(9));

-- Location: IOOBUF_X89_Y4_N62
\decoded_B[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \B[4]~input_o\,
	devoe => ww_devoe,
	o => ww_decoded_B(10));

-- Location: IOOBUF_X89_Y21_N39
\decoded_B[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \B[4]~input_o\,
	devoe => ww_devoe,
	o => ww_decoded_B(11));

-- Location: IOOBUF_X89_Y11_N62
\decoded_B[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \B[4]~input_o\,
	devoe => ww_devoe,
	o => ww_decoded_B(12));

-- Location: IOOBUF_X89_Y9_N5
\decoded_B[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_decoded_B(13));

-- Location: IOOBUF_X89_Y11_N45
\decoded_AplusB[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_sum0|segments[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(0));

-- Location: IOOBUF_X89_Y13_N5
\decoded_AplusB[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_sum0|segments[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(1));

-- Location: IOOBUF_X89_Y13_N22
\decoded_AplusB[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_sum0|segments[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(2));

-- Location: IOOBUF_X89_Y8_N22
\decoded_AplusB[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_sum0|segments[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(3));

-- Location: IOOBUF_X89_Y15_N22
\decoded_AplusB[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_sum0|segments[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(4));

-- Location: IOOBUF_X89_Y15_N5
\decoded_AplusB[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_sum0|segments[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(5));

-- Location: IOOBUF_X89_Y20_N45
\decoded_AplusB[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_sum0|segments\(6),
	devoe => ww_devoe,
	o => ww_decoded_AplusB(6));

-- Location: IOOBUF_X89_Y20_N62
\decoded_AplusB[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_sum1|segments~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(7));

-- Location: IOOBUF_X89_Y21_N56
\decoded_AplusB[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(8));

-- Location: IOOBUF_X89_Y25_N22
\decoded_AplusB[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_sum1|segments~1_combout\,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(9));

-- Location: IOOBUF_X89_Y23_N22
\decoded_AplusB[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_sum1|segments~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(10));

-- Location: IOOBUF_X89_Y9_N56
\decoded_AplusB[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~17_sumout\,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(11));

-- Location: IOOBUF_X89_Y23_N5
\decoded_AplusB[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_sum1|segments\(5),
	devoe => ww_devoe,
	o => ww_decoded_AplusB(12));

-- Location: IOOBUF_X89_Y9_N39
\decoded_AplusB[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Add0~21_sumout\,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(13));

-- Location: IOIBUF_X8_Y0_N35
\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LABCELL_X85_Y12_N51
\Decoder_a0|segments[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder_a0|segments[0]~0_combout\ = ( \A[1]~input_o\ & ( (!\A[2]~input_o\ & (\A[3]~input_o\ & \A[0]~input_o\)) ) ) # ( !\A[1]~input_o\ & ( (!\A[2]~input_o\ & (!\A[3]~input_o\ & \A[0]~input_o\)) # (\A[2]~input_o\ & (!\A[3]~input_o\ $ (\A[0]~input_o\))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100101001001010010010100100100000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \Decoder_a0|segments[0]~0_combout\);

-- Location: LABCELL_X85_Y12_N57
\Decoder_a0|segments[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder_a0|segments[1]~1_combout\ = ( \A[1]~input_o\ & ( (!\A[0]~input_o\ & (\A[2]~input_o\)) # (\A[0]~input_o\ & ((\A[3]~input_o\))) ) ) # ( !\A[1]~input_o\ & ( (\A[2]~input_o\ & (!\A[3]~input_o\ $ (!\A[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000001010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \Decoder_a0|segments[1]~1_combout\);

-- Location: LABCELL_X85_Y12_N48
\Decoder_a0|segments[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder_a0|segments[2]~2_combout\ = ( \A[1]~input_o\ & ( (!\A[2]~input_o\ & (!\A[3]~input_o\ & !\A[0]~input_o\)) # (\A[2]~input_o\ & (\A[3]~input_o\)) ) ) # ( !\A[1]~input_o\ & ( (\A[2]~input_o\ & (\A[3]~input_o\ & !\A[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000100010000000010011001000100011001100100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \Decoder_a0|segments[2]~2_combout\);

-- Location: LABCELL_X85_Y12_N30
\Decoder_a0|segments[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder_a0|segments[3]~3_combout\ = ( \A[1]~input_o\ & ( (!\A[2]~input_o\ & (\A[3]~input_o\ & !\A[0]~input_o\)) # (\A[2]~input_o\ & ((\A[0]~input_o\))) ) ) # ( !\A[1]~input_o\ & ( (!\A[3]~input_o\ & (!\A[2]~input_o\ $ (!\A[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010010001000010001001000100000100010010101010010001001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \Decoder_a0|segments[3]~3_combout\);

-- Location: LABCELL_X85_Y12_N36
\Decoder_a0|segments[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder_a0|segments[4]~4_combout\ = ( \A[1]~input_o\ & ( (!\A[3]~input_o\ & \A[0]~input_o\) ) ) # ( !\A[1]~input_o\ & ( (!\A[2]~input_o\ & ((\A[0]~input_o\))) # (\A[2]~input_o\ & (!\A[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011101110010001001110111000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \Decoder_a0|segments[4]~4_combout\);

-- Location: LABCELL_X85_Y12_N39
\Decoder_a0|segments[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder_a0|segments[5]~5_combout\ = ( \A[1]~input_o\ & ( (!\A[3]~input_o\ & ((!\A[2]~input_o\) # (\A[0]~input_o\))) ) ) # ( !\A[1]~input_o\ & ( (\A[0]~input_o\ & (!\A[2]~input_o\ $ (\A[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100001001000010010000100110001100100011001000110010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \Decoder_a0|segments[5]~5_combout\);

-- Location: LABCELL_X85_Y12_N33
\Decoder_a0|segments[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder_a0|segments\(6) = ( \A[1]~input_o\ & ( (\A[2]~input_o\ & (!\A[3]~input_o\ & \A[0]~input_o\)) ) ) # ( !\A[1]~input_o\ & ( (!\A[2]~input_o\ & (!\A[3]~input_o\)) # (\A[2]~input_o\ & (\A[3]~input_o\ & !\A[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100010011000100110001001100000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \Decoder_a0|segments\(6));

-- Location: IOIBUF_X2_Y0_N41
\A[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X4_Y0_N35
\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X16_Y0_N18
\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X4_Y0_N1
\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LABCELL_X85_Y12_N42
\Decoder_b0|segments[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder_b0|segments[0]~0_combout\ = ( \B[2]~input_o\ & ( (!\B[1]~input_o\ & (!\B[3]~input_o\ $ (\B[0]~input_o\))) ) ) # ( !\B[2]~input_o\ & ( (\B[0]~input_o\ & (!\B[3]~input_o\ $ (\B[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100001001000010010000100110000100100001001000010010000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Decoder_b0|segments[0]~0_combout\);

-- Location: LABCELL_X85_Y12_N45
\Decoder_b0|segments[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder_b0|segments[1]~1_combout\ = ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & (!\B[1]~input_o\ $ (!\B[0]~input_o\))) # (\B[3]~input_o\ & ((!\B[0]~input_o\) # (\B[1]~input_o\))) ) ) # ( !\B[2]~input_o\ & ( (\B[3]~input_o\ & (\B[1]~input_o\ & 
-- \B[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000101110111100110010111011110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Decoder_b0|segments[1]~1_combout\);

-- Location: LABCELL_X85_Y12_N18
\Decoder_b0|segments[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder_b0|segments[2]~2_combout\ = ( \B[2]~input_o\ & ( (\B[3]~input_o\ & ((!\B[0]~input_o\) # (\B[1]~input_o\))) ) ) # ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & (\B[1]~input_o\ & !\B[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000001010001010100010101000101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Decoder_b0|segments[2]~2_combout\);

-- Location: LABCELL_X85_Y12_N21
\Decoder_b0|segments[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder_b0|segments[3]~3_combout\ = ( \B[2]~input_o\ & ( (!\B[1]~input_o\ & (!\B[3]~input_o\ & !\B[0]~input_o\)) # (\B[1]~input_o\ & ((\B[0]~input_o\))) ) ) # ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & (!\B[1]~input_o\ & \B[0]~input_o\)) # (\B[3]~input_o\ 
-- & (\B[1]~input_o\ & !\B[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110001000000100011000100010001000001100111000100000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Decoder_b0|segments[3]~3_combout\);

-- Location: LABCELL_X85_Y12_N24
\Decoder_b0|segments[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder_b0|segments[4]~4_combout\ = ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & ((!\B[1]~input_o\) # (\B[0]~input_o\))) ) ) # ( !\B[2]~input_o\ & ( (\B[0]~input_o\ & ((!\B[1]~input_o\) # (!\B[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111100000000001111110011000000111100001100000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Decoder_b0|segments[4]~4_combout\);

-- Location: LABCELL_X85_Y12_N27
\Decoder_b0|segments[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder_b0|segments[5]~5_combout\ = ( \B[2]~input_o\ & ( (\B[0]~input_o\ & (!\B[3]~input_o\ $ (!\B[1]~input_o\))) ) ) # ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & ((\B[0]~input_o\) # (\B[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010101010001000101010101000000000011001100000000001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Decoder_b0|segments[5]~5_combout\);

-- Location: LABCELL_X85_Y12_N54
\Decoder_b0|segments[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder_b0|segments\(6) = ( \B[2]~input_o\ & ( (!\B[1]~input_o\ & (\B[3]~input_o\ & !\B[0]~input_o\)) # (\B[1]~input_o\ & (!\B[3]~input_o\ & \B[0]~input_o\)) ) ) # ( !\B[2]~input_o\ & ( (!\B[1]~input_o\ & !\B[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000001100001100000000110000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Decoder_b0|segments\(6));

-- Location: IOIBUF_X2_Y0_N58
\B[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LABCELL_X85_Y12_N0
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( \A[0]~input_o\ ) + ( \B[0]~input_o\ ) + ( !VCC ))
-- \Add0~10\ = CARRY(( \A[0]~input_o\ ) + ( \B[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	cin => GND,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: LABCELL_X85_Y12_N3
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( \B[1]~input_o\ ) + ( \A[1]~input_o\ ) + ( \Add0~10\ ))
-- \Add0~2\ = CARRY(( \B[1]~input_o\ ) + ( \A[1]~input_o\ ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	cin => \Add0~10\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: LABCELL_X85_Y12_N6
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( \A[2]~input_o\ ) + ( \B[2]~input_o\ ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( \A[2]~input_o\ ) + ( \B[2]~input_o\ ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: LABCELL_X85_Y12_N9
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( \B[3]~input_o\ ) + ( \A[3]~input_o\ ) + ( \Add0~6\ ))
-- \Add0~14\ = CARRY(( \B[3]~input_o\ ) + ( \A[3]~input_o\ ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	cin => \Add0~6\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: LABCELL_X88_Y12_N0
\Decoder_sum0|segments[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder_sum0|segments[0]~0_combout\ = ( \Add0~9_sumout\ & ( \Add0~1_sumout\ & ( (!\Add0~5_sumout\ & \Add0~13_sumout\) ) ) ) # ( \Add0~9_sumout\ & ( !\Add0~1_sumout\ & ( !\Add0~5_sumout\ $ (\Add0~13_sumout\) ) ) ) # ( !\Add0~9_sumout\ & ( !\Add0~1_sumout\ 
-- & ( (\Add0~5_sumout\ & !\Add0~13_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000110000111100001100000000000000000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add0~5_sumout\,
	datac => \ALT_INV_Add0~13_sumout\,
	datae => \ALT_INV_Add0~9_sumout\,
	dataf => \ALT_INV_Add0~1_sumout\,
	combout => \Decoder_sum0|segments[0]~0_combout\);

-- Location: LABCELL_X88_Y12_N9
\Decoder_sum0|segments[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder_sum0|segments[1]~1_combout\ = ( \Add0~9_sumout\ & ( \Add0~1_sumout\ & ( \Add0~13_sumout\ ) ) ) # ( !\Add0~9_sumout\ & ( \Add0~1_sumout\ & ( \Add0~5_sumout\ ) ) ) # ( \Add0~9_sumout\ & ( !\Add0~1_sumout\ & ( (!\Add0~13_sumout\ & \Add0~5_sumout\) ) 
-- ) ) # ( !\Add0~9_sumout\ & ( !\Add0~1_sumout\ & ( (\Add0~13_sumout\ & \Add0~5_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000010100000101000001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~13_sumout\,
	datac => \ALT_INV_Add0~5_sumout\,
	datae => \ALT_INV_Add0~9_sumout\,
	dataf => \ALT_INV_Add0~1_sumout\,
	combout => \Decoder_sum0|segments[1]~1_combout\);

-- Location: LABCELL_X88_Y12_N12
\Decoder_sum0|segments[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder_sum0|segments[2]~2_combout\ = ( \Add0~9_sumout\ & ( \Add0~1_sumout\ & ( (\Add0~5_sumout\ & \Add0~13_sumout\) ) ) ) # ( !\Add0~9_sumout\ & ( \Add0~1_sumout\ & ( !\Add0~5_sumout\ $ (\Add0~13_sumout\) ) ) ) # ( !\Add0~9_sumout\ & ( !\Add0~1_sumout\ 
-- & ( (\Add0~5_sumout\ & \Add0~13_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000000000000011000011110000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add0~5_sumout\,
	datac => \ALT_INV_Add0~13_sumout\,
	datae => \ALT_INV_Add0~9_sumout\,
	dataf => \ALT_INV_Add0~1_sumout\,
	combout => \Decoder_sum0|segments[2]~2_combout\);

-- Location: LABCELL_X88_Y12_N51
\Decoder_sum0|segments[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder_sum0|segments[3]~3_combout\ = ( \Add0~9_sumout\ & ( \Add0~1_sumout\ & ( \Add0~5_sumout\ ) ) ) # ( !\Add0~9_sumout\ & ( \Add0~1_sumout\ & ( (\Add0~13_sumout\ & !\Add0~5_sumout\) ) ) ) # ( \Add0~9_sumout\ & ( !\Add0~1_sumout\ & ( (!\Add0~13_sumout\ 
-- & !\Add0~5_sumout\) ) ) ) # ( !\Add0~9_sumout\ & ( !\Add0~1_sumout\ & ( (!\Add0~13_sumout\ & \Add0~5_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010101000001010000001010000010100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~13_sumout\,
	datac => \ALT_INV_Add0~5_sumout\,
	datae => \ALT_INV_Add0~9_sumout\,
	dataf => \ALT_INV_Add0~1_sumout\,
	combout => \Decoder_sum0|segments[3]~3_combout\);

-- Location: LABCELL_X88_Y12_N24
\Decoder_sum0|segments[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder_sum0|segments[4]~4_combout\ = ( \Add0~9_sumout\ & ( \Add0~1_sumout\ & ( !\Add0~13_sumout\ ) ) ) # ( \Add0~9_sumout\ & ( !\Add0~1_sumout\ & ( (!\Add0~5_sumout\) # (!\Add0~13_sumout\) ) ) ) # ( !\Add0~9_sumout\ & ( !\Add0~1_sumout\ & ( 
-- (\Add0~5_sumout\ & !\Add0~13_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000111111001111110000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add0~5_sumout\,
	datac => \ALT_INV_Add0~13_sumout\,
	datae => \ALT_INV_Add0~9_sumout\,
	dataf => \ALT_INV_Add0~1_sumout\,
	combout => \Decoder_sum0|segments[4]~4_combout\);

-- Location: LABCELL_X88_Y12_N33
\Decoder_sum0|segments[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder_sum0|segments[5]~5_combout\ = ( \Add0~9_sumout\ & ( \Add0~1_sumout\ & ( !\Add0~13_sumout\ ) ) ) # ( !\Add0~9_sumout\ & ( \Add0~1_sumout\ & ( (!\Add0~13_sumout\ & !\Add0~5_sumout\) ) ) ) # ( \Add0~9_sumout\ & ( !\Add0~1_sumout\ & ( 
-- !\Add0~13_sumout\ $ (\Add0~5_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101001011010010110100000101000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~13_sumout\,
	datac => \ALT_INV_Add0~5_sumout\,
	datae => \ALT_INV_Add0~9_sumout\,
	dataf => \ALT_INV_Add0~1_sumout\,
	combout => \Decoder_sum0|segments[5]~5_combout\);

-- Location: LABCELL_X88_Y12_N36
\Decoder_sum0|segments[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder_sum0|segments\(6) = ( \Add0~9_sumout\ & ( \Add0~1_sumout\ & ( (\Add0~5_sumout\ & !\Add0~13_sumout\) ) ) ) # ( \Add0~9_sumout\ & ( !\Add0~1_sumout\ & ( (!\Add0~5_sumout\ & !\Add0~13_sumout\) ) ) ) # ( !\Add0~9_sumout\ & ( !\Add0~1_sumout\ & ( 
-- !\Add0~5_sumout\ $ (\Add0~13_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011110000001100000000000000000000000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add0~5_sumout\,
	datac => \ALT_INV_Add0~13_sumout\,
	datae => \ALT_INV_Add0~9_sumout\,
	dataf => \ALT_INV_Add0~1_sumout\,
	combout => \Decoder_sum0|segments\(6));

-- Location: LABCELL_X85_Y12_N12
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( \B[4]~input_o\ ) + ( \A[4]~input_o\ ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( \B[4]~input_o\ ) + ( \A[4]~input_o\ ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: LABCELL_X85_Y12_N15
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( GND ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\);

-- Location: LABCELL_X88_Y12_N45
\Decoder_sum1|segments~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder_sum1|segments~0_combout\ = ( !\Add0~21_sumout\ & ( \Add0~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Add0~21_sumout\,
	dataf => \ALT_INV_Add0~17_sumout\,
	combout => \Decoder_sum1|segments~0_combout\);

-- Location: LABCELL_X88_Y12_N18
\Decoder_sum1|segments~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder_sum1|segments~1_combout\ = ( \Add0~21_sumout\ & ( !\Add0~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Add0~21_sumout\,
	dataf => \ALT_INV_Add0~17_sumout\,
	combout => \Decoder_sum1|segments~1_combout\);

-- Location: LABCELL_X88_Y12_N57
\Decoder_sum1|segments[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder_sum1|segments\(5) = ( \Add0~21_sumout\ & ( \Add0~17_sumout\ ) ) # ( !\Add0~21_sumout\ & ( \Add0~17_sumout\ ) ) # ( \Add0~21_sumout\ & ( !\Add0~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Add0~21_sumout\,
	dataf => \ALT_INV_Add0~17_sumout\,
	combout => \Decoder_sum1|segments\(5));

-- Location: LABCELL_X51_Y5_N3
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


