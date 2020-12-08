LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY gateOr8 IS
  PORT (x0, x1, x2, x3, x4, x5, x6, x7: IN STD_LOGIC;
        y: OUT STD_LOGIC);
END gateOr8;

ARCHITECTURE logicFunction OF gateOr8 IS
BEGIN
  y <= x0 OR x1 or x2 or x3 or x4 or x5 or x6 or x7;
END logicFunction;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity comparator_8bits is
	port(	a : in STD_LOGIC_VECTOR(7 downto 0);
			b : in STD_LOGIC_VECTOR(7 downto 0);
			error : out STD_LOGIC
		);

end comparator_8bits;


ARCHITECTURE behavior of comparator_8bits is 

	component gateOr8
		port(x0, x1, x2, x3, x4, x5, x6, x7: IN STD_LOGIC;
        y: OUT STD_LOGIC);
	end component;
	
	component gateXor2
		port(x0, x1: IN STD_LOGIC;
        y: OUT STD_LOGIC);
	end component;
	
	signal e0 : STD_LOGIC;
	signal e1 : STD_LOGIC;
	signal e2 : STD_LOGIC;
	signal e3 : STD_LOGIC;
	signal e4 : STD_LOGIC;
	signal e5 : STD_LOGIC;
	signal e6 : STD_LOGIC;
	signal e7 : STD_LOGIC;
	
	
Begin
	 xor0 : gateXor2 Port map(a(0), b(0), e0);
	 xor1 : gateXor2 Port map(a(1), b(1), e1);
	 xor2 : gateXor2 Port map(a(2), b(2), e2);
	 xor3 : gateXor2 Port map(a(3), b(3), e3);
	 xor4 : gateXor2 Port map(a(4), b(4), e4);
	 xor5 : gateXor2 Port map(a(5), b(5), e5);
	 xor6 : gateXor2 Port map(a(6), b(6), e6);
	 xor7 : gateXor2 Port map(a(7), b(7), e7);
	 
	 or8 : gateOr8 Port map(e0,e1,e2,e3,e4,e5,e6,e7,error);	
end behavior;