-- Comparador4Bits

library IEEE;
use  IEEE.std_logic_1164.all;

entity Comparador4Bits is

	port(
			a,b			: 	in std_logic_vector(3 downto 0); -- Entradas
			a_mayor_b	: 	out std_logic; 						  -- Salidas
			a_menor_b	: 	out std_logic;
			a_igual_b	: 	out std_logic);
			
end Comparador4Bits;

architecture behavioral of Comparador4Bits is
begin --behavioral
	
	
	a_mayor_b <= '1' when a>b else
					'0';
	a_menor_b <= '1' when a<b else
					'0';
	a_igual_b <= '1' when a=b else
					'0';
		
end behavioral;
		