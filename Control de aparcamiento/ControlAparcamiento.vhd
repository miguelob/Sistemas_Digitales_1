library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ControlAparcamiento is
	port(
		clk			:	in		std_logic;
		reset_n		:	in		std_logic;
		entra		:	in		std_logic;
		sale		:	in		std_logic;
		led_g		:	out	std_logic;
		led_r		:	out	std_logic;
		max			:	in		std_logic_vector(7 downto 0);
		s			:	out	std_logic_vector(7 downto 0));
end ControlAparcamiento;

architecture behavioral of ControlAparcamiento is
	signal	contador	:	unsigned(7 downto 0);
	
begin --behavioral
	
	process (clk, reset_n, entra, sale)
	begin --process
		if reset_n = '0' then
			contador <= (others => '0');
		elsif clk' event and clk = '1' then
			if entra = '1' and sale = '0' and std_logic_vector(contador) < max then
				contador <= contador + 1;
			elsif entra = '0' and sale = '1' and std_logic_vector(contador) > "00000000" then
				contador <= contador - 1;
			end if;
		end if;
	end process;

s <= std_logic_vector(contador);
led_r	<= '1' when std_logic_vector(contador) = max else
			'0';
led_g <= '0' when std_logic_vector(contador) = max else
			'1';
end architecture;
		