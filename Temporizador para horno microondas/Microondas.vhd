library ieee;
use ieee.std_logic_1164.all;

entity Microondas is
	port (
			clk		: in	std_logic;
			reset_n	: in	std_logic;
			puerta	:	in	std_logic;
			boton		:	in	std_logic;
			ent_p		:	in	std_logic_vector(6 downto 0);
			fin		: out std_logic;
			horno_on	:	out	std_logic;
			abierta	:	out	std_logic;
			cnt_seg	:	out std_logic_vector(7 downto 0);
			cnt_min	:	out std_logic_vector(7 downto 0));
end Microondas;

architecture structural of Microondas is
	signal final 			:	std_logic_vector(15 downto 0);
	signal en_cnt_i		:	std_logic;
	signal carga_min_i	:	std_logic;
	signal carga_seg_i	:	std_logic;
	signal minutos			:	std_logic_vector(7 downto 0);
	signal segundos		:	std_logic_vector(7 downto 0);

	component UnidadControl
		port(
		clk			:	in		std_logic;
		reset_n		:	in		std_logic;
		puerta		:	in		std_logic;
		boton			:	in		std_logic;
		fin_cuenta	:	in		std_logic_vector(15 downto 0);
		fin			:	out	std_logic;
		horno_on		:	out	std_logic;
		abierta		:	out	std_logic;
		en_cnt		:	out	std_logic;
		carga_min	:	out	std_logic;
		carga_seg	:	out	std_logic);
	end component;
	
	component temporizador
		port(
		clk			:	in		std_logic;
		reset_n		:	in		std_logic;
		en_cnt		:	in		std_logic;
		e_p			:	in		std_logic_vector(6 downto 0);
		carga_seg	:	in		std_logic;
		carga_min	:	in		std_logic;
		mins0			:	out	std_logic_vector(3 downto 0);
		mins1			:	out	std_logic_vector(3 downto 0);
		seg0			:	out	std_logic_vector(3 downto 0);
		seg1			:	out	std_logic_vector(3 downto 0);
		fin			:	out	std_logic_vector(15 downto 0));
	end component;
begin --structural
	i_UnidadControl	:	UnidadControl
		port map(
			clk => clk,
			reset_n	=> reset_n,
			puerta	=> puerta,
			boton		=> boton,
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
			e_p		=> ent_p,
			carga_seg	=>	carga_seg_i,
			carga_min	=> carga_min_i,
			mins0			=>	minutos(3 downto 0),
			mins1			=> minutos(7 downto 4),
			seg0			=> segundos(3 downto 0),
			seg1			=> segundos(7 downto 4),
			fin			=> final(15 downto 0));
			
			
			cnt_seg <= segundos;
			cnt_min <= minutos;
end structural;