-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "12/05/2018 16:10:35"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Microondas IS
    PORT (
	clk : IN std_logic;
	reset_n : IN std_logic;
	puerta : IN std_logic;
	boton : IN std_logic;
	e_p : IN std_logic_vector(6 DOWNTO 0);
	fin : OUT std_logic;
	horno_on : OUT std_logic;
	abierta : OUT std_logic;
	d_a : OUT std_logic_vector(6 DOWNTO 0);
	d_b : OUT std_logic_vector(6 DOWNTO 0);
	d_c : OUT std_logic_vector(6 DOWNTO 0);
	d_d : OUT std_logic_vector(6 DOWNTO 0)
	);
END Microondas;

-- Design Ports Information
-- fin	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- horno_on	=>  Location: PIN_M18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- abierta	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_a[0]	=>  Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_a[1]	=>  Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_a[2]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_a[3]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_a[4]	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_a[5]	=>  Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_a[6]	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_b[0]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_b[1]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_b[2]	=>  Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_b[3]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_b[4]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_b[5]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_b[6]	=>  Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_c[0]	=>  Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_c[1]	=>  Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_c[2]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_c[3]	=>  Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_c[4]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_c[5]	=>  Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_c[6]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_d[0]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_d[1]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_d[2]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_d[3]	=>  Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_d[4]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_d[5]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_d[6]	=>  Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- puerta	=>  Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset_n	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- e_p[0]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- e_p[1]	=>  Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- e_p[2]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- e_p[3]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- e_p[4]	=>  Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- e_p[6]	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- e_p[5]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- boton	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Microondas IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_puerta : std_logic;
SIGNAL ww_boton : std_logic;
SIGNAL ww_e_p : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_fin : std_logic;
SIGNAL ww_horno_on : std_logic;
SIGNAL ww_abierta : std_logic;
SIGNAL ww_d_a : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_d_b : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_d_c : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_d_d : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset_n~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_temporizador|i_1|Add0~11\ : std_logic;
SIGNAL \i_temporizador|i_1|Add0~12_combout\ : std_logic;
SIGNAL \i_UnidadControl|Selector5~2_combout\ : std_logic;
SIGNAL \i_UnidadControl|Selector3~1_combout\ : std_logic;
SIGNAL \i_UnidadControl|Selector3~3_combout\ : std_logic;
SIGNAL \i_UnidadControl|Selector2~0_combout\ : std_logic;
SIGNAL \i_temporizador|i_1|contador[6]~0_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \i_temporizador|i_3|Add0~0_combout\ : std_logic;
SIGNAL \reset_n~combout\ : std_logic;
SIGNAL \reset_n~clkctrl_outclk\ : std_logic;
SIGNAL \puerta~combout\ : std_logic;
SIGNAL \i_UnidadControl|Selector4~0_combout\ : std_logic;
SIGNAL \i_UnidadControl|Selector2~1_combout\ : std_logic;
SIGNAL \i_UnidadControl|estado_act.EspBot~regout\ : std_logic;
SIGNAL \boton~combout\ : std_logic;
SIGNAL \i_Detector|estado_act.Esp0~0_combout\ : std_logic;
SIGNAL \i_Detector|estado_act.Esp0~regout\ : std_logic;
SIGNAL \i_Detector|Selector1~0_combout\ : std_logic;
SIGNAL \i_Detector|estado_act.Pulso~regout\ : std_logic;
SIGNAL \i_UnidadControl|Selector0~0_combout\ : std_logic;
SIGNAL \i_UnidadControl|estado_act.Reposo~regout\ : std_logic;
SIGNAL \i_UnidadControl|Selector5~5_combout\ : std_logic;
SIGNAL \i_UnidadControl|Selector3~2_combout\ : std_logic;
SIGNAL \i_UnidadControl|Selector3~4_combout\ : std_logic;
SIGNAL \i_UnidadControl|Selector3~5_combout\ : std_logic;
SIGNAL \i_UnidadControl|estado_act.CargaSeg~regout\ : std_logic;
SIGNAL \i_UnidadControl|Selector6~0_combout\ : std_logic;
SIGNAL \i_UnidadControl|Selector6~1_combout\ : std_logic;
SIGNAL \i_UnidadControl|estado_act.Abierto~regout\ : std_logic;
SIGNAL \i_UnidadControl|Selector5~4_combout\ : std_logic;
SIGNAL \i_UnidadControl|Selector5~6_combout\ : std_logic;
SIGNAL \i_UnidadControl|Selector4~1_combout\ : std_logic;
SIGNAL \i_UnidadControl|estado_act.Activo~regout\ : std_logic;
SIGNAL \i_UnidadControl|Selector3~0_combout\ : std_logic;
SIGNAL \i_UnidadControl|Selector1~0_combout\ : std_logic;
SIGNAL \i_UnidadControl|estado_act.CargaMin~regout\ : std_logic;
SIGNAL \i_temporizador|i_4|contador~1_combout\ : std_logic;
SIGNAL \i_temporizador|i_1|Add0~0_combout\ : std_logic;
SIGNAL \i_temporizador|i_1|contador[0]~6_combout\ : std_logic;
SIGNAL \i_temporizador|i_1|Add0~1\ : std_logic;
SIGNAL \i_temporizador|i_1|Add0~3\ : std_logic;
SIGNAL \i_temporizador|i_1|Add0~4_combout\ : std_logic;
SIGNAL \i_temporizador|i_1|contador[2]~4_combout\ : std_logic;
SIGNAL \i_temporizador|i_1|Add0~5\ : std_logic;
SIGNAL \i_temporizador|i_1|Add0~6_combout\ : std_logic;
SIGNAL \i_temporizador|i_1|contador[3]~1_combout\ : std_logic;
SIGNAL \i_temporizador|i_1|Add0~7\ : std_logic;
SIGNAL \i_temporizador|i_1|Add0~8_combout\ : std_logic;
SIGNAL \i_temporizador|i_1|contador[4]~3_combout\ : std_logic;
SIGNAL \i_temporizador|i_1|Add0~9\ : std_logic;
SIGNAL \i_temporizador|i_1|Add0~10_combout\ : std_logic;
SIGNAL \i_temporizador|i_1|contador[5]~2_combout\ : std_logic;
SIGNAL \i_temporizador|i_1|Equal0~2_combout\ : std_logic;
SIGNAL \i_temporizador|i_1|Equal0~4_combout\ : std_logic;
SIGNAL \i_temporizador|i_1|Add0~2_combout\ : std_logic;
SIGNAL \i_temporizador|i_1|contador[1]~5_combout\ : std_logic;
SIGNAL \i_temporizador|i_1|Equal0~3_combout\ : std_logic;
SIGNAL \i_temporizador|i_2|contador~0_combout\ : std_logic;
SIGNAL \i_temporizador|i_2|contador[0]~1_combout\ : std_logic;
SIGNAL \i_temporizador|i_2|Add0~0_combout\ : std_logic;
SIGNAL \i_temporizador|i_2|contador~2_combout\ : std_logic;
SIGNAL \i_temporizador|i_2|Add0~1_combout\ : std_logic;
SIGNAL \i_temporizador|i_2|contador~3_combout\ : std_logic;
SIGNAL \i_temporizador|i_2|Add0~2_combout\ : std_logic;
SIGNAL \i_temporizador|i_2|contador~4_combout\ : std_logic;
SIGNAL \i_temporizador|i_2|Equal0~0_combout\ : std_logic;
SIGNAL \i_temporizador|i_4|contador[0]~2_combout\ : std_logic;
SIGNAL \i_temporizador|i_4|contador~4_combout\ : std_logic;
SIGNAL \i_temporizador|i_4|contador~5_combout\ : std_logic;
SIGNAL \i_temporizador|i_4|contador~3_combout\ : std_logic;
SIGNAL \i_temporizador|i_4|contador[2]~0_combout\ : std_logic;
SIGNAL \i_temporizador|i_4|Equal0~0_combout\ : std_logic;
SIGNAL \i_temporizador|i_4|contador[0]~6_combout\ : std_logic;
SIGNAL \i_temporizador|i_3|contador[1]~0_combout\ : std_logic;
SIGNAL \i_temporizador|i_3|contador~2_combout\ : std_logic;
SIGNAL \i_temporizador|i_3|contador~1_combout\ : std_logic;
SIGNAL \i_temporizador|i_3|Equal0~0_combout\ : std_logic;
SIGNAL \i_temporizador|i_5|contador[0]~_wirecell_combout\ : std_logic;
SIGNAL \i_temporizador|i_5|contador[2]~0_combout\ : std_logic;
SIGNAL \i_temporizador|i_5|contador~2_combout\ : std_logic;
SIGNAL \i_temporizador|i_5|contador~1_combout\ : std_logic;
SIGNAL \i_temporizador|i_5|Equal0~0_combout\ : std_logic;
SIGNAL \i_UnidadControl|Selector5~3_combout\ : std_logic;
SIGNAL \i_UnidadControl|Selector5~7_combout\ : std_logic;
SIGNAL \i_UnidadControl|estado_act.Finalizado~regout\ : std_logic;
SIGNAL \i_temporizador|i_9|Mux6~0_combout\ : std_logic;
SIGNAL \i_temporizador|i_9|Mux5~0_combout\ : std_logic;
SIGNAL \i_temporizador|i_9|Mux4~0_combout\ : std_logic;
SIGNAL \i_temporizador|i_9|Mux3~0_combout\ : std_logic;
SIGNAL \i_temporizador|i_9|Mux2~0_combout\ : std_logic;
SIGNAL \i_temporizador|i_9|Mux1~0_combout\ : std_logic;
SIGNAL \i_temporizador|i_9|Mux0~0_combout\ : std_logic;
SIGNAL \i_temporizador|i_8|Mux6~0_combout\ : std_logic;
SIGNAL \i_temporizador|i_8|Mux5~0_combout\ : std_logic;
SIGNAL \i_temporizador|i_8|Mux4~0_combout\ : std_logic;
SIGNAL \i_temporizador|i_8|Mux3~0_combout\ : std_logic;
SIGNAL \i_temporizador|i_8|Mux2~0_combout\ : std_logic;
SIGNAL \i_temporizador|i_8|Mux1~0_combout\ : std_logic;
SIGNAL \i_temporizador|i_8|Mux0~0_combout\ : std_logic;
SIGNAL \i_temporizador|i_3|contador[0]~_wirecell_combout\ : std_logic;
SIGNAL \i_temporizador|i_7|Mux6~0_combout\ : std_logic;
SIGNAL \i_temporizador|i_7|Mux5~0_combout\ : std_logic;
SIGNAL \i_temporizador|i_7|Mux4~0_combout\ : std_logic;
SIGNAL \i_temporizador|i_7|Mux3~0_combout\ : std_logic;
SIGNAL \i_temporizador|i_7|Mux2~0_combout\ : std_logic;
SIGNAL \i_temporizador|i_7|Mux1~0_combout\ : std_logic;
SIGNAL \i_temporizador|i_7|Mux0~0_combout\ : std_logic;
SIGNAL \i_temporizador|i_6|Mux6~0_combout\ : std_logic;
SIGNAL \i_temporizador|i_6|Mux5~0_combout\ : std_logic;
SIGNAL \i_temporizador|i_6|Mux4~0_combout\ : std_logic;
SIGNAL \i_temporizador|i_6|Mux3~0_combout\ : std_logic;
SIGNAL \i_temporizador|i_6|Mux2~0_combout\ : std_logic;
SIGNAL \i_temporizador|i_6|Mux1~0_combout\ : std_logic;
SIGNAL \i_temporizador|i_6|Mux0~0_combout\ : std_logic;
SIGNAL \i_temporizador|i_1|contador\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \i_temporizador|i_2|contador\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_temporizador|i_4|contador\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \e_p~combout\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \i_temporizador|i_5|contador\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \i_temporizador|i_3|contador\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_temporizador|i_7|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \i_temporizador|i_9|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_reset_n~clkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset_n <= reset_n;
ww_puerta <= puerta;
ww_boton <= boton;
ww_e_p <= e_p;
fin <= ww_fin;
horno_on <= ww_horno_on;
abierta <= ww_abierta;
d_a <= ww_d_a;
d_b <= ww_d_b;
d_c <= ww_d_c;
d_d <= ww_d_d;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\reset_n~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset_n~combout\);
\i_temporizador|i_7|ALT_INV_Mux0~0_combout\ <= NOT \i_temporizador|i_7|Mux0~0_combout\;
\i_temporizador|i_9|ALT_INV_Mux0~0_combout\ <= NOT \i_temporizador|i_9|Mux0~0_combout\;
\ALT_INV_reset_n~clkctrl_outclk\ <= NOT \reset_n~clkctrl_outclk\;

