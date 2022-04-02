library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALUjunto is
port(
	a,b	:	in 	std_logic_vector(4 downto 0);
	sel	:	in		std_logic_vector(2 downto 0);
	ov		:	out	std_logic;
	disp1	:	out	std_logic_vector(3 downto 0);
	disp2	:	out	std_logic_vector(3 downto 0));
end AlUjunto;

architecture structural of ALUjunto is

	signal s_int		:	std_logic_vector(7 downto 0);
	signal disp_int	:	std_logic_vector(13 downto 0);

	component ALUcompleto
		port(
			a,b	:	in		std_logic_vector (4 downto 0);
			sel	:	in		std_logic_vector (2 downto 0);
			ov		:	out	std_logic;
			s		:	out	std_logic_vector (7 downto 0));
	end component;
	
	component BinA7Seg
		port(
			input		: 	in std_logic_vector(3 downto 0);
			output 	: 	out std_logic_vector(6 downto 0)); 
	end component;

begin -- structural

	i_ALUcompleto	:	ALUcompleto
	port map(
		a		=>	a,
		b		=>	b,
		sel	=>	sel,
		ov		=>	ov,
		s		=> s_int);
	
	GenSum: for i in 0 to 1 generate
		i_BinA7Seg	:	BinA7Seg
		port map(
		input		=>	s_int((i*4+3) downto (i*4)),
		output	=>	disp_int((i*7+6) downto (i*7)));
	end generate Gensum;
	
	disp1 <= disp_int(6 downto 0);
	disp2 <= disp_int(13 downto 7);



end structural;