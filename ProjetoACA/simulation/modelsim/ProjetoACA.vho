-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "12/06/2020 21:15:41"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_NCEO~	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- ~ALTERA_DATA0~	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO~	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_NCSO~	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO~~padout\ : std_logic;
SIGNAL \~ALTERA_NCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_NCSO~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	checkerV4 IS
    PORT (
	a_r : IN std_logic_vector(23 DOWNTO 0);
	error : OUT std_logic
	);
END checkerV4;

-- Design Ports Information
-- error	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[19]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[17]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[18]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[15]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[16]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[0]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[11]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[8]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[23]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[13]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[20]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[10]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[22]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[9]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[12]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[14]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[2]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[1]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[21]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[7]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[4]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[6]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[3]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[5]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF checkerV4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a_r : std_logic_vector(23 DOWNTO 0);
SIGNAL ww_error : std_logic;
SIGNAL \error~output_o\ : std_logic;
SIGNAL \a_r[1]~input_o\ : std_logic;
SIGNAL \a_r[13]~input_o\ : std_logic;
SIGNAL \a_r[14]~input_o\ : std_logic;
SIGNAL \a_r[15]~input_o\ : std_logic;
SIGNAL \decoder|a5to7~0_combout\ : std_logic;
SIGNAL \a_r[21]~input_o\ : std_logic;
SIGNAL \a_r[12]~input_o\ : std_logic;
SIGNAL \a_r[9]~input_o\ : std_logic;
SIGNAL \decoder|a1_4_13~0_combout\ : std_logic;
SIGNAL \a_r[8]~input_o\ : std_logic;
SIGNAL \a_r[11]~input_o\ : std_logic;
SIGNAL \a_r[23]~input_o\ : std_logic;
SIGNAL \decoder|a0_3_15~combout\ : std_logic;
SIGNAL \comp|e1~0_combout\ : std_logic;
SIGNAL \a_r[19]~input_o\ : std_logic;
SIGNAL \a_r[17]~input_o\ : std_logic;
SIGNAL \a_r[18]~input_o\ : std_logic;
SIGNAL \decoder|a9_10~combout\ : std_logic;
SIGNAL \a_r[16]~input_o\ : std_logic;
SIGNAL \decoder|a7to11~combout\ : std_logic;
SIGNAL \a_r[7]~input_o\ : std_logic;
SIGNAL \a_r[22]~input_o\ : std_logic;
SIGNAL \a_r[10]~input_o\ : std_logic;
SIGNAL \comp|e7~0_combout\ : std_logic;
SIGNAL \comp|error~1_combout\ : std_logic;
SIGNAL \a_r[4]~input_o\ : std_logic;
SIGNAL \decoder|a1_3_9_10~0_combout\ : std_logic;
SIGNAL \comp|e2~0_combout\ : std_logic;
SIGNAL \comp|e4~combout\ : std_logic;
SIGNAL \a_r[20]~input_o\ : std_logic;
SIGNAL \a_r[2]~input_o\ : std_logic;
SIGNAL \comp|e2~1_combout\ : std_logic;
SIGNAL \comp|e2~2_combout\ : std_logic;
SIGNAL \a_r[0]~input_o\ : std_logic;
SIGNAL \comp|e0~0_combout\ : std_logic;
SIGNAL \comp|error~0_combout\ : std_logic;
SIGNAL \a_r[6]~input_o\ : std_logic;
SIGNAL \comp|e6~0_combout\ : std_logic;
SIGNAL \comp|e6~1_combout\ : std_logic;
SIGNAL \a_r[5]~input_o\ : std_logic;
SIGNAL \comp|e5~0_combout\ : std_logic;
SIGNAL \a_r[3]~input_o\ : std_logic;
SIGNAL \comp|e3~0_combout\ : std_logic;
SIGNAL \decoder|a0_2_8_9~0_combout\ : std_logic;
SIGNAL \comp|error~2_combout\ : std_logic;
SIGNAL \comp|error~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_a_r <= a_r;
error <= ww_error;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X24_Y0_N9
\error~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comp|error~combout\,
	devoe => ww_devoe,
	o => \error~output_o\);

