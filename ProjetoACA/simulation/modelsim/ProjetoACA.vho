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

-- DATE "12/03/2020 20:40:10"

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

ENTITY 	encoderV1 IS
    PORT (
	a : IN std_logic_vector(15 DOWNTO 0);
	r : OUT std_logic_vector(23 DOWNTO 0)
	);
END encoderV1;

-- Design Ports Information
-- r[0]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[1]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[2]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[3]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[4]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[5]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[6]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[7]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[8]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[9]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[10]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[11]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[12]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[13]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[14]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[15]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[16]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[17]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[18]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[19]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[20]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[21]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[22]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[23]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[8]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[9]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[12]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[15]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[10]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[11]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[13]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[14]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF encoderV1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_r : std_logic_vector(23 DOWNTO 0);
SIGNAL \r[0]~output_o\ : std_logic;
SIGNAL \r[1]~output_o\ : std_logic;
SIGNAL \r[2]~output_o\ : std_logic;
SIGNAL \r[3]~output_o\ : std_logic;
SIGNAL \r[4]~output_o\ : std_logic;
SIGNAL \r[5]~output_o\ : std_logic;
SIGNAL \r[6]~output_o\ : std_logic;
SIGNAL \r[7]~output_o\ : std_logic;
SIGNAL \r[8]~output_o\ : std_logic;
SIGNAL \r[9]~output_o\ : std_logic;
SIGNAL \r[10]~output_o\ : std_logic;
SIGNAL \r[11]~output_o\ : std_logic;
SIGNAL \r[12]~output_o\ : std_logic;
SIGNAL \r[13]~output_o\ : std_logic;
SIGNAL \r[14]~output_o\ : std_logic;
SIGNAL \r[15]~output_o\ : std_logic;
SIGNAL \r[16]~output_o\ : std_logic;
SIGNAL \r[17]~output_o\ : std_logic;
SIGNAL \r[18]~output_o\ : std_logic;
SIGNAL \r[19]~output_o\ : std_logic;
SIGNAL \r[20]~output_o\ : std_logic;
SIGNAL \r[21]~output_o\ : std_logic;
SIGNAL \r[22]~output_o\ : std_logic;
SIGNAL \r[23]~output_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \a[15]~input_o\ : std_logic;
SIGNAL \resto~6_combout\ : std_logic;
SIGNAL \a[8]~input_o\ : std_logic;
SIGNAL \a[9]~input_o\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \resto~4_combout\ : std_logic;
SIGNAL \a[12]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \resto~5_combout\ : std_logic;
SIGNAL \a[11]~input_o\ : std_logic;
SIGNAL \a[10]~input_o\ : std_logic;
SIGNAL \resto~7_combout\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \resto~8_combout\ : std_logic;
SIGNAL \a[13]~input_o\ : std_logic;
SIGNAL \resto~9_combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \resto~10_combout\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \resto~13_combout\ : std_logic;
SIGNAL \a[14]~input_o\ : std_logic;
SIGNAL \resto~11_combout\ : std_logic;
SIGNAL \resto~12_combout\ : std_logic;
SIGNAL \resto~20_combout\ : std_logic;
SIGNAL \resto~14_combout\ : std_logic;
SIGNAL \resto~15_combout\ : std_logic;
SIGNAL \resto~16_combout\ : std_logic;
SIGNAL \resto~17_combout\ : std_logic;
SIGNAL \resto~21_combout\ : std_logic;
SIGNAL \resto~18_combout\ : std_logic;
SIGNAL \resto~19_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_a <= a;
r <= ww_r;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X33_Y14_N9
\r[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \resto~7_combout\,
	devoe => ww_devoe,
	o => \r[0]~output_o\);

-- Location: IOOBUF_X33_Y11_N9
\r[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \resto~10_combout\,
	devoe => ww_devoe,
	o => \r[1]~output_o\);

-- Location: IOOBUF_X33_Y15_N2
\r[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \resto~20_combout\,
	devoe => ww_devoe,
	o => \r[2]~output_o\);

