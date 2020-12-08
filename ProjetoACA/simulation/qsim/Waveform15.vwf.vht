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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "12/07/2020 18:50:52"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          encoderSerie
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY encoderSerie_vhd_vec_tst IS
END encoderSerie_vhd_vec_tst;
ARCHITECTURE encoderSerie_arch OF encoderSerie_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL nGRst : STD_LOGIC;
SIGNAL output : STD_LOGIC;
SIGNAL resto : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT encoderSerie
	PORT (
	a : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	nGRst : IN STD_LOGIC;
	output : OUT STD_LOGIC;
	resto : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : encoderSerie
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	clk => clk,
	nGRst => nGRst,
	output => output,
	resto => resto
	);

-- a
t_prcs_a: PROCESS
BEGIN
	a <= '1';
	WAIT FOR 20000 ps;
	a <= '0';
	WAIT FOR 60000 ps;
	a <= '1';
	WAIT FOR 40000 ps;
	a <= '0';
	WAIT FOR 20000 ps;
	a <= '1';
	WAIT FOR 20000 ps;
	a <= '0';
	WAIT FOR 20000 ps;
	a <= '1';
	WAIT FOR 20000 ps;
	a <= '0';
WAIT;
END PROCESS t_prcs_a;

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- nGRst
t_prcs_nGRst: PROCESS
BEGIN
	nGRst <= '1';
WAIT;
END PROCESS t_prcs_nGRst;
END encoderSerie_arch;
