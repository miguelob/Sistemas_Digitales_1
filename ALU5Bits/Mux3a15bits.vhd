-- multiplexor de 3 a 1
library ieee;
use ieee.std_logic_1164.all;

entity Mux3a15bits is
port(
	e0,e1,e2		: in std_logic_vector(4 downto 0);
	sel_s 			: in std_logic_vector(1 downto 0);
	s				: out std_logic_vector(4 downto 0));
end Mux3a15bits;

architecture behavioral of Mux3a15bits is
begin --behavioral
	with sel_s select
	s <=
	e0 when "00",
	e1 when "01",
	e2 when "11",
	"00000" when others;
end behavioral;