-- Location: IOOBUF_X33_Y22_N9
\r[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \resto~15_combout\,
	devoe => ww_devoe,
	o => \r[3]~output_o\);

-- Location: IOOBUF_X33_Y15_N9
\r[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \resto~17_combout\,
	devoe => ww_devoe,
	o => \r[4]~output_o\);

-- Location: IOOBUF_X33_Y11_N2
\r[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \resto~21_combout\,
	devoe => ww_devoe,
	o => \r[5]~output_o\);

-- Location: IOOBUF_X33_Y14_N2
\r[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \resto~18_combout\,
	devoe => ww_devoe,
	o => \r[6]~output_o\);

-- Location: IOOBUF_X33_Y22_N2
\r[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \resto~19_combout\,
	devoe => ww_devoe,
	o => \r[7]~output_o\);

-- Location: IOOBUF_X33_Y28_N9
\r[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a[0]~input_o\,
	devoe => ww_devoe,
	o => \r[8]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\r[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a[1]~input_o\,
	devoe => ww_devoe,
	o => \r[9]~output_o\);

-- Location: IOOBUF_X31_Y31_N2
\r[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a[2]~input_o\,
	devoe => ww_devoe,
	o => \r[10]~output_o\);

-- Location: IOOBUF_X33_Y24_N9
\r[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a[3]~input_o\,
	devoe => ww_devoe,
	o => \r[11]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\r[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a[4]~input_o\,
	devoe => ww_devoe,
	o => \r[12]~output_o\);

-- Location: IOOBUF_X33_Y12_N2
\r[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a[5]~input_o\,
	devoe => ww_devoe,
	o => \r[13]~output_o\);

-- Location: IOOBUF_X33_Y27_N2
\r[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a[6]~input_o\,
	devoe => ww_devoe,
	o => \r[14]~output_o\);

-- Location: IOOBUF_X33_Y12_N9
\r[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a[7]~input_o\,
	devoe => ww_devoe,
	o => \r[15]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\r[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a[8]~input_o\,
	devoe => ww_devoe,
	o => \r[16]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\r[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a[9]~input_o\,
	devoe => ww_devoe,
	o => \r[17]~output_o\);

-- Location: IOOBUF_X33_Y10_N2
\r[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a[10]~input_o\,
	devoe => ww_devoe,
	o => \r[18]~output_o\);

-- Location: IOOBUF_X26_Y31_N2
\r[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a[11]~input_o\,
	devoe => ww_devoe,
	o => \r[19]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\r[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a[12]~input_o\,
	devoe => ww_devoe,
	o => \r[20]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\r[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a[13]~input_o\,
	devoe => ww_devoe,
	o => \r[21]~output_o\);

-- Location: IOOBUF_X33_Y25_N9
\r[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a[14]~input_o\,
	devoe => ww_devoe,
	o => \r[22]~output_o\);

-- Location: IOOBUF_X29_Y31_N9
\r[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a[15]~input_o\,
	devoe => ww_devoe,
	o => \r[23]~output_o\);

-- Location: IOIBUF_X33_Y24_N1
\a[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: IOIBUF_X26_Y31_N8
\a[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(15),
	o => \a[15]~input_o\);

-- Location: LCCOMB_X32_Y15_N10
\resto~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \resto~6_combout\ = \a[3]~input_o\ $ (\a[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[3]~input_o\,
	datac => \a[15]~input_o\,
	combout => \resto~6_combout\);

-- Location: IOIBUF_X26_Y0_N8
\a[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(8),
	o => \a[8]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\a[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(9),
	o => \a[9]~input_o\);

-- Location: IOIBUF_X33_Y16_N1
\a[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: IOIBUF_X33_Y16_N8
\a[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: LCCOMB_X32_Y15_N16
\resto~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \resto~4_combout\ = \a[8]~input_o\ $ (\a[9]~input_o\ $ (\a[7]~input_o\ $ (\a[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[8]~input_o\,
	datab => \a[9]~input_o\,
	datac => \a[7]~input_o\,
	datad => \a[5]~input_o\,
	combout => \resto~4_combout\);

-- Location: IOIBUF_X26_Y0_N1
\a[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(12),
	o => \a[12]~input_o\);

-- Location: IOIBUF_X33_Y28_N1
\a[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: LCCOMB_X32_Y16_N8
\resto~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \resto~5_combout\ = \resto~4_combout\ $ (\a[12]~input_o\ $ (\a[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \resto~4_combout\,
	datac => \a[12]~input_o\,
	datad => \a[0]~input_o\,
	combout => \resto~5_combout\);

-- Location: IOIBUF_X29_Y31_N1
\a[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(11),
	o => \a[11]~input_o\);

-- Location: IOIBUF_X33_Y10_N8
\a[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(10),
	o => \a[10]~input_o\);

-- Location: LCCOMB_X32_Y15_N4
\resto~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \resto~7_combout\ = \resto~6_combout\ $ (\resto~5_combout\ $ (\a[11]~input_o\ $ (\a[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resto~6_combout\,
	datab => \resto~5_combout\,
	datac => \a[11]~input_o\,
	datad => \a[10]~input_o\,
	combout => \resto~7_combout\);

-- Location: IOIBUF_X31_Y0_N8
\a[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: IOIBUF_X33_Y27_N8
\a[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: LCCOMB_X32_Y15_N22
\resto~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \resto~8_combout\ = \a[4]~input_o\ $ (\a[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[4]~input_o\,
	datac => \a[6]~input_o\,
	combout => \resto~8_combout\);

-- Location: IOIBUF_X29_Y0_N1
\a[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(13),
	o => \a[13]~input_o\);

-- Location: LCCOMB_X32_Y15_N24
\resto~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \resto~9_combout\ = \resto~8_combout\ $ (\a[13]~input_o\ $ (\a[7]~input_o\ $ (\a[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resto~8_combout\,
	datab => \a[13]~input_o\,
	datac => \a[7]~input_o\,
	datad => \a[5]~input_o\,
	combout => \resto~9_combout\);

-- Location: IOIBUF_X22_Y0_N8
\a[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: LCCOMB_X32_Y15_N18
\resto~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \resto~10_combout\ = \resto~6_combout\ $ (\resto~9_combout\ $ (\a[1]~input_o\ $ (\a[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resto~6_combout\,
	datab => \resto~9_combout\,
	datac => \a[1]~input_o\,
	datad => \a[0]~input_o\,
	combout => \resto~10_combout\);

-- Location: IOIBUF_X31_Y31_N8
\a[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: LCCOMB_X32_Y15_N30
\resto~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \resto~13_combout\ = \a[2]~input_o\ $ (\a[1]~input_o\ $ (\a[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datac => \a[1]~input_o\,
	datad => \a[0]~input_o\,
	combout => \resto~13_combout\);

-- Location: IOIBUF_X33_Y25_N1
\a[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(14),
	o => \a[14]~input_o\);

-- Location: LCCOMB_X32_Y15_N12
\resto~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \resto~11_combout\ = \a[9]~input_o\ $ (\a[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a[9]~input_o\,
	datad => \a[14]~input_o\,
	combout => \resto~11_combout\);

-- Location: LCCOMB_X31_Y15_N8
\resto~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \resto~12_combout\ = \a[10]~input_o\ $ (\resto~11_combout\ $ (\a[11]~input_o\ $ (\resto~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[10]~input_o\,
	datab => \resto~11_combout\,
	datac => \a[11]~input_o\,
	datad => \resto~8_combout\,
	combout => \resto~12_combout\);

-- Location: LCCOMB_X32_Y15_N20
\resto~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \resto~20_combout\ = \a[15]~input_o\ $ (\a[3]~input_o\ $ (\resto~13_combout\ $ (\resto~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[15]~input_o\,
	datab => \a[3]~input_o\,
	datac => \resto~13_combout\,
	datad => \resto~12_combout\,
	combout => \resto~20_combout\);

-- Location: LCCOMB_X32_Y15_N0
\resto~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \resto~14_combout\ = \a[2]~input_o\ $ (\a[4]~input_o\ $ (\a[1]~input_o\ $ (\a[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \a[4]~input_o\,
	datac => \a[1]~input_o\,
	datad => \a[0]~input_o\,
	combout => \resto~14_combout\);

-- Location: LCCOMB_X32_Y15_N26
\resto~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \resto~15_combout\ = \a[8]~input_o\ $ (\a[13]~input_o\ $ (\a[9]~input_o\ $ (\resto~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[8]~input_o\,
	datab => \a[13]~input_o\,
	datac => \a[9]~input_o\,
	datad => \resto~14_combout\,
	combout => \resto~15_combout\);

-- Location: LCCOMB_X32_Y15_N28
\resto~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \resto~16_combout\ = \a[1]~input_o\ $ (\a[3]~input_o\ $ (\a[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[1]~input_o\,
	datac => \a[3]~input_o\,
	datad => \a[10]~input_o\,
	combout => \resto~16_combout\);

-- Location: LCCOMB_X32_Y15_N14
\resto~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \resto~17_combout\ = \resto~11_combout\ $ (\resto~16_combout\ $ (\a[2]~input_o\ $ (\a[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resto~11_combout\,
	datab => \resto~16_combout\,
	datac => \a[2]~input_o\,
	datad => \a[5]~input_o\,
	combout => \resto~17_combout\);

-- Location: LCCOMB_X32_Y15_N6
\resto~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \resto~21_combout\ = \a[2]~input_o\ $ (\a[4]~input_o\ $ (\a[6]~input_o\ $ (\resto~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \a[4]~input_o\,
	datac => \a[6]~input_o\,
	datad => \resto~5_combout\,
	combout => \resto~21_combout\);

-- Location: LCCOMB_X32_Y15_N8
\resto~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \resto~18_combout\ = \resto~4_combout\ $ (\resto~16_combout\ $ (\a[6]~input_o\ $ (\a[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resto~4_combout\,
	datab => \resto~16_combout\,
	datac => \a[6]~input_o\,
	datad => \a[13]~input_o\,
	combout => \resto~18_combout\);

-- Location: LCCOMB_X32_Y15_N2
\resto~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \resto~19_combout\ = \resto~12_combout\ $ (\a[2]~input_o\ $ (\a[7]~input_o\ $ (\a[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resto~12_combout\,
	datab => \a[2]~input_o\,
	datac => \a[7]~input_o\,
	datad => \a[8]~input_o\,
	combout => \resto~19_combout\);

ww_r(0) <= \r[0]~output_o\;

ww_r(1) <= \r[1]~output_o\;

ww_r(2) <= \r[2]~output_o\;

ww_r(3) <= \r[3]~output_o\;

ww_r(4) <= \r[4]~output_o\;

ww_r(5) <= \r[5]~output_o\;

ww_r(6) <= \r[6]~output_o\;

ww_r(7) <= \r[7]~output_o\;

ww_r(8) <= \r[8]~output_o\;

ww_r(9) <= \r[9]~output_o\;

ww_r(10) <= \r[10]~output_o\;

ww_r(11) <= \r[11]~output_o\;

ww_r(12) <= \r[12]~output_o\;

ww_r(13) <= \r[13]~output_o\;

ww_r(14) <= \r[14]~output_o\;

ww_r(15) <= \r[15]~output_o\;

ww_r(16) <= \r[16]~output_o\;

ww_r(17) <= \r[17]~output_o\;

ww_r(18) <= \r[18]~output_o\;

ww_r(19) <= \r[19]~output_o\;

ww_r(20) <= \r[20]~output_o\;

ww_r(21) <= \r[21]~output_o\;

ww_r(22) <= \r[22]~output_o\;

ww_r(23) <= \r[23]~output_o\;
END structure;


