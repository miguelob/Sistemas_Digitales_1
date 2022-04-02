library ieee;
use ieee.std_logic_1164.all;

entity UnidadControl is
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
end UnidadControl;

architecture behavioral of UnidadControl is
	type t_estados is (Reposo, CargaMin, EspBot, CargaSeg, Activo, Finalizado, Abierto);
	signal estado_act, estado_sig : t_estados;
begin --behavioral

	VarEstados	: process(clk, reset_n, estado_sig)
	begin 
		if reset_n = '0' then
			estado_act <= reposo;
		elsif clk' event and clk = '1' then
			estado_act <= estado_sig;
		end if;
	end process VarEstados;
	
	TransicionEstados : process (estado_act, puerta, boton, fin_cuenta)
		begin
		estado_sig <= estado_act;
		case estado_act is
			when Reposo =>
				if boton = '1' then
					estado_sig <= CargaMin;
				end if;
			when CargaMin =>
				estado_sig <= EspBot;
			when EspBot =>
				if	boton = '1' then
					estado_sig <= CargaSeg;
				end if;
			when CargaSeg =>
				if puerta = '0' then 
					estado_sig <= Activo;
				end if;
			when Activo =>
				if puerta = '1' then
					estado_sig <= Abierto;
				elsif fin_cuenta = "0000000000000000" then
					estado_sig <= Finalizado;
				end if;
			when Abierto =>
				if puerta = '0' then
					estado_sig <= Activo;
				end if;
			when Finalizado =>
				if puerta = '1' then
					estado_sig <= Reposo;
				end if;
			end case;
		end process TransicionEstados;
				
	fin <= '1' when estado_act = Finalizado else
			'0';
	horno_on <= '1' when estado_act = Activo else
					'0';
	en_cnt <= '1' when estado_act = Activo else
				'0';
	carga_min	<=	'1' when estado_act = CargaMin else
						'0';
	carga_seg	<=	'1' when estado_act = CargaSeg else
						'0';
	abierta	<= '1' when puerta = '1' else
					'0';
end behavioral;
	
			