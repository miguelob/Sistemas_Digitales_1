library ieee;
use ieee.std_logic_1164.all;

entity DetectorSecuenciaF1 is
port(
	reset_n		:	in		std_logic;
	clk			:	in		std_logic;
	p1,p0			:	in		std_logic;
	s,s2				:	out	std_logic);
end DetectorSecuenciaF1;

architecture behavioral of DetectorSecuenciaF1 is
	type t_estados is (Reposo, EP0, EP0EP1, EP0EP1EP1, EP0EP1EP1EP0);
	signal estado_act, estado_sig	:	t_estados;
	signal entradas	:	std_logic_vector(1 downto 0);
	
	component DetectorFlanco
		port(
			e			:	in		std_logic;
			reset_n	:	in		std_logic;
			clk		:	in		std_logic;
			s			:	out	std_logic);
	end component;
	
begin --behavioral	

	DetectorFlanco_1	:	DetectorFlanco
		port map(
			e			=>	p1,
			reset_n	=>	reset_n,
			clk		=>	clk,
			s			=>	entradas(1));
			
	DetectorFlanco_2	:	DetectorFlanco
		port map(
			e			=>	p0,
			reset_n	=>	reset_n,
			clk		=>	clk,
			s			=>	entradas(0));
			
	VarEstado	:	process(clk,reset_n,estado_sig)
		begin
			if reset_n = '0' then
				estado_act	<= Reposo;
			elsif clk' event and clk = '0' then
				estado_act	<= estado_sig;
			end if;
		end process VarEstado;
		
	TransicionEstados	:	process(estado_act,	entradas)
		begin
		estado_sig <= estado_act;
		case estado_act is
			when Reposo =>
				if entradas = "01" then
					estado_sig <= EP0;
				end if;
			when EP0 =>
				if 	entradas = "10" then
					estado_sig <= EP0EP1;
				elsif entradas = "11" then
					estado_sig <= Reposo;
				end if;
			when EP0EP1 =>
				if 	entradas = "10" then
					estado_sig <= EP0EP1EP1;
				elsif entradas = "11" then
					estado_sig <= Reposo;
				elsif entradas = "01" then
					estado_sig <= EP0;
				end if;
			when EP0EP1EP1 =>
				if 	entradas = "10" then
					estado_sig <= Reposo;
				elsif entradas = "11" then
					estado_sig <= Reposo;
				elsif entradas = "01" then
					estado_sig <= EP0EP1EP1EP0;
				end if;
			when EP0EP1EP1EP0 =>
				if 	entradas = "10" then
					estado_sig <= EP0EP1;
				elsif entradas = "11" then
					estado_sig <= Reposo;
				elsif entradas = "01" then
					estado_sig <= EP0;
				end if;
		end case;
		end process TransicionEstados;
		
		s	<= '1' when estado_act = EP0EP1EP1EP0 else
			'0';
		s2 <= '0' when estado_act = EP0EP1EP1EP0 else
			'1';
end behavioral;
					