LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity encoderV1 is
	port(	a : in STD_LOGIC_VECTOR(15 downto 0);
			r : out STD_LOGIC_VECTOR(23 downto 0)
		);

end encoderV1;


ARCHITECTURE behavior of encoderV1 is
	signal resto : STD_LOGIC_VECTOR(7 downto 0); 
Begin
	resto(0) <= a(0) xor a(3) xor a(5) xor a(7) xor a(8) xor a(9) xor a(10) xor a(11) xor a(12) xor a(15);
	resto(1) <= a(0) xor a(1)  xor a(3)  xor a(4)  xor a(5)  xor a(6)  xor a(7)  xor a(13)  xor a(15);
	resto(2) <= a(0)  xor a(1)  xor a(2)  xor a(3)  xor a(4)  xor a(6)  xor a(9)  xor a(10)  xor a(11)  xor a(14) xor a(15);
	resto(3) <= a(0)  xor a(1)  xor a(2)  xor a(4)  xor a(8)  xor a(9) xor a(13);
	resto(4) <= a(1)  xor a(2)  xor a(3)  xor a(5)  xor a(9)  xor a(10) xor a(14);
	resto(5) <= a(0) xor a(2) xor a(4) xor a(5) xor a(6) xor a(7) xor a(8) xor a(9) xor a(12);
	resto(6) <= a(1) xor a(3) xor a(5) xor a(6) xor a(7) xor a(8) xor a(9) xor a(10) xor a(13);
	resto(7) <= a(2) xor a(4) xor a(6) xor a(7) xor a(8) xor a(9) xor a(10) xor a(11) xor a(14);
	
	r <= a & resto;
	
end behavior;