library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ContadorMod50M is
	port(
		clk		:	in		std_logic;
		reset_n	:	in 	std_logic;
		en_cnt	:	in		std_logic;
		co			: 	out 	std_logic);
end ContadorMod50M;

architecture behavioral of ContadorMod50M is
	signal contador : unsigned(25 downto 0);
begin --behavioral

	process(clk,reset_n, en_cnt)
	begin
		if reset_n = '0' then
			contador <= (others => '0');
		elsif clk' event and clk = '1' then
			if en_cnt = '1' and contador = 49999999 then
				contador <= (others => '0');
			elsif en_cnt = '1' then
				contador <= contador + 1;
			end if;
		end if;
	end process;
	co <= '1' when contador = 49999999 else
			'0';
end behavioral;