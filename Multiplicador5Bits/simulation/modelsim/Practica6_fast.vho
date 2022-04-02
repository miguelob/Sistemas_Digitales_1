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

-- DATE "10/29/2018 09:29:19"

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

ENTITY 	Practica6 IS
    PORT (
	disp1 : OUT std_logic_vector(6 DOWNTO 0);
	a : IN std_logic_vector(4 DOWNTO 0);
	b : IN std_logic_vector(4 DOWNTO 0);
	disp2 : OUT std_logic_vector(6 DOWNTO 0);
	disp3 : OUT std_logic_vector(6 DOWNTO 0)
	);
END Practica6;

-- Design Ports Information
-- disp1[6]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[5]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[4]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[2]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[1]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[0]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp2[6]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp2[5]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp2[4]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp2[3]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp2[2]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp2[1]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp2[0]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp3[6]	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp3[5]	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp3[4]	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp3[3]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp3[2]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp3[1]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp3[0]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- a[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[0]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[1]	=>  Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[2]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[3]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[3]	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[4]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[4]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Practica6 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_disp1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_a : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_disp2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_disp3 : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst|i1|Add0~4_combout\ : std_logic;
SIGNAL \inst|i1|Add0~7\ : std_logic;
SIGNAL \inst|i1|Add1~2_combout\ : std_logic;
SIGNAL \inst|i1|Add0~8_combout\ : std_logic;
SIGNAL \inst|i1|Add0~9\ : std_logic;
SIGNAL \inst|i1|Add2~6_combout\ : std_logic;
SIGNAL \inst|i1|Add0~10_combout\ : std_logic;
SIGNAL \inst|i1|Add2~8_combout\ : std_logic;
SIGNAL \inst|i1|pp[1][1]~combout\ : std_logic;
SIGNAL \inst|i1|pp[0][2]~combout\ : std_logic;
SIGNAL \inst|i1|pp[2][2]~combout\ : std_logic;
SIGNAL \inst|i1|pp[0][3]~combout\ : std_logic;
SIGNAL \inst|i1|pp[3][3]~combout\ : std_logic;
SIGNAL \inst|i1|pp[1][4]~combout\ : std_logic;
SIGNAL \inst|i1|pp[3][4]~combout\ : std_logic;
SIGNAL \inst|i1|pp[4][4]~combout\ : std_logic;
SIGNAL \inst|i1|pp[2][5]~combout\ : std_logic;
SIGNAL \inst|i1|pp[3][6]~combout\ : std_logic;
SIGNAL \inst|i1|pp[4][7]~combout\ : std_logic;
SIGNAL \inst|i1|pp[4][8]~combout\ : std_logic;
SIGNAL \inst|i1|pp[0][0]~combout\ : std_logic;
SIGNAL \inst|i1|pp[2][3]~combout\ : std_logic;
SIGNAL \inst|i1|Add1~0_combout\ : std_logic;
SIGNAL \inst|i1|pp[1][2]~combout\ : std_logic;
SIGNAL \inst|i1|pp[0][1]~combout\ : std_logic;
SIGNAL \inst|i1|Add0~1\ : std_logic;
SIGNAL \inst|i1|Add0~2_combout\ : std_logic;
SIGNAL \inst|i1|Add2~1\ : std_logic;
SIGNAL \inst|i1|Add2~2_combout\ : std_logic;
SIGNAL \inst|i1|Add2~0_combout\ : std_logic;
SIGNAL \inst|i1|Add0~0_combout\ : std_logic;
SIGNAL \inst|GenSum:0:i_BinA7Seg|Mux0~0_combout\ : std_logic;
SIGNAL \inst|GenSum:0:i_BinA7Seg|Mux1~0_combout\ : std_logic;
SIGNAL \inst|GenSum:0:i_BinA7Seg|Mux2~0_combout\ : std_logic;
SIGNAL \inst|GenSum:0:i_BinA7Seg|Mux3~0_combout\ : std_logic;
SIGNAL \inst|GenSum:0:i_BinA7Seg|Mux4~0_combout\ : std_logic;
SIGNAL \inst|GenSum:0:i_BinA7Seg|Mux5~0_combout\ : std_logic;
SIGNAL \inst|GenSum:0:i_BinA7Seg|Mux6~0_combout\ : std_logic;
SIGNAL \inst|i1|pp[4][6]~combout\ : std_logic;
SIGNAL \inst|i1|pp[4][5]~combout\ : std_logic;
SIGNAL \inst|i1|pp[0][4]~combout\ : std_logic;
SIGNAL \inst|i1|pp[1][3]~combout\ : std_logic;
SIGNAL \inst|i1|Add0~3\ : std_logic;
SIGNAL \inst|i1|Add0~5\ : std_logic;
SIGNAL \inst|i1|Add0~6_combout\ : std_logic;
SIGNAL \inst|i1|Add2~3\ : std_logic;
SIGNAL \inst|i1|Add2~4_combout\ : std_logic;
SIGNAL \inst|i1|p[4]~1\ : std_logic;
SIGNAL \inst|i1|p[5]~3\ : std_logic;
SIGNAL \inst|i1|p[6]~4_combout\ : std_logic;
SIGNAL \inst|i1|pp[2][6]~combout\ : std_logic;
SIGNAL \inst|i1|pp[3][5]~combout\ : std_logic;
SIGNAL \inst|i1|pp[2][4]~combout\ : std_logic;
SIGNAL \inst|i1|Add1~1\ : std_logic;
SIGNAL \inst|i1|Add1~3\ : std_logic;
SIGNAL \inst|i1|Add1~5\ : std_logic;
SIGNAL \inst|i1|Add1~7\ : std_logic;
SIGNAL \inst|i1|Add1~8_combout\ : std_logic;
SIGNAL \inst|i1|Add1~6_combout\ : std_logic;
SIGNAL \inst|i1|Add1~4_combout\ : std_logic;
SIGNAL \inst|i1|Add2~5\ : std_logic;
SIGNAL \inst|i1|Add2~7\ : std_logic;
SIGNAL \inst|i1|Add2~9\ : std_logic;
SIGNAL \inst|i1|Add2~10_combout\ : std_logic;
SIGNAL \inst|i1|p[6]~5\ : std_logic;
SIGNAL \inst|i1|p[7]~6_combout\ : std_logic;
SIGNAL \inst|i1|p[4]~0_combout\ : std_logic;
SIGNAL \inst|i1|p[5]~2_combout\ : std_logic;
SIGNAL \inst|GenSum:1:i_BinA7Seg|Mux0~0_combout\ : std_logic;
SIGNAL \inst|GenSum:1:i_BinA7Seg|Mux1~0_combout\ : std_logic;
SIGNAL \inst|GenSum:1:i_BinA7Seg|Mux2~0_combout\ : std_logic;
SIGNAL \inst|GenSum:1:i_BinA7Seg|Mux3~0_combout\ : std_logic;
SIGNAL \inst|GenSum:1:i_BinA7Seg|Mux4~0_combout\ : std_logic;
SIGNAL \inst|GenSum:1:i_BinA7Seg|Mux5~0_combout\ : std_logic;
SIGNAL \inst|GenSum:1:i_BinA7Seg|Mux6~0_combout\ : std_logic;
SIGNAL \inst|i1|Add1~9\ : std_logic;
SIGNAL \inst|i1|Add1~10_combout\ : std_logic;
SIGNAL \inst|i1|Add2~11\ : std_logic;
SIGNAL \inst|i1|Add2~12_combout\ : std_logic;
SIGNAL \inst|i1|p[7]~7\ : std_logic;
SIGNAL \inst|i1|p[8]~9\ : std_logic;
SIGNAL \inst|i1|p[9]~10_combout\ : std_logic;
SIGNAL \inst|i1|p[8]~8_combout\ : std_logic;
SIGNAL \inst|GenSum:2:i_BinA7Seg|Mux1~0_combout\ : std_logic;
SIGNAL \inst|GenSum:2:i_BinA7Seg|Mux1~1_combout\ : std_logic;
SIGNAL \inst|GenSum:2:i_BinA7Seg|Mux1~2_combout\ : std_logic;
SIGNAL \b~combout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \a~combout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|GenSum:1:i_BinA7Seg|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst|GenSum:0:i_BinA7Seg|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst|i1|ALT_INV_p[9]~10_combout\ : std_logic;

BEGIN

disp1 <= ww_disp1;
ww_a <= a;
ww_b <= b;
disp2 <= ww_disp2;
disp3 <= ww_disp3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst|GenSum:1:i_BinA7Seg|ALT_INV_Mux0~0_combout\ <= NOT \inst|GenSum:1:i_BinA7Seg|Mux0~0_combout\;
\inst|GenSum:0:i_BinA7Seg|ALT_INV_Mux0~0_combout\ <= NOT \inst|GenSum:0:i_BinA7Seg|Mux0~0_combout\;
\inst|i1|ALT_INV_p[9]~10_combout\ <= NOT \inst|i1|p[9]~10_combout\;

-- Location: LCCOMB_X2_Y18_N6
\inst|i1|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|i1|Add0~4_combout\ = ((\inst|i1|pp[0][3]~combout\ $ (\inst|i1|pp[1][3]~combout\ $ (!\inst|i1|Add0~3\)))) # (GND)
-- \inst|i1|Add0~5\ = CARRY((\inst|i1|pp[0][3]~combout\ & ((\inst|i1|pp[1][3]~combout\) # (!\inst|i1|Add0~3\))) # (!\inst|i1|pp[0][3]~combout\ & (\inst|i1|pp[1][3]~combout\ & !\inst|i1|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i1|pp[0][3]~combout\,
	datab => \inst|i1|pp[1][3]~combout\,
	datad => VCC,
	cin => \inst|i1|Add0~3\,
	combout => \inst|i1|Add0~4_combout\,
	cout => \inst|i1|Add0~5\);

-- Location: LCCOMB_X2_Y18_N8
\inst|i1|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|i1|Add0~6_combout\ = (\inst|i1|pp[1][4]~combout\ & ((\inst|i1|pp[0][4]~combout\ & (\inst|i1|Add0~5\ & VCC)) # (!\inst|i1|pp[0][4]~combout\ & (!\inst|i1|Add0~5\)))) # (!\inst|i1|pp[1][4]~combout\ & ((\inst|i1|pp[0][4]~combout\ & (!\inst|i1|Add0~5\)) 
-- # (!\inst|i1|pp[0][4]~combout\ & ((\inst|i1|Add0~5\) # (GND)))))
-- \inst|i1|Add0~7\ = CARRY((\inst|i1|pp[1][4]~combout\ & (!\inst|i1|pp[0][4]~combout\ & !\inst|i1|Add0~5\)) # (!\inst|i1|pp[1][4]~combout\ & ((!\inst|i1|Add0~5\) # (!\inst|i1|pp[0][4]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i1|pp[1][4]~combout\,
	datab => \inst|i1|pp[0][4]~combout\,
	datad => VCC,
	cin => \inst|i1|Add0~5\,
	combout => \inst|i1|Add0~6_combout\,
	cout => \inst|i1|Add0~7\);

-- Location: LCCOMB_X1_Y13_N18
\inst|i1|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|i1|Add1~2_combout\ = (\inst|i1|pp[3][4]~combout\ & ((\inst|i1|pp[2][4]~combout\ & (\inst|i1|Add1~1\ & VCC)) # (!\inst|i1|pp[2][4]~combout\ & (!\inst|i1|Add1~1\)))) # (!\inst|i1|pp[3][4]~combout\ & ((\inst|i1|pp[2][4]~combout\ & (!\inst|i1|Add1~1\)) 
-- # (!\inst|i1|pp[2][4]~combout\ & ((\inst|i1|Add1~1\) # (GND)))))
-- \inst|i1|Add1~3\ = CARRY((\inst|i1|pp[3][4]~combout\ & (!\inst|i1|pp[2][4]~combout\ & !\inst|i1|Add1~1\)) # (!\inst|i1|pp[3][4]~combout\ & ((!\inst|i1|Add1~1\) # (!\inst|i1|pp[2][4]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i1|pp[3][4]~combout\,
	datab => \inst|i1|pp[2][4]~combout\,
	datad => VCC,
	cin => \inst|i1|Add1~1\,
	combout => \inst|i1|Add1~2_combout\,
	cout => \inst|i1|Add1~3\);

-- Location: LCCOMB_X2_Y18_N10
\inst|i1|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|i1|Add0~8_combout\ = (\inst|i1|Add0~7\ & (\b~combout\(1) & (\a~combout\(4) & VCC))) # (!\inst|i1|Add0~7\ & ((((\b~combout\(1) & \a~combout\(4))))))
-- \inst|i1|Add0~9\ = CARRY((\b~combout\(1) & (\a~combout\(4) & !\inst|i1|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datab => \a~combout\(4),
	datad => VCC,
	cin => \inst|i1|Add0~7\,
	combout => \inst|i1|Add0~8_combout\,
	cout => \inst|i1|Add0~9\);

-- Location: LCCOMB_X2_Y18_N22
\inst|i1|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|i1|Add2~6_combout\ = (\inst|i1|Add0~8_combout\ & ((\inst|i1|Add1~4_combout\ & (\inst|i1|Add2~5\ & VCC)) # (!\inst|i1|Add1~4_combout\ & (!\inst|i1|Add2~5\)))) # (!\inst|i1|Add0~8_combout\ & ((\inst|i1|Add1~4_combout\ & (!\inst|i1|Add2~5\)) # 
-- (!\inst|i1|Add1~4_combout\ & ((\inst|i1|Add2~5\) # (GND)))))
-- \inst|i1|Add2~7\ = CARRY((\inst|i1|Add0~8_combout\ & (!\inst|i1|Add1~4_combout\ & !\inst|i1|Add2~5\)) # (!\inst|i1|Add0~8_combout\ & ((!\inst|i1|Add2~5\) # (!\inst|i1|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i1|Add0~8_combout\,
	datab => \inst|i1|Add1~4_combout\,
	datad => VCC,
	cin => \inst|i1|Add2~5\,
	combout => \inst|i1|Add2~6_combout\,
	cout => \inst|i1|Add2~7\);

-- Location: LCCOMB_X2_Y18_N12
\inst|i1|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|i1|Add0~10_combout\ = \inst|i1|Add0~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|i1|Add0~9\,
	combout => \inst|i1|Add0~10_combout\);

-- Location: LCCOMB_X2_Y18_N24
\inst|i1|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|i1|Add2~8_combout\ = ((\inst|i1|Add0~10_combout\ $ (\inst|i1|Add1~6_combout\ $ (!\inst|i1|Add2~7\)))) # (GND)
-- \inst|i1|Add2~9\ = CARRY((\inst|i1|Add0~10_combout\ & ((\inst|i1|Add1~6_combout\) # (!\inst|i1|Add2~7\))) # (!\inst|i1|Add0~10_combout\ & (\inst|i1|Add1~6_combout\ & !\inst|i1|Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i1|Add0~10_combout\,
	datab => \inst|i1|Add1~6_combout\,
	datad => VCC,
	cin => \inst|i1|Add2~7\,
	combout => \inst|i1|Add2~8_combout\,
	cout => \inst|i1|Add2~9\);

-- Location: LCCOMB_X1_Y18_N18
\inst|i1|pp[1][1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|i1|pp[1][1]~combout\ = (\b~combout\(1) & \a~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(1),
	datac => \a~combout\(0),
	combout => \inst|i1|pp[1][1]~combout\);

-- Location: LCCOMB_X1_Y18_N14
\inst|i1|pp[0][2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|i1|pp[0][2]~combout\ = (\a~combout\(2) & \b~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(2),
	datac => \b~combout\(0),
	combout => \inst|i1|pp[0][2]~combout\);

-- Location: LCCOMB_X1_Y13_N0
\inst|i1|pp[2][2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|i1|pp[2][2]~combout\ = (\a~combout\(0) & \b~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(0),
	datad => \b~combout\(2),
	combout => \inst|i1|pp[2][2]~combout\);

-- Location: LCCOMB_X1_Y18_N8
\inst|i1|pp[0][3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|i1|pp[0][3]~combout\ = (\a~combout\(3) & \b~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(3),
	datac => \b~combout\(0),
	combout => \inst|i1|pp[0][3]~combout\);

-- Location: LCCOMB_X1_Y13_N10
\inst|i1|pp[3][3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|i1|pp[3][3]~combout\ = (\a~combout\(0) & \b~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(0),
	datad => \b~combout\(3),
	combout => \inst|i1|pp[3][3]~combout\);

-- Location: LCCOMB_X1_Y18_N16
\inst|i1|pp[1][4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|i1|pp[1][4]~combout\ = (\a~combout\(3) & \b~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(3),
	datad => \b~combout\(1),
	combout => \inst|i1|pp[1][4]~combout\);

-- Location: LCCOMB_X1_Y13_N6
\inst|i1|pp[3][4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|i1|pp[3][4]~combout\ = (\a~combout\(1) & \b~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(1),
	datad => \b~combout\(3),
	combout => \inst|i1|pp[3][4]~combout\);

-- Location: LCCOMB_X1_Y18_N2
\inst|i1|pp[4][4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|i1|pp[4][4]~combout\ = (\a~combout\(0) & \b~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datac => \b~combout\(4),
	combout => \inst|i1|pp[4][4]~combout\);

-- Location: LCCOMB_X1_Y13_N12
\inst|i1|pp[2][5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|i1|pp[2][5]~combout\ = (\a~combout\(3) & \b~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(3),
	datad => \b~combout\(2),
	combout => \inst|i1|pp[2][5]~combout\);

-- Location: LCCOMB_X1_Y13_N30
\inst|i1|pp[3][6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|i1|pp[3][6]~combout\ = (\a~combout\(3) & \b~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(3),
	datad => \b~combout\(3),
	combout => \inst|i1|pp[3][6]~combout\);

-- Location: LCCOMB_X1_Y21_N12
\inst|i1|pp[4][7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|i1|pp[4][7]~combout\ = (\a~combout\(3) & \b~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(3),
	datac => \b~combout\(4),
	combout => \inst|i1|pp[4][7]~combout\);

-- Location: LCCOMB_X1_Y13_N14
\inst|i1|pp[4][8]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|i1|pp[4][8]~combout\ = (\b~combout\(4) & \a~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(4),
	datad => \a~combout\(4),
	combout => \inst|i1|pp[4][8]~combout\);

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[0]~I\ : cycloneii_io
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
	padio => ww_a(0),
	combout => \a~combout\(0));

-- Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[3]~I\ : cycloneii_io
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
	padio => ww_a(3),
	combout => \a~combout\(3));

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[0]~I\ : cycloneii_io
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
	padio => ww_b(0),
	combout => \b~combout\(0));

-- Location: LCCOMB_X1_Y18_N24
\inst|i1|pp[0][0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|i1|pp[0][0]~combout\ = (\a~combout\(0) & \b~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datac => \b~combout\(0),
	combout => \inst|i1|pp[0][0]~combout\);

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[1]~I\ : cycloneii_io
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
	padio => ww_a(1),
	combout => \a~combout\(1));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[2]~I\ : cycloneii_io
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
	padio => ww_b(2),
	combout => \b~combout\(2));

-- Location: LCCOMB_X1_Y13_N28
\inst|i1|pp[2][3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|i1|pp[2][3]~combout\ = (\a~combout\(1) & \b~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(1),
	datad => \b~combout\(2),
	combout => \inst|i1|pp[2][3]~combout\);

-- Location: LCCOMB_X1_Y13_N16
\inst|i1|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|i1|Add1~0_combout\ = (\inst|i1|pp[3][3]~combout\ & (\inst|i1|pp[2][3]~combout\ $ (VCC))) # (!\inst|i1|pp[3][3]~combout\ & (\inst|i1|pp[2][3]~combout\ & VCC))
-- \inst|i1|Add1~1\ = CARRY((\inst|i1|pp[3][3]~combout\ & \inst|i1|pp[2][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i1|pp[3][3]~combout\,
	datab => \inst|i1|pp[2][3]~combout\,
	datad => VCC,
	combout => \inst|i1|Add1~0_combout\,
	cout => \inst|i1|Add1~1\);

-- Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[1]~I\ : cycloneii_io
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
	padio => ww_b(1),
	combout => \b~combout\(1));

-- Location: LCCOMB_X2_Y18_N0
\inst|i1|pp[1][2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|i1|pp[1][2]~combout\ = (\a~combout\(1) & \b~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(1),
	datac => \b~combout\(1),
	combout => \inst|i1|pp[1][2]~combout\);

-- Location: LCCOMB_X1_Y18_N4
\inst|i1|pp[0][1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|i1|pp[0][1]~combout\ = (\a~combout\(1) & \b~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(1),
	datac => \b~combout\(0),
	combout => \inst|i1|pp[0][1]~combout\);

-- Location: LCCOMB_X2_Y18_N2
\inst|i1|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|i1|Add0~0_combout\ = (\inst|i1|pp[1][1]~combout\ & (\inst|i1|pp[0][1]~combout\ $ (VCC))) # (!\inst|i1|pp[1][1]~combout\ & (\inst|i1|pp[0][1]~combout\ & VCC))
-- \inst|i1|Add0~1\ = CARRY((\inst|i1|pp[1][1]~combout\ & \inst|i1|pp[0][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i1|pp[1][1]~combout\,
	datab => \inst|i1|pp[0][1]~combout\,
	datad => VCC,
	combout => \inst|i1|Add0~0_combout\,
	cout => \inst|i1|Add0~1\);

-- Location: LCCOMB_X2_Y18_N4
\inst|i1|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|i1|Add0~2_combout\ = (\inst|i1|pp[0][2]~combout\ & ((\inst|i1|pp[1][2]~combout\ & (\inst|i1|Add0~1\ & VCC)) # (!\inst|i1|pp[1][2]~combout\ & (!\inst|i1|Add0~1\)))) # (!\inst|i1|pp[0][2]~combout\ & ((\inst|i1|pp[1][2]~combout\ & (!\inst|i1|Add0~1\)) 
-- # (!\inst|i1|pp[1][2]~combout\ & ((\inst|i1|Add0~1\) # (GND)))))
-- \inst|i1|Add0~3\ = CARRY((\inst|i1|pp[0][2]~combout\ & (!\inst|i1|pp[1][2]~combout\ & !\inst|i1|Add0~1\)) # (!\inst|i1|pp[0][2]~combout\ & ((!\inst|i1|Add0~1\) # (!\inst|i1|pp[1][2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i1|pp[0][2]~combout\,
	datab => \inst|i1|pp[1][2]~combout\,
	datad => VCC,
	cin => \inst|i1|Add0~1\,
	combout => \inst|i1|Add0~2_combout\,
	cout => \inst|i1|Add0~3\);

-- Location: LCCOMB_X2_Y18_N16
\inst|i1|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|i1|Add2~0_combout\ = (\inst|i1|pp[2][2]~combout\ & (\inst|i1|Add0~2_combout\ $ (VCC))) # (!\inst|i1|pp[2][2]~combout\ & (\inst|i1|Add0~2_combout\ & VCC))
-- \inst|i1|Add2~1\ = CARRY((\inst|i1|pp[2][2]~combout\ & \inst|i1|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i1|pp[2][2]~combout\,
	datab => \inst|i1|Add0~2_combout\,
	datad => VCC,
	combout => \inst|i1|Add2~0_combout\,
	cout => \inst|i1|Add2~1\);

-- Location: LCCOMB_X2_Y18_N18
\inst|i1|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|i1|Add2~2_combout\ = (\inst|i1|Add0~4_combout\ & ((\inst|i1|Add1~0_combout\ & (\inst|i1|Add2~1\ & VCC)) # (!\inst|i1|Add1~0_combout\ & (!\inst|i1|Add2~1\)))) # (!\inst|i1|Add0~4_combout\ & ((\inst|i1|Add1~0_combout\ & (!\inst|i1|Add2~1\)) # 
-- (!\inst|i1|Add1~0_combout\ & ((\inst|i1|Add2~1\) # (GND)))))
-- \inst|i1|Add2~3\ = CARRY((\inst|i1|Add0~4_combout\ & (!\inst|i1|Add1~0_combout\ & !\inst|i1|Add2~1\)) # (!\inst|i1|Add0~4_combout\ & ((!\inst|i1|Add2~1\) # (!\inst|i1|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i1|Add0~4_combout\,
	datab => \inst|i1|Add1~0_combout\,
	datad => VCC,
	cin => \inst|i1|Add2~1\,
	combout => \inst|i1|Add2~2_combout\,
	cout => \inst|i1|Add2~3\);

-- Location: LCCOMB_X1_Y18_N26
\inst|GenSum:0:i_BinA7Seg|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|GenSum:0:i_BinA7Seg|Mux0~0_combout\ = (\inst|i1|pp[0][0]~combout\ & ((\inst|i1|Add2~2_combout\) # (\inst|i1|Add2~0_combout\ $ (\inst|i1|Add0~0_combout\)))) # (!\inst|i1|pp[0][0]~combout\ & ((\inst|i1|Add0~0_combout\) # (\inst|i1|Add2~2_combout\ $ 
-- (\inst|i1|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i1|pp[0][0]~combout\,
	datab => \inst|i1|Add2~2_combout\,
	datac => \inst|i1|Add2~0_combout\,
	datad => \inst|i1|Add0~0_combout\,
	combout => \inst|GenSum:0:i_BinA7Seg|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y18_N12
\inst|GenSum:0:i_BinA7Seg|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|GenSum:0:i_BinA7Seg|Mux1~0_combout\ = (\inst|i1|pp[0][0]~combout\ & (\inst|i1|Add2~2_combout\ $ (((\inst|i1|Add0~0_combout\) # (!\inst|i1|Add2~0_combout\))))) # (!\inst|i1|pp[0][0]~combout\ & (!\inst|i1|Add2~2_combout\ & (!\inst|i1|Add2~0_combout\ & 
-- \inst|i1|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i1|pp[0][0]~combout\,
	datab => \inst|i1|Add2~2_combout\,
	datac => \inst|i1|Add2~0_combout\,
	datad => \inst|i1|Add0~0_combout\,
	combout => \inst|GenSum:0:i_BinA7Seg|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y18_N6
\inst|GenSum:0:i_BinA7Seg|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|GenSum:0:i_BinA7Seg|Mux2~0_combout\ = (\inst|i1|Add0~0_combout\ & (\inst|i1|pp[0][0]~combout\ & (!\inst|i1|Add2~2_combout\))) # (!\inst|i1|Add0~0_combout\ & ((\inst|i1|Add2~0_combout\ & ((!\inst|i1|Add2~2_combout\))) # (!\inst|i1|Add2~0_combout\ & 
-- (\inst|i1|pp[0][0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i1|pp[0][0]~combout\,
	datab => \inst|i1|Add2~2_combout\,
	datac => \inst|i1|Add2~0_combout\,
	datad => \inst|i1|Add0~0_combout\,
	combout => \inst|GenSum:0:i_BinA7Seg|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y18_N0
\inst|GenSum:0:i_BinA7Seg|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|GenSum:0:i_BinA7Seg|Mux3~0_combout\ = (\inst|i1|Add0~0_combout\ & ((\inst|i1|pp[0][0]~combout\ & ((\inst|i1|Add2~0_combout\))) # (!\inst|i1|pp[0][0]~combout\ & (\inst|i1|Add2~2_combout\ & !\inst|i1|Add2~0_combout\)))) # (!\inst|i1|Add0~0_combout\ & 
-- (!\inst|i1|Add2~2_combout\ & (\inst|i1|pp[0][0]~combout\ $ (\inst|i1|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i1|pp[0][0]~combout\,
	datab => \inst|i1|Add2~2_combout\,
	datac => \inst|i1|Add2~0_combout\,
	datad => \inst|i1|Add0~0_combout\,
	combout => \inst|GenSum:0:i_BinA7Seg|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y18_N10
\inst|GenSum:0:i_BinA7Seg|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|GenSum:0:i_BinA7Seg|Mux4~0_combout\ = (\inst|i1|Add2~2_combout\ & (\inst|i1|Add2~0_combout\ & ((\inst|i1|Add0~0_combout\) # (!\inst|i1|pp[0][0]~combout\)))) # (!\inst|i1|Add2~2_combout\ & (!\inst|i1|pp[0][0]~combout\ & (!\inst|i1|Add2~0_combout\ & 
-- \inst|i1|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i1|pp[0][0]~combout\,
	datab => \inst|i1|Add2~2_combout\,
	datac => \inst|i1|Add2~0_combout\,
	datad => \inst|i1|Add0~0_combout\,
	combout => \inst|GenSum:0:i_BinA7Seg|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y18_N28
\inst|GenSum:0:i_BinA7Seg|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|GenSum:0:i_BinA7Seg|Mux5~0_combout\ = (\inst|i1|Add2~2_combout\ & ((\inst|i1|pp[0][0]~combout\ & ((\inst|i1|Add0~0_combout\))) # (!\inst|i1|pp[0][0]~combout\ & (\inst|i1|Add2~0_combout\)))) # (!\inst|i1|Add2~2_combout\ & (\inst|i1|Add2~0_combout\ & 
-- (\inst|i1|pp[0][0]~combout\ $ (\inst|i1|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i1|pp[0][0]~combout\,
	datab => \inst|i1|Add2~2_combout\,
	datac => \inst|i1|Add2~0_combout\,
	datad => \inst|i1|Add0~0_combout\,
	combout => \inst|GenSum:0:i_BinA7Seg|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y18_N22
\inst|GenSum:0:i_BinA7Seg|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|GenSum:0:i_BinA7Seg|Mux6~0_combout\ = (\inst|i1|Add2~2_combout\ & (\inst|i1|pp[0][0]~combout\ & (\inst|i1|Add2~0_combout\ $ (\inst|i1|Add0~0_combout\)))) # (!\inst|i1|Add2~2_combout\ & (!\inst|i1|Add0~0_combout\ & (\inst|i1|pp[0][0]~combout\ $ 
-- (\inst|i1|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i1|pp[0][0]~combout\,
	datab => \inst|i1|Add2~2_combout\,
	datac => \inst|i1|Add2~0_combout\,
	datad => \inst|i1|Add0~0_combout\,
	combout => \inst|GenSum:0:i_BinA7Seg|Mux6~0_combout\);

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[2]~I\ : cycloneii_io
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
	padio => ww_a(2),
	combout => \a~combout\(2));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[4]~I\ : cycloneii_io
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
	padio => ww_b(4),
	combout => \b~combout\(4));

-- Location: LCCOMB_X1_Y21_N2
\inst|i1|pp[4][6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|i1|pp[4][6]~combout\ = (\a~combout\(2) & \b~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(2),
	datac => \b~combout\(4),
	combout => \inst|i1|pp[4][6]~combout\);

-- Location: LCCOMB_X1_Y21_N8
\inst|i1|pp[4][5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|i1|pp[4][5]~combout\ = (\b~combout\(4) & \a~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(4),
	datad => \a~combout\(1),
	combout => \inst|i1|pp[4][5]~combout\);

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[4]~I\ : cycloneii_io
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
	padio => ww_a(4),
	combout => \a~combout\(4));

-- Location: LCCOMB_X2_Y18_N14
\inst|i1|pp[0][4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|i1|pp[0][4]~combout\ = (\a~combout\(4) & \b~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(4),
	datac => \b~combout\(0),
	combout => \inst|i1|pp[0][4]~combout\);

-- Location: LCCOMB_X2_Y18_N30
\inst|i1|pp[1][3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|i1|pp[1][3]~combout\ = (\b~combout\(1) & \a~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(1),
	datad => \a~combout\(2),
	combout => \inst|i1|pp[1][3]~combout\);

-- Location: LCCOMB_X2_Y18_N20
\inst|i1|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|i1|Add2~4_combout\ = ((\inst|i1|Add1~2_combout\ $ (\inst|i1|Add0~6_combout\ $ (!\inst|i1|Add2~3\)))) # (GND)
-- \inst|i1|Add2~5\ = CARRY((\inst|i1|Add1~2_combout\ & ((\inst|i1|Add0~6_combout\) # (!\inst|i1|Add2~3\))) # (!\inst|i1|Add1~2_combout\ & (\inst|i1|Add0~6_combout\ & !\inst|i1|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i1|Add1~2_combout\,
	datab => \inst|i1|Add0~6_combout\,
	datad => VCC,
	cin => \inst|i1|Add2~3\,
	combout => \inst|i1|Add2~4_combout\,
	cout => \inst|i1|Add2~5\);

-- Location: LCCOMB_X1_Y21_N16
\inst|i1|p[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|i1|p[4]~0_combout\ = (\inst|i1|pp[4][4]~combout\ & (\inst|i1|Add2~4_combout\ $ (VCC))) # (!\inst|i1|pp[4][4]~combout\ & (\inst|i1|Add2~4_combout\ & VCC))
-- \inst|i1|p[4]~1\ = CARRY((\inst|i1|pp[4][4]~combout\ & \inst|i1|Add2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i1|pp[4][4]~combout\,
	datab => \inst|i1|Add2~4_combout\,
	datad => VCC,
	combout => \inst|i1|p[4]~0_combout\,
	cout => \inst|i1|p[4]~1\);

-- Location: LCCOMB_X1_Y21_N18
\inst|i1|p[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|i1|p[5]~2_combout\ = (\inst|i1|Add2~6_combout\ & ((\inst|i1|pp[4][5]~combout\ & (\inst|i1|p[4]~1\ & VCC)) # (!\inst|i1|pp[4][5]~combout\ & (!\inst|i1|p[4]~1\)))) # (!\inst|i1|Add2~6_combout\ & ((\inst|i1|pp[4][5]~combout\ & (!\inst|i1|p[4]~1\)) # 
-- (!\inst|i1|pp[4][5]~combout\ & ((\inst|i1|p[4]~1\) # (GND)))))
-- \inst|i1|p[5]~3\ = CARRY((\inst|i1|Add2~6_combout\ & (!\inst|i1|pp[4][5]~combout\ & !\inst|i1|p[4]~1\)) # (!\inst|i1|Add2~6_combout\ & ((!\inst|i1|p[4]~1\) # (!\inst|i1|pp[4][5]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i1|Add2~6_combout\,
	datab => \inst|i1|pp[4][5]~combout\,
	datad => VCC,
	cin => \inst|i1|p[4]~1\,
	combout => \inst|i1|p[5]~2_combout\,
	cout => \inst|i1|p[5]~3\);

-- Location: LCCOMB_X1_Y21_N20
\inst|i1|p[6]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|i1|p[6]~4_combout\ = ((\inst|i1|Add2~8_combout\ $ (\inst|i1|pp[4][6]~combout\ $ (!\inst|i1|p[5]~3\)))) # (GND)
-- \inst|i1|p[6]~5\ = CARRY((\inst|i1|Add2~8_combout\ & ((\inst|i1|pp[4][6]~combout\) # (!\inst|i1|p[5]~3\))) # (!\inst|i1|Add2~8_combout\ & (\inst|i1|pp[4][6]~combout\ & !\inst|i1|p[5]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i1|Add2~8_combout\,
	datab => \inst|i1|pp[4][6]~combout\,
	datad => VCC,
	cin => \inst|i1|p[5]~3\,
	combout => \inst|i1|p[6]~4_combout\,
	cout => \inst|i1|p[6]~5\);

-- Location: LCCOMB_X1_Y13_N4
\inst|i1|pp[2][6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|i1|pp[2][6]~combout\ = (\b~combout\(2) & \a~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(2),
	datad => \a~combout\(4),
	combout => \inst|i1|pp[2][6]~combout\);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[3]~I\ : cycloneii_io
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
	padio => ww_b(3),
	combout => \b~combout\(3));

-- Location: LCCOMB_X1_Y13_N2
\inst|i1|pp[3][5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|i1|pp[3][5]~combout\ = (\b~combout\(3) & \a~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(3),
	datac => \a~combout\(2),
	combout => \inst|i1|pp[3][5]~combout\);

-- Location: LCCOMB_X1_Y13_N8
\inst|i1|pp[2][4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|i1|pp[2][4]~combout\ = (\b~combout\(2) & \a~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(2),
	datac => \a~combout\(2),
	combout => \inst|i1|pp[2][4]~combout\);

-- Location: LCCOMB_X1_Y13_N20
\inst|i1|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|i1|Add1~4_combout\ = ((\inst|i1|pp[2][5]~combout\ $ (\inst|i1|pp[3][5]~combout\ $ (!\inst|i1|Add1~3\)))) # (GND)
-- \inst|i1|Add1~5\ = CARRY((\inst|i1|pp[2][5]~combout\ & ((\inst|i1|pp[3][5]~combout\) # (!\inst|i1|Add1~3\))) # (!\inst|i1|pp[2][5]~combout\ & (\inst|i1|pp[3][5]~combout\ & !\inst|i1|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i1|pp[2][5]~combout\,
	datab => \inst|i1|pp[3][5]~combout\,
	datad => VCC,
	cin => \inst|i1|Add1~3\,
	combout => \inst|i1|Add1~4_combout\,
	cout => \inst|i1|Add1~5\);

-- Location: LCCOMB_X1_Y13_N22
\inst|i1|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|i1|Add1~6_combout\ = (\inst|i1|pp[3][6]~combout\ & ((\inst|i1|pp[2][6]~combout\ & (\inst|i1|Add1~5\ & VCC)) # (!\inst|i1|pp[2][6]~combout\ & (!\inst|i1|Add1~5\)))) # (!\inst|i1|pp[3][6]~combout\ & ((\inst|i1|pp[2][6]~combout\ & (!\inst|i1|Add1~5\)) 
-- # (!\inst|i1|pp[2][6]~combout\ & ((\inst|i1|Add1~5\) # (GND)))))
-- \inst|i1|Add1~7\ = CARRY((\inst|i1|pp[3][6]~combout\ & (!\inst|i1|pp[2][6]~combout\ & !\inst|i1|Add1~5\)) # (!\inst|i1|pp[3][6]~combout\ & ((!\inst|i1|Add1~5\) # (!\inst|i1|pp[2][6]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i1|pp[3][6]~combout\,
	datab => \inst|i1|pp[2][6]~combout\,
	datad => VCC,
	cin => \inst|i1|Add1~5\,
	combout => \inst|i1|Add1~6_combout\,
	cout => \inst|i1|Add1~7\);

-- Location: LCCOMB_X1_Y13_N24
\inst|i1|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|i1|Add1~8_combout\ = (\inst|i1|Add1~7\ & (\b~combout\(3) & (\a~combout\(4) & VCC))) # (!\inst|i1|Add1~7\ & ((((\b~combout\(3) & \a~combout\(4))))))
-- \inst|i1|Add1~9\ = CARRY((\b~combout\(3) & (\a~combout\(4) & !\inst|i1|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(3),
	datab => \a~combout\(4),
	datad => VCC,
	cin => \inst|i1|Add1~7\,
	combout => \inst|i1|Add1~8_combout\,
	cout => \inst|i1|Add1~9\);

-- Location: LCCOMB_X2_Y18_N26
\inst|i1|Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|i1|Add2~10_combout\ = (\inst|i1|Add1~8_combout\ & (!\inst|i1|Add2~9\)) # (!\inst|i1|Add1~8_combout\ & ((\inst|i1|Add2~9\) # (GND)))
-- \inst|i1|Add2~11\ = CARRY((!\inst|i1|Add2~9\) # (!\inst|i1|Add1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|i1|Add1~8_combout\,
	datad => VCC,
	cin => \inst|i1|Add2~9\,
	combout => \inst|i1|Add2~10_combout\,
	cout => \inst|i1|Add2~11\);

-- Location: LCCOMB_X1_Y21_N22
\inst|i1|p[7]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|i1|p[7]~6_combout\ = (\inst|i1|pp[4][7]~combout\ & ((\inst|i1|Add2~10_combout\ & (\inst|i1|p[6]~5\ & VCC)) # (!\inst|i1|Add2~10_combout\ & (!\inst|i1|p[6]~5\)))) # (!\inst|i1|pp[4][7]~combout\ & ((\inst|i1|Add2~10_combout\ & (!\inst|i1|p[6]~5\)) # 
-- (!\inst|i1|Add2~10_combout\ & ((\inst|i1|p[6]~5\) # (GND)))))
-- \inst|i1|p[7]~7\ = CARRY((\inst|i1|pp[4][7]~combout\ & (!\inst|i1|Add2~10_combout\ & !\inst|i1|p[6]~5\)) # (!\inst|i1|pp[4][7]~combout\ & ((!\inst|i1|p[6]~5\) # (!\inst|i1|Add2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i1|pp[4][7]~combout\,
	datab => \inst|i1|Add2~10_combout\,
	datad => VCC,
	cin => \inst|i1|p[6]~5\,
	combout => \inst|i1|p[7]~6_combout\,
	cout => \inst|i1|p[7]~7\);

-- Location: LCCOMB_X1_Y21_N14
\inst|GenSum:1:i_BinA7Seg|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|GenSum:1:i_BinA7Seg|Mux0~0_combout\ = (\inst|i1|p[4]~0_combout\ & ((\inst|i1|p[7]~6_combout\) # (\inst|i1|p[6]~4_combout\ $ (\inst|i1|p[5]~2_combout\)))) # (!\inst|i1|p[4]~0_combout\ & ((\inst|i1|p[5]~2_combout\) # (\inst|i1|p[6]~4_combout\ $ 
-- (\inst|i1|p[7]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i1|p[6]~4_combout\,
	datab => \inst|i1|p[7]~6_combout\,
	datac => \inst|i1|p[4]~0_combout\,
	datad => \inst|i1|p[5]~2_combout\,
	combout => \inst|GenSum:1:i_BinA7Seg|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y21_N0
\inst|GenSum:1:i_BinA7Seg|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|GenSum:1:i_BinA7Seg|Mux1~0_combout\ = (\inst|i1|p[6]~4_combout\ & (\inst|i1|p[4]~0_combout\ & (\inst|i1|p[7]~6_combout\ $ (\inst|i1|p[5]~2_combout\)))) # (!\inst|i1|p[6]~4_combout\ & (!\inst|i1|p[7]~6_combout\ & ((\inst|i1|p[4]~0_combout\) # 
-- (\inst|i1|p[5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i1|p[6]~4_combout\,
	datab => \inst|i1|p[7]~6_combout\,
	datac => \inst|i1|p[4]~0_combout\,
	datad => \inst|i1|p[5]~2_combout\,
	combout => \inst|GenSum:1:i_BinA7Seg|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y21_N10
\inst|GenSum:1:i_BinA7Seg|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|GenSum:1:i_BinA7Seg|Mux2~0_combout\ = (\inst|i1|p[5]~2_combout\ & (((!\inst|i1|p[7]~6_combout\ & \inst|i1|p[4]~0_combout\)))) # (!\inst|i1|p[5]~2_combout\ & ((\inst|i1|p[6]~4_combout\ & (!\inst|i1|p[7]~6_combout\)) # (!\inst|i1|p[6]~4_combout\ & 
-- ((\inst|i1|p[4]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i1|p[6]~4_combout\,
	datab => \inst|i1|p[7]~6_combout\,
	datac => \inst|i1|p[4]~0_combout\,
	datad => \inst|i1|p[5]~2_combout\,
	combout => \inst|GenSum:1:i_BinA7Seg|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y21_N28
\inst|GenSum:1:i_BinA7Seg|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|GenSum:1:i_BinA7Seg|Mux3~0_combout\ = (\inst|i1|p[5]~2_combout\ & ((\inst|i1|p[6]~4_combout\ & ((\inst|i1|p[4]~0_combout\))) # (!\inst|i1|p[6]~4_combout\ & (\inst|i1|p[7]~6_combout\ & !\inst|i1|p[4]~0_combout\)))) # (!\inst|i1|p[5]~2_combout\ & 
-- (!\inst|i1|p[7]~6_combout\ & (\inst|i1|p[6]~4_combout\ $ (\inst|i1|p[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i1|p[6]~4_combout\,
	datab => \inst|i1|p[7]~6_combout\,
	datac => \inst|i1|p[4]~0_combout\,
	datad => \inst|i1|p[5]~2_combout\,
	combout => \inst|GenSum:1:i_BinA7Seg|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y21_N6
\inst|GenSum:1:i_BinA7Seg|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|GenSum:1:i_BinA7Seg|Mux4~0_combout\ = (\inst|i1|p[6]~4_combout\ & (\inst|i1|p[7]~6_combout\ & ((\inst|i1|p[5]~2_combout\) # (!\inst|i1|p[4]~0_combout\)))) # (!\inst|i1|p[6]~4_combout\ & (!\inst|i1|p[7]~6_combout\ & (!\inst|i1|p[4]~0_combout\ & 
-- \inst|i1|p[5]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i1|p[6]~4_combout\,
	datab => \inst|i1|p[7]~6_combout\,
	datac => \inst|i1|p[4]~0_combout\,
	datad => \inst|i1|p[5]~2_combout\,
	combout => \inst|GenSum:1:i_BinA7Seg|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y21_N4
\inst|GenSum:1:i_BinA7Seg|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|GenSum:1:i_BinA7Seg|Mux5~0_combout\ = (\inst|i1|p[7]~6_combout\ & ((\inst|i1|p[4]~0_combout\ & ((\inst|i1|p[5]~2_combout\))) # (!\inst|i1|p[4]~0_combout\ & (\inst|i1|p[6]~4_combout\)))) # (!\inst|i1|p[7]~6_combout\ & (\inst|i1|p[6]~4_combout\ & 
-- (\inst|i1|p[4]~0_combout\ $ (\inst|i1|p[5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i1|p[6]~4_combout\,
	datab => \inst|i1|p[7]~6_combout\,
	datac => \inst|i1|p[4]~0_combout\,
	datad => \inst|i1|p[5]~2_combout\,
	combout => \inst|GenSum:1:i_BinA7Seg|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y21_N30
\inst|GenSum:1:i_BinA7Seg|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|GenSum:1:i_BinA7Seg|Mux6~0_combout\ = (\inst|i1|p[6]~4_combout\ & (!\inst|i1|p[5]~2_combout\ & (\inst|i1|p[7]~6_combout\ $ (!\inst|i1|p[4]~0_combout\)))) # (!\inst|i1|p[6]~4_combout\ & (\inst|i1|p[4]~0_combout\ & (\inst|i1|p[7]~6_combout\ $ 
-- (!\inst|i1|p[5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i1|p[6]~4_combout\,
	datab => \inst|i1|p[7]~6_combout\,
	datac => \inst|i1|p[4]~0_combout\,
	datad => \inst|i1|p[5]~2_combout\,
	combout => \inst|GenSum:1:i_BinA7Seg|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y13_N26
\inst|i1|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|i1|Add1~10_combout\ = \inst|i1|Add1~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|i1|Add1~9\,
	combout => \inst|i1|Add1~10_combout\);

-- Location: LCCOMB_X2_Y18_N28
\inst|i1|Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|i1|Add2~12_combout\ = \inst|i1|Add1~10_combout\ $ (!\inst|i1|Add2~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|i1|Add1~10_combout\,
	cin => \inst|i1|Add2~11\,
	combout => \inst|i1|Add2~12_combout\);

-- Location: LCCOMB_X1_Y21_N24
\inst|i1|p[8]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|i1|p[8]~8_combout\ = ((\inst|i1|pp[4][8]~combout\ $ (\inst|i1|Add2~12_combout\ $ (!\inst|i1|p[7]~7\)))) # (GND)
-- \inst|i1|p[8]~9\ = CARRY((\inst|i1|pp[4][8]~combout\ & ((\inst|i1|Add2~12_combout\) # (!\inst|i1|p[7]~7\))) # (!\inst|i1|pp[4][8]~combout\ & (\inst|i1|Add2~12_combout\ & !\inst|i1|p[7]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i1|pp[4][8]~combout\,
	datab => \inst|i1|Add2~12_combout\,
	datad => VCC,
	cin => \inst|i1|p[7]~7\,
	combout => \inst|i1|p[8]~8_combout\,
	cout => \inst|i1|p[8]~9\);

-- Location: LCCOMB_X1_Y21_N26
\inst|i1|p[9]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|i1|p[9]~10_combout\ = \inst|i1|p[8]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|i1|p[8]~9\,
	combout => \inst|i1|p[9]~10_combout\);

-- Location: LCCOMB_X1_Y22_N8
\inst|GenSum:2:i_BinA7Seg|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|GenSum:2:i_BinA7Seg|Mux1~0_combout\ = (\inst|i1|p[8]~8_combout\) # (\inst|i1|p[9]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i1|p[8]~8_combout\,
	datad => \inst|i1|p[9]~10_combout\,
	combout => \inst|GenSum:2:i_BinA7Seg|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y22_N10
\inst|GenSum:2:i_BinA7Seg|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|GenSum:2:i_BinA7Seg|Mux1~1_combout\ = (\inst|i1|p[8]~8_combout\ & !\inst|i1|p[9]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i1|p[8]~8_combout\,
	datad => \inst|i1|p[9]~10_combout\,
	combout => \inst|GenSum:2:i_BinA7Seg|Mux1~1_combout\);

-- Location: LCCOMB_X1_Y22_N12
\inst|GenSum:2:i_BinA7Seg|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|GenSum:2:i_BinA7Seg|Mux1~2_combout\ = (!\inst|i1|p[8]~8_combout\ & \inst|i1|p[9]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i1|p[8]~8_combout\,
	datad => \inst|i1|p[9]~10_combout\,
	combout => \inst|GenSum:2:i_BinA7Seg|Mux1~2_combout\);

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp1[6]~I\ : cycloneii_io
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
	datain => \inst|GenSum:0:i_BinA7Seg|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(6));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp1[5]~I\ : cycloneii_io
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
	datain => \inst|GenSum:0:i_BinA7Seg|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(5));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp1[4]~I\ : cycloneii_io
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
	datain => \inst|GenSum:0:i_BinA7Seg|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(4));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp1[3]~I\ : cycloneii_io
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
	datain => \inst|GenSum:0:i_BinA7Seg|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(3));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp1[2]~I\ : cycloneii_io
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
	datain => \inst|GenSum:0:i_BinA7Seg|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(2));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp1[1]~I\ : cycloneii_io
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
	datain => \inst|GenSum:0:i_BinA7Seg|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(1));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp1[0]~I\ : cycloneii_io
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
	datain => \inst|GenSum:0:i_BinA7Seg|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(0));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp2[6]~I\ : cycloneii_io
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
	datain => \inst|GenSum:1:i_BinA7Seg|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp2(6));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp2[5]~I\ : cycloneii_io
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
	datain => \inst|GenSum:1:i_BinA7Seg|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp2(5));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp2[4]~I\ : cycloneii_io
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
	datain => \inst|GenSum:1:i_BinA7Seg|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp2(4));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp2[3]~I\ : cycloneii_io
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
	datain => \inst|GenSum:1:i_BinA7Seg|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp2(3));

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp2[2]~I\ : cycloneii_io
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
	datain => \inst|GenSum:1:i_BinA7Seg|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp2(2));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp2[1]~I\ : cycloneii_io
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
	datain => \inst|GenSum:1:i_BinA7Seg|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp2(1));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp2[0]~I\ : cycloneii_io
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
	datain => \inst|GenSum:1:i_BinA7Seg|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp2(0));

-- Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp3[6]~I\ : cycloneii_io
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
	datain => \inst|i1|ALT_INV_p[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp3(6));

-- Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp3[5]~I\ : cycloneii_io
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
	datain => \inst|GenSum:2:i_BinA7Seg|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp3(5));

-- Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp3[4]~I\ : cycloneii_io
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
	datain => \inst|i1|p[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp3(4));

-- Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp3[3]~I\ : cycloneii_io
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
	datain => \inst|GenSum:2:i_BinA7Seg|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp3(3));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp3[2]~I\ : cycloneii_io
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
	datain => \inst|GenSum:2:i_BinA7Seg|Mux1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp3(2));

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp3[1]~I\ : cycloneii_io
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
	padio => ww_disp3(1));

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp3[0]~I\ : cycloneii_io
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
	datain => \inst|GenSum:2:i_BinA7Seg|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp3(0));
END structure;


