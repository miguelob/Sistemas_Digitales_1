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

-- DATE "11/21/2018 14:59:35"

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

ENTITY 	Practica9 IS
    PORT (
	espera : OUT std_logic;
	reset : IN std_logic;
	clk : IN std_logic;
	p1 : IN std_logic;
	p0 : IN std_logic;
	valid : OUT std_logic
	);
END Practica9;

-- Design Ports Information
-- espera	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- valid	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- p0	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- p1	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Practica9 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_espera : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_p1 : std_logic;
SIGNAL ww_p0 : std_logic;
SIGNAL ww_valid : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|estado_act.EP0EP1EP1~regout\ : std_logic;
SIGNAL \inst|estado_act.EP0EP1~regout\ : std_logic;
SIGNAL \inst|Selector3~0_combout\ : std_logic;
SIGNAL \inst|estado_act.EP0~regout\ : std_logic;
SIGNAL \inst|Selector2~0_combout\ : std_logic;
SIGNAL \inst|Selector2~1_combout\ : std_logic;
SIGNAL \inst|estado_act.Reposo~regout\ : std_logic;
SIGNAL \inst|Selector1~0_combout\ : std_logic;
SIGNAL \inst|Selector1~1_combout\ : std_logic;
SIGNAL \inst|Selector0~0_combout\ : std_logic;
SIGNAL \inst|Selector0~1_combout\ : std_logic;
SIGNAL \inst|Selector0~2_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \p1~combout\ : std_logic;
SIGNAL \inst|DetectorFlanco_1|estado_act.Esp0~0_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \inst|DetectorFlanco_1|estado_act.Esp0~regout\ : std_logic;
SIGNAL \inst|DetectorFlanco_1|Selector1~0_combout\ : std_logic;
SIGNAL \inst|DetectorFlanco_1|estado_act.Pulso~regout\ : std_logic;
SIGNAL \p0~combout\ : std_logic;
SIGNAL \inst|DetectorFlanco_2|estado_act.Esp0~0_combout\ : std_logic;
SIGNAL \inst|DetectorFlanco_2|estado_act.Esp0~regout\ : std_logic;
SIGNAL \inst|DetectorFlanco_2|Selector1~0_combout\ : std_logic;
SIGNAL \inst|DetectorFlanco_2|estado_act.Pulso~regout\ : std_logic;
SIGNAL \inst|Selector4~0_combout\ : std_logic;
SIGNAL \inst|estado_act.EP0EP1EP1EP0~regout\ : std_logic;
SIGNAL \ALT_INV_clk~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_reset~combout\ : std_logic;
SIGNAL \inst|ALT_INV_estado_act.EP0EP1EP1EP0~regout\ : std_logic;

BEGIN

espera <= ww_espera;
ww_reset <= reset;
ww_clk <= clk;
ww_p1 <= p1;
ww_p0 <= p0;
valid <= ww_valid;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_clk~clkctrl_outclk\ <= NOT \clk~clkctrl_outclk\;
\ALT_INV_reset~combout\ <= NOT \reset~combout\;
\inst|ALT_INV_estado_act.EP0EP1EP1EP0~regout\ <= NOT \inst|estado_act.EP0EP1EP1EP0~regout\;

-- Location: LCFF_X49_Y10_N23
\inst|estado_act.EP0EP1EP1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \inst|Selector3~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|estado_act.EP0EP1EP1~regout\);

-- Location: LCFF_X49_Y10_N21
\inst|estado_act.EP0EP1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \inst|Selector2~1_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|estado_act.EP0EP1~regout\);