-- Location: LCCOMB_X49_Y13_N16
\i_temporizador|i_1|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_1|Add0~10_combout\ = (\i_temporizador|i_1|contador\(5) & (!\i_temporizador|i_1|Add0~9\)) # (!\i_temporizador|i_1|contador\(5) & ((\i_temporizador|i_1|Add0~9\) # (GND)))
-- \i_temporizador|i_1|Add0~11\ = CARRY((!\i_temporizador|i_1|Add0~9\) # (!\i_temporizador|i_1|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_temporizador|i_1|contador\(5),
	datad => VCC,
	cin => \i_temporizador|i_1|Add0~9\,
	combout => \i_temporizador|i_1|Add0~10_combout\,
	cout => \i_temporizador|i_1|Add0~11\);

-- Location: LCCOMB_X49_Y13_N18
\i_temporizador|i_1|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_1|Add0~12_combout\ = \i_temporizador|i_1|contador\(6) $ (!\i_temporizador|i_1|Add0~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|i_1|contador\(6),
	cin => \i_temporizador|i_1|Add0~11\,
	combout => \i_temporizador|i_1|Add0~12_combout\);

-- Location: LCCOMB_X46_Y13_N20
\i_UnidadControl|Selector5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_UnidadControl|Selector5~2_combout\ = (\i_UnidadControl|estado_act.Activo~regout\ & (!\i_temporizador|i_4|contador\(1) & (!\i_temporizador|i_4|contador\(0) & !\i_temporizador|i_4|contador\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_UnidadControl|estado_act.Activo~regout\,
	datab => \i_temporizador|i_4|contador\(1),
	datac => \i_temporizador|i_4|contador\(0),
	datad => \i_temporizador|i_4|contador\(2),
	combout => \i_UnidadControl|Selector5~2_combout\);

-- Location: LCFF_X48_Y13_N21
\i_temporizador|i_1|contador[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_temporizador|i_1|contador[6]~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_temporizador|i_1|contador\(6));

-- Location: LCCOMB_X45_Y13_N6
\i_UnidadControl|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_UnidadControl|Selector3~1_combout\ = (\i_UnidadControl|estado_act.CargaSeg~regout\ & ((!\i_UnidadControl|estado_act.Activo~regout\) # (!\puerta~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_UnidadControl|estado_act.CargaSeg~regout\,
	datab => \puerta~combout\,
	datad => \i_UnidadControl|estado_act.Activo~regout\,
	combout => \i_UnidadControl|Selector3~1_combout\);

-- Location: LCCOMB_X45_Y13_N10
\i_UnidadControl|Selector3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_UnidadControl|Selector3~3_combout\ = (\i_UnidadControl|estado_act.Finalizado~regout\) # ((\i_UnidadControl|estado_act.Abierto~regout\) # ((\i_UnidadControl|estado_act.CargaSeg~regout\) # (!\puerta~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_UnidadControl|estado_act.Finalizado~regout\,
	datab => \i_UnidadControl|estado_act.Abierto~regout\,
	datac => \puerta~combout\,
	datad => \i_UnidadControl|estado_act.CargaSeg~regout\,
	combout => \i_UnidadControl|Selector3~3_combout\);

-- Location: LCCOMB_X45_Y13_N30
\i_UnidadControl|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_UnidadControl|Selector2~0_combout\ = (\i_UnidadControl|estado_act.Finalizado~regout\ & (!\puerta~combout\ & ((\i_UnidadControl|estado_act.EspBot~regout\) # (\i_UnidadControl|estado_act.CargaMin~regout\)))) # 
-- (!\i_UnidadControl|estado_act.Finalizado~regout\ & (((\i_UnidadControl|estado_act.EspBot~regout\) # (\i_UnidadControl|estado_act.CargaMin~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_UnidadControl|estado_act.Finalizado~regout\,
	datab => \puerta~combout\,
	datac => \i_UnidadControl|estado_act.EspBot~regout\,
	datad => \i_UnidadControl|estado_act.CargaMin~regout\,
	combout => \i_UnidadControl|Selector2~0_combout\);

-- Location: LCCOMB_X48_Y13_N20
\i_temporizador|i_1|contador[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_1|contador[6]~0_combout\ = (\i_UnidadControl|estado_act.Activo~regout\ & (\i_temporizador|i_1|Equal0~4_combout\ & ((\i_temporizador|i_1|Add0~12_combout\)))) # (!\i_UnidadControl|estado_act.Activo~regout\ & 
-- (((\i_temporizador|i_1|contador\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_UnidadControl|estado_act.Activo~regout\,
	datab => \i_temporizador|i_1|Equal0~4_combout\,
	datac => \i_temporizador|i_1|contador\(6),
	datad => \i_temporizador|i_1|Add0~12_combout\,
	combout => \i_temporizador|i_1|contador[6]~0_combout\);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G3
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X47_Y13_N26
\i_temporizador|i_3|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_3|Add0~0_combout\ = \i_temporizador|i_3|contador\(3) $ (((!\i_temporizador|i_3|contador\(0) & (!\i_temporizador|i_3|contador\(1) & !\i_temporizador|i_3|contador\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|i_3|contador\(0),
	datab => \i_temporizador|i_3|contador\(1),
	datac => \i_temporizador|i_3|contador\(3),
	datad => \i_temporizador|i_3|contador\(2),
	combout => \i_temporizador|i_3|Add0~0_combout\);

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\e_p[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_e_p(3),
	combout => \e_p~combout\(3));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset_n~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reset_n,
	combout => \reset_n~combout\);

-- Location: CLKCTRL_G1
\reset_n~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset_n~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset_n~clkctrl_outclk\);

-- Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\puerta~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_puerta,
	combout => \puerta~combout\);

-- Location: LCCOMB_X46_Y13_N2
\i_UnidadControl|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_UnidadControl|Selector4~0_combout\ = (\i_UnidadControl|estado_act.Activo~regout\ & ((!\i_UnidadControl|estado_act.Finalizado~regout\) # (!\puerta~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \puerta~combout\,
	datab => \i_UnidadControl|estado_act.Finalizado~regout\,
	datad => \i_UnidadControl|estado_act.Activo~regout\,
	combout => \i_UnidadControl|Selector4~0_combout\);

-- Location: LCCOMB_X45_Y13_N20
\i_UnidadControl|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_UnidadControl|Selector2~1_combout\ = (\i_UnidadControl|Selector2~0_combout\ & ((\i_UnidadControl|estado_act.CargaMin~regout\) # ((!\i_UnidadControl|Selector5~3_combout\ & !\i_UnidadControl|Selector5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_UnidadControl|Selector2~0_combout\,
	datab => \i_UnidadControl|estado_act.CargaMin~regout\,
	datac => \i_UnidadControl|Selector5~3_combout\,
	datad => \i_UnidadControl|Selector5~6_combout\,
	combout => \i_UnidadControl|Selector2~1_combout\);

-- Location: LCFF_X45_Y13_N21
\i_UnidadControl|estado_act.EspBot\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_UnidadControl|Selector2~1_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_UnidadControl|estado_act.EspBot~regout\);

-- Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\boton~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_boton,
	combout => \boton~combout\);

-- Location: LCCOMB_X46_Y13_N8
\i_Detector|estado_act.Esp0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Detector|estado_act.Esp0~0_combout\ = !\boton~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \boton~combout\,
	combout => \i_Detector|estado_act.Esp0~0_combout\);

-- Location: LCFF_X46_Y13_N9
\i_Detector|estado_act.Esp0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_Detector|estado_act.Esp0~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_Detector|estado_act.Esp0~regout\);

-- Location: LCCOMB_X46_Y13_N26
\i_Detector|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Detector|Selector1~0_combout\ = (!\i_Detector|estado_act.Esp0~regout\ & !\boton~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_Detector|estado_act.Esp0~regout\,
	datad => \boton~combout\,
	combout => \i_Detector|Selector1~0_combout\);

-- Location: LCFF_X45_Y13_N7
\i_Detector|estado_act.Pulso\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Detector|Selector1~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_Detector|estado_act.Pulso~regout\);

-- Location: LCCOMB_X45_Y13_N14
\i_UnidadControl|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_UnidadControl|Selector0~0_combout\ = (\i_UnidadControl|estado_act.Finalizado~regout\ & (!\puerta~combout\ & ((\i_UnidadControl|estado_act.Reposo~regout\) # (\i_Detector|estado_act.Pulso~regout\)))) # (!\i_UnidadControl|estado_act.Finalizado~regout\ & 
-- (((\i_UnidadControl|estado_act.Reposo~regout\) # (\i_Detector|estado_act.Pulso~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_UnidadControl|estado_act.Finalizado~regout\,
	datab => \puerta~combout\,
	datac => \i_UnidadControl|estado_act.Reposo~regout\,
	datad => \i_Detector|estado_act.Pulso~regout\,
	combout => \i_UnidadControl|Selector0~0_combout\);

-- Location: LCFF_X45_Y13_N15
\i_UnidadControl|estado_act.Reposo\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_UnidadControl|Selector0~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_UnidadControl|estado_act.Reposo~regout\);

-- Location: LCCOMB_X45_Y13_N26
\i_UnidadControl|Selector5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_UnidadControl|Selector5~5_combout\ = (!\i_UnidadControl|estado_act.CargaMin~regout\ & (((!\i_UnidadControl|estado_act.EspBot~regout\ & \i_UnidadControl|estado_act.Reposo~regout\)) # (!\i_Detector|estado_act.Pulso~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_UnidadControl|estado_act.EspBot~regout\,
	datab => \i_UnidadControl|estado_act.CargaMin~regout\,
	datac => \i_UnidadControl|estado_act.Reposo~regout\,
	datad => \i_Detector|estado_act.Pulso~regout\,
	combout => \i_UnidadControl|Selector5~5_combout\);

-- Location: LCCOMB_X45_Y13_N12
\i_UnidadControl|Selector3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_UnidadControl|Selector3~2_combout\ = (!\i_UnidadControl|estado_act.Activo~regout\ & ((\i_UnidadControl|estado_act.Finalizado~regout\ & (\puerta~combout\)) # (!\i_UnidadControl|estado_act.Finalizado~regout\ & ((\i_UnidadControl|Selector5~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_UnidadControl|estado_act.Finalizado~regout\,
	datab => \puerta~combout\,
	datac => \i_UnidadControl|Selector5~4_combout\,
	datad => \i_UnidadControl|estado_act.Activo~regout\,
	combout => \i_UnidadControl|Selector3~2_combout\);

-- Location: LCCOMB_X45_Y13_N0
\i_UnidadControl|Selector3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_UnidadControl|Selector3~4_combout\ = ((\i_UnidadControl|Selector3~2_combout\) # ((\i_UnidadControl|Selector3~3_combout\ & \i_UnidadControl|Selector5~3_combout\))) # (!\i_UnidadControl|Selector5~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_UnidadControl|Selector3~3_combout\,
	datab => \i_UnidadControl|Selector5~5_combout\,
	datac => \i_UnidadControl|Selector5~3_combout\,
	datad => \i_UnidadControl|Selector3~2_combout\,
	combout => \i_UnidadControl|Selector3~4_combout\);

-- Location: LCCOMB_X45_Y13_N18
\i_UnidadControl|Selector3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_UnidadControl|Selector3~5_combout\ = (\i_UnidadControl|Selector3~4_combout\ & (((\i_UnidadControl|Selector3~0_combout\ & \i_UnidadControl|estado_act.EspBot~regout\)))) # (!\i_UnidadControl|Selector3~4_combout\ & (\i_UnidadControl|Selector3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_UnidadControl|Selector3~1_combout\,
	datab => \i_UnidadControl|Selector3~0_combout\,
	datac => \i_UnidadControl|estado_act.EspBot~regout\,
	datad => \i_UnidadControl|Selector3~4_combout\,
	combout => \i_UnidadControl|Selector3~5_combout\);

-- Location: LCFF_X45_Y13_N19
\i_UnidadControl|estado_act.CargaSeg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_UnidadControl|Selector3~5_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_UnidadControl|estado_act.CargaSeg~regout\);

-- Location: LCCOMB_X46_Y13_N22
\i_UnidadControl|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_UnidadControl|Selector6~0_combout\ = (\i_UnidadControl|estado_act.Abierto~regout\ & (!\i_UnidadControl|Selector5~3_combout\ & !\i_UnidadControl|Selector5~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_UnidadControl|estado_act.Abierto~regout\,
	datac => \i_UnidadControl|Selector5~3_combout\,
	datad => \i_UnidadControl|Selector5~6_combout\,
	combout => \i_UnidadControl|Selector6~0_combout\);

-- Location: LCCOMB_X46_Y13_N24
\i_UnidadControl|Selector6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_UnidadControl|Selector6~1_combout\ = (\puerta~combout\ & (!\i_UnidadControl|estado_act.Finalizado~regout\ & ((\i_UnidadControl|estado_act.Activo~regout\) # (\i_UnidadControl|Selector6~0_combout\)))) # (!\puerta~combout\ & 
-- (((\i_UnidadControl|Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \puerta~combout\,
	datab => \i_UnidadControl|estado_act.Finalizado~regout\,
	datac => \i_UnidadControl|estado_act.Activo~regout\,
	datad => \i_UnidadControl|Selector6~0_combout\,
	combout => \i_UnidadControl|Selector6~1_combout\);

-- Location: LCFF_X46_Y13_N25
\i_UnidadControl|estado_act.Abierto\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_UnidadControl|Selector6~1_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_UnidadControl|estado_act.Abierto~regout\);

-- Location: LCCOMB_X45_Y13_N16
\i_UnidadControl|Selector5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_UnidadControl|Selector5~4_combout\ = (!\puerta~combout\ & ((\i_UnidadControl|estado_act.CargaSeg~regout\) # (\i_UnidadControl|estado_act.Abierto~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_UnidadControl|estado_act.CargaSeg~regout\,
	datac => \puerta~combout\,
	datad => \i_UnidadControl|estado_act.Abierto~regout\,
	combout => \i_UnidadControl|Selector5~4_combout\);

-- Location: LCCOMB_X45_Y13_N8
\i_UnidadControl|Selector5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_UnidadControl|Selector5~6_combout\ = (\i_UnidadControl|Selector5~4_combout\) # (((\puerta~combout\ & \i_UnidadControl|estado_act.Activo~regout\)) # (!\i_UnidadControl|Selector5~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \puerta~combout\,
	datab => \i_UnidadControl|estado_act.Activo~regout\,
	datac => \i_UnidadControl|Selector5~4_combout\,
	datad => \i_UnidadControl|Selector5~5_combout\,
	combout => \i_UnidadControl|Selector5~6_combout\);

-- Location: LCCOMB_X46_Y13_N30
\i_UnidadControl|Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_UnidadControl|Selector4~1_combout\ = (\i_UnidadControl|Selector5~4_combout\) # ((\i_UnidadControl|Selector4~0_combout\ & (!\i_UnidadControl|Selector5~3_combout\ & !\i_UnidadControl|Selector5~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_UnidadControl|Selector5~4_combout\,
	datab => \i_UnidadControl|Selector4~0_combout\,
	datac => \i_UnidadControl|Selector5~3_combout\,
	datad => \i_UnidadControl|Selector5~6_combout\,
	combout => \i_UnidadControl|Selector4~1_combout\);

-- Location: LCFF_X46_Y13_N31
\i_UnidadControl|estado_act.Activo\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_UnidadControl|Selector4~1_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_UnidadControl|estado_act.Activo~regout\);

-- Location: LCCOMB_X45_Y13_N22
\i_UnidadControl|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_UnidadControl|Selector3~0_combout\ = (\i_Detector|estado_act.Pulso~regout\ & ((!\i_UnidadControl|estado_act.Activo~regout\) # (!\puerta~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Detector|estado_act.Pulso~regout\,
	datac => \puerta~combout\,
	datad => \i_UnidadControl|estado_act.Activo~regout\,
	combout => \i_UnidadControl|Selector3~0_combout\);

-- Location: LCCOMB_X45_Y13_N28
\i_UnidadControl|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_UnidadControl|Selector1~0_combout\ = (\i_UnidadControl|Selector3~0_combout\ & (!\i_UnidadControl|estado_act.Reposo~regout\ & \i_UnidadControl|Selector3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_UnidadControl|Selector3~0_combout\,
	datac => \i_UnidadControl|estado_act.Reposo~regout\,
	datad => \i_UnidadControl|Selector3~4_combout\,
	combout => \i_UnidadControl|Selector1~0_combout\);

-- Location: LCFF_X45_Y13_N29
\i_UnidadControl|estado_act.CargaMin\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_UnidadControl|Selector1~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_UnidadControl|estado_act.CargaMin~regout\);

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\e_p[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_e_p(5),
	combout => \e_p~combout\(5));

-- Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\e_p[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_e_p(4),
	combout => \e_p~combout\(4));

-- Location: LCCOMB_X46_Y13_N16
\i_temporizador|i_4|contador~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_4|contador~1_combout\ = (\i_UnidadControl|estado_act.CargaSeg~regout\ & ((\e_p~combout\(4)))) # (!\i_UnidadControl|estado_act.CargaSeg~regout\ & (!\i_temporizador|i_4|contador\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_UnidadControl|estado_act.CargaSeg~regout\,
	datac => \i_temporizador|i_4|contador\(0),
	datad => \e_p~combout\(4),
	combout => \i_temporizador|i_4|contador~1_combout\);

-- Location: LCCOMB_X49_Y13_N6
\i_temporizador|i_1|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_1|Add0~0_combout\ = \i_temporizador|i_1|contador\(0) $ (VCC)
-- \i_temporizador|i_1|Add0~1\ = CARRY(\i_temporizador|i_1|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|i_1|contador\(0),
	datad => VCC,
	combout => \i_temporizador|i_1|Add0~0_combout\,
	cout => \i_temporizador|i_1|Add0~1\);

-- Location: LCCOMB_X48_Y13_N30
\i_temporizador|i_1|contador[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_1|contador[0]~6_combout\ = (\i_UnidadControl|estado_act.Activo~regout\ & (\i_temporizador|i_1|Equal0~4_combout\ & ((\i_temporizador|i_1|Add0~0_combout\)))) # (!\i_UnidadControl|estado_act.Activo~regout\ & 
-- (((\i_temporizador|i_1|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_UnidadControl|estado_act.Activo~regout\,
	datab => \i_temporizador|i_1|Equal0~4_combout\,
	datac => \i_temporizador|i_1|contador\(0),
	datad => \i_temporizador|i_1|Add0~0_combout\,
	combout => \i_temporizador|i_1|contador[0]~6_combout\);

-- Location: LCFF_X48_Y13_N31
\i_temporizador|i_1|contador[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_temporizador|i_1|contador[0]~6_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_temporizador|i_1|contador\(0));

-- Location: LCCOMB_X49_Y13_N8
\i_temporizador|i_1|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_1|Add0~2_combout\ = (\i_temporizador|i_1|contador\(1) & (!\i_temporizador|i_1|Add0~1\)) # (!\i_temporizador|i_1|contador\(1) & ((\i_temporizador|i_1|Add0~1\) # (GND)))
-- \i_temporizador|i_1|Add0~3\ = CARRY((!\i_temporizador|i_1|Add0~1\) # (!\i_temporizador|i_1|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_temporizador|i_1|contador\(1),
	datad => VCC,
	cin => \i_temporizador|i_1|Add0~1\,
	combout => \i_temporizador|i_1|Add0~2_combout\,
	cout => \i_temporizador|i_1|Add0~3\);

-- Location: LCCOMB_X49_Y13_N10
\i_temporizador|i_1|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_1|Add0~4_combout\ = (\i_temporizador|i_1|contador\(2) & (\i_temporizador|i_1|Add0~3\ $ (GND))) # (!\i_temporizador|i_1|contador\(2) & (!\i_temporizador|i_1|Add0~3\ & VCC))
-- \i_temporizador|i_1|Add0~5\ = CARRY((\i_temporizador|i_1|contador\(2) & !\i_temporizador|i_1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|i_1|contador\(2),
	datad => VCC,
	cin => \i_temporizador|i_1|Add0~3\,
	combout => \i_temporizador|i_1|Add0~4_combout\,
	cout => \i_temporizador|i_1|Add0~5\);

-- Location: LCCOMB_X48_Y13_N14
\i_temporizador|i_1|contador[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_1|contador[2]~4_combout\ = (\i_UnidadControl|estado_act.Activo~regout\ & (\i_temporizador|i_1|Equal0~4_combout\ & ((\i_temporizador|i_1|Add0~4_combout\)))) # (!\i_UnidadControl|estado_act.Activo~regout\ & 
-- (((\i_temporizador|i_1|contador\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_UnidadControl|estado_act.Activo~regout\,
	datab => \i_temporizador|i_1|Equal0~4_combout\,
	datac => \i_temporizador|i_1|contador\(2),
	datad => \i_temporizador|i_1|Add0~4_combout\,
	combout => \i_temporizador|i_1|contador[2]~4_combout\);

-- Location: LCFF_X48_Y13_N15
\i_temporizador|i_1|contador[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_temporizador|i_1|contador[2]~4_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_temporizador|i_1|contador\(2));

-- Location: LCCOMB_X49_Y13_N12
\i_temporizador|i_1|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_1|Add0~6_combout\ = (\i_temporizador|i_1|contador\(3) & (!\i_temporizador|i_1|Add0~5\)) # (!\i_temporizador|i_1|contador\(3) & ((\i_temporizador|i_1|Add0~5\) # (GND)))
-- \i_temporizador|i_1|Add0~7\ = CARRY((!\i_temporizador|i_1|Add0~5\) # (!\i_temporizador|i_1|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_temporizador|i_1|contador\(3),
	datad => VCC,
	cin => \i_temporizador|i_1|Add0~5\,
	combout => \i_temporizador|i_1|Add0~6_combout\,
	cout => \i_temporizador|i_1|Add0~7\);

-- Location: LCCOMB_X48_Y13_N26
\i_temporizador|i_1|contador[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_1|contador[3]~1_combout\ = (\i_UnidadControl|estado_act.Activo~regout\ & (\i_temporizador|i_1|Add0~6_combout\ & ((\i_temporizador|i_1|Equal0~4_combout\)))) # (!\i_UnidadControl|estado_act.Activo~regout\ & 
-- (((\i_temporizador|i_1|contador\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_UnidadControl|estado_act.Activo~regout\,
	datab => \i_temporizador|i_1|Add0~6_combout\,
	datac => \i_temporizador|i_1|contador\(3),
	datad => \i_temporizador|i_1|Equal0~4_combout\,
	combout => \i_temporizador|i_1|contador[3]~1_combout\);

-- Location: LCFF_X48_Y13_N27
\i_temporizador|i_1|contador[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_temporizador|i_1|contador[3]~1_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_temporizador|i_1|contador\(3));

-- Location: LCCOMB_X49_Y13_N14
\i_temporizador|i_1|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_1|Add0~8_combout\ = (\i_temporizador|i_1|contador\(4) & (\i_temporizador|i_1|Add0~7\ $ (GND))) # (!\i_temporizador|i_1|contador\(4) & (!\i_temporizador|i_1|Add0~7\ & VCC))
-- \i_temporizador|i_1|Add0~9\ = CARRY((\i_temporizador|i_1|contador\(4) & !\i_temporizador|i_1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_temporizador|i_1|contador\(4),
	datad => VCC,
	cin => \i_temporizador|i_1|Add0~7\,
	combout => \i_temporizador|i_1|Add0~8_combout\,
	cout => \i_temporizador|i_1|Add0~9\);

-- Location: LCCOMB_X48_Y13_N18
\i_temporizador|i_1|contador[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_1|contador[4]~3_combout\ = (\i_UnidadControl|estado_act.Activo~regout\ & (\i_temporizador|i_1|Equal0~4_combout\ & ((\i_temporizador|i_1|Add0~8_combout\)))) # (!\i_UnidadControl|estado_act.Activo~regout\ & 
-- (((\i_temporizador|i_1|contador\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_UnidadControl|estado_act.Activo~regout\,
	datab => \i_temporizador|i_1|Equal0~4_combout\,
	datac => \i_temporizador|i_1|contador\(4),
	datad => \i_temporizador|i_1|Add0~8_combout\,
	combout => \i_temporizador|i_1|contador[4]~3_combout\);

-- Location: LCFF_X48_Y13_N19
\i_temporizador|i_1|contador[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_temporizador|i_1|contador[4]~3_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_temporizador|i_1|contador\(4));

-- Location: LCCOMB_X48_Y13_N24
\i_temporizador|i_1|contador[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_1|contador[5]~2_combout\ = (\i_UnidadControl|estado_act.Activo~regout\ & (\i_temporizador|i_1|Equal0~4_combout\ & ((\i_temporizador|i_1|Add0~10_combout\)))) # (!\i_UnidadControl|estado_act.Activo~regout\ & 
-- (((\i_temporizador|i_1|contador\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_UnidadControl|estado_act.Activo~regout\,
	datab => \i_temporizador|i_1|Equal0~4_combout\,
	datac => \i_temporizador|i_1|contador\(5),
	datad => \i_temporizador|i_1|Add0~10_combout\,
	combout => \i_temporizador|i_1|contador[5]~2_combout\);

-- Location: LCFF_X48_Y13_N25
\i_temporizador|i_1|contador[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_temporizador|i_1|contador[5]~2_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_temporizador|i_1|contador\(5));

-- Location: LCCOMB_X48_Y13_N16
\i_temporizador|i_1|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_1|Equal0~2_combout\ = (\i_temporizador|i_1|contador\(6)) # ((\i_temporizador|i_1|contador\(3)) # ((!\i_temporizador|i_1|contador\(4)) # (!\i_temporizador|i_1|contador\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|i_1|contador\(6),
	datab => \i_temporizador|i_1|contador\(3),
	datac => \i_temporizador|i_1|contador\(5),
	datad => \i_temporizador|i_1|contador\(4),
	combout => \i_temporizador|i_1|Equal0~2_combout\);

-- Location: LCCOMB_X48_Y13_N2
\i_temporizador|i_1|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_1|Equal0~4_combout\ = (\i_temporizador|i_1|contador\(1)) # (((\i_temporizador|i_1|contador\(2)) # (\i_temporizador|i_1|Equal0~2_combout\)) # (!\i_temporizador|i_1|contador\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|i_1|contador\(1),
	datab => \i_temporizador|i_1|contador\(0),
	datac => \i_temporizador|i_1|contador\(2),
	datad => \i_temporizador|i_1|Equal0~2_combout\,
	combout => \i_temporizador|i_1|Equal0~4_combout\);

-- Location: LCCOMB_X48_Y13_N4
\i_temporizador|i_1|contador[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_1|contador[1]~5_combout\ = (\i_UnidadControl|estado_act.Activo~regout\ & (\i_temporizador|i_1|Equal0~4_combout\ & ((\i_temporizador|i_1|Add0~2_combout\)))) # (!\i_UnidadControl|estado_act.Activo~regout\ & 
-- (((\i_temporizador|i_1|contador\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_UnidadControl|estado_act.Activo~regout\,
	datab => \i_temporizador|i_1|Equal0~4_combout\,
	datac => \i_temporizador|i_1|contador\(1),
	datad => \i_temporizador|i_1|Add0~2_combout\,
	combout => \i_temporizador|i_1|contador[1]~5_combout\);

-- Location: LCFF_X48_Y13_N5
\i_temporizador|i_1|contador[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_temporizador|i_1|contador[1]~5_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_temporizador|i_1|contador\(1));

-- Location: LCCOMB_X48_Y13_N12
\i_temporizador|i_1|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_1|Equal0~3_combout\ = (\i_temporizador|i_1|contador\(1)) # ((\i_temporizador|i_1|contador\(2)) # (!\i_temporizador|i_1|contador\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_temporizador|i_1|contador\(1),
	datac => \i_temporizador|i_1|contador\(2),
	datad => \i_temporizador|i_1|contador\(0),
	combout => \i_temporizador|i_1|Equal0~3_combout\);

-- Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\e_p[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_e_p(0),
	combout => \e_p~combout\(0));

-- Location: LCCOMB_X48_Y13_N8
\i_temporizador|i_2|contador~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_2|contador~0_combout\ = (\i_UnidadControl|estado_act.CargaSeg~regout\ & (\e_p~combout\(0))) # (!\i_UnidadControl|estado_act.CargaSeg~regout\ & ((!\i_temporizador|i_2|contador\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_UnidadControl|estado_act.CargaSeg~regout\,
	datab => \e_p~combout\(0),
	datac => \i_temporizador|i_2|contador\(0),
	combout => \i_temporizador|i_2|contador~0_combout\);

-- Location: LCCOMB_X48_Y13_N22
\i_temporizador|i_2|contador[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_2|contador[0]~1_combout\ = (\i_UnidadControl|estado_act.CargaSeg~regout\) # ((!\i_temporizador|i_1|Equal0~2_combout\ & !\i_temporizador|i_1|Equal0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_UnidadControl|estado_act.CargaSeg~regout\,
	datab => \i_temporizador|i_1|Equal0~2_combout\,
	datad => \i_temporizador|i_1|Equal0~3_combout\,
	combout => \i_temporizador|i_2|contador[0]~1_combout\);

-- Location: LCFF_X48_Y13_N9
\i_temporizador|i_2|contador[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_temporizador|i_2|contador~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \i_temporizador|i_2|contador[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_temporizador|i_2|contador\(0));

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\e_p[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_e_p(2),
	combout => \e_p~combout\(2));

-- Location: LCCOMB_X49_Y13_N24
\i_temporizador|i_2|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_2|Add0~0_combout\ = \i_temporizador|i_2|contador\(1) $ (\i_temporizador|i_2|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_temporizador|i_2|contador\(1),
	datad => \i_temporizador|i_2|contador\(0),
	combout => \i_temporizador|i_2|Add0~0_combout\);

-- Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\e_p[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_e_p(1),
	combout => \e_p~combout\(1));

-- Location: LCCOMB_X48_Y13_N6
\i_temporizador|i_2|contador~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_2|contador~2_combout\ = (\i_UnidadControl|estado_act.CargaSeg~regout\ & (((\e_p~combout\(1))))) # (!\i_UnidadControl|estado_act.CargaSeg~regout\ & (!\i_temporizador|i_2|Add0~0_combout\ & ((!\i_temporizador|i_2|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_UnidadControl|estado_act.CargaSeg~regout\,
	datab => \i_temporizador|i_2|Add0~0_combout\,
	datac => \e_p~combout\(1),
	datad => \i_temporizador|i_2|Equal0~0_combout\,
	combout => \i_temporizador|i_2|contador~2_combout\);

-- Location: LCFF_X48_Y13_N7
\i_temporizador|i_2|contador[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_temporizador|i_2|contador~2_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \i_temporizador|i_2|contador[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_temporizador|i_2|contador\(1));

-- Location: LCCOMB_X48_Y13_N0
\i_temporizador|i_2|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_2|Add0~1_combout\ = \i_temporizador|i_2|contador\(2) $ (((\i_temporizador|i_2|contador\(0)) # (\i_temporizador|i_2|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|i_2|contador\(0),
	datab => \i_temporizador|i_2|contador\(2),
	datac => \i_temporizador|i_2|contador\(1),
	combout => \i_temporizador|i_2|Add0~1_combout\);

-- Location: LCCOMB_X48_Y13_N28
\i_temporizador|i_2|contador~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_2|contador~3_combout\ = (\i_UnidadControl|estado_act.CargaSeg~regout\ & (\e_p~combout\(2))) # (!\i_UnidadControl|estado_act.CargaSeg~regout\ & (((!\i_temporizador|i_2|Add0~1_combout\ & !\i_temporizador|i_2|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_UnidadControl|estado_act.CargaSeg~regout\,
	datab => \e_p~combout\(2),
	datac => \i_temporizador|i_2|Add0~1_combout\,
	datad => \i_temporizador|i_2|Equal0~0_combout\,
	combout => \i_temporizador|i_2|contador~3_combout\);

-- Location: LCFF_X48_Y13_N29
\i_temporizador|i_2|contador[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_temporizador|i_2|contador~3_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \i_temporizador|i_2|contador[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_temporizador|i_2|contador\(2));

-- Location: LCCOMB_X49_Y13_N0
\i_temporizador|i_2|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_2|Add0~2_combout\ = \i_temporizador|i_2|contador\(3) $ (((\i_temporizador|i_2|contador\(2)) # ((\i_temporizador|i_2|contador\(1)) # (\i_temporizador|i_2|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|i_2|contador\(3),
	datab => \i_temporizador|i_2|contador\(2),
	datac => \i_temporizador|i_2|contador\(1),
	datad => \i_temporizador|i_2|contador\(0),
	combout => \i_temporizador|i_2|Add0~2_combout\);

-- Location: LCCOMB_X48_Y13_N10
\i_temporizador|i_2|contador~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_2|contador~4_combout\ = (\i_UnidadControl|estado_act.CargaSeg~regout\ & (\e_p~combout\(3))) # (!\i_UnidadControl|estado_act.CargaSeg~regout\ & ((!\i_temporizador|i_2|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e_p~combout\(3),
	datab => \i_temporizador|i_2|Add0~2_combout\,
	datac => \i_UnidadControl|estado_act.CargaSeg~regout\,
	combout => \i_temporizador|i_2|contador~4_combout\);

-- Location: LCFF_X48_Y13_N11
\i_temporizador|i_2|contador[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_temporizador|i_2|contador~4_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \i_temporizador|i_2|contador[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_temporizador|i_2|contador\(3));

-- Location: LCCOMB_X47_Y13_N22
\i_temporizador|i_2|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_2|Equal0~0_combout\ = (!\i_temporizador|i_2|contador\(1) & (!\i_temporizador|i_2|contador\(0) & (!\i_temporizador|i_2|contador\(3) & !\i_temporizador|i_2|contador\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|i_2|contador\(1),
	datab => \i_temporizador|i_2|contador\(0),
	datac => \i_temporizador|i_2|contador\(3),
	datad => \i_temporizador|i_2|contador\(2),
	combout => \i_temporizador|i_2|Equal0~0_combout\);

-- Location: LCCOMB_X47_Y13_N24
\i_temporizador|i_4|contador[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_4|contador[0]~2_combout\ = (\i_UnidadControl|estado_act.CargaSeg~regout\) # ((!\i_temporizador|i_1|Equal0~3_combout\ & (!\i_temporizador|i_1|Equal0~2_combout\ & \i_temporizador|i_2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_UnidadControl|estado_act.CargaSeg~regout\,
	datab => \i_temporizador|i_1|Equal0~3_combout\,
	datac => \i_temporizador|i_1|Equal0~2_combout\,
	datad => \i_temporizador|i_2|Equal0~0_combout\,
	combout => \i_temporizador|i_4|contador[0]~2_combout\);

-- Location: LCFF_X46_Y13_N17
\i_temporizador|i_4|contador[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_temporizador|i_4|contador~1_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \i_temporizador|i_4|contador[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_temporizador|i_4|contador\(0));

-- Location: LCCOMB_X46_Y13_N10
\i_temporizador|i_4|contador~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_4|contador~4_combout\ = (!\i_UnidadControl|estado_act.CargaSeg~regout\ & ((\i_temporizador|i_4|contador\(1) & ((\i_temporizador|i_4|contador\(0)))) # (!\i_temporizador|i_4|contador\(1) & (\i_temporizador|i_4|contador\(2) & 
-- !\i_temporizador|i_4|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|i_4|contador\(2),
	datab => \i_temporizador|i_4|contador\(1),
	datac => \i_temporizador|i_4|contador\(0),
	datad => \i_UnidadControl|estado_act.CargaSeg~regout\,
	combout => \i_temporizador|i_4|contador~4_combout\);

-- Location: LCCOMB_X46_Y13_N18
\i_temporizador|i_4|contador~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_4|contador~5_combout\ = (\i_temporizador|i_4|contador~4_combout\) # ((\i_UnidadControl|estado_act.CargaSeg~regout\ & \e_p~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_UnidadControl|estado_act.CargaSeg~regout\,
	datac => \e_p~combout\(5),
	datad => \i_temporizador|i_4|contador~4_combout\,
	combout => \i_temporizador|i_4|contador~5_combout\);

-- Location: LCFF_X46_Y13_N19
\i_temporizador|i_4|contador[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_temporizador|i_4|contador~5_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \i_temporizador|i_4|contador[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_temporizador|i_4|contador\(1));

-- Location: LCCOMB_X46_Y13_N28
\i_temporizador|i_4|contador~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_4|contador~3_combout\ = \i_temporizador|i_4|contador\(2) $ (\i_temporizador|i_4|contador\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_temporizador|i_4|contador\(2),
	datad => \i_temporizador|i_4|contador\(1),
	combout => \i_temporizador|i_4|contador~3_combout\);

-- Location: LCCOMB_X46_Y13_N0
\i_temporizador|i_4|contador[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_4|contador[2]~0_combout\ = (\i_temporizador|i_4|contador\(0) & (\i_temporizador|i_4|contador\(2))) # (!\i_temporizador|i_4|contador\(0) & ((!\i_temporizador|i_4|contador~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|i_4|contador\(0),
	datac => \i_temporizador|i_4|contador\(2),
	datad => \i_temporizador|i_4|contador~3_combout\,
	combout => \i_temporizador|i_4|contador[2]~0_combout\);

-- Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\e_p[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_e_p(6),
	combout => \e_p~combout\(6));

-- Location: LCFF_X46_Y13_N1
\i_temporizador|i_4|contador[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_temporizador|i_4|contador[2]~0_combout\,
	sdata => \e_p~combout\(6),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => \i_UnidadControl|estado_act.CargaSeg~regout\,
	ena => \i_temporizador|i_4|contador[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_temporizador|i_4|contador\(2));

-- Location: LCCOMB_X46_Y13_N4
\i_temporizador|i_4|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_4|Equal0~0_combout\ = (!\i_temporizador|i_4|contador\(1) & (!\i_temporizador|i_4|contador\(0) & !\i_temporizador|i_4|contador\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_temporizador|i_4|contador\(1),
	datac => \i_temporizador|i_4|contador\(0),
	datad => \i_temporizador|i_4|contador\(2),
	combout => \i_temporizador|i_4|Equal0~0_combout\);

-- Location: LCCOMB_X47_Y13_N18
\i_temporizador|i_4|contador[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_4|contador[0]~6_combout\ = (!\i_temporizador|i_1|Equal0~3_combout\ & (!\i_temporizador|i_1|Equal0~2_combout\ & \i_temporizador|i_2|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_temporizador|i_1|Equal0~3_combout\,
	datac => \i_temporizador|i_1|Equal0~2_combout\,
	datad => \i_temporizador|i_2|Equal0~0_combout\,
	combout => \i_temporizador|i_4|contador[0]~6_combout\);

-- Location: LCCOMB_X47_Y13_N4
\i_temporizador|i_3|contador[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_3|contador[1]~0_combout\ = (\i_UnidadControl|estado_act.CargaMin~regout\) # ((\i_temporizador|i_4|Equal0~0_combout\ & \i_temporizador|i_4|contador[0]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_UnidadControl|estado_act.CargaMin~regout\,
	datac => \i_temporizador|i_4|Equal0~0_combout\,
	datad => \i_temporizador|i_4|contador[0]~6_combout\,
	combout => \i_temporizador|i_3|contador[1]~0_combout\);

-- Location: LCFF_X47_Y13_N27
\i_temporizador|i_3|contador[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_temporizador|i_3|Add0~0_combout\,
	sdata => \e_p~combout\(3),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => \i_UnidadControl|estado_act.CargaMin~regout\,
	ena => \i_temporizador|i_3|contador[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_temporizador|i_3|contador\(3));

-- Location: LCCOMB_X47_Y13_N20
\i_temporizador|i_3|contador~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_3|contador~2_combout\ = (\i_temporizador|i_3|contador\(0) & (((\i_temporizador|i_3|contador\(2))))) # (!\i_temporizador|i_3|contador\(0) & ((\i_temporizador|i_3|contador\(1) & (\i_temporizador|i_3|contador\(2))) # 
-- (!\i_temporizador|i_3|contador\(1) & (!\i_temporizador|i_3|contador\(2) & \i_temporizador|i_3|contador\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|i_3|contador\(0),
	datab => \i_temporizador|i_3|contador\(1),
	datac => \i_temporizador|i_3|contador\(2),
	datad => \i_temporizador|i_3|contador\(3),
	combout => \i_temporizador|i_3|contador~2_combout\);

-- Location: LCFF_X47_Y13_N21
\i_temporizador|i_3|contador[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_temporizador|i_3|contador~2_combout\,
	sdata => \e_p~combout\(2),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => \i_UnidadControl|estado_act.CargaMin~regout\,
	ena => \i_temporizador|i_3|contador[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_temporizador|i_3|contador\(2));

-- Location: LCCOMB_X47_Y13_N14
\i_temporizador|i_3|contador~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_3|contador~1_combout\ = (\i_temporizador|i_3|contador\(0) & (((\i_temporizador|i_3|contador\(1))))) # (!\i_temporizador|i_3|contador\(0) & (!\i_temporizador|i_3|contador\(1) & ((\i_temporizador|i_3|contador\(2)) # 
-- (\i_temporizador|i_3|contador\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|i_3|contador\(0),
	datab => \i_temporizador|i_3|contador\(2),
	datac => \i_temporizador|i_3|contador\(1),
	datad => \i_temporizador|i_3|contador\(3),
	combout => \i_temporizador|i_3|contador~1_combout\);

-- Location: LCFF_X47_Y13_N15
\i_temporizador|i_3|contador[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_temporizador|i_3|contador~1_combout\,
	sdata => \e_p~combout\(1),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => \i_UnidadControl|estado_act.CargaMin~regout\,
	ena => \i_temporizador|i_3|contador[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_temporizador|i_3|contador\(1));

-- Location: LCCOMB_X47_Y13_N0
\i_temporizador|i_3|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_3|Equal0~0_combout\ = (!\i_temporizador|i_3|contador\(0) & (!\i_temporizador|i_3|contador\(1) & (!\i_temporizador|i_3|contador\(2) & !\i_temporizador|i_3|contador\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|i_3|contador\(0),
	datab => \i_temporizador|i_3|contador\(1),
	datac => \i_temporizador|i_3|contador\(2),
	datad => \i_temporizador|i_3|contador\(3),
	combout => \i_temporizador|i_3|Equal0~0_combout\);

-- Location: LCCOMB_X47_Y13_N8
\i_temporizador|i_5|contador[0]~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_5|contador[0]~_wirecell_combout\ = !\i_temporizador|i_5|contador\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_temporizador|i_5|contador\(0),
	combout => \i_temporizador|i_5|contador[0]~_wirecell_combout\);

-- Location: LCCOMB_X47_Y13_N6
\i_temporizador|i_5|contador[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_5|contador[2]~0_combout\ = (\i_UnidadControl|estado_act.CargaMin~regout\) # ((\i_temporizador|i_3|Equal0~0_combout\ & (\i_temporizador|i_4|Equal0~0_combout\ & \i_temporizador|i_4|contador[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|i_3|Equal0~0_combout\,
	datab => \i_UnidadControl|estado_act.CargaMin~regout\,
	datac => \i_temporizador|i_4|Equal0~0_combout\,
	datad => \i_temporizador|i_4|contador[0]~6_combout\,
	combout => \i_temporizador|i_5|contador[2]~0_combout\);

-- Location: LCFF_X47_Y13_N9
\i_temporizador|i_5|contador[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_temporizador|i_5|contador[0]~_wirecell_combout\,
	sdata => \e_p~combout\(4),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => \i_UnidadControl|estado_act.CargaMin~regout\,
	ena => \i_temporizador|i_5|contador[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_temporizador|i_5|contador\(0));

-- Location: LCCOMB_X47_Y13_N12
\i_temporizador|i_5|contador~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_5|contador~2_combout\ = (\i_temporizador|i_5|contador\(0) & (\i_temporizador|i_5|contador\(1))) # (!\i_temporizador|i_5|contador\(0) & (!\i_temporizador|i_5|contador\(1) & \i_temporizador|i_5|contador\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_temporizador|i_5|contador\(0),
	datac => \i_temporizador|i_5|contador\(1),
	datad => \i_temporizador|i_5|contador\(2),
	combout => \i_temporizador|i_5|contador~2_combout\);

-- Location: LCFF_X47_Y13_N13
\i_temporizador|i_5|contador[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_temporizador|i_5|contador~2_combout\,
	sdata => \e_p~combout\(5),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => \i_UnidadControl|estado_act.CargaMin~regout\,
	ena => \i_temporizador|i_5|contador[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_temporizador|i_5|contador\(1));

-- Location: LCCOMB_X47_Y13_N30
\i_temporizador|i_5|contador~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_5|contador~1_combout\ = \i_temporizador|i_5|contador\(2) $ (((!\i_temporizador|i_5|contador\(0) & !\i_temporizador|i_5|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_temporizador|i_5|contador\(0),
	datac => \i_temporizador|i_5|contador\(2),
	datad => \i_temporizador|i_5|contador\(1),
	combout => \i_temporizador|i_5|contador~1_combout\);

-- Location: LCFF_X47_Y13_N31
\i_temporizador|i_5|contador[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_temporizador|i_5|contador~1_combout\,
	sdata => \e_p~combout\(6),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => \i_UnidadControl|estado_act.CargaMin~regout\,
	ena => \i_temporizador|i_5|contador[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_temporizador|i_5|contador\(2));

-- Location: LCCOMB_X47_Y13_N10
\i_temporizador|i_5|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_5|Equal0~0_combout\ = (!\i_temporizador|i_5|contador\(1) & (!\i_temporizador|i_5|contador\(0) & !\i_temporizador|i_5|contador\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|i_5|contador\(1),
	datac => \i_temporizador|i_5|contador\(0),
	datad => \i_temporizador|i_5|contador\(2),
	combout => \i_temporizador|i_5|Equal0~0_combout\);

-- Location: LCCOMB_X46_Y13_N14
\i_UnidadControl|Selector5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_UnidadControl|Selector5~3_combout\ = (\i_UnidadControl|Selector5~2_combout\ & (\i_temporizador|i_3|Equal0~0_combout\ & (\i_temporizador|i_5|Equal0~0_combout\ & \i_temporizador|i_2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_UnidadControl|Selector5~2_combout\,
	datab => \i_temporizador|i_3|Equal0~0_combout\,
	datac => \i_temporizador|i_5|Equal0~0_combout\,
	datad => \i_temporizador|i_2|Equal0~0_combout\,
	combout => \i_UnidadControl|Selector5~3_combout\);

-- Location: LCCOMB_X45_Y13_N24
\i_UnidadControl|Selector5~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_UnidadControl|Selector5~7_combout\ = (!\puerta~combout\ & ((\i_UnidadControl|Selector5~3_combout\) # ((!\i_UnidadControl|Selector5~6_combout\ & \i_UnidadControl|estado_act.Finalizado~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_UnidadControl|Selector5~6_combout\,
	datab => \i_UnidadControl|Selector5~3_combout\,
	datac => \i_UnidadControl|estado_act.Finalizado~regout\,
	datad => \puerta~combout\,
	combout => \i_UnidadControl|Selector5~7_combout\);

-- Location: LCFF_X45_Y13_N25
\i_UnidadControl|estado_act.Finalizado\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_UnidadControl|Selector5~7_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_UnidadControl|estado_act.Finalizado~regout\);

-- Location: LCCOMB_X49_Y17_N8
\i_temporizador|i_9|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_9|Mux6~0_combout\ = (\i_temporizador|i_2|contador\(3) & (\i_temporizador|i_2|contador\(0) & (\i_temporizador|i_2|contador\(1) $ (\i_temporizador|i_2|contador\(2))))) # (!\i_temporizador|i_2|contador\(3) & 
-- (!\i_temporizador|i_2|contador\(1) & (\i_temporizador|i_2|contador\(0) $ (\i_temporizador|i_2|contador\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|i_2|contador\(0),
	datab => \i_temporizador|i_2|contador\(3),
	datac => \i_temporizador|i_2|contador\(1),
	datad => \i_temporizador|i_2|contador\(2),
	combout => \i_temporizador|i_9|Mux6~0_combout\);

-- Location: LCCOMB_X49_Y17_N2
\i_temporizador|i_9|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_9|Mux5~0_combout\ = (\i_temporizador|i_2|contador\(3) & ((\i_temporizador|i_2|contador\(0) & (\i_temporizador|i_2|contador\(1))) # (!\i_temporizador|i_2|contador\(0) & ((\i_temporizador|i_2|contador\(2)))))) # 
-- (!\i_temporizador|i_2|contador\(3) & (\i_temporizador|i_2|contador\(2) & (\i_temporizador|i_2|contador\(0) $ (\i_temporizador|i_2|contador\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|i_2|contador\(0),
	datab => \i_temporizador|i_2|contador\(3),
	datac => \i_temporizador|i_2|contador\(1),
	datad => \i_temporizador|i_2|contador\(2),
	combout => \i_temporizador|i_9|Mux5~0_combout\);

-- Location: LCCOMB_X49_Y13_N4
\i_temporizador|i_9|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_9|Mux4~0_combout\ = (\i_temporizador|i_2|contador\(2) & (\i_temporizador|i_2|contador\(3) & ((\i_temporizador|i_2|contador\(1)) # (!\i_temporizador|i_2|contador\(0))))) # (!\i_temporizador|i_2|contador\(2) & 
-- (!\i_temporizador|i_2|contador\(0) & (\i_temporizador|i_2|contador\(1) & !\i_temporizador|i_2|contador\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|i_2|contador\(0),
	datab => \i_temporizador|i_2|contador\(2),
	datac => \i_temporizador|i_2|contador\(1),
	datad => \i_temporizador|i_2|contador\(3),
	combout => \i_temporizador|i_9|Mux4~0_combout\);

-- Location: LCCOMB_X49_Y13_N22
\i_temporizador|i_9|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_9|Mux3~0_combout\ = (\i_temporizador|i_2|contador\(1) & ((\i_temporizador|i_2|contador\(0) & (\i_temporizador|i_2|contador\(2))) # (!\i_temporizador|i_2|contador\(0) & (!\i_temporizador|i_2|contador\(2) & 
-- \i_temporizador|i_2|contador\(3))))) # (!\i_temporizador|i_2|contador\(1) & (!\i_temporizador|i_2|contador\(3) & (\i_temporizador|i_2|contador\(0) $ (\i_temporizador|i_2|contador\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|i_2|contador\(0),
	datab => \i_temporizador|i_2|contador\(2),
	datac => \i_temporizador|i_2|contador\(1),
	datad => \i_temporizador|i_2|contador\(3),
	combout => \i_temporizador|i_9|Mux3~0_combout\);

-- Location: LCCOMB_X49_Y17_N28
\i_temporizador|i_9|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_9|Mux2~0_combout\ = (\i_temporizador|i_2|contador\(1) & (\i_temporizador|i_2|contador\(0) & (!\i_temporizador|i_2|contador\(3)))) # (!\i_temporizador|i_2|contador\(1) & ((\i_temporizador|i_2|contador\(2) & 
-- ((!\i_temporizador|i_2|contador\(3)))) # (!\i_temporizador|i_2|contador\(2) & (\i_temporizador|i_2|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|i_2|contador\(0),
	datab => \i_temporizador|i_2|contador\(3),
	datac => \i_temporizador|i_2|contador\(1),
	datad => \i_temporizador|i_2|contador\(2),
	combout => \i_temporizador|i_9|Mux2~0_combout\);

-- Location: LCCOMB_X49_Y17_N22
\i_temporizador|i_9|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_9|Mux1~0_combout\ = (\i_temporizador|i_2|contador\(0) & (\i_temporizador|i_2|contador\(3) $ (((\i_temporizador|i_2|contador\(1)) # (!\i_temporizador|i_2|contador\(2)))))) # (!\i_temporizador|i_2|contador\(0) & 
-- (!\i_temporizador|i_2|contador\(3) & (\i_temporizador|i_2|contador\(1) & !\i_temporizador|i_2|contador\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|i_2|contador\(0),
	datab => \i_temporizador|i_2|contador\(3),
	datac => \i_temporizador|i_2|contador\(1),
	datad => \i_temporizador|i_2|contador\(2),
	combout => \i_temporizador|i_9|Mux1~0_combout\);

-- Location: LCCOMB_X49_Y17_N4
\i_temporizador|i_9|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_9|Mux0~0_combout\ = (\i_temporizador|i_2|contador\(0) & ((\i_temporizador|i_2|contador\(3)) # (\i_temporizador|i_2|contador\(1) $ (\i_temporizador|i_2|contador\(2))))) # (!\i_temporizador|i_2|contador\(0) & 
-- ((\i_temporizador|i_2|contador\(1)) # (\i_temporizador|i_2|contador\(3) $ (\i_temporizador|i_2|contador\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|i_2|contador\(0),
	datab => \i_temporizador|i_2|contador\(3),
	datac => \i_temporizador|i_2|contador\(1),
	datad => \i_temporizador|i_2|contador\(2),
	combout => \i_temporizador|i_9|Mux0~0_combout\);

-- Location: LCCOMB_X49_Y17_N10
\i_temporizador|i_8|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_8|Mux6~0_combout\ = (!\i_temporizador|i_4|contador\(1) & (\i_temporizador|i_4|contador\(2) $ (\i_temporizador|i_4|contador\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|i_4|contador\(1),
	datac => \i_temporizador|i_4|contador\(2),
	datad => \i_temporizador|i_4|contador\(0),
	combout => \i_temporizador|i_8|Mux6~0_combout\);

-- Location: LCCOMB_X49_Y17_N0
\i_temporizador|i_8|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_8|Mux5~0_combout\ = (\i_temporizador|i_4|contador\(2) & (\i_temporizador|i_4|contador\(1) $ (\i_temporizador|i_4|contador\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|i_4|contador\(1),
	datac => \i_temporizador|i_4|contador\(2),
	datad => \i_temporizador|i_4|contador\(0),
	combout => \i_temporizador|i_8|Mux5~0_combout\);

-- Location: LCCOMB_X49_Y17_N18
\i_temporizador|i_8|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_8|Mux4~0_combout\ = (\i_temporizador|i_4|contador\(1) & (!\i_temporizador|i_4|contador\(2) & !\i_temporizador|i_4|contador\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|i_4|contador\(1),
	datac => \i_temporizador|i_4|contador\(2),
	datad => \i_temporizador|i_4|contador\(0),
	combout => \i_temporizador|i_8|Mux4~0_combout\);

-- Location: LCCOMB_X49_Y17_N20
\i_temporizador|i_8|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_8|Mux3~0_combout\ = (\i_temporizador|i_4|contador\(1) & (\i_temporizador|i_4|contador\(2) & \i_temporizador|i_4|contador\(0))) # (!\i_temporizador|i_4|contador\(1) & (\i_temporizador|i_4|contador\(2) $ 
-- (\i_temporizador|i_4|contador\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|i_4|contador\(1),
	datac => \i_temporizador|i_4|contador\(2),
	datad => \i_temporizador|i_4|contador\(0),
	combout => \i_temporizador|i_8|Mux3~0_combout\);

-- Location: LCCOMB_X49_Y17_N26
\i_temporizador|i_8|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_8|Mux2~0_combout\ = (\i_temporizador|i_4|contador\(0)) # ((!\i_temporizador|i_4|contador\(1) & \i_temporizador|i_4|contador\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|i_4|contador\(1),
	datac => \i_temporizador|i_4|contador\(2),
	datad => \i_temporizador|i_4|contador\(0),
	combout => \i_temporizador|i_8|Mux2~0_combout\);

-- Location: LCCOMB_X49_Y17_N12
\i_temporizador|i_8|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_8|Mux1~0_combout\ = (\i_temporizador|i_4|contador\(1) & ((\i_temporizador|i_4|contador\(0)) # (!\i_temporizador|i_4|contador\(2)))) # (!\i_temporizador|i_4|contador\(1) & (!\i_temporizador|i_4|contador\(2) & 
-- \i_temporizador|i_4|contador\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|i_4|contador\(1),
	datac => \i_temporizador|i_4|contador\(2),
	datad => \i_temporizador|i_4|contador\(0),
	combout => \i_temporizador|i_8|Mux1~0_combout\);

-- Location: LCCOMB_X49_Y17_N6
\i_temporizador|i_8|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_8|Mux0~0_combout\ = (\i_temporizador|i_4|contador\(1) & (\i_temporizador|i_4|contador\(2) & \i_temporizador|i_4|contador\(0))) # (!\i_temporizador|i_4|contador\(1) & (!\i_temporizador|i_4|contador\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|i_4|contador\(1),
	datac => \i_temporizador|i_4|contador\(2),
	datad => \i_temporizador|i_4|contador\(0),
	combout => \i_temporizador|i_8|Mux0~0_combout\);

-- Location: LCCOMB_X47_Y13_N16
\i_temporizador|i_3|contador[0]~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_3|contador[0]~_wirecell_combout\ = !\i_temporizador|i_3|contador\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_temporizador|i_3|contador\(0),
	combout => \i_temporizador|i_3|contador[0]~_wirecell_combout\);

-- Location: LCFF_X47_Y13_N17
\i_temporizador|i_3|contador[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_temporizador|i_3|contador[0]~_wirecell_combout\,
	sdata => \e_p~combout\(0),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => \i_UnidadControl|estado_act.CargaMin~regout\,
	ena => \i_temporizador|i_3|contador[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_temporizador|i_3|contador\(0));

-- Location: LCCOMB_X49_Y12_N0
\i_temporizador|i_7|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_7|Mux6~0_combout\ = (\i_temporizador|i_3|contador\(3) & (\i_temporizador|i_3|contador\(0) & (\i_temporizador|i_3|contador\(1) $ (\i_temporizador|i_3|contador\(2))))) # (!\i_temporizador|i_3|contador\(3) & 
-- (!\i_temporizador|i_3|contador\(1) & (\i_temporizador|i_3|contador\(2) $ (\i_temporizador|i_3|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|i_3|contador\(1),
	datab => \i_temporizador|i_3|contador\(3),
	datac => \i_temporizador|i_3|contador\(2),
	datad => \i_temporizador|i_3|contador\(0),
	combout => \i_temporizador|i_7|Mux6~0_combout\);

-- Location: LCCOMB_X49_Y12_N6
\i_temporizador|i_7|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_7|Mux5~0_combout\ = (\i_temporizador|i_3|contador\(1) & ((\i_temporizador|i_3|contador\(0) & (\i_temporizador|i_3|contador\(3))) # (!\i_temporizador|i_3|contador\(0) & ((\i_temporizador|i_3|contador\(2)))))) # 
-- (!\i_temporizador|i_3|contador\(1) & (\i_temporizador|i_3|contador\(2) & (\i_temporizador|i_3|contador\(3) $ (\i_temporizador|i_3|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|i_3|contador\(1),
	datab => \i_temporizador|i_3|contador\(3),
	datac => \i_temporizador|i_3|contador\(2),
	datad => \i_temporizador|i_3|contador\(0),
	combout => \i_temporizador|i_7|Mux5~0_combout\);

-- Location: LCCOMB_X49_Y12_N8
\i_temporizador|i_7|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_7|Mux4~0_combout\ = (\i_temporizador|i_3|contador\(3) & (\i_temporizador|i_3|contador\(2) & ((\i_temporizador|i_3|contador\(1)) # (!\i_temporizador|i_3|contador\(0))))) # (!\i_temporizador|i_3|contador\(3) & 
-- (\i_temporizador|i_3|contador\(1) & (!\i_temporizador|i_3|contador\(2) & !\i_temporizador|i_3|contador\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|i_3|contador\(1),
	datab => \i_temporizador|i_3|contador\(3),
	datac => \i_temporizador|i_3|contador\(2),
	datad => \i_temporizador|i_3|contador\(0),
	combout => \i_temporizador|i_7|Mux4~0_combout\);

-- Location: LCCOMB_X49_Y12_N22
\i_temporizador|i_7|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_7|Mux3~0_combout\ = (\i_temporizador|i_3|contador\(1) & ((\i_temporizador|i_3|contador\(2) & ((\i_temporizador|i_3|contador\(0)))) # (!\i_temporizador|i_3|contador\(2) & (\i_temporizador|i_3|contador\(3) & 
-- !\i_temporizador|i_3|contador\(0))))) # (!\i_temporizador|i_3|contador\(1) & (!\i_temporizador|i_3|contador\(3) & (\i_temporizador|i_3|contador\(2) $ (\i_temporizador|i_3|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|i_3|contador\(1),
	datab => \i_temporizador|i_3|contador\(3),
	datac => \i_temporizador|i_3|contador\(2),
	datad => \i_temporizador|i_3|contador\(0),
	combout => \i_temporizador|i_7|Mux3~0_combout\);

-- Location: LCCOMB_X49_Y12_N4
\i_temporizador|i_7|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_7|Mux2~0_combout\ = (\i_temporizador|i_3|contador\(1) & (!\i_temporizador|i_3|contador\(3) & ((\i_temporizador|i_3|contador\(0))))) # (!\i_temporizador|i_3|contador\(1) & ((\i_temporizador|i_3|contador\(2) & 
-- (!\i_temporizador|i_3|contador\(3))) # (!\i_temporizador|i_3|contador\(2) & ((\i_temporizador|i_3|contador\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|i_3|contador\(1),
	datab => \i_temporizador|i_3|contador\(3),
	datac => \i_temporizador|i_3|contador\(2),
	datad => \i_temporizador|i_3|contador\(0),
	combout => \i_temporizador|i_7|Mux2~0_combout\);

-- Location: LCCOMB_X49_Y12_N18
\i_temporizador|i_7|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_7|Mux1~0_combout\ = (\i_temporizador|i_3|contador\(1) & (!\i_temporizador|i_3|contador\(3) & ((\i_temporizador|i_3|contador\(0)) # (!\i_temporizador|i_3|contador\(2))))) # (!\i_temporizador|i_3|contador\(1) & 
-- (\i_temporizador|i_3|contador\(0) & (\i_temporizador|i_3|contador\(3) $ (!\i_temporizador|i_3|contador\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|i_3|contador\(1),
	datab => \i_temporizador|i_3|contador\(3),
	datac => \i_temporizador|i_3|contador\(2),
	datad => \i_temporizador|i_3|contador\(0),
	combout => \i_temporizador|i_7|Mux1~0_combout\);

-- Location: LCCOMB_X49_Y12_N12
\i_temporizador|i_7|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_7|Mux0~0_combout\ = (\i_temporizador|i_3|contador\(0) & ((\i_temporizador|i_3|contador\(3)) # (\i_temporizador|i_3|contador\(1) $ (\i_temporizador|i_3|contador\(2))))) # (!\i_temporizador|i_3|contador\(0) & 
-- ((\i_temporizador|i_3|contador\(1)) # (\i_temporizador|i_3|contador\(3) $ (\i_temporizador|i_3|contador\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|i_3|contador\(1),
	datab => \i_temporizador|i_3|contador\(3),
	datac => \i_temporizador|i_3|contador\(2),
	datad => \i_temporizador|i_3|contador\(0),
	combout => \i_temporizador|i_7|Mux0~0_combout\);

-- Location: LCCOMB_X49_Y8_N16
\i_temporizador|i_6|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_6|Mux6~0_combout\ = (!\i_temporizador|i_5|contador\(1) & (\i_temporizador|i_5|contador\(2) $ (\i_temporizador|i_5|contador\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_temporizador|i_5|contador\(2),
	datac => \i_temporizador|i_5|contador\(0),
	datad => \i_temporizador|i_5|contador\(1),
	combout => \i_temporizador|i_6|Mux6~0_combout\);

-- Location: LCCOMB_X49_Y8_N26
\i_temporizador|i_6|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_6|Mux5~0_combout\ = (\i_temporizador|i_5|contador\(2) & (\i_temporizador|i_5|contador\(0) $ (\i_temporizador|i_5|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_temporizador|i_5|contador\(2),
	datac => \i_temporizador|i_5|contador\(0),
	datad => \i_temporizador|i_5|contador\(1),
	combout => \i_temporizador|i_6|Mux5~0_combout\);

-- Location: LCCOMB_X49_Y8_N4
\i_temporizador|i_6|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_6|Mux4~0_combout\ = (!\i_temporizador|i_5|contador\(2) & (!\i_temporizador|i_5|contador\(0) & \i_temporizador|i_5|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_temporizador|i_5|contador\(2),
	datac => \i_temporizador|i_5|contador\(0),
	datad => \i_temporizador|i_5|contador\(1),
	combout => \i_temporizador|i_6|Mux4~0_combout\);

-- Location: LCCOMB_X49_Y8_N6
\i_temporizador|i_6|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_6|Mux3~0_combout\ = (\i_temporizador|i_5|contador\(2) & (\i_temporizador|i_5|contador\(0) $ (!\i_temporizador|i_5|contador\(1)))) # (!\i_temporizador|i_5|contador\(2) & (\i_temporizador|i_5|contador\(0) & 
-- !\i_temporizador|i_5|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_temporizador|i_5|contador\(2),
	datac => \i_temporizador|i_5|contador\(0),
	datad => \i_temporizador|i_5|contador\(1),
	combout => \i_temporizador|i_6|Mux3~0_combout\);

-- Location: LCCOMB_X49_Y8_N12
\i_temporizador|i_6|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_6|Mux2~0_combout\ = (\i_temporizador|i_5|contador\(0)) # ((\i_temporizador|i_5|contador\(2) & !\i_temporizador|i_5|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_temporizador|i_5|contador\(2),
	datac => \i_temporizador|i_5|contador\(0),
	datad => \i_temporizador|i_5|contador\(1),
	combout => \i_temporizador|i_6|Mux2~0_combout\);

-- Location: LCCOMB_X49_Y8_N10
\i_temporizador|i_6|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_6|Mux1~0_combout\ = (\i_temporizador|i_5|contador\(2) & (\i_temporizador|i_5|contador\(0) & \i_temporizador|i_5|contador\(1))) # (!\i_temporizador|i_5|contador\(2) & ((\i_temporizador|i_5|contador\(0)) # 
-- (\i_temporizador|i_5|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_temporizador|i_5|contador\(2),
	datac => \i_temporizador|i_5|contador\(0),
	datad => \i_temporizador|i_5|contador\(1),
	combout => \i_temporizador|i_6|Mux1~0_combout\);

-- Location: LCCOMB_X49_Y8_N0
\i_temporizador|i_6|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|i_6|Mux0~0_combout\ = (\i_temporizador|i_5|contador\(2) & (\i_temporizador|i_5|contador\(0) & \i_temporizador|i_5|contador\(1))) # (!\i_temporizador|i_5|contador\(2) & ((!\i_temporizador|i_5|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_temporizador|i_5|contador\(2),
	datac => \i_temporizador|i_5|contador\(0),
	datad => \i_temporizador|i_5|contador\(1),
	combout => \i_temporizador|i_6|Mux0~0_combout\);

-- Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fin~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_UnidadControl|estado_act.Finalizado~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_fin);

-- Location: PIN_M18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\horno_on~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_UnidadControl|estado_act.Activo~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_horno_on);

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\abierta~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \puerta~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_abierta);

-- Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_a[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_temporizador|i_9|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_a(0));

-- Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_a[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_temporizador|i_9|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_a(1));

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_a[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_temporizador|i_9|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_a(2));

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_a[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_temporizador|i_9|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_a(3));

-- Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_a[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_temporizador|i_9|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_a(4));

-- Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_a[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_temporizador|i_9|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_a(5));

-- Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_a[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_temporizador|i_9|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_a(6));

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_b[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_temporizador|i_8|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_b(0));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_b[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_temporizador|i_8|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_b(1));

-- Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_b[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_temporizador|i_8|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_b(2));

-- Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_b[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_temporizador|i_8|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_b(3));

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_b[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_temporizador|i_8|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_b(4));

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_b[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_temporizador|i_8|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_b(5));

-- Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_b[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_temporizador|i_8|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_b(6));

-- Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_c[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_temporizador|i_7|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_c(0));

-- Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_c[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_temporizador|i_7|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_c(1));

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_c[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_temporizador|i_7|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_c(2));

-- Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_c[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_temporizador|i_7|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_c(3));

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_c[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_temporizador|i_7|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_c(4));

-- Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_c[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_temporizador|i_7|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_c(5));

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_c[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_temporizador|i_7|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_c(6));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_d[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_temporizador|i_6|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_d(0));

-- Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_d[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_temporizador|i_6|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_d(1));

-- Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_d[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_temporizador|i_6|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_d(2));

-- Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_d[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_temporizador|i_6|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_d(3));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_d[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_temporizador|i_6|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_d(4));

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_d[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_temporizador|i_6|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_d(5));

-- Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_d[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_temporizador|i_6|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_d(6));
END structure;


