library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Multiplicador5BitsComp is
port(
a,b: in std_logic_vector (4 downto 0);
disp1, disp2, disp3: out std_logic_vector (6 downto 0));
end Multiplicador5BitsComp;

architecture structural of Multiplicador5BitsComp is

component Multiplicador5Bits 
port(
	a,b			: in std_logic_vector(4 downto 0);
	p				: out std_logic_vector(11 downto 0));
	
end component;

component BinA7Seg
port( input		: 	in std_logic_vector(3 downto 0);		-- Entrada 4 bits
		output 	: 	out std_logic_vector(6 downto 0)); --output a display 7 bits
end component;

--seÃƒÂ±ales internas
signal pp: std_logic_vector (11 downto 0);
signal disp_i: std_logic_vector (20 downto 0);

begin --structural 

i1: Multiplicador5Bits
port map(
a=>a,
b=>b,
p=>pp);

GenSum: for i in 0 to 2 generate
i_BinA7Seg: BinA7Seg
	port map(
	input=>pp((i*4+3) downto (i*4)),
	output=>disp_i((i*7+6) downto (i*7)));
end generate Gensum;

	disp1 <= disp_i (6 downto 0);
	disp2 <= disp_i (13 downto 7);
	disp3 <= disp_i (20 downto 14);
	
end structural;

