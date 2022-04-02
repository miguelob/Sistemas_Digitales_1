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

-- DATE "12/05/2018 12:40:13"

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
	ent_p : IN std_logic_vector(6 DOWNTO 0);
	fin : OUT std_logic;
	horno_on : OUT std_logic;
	abierta : OUT std_logic;
	cnt_seg : OUT std_logic_vector(7 DOWNTO 0);
	cnt_min : OUT std_logic_vector(7 DOWNTO 0)
	);
END Microondas;

-- Design Ports Information
-- fin	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- horno_on	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- abierta	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt_seg[0]	=>  Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt_seg[1]	=>  Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt_seg[2]	=>  Location: PIN_M18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt_seg[3]	=>  Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt_seg[4]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt_seg[5]	=>  Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt_seg[6]	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt_seg[7]	=>  Location: PIN_AA5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt_min[0]	=>  Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt_min[1]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt_min[2]	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt_min[3]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt_min[4]	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt_min[5]	=>  Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt_min[6]	=>  Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt_min[7]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- puerta	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- boton	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset_n	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ent_p[0]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ent_p[1]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ent_p[2]	=>  Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ent_p[3]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ent_p[4]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ent_p[5]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ent_p[6]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_ent_p : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_fin : std_logic;
SIGNAL ww_horno_on : std_logic;
SIGNAL ww_abierta : std_logic;
SIGNAL ww_cnt_seg : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_cnt_min : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_temporizador|inst3|Add0~0_combout\ : std_logic;
SIGNAL \i_temporizador|inst3|Add0~10_combout\ : std_logic;
SIGNAL \i_temporizador|inst3|Add0~12_combout\ : std_logic;
SIGNAL \i_temporizador|inst3|Add0~16_combout\ : std_logic;
SIGNAL \i_temporizador|inst3|Add0~18_combout\ : std_logic;
SIGNAL \i_temporizador|inst3|Add0~20_combout\ : std_logic;
SIGNAL \i_temporizador|inst3|Add0~32_combout\ : std_logic;
SIGNAL \i_temporizador|inst3|Add0~36_combout\ : std_logic;
SIGNAL \i_temporizador|inst3|Add0~42_combout\ : std_logic;
SIGNAL \i_temporizador|inst3|Add0~47\ : std_logic;
SIGNAL \i_temporizador|inst3|Add0~48_combout\ : std_logic;
SIGNAL \i_temporizador|inst3|Add0~49\ : std_logic;
SIGNAL \i_temporizador|inst3|Add0~50_combout\ : std_logic;
SIGNAL \i_UnidadControl|Selector2~5_combout\ : std_logic;
SIGNAL \i_temporizador|inst3|Equal0~3_combout\ : std_logic;
SIGNAL \i_temporizador|inst3|Equal0~5_combout\ : std_logic;
SIGNAL \i_UnidadControl|Selector3~1_combout\ : std_logic;
SIGNAL \i_UnidadControl|Selector1~2_combout\ : std_logic;
SIGNAL \i_temporizador|inst3|contador[24]~1_combout\ : std_logic;
SIGNAL \i_temporizador|inst3|contador[18]~5_combout\ : std_logic;
SIGNAL \i_temporizador|inst3|contador[9]~17_combout\ : std_logic;
SIGNAL \i_temporizador|inst3|contador[8]~18_combout\ : std_logic;
SIGNAL \i_temporizador|inst3|contador[5]~21_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \puerta~combout\ : std_logic;
SIGNAL \i_UnidadControl|Selector2~7_combout\ : std_logic;
SIGNAL \i_UnidadControl|Selector3~0_combout\ : std_logic;
SIGNAL \i_UnidadControl|Selector2~11_combout\ : std_logic;
SIGNAL \reset_n~combout\ : std_logic;
SIGNAL \i_UnidadControl|estado_act.EspBot~regout\ : std_logic;
SIGNAL \i_UnidadControl|Selector1~4_combout\ : std_logic;
SIGNAL \i_UnidadControl|Selector6~0_combout\ : std_logic;
SIGNAL \i_UnidadControl|estado_act.Abierto~regout\ : std_logic;
SIGNAL \i_UnidadControl|Selector1~0_combout\ : std_logic;
SIGNAL \boton~combout\ : std_logic;
SIGNAL \i_UnidadControl|Selector0~0_combout\ : std_logic;
SIGNAL \i_UnidadControl|estado_act.Reposo~regout\ : std_logic;
SIGNAL \i_UnidadControl|Selector1~5_combout\ : std_logic;
SIGNAL \i_UnidadControl|estado_act.CargaMin~regout\ : std_logic;
SIGNAL \i_UnidadControl|Selector2~9_combout\ : std_logic;
SIGNAL \i_UnidadControl|Selector1~1_combout\ : std_logic;
SIGNAL \i_temporizador|inst7|contador~0_combout\ : std_logic;
SIGNAL \i_temporizador|inst3|contador[10]~14_combout\ : std_logic;
SIGNAL \i_temporizador|inst3|contador[6]~20_combout\ : std_logic;
SIGNAL \i_temporizador|inst3|Add0~1\ : std_logic;
SIGNAL \i_temporizador|inst3|Add0~2_combout\ : std_logic;
SIGNAL \i_temporizador|inst3|contador[1]~25_combout\ : std_logic;
SIGNAL \i_temporizador|inst3|Add0~3\ : std_logic;
SIGNAL \i_temporizador|inst3|Add0~4_combout\ : std_logic;
SIGNAL \i_temporizador|inst3|contador[2]~24_combout\ : std_logic;
SIGNAL \i_temporizador|inst3|Add0~5\ : std_logic;
SIGNAL \i_temporizador|inst3|Add0~7\ : std_logic;
SIGNAL \i_temporizador|inst3|Add0~9\ : std_logic;
SIGNAL \i_temporizador|inst3|Add0~11\ : std_logic;
SIGNAL \i_temporizador|inst3|Add0~13\ : std_logic;
SIGNAL \i_temporizador|inst3|Add0~14_combout\ : std_logic;
SIGNAL \i_temporizador|inst3|contador[7]~19_combout\ : std_logic;
SIGNAL \i_temporizador|inst3|Add0~15\ : std_logic;
SIGNAL \i_temporizador|inst3|Add0~17\ : std_logic;
SIGNAL \i_temporizador|inst3|Add0~19\ : std_logic;
SIGNAL \i_temporizador|inst3|Add0~21\ : std_logic;
SIGNAL \i_temporizador|inst3|Add0~22_combout\ : std_logic;
SIGNAL \i_temporizador|inst3|contador[11]~13_combout\ : std_logic;
SIGNAL \i_temporizador|inst3|Add0~23\ : std_logic;
SIGNAL \i_temporizador|inst3|Add0~24_combout\ : std_logic;
SIGNAL \i_temporizador|inst3|contador[12]~16_combout\ : std_logic;
SIGNAL \i_temporizador|inst3|Add0~25\ : std_logic;
SIGNAL \i_temporizador|inst3|Add0~26_combout\ : std_logic;
SIGNAL \i_temporizador|inst3|contador[13]~15_combout\ : std_logic;
SIGNAL \i_temporizador|inst3|Add0~27\ : std_logic;
SIGNAL \i_temporizador|inst3|Add0~28_combout\ : std_logic;
SIGNAL \i_temporizador|inst3|contador[14]~12_combout\ : std_logic;
SIGNAL \i_temporizador|inst3|Add0~29\ : std_logic;
SIGNAL \i_temporizador|inst3|Add0~30_combout\ : std_logic;
SIGNAL \i_temporizador|inst3|contador[15]~11_combout\ : std_logic;
SIGNAL \i_temporizador|inst3|contador[16]~9_combout\ : std_logic;
SIGNAL \i_temporizador|inst3|Add0~31\ : std_logic;
SIGNAL \i_temporizador|inst3|Add0~33\ : std_logic;
SIGNAL \i_temporizador|inst3|Add0~34_combout\ : std_logic;
SIGNAL \i_temporizador|inst3|contador[17]~10_combout\ : std_logic;
SIGNAL \i_temporizador|inst3|Equal0~2_combout\ : std_logic;
SIGNAL \i_temporizador|inst3|contador[21]~6_combout\ : std_logic;
SIGNAL \i_temporizador|inst3|Add0~35\ : std_logic;
SIGNAL \i_temporizador|inst3|Add0~37\ : std_logic;
SIGNAL \i_temporizador|inst3|Add0~39\ : std_logic;
SIGNAL \i_temporizador|inst3|Add0~40_combout\ : std_logic;
SIGNAL \i_temporizador|inst3|contador[20]~7_combout\ : std_logic;
SIGNAL \i_temporizador|inst3|Add0~41\ : std_logic;
SIGNAL \i_temporizador|inst3|Add0~43\ : std_logic;
SIGNAL \i_temporizador|inst3|Add0~44_combout\ : std_logic;
SIGNAL \i_temporizador|inst3|contador[22]~4_combout\ : std_logic;
SIGNAL \i_temporizador|inst3|Add0~45\ : std_logic;
SIGNAL \i_temporizador|inst3|Add0~46_combout\ : std_logic;
SIGNAL \i_temporizador|inst3|contador[23]~3_combout\ : std_logic;
SIGNAL \i_temporizador|inst3|contador[25]~2_combout\ : std_logic;
SIGNAL \i_temporizador|inst3|Equal0~0_combout\ : std_logic;
SIGNAL \i_temporizador|inst3|Add0~38_combout\ : std_logic;
SIGNAL \i_temporizador|inst3|contador[19]~8_combout\ : std_logic;
SIGNAL \i_temporizador|inst3|Equal0~1_combout\ : std_logic;
SIGNAL \i_temporizador|inst3|Equal0~4_combout\ : std_logic;
SIGNAL \i_temporizador|inst3|contador[25]~0_combout\ : std_logic;
SIGNAL \i_temporizador|inst3|contador[0]~26_combout\ : std_logic;
SIGNAL \i_temporizador|inst3|Add0~8_combout\ : std_logic;
SIGNAL \i_temporizador|inst3|contador[4]~22_combout\ : std_logic;
SIGNAL \i_temporizador|inst3|Add0~6_combout\ : std_logic;
SIGNAL \i_temporizador|inst3|contador[3]~23_combout\ : std_logic;
SIGNAL \i_temporizador|inst3|Equal0~6_combout\ : std_logic;
SIGNAL \i_temporizador|inst3|Equal0~7_combout\ : std_logic;
SIGNAL \i_temporizador|inst7|contador[3]~1_combout\ : std_logic;
SIGNAL \i_temporizador|inst7|Add0~0_combout\ : std_logic;
SIGNAL \i_temporizador|inst7|contador~2_combout\ : std_logic;
SIGNAL \i_temporizador|inst7|Add0~1_combout\ : std_logic;
SIGNAL \i_temporizador|inst7|contador~3_combout\ : std_logic;
SIGNAL \i_temporizador|inst7|Equal0~0_combout\ : std_logic;
SIGNAL \i_temporizador|inst8|contador[0]~_wirecell_combout\ : std_logic;
SIGNAL \i_temporizador|inst9|contador~5_combout\ : std_logic;
SIGNAL \i_temporizador|inst9|contador~1_combout\ : std_logic;
SIGNAL \i_temporizador|inst9|contador[0]~2_combout\ : std_logic;
SIGNAL \i_temporizador|inst9|contador[2]~0_combout\ : std_logic;
SIGNAL \i_temporizador|inst9|contador~3_combout\ : std_logic;
SIGNAL \i_temporizador|inst9|contador~4_combout\ : std_logic;
SIGNAL \i_temporizador|inst9|Equal0~0_combout\ : std_logic;
SIGNAL \i_temporizador|inst9|contador[0]~6_combout\ : std_logic;
SIGNAL \i_temporizador|inst8|contador[0]~0_combout\ : std_logic;
SIGNAL \i_temporizador|inst8|Add0~0_combout\ : std_logic;
SIGNAL \i_temporizador|inst8|contador~1_combout\ : std_logic;
SIGNAL \i_temporizador|inst8|Equal0~0_combout\ : std_logic;
SIGNAL \i_UnidadControl|Selector2~4_combout\ : std_logic;
SIGNAL \i_temporizador|inst10|contador[0]~_wirecell_combout\ : std_logic;
SIGNAL \i_temporizador|inst10|contador[1]~0_combout\ : std_logic;
SIGNAL \i_temporizador|inst10|contador~1_combout\ : std_logic;
SIGNAL \i_temporizador|inst10|contador~2_combout\ : std_logic;
SIGNAL \i_UnidadControl|Selector2~6_combout\ : std_logic;
SIGNAL \i_UnidadControl|Selector1~3_combout\ : std_logic;
SIGNAL \i_UnidadControl|Selector3~2_combout\ : std_logic;
SIGNAL \i_UnidadControl|estado_act.CargaSeg~regout\ : std_logic;
SIGNAL \i_UnidadControl|Selector2~8_combout\ : std_logic;
SIGNAL \i_UnidadControl|Selector4~0_combout\ : std_logic;
SIGNAL \i_UnidadControl|estado_act.Activo~regout\ : std_logic;
SIGNAL \i_UnidadControl|Selector2~10_combout\ : std_logic;
SIGNAL \i_UnidadControl|Selector5~0_combout\ : std_logic;
SIGNAL \i_UnidadControl|Selector2~12_combout\ : std_logic;
SIGNAL \i_UnidadControl|Selector5~1_combout\ : std_logic;
SIGNAL \i_UnidadControl|estado_act.Finalizado~regout\ : std_logic;
SIGNAL \i_temporizador|inst7|Add0~2_combout\ : std_logic;
SIGNAL \i_temporizador|inst7|contador~4_combout\ : std_logic;
SIGNAL \i_temporizador|inst8|contador~2_combout\ : std_logic;
SIGNAL \i_temporizador|inst7|contador\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_temporizador|inst10|contador\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \i_temporizador|inst8|contador\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_temporizador|inst3|contador\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \ent_p~combout\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \i_temporizador|inst9|contador\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_reset_n~combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset_n <= reset_n;
ww_puerta <= puerta;
ww_boton <= boton;
ww_ent_p <= ent_p;
fin <= ww_fin;
horno_on <= ww_horno_on;
abierta <= ww_abierta;
cnt_seg <= ww_cnt_seg;
cnt_min <= ww_cnt_min;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_reset_n~combout\ <= NOT \reset_n~combout\;