-- Location: LCCOMB_X49_Y10_N22
\inst|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector3~0_combout\ = (!\inst|DetectorFlanco_2|estado_act.Pulso~regout\ & ((\inst|DetectorFlanco_1|estado_act.Pulso~regout\ & (\inst|estado_act.EP0EP1~regout\)) # (!\inst|DetectorFlanco_1|estado_act.Pulso~regout\ & 
-- ((\inst|estado_act.EP0EP1EP1~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|estado_act.EP0EP1~regout\,
	datab => \inst|DetectorFlanco_1|estado_act.Pulso~regout\,
	datac => \inst|estado_act.EP0EP1EP1~regout\,
	datad => \inst|DetectorFlanco_2|estado_act.Pulso~regout\,
	combout => \inst|Selector3~0_combout\);

-- Location: LCFF_X49_Y10_N31
\inst|estado_act.EP0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \inst|Selector1~1_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|estado_act.EP0~regout\);

-- Location: LCCOMB_X49_Y10_N0
\inst|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector2~0_combout\ = (!\inst|DetectorFlanco_2|estado_act.Pulso~regout\ & (\inst|DetectorFlanco_1|estado_act.Pulso~regout\ & ((\inst|estado_act.EP0EP1EP1EP0~regout\) # (\inst|estado_act.EP0~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|estado_act.EP0EP1EP1EP0~regout\,
	datab => \inst|estado_act.EP0~regout\,
	datac => \inst|DetectorFlanco_2|estado_act.Pulso~regout\,
	datad => \inst|DetectorFlanco_1|estado_act.Pulso~regout\,
	combout => \inst|Selector2~0_combout\);

-- Location: LCCOMB_X49_Y10_N20
\inst|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector2~1_combout\ = (\inst|Selector2~0_combout\) # ((!\inst|DetectorFlanco_2|estado_act.Pulso~regout\ & (!\inst|DetectorFlanco_1|estado_act.Pulso~regout\ & \inst|estado_act.EP0EP1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DetectorFlanco_2|estado_act.Pulso~regout\,
	datab => \inst|DetectorFlanco_1|estado_act.Pulso~regout\,
	datac => \inst|estado_act.EP0EP1~regout\,
	datad => \inst|Selector2~0_combout\,
	combout => \inst|Selector2~1_combout\);

-- Location: LCFF_X49_Y10_N27
\inst|estado_act.Reposo\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \inst|Selector0~2_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|estado_act.Reposo~regout\);

-- Location: LCCOMB_X49_Y10_N28
\inst|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector1~0_combout\ = (\inst|estado_act.Reposo~regout\ & ((\inst|DetectorFlanco_1|estado_act.Pulso~regout\) # ((!\inst|estado_act.EP0EP1~regout\ & !\inst|estado_act.EP0EP1EP1EP0~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|estado_act.EP0EP1~regout\,
	datab => \inst|estado_act.Reposo~regout\,
	datac => \inst|estado_act.EP0EP1EP1EP0~regout\,
	datad => \inst|DetectorFlanco_1|estado_act.Pulso~regout\,
	combout => \inst|Selector1~0_combout\);

-- Location: LCCOMB_X49_Y10_N30
\inst|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector1~1_combout\ = (\inst|DetectorFlanco_1|estado_act.Pulso~regout\ & (((\inst|estado_act.EP0~regout\ & !\inst|Selector1~0_combout\)))) # (!\inst|DetectorFlanco_1|estado_act.Pulso~regout\ & ((\inst|estado_act.EP0~regout\) # 
-- ((\inst|DetectorFlanco_2|estado_act.Pulso~regout\ & !\inst|Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DetectorFlanco_2|estado_act.Pulso~regout\,
	datab => \inst|DetectorFlanco_1|estado_act.Pulso~regout\,
	datac => \inst|estado_act.EP0~regout\,
	datad => \inst|Selector1~0_combout\,
	combout => \inst|Selector1~1_combout\);

-- Location: LCCOMB_X49_Y10_N6
\inst|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector0~0_combout\ = (\inst|estado_act.Reposo~regout\ & (\inst|estado_act.EP0EP1EP1~regout\ & ((\inst|DetectorFlanco_1|estado_act.Pulso~regout\)))) # (!\inst|estado_act.Reposo~regout\ & (((\inst|DetectorFlanco_1|estado_act.Pulso~regout\) # 
-- (!\inst|DetectorFlanco_2|estado_act.Pulso~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|estado_act.EP0EP1EP1~regout\,
	datab => \inst|estado_act.Reposo~regout\,
	datac => \inst|DetectorFlanco_2|estado_act.Pulso~regout\,
	datad => \inst|DetectorFlanco_1|estado_act.Pulso~regout\,
	combout => \inst|Selector0~0_combout\);

-- Location: LCCOMB_X49_Y10_N16
\inst|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector0~1_combout\ = (\inst|DetectorFlanco_2|estado_act.Pulso~regout\ & ((\inst|estado_act.EP0EP1~regout\) # ((\inst|estado_act.EP0~regout\) # (\inst|estado_act.EP0EP1EP1EP0~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|estado_act.EP0EP1~regout\,
	datab => \inst|estado_act.EP0~regout\,
	datac => \inst|estado_act.EP0EP1EP1EP0~regout\,
	datad => \inst|DetectorFlanco_2|estado_act.Pulso~regout\,
	combout => \inst|Selector0~1_combout\);

-- Location: LCCOMB_X49_Y10_N26
\inst|Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector0~2_combout\ = (!\inst|Selector0~0_combout\ & ((!\inst|Selector0~1_combout\) # (!\inst|DetectorFlanco_1|estado_act.Pulso~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DetectorFlanco_1|estado_act.Pulso~regout\,
	datac => \inst|Selector0~1_combout\,
	datad => \inst|Selector0~0_combout\,
	combout => \inst|Selector0~2_combout\);

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

-- Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\p1~I\ : cycloneii_io
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
	padio => ww_p1,
	combout => \p1~combout\);

-- Location: LCCOMB_X49_Y10_N8
\inst|DetectorFlanco_1|estado_act.Esp0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|DetectorFlanco_1|estado_act.Esp0~0_combout\ = !\p1~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \p1~combout\,
	combout => \inst|DetectorFlanco_1|estado_act.Esp0~0_combout\);

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
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
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: LCFF_X49_Y10_N9
\inst|DetectorFlanco_1|estado_act.Esp0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|DetectorFlanco_1|estado_act.Esp0~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|DetectorFlanco_1|estado_act.Esp0~regout\);

-- Location: LCCOMB_X49_Y10_N10
\inst|DetectorFlanco_1|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|DetectorFlanco_1|Selector1~0_combout\ = (!\inst|DetectorFlanco_1|estado_act.Esp0~regout\ & !\p1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|DetectorFlanco_1|estado_act.Esp0~regout\,
	datad => \p1~combout\,
	combout => \inst|DetectorFlanco_1|Selector1~0_combout\);

-- Location: LCFF_X49_Y10_N11
\inst|DetectorFlanco_1|estado_act.Pulso\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|DetectorFlanco_1|Selector1~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|DetectorFlanco_1|estado_act.Pulso~regout\);

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\p0~I\ : cycloneii_io
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
	padio => ww_p0,
	combout => \p0~combout\);

-- Location: LCCOMB_X49_Y10_N18
\inst|DetectorFlanco_2|estado_act.Esp0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|DetectorFlanco_2|estado_act.Esp0~0_combout\ = !\p0~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \p0~combout\,
	combout => \inst|DetectorFlanco_2|estado_act.Esp0~0_combout\);

