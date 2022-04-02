library ieee;
use ieee.std_logic_1164.all;

entity Microondas is
	port (
			clk		: in	std_logic;
			reset_n	: in	std_logic;
			puerta	:	in	std_logic;
			boton		:	in	std_logic;
			e_p		:	in	std_logic_vector(6 downto 0);
			fin		: out std_logic;
			horno_on	:	out	std_logic;
			abierta	:	out	std_logic;
			d_a		:	out std_logic_vector(6 downto 0);
			d_b		:	out std_logic_vector(6 downto 0);
			d_c		:	out std_logic_vector(6 downto 0);
			d_d		:	out std_logic_vector(6 downto 0));
end Microondas;

architecture structural of Microondas is
	signal final 			:	std_logic;
	signal en_cnt_i		:	std_logic;
	signal carga_min_i	:	std_logic;
	signal carga_seg_i	:	std_logic;
	signal boton_i			:	std_logic;

	component UnidadControl
		port(
		clk			:	in		std_logic;
		reset_n		:	in		std_logic;
		puerta		:	in		std_logic;
		boton			:	in		std_logic;
		fin_cuenta	:	in		std_logic;
		fin			:	out	std_logic;
		horno_on		:	out	std_logic;
		abierta		:	out	std_logic;
		en_cnt		:	out	std_logic;
		carga_min	:	out	std_logic;
		carga_seg	:	out	std_logic);
	end component;
	
	component temporizador
		port(
		ent_p 							: in std_logic_vector(6 downto 0);
		en_cnt,carga_seg,carga_min,clk,reset_n : in std_logic;
		co,fin									: out std_logic;
		d_a,d_b,d_c,d_d				: out std_logic_vector(6 downto 0)
	);
	end component;
	component DetectorFlanco
		port(
		e			:	in std_logic;
		reset_n	:	in	std_logic;
		clk		:	in std_logic;
		s			:	out	std_logic);
	end component;
begin --structural
	i_UnidadControl	:	UnidadControl
		port map(
			clk => clk,
			reset_n	=> reset_n,
			puerta	=> puerta,
			boton		=> boton_i,
			fin_cuenta	=> final,
			fin	=> fin,
			horno_on	=> horno_on,
			abierta	=> abierta,
			en_cnt	=> en_cnt_i,
			carga_min	=> carga_min_i,
			carga_seg	=>	carga_seg_i);
			
	i_temporizador	:	temporizador
		port map(
			clk => clk,
			reset_n	=> reset_n,
			en_cnt	=> en_cnt_i,
			ent_p		=> e_p,
			carga_seg	=>	carga_seg_i,
			carga_min	=> carga_min_i,
			co				=>	open,
			fin			=> final,
			d_a			=> d_a,
			d_b			=> d_b,
			d_c			=> d_c,
			d_d			=> d_d);
			
	i_Detector	:	DetectorFlanco
		port map(
			e		=> boton,
			reset_n	=> reset_n,
			clk		=> clk,
			s			=> boton_i);

end structural;