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

-- DATE "12/08/2020 17:13:01"

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

ENTITY 	checkerV5 IS
    PORT (
	a_r : IN std_logic_vector(23 DOWNTO 0);
	error : BUFFER std_logic
	);
END checkerV5;

-- Design Ports Information
-- error	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[19]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[15]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[16]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[17]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[18]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[7]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[10]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[22]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[12]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[14]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[9]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[11]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[20]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[8]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[23]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[2]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[13]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[0]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[6]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[21]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[4]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[1]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[5]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[3]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF checkerV5 IS
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
SIGNAL \a_r[22]~input_o\ : std_logic;
SIGNAL \a_r[12]~input_o\ : std_logic;
SIGNAL \a_r[9]~input_o\ : std_logic;
SIGNAL \a_r[3]~input_o\ : std_logic;
SIGNAL \comp|xor3|y~0_combout\ : std_logic;
SIGNAL \a_r[15]~input_o\ : std_logic;
SIGNAL \a_r[16]~input_o\ : std_logic;
SIGNAL \a_r[8]~input_o\ : std_logic;
SIGNAL \a_r[10]~input_o\ : std_logic;
SIGNAL \a_r[17]~input_o\ : std_logic;
SIGNAL \decoder|xor17|y~0_combout\ : std_logic;
SIGNAL \a_r[20]~input_o\ : std_logic;
SIGNAL \a_r[13]~input_o\ : std_logic;
SIGNAL \a_r[5]~input_o\ : std_logic;
SIGNAL \a_r[14]~input_o\ : std_logic;
SIGNAL \comp|xor5|y~0_combout\ : std_logic;
SIGNAL \comp|xor5|y~1_combout\ : std_logic;
SIGNAL \a_r[23]~input_o\ : std_logic;
SIGNAL \a_r[11]~input_o\ : std_logic;
SIGNAL \comp|xor0|y~0_combout\ : std_logic;
SIGNAL \a_r[1]~input_o\ : std_logic;
SIGNAL \comp|xor1|y~0_combout\ : std_logic;
SIGNAL \comp|xor1|y~1_combout\ : std_logic;
SIGNAL \comp|or8|y~1_combout\ : std_logic;
SIGNAL \comp|xor7|y~0_combout\ : std_logic;
SIGNAL \a_r[18]~input_o\ : std_logic;
SIGNAL \decoder|xor5|y~0_combout\ : std_logic;
SIGNAL \a_r[19]~input_o\ : std_logic;
SIGNAL \a_r[7]~input_o\ : std_logic;
SIGNAL \comp|xor7|y~1_combout\ : std_logic;
SIGNAL \a_r[21]~input_o\ : std_logic;
SIGNAL \decoder|xor11|y~0_combout\ : std_logic;
SIGNAL \comp|xor6|y~0_combout\ : std_logic;
SIGNAL \a_r[6]~input_o\ : std_logic;
SIGNAL \comp|xor6|y~1_combout\ : std_logic;
SIGNAL \a_r[0]~input_o\ : std_logic;
SIGNAL \comp|xor0|y~1_combout\ : std_logic;
SIGNAL \comp|xor0|y~2_combout\ : std_logic;
SIGNAL \a_r[4]~input_o\ : std_logic;
SIGNAL \comp|xor4|y~0_combout\ : std_logic;
SIGNAL \comp|or8|y~0_combout\ : std_logic;
SIGNAL \a_r[2]~input_o\ : std_logic;
SIGNAL \comp|xor2|y~0_combout\ : std_logic;
SIGNAL \comp|xor2|y~1_combout\ : std_logic;
SIGNAL \comp|or8|y~combout\ : std_logic;

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

-- Location: IOOBUF_X33_Y11_N9
\error~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comp|or8|y~combout\,
	devoe => ww_devoe,
	o => \error~output_o\);

-- Location: IOIBUF_X33_Y27_N1
\a_r[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(22),
	o => \a_r[22]~input_o\);

-- Location: IOIBUF_X26_Y31_N8
\a_r[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(12),
	o => \a_r[12]~input_o\);

-- Location: IOIBUF_X33_Y24_N8
\a_r[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(9),
	o => \a_r[9]~input_o\);