-- Location: LCFF_X49_Y10_N19
\inst|DetectorFlanco_2|estado_act.Esp0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|DetectorFlanco_2|estado_act.Esp0~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|DetectorFlanco_2|estado_act.Esp0~regout\);

-- Location: LCCOMB_X49_Y10_N12
\inst|DetectorFlanco_2|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|DetectorFlanco_2|Selector1~0_combout\ = (!\p0~combout\ & !\inst|DetectorFlanco_2|estado_act.Esp0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p0~combout\,
	datad => \inst|DetectorFlanco_2|estado_act.Esp0~regout\,
	combout => \inst|DetectorFlanco_2|Selector1~0_combout\);

-- Location: LCFF_X49_Y10_N13
\inst|DetectorFlanco_2|estado_act.Pulso\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|DetectorFlanco_2|Selector1~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|DetectorFlanco_2|estado_act.Pulso~regout\);

-- Location: LCCOMB_X49_Y10_N24
\inst|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector4~0_combout\ = (!\inst|DetectorFlanco_1|estado_act.Pulso~regout\ & ((\inst|DetectorFlanco_2|estado_act.Pulso~regout\ & (\inst|estado_act.EP0EP1EP1~regout\)) # (!\inst|DetectorFlanco_2|estado_act.Pulso~regout\ & 
-- ((\inst|estado_act.EP0EP1EP1EP0~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|estado_act.EP0EP1EP1~regout\,
	datab => \inst|DetectorFlanco_1|estado_act.Pulso~regout\,
	datac => \inst|estado_act.EP0EP1EP1EP0~regout\,
	datad => \inst|DetectorFlanco_2|estado_act.Pulso~regout\,
	combout => \inst|Selector4~0_combout\);

-- Location: LCFF_X49_Y10_N25
\inst|estado_act.EP0EP1EP1EP0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \inst|Selector4~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|estado_act.EP0EP1EP1EP0~regout\);

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\espera~I\ : cycloneii_io
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
	datain => \inst|ALT_INV_estado_act.EP0EP1EP1EP0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_espera);

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\valid~I\ : cycloneii_io
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
	datain => \inst|estado_act.EP0EP1EP1EP0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_valid);
END structure;


