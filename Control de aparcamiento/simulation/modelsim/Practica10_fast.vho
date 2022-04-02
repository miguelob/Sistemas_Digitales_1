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

-- DATE "11/26/2018 09:52:31"

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

ENTITY 	Practica10 IS
    PORT (
	led_g : OUT std_logic;
	clk : IN std_logic;
	reset_n : IN std_logic;
	entra : IN std_logic;
	sale : IN std_logic;
	max : IN std_logic_vector(7 DOWNTO 0);
	led_r : OUT std_logic;
	disp0 : OUT std_logic_vector(6 DOWNTO 0);
	disp1 : OUT std_logic_vector(6 DOWNTO 0)
	);
END Practica10;

-- Design Ports Information
-- led_g	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_r	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp0[6]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp0[5]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp0[4]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp0[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp0[2]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp0[1]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp0[0]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[6]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[5]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[4]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[3]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[2]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[1]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[0]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- max[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- max[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- max[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- max[3]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- max[4]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- max[5]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- max[6]	=>  Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- max[7]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset_n	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entra	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sale	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Practica10 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_led_g : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_entra : std_logic;
SIGNAL ww_sale : std_logic;
SIGNAL ww_max : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_led_r : std_logic;
SIGNAL ww_disp0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_disp1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|estado_act.Pulso~regout\ : std_logic;
SIGNAL \inst5|estado_act.Esp0~regout\ : std_logic;
SIGNAL \inst5|Selector1~0_combout\ : std_logic;
SIGNAL \inst5|estado_act.Esp0~0_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \sale~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \inst|contador[0]~8_combout\ : std_logic;
SIGNAL \reset_n~combout\ : std_logic;
SIGNAL \entra~combout\ : std_logic;
SIGNAL \inst4|estado_act.Esp0~0_combout\ : std_logic;
SIGNAL \inst4|estado_act.Esp0~regout\ : std_logic;
SIGNAL \inst4|Selector1~0_combout\ : std_logic;
SIGNAL \inst4|estado_act.Pulso~regout\ : std_logic;
SIGNAL \inst|contador[3]~15_combout\ : std_logic;
SIGNAL \inst|contador[1]~10_combout\ : std_logic;
SIGNAL \inst|LessThan1~0_combout\ : std_logic;
SIGNAL \inst|contador[4]~17_combout\ : std_logic;
SIGNAL \inst|contador[5]~19_combout\ : std_logic;
SIGNAL \inst|LessThan1~1_combout\ : std_logic;
SIGNAL \inst|process_0~1_combout\ : std_logic;
SIGNAL \inst|contador[7]~12_combout\ : std_logic;
SIGNAL \inst|contador[0]~9\ : std_logic;
SIGNAL \inst|contador[1]~11\ : std_logic;
SIGNAL \inst|contador[2]~14\ : std_logic;
SIGNAL \inst|contador[3]~16\ : std_logic;
SIGNAL \inst|contador[4]~18\ : std_logic;
SIGNAL \inst|contador[5]~20\ : std_logic;
SIGNAL \inst|contador[6]~22\ : std_logic;
SIGNAL \inst|contador[7]~23_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_cout\ : std_logic;
SIGNAL \inst|LessThan0~3_cout\ : std_logic;
SIGNAL \inst|LessThan0~5_cout\ : std_logic;
SIGNAL \inst|LessThan0~7_cout\ : std_logic;
SIGNAL \inst|LessThan0~9_cout\ : std_logic;
SIGNAL \inst|LessThan0~11_cout\ : std_logic;
SIGNAL \inst|LessThan0~13_cout\ : std_logic;
SIGNAL \inst|LessThan0~14_combout\ : std_logic;
SIGNAL \inst|process_0~0_combout\ : std_logic;
SIGNAL \inst|contador[2]~13_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|contador[6]~21_combout\ : std_logic;
SIGNAL \inst|Equal0~3_combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|Equal0~4_combout\ : std_logic;
SIGNAL \inst3|Mux0~0_combout\ : std_logic;
SIGNAL \inst3|Mux1~0_combout\ : std_logic;
SIGNAL \inst3|Mux2~0_combout\ : std_logic;
SIGNAL \inst3|Mux3~0_combout\ : std_logic;
SIGNAL \inst3|Mux4~0_combout\ : std_logic;
SIGNAL \inst3|Mux5~0_combout\ : std_logic;
SIGNAL \inst3|Mux6~0_combout\ : std_logic;
SIGNAL \inst2|Mux0~0_combout\ : std_logic;
SIGNAL \inst2|Mux1~0_combout\ : std_logic;
SIGNAL \inst2|Mux2~0_combout\ : std_logic;
SIGNAL \inst2|Mux3~0_combout\ : std_logic;
SIGNAL \inst2|Mux4~0_combout\ : std_logic;
SIGNAL \inst2|Mux5~0_combout\ : std_logic;
SIGNAL \inst2|Mux6~0_combout\ : std_logic;
SIGNAL \inst|contador\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \max~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_reset_n~combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal0~4_combout\ : std_logic;

BEGIN

led_g <= ww_led_g;
ww_clk <= clk;
ww_reset_n <= reset_n;
ww_entra <= entra;
ww_sale <= sale;
ww_max <= max;
led_r <= ww_led_r;
disp0 <= ww_disp0;
disp1 <= ww_disp1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_reset_n~combout\ <= NOT \reset_n~combout\;
\inst2|ALT_INV_Mux0~0_combout\ <= NOT \inst2|Mux0~0_combout\;
\inst3|ALT_INV_Mux0~0_combout\ <= NOT \inst3|Mux0~0_combout\;
\inst|ALT_INV_Equal0~4_combout\ <= NOT \inst|Equal0~4_combout\;

-- Location: LCFF_X9_Y19_N21
\inst5|estado_act.Pulso\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst5|Selector1~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|estado_act.Pulso~regout\);

-- Location: LCFF_X9_Y19_N19
\inst5|estado_act.Esp0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst5|estado_act.Esp0~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|estado_act.Esp0~regout\);

-- Location: LCCOMB_X9_Y19_N20
\inst5|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Selector1~0_combout\ = (!\sale~combout\ & !\inst5|estado_act.Esp0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sale~combout\,
	datad => \inst5|estado_act.Esp0~regout\,
	combout => \inst5|Selector1~0_combout\);

-- Location: LCCOMB_X9_Y19_N18
\inst5|estado_act.Esp0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|estado_act.Esp0~0_combout\ = !\sale~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sale~combout\,
	combout => \inst5|estado_act.Esp0~0_combout\);

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

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sale~I\ : cycloneii_io
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
	padio => ww_sale,
	combout => \sale~combout\);

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

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\max[7]~I\ : cycloneii_io
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
	padio => ww_max(7),
	combout => \max~combout\(7));

