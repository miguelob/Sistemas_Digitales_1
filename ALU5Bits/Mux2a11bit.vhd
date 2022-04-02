-- Mux 2 a 1 un bit

library ieee;
use ieee.std_logic_1164.all;

entity Mux2a11bit is
port(
		e0,e1		:	in std_logic;
		sel_ov	:	in std_logic;
		ov			: 	out std_logic);
end Mux2a11bit;

architecture behavioral of Mux2a11bit is
begin --behavioral

	with sel_ov select
	ov <=
	e0 when '0',
	e1 when '1',
	'0' when others;
	
end behavioral;