-- Location: IOIBUF_X33_Y16_N22
\a_r[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(3),
	o => \a_r[3]~input_o\);

-- Location: LCCOMB_X27_Y23_N24
\comp|xor3|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|xor3|y~0_combout\ = \a_r[22]~input_o\ $ (\a_r[12]~input_o\ $ (\a_r[9]~input_o\ $ (\a_r[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_r[22]~input_o\,
	datab => \a_r[12]~input_o\,
	datac => \a_r[9]~input_o\,
	datad => \a_r[3]~input_o\,
	combout => \comp|xor3|y~0_combout\);

-- Location: IOIBUF_X16_Y0_N1
\a_r[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(15),
	o => \a_r[15]~input_o\);

-- Location: IOIBUF_X33_Y15_N1
\a_r[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(16),
	o => \a_r[16]~input_o\);

-- Location: IOIBUF_X22_Y31_N8
\a_r[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(8),
	o => \a_r[8]~input_o\);

-- Location: IOIBUF_X33_Y22_N1
\a_r[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(10),
	o => \a_r[10]~input_o\);

-- Location: IOIBUF_X33_Y25_N1
\a_r[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(17),
	o => \a_r[17]~input_o\);

-- Location: LCCOMB_X27_Y19_N16
\decoder|xor17|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|xor17|y~0_combout\ = \a_r[16]~input_o\ $ (\a_r[8]~input_o\ $ (\a_r[10]~input_o\ $ (\a_r[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_r[16]~input_o\,
	datab => \a_r[8]~input_o\,
	datac => \a_r[10]~input_o\,
	datad => \a_r[17]~input_o\,
	combout => \decoder|xor17|y~0_combout\);

-- Location: IOIBUF_X33_Y15_N8
\a_r[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(20),
	o => \a_r[20]~input_o\);

-- Location: IOIBUF_X33_Y25_N8
\a_r[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(13),
	o => \a_r[13]~input_o\);

-- Location: IOIBUF_X24_Y31_N1
\a_r[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(5),
	o => \a_r[5]~input_o\);

-- Location: IOIBUF_X33_Y24_N1
\a_r[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(14),
	o => \a_r[14]~input_o\);

-- Location: LCCOMB_X27_Y23_N22
\comp|xor5|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|xor5|y~0_combout\ = \a_r[13]~input_o\ $ (\a_r[5]~input_o\ $ (\a_r[12]~input_o\ $ (\a_r[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_r[13]~input_o\,
	datab => \a_r[5]~input_o\,
	datac => \a_r[12]~input_o\,
	datad => \a_r[14]~input_o\,
	combout => \comp|xor5|y~0_combout\);

-- Location: LCCOMB_X27_Y19_N2
\comp|xor5|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|xor5|y~1_combout\ = \a_r[15]~input_o\ $ (\decoder|xor17|y~0_combout\ $ (\a_r[20]~input_o\ $ (\comp|xor5|y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_r[15]~input_o\,
	datab => \decoder|xor17|y~0_combout\,
	datac => \a_r[20]~input_o\,
	datad => \comp|xor5|y~0_combout\,
	combout => \comp|xor5|y~1_combout\);

-- Location: IOIBUF_X26_Y31_N1
\a_r[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(23),
	o => \a_r[23]~input_o\);

-- Location: IOIBUF_X33_Y14_N1
\a_r[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(11),
	o => \a_r[11]~input_o\);

-- Location: LCCOMB_X27_Y19_N10
\comp|xor0|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|xor0|y~0_combout\ = \a_r[23]~input_o\ $ (\a_r[8]~input_o\ $ (\a_r[13]~input_o\ $ (\a_r[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_r[23]~input_o\,
	datab => \a_r[8]~input_o\,
	datac => \a_r[13]~input_o\,
	datad => \a_r[11]~input_o\,
	combout => \comp|xor0|y~0_combout\);

-- Location: IOIBUF_X29_Y31_N8
\a_r[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(1),
	o => \a_r[1]~input_o\);

-- Location: LCCOMB_X27_Y23_N12
\comp|xor1|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|xor1|y~0_combout\ = \a_r[1]~input_o\ $ (\a_r[12]~input_o\ $ (\a_r[9]~input_o\ $ (\a_r[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_r[1]~input_o\,
	datab => \a_r[12]~input_o\,
	datac => \a_r[9]~input_o\,
	datad => \a_r[22]~input_o\,
	combout => \comp|xor1|y~0_combout\);

-- Location: LCCOMB_X27_Y19_N22
\comp|xor1|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|xor1|y~1_combout\ = \comp|xor0|y~0_combout\ $ (\a_r[14]~input_o\ $ (\comp|xor1|y~0_combout\ $ (\a_r[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp|xor0|y~0_combout\,
	datab => \a_r[14]~input_o\,
	datac => \comp|xor1|y~0_combout\,
	datad => \a_r[15]~input_o\,
	combout => \comp|xor1|y~1_combout\);

-- Location: LCCOMB_X27_Y19_N20
\comp|or8|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|or8|y~1_combout\ = (\comp|xor5|y~1_combout\) # ((\comp|xor1|y~1_combout\) # (\comp|xor3|y~0_combout\ $ (\decoder|xor17|y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp|xor3|y~0_combout\,
	datab => \comp|xor5|y~1_combout\,
	datac => \comp|xor1|y~1_combout\,
	datad => \decoder|xor17|y~0_combout\,
	combout => \comp|or8|y~1_combout\);

-- Location: LCCOMB_X27_Y23_N16
\comp|xor7|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|xor7|y~0_combout\ = \a_r[22]~input_o\ $ (\a_r[12]~input_o\ $ (\a_r[10]~input_o\ $ (\a_r[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_r[22]~input_o\,
	datab => \a_r[12]~input_o\,
	datac => \a_r[10]~input_o\,
	datad => \a_r[14]~input_o\,
	combout => \comp|xor7|y~0_combout\);

-- Location: IOIBUF_X33_Y22_N8
\a_r[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(18),
	o => \a_r[18]~input_o\);

-- Location: LCCOMB_X27_Y19_N0
\decoder|xor5|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|xor5|y~0_combout\ = \a_r[15]~input_o\ $ (\a_r[18]~input_o\ $ (\a_r[16]~input_o\ $ (\a_r[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_r[15]~input_o\,
	datab => \a_r[18]~input_o\,
	datac => \a_r[16]~input_o\,
	datad => \a_r[17]~input_o\,
	combout => \decoder|xor5|y~0_combout\);

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

-- Location: IOIBUF_X33_Y10_N8
\a_r[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(7),
	o => \a_r[7]~input_o\);

-- Location: LCCOMB_X27_Y19_N18
\comp|xor7|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|xor7|y~1_combout\ = \comp|xor7|y~0_combout\ $ (\decoder|xor5|y~0_combout\ $ (\a_r[19]~input_o\ $ (\a_r[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp|xor7|y~0_combout\,
	datab => \decoder|xor5|y~0_combout\,
	datac => \a_r[19]~input_o\,
	datad => \a_r[7]~input_o\,
	combout => \comp|xor7|y~1_combout\);

-- Location: IOIBUF_X24_Y31_N8
\a_r[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(21),
	o => \a_r[21]~input_o\);

-- Location: LCCOMB_X27_Y19_N28
\decoder|xor11|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|xor11|y~0_combout\ = \a_r[11]~input_o\ $ (\a_r[18]~input_o\ $ (\a_r[9]~input_o\ $ (\a_r[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_r[11]~input_o\,
	datab => \a_r[18]~input_o\,
	datac => \a_r[9]~input_o\,
	datad => \a_r[17]~input_o\,
	combout => \decoder|xor11|y~0_combout\);

-- Location: LCCOMB_X27_Y19_N8
\comp|xor6|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|xor6|y~0_combout\ = \a_r[16]~input_o\ $ (\a_r[14]~input_o\ $ (\a_r[13]~input_o\ $ (\a_r[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_r[16]~input_o\,
	datab => \a_r[14]~input_o\,
	datac => \a_r[13]~input_o\,
	datad => \a_r[15]~input_o\,
	combout => \comp|xor6|y~0_combout\);

-- Location: IOIBUF_X33_Y12_N8
\a_r[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(6),
	o => \a_r[6]~input_o\);

-- Location: LCCOMB_X27_Y19_N26
\comp|xor6|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|xor6|y~1_combout\ = \a_r[21]~input_o\ $ (\decoder|xor11|y~0_combout\ $ (\comp|xor6|y~0_combout\ $ (\a_r[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_r[21]~input_o\,
	datab => \decoder|xor11|y~0_combout\,
	datac => \comp|xor6|y~0_combout\,
	datad => \a_r[6]~input_o\,
	combout => \comp|xor6|y~1_combout\);

-- Location: IOIBUF_X33_Y14_N8
\a_r[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(0),
	o => \a_r[0]~input_o\);

-- Location: LCCOMB_X27_Y19_N12
\comp|xor0|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|xor0|y~1_combout\ = \a_r[0]~input_o\ $ (\a_r[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_r[0]~input_o\,
	datac => \a_r[20]~input_o\,
	combout => \comp|xor0|y~1_combout\);

-- Location: LCCOMB_X27_Y19_N30
\comp|xor0|y~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|xor0|y~2_combout\ = \comp|xor0|y~0_combout\ $ (\decoder|xor5|y~0_combout\ $ (\a_r[19]~input_o\ $ (\comp|xor0|y~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp|xor0|y~0_combout\,
	datab => \decoder|xor5|y~0_combout\,
	datac => \a_r[19]~input_o\,
	datad => \comp|xor0|y~1_combout\,
	combout => \comp|xor0|y~2_combout\);

-- Location: IOIBUF_X33_Y27_N8
\a_r[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(4),
	o => \a_r[4]~input_o\);

-- Location: LCCOMB_X27_Y23_N18
\comp|xor4|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|xor4|y~0_combout\ = \a_r[13]~input_o\ $ (\a_r[4]~input_o\ $ (\a_r[10]~input_o\ $ (\a_r[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_r[13]~input_o\,
	datab => \a_r[4]~input_o\,
	datac => \a_r[10]~input_o\,
	datad => \a_r[22]~input_o\,
	combout => \comp|xor4|y~0_combout\);

-- Location: LCCOMB_X27_Y19_N4
\comp|or8|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|or8|y~0_combout\ = (\comp|xor6|y~1_combout\) # ((\comp|xor0|y~2_combout\) # (\decoder|xor11|y~0_combout\ $ (\comp|xor4|y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp|xor6|y~1_combout\,
	datab => \decoder|xor11|y~0_combout\,
	datac => \comp|xor0|y~2_combout\,
	datad => \comp|xor4|y~0_combout\,
	combout => \comp|or8|y~0_combout\);

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

-- Location: LCCOMB_X27_Y19_N14
\comp|xor2|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|xor2|y~0_combout\ = \a_r[19]~input_o\ $ (\a_r[8]~input_o\ $ (\a_r[23]~input_o\ $ (\a_r[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_r[19]~input_o\,
	datab => \a_r[8]~input_o\,
	datac => \a_r[23]~input_o\,
	datad => \a_r[2]~input_o\,
	combout => \comp|xor2|y~0_combout\);

-- Location: LCCOMB_X27_Y19_N24
\comp|xor2|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|xor2|y~1_combout\ = \comp|xor7|y~0_combout\ $ (\comp|xor2|y~0_combout\ $ (\a_r[20]~input_o\ $ (\decoder|xor11|y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp|xor7|y~0_combout\,
	datab => \comp|xor2|y~0_combout\,
	datac => \a_r[20]~input_o\,
	datad => \decoder|xor11|y~0_combout\,
	combout => \comp|xor2|y~1_combout\);

-- Location: LCCOMB_X27_Y19_N6
\comp|or8|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|or8|y~combout\ = (\comp|or8|y~1_combout\) # ((\comp|xor7|y~1_combout\) # ((\comp|or8|y~0_combout\) # (\comp|xor2|y~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp|or8|y~1_combout\,
	datab => \comp|xor7|y~1_combout\,
	datac => \comp|or8|y~0_combout\,
	datad => \comp|xor2|y~1_combout\,
	combout => \comp|or8|y~combout\);

ww_error <= \error~output_o\;
END structure;