-- Location: LCCOMB_X8_Y19_N0
\inst|contador[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|contador[0]~8_combout\ = \inst|contador\(0) $ (VCC)
-- \inst|contador[0]~9\ = CARRY(\inst|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador\(0),
	datad => VCC,
	combout => \inst|contador[0]~8_combout\,
	cout => \inst|contador[0]~9\);

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

-- Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entra~I\ : cycloneii_io
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
	padio => ww_entra,
	combout => \entra~combout\);

-- Location: LCCOMB_X9_Y19_N8
\inst4|estado_act.Esp0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|estado_act.Esp0~0_combout\ = !\entra~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entra~combout\,
	combout => \inst4|estado_act.Esp0~0_combout\);

-- Location: LCFF_X9_Y19_N9
\inst4|estado_act.Esp0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|estado_act.Esp0~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|estado_act.Esp0~regout\);

-- Location: LCCOMB_X9_Y19_N30
\inst4|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Selector1~0_combout\ = (!\inst4|estado_act.Esp0~regout\ & !\entra~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|estado_act.Esp0~regout\,
	datad => \entra~combout\,
	combout => \inst4|Selector1~0_combout\);

-- Location: LCFF_X9_Y19_N31
\inst4|estado_act.Pulso\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|Selector1~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|estado_act.Pulso~regout\);

