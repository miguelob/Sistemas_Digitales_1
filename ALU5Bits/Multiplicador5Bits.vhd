library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Multiplicador5Bits is
port(
	a,b			: in std_logic_vector(4 downto 0);
	ov_p			: out std_logic;
	p				: out std_logic_vector(4 downto 0));
	
end Multiplicador5Bits;

architecture behavioral of Multiplicador5Bits is
type t_vec_uns is array (0 to 4) of signed(9 downto 0);
signal pp	:	t_vec_uns;
signal salida : std_logic_vector(9 downto 0);
begin --behavioral
		
		ppgen: for i in 0 to 4 generate
			b1: for j in 0 to i-1 generate
				pp(i)(j)	<= '0';
			end generate b1;
			b2: for j in i to i+4 generate
				pp(i)(j) <= a(j-i) and b(i);
			end generate b2;
			b3: for j in i+4+1 to 9 generate
				pp(i)(j) <= '0';
			end generate b3;
		end generate ppgen;
		
		salida	<= std_logic_vector(((pp(0) +	pp(1)) + ((pp(2)) + pp(3))) + pp(4));
		
		p <= salida(4 downto 0);
		ov_p <= '0' when salida(9 downto 5) =	salida(4)&salida(4)&salida(4)&salida(4)&salida(4) else
					'1';
		
end behavioral;