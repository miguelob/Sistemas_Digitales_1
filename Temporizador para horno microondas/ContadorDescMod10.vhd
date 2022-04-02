library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ContadorDescMod10 is
	port(
		clk		:	in std_logic;
		reset_n	:	in std_logic;
		en			:	in	std_logic;
		carga		:	in	std_logic;
		e_p		:	in	std_logic_vector(3 downto 0);
		co			:	out	std_logic;
		s			:	out	std_logic_vector(3 downto 0));
end ContadorDescMod10;

architecture behavioral of ContadorDescMod10 is
	signal contador : unsigned(3 downto 0);
	
begin --behavioral

	process (clk, reset_n, carga, e_p, contador)
	begin --process
		if reset_n = '0' then
			contador <= (others => '0');
		elsif clk' event and clk ='1' then
			if carga = '1' then
				contador <= unsigned(e_p);
			elsif en ='1' then
				if contador = "0000" then
					contador <= "1001";
				else
					contador <= contador - 1;
				end if;
			end if;
		end if;
	end process;
	
	co <= '1' when contador = "0000" and en = '1' else
			'0';
	s	<=	std_logic_vector(contador);
end behavioral;