-- Unidad de control
library ieee;
use ieee.std_logic_1164.all;

entity UnidadControl is
port(
	sel		:	in		std_logic_vector(2 downto 0);
	sel_s		:	out	std_logic_vector(1 downto 0);
	sel_ov	:	out	std_logic;
	s_r		:	out	std_logic;
	sel_b		:	out	std_logic;
	sel_log	:	out	std_logic_vector(1 downto 0));
end UnidadControl;

architecture behavioral of UnidadControl is
begin -- behavioral

	with sel select
	sel_s <=
	"00" when "100",
	"00" when "101",
	"00" when "110",
	"01" when "111",
	"11" when others;
	
	with sel select
	sel_ov <=
	'0' when "100",
	'0' when "101",
	'0' when "110",
	'1' when "111",
	'-' when others;
	
	with sel select
	s_r <=
	'0' when "100",
	'0' when "110",
	'1' when "101",
	'-' when others;
	
	with sel select
	sel_b <=
	'0' when "100",
	'0' when "101",
	'1' when "110",
	'-' when others;
	
	with sel select
	sel_log <=
	"00" when "000",
	"01" when "001",
	"10" when "010",
	"11" when "011",
	"--" when others;
end behavioral;