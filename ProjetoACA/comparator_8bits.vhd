LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity comparator_8bits is
	port(	a : in STD_LOGIC_VECTOR(7 downto 0);
			b : in STD_LOGIC_VECTOR(7 downto 0);
			error : out STD_LOGIC
		);

end comparator_8bits;


ARCHITECTURE behavior of comparator_8bits is 
	signal e0 : STD_LOGIC;
	signal e1 : STD_LOGIC;
	signal e2 : STD_LOGIC;
	signal e3 : STD_LOGIC;
	signal e4 : STD_LOGIC;
	signal e5 : STD_LOGIC;
	signal e6 : STD_LOGIC;
	signal e7 : STD_LOGIC;
Begin
	 e0 <= a(0) xor b(0);
	 e1 <= a(1) xor b(1);
	 e2 <= a(2) xor b(2);
	 e3 <= a(3) xor b(3);
	 e4 <= a(4) xor b(4);
	 e5 <= a(5) xor b(5);
	 e6 <= a(6) xor b(6);
	 e7 <= a(7) xor b(7);
	 
	 error <= e0 or e1 or e2 or e3 or e4 or e5 or e6 or e7;
	
end behavior;