-- Location: IOIBUF_X22_Y0_N1
\a_r[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(1),
	o => \a_r[1]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\a_r[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(13),
	o => \a_r[13]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\a_r[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(14),
	o => \a_r[14]~input_o\);

-- Location: IOIBUF_X33_Y10_N1
\a_r[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(15),
	o => \a_r[15]~input_o\);

-- Location: LCCOMB_X27_Y4_N14
\decoder|a5to7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a5to7~0_combout\ = \a_r[13]~input_o\ $ (\a_r[14]~input_o\ $ (\a_r[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_r[13]~input_o\,
	datab => \a_r[14]~input_o\,
	datac => \a_r[15]~input_o\,
	combout => \decoder|a5to7~0_combout\);

-- Location: IOIBUF_X31_Y0_N1
\a_r[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(21),
	o => \a_r[21]~input_o\);

-- Location: IOIBUF_X33_Y10_N8
\a_r[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(12),
	o => \a_r[12]~input_o\);

-- Location: IOIBUF_X33_Y11_N1
\a_r[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(9),
	o => \a_r[9]~input_o\);

-- Location: LCCOMB_X27_Y4_N8
\decoder|a1_4_13~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a1_4_13~0_combout\ = \a_r[21]~input_o\ $ (\a_r[12]~input_o\ $ (\a_r[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a_r[21]~input_o\,
	datac => \a_r[12]~input_o\,
	datad => \a_r[9]~input_o\,
	combout => \decoder|a1_4_13~0_combout\);

-- Location: IOIBUF_X26_Y31_N1
\a_r[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(8),
	o => \a_r[8]~input_o\);

-- Location: IOIBUF_X33_Y22_N8
\a_r[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(11),
	o => \a_r[11]~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\a_r[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(23),
	o => \a_r[23]~input_o\);

-- Location: LCCOMB_X27_Y4_N28
\decoder|a0_3_15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a0_3_15~combout\ = \a_r[8]~input_o\ $ (\a_r[11]~input_o\ $ (\a_r[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a_r[8]~input_o\,
	datac => \a_r[11]~input_o\,
	datad => \a_r[23]~input_o\,
	combout => \decoder|a0_3_15~combout\);

-- Location: LCCOMB_X26_Y4_N12
\comp|e1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|e1~0_combout\ = \a_r[1]~input_o\ $ (\decoder|a5to7~0_combout\ $ (\decoder|a1_4_13~0_combout\ $ (\decoder|a0_3_15~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_r[1]~input_o\,
	datab => \decoder|a5to7~0_combout\,
	datac => \decoder|a1_4_13~0_combout\,
	datad => \decoder|a0_3_15~combout\,
	combout => \comp|e1~0_combout\);

-- Location: IOIBUF_X16_Y0_N8
\a_r[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(19),
	o => \a_r[19]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\a_r[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(17),
	o => \a_r[17]~input_o\);

-- Location: IOIBUF_X33_Y14_N1
\a_r[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(18),
	o => \a_r[18]~input_o\);

-- Location: LCCOMB_X27_Y4_N16
\decoder|a9_10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a9_10~combout\ = \a_r[17]~input_o\ $ (\a_r[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a_r[17]~input_o\,
	datac => \a_r[18]~input_o\,
	combout => \decoder|a9_10~combout\);

-- Location: IOIBUF_X29_Y0_N8
\a_r[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(16),
	o => \a_r[16]~input_o\);

-- Location: LCCOMB_X27_Y4_N18
\decoder|a7to11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a7to11~combout\ = \a_r[19]~input_o\ $ (\decoder|a9_10~combout\ $ (\a_r[15]~input_o\ $ (\a_r[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_r[19]~input_o\,
	datab => \decoder|a9_10~combout\,
	datac => \a_r[15]~input_o\,
	datad => \a_r[16]~input_o\,
	combout => \decoder|a7to11~combout\);

-- Location: IOIBUF_X33_Y15_N8
\a_r[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(7),
	o => \a_r[7]~input_o\);

-- Location: IOIBUF_X33_Y11_N8
\a_r[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(22),
	o => \a_r[22]~input_o\);

-- Location: IOIBUF_X33_Y12_N8
\a_r[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(10),
	o => \a_r[10]~input_o\);

-- Location: LCCOMB_X27_Y4_N2
\comp|e7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|e7~0_combout\ = \a_r[22]~input_o\ $ (\a_r[14]~input_o\ $ (\a_r[12]~input_o\ $ (\a_r[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_r[22]~input_o\,
	datab => \a_r[14]~input_o\,
	datac => \a_r[12]~input_o\,
	datad => \a_r[10]~input_o\,
	combout => \comp|e7~0_combout\);

-- Location: LCCOMB_X26_Y4_N6
\comp|error~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|error~1_combout\ = (\comp|e1~0_combout\) # (\decoder|a7to11~combout\ $ (\a_r[7]~input_o\ $ (\comp|e7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp|e1~0_combout\,
	datab => \decoder|a7to11~combout\,
	datac => \a_r[7]~input_o\,
	datad => \comp|e7~0_combout\,
	combout => \comp|error~1_combout\);

-- Location: IOIBUF_X20_Y0_N1
\a_r[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(4),
	o => \a_r[4]~input_o\);

-- Location: LCCOMB_X27_Y4_N30
\decoder|a1_3_9_10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a1_3_9_10~0_combout\ = \a_r[18]~input_o\ $ (\a_r[17]~input_o\ $ (\a_r[11]~input_o\ $ (\a_r[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_r[18]~input_o\,
	datab => \a_r[17]~input_o\,
	datac => \a_r[11]~input_o\,
	datad => \a_r[9]~input_o\,
	combout => \decoder|a1_3_9_10~0_combout\);

-- Location: LCCOMB_X27_Y4_N24
\comp|e2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|e2~0_combout\ = \a_r[22]~input_o\ $ (\decoder|a1_3_9_10~0_combout\ $ (\a_r[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_r[22]~input_o\,
	datac => \decoder|a1_3_9_10~0_combout\,
	datad => \a_r[10]~input_o\,
	combout => \comp|e2~0_combout\);

-- Location: LCCOMB_X26_Y4_N24
\comp|e4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|e4~combout\ = \a_r[4]~input_o\ $ (\a_r[13]~input_o\ $ (\comp|e2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_r[4]~input_o\,
	datab => \a_r[13]~input_o\,
	datad => \comp|e2~0_combout\,
	combout => \comp|e4~combout\);

-- Location: IOIBUF_X26_Y0_N1
\a_r[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(20),
	o => \a_r[20]~input_o\);

-- Location: IOIBUF_X33_Y12_N1
\a_r[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(2),
	o => \a_r[2]~input_o\);

-- Location: LCCOMB_X27_Y4_N10
\comp|e2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|e2~1_combout\ = \a_r[12]~input_o\ $ (\a_r[14]~input_o\ $ (\a_r[8]~input_o\ $ (\a_r[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_r[12]~input_o\,
	datab => \a_r[14]~input_o\,
	datac => \a_r[8]~input_o\,
	datad => \a_r[23]~input_o\,
	combout => \comp|e2~1_combout\);

-- Location: LCCOMB_X27_Y4_N4
\comp|e2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|e2~2_combout\ = \a_r[19]~input_o\ $ (\a_r[20]~input_o\ $ (\a_r[2]~input_o\ $ (\comp|e2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_r[19]~input_o\,
	datab => \a_r[20]~input_o\,
	datac => \a_r[2]~input_o\,
	datad => \comp|e2~1_combout\,
	combout => \comp|e2~2_combout\);

-- Location: IOIBUF_X22_Y0_N8
\a_r[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(0),
	o => \a_r[0]~input_o\);

-- Location: LCCOMB_X26_Y4_N0
\comp|e0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|e0~0_combout\ = \a_r[20]~input_o\ $ (\a_r[13]~input_o\ $ (\a_r[0]~input_o\ $ (\decoder|a0_3_15~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_r[20]~input_o\,
	datab => \a_r[13]~input_o\,
	datac => \a_r[0]~input_o\,
	datad => \decoder|a0_3_15~combout\,
	combout => \comp|e0~0_combout\);

-- Location: LCCOMB_X26_Y4_N26
\comp|error~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|error~0_combout\ = (\comp|e2~2_combout\ & ((\decoder|a7to11~combout\ $ (\comp|e0~0_combout\)) # (!\comp|e2~0_combout\))) # (!\comp|e2~2_combout\ & ((\comp|e2~0_combout\) # (\decoder|a7to11~combout\ $ (\comp|e0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp|e2~2_combout\,
	datab => \decoder|a7to11~combout\,
	datac => \comp|e0~0_combout\,
	datad => \comp|e2~0_combout\,
	combout => \comp|error~0_combout\);

-- Location: IOIBUF_X20_Y0_N8
\a_r[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(6),
	o => \a_r[6]~input_o\);

-- Location: LCCOMB_X27_Y4_N12
\comp|e6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|e6~0_combout\ = \a_r[13]~input_o\ $ (\a_r[14]~input_o\ $ (\a_r[15]~input_o\ $ (\a_r[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_r[13]~input_o\,
	datab => \a_r[14]~input_o\,
	datac => \a_r[15]~input_o\,
	datad => \a_r[6]~input_o\,
	combout => \comp|e6~0_combout\);

-- Location: LCCOMB_X27_Y4_N22
\comp|e6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|e6~1_combout\ = \comp|e6~0_combout\ $ (\a_r[21]~input_o\ $ (\decoder|a1_3_9_10~0_combout\ $ (\a_r[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp|e6~0_combout\,
	datab => \a_r[21]~input_o\,
	datac => \decoder|a1_3_9_10~0_combout\,
	datad => \a_r[16]~input_o\,
	combout => \comp|e6~1_combout\);

-- Location: IOIBUF_X33_Y16_N22
\a_r[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(5),
	o => \a_r[5]~input_o\);

-- Location: LCCOMB_X27_Y4_N20
\comp|e5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|e5~0_combout\ = \a_r[12]~input_o\ $ (\a_r[20]~input_o\ $ (\decoder|a5to7~0_combout\ $ (\a_r[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_r[12]~input_o\,
	datab => \a_r[20]~input_o\,
	datac => \decoder|a5to7~0_combout\,
	datad => \a_r[5]~input_o\,
	combout => \comp|e5~0_combout\);

-- Location: IOIBUF_X29_Y0_N1
\a_r[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(3),
	o => \a_r[3]~input_o\);

-- Location: LCCOMB_X27_Y4_N26
\comp|e3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|e3~0_combout\ = \a_r[3]~input_o\ $ (\a_r[21]~input_o\ $ (\a_r[12]~input_o\ $ (\a_r[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_r[3]~input_o\,
	datab => \a_r[21]~input_o\,
	datac => \a_r[12]~input_o\,
	datad => \a_r[9]~input_o\,
	combout => \comp|e3~0_combout\);

-- Location: LCCOMB_X27_Y4_N0
\decoder|a0_2_8_9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|a0_2_8_9~0_combout\ = \a_r[16]~input_o\ $ (\a_r[17]~input_o\ $ (\a_r[8]~input_o\ $ (\a_r[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_r[16]~input_o\,
	datab => \a_r[17]~input_o\,
	datac => \a_r[8]~input_o\,
	datad => \a_r[10]~input_o\,
	combout => \decoder|a0_2_8_9~0_combout\);

-- Location: LCCOMB_X27_Y4_N6
\comp|error~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|error~2_combout\ = (\comp|e6~1_combout\) # ((\comp|e5~0_combout\ & ((!\decoder|a0_2_8_9~0_combout\) # (!\comp|e3~0_combout\))) # (!\comp|e5~0_combout\ & ((\comp|e3~0_combout\) # (\decoder|a0_2_8_9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp|e6~1_combout\,
	datab => \comp|e5~0_combout\,
	datac => \comp|e3~0_combout\,
	datad => \decoder|a0_2_8_9~0_combout\,
	combout => \comp|error~2_combout\);

-- Location: LCCOMB_X26_Y4_N10
\comp|error\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|error~combout\ = (\comp|error~1_combout\) # ((\comp|e4~combout\) # ((\comp|error~0_combout\) # (\comp|error~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp|error~1_combout\,
	datab => \comp|e4~combout\,
	datac => \comp|error~0_combout\,
	datad => \comp|error~2_combout\,
	combout => \comp|error~combout\);

ww_error <= \error~output_o\;
END structure;