-- Location: LCCOMB_X8_Y19_N6
\inst|contador[3]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|contador[3]~15_combout\ = (\inst|contador\(3) & ((\inst|process_0~0_combout\ & (!\inst|contador[2]~14\)) # (!\inst|process_0~0_combout\ & (\inst|contador[2]~14\ & VCC)))) # (!\inst|contador\(3) & ((\inst|process_0~0_combout\ & 
-- ((\inst|contador[2]~14\) # (GND))) # (!\inst|process_0~0_combout\ & (!\inst|contador[2]~14\))))
-- \inst|contador[3]~16\ = CARRY((\inst|contador\(3) & (\inst|process_0~0_combout\ & !\inst|contador[2]~14\)) # (!\inst|contador\(3) & ((\inst|process_0~0_combout\) # (!\inst|contador[2]~14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(3),
	datab => \inst|process_0~0_combout\,
	datad => VCC,
	cin => \inst|contador[2]~14\,
	combout => \inst|contador[3]~15_combout\,
	cout => \inst|contador[3]~16\);

-- Location: LCFF_X8_Y19_N7
\inst|contador[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|contador[3]~15_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \inst|contador[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|contador\(3));

-- Location: LCCOMB_X8_Y19_N2
\inst|contador[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|contador[1]~10_combout\ = (\inst|contador\(1) & ((\inst|process_0~0_combout\ & (!\inst|contador[0]~9\)) # (!\inst|process_0~0_combout\ & (\inst|contador[0]~9\ & VCC)))) # (!\inst|contador\(1) & ((\inst|process_0~0_combout\ & ((\inst|contador[0]~9\) 
-- # (GND))) # (!\inst|process_0~0_combout\ & (!\inst|contador[0]~9\))))
-- \inst|contador[1]~11\ = CARRY((\inst|contador\(1) & (\inst|process_0~0_combout\ & !\inst|contador[0]~9\)) # (!\inst|contador\(1) & ((\inst|process_0~0_combout\) # (!\inst|contador[0]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(1),
	datab => \inst|process_0~0_combout\,
	datad => VCC,
	cin => \inst|contador[0]~9\,
	combout => \inst|contador[1]~10_combout\,
	cout => \inst|contador[1]~11\);

-- Location: LCFF_X8_Y19_N3
\inst|contador[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|contador[1]~10_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \inst|contador[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|contador\(1));

-- Location: LCCOMB_X9_Y19_N16
\inst|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~0_combout\ = (\inst|contador\(0)) # ((\inst|contador\(2)) # ((\inst|contador\(3)) # (\inst|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(0),
	datab => \inst|contador\(2),
	datac => \inst|contador\(3),
	datad => \inst|contador\(1),
	combout => \inst|LessThan1~0_combout\);

-- Location: LCCOMB_X8_Y19_N8
\inst|contador[4]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|contador[4]~17_combout\ = ((\inst|contador\(4) $ (\inst|process_0~0_combout\ $ (\inst|contador[3]~16\)))) # (GND)
-- \inst|contador[4]~18\ = CARRY((\inst|contador\(4) & ((!\inst|contador[3]~16\) # (!\inst|process_0~0_combout\))) # (!\inst|contador\(4) & (!\inst|process_0~0_combout\ & !\inst|contador[3]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(4),
	datab => \inst|process_0~0_combout\,
	datad => VCC,
	cin => \inst|contador[3]~16\,
	combout => \inst|contador[4]~17_combout\,
	cout => \inst|contador[4]~18\);

-- Location: LCFF_X8_Y19_N9
\inst|contador[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|contador[4]~17_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \inst|contador[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|contador\(4));

-- Location: LCCOMB_X8_Y19_N10
\inst|contador[5]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|contador[5]~19_combout\ = (\inst|contador\(5) & ((\inst|process_0~0_combout\ & (!\inst|contador[4]~18\)) # (!\inst|process_0~0_combout\ & (\inst|contador[4]~18\ & VCC)))) # (!\inst|contador\(5) & ((\inst|process_0~0_combout\ & 
-- ((\inst|contador[4]~18\) # (GND))) # (!\inst|process_0~0_combout\ & (!\inst|contador[4]~18\))))
-- \inst|contador[5]~20\ = CARRY((\inst|contador\(5) & (\inst|process_0~0_combout\ & !\inst|contador[4]~18\)) # (!\inst|contador\(5) & ((\inst|process_0~0_combout\) # (!\inst|contador[4]~18\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(5),
	datab => \inst|process_0~0_combout\,
	datad => VCC,
	cin => \inst|contador[4]~18\,
	combout => \inst|contador[5]~19_combout\,
	cout => \inst|contador[5]~20\);

-- Location: LCFF_X8_Y19_N11
\inst|contador[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|contador[5]~19_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \inst|contador[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|contador\(5));

-- Location: LCCOMB_X9_Y19_N10
\inst|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~1_combout\ = (\inst|contador\(6)) # ((\inst|contador\(7)) # ((\inst|contador\(4)) # (\inst|contador\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(6),
	datab => \inst|contador\(7),
	datac => \inst|contador\(4),
	datad => \inst|contador\(5),
	combout => \inst|LessThan1~1_combout\);

-- Location: LCCOMB_X9_Y19_N12
\inst|process_0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|process_0~1_combout\ = (\inst5|estado_act.Pulso~regout\ & (!\inst4|estado_act.Pulso~regout\ & ((\inst|LessThan1~0_combout\) # (\inst|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|estado_act.Pulso~regout\,
	datab => \inst4|estado_act.Pulso~regout\,
	datac => \inst|LessThan1~0_combout\,
	datad => \inst|LessThan1~1_combout\,
	combout => \inst|process_0~1_combout\);

-- Location: LCCOMB_X9_Y19_N26
\inst|contador[7]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|contador[7]~12_combout\ = \inst|process_0~1_combout\ $ (((!\inst5|estado_act.Pulso~regout\ & (\inst4|estado_act.Pulso~regout\ & \inst|LessThan0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|estado_act.Pulso~regout\,
	datab => \inst4|estado_act.Pulso~regout\,
	datac => \inst|LessThan0~14_combout\,
	datad => \inst|process_0~1_combout\,
	combout => \inst|contador[7]~12_combout\);

-- Location: LCFF_X8_Y19_N1
\inst|contador[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|contador[0]~8_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \inst|contador[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|contador\(0));

-- Location: LCCOMB_X8_Y19_N4
\inst|contador[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|contador[2]~13_combout\ = ((\inst|contador\(2) $ (\inst|process_0~0_combout\ $ (\inst|contador[1]~11\)))) # (GND)
-- \inst|contador[2]~14\ = CARRY((\inst|contador\(2) & ((!\inst|contador[1]~11\) # (!\inst|process_0~0_combout\))) # (!\inst|contador\(2) & (!\inst|process_0~0_combout\ & !\inst|contador[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(2),
	datab => \inst|process_0~0_combout\,
	datad => VCC,
	cin => \inst|contador[1]~11\,
	combout => \inst|contador[2]~13_combout\,
	cout => \inst|contador[2]~14\);

-- Location: LCCOMB_X8_Y19_N12
\inst|contador[6]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|contador[6]~21_combout\ = ((\inst|contador\(6) $ (\inst|process_0~0_combout\ $ (\inst|contador[5]~20\)))) # (GND)
-- \inst|contador[6]~22\ = CARRY((\inst|contador\(6) & ((!\inst|contador[5]~20\) # (!\inst|process_0~0_combout\))) # (!\inst|contador\(6) & (!\inst|process_0~0_combout\ & !\inst|contador[5]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(6),
	datab => \inst|process_0~0_combout\,
	datad => VCC,
	cin => \inst|contador[5]~20\,
	combout => \inst|contador[6]~21_combout\,
	cout => \inst|contador[6]~22\);

-- Location: LCCOMB_X8_Y19_N14
\inst|contador[7]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|contador[7]~23_combout\ = \inst|contador\(7) $ (\inst|contador[6]~22\ $ (!\inst|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(7),
	datad => \inst|process_0~0_combout\,
	cin => \inst|contador[6]~22\,
	combout => \inst|contador[7]~23_combout\);

-- Location: LCFF_X8_Y19_N15
\inst|contador[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|contador[7]~23_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \inst|contador[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|contador\(7));

-- Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\max[6]~I\ : cycloneii_io
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
	padio => ww_max(6),
	combout => \max~combout\(6));

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\max[5]~I\ : cycloneii_io
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
	padio => ww_max(5),
	combout => \max~combout\(5));

-- Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\max[3]~I\ : cycloneii_io
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
	padio => ww_max(3),
	combout => \max~combout\(3));

-- Location: LCCOMB_X8_Y19_N16
\inst|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_cout\ = CARRY((\max~combout\(0) & !\inst|contador\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \max~combout\(0),
	datab => \inst|contador\(0),
	datad => VCC,
	cout => \inst|LessThan0~1_cout\);

-- Location: LCCOMB_X8_Y19_N18
\inst|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~3_cout\ = CARRY((\max~combout\(1) & (\inst|contador\(1) & !\inst|LessThan0~1_cout\)) # (!\max~combout\(1) & ((\inst|contador\(1)) # (!\inst|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \max~combout\(1),
	datab => \inst|contador\(1),
	datad => VCC,
	cin => \inst|LessThan0~1_cout\,
	cout => \inst|LessThan0~3_cout\);

-- Location: LCCOMB_X8_Y19_N20
\inst|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~5_cout\ = CARRY((\max~combout\(2) & ((!\inst|LessThan0~3_cout\) # (!\inst|contador\(2)))) # (!\max~combout\(2) & (!\inst|contador\(2) & !\inst|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \max~combout\(2),
	datab => \inst|contador\(2),
	datad => VCC,
	cin => \inst|LessThan0~3_cout\,
	cout => \inst|LessThan0~5_cout\);

-- Location: LCCOMB_X8_Y19_N22
\inst|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~7_cout\ = CARRY((\inst|contador\(3) & ((!\inst|LessThan0~5_cout\) # (!\max~combout\(3)))) # (!\inst|contador\(3) & (!\max~combout\(3) & !\inst|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(3),
	datab => \max~combout\(3),
	datad => VCC,
	cin => \inst|LessThan0~5_cout\,
	cout => \inst|LessThan0~7_cout\);

-- Location: LCCOMB_X8_Y19_N24
\inst|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~9_cout\ = CARRY((\max~combout\(4) & ((!\inst|LessThan0~7_cout\) # (!\inst|contador\(4)))) # (!\max~combout\(4) & (!\inst|contador\(4) & !\inst|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \max~combout\(4),
	datab => \inst|contador\(4),
	datad => VCC,
	cin => \inst|LessThan0~7_cout\,
	cout => \inst|LessThan0~9_cout\);

-- Location: LCCOMB_X8_Y19_N26
\inst|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~11_cout\ = CARRY((\inst|contador\(5) & ((!\inst|LessThan0~9_cout\) # (!\max~combout\(5)))) # (!\inst|contador\(5) & (!\max~combout\(5) & !\inst|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(5),
	datab => \max~combout\(5),
	datad => VCC,
	cin => \inst|LessThan0~9_cout\,
	cout => \inst|LessThan0~11_cout\);

-- Location: LCCOMB_X8_Y19_N28
\inst|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~13_cout\ = CARRY((\inst|contador\(6) & (\max~combout\(6) & !\inst|LessThan0~11_cout\)) # (!\inst|contador\(6) & ((\max~combout\(6)) # (!\inst|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(6),
	datab => \max~combout\(6),
	datad => VCC,
	cin => \inst|LessThan0~11_cout\,
	cout => \inst|LessThan0~13_cout\);

-- Location: LCCOMB_X8_Y19_N30
\inst|LessThan0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~14_combout\ = (\max~combout\(7) & ((\inst|LessThan0~13_cout\) # (!\inst|contador\(7)))) # (!\max~combout\(7) & (\inst|LessThan0~13_cout\ & !\inst|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \max~combout\(7),
	datad => \inst|contador\(7),
	cin => \inst|LessThan0~13_cout\,
	combout => \inst|LessThan0~14_combout\);

-- Location: LCCOMB_X9_Y19_N14
\inst|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|process_0~0_combout\ = (!\inst5|estado_act.Pulso~regout\ & (\inst|LessThan0~14_combout\ & \inst4|estado_act.Pulso~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|estado_act.Pulso~regout\,
	datac => \inst|LessThan0~14_combout\,
	datad => \inst4|estado_act.Pulso~regout\,
	combout => \inst|process_0~0_combout\);

-- Location: LCFF_X8_Y19_N5
\inst|contador[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|contador[2]~13_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \inst|contador[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|contador\(2));

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\max[2]~I\ : cycloneii_io
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
	padio => ww_max(2),
	combout => \max~combout\(2));

-- Location: LCCOMB_X9_Y19_N6
\inst|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (\max~combout\(3) & (\inst|contador\(3) & (\inst|contador\(2) $ (!\max~combout\(2))))) # (!\max~combout\(3) & (!\inst|contador\(3) & (\inst|contador\(2) $ (!\max~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \max~combout\(3),
	datab => \inst|contador\(2),
	datac => \inst|contador\(3),
	datad => \max~combout\(2),
	combout => \inst|Equal0~1_combout\);

-- Location: LCFF_X8_Y19_N13
\inst|contador[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|contador[6]~21_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \inst|contador[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|contador\(6));

-- Location: LCCOMB_X9_Y19_N22
\inst|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal0~3_combout\ = (\max~combout\(7) & (\inst|contador\(7) & (\max~combout\(6) $ (!\inst|contador\(6))))) # (!\max~combout\(7) & (!\inst|contador\(7) & (\max~combout\(6) $ (!\inst|contador\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \max~combout\(7),
	datab => \max~combout\(6),
	datac => \inst|contador\(7),
	datad => \inst|contador\(6),
	combout => \inst|Equal0~3_combout\);

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\max[4]~I\ : cycloneii_io
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
	padio => ww_max(4),
	combout => \max~combout\(4));

-- Location: LCCOMB_X9_Y19_N4
\inst|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = (\inst|contador\(5) & (\max~combout\(5) & (\max~combout\(4) $ (!\inst|contador\(4))))) # (!\inst|contador\(5) & (!\max~combout\(5) & (\max~combout\(4) $ (!\inst|contador\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(5),
	datab => \max~combout\(5),
	datac => \max~combout\(4),
	datad => \inst|contador\(4),
	combout => \inst|Equal0~2_combout\);

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\max[1]~I\ : cycloneii_io
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
	padio => ww_max(1),
	combout => \max~combout\(1));

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\max[0]~I\ : cycloneii_io
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
	padio => ww_max(0),
	combout => \max~combout\(0));

-- Location: LCCOMB_X9_Y19_N28
\inst|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (\inst|contador\(1) & (\max~combout\(1) & (\inst|contador\(0) $ (!\max~combout\(0))))) # (!\inst|contador\(1) & (!\max~combout\(1) & (\inst|contador\(0) $ (!\max~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(1),
	datab => \max~combout\(1),
	datac => \inst|contador\(0),
	datad => \max~combout\(0),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X9_Y19_N24
\inst|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal0~4_combout\ = (\inst|Equal0~1_combout\ & (\inst|Equal0~3_combout\ & (\inst|Equal0~2_combout\ & \inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~1_combout\,
	datab => \inst|Equal0~3_combout\,
	datac => \inst|Equal0~2_combout\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|Equal0~4_combout\);

-- Location: LCCOMB_X1_Y19_N0
\inst3|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux0~0_combout\ = (\inst|contador\(0) & ((\inst|contador\(3)) # (\inst|contador\(1) $ (\inst|contador\(2))))) # (!\inst|contador\(0) & ((\inst|contador\(1)) # (\inst|contador\(2) $ (\inst|contador\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(1),
	datab => \inst|contador\(2),
	datac => \inst|contador\(0),
	datad => \inst|contador\(3),
	combout => \inst3|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y19_N6
\inst3|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux1~0_combout\ = (\inst|contador\(1) & (!\inst|contador\(3) & ((\inst|contador\(0)) # (!\inst|contador\(2))))) # (!\inst|contador\(1) & (\inst|contador\(0) & (\inst|contador\(2) $ (!\inst|contador\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(1),
	datab => \inst|contador\(2),
	datac => \inst|contador\(0),
	datad => \inst|contador\(3),
	combout => \inst3|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y19_N20
\inst3|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux2~0_combout\ = (\inst|contador\(1) & (((\inst|contador\(0) & !\inst|contador\(3))))) # (!\inst|contador\(1) & ((\inst|contador\(2) & ((!\inst|contador\(3)))) # (!\inst|contador\(2) & (\inst|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(1),
	datab => \inst|contador\(2),
	datac => \inst|contador\(0),
	datad => \inst|contador\(3),
	combout => \inst3|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y19_N14
\inst3|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux3~0_combout\ = (\inst|contador\(1) & ((\inst|contador\(2) & (\inst|contador\(0))) # (!\inst|contador\(2) & (!\inst|contador\(0) & \inst|contador\(3))))) # (!\inst|contador\(1) & (!\inst|contador\(3) & (\inst|contador\(2) $ 
-- (\inst|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(1),
	datab => \inst|contador\(2),
	datac => \inst|contador\(0),
	datad => \inst|contador\(3),
	combout => \inst3|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y19_N12
\inst3|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux4~0_combout\ = (\inst|contador\(2) & (\inst|contador\(3) & ((\inst|contador\(1)) # (!\inst|contador\(0))))) # (!\inst|contador\(2) & (\inst|contador\(1) & (!\inst|contador\(0) & !\inst|contador\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(1),
	datab => \inst|contador\(2),
	datac => \inst|contador\(0),
	datad => \inst|contador\(3),
	combout => \inst3|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y19_N10
\inst3|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux5~0_combout\ = (\inst|contador\(1) & ((\inst|contador\(0) & ((\inst|contador\(3)))) # (!\inst|contador\(0) & (\inst|contador\(2))))) # (!\inst|contador\(1) & (\inst|contador\(2) & (\inst|contador\(0) $ (\inst|contador\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(1),
	datab => \inst|contador\(2),
	datac => \inst|contador\(0),
	datad => \inst|contador\(3),
	combout => \inst3|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y19_N16
\inst3|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux6~0_combout\ = (\inst|contador\(2) & (!\inst|contador\(1) & (\inst|contador\(0) $ (!\inst|contador\(3))))) # (!\inst|contador\(2) & (\inst|contador\(0) & (\inst|contador\(1) $ (!\inst|contador\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(1),
	datab => \inst|contador\(2),
	datac => \inst|contador\(0),
	datad => \inst|contador\(3),
	combout => \inst3|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y19_N30
\inst2|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux0~0_combout\ = (\inst|contador\(4) & ((\inst|contador\(7)) # (\inst|contador\(6) $ (\inst|contador\(5))))) # (!\inst|contador\(4) & ((\inst|contador\(5)) # (\inst|contador\(6) $ (\inst|contador\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(6),
	datab => \inst|contador\(5),
	datac => \inst|contador\(4),
	datad => \inst|contador\(7),
	combout => \inst2|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y19_N8
\inst2|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux1~0_combout\ = (\inst|contador\(6) & (\inst|contador\(4) & (\inst|contador\(5) $ (\inst|contador\(7))))) # (!\inst|contador\(6) & (!\inst|contador\(7) & ((\inst|contador\(5)) # (\inst|contador\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(6),
	datab => \inst|contador\(5),
	datac => \inst|contador\(4),
	datad => \inst|contador\(7),
	combout => \inst2|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y19_N18
\inst2|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux2~0_combout\ = (\inst|contador\(5) & (((\inst|contador\(4) & !\inst|contador\(7))))) # (!\inst|contador\(5) & ((\inst|contador\(6) & ((!\inst|contador\(7)))) # (!\inst|contador\(6) & (\inst|contador\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(6),
	datab => \inst|contador\(5),
	datac => \inst|contador\(4),
	datad => \inst|contador\(7),
	combout => \inst2|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y19_N28
\inst2|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux3~0_combout\ = (\inst|contador\(5) & ((\inst|contador\(6) & (\inst|contador\(4))) # (!\inst|contador\(6) & (!\inst|contador\(4) & \inst|contador\(7))))) # (!\inst|contador\(5) & (!\inst|contador\(7) & (\inst|contador\(6) $ 
-- (\inst|contador\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(6),
	datab => \inst|contador\(5),
	datac => \inst|contador\(4),
	datad => \inst|contador\(7),
	combout => \inst2|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y19_N2
\inst2|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux4~0_combout\ = (\inst|contador\(6) & (\inst|contador\(7) & ((\inst|contador\(5)) # (!\inst|contador\(4))))) # (!\inst|contador\(6) & (\inst|contador\(5) & (!\inst|contador\(4) & !\inst|contador\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(6),
	datab => \inst|contador\(5),
	datac => \inst|contador\(4),
	datad => \inst|contador\(7),
	combout => \inst2|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y19_N24
\inst2|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux5~0_combout\ = (\inst|contador\(5) & ((\inst|contador\(4) & ((\inst|contador\(7)))) # (!\inst|contador\(4) & (\inst|contador\(6))))) # (!\inst|contador\(5) & (\inst|contador\(6) & (\inst|contador\(4) $ (\inst|contador\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(6),
	datab => \inst|contador\(5),
	datac => \inst|contador\(4),
	datad => \inst|contador\(7),
	combout => \inst2|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y19_N22
\inst2|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~0_combout\ = (\inst|contador\(6) & (!\inst|contador\(5) & (\inst|contador\(4) $ (!\inst|contador\(7))))) # (!\inst|contador\(6) & (\inst|contador\(4) & (\inst|contador\(5) $ (!\inst|contador\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(6),
	datab => \inst|contador\(5),
	datac => \inst|contador\(4),
	datad => \inst|contador\(7),
	combout => \inst2|Mux6~0_combout\);

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_g~I\ : cycloneii_io
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
	datain => \inst|ALT_INV_Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_g);

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_r~I\ : cycloneii_io
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
	datain => \inst|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_r);

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp0[6]~I\ : cycloneii_io
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
	datain => \inst3|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp0(6));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp0[5]~I\ : cycloneii_io
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
	datain => \inst3|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp0(5));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp0[4]~I\ : cycloneii_io
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
	datain => \inst3|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp0(4));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp0[3]~I\ : cycloneii_io
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
	datain => \inst3|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp0(3));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp0[2]~I\ : cycloneii_io
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
	datain => \inst3|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp0(2));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp0[1]~I\ : cycloneii_io
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
	datain => \inst3|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp0(1));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp0[0]~I\ : cycloneii_io
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
	datain => \inst3|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp0(0));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst2|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(6));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst2|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(5));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst2|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(4));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst2|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(3));

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst2|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(2));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst2|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(1));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst2|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(0));
END structure;


