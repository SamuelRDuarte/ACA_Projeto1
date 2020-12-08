LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

entity encoderSerie is
		port(a : in std_logic;
				clk : in std_logic;
				nGRst : in std_logic;
				output : out std_logic;
				resto : out std_logic_vector(7 downto 0));
end encoderSerie;


ARCHITECTURE behavior of encoderSerie is
	signal shitfRegister : std_logic_vector(7 downto 0) := (others => '0');
	signal count : unsigned(5 downto 0) := (others => '0');
	signal temp : std_logic_vector(7 downto 0) := (others => '0');
	
	begin
	process(clk)
	begin
		if(nGRst = '0') then
			count <= (others => '0');
			shitfRegister <= (others => '0');
		elsif(rising_edge(clk)) then
			if(count < 16) then
				temp <= shitfRegister;
				shitfRegister(0) <= temp(7) xor a;
				shitfRegister(1) <= temp(0) xor temp(7) xor a;
				shitfRegister(2) <= temp(1) xor temp(7) xor a;
				shitfRegister(3) <= temp(2) xor temp(7) xor a;
				shitfRegister(4) <= temp(3);
				shitfRegister(5) <= temp(4) xor temp(7) xor a;
				shitfRegister(6) <= temp(5);
				shitfRegister(7) <= temp(6);
				output <= a;
			end if;
			if(count > 15 and count < 24) then
				temp <= shitfRegister;
				shitfRegister(0) <= temp(7) xor '0';
				shitfRegister(1) <= temp(0) xor temp(7) xor '0';
				shitfRegister(2) <= temp(1) xor temp(7) xor '0';
				shitfRegister(3) <= temp(2) xor temp(7) xor '0';
				shitfRegister(4) <= temp(3);
				shitfRegister(5) <= temp(4) xor temp(7) xor '0';
				shitfRegister(6) <= temp(5);
				shitfRegister(7) <= temp(6);
				resto <= shitfRegister;
			end if;
			count <= count + 1;
		end if;
	end process;
end behavior;