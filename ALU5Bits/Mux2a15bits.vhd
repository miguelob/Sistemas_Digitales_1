-- multiplexor 2 a 1 5 bits

library ieee;
use ieee.std_logic_1164.all;

entity Mux2a15bits is
port(
	e0		:	in 	std_logic_vector(4 downto 0);
	sel_b		:	in 	std_logic;
	s			:	out	std_logic_vector(4 downto 0));
end Mux2a15bits;

architecture behavioral of Mux2a15bits is
begin --behavioral
	
	with sel_b select
	s <=
	e0 when '0',
	"00001" when '1',
	"00000" when others;
	
end behavioral;