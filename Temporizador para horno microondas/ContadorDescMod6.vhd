library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ContadorDescMod6 is
	port(
		clk		:	in 	std_logic;
		reset_n	:	in 	std_logic;
		en			:	in		std_logic;
		carga		:	in		std_logic;
		e_p		:	in		std_logic_vector(2 downto 0);
		co			:	out	std_logic;
		s			:	out	std_logic_vector(3 downto 0));
end ContadorDescMod6;

architecture behavioral of ContadorDescMod6 is
	signal contador 	:	unsigned(2 downto 0);
	
begin --behavioral

	process (clk, reset_n, e_p, carga, contador)
	begin --process
		if reset_n = '0' then
			contador <= (others => '0');
		elsif clk' event and clk ='1' then
			if carga = '1' then
				contador <= unsigned(e_p);
			elsif en ='1' then
				if contador = "000" then
					contador <= "101";
				else
					contador <= contador - 1;
				end if;
			end if;
		end if;
	end process;
	
	co <= '1' when contador = "000" and en = '1' else
			'0';
	s	<=	'0' & std_logic_vector(contador);
end behavioral;