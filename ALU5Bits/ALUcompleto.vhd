
--ALU completo
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALUcompleto is
port(
a,b: in std_logic_vector (4 downto 0);
sel:in std_logic_vector (2 downto 0);
ov:out std_logic;
s:out std_logic_vector (7 downto 0));
end ALUcompleto;

architecture structural of ALUcompleto is
signal sel_s_i: std_logic_vector (1 downto 0);
signal sel_ov_i: std_logic;
signal s_r_i: std_logic;
signal sel_b_i: std_logic;
signal sel_log_i: std_logic_vector (1 downto 0);
signal s_i: std_logic_vector (14 downto 0);
signal ov_1: std_logic;
signal ov_2: std_logic;
signal b_i: std_logic_vector (4 downto 0);
component UnidadControl
port(
sel		:	in		std_logic_vector(2 downto 0);
	sel_s		:	out	std_logic_vector(1 downto 0);
	sel_ov	:	out	std_logic;
	s_r		:	out	std_logic;
	sel_b		:	out	std_logic;
	sel_log	:	out	std_logic_vector(1 downto 0));
end component;

component FuncLogic
port(
a,b		:	in 	std_logic_vector(4 downto 0);
		sel_log	:	in		std_logic_vector(1 downto 0);
		s			:	out	std_logic_vector(4 downto 0));
end component;

component Multiplicador
port(
a,b		:	in 	std_logic_vector(4 downto 0);
		p			:	out 	std_logic_vector(4 downto 0);
		ov			:	out	std_logic);
end component;

component SumadorRestador5Bits
port(
			a,b			: in	std_logic_vector(4 downto 0);
			s_r 			: in 	std_logic;
			s				: out	std_logic_vector(4 downto 0);
			ov			: out	std_logic);
end component;

component Mux2a11bit 
port(
		e0,e1		:	in std_logic;
		sel_ov	:	in std_logic;
		ov			: 	out std_logic);
end component;


component Mux2a15bits
port(
	e0		:	in 	std_logic_vector(4 downto 0);
	sel_b		:	in 	std_logic;
	s			:	out	std_logic_vector(4 downto 0));
end component;

component Mux3a15bits
port(
e0,e1,e2		: in std_logic_vector(4 downto 0);
	sel_s 			: in std_logic_vector(1 downto 0);
	s				: out std_logic_vector(4 downto 0));
end component;

begin --structural

i_UnidadControl: UnidadControl
port map(
sel=>sel,
sel_s=>sel_s_i,
sel_ov=>sel_ov_i,
s_r=>s_r_i,
sel_b=>sel_b_i,
sel_log=>sel_log_i);

i_FuncLogic: FuncLogic
port map(
a=>a,
b=>b,
sel_log=>sel_log_i,
s=> s_i (14 downto 10));

i_Multiplicador: Multiplicador
port map(
a=>a,
b=>b,
p=> s_i (9 downto 5),
ov=>ov_1);

i_SumadorRestador5Bits: SumadorRestador5Bits
port map(
a=>a,
b=>b_i,
s_r=>s_r_i,
s=> s_i (4 downto 0),
ov=>ov_2);

i_Mux2a11bit: Mux2a11bit
port map(
e0=> ov_2,
e1=> ov_1,
sel_ov=>sel_ov_i,
ov=>ov);

i_Mux2a15bits: Mux2a15bits
port map(
e0=>b,
sel_b=> sel_b_i,
s=>b_i);

i_Mux3a15bits: Mux3a15bits
port map(
e0=>s_i (4 downto 0),
e1=>s_i (9 downto 5),
e2=>s_i (14 downto 10),
sel_s=>sel_s_i,
s=>s(4 downto 0));
s(7 downto 5)<= "000";
end structural;



