LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity encoderV5 is
	port(	a : in STD_LOGIC_VECTOR(15 downto 0);
			r : out STD_LOGIC_VECTOR(23 downto 0)
		);

end encoderV5;

ARCHITECTURE behavior of encoderV5 is
	component gateXor2
		port(x0, x1: IN STD_LOGIC;
        y: OUT STD_LOGIC);
	end component;

	signal resto : STD_LOGIC_VECTOR(7 downto 0);
	signal a0a15 : std_logic;
	signal a0a15a3 : std_logic;
	signal a7a8	: std_logic;
	signal a9a10	: std_logic;
	signal a7toa10 : std_logic;
	signal a7toa11 : std_logic;
	signal a1a4 : std_logic;
	signal a1a4a13 : std_logic;
	signal a5a6 : std_logic;
	signal a5a6a7 : std_logic;
	signal a1a3 : std_logic;
	signal a1a3a9a10 : std_logic;
	signal a2a14 : std_logic;
	signal a4a6 : std_logic;
	signal a2a14a4a6 : std_logic;
	signal a0a2 : std_logic;
	signal a8a9 : std_logic;
	signal a0a2a8a9 : std_logic;

	--resto(0)	
	signal a5a12 : std_logic;
	signal a5a12a0a15a3 : std_logic;
	
	--resto(1)
	signal a0a15a3a1a4a13 : std_logic;
	
	--resto(2)
	signal a11a12 : std_logic;
	signal a0a15a11a12 : std_logic;
	signal a0a15a11a12a2a14a4a6 : std_logic;
	
	--resto(4)
	signal a2a14a5 : std_logic;
	
	--resto(5)
	signal a4a12 : std_logic;
	signal a4a12a5a6a7 : std_logic;
	
	--resto(6)
	signal a8a13 : std_logic;
	signal a8a13a5a6a7 : std_logic;
	
	begin
	
	xor0 : gateXor2 Port map(a(0),a(15),a0a15);
	xor1 : gateXor2 Port map(a0a15,a(3),a0a15a3);
	xor2 : gateXor2 Port map(a(7),a(8),a7a8);
	xor3 : gateXor2 Port map(a(9),a(10),a9a10);
	xor4 : gateXor2 Port map(a7a8,a9a10,a7toa10);
	xor5 : gateXor2 Port map(a7toa10,a(11),a7toa11);
	xor6 : gateXor2 Port map(a(1),a(4),a1a4);
	xor7 : gateXor2 Port map(a1a4,a(14),a1a4a13);
	xor8 : gateXor2 Port map(a(5),a(6),a5a6);
	xor9 : gateXor2 Port map(a5a6,a(7),a5a6a7);
	xor10 : gateXor2 Port map(a(1),a(3),a1a3);
	xor11 : gateXor2 Port map(a1a3,a9a10,a1a3a9a10);
	xor12 : gateXor2 Port map(a(2),a(14),a2a14);
	xor13 : gateXor2 Port map(a(4),a(6),a4a6);
	xor14 : gateXor2 Port map(a2a14,a4a6,a2a14a4a6);
	xor15 : gateXor2 Port map(a(0),a(2),a0a2);
	xor16 : gateXor2 Port map(a(8),a(9),a8a9);
	xor17 : gateXor2 Port map(a0a2,a8a9,a0a2a8a9);

	--resto(0)
	xor18 : gateXor2 Port map(a(5),a(12),a5a12);
	xor19 : gateXor2 Port map(a5a12,a0a15a3,a5a12a0a15a3);
	xor20 : gateXor2 Port map(a5a12a0a15a3,a7toa11,resto(0));
	
	--resto(1)
	xor21 : gateXor2 Port map(a0a15a3,a1a4a13,a0a15a3a1a4a13);
	xor22 : gateXor2 Port map(a0a15a3a1a4a13,a5a6a7,resto(1));
	
	--resto(2)
	xor23 : gateXor2 Port map(a(11),a(12),a11a12);
	xor24 : gateXor2 Port map(a0a15,a11a12, a0a15a11a12);
	xor25 : gateXor2 Port map(a0a15a11a12, a2a14a4a6, a0a15a11a12a2a14a4a6);
	xor26 : gateXor2 Port map(a0a15a11a12a2a14a4a6, a1a3a9a10, resto(2));
	
	--resto(3)
	xor27 : gateXor2 Port map(a0a2a8a9, a1a4a13, resto(3));
	
	--resto(4)
	xor28 : gateXor2 Port map(a2a14, a(5), a2a14a5);
	xor29 : gateXor2 Port map(a2a14a5, a1a3a9a10, resto(4));
	
	--resto(5)
	xor30 : gateXor2 Port map(a(4), a(12), a4a12);
	xor31 : gateXor2 Port map(a4a12, a5a6a7, a4a12a5a6a7);
	xor32 : gateXor2 Port map(a4a12a5a6a7, a0a2a8a9, resto(5));
	
	--resto(6)
	xor33 : gateXor2 Port map(a(8), a(13), a8a13);
	xor34 : gateXor2 Port map(a8a13, a5a6a7, a8a13a5a6a7);
	xor35 : gateXor2 Port map(a8a13a5a6a7, a1a3a9a10, resto(6));
	
	--resto(7)
	xor36 : gateXor2 Port map(a7toa11, a2a14a4a6, resto(7));
	
	r <= a & resto;
	
end behavior;