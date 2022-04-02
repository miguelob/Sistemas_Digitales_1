library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Multiplicador is
port(
		a,b		:	in 	std_logic_vector(4 downto 0);
		p			:	out 	std_logic_vector(4 downto 0);
		ov			:	out	std_logic);
end Multiplicador;

architecture behavioral of Multiplicador is
signal p_i	:	std_logic_vector(9 downto 0);
begin --behavioral

	p_i <=	std_logic_vector(signed(a)*signed(b));
	p <= p_i(4 downto 0);
	ov	<= '0' when p_i(9 downto 5) =	p_i(4)&p_i(4)&p_i(4)&p_i(4)&p_i(4) else
					'1';
end behavioral;