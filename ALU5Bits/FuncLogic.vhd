-- Unidad de funciones lÃƒÂ³gicas

library ieee;
use ieee.std_logic_1164.all;

entity FuncLogic is
port (
		a,b		:	in 	std_logic_vector(4 downto 0);
		sel_log	:	in		std_logic_vector(1 downto 0);
		s			:	out	std_logic_vector(4 downto 0));
end FuncLogic;

architecture behavioral of FuncLogic is
begin --behavioral
	
	with sel_log select
	s <=
	(a and b) when "00",
	(a or b) when "01",
	(a xor b) when "10",
	(not a) when "11",
	"00000" when others;
	
end behavioral;