-- Location: LCCOMB_X37_Y15_N6
\i_temporizador|inst3|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst3|Add0~0_combout\ = \i_temporizador|inst3|contador\(0) $ (VCC)
-- \i_temporizador|inst3|Add0~1\ = CARRY(\i_temporizador|inst3|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_temporizador|inst3|contador\(0),
	datad => VCC,
	combout => \i_temporizador|inst3|Add0~0_combout\,
	cout => \i_temporizador|inst3|Add0~1\);

-- Location: LCCOMB_X37_Y15_N16
\i_temporizador|inst3|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst3|Add0~10_combout\ = (\i_temporizador|inst3|contador\(5) & (!\i_temporizador|inst3|Add0~9\)) # (!\i_temporizador|inst3|contador\(5) & ((\i_temporizador|inst3|Add0~9\) # (GND)))
-- \i_temporizador|inst3|Add0~11\ = CARRY((!\i_temporizador|inst3|Add0~9\) # (!\i_temporizador|inst3|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|inst3|contador\(5),
	datad => VCC,
	cin => \i_temporizador|inst3|Add0~9\,
	combout => \i_temporizador|inst3|Add0~10_combout\,
	cout => \i_temporizador|inst3|Add0~11\);

-- Location: LCCOMB_X37_Y15_N18
\i_temporizador|inst3|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst3|Add0~12_combout\ = (\i_temporizador|inst3|contador\(6) & (\i_temporizador|inst3|Add0~11\ $ (GND))) # (!\i_temporizador|inst3|contador\(6) & (!\i_temporizador|inst3|Add0~11\ & VCC))
-- \i_temporizador|inst3|Add0~13\ = CARRY((\i_temporizador|inst3|contador\(6) & !\i_temporizador|inst3|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_temporizador|inst3|contador\(6),
	datad => VCC,
	cin => \i_temporizador|inst3|Add0~11\,
	combout => \i_temporizador|inst3|Add0~12_combout\,
	cout => \i_temporizador|inst3|Add0~13\);

-- Location: LCCOMB_X37_Y15_N22
\i_temporizador|inst3|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst3|Add0~16_combout\ = (\i_temporizador|inst3|contador\(8) & (\i_temporizador|inst3|Add0~15\ $ (GND))) # (!\i_temporizador|inst3|contador\(8) & (!\i_temporizador|inst3|Add0~15\ & VCC))
-- \i_temporizador|inst3|Add0~17\ = CARRY((\i_temporizador|inst3|contador\(8) & !\i_temporizador|inst3|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|inst3|contador\(8),
	datad => VCC,
	cin => \i_temporizador|inst3|Add0~15\,
	combout => \i_temporizador|inst3|Add0~16_combout\,
	cout => \i_temporizador|inst3|Add0~17\);

-- Location: LCCOMB_X37_Y15_N24
\i_temporizador|inst3|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst3|Add0~18_combout\ = (\i_temporizador|inst3|contador\(9) & (!\i_temporizador|inst3|Add0~17\)) # (!\i_temporizador|inst3|contador\(9) & ((\i_temporizador|inst3|Add0~17\) # (GND)))
-- \i_temporizador|inst3|Add0~19\ = CARRY((!\i_temporizador|inst3|Add0~17\) # (!\i_temporizador|inst3|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|inst3|contador\(9),
	datad => VCC,
	cin => \i_temporizador|inst3|Add0~17\,
	combout => \i_temporizador|inst3|Add0~18_combout\,
	cout => \i_temporizador|inst3|Add0~19\);

-- Location: LCCOMB_X37_Y15_N26
\i_temporizador|inst3|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst3|Add0~20_combout\ = (\i_temporizador|inst3|contador\(10) & (\i_temporizador|inst3|Add0~19\ $ (GND))) # (!\i_temporizador|inst3|contador\(10) & (!\i_temporizador|inst3|Add0~19\ & VCC))
-- \i_temporizador|inst3|Add0~21\ = CARRY((\i_temporizador|inst3|contador\(10) & !\i_temporizador|inst3|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_temporizador|inst3|contador\(10),
	datad => VCC,
	cin => \i_temporizador|inst3|Add0~19\,
	combout => \i_temporizador|inst3|Add0~20_combout\,
	cout => \i_temporizador|inst3|Add0~21\);

-- Location: LCCOMB_X37_Y14_N6
\i_temporizador|inst3|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst3|Add0~32_combout\ = (\i_temporizador|inst3|contador\(16) & (\i_temporizador|inst3|Add0~31\ $ (GND))) # (!\i_temporizador|inst3|contador\(16) & (!\i_temporizador|inst3|Add0~31\ & VCC))
-- \i_temporizador|inst3|Add0~33\ = CARRY((\i_temporizador|inst3|contador\(16) & !\i_temporizador|inst3|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_temporizador|inst3|contador\(16),
	datad => VCC,
	cin => \i_temporizador|inst3|Add0~31\,
	combout => \i_temporizador|inst3|Add0~32_combout\,
	cout => \i_temporizador|inst3|Add0~33\);

-- Location: LCCOMB_X37_Y14_N10
\i_temporizador|inst3|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst3|Add0~36_combout\ = (\i_temporizador|inst3|contador\(18) & (\i_temporizador|inst3|Add0~35\ $ (GND))) # (!\i_temporizador|inst3|contador\(18) & (!\i_temporizador|inst3|Add0~35\ & VCC))
-- \i_temporizador|inst3|Add0~37\ = CARRY((\i_temporizador|inst3|contador\(18) & !\i_temporizador|inst3|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|inst3|contador\(18),
	datad => VCC,
	cin => \i_temporizador|inst3|Add0~35\,
	combout => \i_temporizador|inst3|Add0~36_combout\,
	cout => \i_temporizador|inst3|Add0~37\);

-- Location: LCCOMB_X37_Y14_N16
\i_temporizador|inst3|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst3|Add0~42_combout\ = (\i_temporizador|inst3|contador\(21) & (!\i_temporizador|inst3|Add0~41\)) # (!\i_temporizador|inst3|contador\(21) & ((\i_temporizador|inst3|Add0~41\) # (GND)))
-- \i_temporizador|inst3|Add0~43\ = CARRY((!\i_temporizador|inst3|Add0~41\) # (!\i_temporizador|inst3|contador\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_temporizador|inst3|contador\(21),
	datad => VCC,
	cin => \i_temporizador|inst3|Add0~41\,
	combout => \i_temporizador|inst3|Add0~42_combout\,
	cout => \i_temporizador|inst3|Add0~43\);

-- Location: LCCOMB_X37_Y14_N20
\i_temporizador|inst3|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst3|Add0~46_combout\ = (\i_temporizador|inst3|contador\(23) & (!\i_temporizador|inst3|Add0~45\)) # (!\i_temporizador|inst3|contador\(23) & ((\i_temporizador|inst3|Add0~45\) # (GND)))
-- \i_temporizador|inst3|Add0~47\ = CARRY((!\i_temporizador|inst3|Add0~45\) # (!\i_temporizador|inst3|contador\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_temporizador|inst3|contador\(23),
	datad => VCC,
	cin => \i_temporizador|inst3|Add0~45\,
	combout => \i_temporizador|inst3|Add0~46_combout\,
	cout => \i_temporizador|inst3|Add0~47\);

-- Location: LCCOMB_X37_Y14_N22
\i_temporizador|inst3|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst3|Add0~48_combout\ = (\i_temporizador|inst3|contador\(24) & (\i_temporizador|inst3|Add0~47\ $ (GND))) # (!\i_temporizador|inst3|contador\(24) & (!\i_temporizador|inst3|Add0~47\ & VCC))
-- \i_temporizador|inst3|Add0~49\ = CARRY((\i_temporizador|inst3|contador\(24) & !\i_temporizador|inst3|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|inst3|contador\(24),
	datad => VCC,
	cin => \i_temporizador|inst3|Add0~47\,
	combout => \i_temporizador|inst3|Add0~48_combout\,
	cout => \i_temporizador|inst3|Add0~49\);

-- Location: LCCOMB_X37_Y14_N24
\i_temporizador|inst3|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst3|Add0~50_combout\ = \i_temporizador|inst3|Add0~49\ $ (\i_temporizador|inst3|contador\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \i_temporizador|inst3|contador\(25),
	cin => \i_temporizador|inst3|Add0~49\,
	combout => \i_temporizador|inst3|Add0~50_combout\);

-- Location: LCCOMB_X39_Y15_N12
\i_UnidadControl|Selector2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_UnidadControl|Selector2~5_combout\ = (\i_UnidadControl|estado_act.Activo~regout\ & (!\i_temporizador|inst9|contador\(1) & (!\i_temporizador|inst9|contador\(2) & !\i_temporizador|inst9|contador\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_UnidadControl|estado_act.Activo~regout\,
	datab => \i_temporizador|inst9|contador\(1),
	datac => \i_temporizador|inst9|contador\(2),
	datad => \i_temporizador|inst9|contador\(0),
	combout => \i_UnidadControl|Selector2~5_combout\);

-- Location: LCFF_X36_Y15_N21
\i_temporizador|inst3|contador[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_temporizador|inst3|contador[24]~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_temporizador|inst3|contador\(24));

-- Location: LCFF_X38_Y15_N13
\i_temporizador|inst3|contador[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_temporizador|inst3|contador[18]~5_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_temporizador|inst3|contador\(18));

-- Location: LCCOMB_X38_Y15_N24
\i_temporizador|inst3|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst3|Equal0~3_combout\ = (\i_temporizador|inst3|contador\(11)) # (((\i_temporizador|inst3|contador\(10)) # (!\i_temporizador|inst3|contador\(12))) # (!\i_temporizador|inst3|contador\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|inst3|contador\(11),
	datab => \i_temporizador|inst3|contador\(13),
	datac => \i_temporizador|inst3|contador\(12),
	datad => \i_temporizador|inst3|contador\(10),
	combout => \i_temporizador|inst3|Equal0~3_combout\);

-- Location: LCFF_X36_Y15_N9
\i_temporizador|inst3|contador[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_temporizador|inst3|contador[9]~17_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_temporizador|inst3|contador\(9));

-- Location: LCFF_X36_Y15_N31
\i_temporizador|inst3|contador[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_temporizador|inst3|contador[8]~18_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_temporizador|inst3|contador\(8));

-- Location: LCCOMB_X36_Y15_N12
\i_temporizador|inst3|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst3|Equal0~5_combout\ = ((\i_temporizador|inst3|contador\(7)) # ((\i_temporizador|inst3|contador\(9)) # (\i_temporizador|inst3|contador\(8)))) # (!\i_temporizador|inst3|contador\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|inst3|contador\(6),
	datab => \i_temporizador|inst3|contador\(7),
	datac => \i_temporizador|inst3|contador\(9),
	datad => \i_temporizador|inst3|contador\(8),
	combout => \i_temporizador|inst3|Equal0~5_combout\);

-- Location: LCFF_X36_Y15_N11
\i_temporizador|inst3|contador[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_temporizador|inst3|contador[5]~21_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_temporizador|inst3|contador\(5));

-- Location: LCCOMB_X40_Y14_N4
\i_UnidadControl|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_UnidadControl|Selector3~1_combout\ = (\i_UnidadControl|estado_act.CargaSeg~regout\ & ((!\i_UnidadControl|estado_act.Activo~regout\) # (!\puerta~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \puerta~combout\,
	datac => \i_UnidadControl|estado_act.CargaSeg~regout\,
	datad => \i_UnidadControl|estado_act.Activo~regout\,
	combout => \i_UnidadControl|Selector3~1_combout\);

-- Location: LCCOMB_X40_Y14_N26
\i_UnidadControl|Selector1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_UnidadControl|Selector1~2_combout\ = (\i_UnidadControl|estado_act.Abierto~regout\) # (((\i_UnidadControl|estado_act.CargaSeg~regout\) # (\i_UnidadControl|estado_act.Finalizado~regout\)) # (!\puerta~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_UnidadControl|estado_act.Abierto~regout\,
	datab => \puerta~combout\,
	datac => \i_UnidadControl|estado_act.CargaSeg~regout\,
	datad => \i_UnidadControl|estado_act.Finalizado~regout\,
	combout => \i_UnidadControl|Selector1~2_combout\);

-- Location: LCCOMB_X36_Y15_N20
\i_temporizador|inst3|contador[24]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst3|contador[24]~1_combout\ = (\i_temporizador|inst3|contador[25]~0_combout\ & (!\i_UnidadControl|estado_act.Activo~regout\ & (\i_temporizador|inst3|contador\(24)))) # (!\i_temporizador|inst3|contador[25]~0_combout\ & 
-- ((\i_temporizador|inst3|Add0~48_combout\) # ((!\i_UnidadControl|estado_act.Activo~regout\ & \i_temporizador|inst3|contador\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|inst3|contador[25]~0_combout\,
	datab => \i_UnidadControl|estado_act.Activo~regout\,
	datac => \i_temporizador|inst3|contador\(24),
	datad => \i_temporizador|inst3|Add0~48_combout\,
	combout => \i_temporizador|inst3|contador[24]~1_combout\);

-- Location: LCCOMB_X38_Y15_N12
\i_temporizador|inst3|contador[18]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst3|contador[18]~5_combout\ = (\i_temporizador|inst3|Add0~36_combout\ & (((!\i_UnidadControl|estado_act.Activo~regout\ & \i_temporizador|inst3|contador\(18))) # (!\i_temporizador|inst3|contador[25]~0_combout\))) # 
-- (!\i_temporizador|inst3|Add0~36_combout\ & (!\i_UnidadControl|estado_act.Activo~regout\ & (\i_temporizador|inst3|contador\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|inst3|Add0~36_combout\,
	datab => \i_UnidadControl|estado_act.Activo~regout\,
	datac => \i_temporizador|inst3|contador\(18),
	datad => \i_temporizador|inst3|contador[25]~0_combout\,
	combout => \i_temporizador|inst3|contador[18]~5_combout\);

-- Location: LCCOMB_X36_Y15_N8
\i_temporizador|inst3|contador[9]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst3|contador[9]~17_combout\ = (\i_temporizador|inst3|Add0~18_combout\ & (((!\i_UnidadControl|estado_act.Activo~regout\ & \i_temporizador|inst3|contador\(9))) # (!\i_temporizador|inst3|contador[25]~0_combout\))) # 
-- (!\i_temporizador|inst3|Add0~18_combout\ & (!\i_UnidadControl|estado_act.Activo~regout\ & (\i_temporizador|inst3|contador\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|inst3|Add0~18_combout\,
	datab => \i_UnidadControl|estado_act.Activo~regout\,
	datac => \i_temporizador|inst3|contador\(9),
	datad => \i_temporizador|inst3|contador[25]~0_combout\,
	combout => \i_temporizador|inst3|contador[9]~17_combout\);

-- Location: LCCOMB_X36_Y15_N30
\i_temporizador|inst3|contador[8]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst3|contador[8]~18_combout\ = (\i_UnidadControl|estado_act.Activo~regout\ & (\i_temporizador|inst3|Add0~16_combout\ & ((!\i_temporizador|inst3|contador[25]~0_combout\)))) # (!\i_UnidadControl|estado_act.Activo~regout\ & 
-- ((\i_temporizador|inst3|contador\(8)) # ((\i_temporizador|inst3|Add0~16_combout\ & !\i_temporizador|inst3|contador[25]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_UnidadControl|estado_act.Activo~regout\,
	datab => \i_temporizador|inst3|Add0~16_combout\,
	datac => \i_temporizador|inst3|contador\(8),
	datad => \i_temporizador|inst3|contador[25]~0_combout\,
	combout => \i_temporizador|inst3|contador[8]~18_combout\);

-- Location: LCCOMB_X36_Y15_N10
\i_temporizador|inst3|contador[5]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst3|contador[5]~21_combout\ = (\i_temporizador|inst3|Add0~10_combout\ & (((!\i_UnidadControl|estado_act.Activo~regout\ & \i_temporizador|inst3|contador\(5))) # (!\i_temporizador|inst3|contador[25]~0_combout\))) # 
-- (!\i_temporizador|inst3|Add0~10_combout\ & (!\i_UnidadControl|estado_act.Activo~regout\ & (\i_temporizador|inst3|contador\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|inst3|Add0~10_combout\,
	datab => \i_UnidadControl|estado_act.Activo~regout\,
	datac => \i_temporizador|inst3|contador\(5),
	datad => \i_temporizador|inst3|contador[25]~0_combout\,
	combout => \i_temporizador|inst3|contador[5]~21_combout\);

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G2
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

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X40_Y14_N12
\i_UnidadControl|Selector2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_UnidadControl|Selector2~7_combout\ = (\puerta~combout\ & \i_UnidadControl|estado_act.Finalizado~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \puerta~combout\,
	datad => \i_UnidadControl|estado_act.Finalizado~regout\,
	combout => \i_UnidadControl|Selector2~7_combout\);

-- Location: LCCOMB_X39_Y14_N2
\i_UnidadControl|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_UnidadControl|Selector3~0_combout\ = (\boton~combout\ & ((!\puerta~combout\) # (!\i_UnidadControl|estado_act.Activo~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \boton~combout\,
	datab => \i_UnidadControl|estado_act.Activo~regout\,
	datac => \puerta~combout\,
	combout => \i_UnidadControl|Selector3~0_combout\);

-- Location: LCCOMB_X39_Y14_N8
\i_UnidadControl|Selector2~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_UnidadControl|Selector2~11_combout\ = (\i_UnidadControl|estado_act.CargaMin~regout\ & (((\i_UnidadControl|estado_act.EspBot~regout\ & \i_UnidadControl|Selector5~0_combout\)) # (!\i_UnidadControl|Selector2~7_combout\))) # 
-- (!\i_UnidadControl|estado_act.CargaMin~regout\ & (((\i_UnidadControl|estado_act.EspBot~regout\ & \i_UnidadControl|Selector5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_UnidadControl|estado_act.CargaMin~regout\,
	datab => \i_UnidadControl|Selector2~7_combout\,
	datac => \i_UnidadControl|estado_act.EspBot~regout\,
	datad => \i_UnidadControl|Selector5~0_combout\,
	combout => \i_UnidadControl|Selector2~11_combout\);

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X39_Y14_N9
\i_UnidadControl|estado_act.EspBot\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_UnidadControl|Selector2~11_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_UnidadControl|estado_act.EspBot~regout\);

-- Location: LCCOMB_X40_Y14_N24
\i_UnidadControl|Selector1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_UnidadControl|Selector1~4_combout\ = (\puerta~combout\ & \i_UnidadControl|estado_act.Activo~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \puerta~combout\,
	datad => \i_UnidadControl|estado_act.Activo~regout\,
	combout => \i_UnidadControl|Selector1~4_combout\);

-- Location: LCCOMB_X39_Y14_N12
\i_UnidadControl|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_UnidadControl|Selector6~0_combout\ = (\i_UnidadControl|estado_act.Finalizado~regout\ & (((\i_UnidadControl|estado_act.Abierto~regout\ & \i_UnidadControl|Selector5~0_combout\)))) # (!\i_UnidadControl|estado_act.Finalizado~regout\ & 
-- ((\i_UnidadControl|Selector1~4_combout\) # ((\i_UnidadControl|estado_act.Abierto~regout\ & \i_UnidadControl|Selector5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_UnidadControl|estado_act.Finalizado~regout\,
	datab => \i_UnidadControl|Selector1~4_combout\,
	datac => \i_UnidadControl|estado_act.Abierto~regout\,
	datad => \i_UnidadControl|Selector5~0_combout\,
	combout => \i_UnidadControl|Selector6~0_combout\);

-- Location: LCFF_X39_Y14_N13
\i_UnidadControl|estado_act.Abierto\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_UnidadControl|Selector6~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_UnidadControl|estado_act.Abierto~regout\);

-- Location: LCCOMB_X39_Y14_N4
\i_UnidadControl|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_UnidadControl|Selector1~0_combout\ = (\i_UnidadControl|estado_act.Finalizado~regout\ & (((\puerta~combout\)))) # (!\i_UnidadControl|estado_act.Finalizado~regout\ & (!\puerta~combout\ & ((\i_UnidadControl|estado_act.CargaSeg~regout\) # 
-- (\i_UnidadControl|estado_act.Abierto~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_UnidadControl|estado_act.Finalizado~regout\,
	datab => \i_UnidadControl|estado_act.CargaSeg~regout\,
	datac => \puerta~combout\,
	datad => \i_UnidadControl|estado_act.Abierto~regout\,
	combout => \i_UnidadControl|Selector1~0_combout\);

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

-- Location: LCCOMB_X39_Y14_N26
\i_UnidadControl|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_UnidadControl|Selector0~0_combout\ = (\puerta~combout\ & (!\i_UnidadControl|estado_act.Finalizado~regout\ & ((\boton~combout\) # (\i_UnidadControl|estado_act.Reposo~regout\)))) # (!\puerta~combout\ & ((\boton~combout\) # 
-- ((\i_UnidadControl|estado_act.Reposo~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \puerta~combout\,
	datab => \boton~combout\,
	datac => \i_UnidadControl|estado_act.Reposo~regout\,
	datad => \i_UnidadControl|estado_act.Finalizado~regout\,
	combout => \i_UnidadControl|Selector0~0_combout\);

-- Location: LCFF_X39_Y14_N27
\i_UnidadControl|estado_act.Reposo\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_UnidadControl|Selector0~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_UnidadControl|estado_act.Reposo~regout\);

-- Location: LCCOMB_X39_Y14_N10
\i_UnidadControl|Selector1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_UnidadControl|Selector1~5_combout\ = (!\i_UnidadControl|estado_act.Reposo~regout\ & (\i_UnidadControl|Selector3~0_combout\ & \i_UnidadControl|Selector1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_UnidadControl|estado_act.Reposo~regout\,
	datac => \i_UnidadControl|Selector3~0_combout\,
	datad => \i_UnidadControl|Selector1~3_combout\,
	combout => \i_UnidadControl|Selector1~5_combout\);

-- Location: LCFF_X39_Y14_N11
\i_UnidadControl|estado_act.CargaMin\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_UnidadControl|Selector1~5_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_UnidadControl|estado_act.CargaMin~regout\);

-- Location: LCCOMB_X39_Y14_N24
\i_UnidadControl|Selector2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_UnidadControl|Selector2~9_combout\ = (!\i_UnidadControl|estado_act.CargaMin~regout\ & (((\i_UnidadControl|estado_act.Reposo~regout\ & !\i_UnidadControl|estado_act.EspBot~regout\)) # (!\boton~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \boton~combout\,
	datab => \i_UnidadControl|estado_act.Reposo~regout\,
	datac => \i_UnidadControl|estado_act.EspBot~regout\,
	datad => \i_UnidadControl|estado_act.CargaMin~regout\,
	combout => \i_UnidadControl|Selector2~9_combout\);

-- Location: LCCOMB_X39_Y14_N22
\i_UnidadControl|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_UnidadControl|Selector1~1_combout\ = ((\i_UnidadControl|Selector1~0_combout\ & !\i_UnidadControl|estado_act.Activo~regout\)) # (!\i_UnidadControl|Selector2~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_UnidadControl|Selector1~0_combout\,
	datac => \i_UnidadControl|Selector2~9_combout\,
	datad => \i_UnidadControl|estado_act.Activo~regout\,
	combout => \i_UnidadControl|Selector1~1_combout\);

-- Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ent_p[2]~I\ : cycloneii_io
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
	padio => ww_ent_p(2),
	combout => \ent_p~combout\(2));

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ent_p[0]~I\ : cycloneii_io
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
	padio => ww_ent_p(0),
	combout => \ent_p~combout\(0));

-- Location: LCCOMB_X40_Y15_N14
\i_temporizador|inst7|contador~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst7|contador~0_combout\ = (\i_UnidadControl|estado_act.CargaSeg~regout\ & ((\ent_p~combout\(0)))) # (!\i_UnidadControl|estado_act.CargaSeg~regout\ & (!\i_temporizador|inst7|contador\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_UnidadControl|estado_act.CargaSeg~regout\,
	datac => \i_temporizador|inst7|contador\(0),
	datad => \ent_p~combout\(0),
	combout => \i_temporizador|inst7|contador~0_combout\);

-- Location: LCCOMB_X37_Y15_N2
\i_temporizador|inst3|contador[10]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst3|contador[10]~14_combout\ = (\i_temporizador|inst3|Add0~20_combout\ & (((!\i_UnidadControl|estado_act.Activo~regout\ & \i_temporizador|inst3|contador\(10))) # (!\i_temporizador|inst3|contador[25]~0_combout\))) # 
-- (!\i_temporizador|inst3|Add0~20_combout\ & (!\i_UnidadControl|estado_act.Activo~regout\ & (\i_temporizador|inst3|contador\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|inst3|Add0~20_combout\,
	datab => \i_UnidadControl|estado_act.Activo~regout\,
	datac => \i_temporizador|inst3|contador\(10),
	datad => \i_temporizador|inst3|contador[25]~0_combout\,
	combout => \i_temporizador|inst3|contador[10]~14_combout\);

-- Location: LCFF_X37_Y15_N3
\i_temporizador|inst3|contador[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_temporizador|inst3|contador[10]~14_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_temporizador|inst3|contador\(10));

-- Location: LCCOMB_X36_Y15_N6
\i_temporizador|inst3|contador[6]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst3|contador[6]~20_combout\ = (\i_temporizador|inst3|Add0~12_combout\ & (((!\i_UnidadControl|estado_act.Activo~regout\ & \i_temporizador|inst3|contador\(6))) # (!\i_temporizador|inst3|contador[25]~0_combout\))) # 
-- (!\i_temporizador|inst3|Add0~12_combout\ & (!\i_UnidadControl|estado_act.Activo~regout\ & (\i_temporizador|inst3|contador\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|inst3|Add0~12_combout\,
	datab => \i_UnidadControl|estado_act.Activo~regout\,
	datac => \i_temporizador|inst3|contador\(6),
	datad => \i_temporizador|inst3|contador[25]~0_combout\,
	combout => \i_temporizador|inst3|contador[6]~20_combout\);

-- Location: LCFF_X36_Y15_N7
\i_temporizador|inst3|contador[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_temporizador|inst3|contador[6]~20_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_temporizador|inst3|contador\(6));

-- Location: LCCOMB_X37_Y15_N8
\i_temporizador|inst3|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst3|Add0~2_combout\ = (\i_temporizador|inst3|contador\(1) & (!\i_temporizador|inst3|Add0~1\)) # (!\i_temporizador|inst3|contador\(1) & ((\i_temporizador|inst3|Add0~1\) # (GND)))
-- \i_temporizador|inst3|Add0~3\ = CARRY((!\i_temporizador|inst3|Add0~1\) # (!\i_temporizador|inst3|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_temporizador|inst3|contador\(1),
	datad => VCC,
	cin => \i_temporizador|inst3|Add0~1\,
	combout => \i_temporizador|inst3|Add0~2_combout\,
	cout => \i_temporizador|inst3|Add0~3\);

-- Location: LCCOMB_X36_Y15_N24
\i_temporizador|inst3|contador[1]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst3|contador[1]~25_combout\ = (\i_UnidadControl|estado_act.Activo~regout\ & (\i_temporizador|inst3|Add0~2_combout\ & ((!\i_temporizador|inst3|contador[25]~0_combout\)))) # (!\i_UnidadControl|estado_act.Activo~regout\ & 
-- ((\i_temporizador|inst3|contador\(1)) # ((\i_temporizador|inst3|Add0~2_combout\ & !\i_temporizador|inst3|contador[25]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_UnidadControl|estado_act.Activo~regout\,
	datab => \i_temporizador|inst3|Add0~2_combout\,
	datac => \i_temporizador|inst3|contador\(1),
	datad => \i_temporizador|inst3|contador[25]~0_combout\,
	combout => \i_temporizador|inst3|contador[1]~25_combout\);

-- Location: LCFF_X36_Y15_N25
\i_temporizador|inst3|contador[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_temporizador|inst3|contador[1]~25_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_temporizador|inst3|contador\(1));

-- Location: LCCOMB_X37_Y15_N10
\i_temporizador|inst3|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst3|Add0~4_combout\ = (\i_temporizador|inst3|contador\(2) & (\i_temporizador|inst3|Add0~3\ $ (GND))) # (!\i_temporizador|inst3|contador\(2) & (!\i_temporizador|inst3|Add0~3\ & VCC))
-- \i_temporizador|inst3|Add0~5\ = CARRY((\i_temporizador|inst3|contador\(2) & !\i_temporizador|inst3|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_temporizador|inst3|contador\(2),
	datad => VCC,
	cin => \i_temporizador|inst3|Add0~3\,
	combout => \i_temporizador|inst3|Add0~4_combout\,
	cout => \i_temporizador|inst3|Add0~5\);

-- Location: LCCOMB_X36_Y15_N28
\i_temporizador|inst3|contador[2]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst3|contador[2]~24_combout\ = (\i_UnidadControl|estado_act.Activo~regout\ & (\i_temporizador|inst3|Add0~4_combout\ & ((!\i_temporizador|inst3|contador[25]~0_combout\)))) # (!\i_UnidadControl|estado_act.Activo~regout\ & 
-- ((\i_temporizador|inst3|contador\(2)) # ((\i_temporizador|inst3|Add0~4_combout\ & !\i_temporizador|inst3|contador[25]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_UnidadControl|estado_act.Activo~regout\,
	datab => \i_temporizador|inst3|Add0~4_combout\,
	datac => \i_temporizador|inst3|contador\(2),
	datad => \i_temporizador|inst3|contador[25]~0_combout\,
	combout => \i_temporizador|inst3|contador[2]~24_combout\);

-- Location: LCFF_X36_Y15_N29
\i_temporizador|inst3|contador[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_temporizador|inst3|contador[2]~24_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_temporizador|inst3|contador\(2));

-- Location: LCCOMB_X37_Y15_N12
\i_temporizador|inst3|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst3|Add0~6_combout\ = (\i_temporizador|inst3|contador\(3) & (!\i_temporizador|inst3|Add0~5\)) # (!\i_temporizador|inst3|contador\(3) & ((\i_temporizador|inst3|Add0~5\) # (GND)))
-- \i_temporizador|inst3|Add0~7\ = CARRY((!\i_temporizador|inst3|Add0~5\) # (!\i_temporizador|inst3|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|inst3|contador\(3),
	datad => VCC,
	cin => \i_temporizador|inst3|Add0~5\,
	combout => \i_temporizador|inst3|Add0~6_combout\,
	cout => \i_temporizador|inst3|Add0~7\);

-- Location: LCCOMB_X37_Y15_N14
\i_temporizador|inst3|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst3|Add0~8_combout\ = (\i_temporizador|inst3|contador\(4) & (\i_temporizador|inst3|Add0~7\ $ (GND))) # (!\i_temporizador|inst3|contador\(4) & (!\i_temporizador|inst3|Add0~7\ & VCC))
-- \i_temporizador|inst3|Add0~9\ = CARRY((\i_temporizador|inst3|contador\(4) & !\i_temporizador|inst3|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|inst3|contador\(4),
	datad => VCC,
	cin => \i_temporizador|inst3|Add0~7\,
	combout => \i_temporizador|inst3|Add0~8_combout\,
	cout => \i_temporizador|inst3|Add0~9\);

-- Location: LCCOMB_X37_Y15_N20
\i_temporizador|inst3|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst3|Add0~14_combout\ = (\i_temporizador|inst3|contador\(7) & (!\i_temporizador|inst3|Add0~13\)) # (!\i_temporizador|inst3|contador\(7) & ((\i_temporizador|inst3|Add0~13\) # (GND)))
-- \i_temporizador|inst3|Add0~15\ = CARRY((!\i_temporizador|inst3|Add0~13\) # (!\i_temporizador|inst3|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_temporizador|inst3|contador\(7),
	datad => VCC,
	cin => \i_temporizador|inst3|Add0~13\,
	combout => \i_temporizador|inst3|Add0~14_combout\,
	cout => \i_temporizador|inst3|Add0~15\);

-- Location: LCCOMB_X36_Y15_N4
\i_temporizador|inst3|contador[7]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst3|contador[7]~19_combout\ = (\i_UnidadControl|estado_act.Activo~regout\ & (\i_temporizador|inst3|Add0~14_combout\ & ((!\i_temporizador|inst3|contador[25]~0_combout\)))) # (!\i_UnidadControl|estado_act.Activo~regout\ & 
-- ((\i_temporizador|inst3|contador\(7)) # ((\i_temporizador|inst3|Add0~14_combout\ & !\i_temporizador|inst3|contador[25]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_UnidadControl|estado_act.Activo~regout\,
	datab => \i_temporizador|inst3|Add0~14_combout\,
	datac => \i_temporizador|inst3|contador\(7),
	datad => \i_temporizador|inst3|contador[25]~0_combout\,
	combout => \i_temporizador|inst3|contador[7]~19_combout\);

-- Location: LCFF_X36_Y15_N5
\i_temporizador|inst3|contador[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_temporizador|inst3|contador[7]~19_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_temporizador|inst3|contador\(7));

-- Location: LCCOMB_X37_Y15_N28
\i_temporizador|inst3|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst3|Add0~22_combout\ = (\i_temporizador|inst3|contador\(11) & (!\i_temporizador|inst3|Add0~21\)) # (!\i_temporizador|inst3|contador\(11) & ((\i_temporizador|inst3|Add0~21\) # (GND)))
-- \i_temporizador|inst3|Add0~23\ = CARRY((!\i_temporizador|inst3|Add0~21\) # (!\i_temporizador|inst3|contador\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_temporizador|inst3|contador\(11),
	datad => VCC,
	cin => \i_temporizador|inst3|Add0~21\,
	combout => \i_temporizador|inst3|Add0~22_combout\,
	cout => \i_temporizador|inst3|Add0~23\);

-- Location: LCCOMB_X38_Y15_N10
\i_temporizador|inst3|contador[11]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst3|contador[11]~13_combout\ = (\i_UnidadControl|estado_act.Activo~regout\ & (\i_temporizador|inst3|Add0~22_combout\ & ((!\i_temporizador|inst3|contador[25]~0_combout\)))) # (!\i_UnidadControl|estado_act.Activo~regout\ & 
-- ((\i_temporizador|inst3|contador\(11)) # ((\i_temporizador|inst3|Add0~22_combout\ & !\i_temporizador|inst3|contador[25]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_UnidadControl|estado_act.Activo~regout\,
	datab => \i_temporizador|inst3|Add0~22_combout\,
	datac => \i_temporizador|inst3|contador\(11),
	datad => \i_temporizador|inst3|contador[25]~0_combout\,
	combout => \i_temporizador|inst3|contador[11]~13_combout\);

-- Location: LCFF_X38_Y15_N11
\i_temporizador|inst3|contador[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_temporizador|inst3|contador[11]~13_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_temporizador|inst3|contador\(11));

-- Location: LCCOMB_X37_Y15_N30
\i_temporizador|inst3|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst3|Add0~24_combout\ = (\i_temporizador|inst3|contador\(12) & (\i_temporizador|inst3|Add0~23\ $ (GND))) # (!\i_temporizador|inst3|contador\(12) & (!\i_temporizador|inst3|Add0~23\ & VCC))
-- \i_temporizador|inst3|Add0~25\ = CARRY((\i_temporizador|inst3|contador\(12) & !\i_temporizador|inst3|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_temporizador|inst3|contador\(12),
	datad => VCC,
	cin => \i_temporizador|inst3|Add0~23\,
	combout => \i_temporizador|inst3|Add0~24_combout\,
	cout => \i_temporizador|inst3|Add0~25\);

-- Location: LCCOMB_X38_Y15_N14
\i_temporizador|inst3|contador[12]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst3|contador[12]~16_combout\ = (\i_UnidadControl|estado_act.Activo~regout\ & (\i_temporizador|inst3|Add0~24_combout\ & ((!\i_temporizador|inst3|contador[25]~0_combout\)))) # (!\i_UnidadControl|estado_act.Activo~regout\ & 
-- ((\i_temporizador|inst3|contador\(12)) # ((\i_temporizador|inst3|Add0~24_combout\ & !\i_temporizador|inst3|contador[25]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_UnidadControl|estado_act.Activo~regout\,
	datab => \i_temporizador|inst3|Add0~24_combout\,
	datac => \i_temporizador|inst3|contador\(12),
	datad => \i_temporizador|inst3|contador[25]~0_combout\,
	combout => \i_temporizador|inst3|contador[12]~16_combout\);

-- Location: LCFF_X38_Y15_N15
\i_temporizador|inst3|contador[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_temporizador|inst3|contador[12]~16_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_temporizador|inst3|contador\(12));

-- Location: LCCOMB_X37_Y14_N0
\i_temporizador|inst3|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst3|Add0~26_combout\ = (\i_temporizador|inst3|contador\(13) & (!\i_temporizador|inst3|Add0~25\)) # (!\i_temporizador|inst3|contador\(13) & ((\i_temporizador|inst3|Add0~25\) # (GND)))
-- \i_temporizador|inst3|Add0~27\ = CARRY((!\i_temporizador|inst3|Add0~25\) # (!\i_temporizador|inst3|contador\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_temporizador|inst3|contador\(13),
	datad => VCC,
	cin => \i_temporizador|inst3|Add0~25\,
	combout => \i_temporizador|inst3|Add0~26_combout\,
	cout => \i_temporizador|inst3|Add0~27\);

-- Location: LCCOMB_X38_Y15_N8
\i_temporizador|inst3|contador[13]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst3|contador[13]~15_combout\ = (\i_UnidadControl|estado_act.Activo~regout\ & (!\i_temporizador|inst3|contador[25]~0_combout\ & ((\i_temporizador|inst3|Add0~26_combout\)))) # (!\i_UnidadControl|estado_act.Activo~regout\ & 
-- ((\i_temporizador|inst3|contador\(13)) # ((!\i_temporizador|inst3|contador[25]~0_combout\ & \i_temporizador|inst3|Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_UnidadControl|estado_act.Activo~regout\,
	datab => \i_temporizador|inst3|contador[25]~0_combout\,
	datac => \i_temporizador|inst3|contador\(13),
	datad => \i_temporizador|inst3|Add0~26_combout\,
	combout => \i_temporizador|inst3|contador[13]~15_combout\);

-- Location: LCFF_X38_Y15_N9
\i_temporizador|inst3|contador[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_temporizador|inst3|contador[13]~15_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_temporizador|inst3|contador\(13));

-- Location: LCCOMB_X37_Y14_N2
\i_temporizador|inst3|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst3|Add0~28_combout\ = (\i_temporizador|inst3|contador\(14) & (\i_temporizador|inst3|Add0~27\ $ (GND))) # (!\i_temporizador|inst3|contador\(14) & (!\i_temporizador|inst3|Add0~27\ & VCC))
-- \i_temporizador|inst3|Add0~29\ = CARRY((\i_temporizador|inst3|contador\(14) & !\i_temporizador|inst3|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_temporizador|inst3|contador\(14),
	datad => VCC,
	cin => \i_temporizador|inst3|Add0~27\,
	combout => \i_temporizador|inst3|Add0~28_combout\,
	cout => \i_temporizador|inst3|Add0~29\);

-- Location: LCCOMB_X38_Y15_N26
\i_temporizador|inst3|contador[14]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst3|contador[14]~12_combout\ = (\i_UnidadControl|estado_act.Activo~regout\ & (\i_temporizador|inst3|Add0~28_combout\ & ((!\i_temporizador|inst3|contador[25]~0_combout\)))) # (!\i_UnidadControl|estado_act.Activo~regout\ & 
-- ((\i_temporizador|inst3|contador\(14)) # ((\i_temporizador|inst3|Add0~28_combout\ & !\i_temporizador|inst3|contador[25]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_UnidadControl|estado_act.Activo~regout\,
	datab => \i_temporizador|inst3|Add0~28_combout\,
	datac => \i_temporizador|inst3|contador\(14),
	datad => \i_temporizador|inst3|contador[25]~0_combout\,
	combout => \i_temporizador|inst3|contador[14]~12_combout\);

-- Location: LCFF_X38_Y15_N27
\i_temporizador|inst3|contador[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_temporizador|inst3|contador[14]~12_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_temporizador|inst3|contador\(14));

-- Location: LCCOMB_X37_Y14_N4
\i_temporizador|inst3|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst3|Add0~30_combout\ = (\i_temporizador|inst3|contador\(15) & (!\i_temporizador|inst3|Add0~29\)) # (!\i_temporizador|inst3|contador\(15) & ((\i_temporizador|inst3|Add0~29\) # (GND)))
-- \i_temporizador|inst3|Add0~31\ = CARRY((!\i_temporizador|inst3|Add0~29\) # (!\i_temporizador|inst3|contador\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|inst3|contador\(15),
	datad => VCC,
	cin => \i_temporizador|inst3|Add0~29\,
	combout => \i_temporizador|inst3|Add0~30_combout\,
	cout => \i_temporizador|inst3|Add0~31\);

-- Location: LCCOMB_X38_Y15_N4
\i_temporizador|inst3|contador[15]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst3|contador[15]~11_combout\ = (\i_UnidadControl|estado_act.Activo~regout\ & (!\i_temporizador|inst3|contador[25]~0_combout\ & ((\i_temporizador|inst3|Add0~30_combout\)))) # (!\i_UnidadControl|estado_act.Activo~regout\ & 
-- ((\i_temporizador|inst3|contador\(15)) # ((!\i_temporizador|inst3|contador[25]~0_combout\ & \i_temporizador|inst3|Add0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_UnidadControl|estado_act.Activo~regout\,
	datab => \i_temporizador|inst3|contador[25]~0_combout\,
	datac => \i_temporizador|inst3|contador\(15),
	datad => \i_temporizador|inst3|Add0~30_combout\,
	combout => \i_temporizador|inst3|contador[15]~11_combout\);

-- Location: LCFF_X38_Y15_N5
\i_temporizador|inst3|contador[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_temporizador|inst3|contador[15]~11_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_temporizador|inst3|contador\(15));

-- Location: LCCOMB_X38_Y15_N16
\i_temporizador|inst3|contador[16]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst3|contador[16]~9_combout\ = (\i_temporizador|inst3|Add0~32_combout\ & (((!\i_UnidadControl|estado_act.Activo~regout\ & \i_temporizador|inst3|contador\(16))) # (!\i_temporizador|inst3|contador[25]~0_combout\))) # 
-- (!\i_temporizador|inst3|Add0~32_combout\ & (!\i_UnidadControl|estado_act.Activo~regout\ & (\i_temporizador|inst3|contador\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|inst3|Add0~32_combout\,
	datab => \i_UnidadControl|estado_act.Activo~regout\,
	datac => \i_temporizador|inst3|contador\(16),
	datad => \i_temporizador|inst3|contador[25]~0_combout\,
	combout => \i_temporizador|inst3|contador[16]~9_combout\);

-- Location: LCFF_X38_Y15_N17
\i_temporizador|inst3|contador[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_temporizador|inst3|contador[16]~9_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_temporizador|inst3|contador\(16));

-- Location: LCCOMB_X37_Y14_N8
\i_temporizador|inst3|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst3|Add0~34_combout\ = (\i_temporizador|inst3|contador\(17) & (!\i_temporizador|inst3|Add0~33\)) # (!\i_temporizador|inst3|contador\(17) & ((\i_temporizador|inst3|Add0~33\) # (GND)))
-- \i_temporizador|inst3|Add0~35\ = CARRY((!\i_temporizador|inst3|Add0~33\) # (!\i_temporizador|inst3|contador\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_temporizador|inst3|contador\(17),
	datad => VCC,
	cin => \i_temporizador|inst3|Add0~33\,
	combout => \i_temporizador|inst3|Add0~34_combout\,
	cout => \i_temporizador|inst3|Add0~35\);

-- Location: LCCOMB_X38_Y15_N18
\i_temporizador|inst3|contador[17]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst3|contador[17]~10_combout\ = (\i_UnidadControl|estado_act.Activo~regout\ & (\i_temporizador|inst3|Add0~34_combout\ & ((!\i_temporizador|inst3|contador[25]~0_combout\)))) # (!\i_UnidadControl|estado_act.Activo~regout\ & 
-- ((\i_temporizador|inst3|contador\(17)) # ((\i_temporizador|inst3|Add0~34_combout\ & !\i_temporizador|inst3|contador[25]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_UnidadControl|estado_act.Activo~regout\,
	datab => \i_temporizador|inst3|Add0~34_combout\,
	datac => \i_temporizador|inst3|contador\(17),
	datad => \i_temporizador|inst3|contador[25]~0_combout\,
	combout => \i_temporizador|inst3|contador[17]~10_combout\);

-- Location: LCFF_X38_Y15_N19
\i_temporizador|inst3|contador[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_temporizador|inst3|contador[17]~10_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_temporizador|inst3|contador\(17));

-- Location: LCCOMB_X38_Y15_N28
\i_temporizador|inst3|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst3|Equal0~2_combout\ = (((\i_temporizador|inst3|contador\(16)) # (!\i_temporizador|inst3|contador\(17))) # (!\i_temporizador|inst3|contador\(15))) # (!\i_temporizador|inst3|contador\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|inst3|contador\(14),
	datab => \i_temporizador|inst3|contador\(15),
	datac => \i_temporizador|inst3|contador\(16),
	datad => \i_temporizador|inst3|contador\(17),
	combout => \i_temporizador|inst3|Equal0~2_combout\);

-- Location: LCCOMB_X37_Y14_N30
\i_temporizador|inst3|contador[21]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst3|contador[21]~6_combout\ = (\i_temporizador|inst3|Add0~42_combout\ & (((!\i_UnidadControl|estado_act.Activo~regout\ & \i_temporizador|inst3|contador\(21))) # (!\i_temporizador|inst3|contador[25]~0_combout\))) # 
-- (!\i_temporizador|inst3|Add0~42_combout\ & (!\i_UnidadControl|estado_act.Activo~regout\ & (\i_temporizador|inst3|contador\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|inst3|Add0~42_combout\,
	datab => \i_UnidadControl|estado_act.Activo~regout\,
	datac => \i_temporizador|inst3|contador\(21),
	datad => \i_temporizador|inst3|contador[25]~0_combout\,
	combout => \i_temporizador|inst3|contador[21]~6_combout\);

-- Location: LCFF_X37_Y14_N31
\i_temporizador|inst3|contador[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_temporizador|inst3|contador[21]~6_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_temporizador|inst3|contador\(21));

-- Location: LCCOMB_X37_Y14_N12
\i_temporizador|inst3|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst3|Add0~38_combout\ = (\i_temporizador|inst3|contador\(19) & (!\i_temporizador|inst3|Add0~37\)) # (!\i_temporizador|inst3|contador\(19) & ((\i_temporizador|inst3|Add0~37\) # (GND)))
-- \i_temporizador|inst3|Add0~39\ = CARRY((!\i_temporizador|inst3|Add0~37\) # (!\i_temporizador|inst3|contador\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|inst3|contador\(19),
	datad => VCC,
	cin => \i_temporizador|inst3|Add0~37\,
	combout => \i_temporizador|inst3|Add0~38_combout\,
	cout => \i_temporizador|inst3|Add0~39\);

-- Location: LCCOMB_X37_Y14_N14
\i_temporizador|inst3|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst3|Add0~40_combout\ = (\i_temporizador|inst3|contador\(20) & (\i_temporizador|inst3|Add0~39\ $ (GND))) # (!\i_temporizador|inst3|contador\(20) & (!\i_temporizador|inst3|Add0~39\ & VCC))
-- \i_temporizador|inst3|Add0~41\ = CARRY((\i_temporizador|inst3|contador\(20) & !\i_temporizador|inst3|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_temporizador|inst3|contador\(20),
	datad => VCC,
	cin => \i_temporizador|inst3|Add0~39\,
	combout => \i_temporizador|inst3|Add0~40_combout\,
	cout => \i_temporizador|inst3|Add0~41\);

-- Location: LCCOMB_X38_Y15_N6
\i_temporizador|inst3|contador[20]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst3|contador[20]~7_combout\ = (\i_UnidadControl|estado_act.Activo~regout\ & (!\i_temporizador|inst3|contador[25]~0_combout\ & ((\i_temporizador|inst3|Add0~40_combout\)))) # (!\i_UnidadControl|estado_act.Activo~regout\ & 
-- ((\i_temporizador|inst3|contador\(20)) # ((!\i_temporizador|inst3|contador[25]~0_combout\ & \i_temporizador|inst3|Add0~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_UnidadControl|estado_act.Activo~regout\,
	datab => \i_temporizador|inst3|contador[25]~0_combout\,
	datac => \i_temporizador|inst3|contador\(20),
	datad => \i_temporizador|inst3|Add0~40_combout\,
	combout => \i_temporizador|inst3|contador[20]~7_combout\);

-- Location: LCFF_X38_Y15_N7
\i_temporizador|inst3|contador[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_temporizador|inst3|contador[20]~7_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_temporizador|inst3|contador\(20));

-- Location: LCCOMB_X37_Y14_N18
\i_temporizador|inst3|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst3|Add0~44_combout\ = (\i_temporizador|inst3|contador\(22) & (\i_temporizador|inst3|Add0~43\ $ (GND))) # (!\i_temporizador|inst3|contador\(22) & (!\i_temporizador|inst3|Add0~43\ & VCC))
-- \i_temporizador|inst3|Add0~45\ = CARRY((\i_temporizador|inst3|contador\(22) & !\i_temporizador|inst3|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_temporizador|inst3|contador\(22),
	datad => VCC,
	cin => \i_temporizador|inst3|Add0~43\,
	combout => \i_temporizador|inst3|Add0~44_combout\,
	cout => \i_temporizador|inst3|Add0~45\);

-- Location: LCCOMB_X37_Y14_N28
\i_temporizador|inst3|contador[22]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst3|contador[22]~4_combout\ = (\i_UnidadControl|estado_act.Activo~regout\ & (\i_temporizador|inst3|Add0~44_combout\ & ((!\i_temporizador|inst3|contador[25]~0_combout\)))) # (!\i_UnidadControl|estado_act.Activo~regout\ & 
-- ((\i_temporizador|inst3|contador\(22)) # ((\i_temporizador|inst3|Add0~44_combout\ & !\i_temporizador|inst3|contador[25]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_UnidadControl|estado_act.Activo~regout\,
	datab => \i_temporizador|inst3|Add0~44_combout\,
	datac => \i_temporizador|inst3|contador\(22),
	datad => \i_temporizador|inst3|contador[25]~0_combout\,
	combout => \i_temporizador|inst3|contador[22]~4_combout\);

-- Location: LCFF_X37_Y14_N29
\i_temporizador|inst3|contador[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_temporizador|inst3|contador[22]~4_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_temporizador|inst3|contador\(22));

-- Location: LCCOMB_X36_Y15_N22
\i_temporizador|inst3|contador[23]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst3|contador[23]~3_combout\ = (\i_temporizador|inst3|contador[25]~0_combout\ & (!\i_UnidadControl|estado_act.Activo~regout\ & (\i_temporizador|inst3|contador\(23)))) # (!\i_temporizador|inst3|contador[25]~0_combout\ & 
-- ((\i_temporizador|inst3|Add0~46_combout\) # ((!\i_UnidadControl|estado_act.Activo~regout\ & \i_temporizador|inst3|contador\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|inst3|contador[25]~0_combout\,
	datab => \i_UnidadControl|estado_act.Activo~regout\,
	datac => \i_temporizador|inst3|contador\(23),
	datad => \i_temporizador|inst3|Add0~46_combout\,
	combout => \i_temporizador|inst3|contador[23]~3_combout\);

-- Location: LCFF_X36_Y15_N23
\i_temporizador|inst3|contador[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_temporizador|inst3|contador[23]~3_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_temporizador|inst3|contador\(23));

-- Location: LCCOMB_X37_Y14_N26
\i_temporizador|inst3|contador[25]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst3|contador[25]~2_combout\ = (\i_temporizador|inst3|Add0~50_combout\ & (((!\i_UnidadControl|estado_act.Activo~regout\ & \i_temporizador|inst3|contador\(25))) # (!\i_temporizador|inst3|contador[25]~0_combout\))) # 
-- (!\i_temporizador|inst3|Add0~50_combout\ & (!\i_UnidadControl|estado_act.Activo~regout\ & (\i_temporizador|inst3|contador\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|inst3|Add0~50_combout\,
	datab => \i_UnidadControl|estado_act.Activo~regout\,
	datac => \i_temporizador|inst3|contador\(25),
	datad => \i_temporizador|inst3|contador[25]~0_combout\,
	combout => \i_temporizador|inst3|contador[25]~2_combout\);

-- Location: LCFF_X37_Y14_N27
\i_temporizador|inst3|contador[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_temporizador|inst3|contador[25]~2_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_temporizador|inst3|contador\(25));

-- Location: LCCOMB_X37_Y15_N4
\i_temporizador|inst3|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst3|Equal0~0_combout\ = (\i_temporizador|inst3|contador\(24)) # (((!\i_temporizador|inst3|contador\(22)) # (!\i_temporizador|inst3|contador\(25))) # (!\i_temporizador|inst3|contador\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|inst3|contador\(24),
	datab => \i_temporizador|inst3|contador\(23),
	datac => \i_temporizador|inst3|contador\(25),
	datad => \i_temporizador|inst3|contador\(22),
	combout => \i_temporizador|inst3|Equal0~0_combout\);

-- Location: LCCOMB_X38_Y15_N20
\i_temporizador|inst3|contador[19]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst3|contador[19]~8_combout\ = (\i_UnidadControl|estado_act.Activo~regout\ & (\i_temporizador|inst3|Add0~38_combout\ & ((!\i_temporizador|inst3|contador[25]~0_combout\)))) # (!\i_UnidadControl|estado_act.Activo~regout\ & 
-- ((\i_temporizador|inst3|contador\(19)) # ((\i_temporizador|inst3|Add0~38_combout\ & !\i_temporizador|inst3|contador[25]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_UnidadControl|estado_act.Activo~regout\,
	datab => \i_temporizador|inst3|Add0~38_combout\,
	datac => \i_temporizador|inst3|contador\(19),
	datad => \i_temporizador|inst3|contador[25]~0_combout\,
	combout => \i_temporizador|inst3|contador[19]~8_combout\);

-- Location: LCFF_X38_Y15_N21
\i_temporizador|inst3|contador[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_temporizador|inst3|contador[19]~8_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_temporizador|inst3|contador\(19));

-- Location: LCCOMB_X38_Y15_N2
\i_temporizador|inst3|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst3|Equal0~1_combout\ = (\i_temporizador|inst3|contador\(18)) # (((!\i_temporizador|inst3|contador\(21)) # (!\i_temporizador|inst3|contador\(19))) # (!\i_temporizador|inst3|contador\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|inst3|contador\(18),
	datab => \i_temporizador|inst3|contador\(20),
	datac => \i_temporizador|inst3|contador\(19),
	datad => \i_temporizador|inst3|contador\(21),
	combout => \i_temporizador|inst3|Equal0~1_combout\);

-- Location: LCCOMB_X38_Y15_N22
\i_temporizador|inst3|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst3|Equal0~4_combout\ = (\i_temporizador|inst3|Equal0~3_combout\) # ((\i_temporizador|inst3|Equal0~2_combout\) # ((\i_temporizador|inst3|Equal0~0_combout\) # (\i_temporizador|inst3|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|inst3|Equal0~3_combout\,
	datab => \i_temporizador|inst3|Equal0~2_combout\,
	datac => \i_temporizador|inst3|Equal0~0_combout\,
	datad => \i_temporizador|inst3|Equal0~1_combout\,
	combout => \i_temporizador|inst3|Equal0~4_combout\);

-- Location: LCCOMB_X36_Y15_N16
\i_temporizador|inst3|contador[25]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst3|contador[25]~0_combout\ = ((!\i_temporizador|inst3|Equal0~7_combout\ & !\i_temporizador|inst3|Equal0~4_combout\)) # (!\i_UnidadControl|estado_act.Activo~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_temporizador|inst3|Equal0~7_combout\,
	datac => \i_UnidadControl|estado_act.Activo~regout\,
	datad => \i_temporizador|inst3|Equal0~4_combout\,
	combout => \i_temporizador|inst3|contador[25]~0_combout\);

-- Location: LCCOMB_X37_Y15_N0
\i_temporizador|inst3|contador[0]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst3|contador[0]~26_combout\ = (\i_temporizador|inst3|Add0~0_combout\ & (((!\i_UnidadControl|estado_act.Activo~regout\ & \i_temporizador|inst3|contador\(0))) # (!\i_temporizador|inst3|contador[25]~0_combout\))) # 
-- (!\i_temporizador|inst3|Add0~0_combout\ & (!\i_UnidadControl|estado_act.Activo~regout\ & (\i_temporizador|inst3|contador\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|inst3|Add0~0_combout\,
	datab => \i_UnidadControl|estado_act.Activo~regout\,
	datac => \i_temporizador|inst3|contador\(0),
	datad => \i_temporizador|inst3|contador[25]~0_combout\,
	combout => \i_temporizador|inst3|contador[0]~26_combout\);

-- Location: LCFF_X37_Y15_N1
\i_temporizador|inst3|contador[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_temporizador|inst3|contador[0]~26_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_temporizador|inst3|contador\(0));

-- Location: LCCOMB_X36_Y15_N0
\i_temporizador|inst3|contador[4]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst3|contador[4]~22_combout\ = (\i_UnidadControl|estado_act.Activo~regout\ & (\i_temporizador|inst3|Add0~8_combout\ & ((!\i_temporizador|inst3|contador[25]~0_combout\)))) # (!\i_UnidadControl|estado_act.Activo~regout\ & 
-- ((\i_temporizador|inst3|contador\(4)) # ((\i_temporizador|inst3|Add0~8_combout\ & !\i_temporizador|inst3|contador[25]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_UnidadControl|estado_act.Activo~regout\,
	datab => \i_temporizador|inst3|Add0~8_combout\,
	datac => \i_temporizador|inst3|contador\(4),
	datad => \i_temporizador|inst3|contador[25]~0_combout\,
	combout => \i_temporizador|inst3|contador[4]~22_combout\);

-- Location: LCFF_X36_Y15_N1
\i_temporizador|inst3|contador[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_temporizador|inst3|contador[4]~22_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_temporizador|inst3|contador\(4));

-- Location: LCCOMB_X36_Y15_N14
\i_temporizador|inst3|contador[3]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst3|contador[3]~23_combout\ = (\i_UnidadControl|estado_act.Activo~regout\ & (\i_temporizador|inst3|Add0~6_combout\ & ((!\i_temporizador|inst3|contador[25]~0_combout\)))) # (!\i_UnidadControl|estado_act.Activo~regout\ & 
-- ((\i_temporizador|inst3|contador\(3)) # ((\i_temporizador|inst3|Add0~6_combout\ & !\i_temporizador|inst3|contador[25]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_UnidadControl|estado_act.Activo~regout\,
	datab => \i_temporizador|inst3|Add0~6_combout\,
	datac => \i_temporizador|inst3|contador\(3),
	datad => \i_temporizador|inst3|contador[25]~0_combout\,
	combout => \i_temporizador|inst3|contador[3]~23_combout\);

-- Location: LCFF_X36_Y15_N15
\i_temporizador|inst3|contador[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_temporizador|inst3|contador[3]~23_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_temporizador|inst3|contador\(3));

-- Location: LCCOMB_X36_Y15_N18
\i_temporizador|inst3|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst3|Equal0~6_combout\ = (((!\i_temporizador|inst3|contador\(2)) # (!\i_temporizador|inst3|contador\(3))) # (!\i_temporizador|inst3|contador\(4))) # (!\i_temporizador|inst3|contador\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|inst3|contador\(5),
	datab => \i_temporizador|inst3|contador\(4),
	datac => \i_temporizador|inst3|contador\(3),
	datad => \i_temporizador|inst3|contador\(2),
	combout => \i_temporizador|inst3|Equal0~6_combout\);

-- Location: LCCOMB_X36_Y15_N26
\i_temporizador|inst3|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst3|Equal0~7_combout\ = (\i_temporizador|inst3|Equal0~5_combout\) # (((\i_temporizador|inst3|Equal0~6_combout\) # (!\i_temporizador|inst3|contador\(1))) # (!\i_temporizador|inst3|contador\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|inst3|Equal0~5_combout\,
	datab => \i_temporizador|inst3|contador\(0),
	datac => \i_temporizador|inst3|contador\(1),
	datad => \i_temporizador|inst3|Equal0~6_combout\,
	combout => \i_temporizador|inst3|Equal0~7_combout\);

-- Location: LCCOMB_X39_Y15_N24
\i_temporizador|inst7|contador[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst7|contador[3]~1_combout\ = (\i_UnidadControl|estado_act.CargaSeg~regout\) # ((!\i_temporizador|inst3|Equal0~7_combout\ & !\i_temporizador|inst3|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_UnidadControl|estado_act.CargaSeg~regout\,
	datac => \i_temporizador|inst3|Equal0~7_combout\,
	datad => \i_temporizador|inst3|Equal0~4_combout\,
	combout => \i_temporizador|inst7|contador[3]~1_combout\);

-- Location: LCFF_X40_Y15_N15
\i_temporizador|inst7|contador[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_temporizador|inst7|contador~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_temporizador|inst7|contador[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_temporizador|inst7|contador\(0));

-- Location: LCCOMB_X40_Y15_N24
\i_temporizador|inst7|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst7|Add0~0_combout\ = \i_temporizador|inst7|contador\(0) $ (\i_temporizador|inst7|contador\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_temporizador|inst7|contador\(0),
	datad => \i_temporizador|inst7|contador\(1),
	combout => \i_temporizador|inst7|Add0~0_combout\);

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ent_p[1]~I\ : cycloneii_io
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
	padio => ww_ent_p(1),
	combout => \ent_p~combout\(1));

-- Location: LCCOMB_X40_Y15_N12
\i_temporizador|inst7|contador~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst7|contador~2_combout\ = (\i_UnidadControl|estado_act.CargaSeg~regout\ & (((\ent_p~combout\(1))))) # (!\i_UnidadControl|estado_act.CargaSeg~regout\ & (!\i_temporizador|inst7|Equal0~0_combout\ & (!\i_temporizador|inst7|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_UnidadControl|estado_act.CargaSeg~regout\,
	datab => \i_temporizador|inst7|Equal0~0_combout\,
	datac => \i_temporizador|inst7|Add0~0_combout\,
	datad => \ent_p~combout\(1),
	combout => \i_temporizador|inst7|contador~2_combout\);

-- Location: LCFF_X40_Y15_N13
\i_temporizador|inst7|contador[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_temporizador|inst7|contador~2_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_temporizador|inst7|contador[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_temporizador|inst7|contador\(1));

-- Location: LCCOMB_X40_Y15_N30
\i_temporizador|inst7|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst7|Add0~1_combout\ = \i_temporizador|inst7|contador\(2) $ (((\i_temporizador|inst7|contador\(0)) # (\i_temporizador|inst7|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_temporizador|inst7|contador\(2),
	datac => \i_temporizador|inst7|contador\(0),
	datad => \i_temporizador|inst7|contador\(1),
	combout => \i_temporizador|inst7|Add0~1_combout\);

-- Location: LCCOMB_X40_Y15_N26
\i_temporizador|inst7|contador~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst7|contador~3_combout\ = (\i_UnidadControl|estado_act.CargaSeg~regout\ & (((\ent_p~combout\(2))))) # (!\i_UnidadControl|estado_act.CargaSeg~regout\ & (!\i_temporizador|inst7|Equal0~0_combout\ & 
-- ((!\i_temporizador|inst7|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_UnidadControl|estado_act.CargaSeg~regout\,
	datab => \i_temporizador|inst7|Equal0~0_combout\,
	datac => \ent_p~combout\(2),
	datad => \i_temporizador|inst7|Add0~1_combout\,
	combout => \i_temporizador|inst7|contador~3_combout\);

-- Location: LCFF_X40_Y15_N27
\i_temporizador|inst7|contador[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_temporizador|inst7|contador~3_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_temporizador|inst7|contador[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_temporizador|inst7|contador\(2));

-- Location: LCCOMB_X40_Y15_N2
\i_temporizador|inst7|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst7|Equal0~0_combout\ = (!\i_temporizador|inst7|contador\(3) & (!\i_temporizador|inst7|contador\(2) & (!\i_temporizador|inst7|contador\(0) & !\i_temporizador|inst7|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|inst7|contador\(3),
	datab => \i_temporizador|inst7|contador\(2),
	datac => \i_temporizador|inst7|contador\(0),
	datad => \i_temporizador|inst7|contador\(1),
	combout => \i_temporizador|inst7|Equal0~0_combout\);

-- Location: LCCOMB_X39_Y15_N0
\i_temporizador|inst8|contador[0]~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst8|contador[0]~_wirecell_combout\ = !\i_temporizador|inst8|contador\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_temporizador|inst8|contador\(0),
	combout => \i_temporizador|inst8|contador[0]~_wirecell_combout\);

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ent_p[5]~I\ : cycloneii_io
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
	padio => ww_ent_p(5),
	combout => \ent_p~combout\(5));

-- Location: LCCOMB_X40_Y15_N8
\i_temporizador|inst9|contador~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst9|contador~5_combout\ = \i_temporizador|inst9|contador\(2) $ (\i_temporizador|inst9|contador\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_temporizador|inst9|contador\(2),
	datad => \i_temporizador|inst9|contador\(1),
	combout => \i_temporizador|inst9|contador~5_combout\);

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ent_p[4]~I\ : cycloneii_io
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
	padio => ww_ent_p(4),
	combout => \ent_p~combout\(4));

-- Location: LCCOMB_X40_Y15_N18
\i_temporizador|inst9|contador~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst9|contador~1_combout\ = (\i_UnidadControl|estado_act.CargaSeg~regout\ & (\ent_p~combout\(4))) # (!\i_UnidadControl|estado_act.CargaSeg~regout\ & ((!\i_temporizador|inst9|contador\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_UnidadControl|estado_act.CargaSeg~regout\,
	datab => \ent_p~combout\(4),
	datac => \i_temporizador|inst9|contador\(0),
	combout => \i_temporizador|inst9|contador~1_combout\);

-- Location: LCCOMB_X39_Y15_N30
\i_temporizador|inst9|contador[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst9|contador[0]~2_combout\ = (\i_UnidadControl|estado_act.CargaSeg~regout\) # ((\i_temporizador|inst7|Equal0~0_combout\ & (!\i_temporizador|inst3|Equal0~7_combout\ & !\i_temporizador|inst3|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|inst7|Equal0~0_combout\,
	datab => \i_UnidadControl|estado_act.CargaSeg~regout\,
	datac => \i_temporizador|inst3|Equal0~7_combout\,
	datad => \i_temporizador|inst3|Equal0~4_combout\,
	combout => \i_temporizador|inst9|contador[0]~2_combout\);

-- Location: LCFF_X40_Y15_N19
\i_temporizador|inst9|contador[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_temporizador|inst9|contador~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_temporizador|inst9|contador[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_temporizador|inst9|contador\(0));

-- Location: LCCOMB_X40_Y15_N0
\i_temporizador|inst9|contador[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst9|contador[2]~0_combout\ = (\i_temporizador|inst9|contador\(0) & ((\i_temporizador|inst9|contador\(2)))) # (!\i_temporizador|inst9|contador\(0) & (!\i_temporizador|inst9|contador~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_temporizador|inst9|contador~5_combout\,
	datac => \i_temporizador|inst9|contador\(2),
	datad => \i_temporizador|inst9|contador\(0),
	combout => \i_temporizador|inst9|contador[2]~0_combout\);

-- Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ent_p[6]~I\ : cycloneii_io
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
	padio => ww_ent_p(6),
	combout => \ent_p~combout\(6));

-- Location: LCFF_X40_Y15_N1
\i_temporizador|inst9|contador[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_temporizador|inst9|contador[2]~0_combout\,
	sdata => \ent_p~combout\(6),
	aclr => \ALT_INV_reset_n~combout\,
	sload => \i_UnidadControl|estado_act.CargaSeg~regout\,
	ena => \i_temporizador|inst9|contador[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_temporizador|inst9|contador\(2));

-- Location: LCCOMB_X40_Y15_N10
\i_temporizador|inst9|contador~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst9|contador~3_combout\ = (!\i_UnidadControl|estado_act.CargaSeg~regout\ & ((\i_temporizador|inst9|contador\(1) & ((\i_temporizador|inst9|contador\(0)))) # (!\i_temporizador|inst9|contador\(1) & (\i_temporizador|inst9|contador\(2) & 
-- !\i_temporizador|inst9|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_UnidadControl|estado_act.CargaSeg~regout\,
	datab => \i_temporizador|inst9|contador\(1),
	datac => \i_temporizador|inst9|contador\(2),
	datad => \i_temporizador|inst9|contador\(0),
	combout => \i_temporizador|inst9|contador~3_combout\);

-- Location: LCCOMB_X40_Y15_N28
\i_temporizador|inst9|contador~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst9|contador~4_combout\ = (\i_temporizador|inst9|contador~3_combout\) # ((\i_UnidadControl|estado_act.CargaSeg~regout\ & \ent_p~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_UnidadControl|estado_act.CargaSeg~regout\,
	datac => \ent_p~combout\(5),
	datad => \i_temporizador|inst9|contador~3_combout\,
	combout => \i_temporizador|inst9|contador~4_combout\);

-- Location: LCFF_X40_Y15_N29
\i_temporizador|inst9|contador[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_temporizador|inst9|contador~4_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_temporizador|inst9|contador[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_temporizador|inst9|contador\(1));

-- Location: LCCOMB_X39_Y15_N8
\i_temporizador|inst9|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst9|Equal0~0_combout\ = (!\i_temporizador|inst9|contador\(1) & (!\i_temporizador|inst9|contador\(2) & !\i_temporizador|inst9|contador\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_temporizador|inst9|contador\(1),
	datac => \i_temporizador|inst9|contador\(2),
	datad => \i_temporizador|inst9|contador\(0),
	combout => \i_temporizador|inst9|Equal0~0_combout\);

-- Location: LCCOMB_X39_Y15_N26
\i_temporizador|inst9|contador[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst9|contador[0]~6_combout\ = (\i_temporizador|inst7|Equal0~0_combout\ & (!\i_temporizador|inst3|Equal0~7_combout\ & !\i_temporizador|inst3|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|inst7|Equal0~0_combout\,
	datac => \i_temporizador|inst3|Equal0~7_combout\,
	datad => \i_temporizador|inst3|Equal0~4_combout\,
	combout => \i_temporizador|inst9|contador[0]~6_combout\);

-- Location: LCCOMB_X39_Y15_N20
\i_temporizador|inst8|contador[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst8|contador[0]~0_combout\ = (\i_UnidadControl|estado_act.CargaMin~regout\) # ((\i_temporizador|inst9|Equal0~0_combout\ & \i_temporizador|inst9|contador[0]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_temporizador|inst9|Equal0~0_combout\,
	datac => \i_UnidadControl|estado_act.CargaMin~regout\,
	datad => \i_temporizador|inst9|contador[0]~6_combout\,
	combout => \i_temporizador|inst8|contador[0]~0_combout\);

-- Location: LCFF_X39_Y15_N1
\i_temporizador|inst8|contador[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_temporizador|inst8|contador[0]~_wirecell_combout\,
	sdata => \ent_p~combout\(0),
	aclr => \ALT_INV_reset_n~combout\,
	sload => \i_UnidadControl|estado_act.CargaMin~regout\,
	ena => \i_temporizador|inst8|contador[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_temporizador|inst8|contador\(0));

-- Location: LCCOMB_X39_Y15_N18
\i_temporizador|inst8|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst8|Add0~0_combout\ = \i_temporizador|inst8|contador\(3) $ (((!\i_temporizador|inst8|contador\(2) & (!\i_temporizador|inst8|contador\(1) & !\i_temporizador|inst8|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|inst8|contador\(2),
	datab => \i_temporizador|inst8|contador\(1),
	datac => \i_temporizador|inst8|contador\(3),
	datad => \i_temporizador|inst8|contador\(0),
	combout => \i_temporizador|inst8|Add0~0_combout\);

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ent_p[3]~I\ : cycloneii_io
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
	padio => ww_ent_p(3),
	combout => \ent_p~combout\(3));

-- Location: LCFF_X39_Y15_N19
\i_temporizador|inst8|contador[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_temporizador|inst8|Add0~0_combout\,
	sdata => \ent_p~combout\(3),
	aclr => \ALT_INV_reset_n~combout\,
	sload => \i_UnidadControl|estado_act.CargaMin~regout\,
	ena => \i_temporizador|inst8|contador[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_temporizador|inst8|contador\(3));

-- Location: LCCOMB_X39_Y15_N14
\i_temporizador|inst8|contador~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst8|contador~1_combout\ = (\i_temporizador|inst8|contador\(0) & (((\i_temporizador|inst8|contador\(1))))) # (!\i_temporizador|inst8|contador\(0) & (!\i_temporizador|inst8|contador\(1) & ((\i_temporizador|inst8|contador\(2)) # 
-- (\i_temporizador|inst8|contador\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|inst8|contador\(2),
	datab => \i_temporizador|inst8|contador\(0),
	datac => \i_temporizador|inst8|contador\(1),
	datad => \i_temporizador|inst8|contador\(3),
	combout => \i_temporizador|inst8|contador~1_combout\);

-- Location: LCFF_X39_Y15_N15
\i_temporizador|inst8|contador[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_temporizador|inst8|contador~1_combout\,
	sdata => \ent_p~combout\(1),
	aclr => \ALT_INV_reset_n~combout\,
	sload => \i_UnidadControl|estado_act.CargaMin~regout\,
	ena => \i_temporizador|inst8|contador[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_temporizador|inst8|contador\(1));

-- Location: LCCOMB_X39_Y15_N10
\i_temporizador|inst8|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst8|Equal0~0_combout\ = (!\i_temporizador|inst8|contador\(2) & (!\i_temporizador|inst8|contador\(0) & (!\i_temporizador|inst8|contador\(1) & !\i_temporizador|inst8|contador\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|inst8|contador\(2),
	datab => \i_temporizador|inst8|contador\(0),
	datac => \i_temporizador|inst8|contador\(1),
	datad => \i_temporizador|inst8|contador\(3),
	combout => \i_temporizador|inst8|Equal0~0_combout\);

-- Location: LCCOMB_X39_Y14_N20
\i_UnidadControl|Selector2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_UnidadControl|Selector2~4_combout\ = (\i_temporizador|inst7|Equal0~0_combout\ & \i_temporizador|inst8|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_temporizador|inst7|Equal0~0_combout\,
	datad => \i_temporizador|inst8|Equal0~0_combout\,
	combout => \i_UnidadControl|Selector2~4_combout\);

-- Location: LCCOMB_X39_Y15_N4
\i_temporizador|inst10|contador[0]~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst10|contador[0]~_wirecell_combout\ = !\i_temporizador|inst10|contador\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_temporizador|inst10|contador\(0),
	combout => \i_temporizador|inst10|contador[0]~_wirecell_combout\);

-- Location: LCCOMB_X39_Y15_N6
\i_temporizador|inst10|contador[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst10|contador[1]~0_combout\ = (\i_UnidadControl|estado_act.CargaMin~regout\) # ((\i_temporizador|inst8|Equal0~0_combout\ & (\i_temporizador|inst9|Equal0~0_combout\ & \i_temporizador|inst9|contador[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|inst8|Equal0~0_combout\,
	datab => \i_temporizador|inst9|Equal0~0_combout\,
	datac => \i_UnidadControl|estado_act.CargaMin~regout\,
	datad => \i_temporizador|inst9|contador[0]~6_combout\,
	combout => \i_temporizador|inst10|contador[1]~0_combout\);

-- Location: LCFF_X39_Y15_N5
\i_temporizador|inst10|contador[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_temporizador|inst10|contador[0]~_wirecell_combout\,
	sdata => \ent_p~combout\(4),
	aclr => \ALT_INV_reset_n~combout\,
	sload => \i_UnidadControl|estado_act.CargaMin~regout\,
	ena => \i_temporizador|inst10|contador[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_temporizador|inst10|contador\(0));

-- Location: LCCOMB_X39_Y15_N22
\i_temporizador|inst10|contador~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst10|contador~1_combout\ = (\i_temporizador|inst10|contador\(0) & (\i_temporizador|inst10|contador\(1))) # (!\i_temporizador|inst10|contador\(0) & (!\i_temporizador|inst10|contador\(1) & \i_temporizador|inst10|contador\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_temporizador|inst10|contador\(0),
	datac => \i_temporizador|inst10|contador\(1),
	datad => \i_temporizador|inst10|contador\(2),
	combout => \i_temporizador|inst10|contador~1_combout\);

-- Location: LCFF_X39_Y15_N23
\i_temporizador|inst10|contador[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_temporizador|inst10|contador~1_combout\,
	sdata => \ent_p~combout\(5),
	aclr => \ALT_INV_reset_n~combout\,
	sload => \i_UnidadControl|estado_act.CargaMin~regout\,
	ena => \i_temporizador|inst10|contador[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_temporizador|inst10|contador\(1));

-- Location: LCCOMB_X39_Y15_N28
\i_temporizador|inst10|contador~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst10|contador~2_combout\ = \i_temporizador|inst10|contador\(2) $ (((!\i_temporizador|inst10|contador\(0) & !\i_temporizador|inst10|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_temporizador|inst10|contador\(0),
	datac => \i_temporizador|inst10|contador\(2),
	datad => \i_temporizador|inst10|contador\(1),
	combout => \i_temporizador|inst10|contador~2_combout\);

-- Location: LCFF_X39_Y15_N29
\i_temporizador|inst10|contador[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_temporizador|inst10|contador~2_combout\,
	sdata => \ent_p~combout\(6),
	aclr => \ALT_INV_reset_n~combout\,
	sload => \i_UnidadControl|estado_act.CargaMin~regout\,
	ena => \i_temporizador|inst10|contador[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_temporizador|inst10|contador\(2));

-- Location: LCCOMB_X39_Y15_N2
\i_UnidadControl|Selector2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_UnidadControl|Selector2~6_combout\ = (\i_UnidadControl|Selector2~5_combout\ & (!\i_temporizador|inst10|contador\(2) & (!\i_temporizador|inst10|contador\(0) & !\i_temporizador|inst10|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_UnidadControl|Selector2~5_combout\,
	datab => \i_temporizador|inst10|contador\(2),
	datac => \i_temporizador|inst10|contador\(0),
	datad => \i_temporizador|inst10|contador\(1),
	combout => \i_UnidadControl|Selector2~6_combout\);

-- Location: LCCOMB_X39_Y14_N28
\i_UnidadControl|Selector1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_UnidadControl|Selector1~3_combout\ = (\i_UnidadControl|Selector1~1_combout\) # ((\i_UnidadControl|Selector1~2_combout\ & (\i_UnidadControl|Selector2~4_combout\ & \i_UnidadControl|Selector2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_UnidadControl|Selector1~2_combout\,
	datab => \i_UnidadControl|Selector1~1_combout\,
	datac => \i_UnidadControl|Selector2~4_combout\,
	datad => \i_UnidadControl|Selector2~6_combout\,
	combout => \i_UnidadControl|Selector1~3_combout\);

-- Location: LCCOMB_X39_Y14_N30
\i_UnidadControl|Selector3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_UnidadControl|Selector3~2_combout\ = (\i_UnidadControl|Selector1~3_combout\ & (((\i_UnidadControl|Selector3~0_combout\ & \i_UnidadControl|estado_act.EspBot~regout\)))) # (!\i_UnidadControl|Selector1~3_combout\ & (\i_UnidadControl|Selector3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_UnidadControl|Selector3~1_combout\,
	datab => \i_UnidadControl|Selector3~0_combout\,
	datac => \i_UnidadControl|estado_act.EspBot~regout\,
	datad => \i_UnidadControl|Selector1~3_combout\,
	combout => \i_UnidadControl|Selector3~2_combout\);

-- Location: LCFF_X39_Y14_N31
\i_UnidadControl|estado_act.CargaSeg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_UnidadControl|Selector3~2_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_UnidadControl|estado_act.CargaSeg~regout\);

-- Location: LCCOMB_X40_Y14_N30
\i_UnidadControl|Selector2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_UnidadControl|Selector2~8_combout\ = (!\puerta~combout\ & ((\i_UnidadControl|estado_act.CargaSeg~regout\) # (\i_UnidadControl|estado_act.Abierto~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \puerta~combout\,
	datac => \i_UnidadControl|estado_act.CargaSeg~regout\,
	datad => \i_UnidadControl|estado_act.Abierto~regout\,
	combout => \i_UnidadControl|Selector2~8_combout\);

-- Location: LCCOMB_X39_Y14_N18
\i_UnidadControl|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_UnidadControl|Selector4~0_combout\ = (\i_UnidadControl|Selector2~8_combout\) # ((\i_UnidadControl|estado_act.Activo~regout\ & \i_UnidadControl|Selector5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_UnidadControl|Selector2~8_combout\,
	datac => \i_UnidadControl|estado_act.Activo~regout\,
	datad => \i_UnidadControl|Selector5~0_combout\,
	combout => \i_UnidadControl|Selector4~0_combout\);

-- Location: LCFF_X39_Y14_N19
\i_UnidadControl|estado_act.Activo\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_UnidadControl|Selector4~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_UnidadControl|estado_act.Activo~regout\);

-- Location: LCCOMB_X39_Y14_N14
\i_UnidadControl|Selector2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_UnidadControl|Selector2~10_combout\ = ((\i_UnidadControl|Selector2~8_combout\) # ((\i_UnidadControl|estado_act.Activo~regout\ & \puerta~combout\))) # (!\i_UnidadControl|Selector2~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_UnidadControl|Selector2~9_combout\,
	datab => \i_UnidadControl|estado_act.Activo~regout\,
	datac => \puerta~combout\,
	datad => \i_UnidadControl|Selector2~8_combout\,
	combout => \i_UnidadControl|Selector2~10_combout\);

-- Location: LCCOMB_X39_Y14_N0
\i_UnidadControl|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_UnidadControl|Selector5~0_combout\ = (!\i_UnidadControl|Selector2~7_combout\ & (!\i_UnidadControl|Selector2~10_combout\ & ((!\i_UnidadControl|Selector2~6_combout\) # (!\i_UnidadControl|Selector2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_UnidadControl|Selector2~4_combout\,
	datab => \i_UnidadControl|Selector2~7_combout\,
	datac => \i_UnidadControl|Selector2~10_combout\,
	datad => \i_UnidadControl|Selector2~6_combout\,
	combout => \i_UnidadControl|Selector5~0_combout\);

-- Location: LCCOMB_X39_Y14_N6
\i_UnidadControl|Selector2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_UnidadControl|Selector2~12_combout\ = (!\puerta~combout\ & (\i_UnidadControl|Selector2~6_combout\ & (\i_temporizador|inst7|Equal0~0_combout\ & \i_temporizador|inst8|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \puerta~combout\,
	datab => \i_UnidadControl|Selector2~6_combout\,
	datac => \i_temporizador|inst7|Equal0~0_combout\,
	datad => \i_temporizador|inst8|Equal0~0_combout\,
	combout => \i_UnidadControl|Selector2~12_combout\);

-- Location: LCCOMB_X39_Y14_N16
\i_UnidadControl|Selector5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_UnidadControl|Selector5~1_combout\ = (\i_UnidadControl|Selector2~12_combout\) # ((\i_UnidadControl|Selector5~0_combout\ & \i_UnidadControl|estado_act.Finalizado~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_UnidadControl|Selector5~0_combout\,
	datac => \i_UnidadControl|estado_act.Finalizado~regout\,
	datad => \i_UnidadControl|Selector2~12_combout\,
	combout => \i_UnidadControl|Selector5~1_combout\);

-- Location: LCFF_X39_Y14_N17
\i_UnidadControl|estado_act.Finalizado\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_UnidadControl|Selector5~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_UnidadControl|estado_act.Finalizado~regout\);

-- Location: LCCOMB_X40_Y15_N16
\i_temporizador|inst7|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst7|Add0~2_combout\ = \i_temporizador|inst7|contador\(3) $ (((\i_temporizador|inst7|contador\(2)) # ((\i_temporizador|inst7|contador\(0)) # (\i_temporizador|inst7|contador\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|inst7|contador\(3),
	datab => \i_temporizador|inst7|contador\(2),
	datac => \i_temporizador|inst7|contador\(0),
	datad => \i_temporizador|inst7|contador\(1),
	combout => \i_temporizador|inst7|Add0~2_combout\);

-- Location: LCCOMB_X40_Y15_N20
\i_temporizador|inst7|contador~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst7|contador~4_combout\ = (\i_UnidadControl|estado_act.CargaSeg~regout\ & ((\ent_p~combout\(3)))) # (!\i_UnidadControl|estado_act.CargaSeg~regout\ & (!\i_temporizador|inst7|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_UnidadControl|estado_act.CargaSeg~regout\,
	datac => \i_temporizador|inst7|Add0~2_combout\,
	datad => \ent_p~combout\(3),
	combout => \i_temporizador|inst7|contador~4_combout\);

-- Location: LCFF_X40_Y15_N21
\i_temporizador|inst7|contador[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_temporizador|inst7|contador~4_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_temporizador|inst7|contador[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_temporizador|inst7|contador\(3));

-- Location: LCCOMB_X39_Y15_N16
\i_temporizador|inst8|contador~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_temporizador|inst8|contador~2_combout\ = (\i_temporizador|inst8|contador\(1) & (((\i_temporizador|inst8|contador\(2))))) # (!\i_temporizador|inst8|contador\(1) & ((\i_temporizador|inst8|contador\(0) & (\i_temporizador|inst8|contador\(2))) # 
-- (!\i_temporizador|inst8|contador\(0) & (!\i_temporizador|inst8|contador\(2) & \i_temporizador|inst8|contador\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temporizador|inst8|contador\(1),
	datab => \i_temporizador|inst8|contador\(0),
	datac => \i_temporizador|inst8|contador\(2),
	datad => \i_temporizador|inst8|contador\(3),
	combout => \i_temporizador|inst8|contador~2_combout\);

-- Location: LCFF_X39_Y15_N17
\i_temporizador|inst8|contador[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_temporizador|inst8|contador~2_combout\,
	sdata => \ent_p~combout\(2),
	aclr => \ALT_INV_reset_n~combout\,
	sload => \i_UnidadControl|estado_act.CargaMin~regout\,
	ena => \i_temporizador|inst8|contador[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_temporizador|inst8|contador\(2));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt_seg[0]~I\ : cycloneii_io
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
	datain => \i_temporizador|inst7|contador\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt_seg(0));

-- Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt_seg[1]~I\ : cycloneii_io
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
	datain => \i_temporizador|inst7|contador\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt_seg(1));

-- Location: PIN_M18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt_seg[2]~I\ : cycloneii_io
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
	datain => \i_temporizador|inst7|contador\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt_seg(2));

-- Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt_seg[3]~I\ : cycloneii_io
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
	datain => \i_temporizador|inst7|contador\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt_seg(3));

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt_seg[4]~I\ : cycloneii_io
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
	datain => \i_temporizador|inst9|contador\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt_seg(4));

-- Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt_seg[5]~I\ : cycloneii_io
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
	datain => \i_temporizador|inst9|contador\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt_seg(5));

-- Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt_seg[6]~I\ : cycloneii_io
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
	datain => \i_temporizador|inst9|contador\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt_seg(6));

-- Location: PIN_AA5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt_seg[7]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt_seg(7));

-- Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt_min[0]~I\ : cycloneii_io
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
	datain => \i_temporizador|inst8|contador\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt_min(0));

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt_min[1]~I\ : cycloneii_io
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
	datain => \i_temporizador|inst8|contador\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt_min(1));

-- Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt_min[2]~I\ : cycloneii_io
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
	datain => \i_temporizador|inst8|contador\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt_min(2));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt_min[3]~I\ : cycloneii_io
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
	datain => \i_temporizador|inst8|contador\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt_min(3));

-- Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt_min[4]~I\ : cycloneii_io
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
	datain => \i_temporizador|inst10|contador\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt_min(4));

-- Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt_min[5]~I\ : cycloneii_io
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
	datain => \i_temporizador|inst10|contador\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt_min(5));

-- Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt_min[6]~I\ : cycloneii_io
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
	datain => \i_temporizador|inst10|contador\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt_min(6));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt_min[7]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt_min(7));
END structure;


