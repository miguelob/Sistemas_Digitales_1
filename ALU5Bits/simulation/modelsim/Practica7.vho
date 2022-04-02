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

-- DATE "11/07/2018 16:25:47"

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

ENTITY 	Practica7 IS
    PORT (
	led : OUT std_logic;
	a : IN std_logic_vector(4 DOWNTO 0);
	b : IN std_logic_vector(4 DOWNTO 0);
	sel : IN std_logic_vector(2 DOWNTO 0);
	display1 : OUT std_logic_vector(6 DOWNTO 0);
	display2 : OUT std_logic_vector(6 DOWNTO 0)
	);
END Practica7;

-- Design Ports Information
-- led	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display1[6]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display1[5]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display1[4]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display1[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display1[2]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display1[1]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display1[0]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display2[6]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display2[5]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display2[4]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display2[3]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display2[2]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display2[1]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display2[0]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sel[1]	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sel[0]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[4]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[4]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[3]	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[3]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[2]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[0]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[1]	=>  Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sel[2]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Practica7 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_led : std_logic;
SIGNAL ww_a : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_sel : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_display1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display2 : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst3|i_Multiplicador|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst3|i_Multiplicador|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~7\ : std_logic;
SIGNAL \inst3|i_Mux2a15bits|s[2]~2_combout\ : std_logic;
SIGNAL \inst3|i_SumadorRestador5Bits|GenSum:0:i_Sumador1Bit|s_i~0_combout\ : std_logic;
SIGNAL \inst3|i_Mux3a15bits|Mux3~1_combout\ : std_logic;
SIGNAL \inst3|i_Mux3a15bits|Mux2~0_combout\ : std_logic;
SIGNAL \inst3|i_Mux3a15bits|Mux2~1_combout\ : std_logic;
SIGNAL \inst3|i_Mux3a15bits|Mux1~1_combout\ : std_logic;
SIGNAL \inst3|i_Mux3a15bits|Mux1~3_combout\ : std_logic;
SIGNAL \inst3|i_Mux3a15bits|Mux0~0_combout\ : std_logic;
SIGNAL \inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1~7\ : std_logic;
SIGNAL \inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \inst3|i_Mux2a11bit|Selector0~1_combout\ : std_logic;
SIGNAL \inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \inst3|i_Mux2a11bit|Selector0~0_combout\ : std_logic;
SIGNAL \inst3|i_UnidadControl|Mux1~0_combout\ : std_logic;
SIGNAL \inst3|i_Mux2a15bits|s[4]~0_combout\ : std_logic;
SIGNAL \inst3|i_SumadorRestador5Bits|GenSum:0:i_Sumador1Bit|c_i_mas_1~0_combout\ : std_logic;
SIGNAL \inst3|i_SumadorRestador5Bits|GenSum:0:i_Sumador1Bit|c_i_mas_1~1_combout\ : std_logic;
SIGNAL \inst3|i_SumadorRestador5Bits|GenSum:1:i_Sumador1Bit|c_i_mas_1~0_combout\ : std_logic;
SIGNAL \inst3|i_SumadorRestador5Bits|GenSum:2:i_Sumador1Bit|c_i_mas_1~0_combout\ : std_logic;
SIGNAL \inst3|i_Mux2a15bits|s[3]~1_combout\ : std_logic;
SIGNAL \inst3|i_SumadorRestador5Bits|GenSum:3:i_Sumador1Bit|c_i_mas_1~0_combout\ : std_logic;
SIGNAL \inst3|i_Mux2a11bit|Selector0~2_combout\ : std_logic;
SIGNAL \inst3|i_Mux2a11bit|Selector0~3_combout\ : std_logic;
SIGNAL \inst3|i_SumadorRestador5Bits|GenSum:1:i_Sumador1Bit|s_i~combout\ : std_logic;
SIGNAL \inst3|i_Mux3a15bits|Mux3~0_combout\ : std_logic;
SIGNAL \inst3|i_Mux3a15bits|Mux3~2_combout\ : std_logic;
SIGNAL \inst3|i_Mux3a15bits|Mux4~1_combout\ : std_logic;
SIGNAL \inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \inst3|i_Mux3a15bits|Mux4~0_combout\ : std_logic;
SIGNAL \inst3|i_Mux3a15bits|Mux4~2_combout\ : std_logic;
SIGNAL \inst3|i_SumadorRestador5Bits|GenSum:2:i_Sumador1Bit|s_i~combout\ : std_logic;
SIGNAL \inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \inst3|i_Mux3a15bits|Mux2~2_combout\ : std_logic;
SIGNAL \inst3|i_Mux3a15bits|Mux1~0_combout\ : std_logic;
SIGNAL \inst3|i_Mux3a15bits|Mux2~3_combout\ : std_logic;
SIGNAL \inst3|i_SumadorRestador5Bits|GenSum:3:i_Sumador1Bit|s_i~0_combout\ : std_logic;
SIGNAL \inst3|i_Mux3a15bits|Mux1~2_combout\ : std_logic;
SIGNAL \inst3|i_Mux3a15bits|Mux1~4_combout\ : std_logic;
SIGNAL \inst|Mux0~0_combout\ : std_logic;
SIGNAL \inst|Mux1~0_combout\ : std_logic;
SIGNAL \inst|Mux2~0_combout\ : std_logic;
SIGNAL \inst|Mux3~0_combout\ : std_logic;
SIGNAL \inst|Mux4~0_combout\ : std_logic;
SIGNAL \inst|Mux5~0_combout\ : std_logic;
SIGNAL \inst|Mux6~0_combout\ : std_logic;
SIGNAL \inst3|i_Mux3a15bits|Mux0~1_combout\ : std_logic;
SIGNAL \inst3|i_SumadorRestador5Bits|GenSum:4:i_Sumador1Bit|s_i~combout\ : std_logic;
SIGNAL \inst3|i_Mux3a15bits|Mux0~2_combout\ : std_logic;
SIGNAL \inst3|i_Mux3a15bits|Mux0~3_combout\ : std_logic;
SIGNAL \sel~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \b~combout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \a~combout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst3|i_SumadorRestador5Bits|b_i\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

led <= ww_led;
ww_a <= a;
ww_b <= b;
ww_sel <= sel;
display1 <= ww_display1;
display2 <= ww_display2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst3|i_Multiplicador|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1~DATAOUT9\ & \inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1~DATAOUT8\ & 
\inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1~DATAOUT7\ & \inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1~DATAOUT5\ & 
\inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1~DATAOUT4\ & \inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1~DATAOUT3\ & \inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1~DATAOUT2\ & 
\inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1~DATAOUT1\ & \inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1~dataout\ & \inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1~7\ & \inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1~6\ & 
\inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1~5\ & \inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1~4\ & \inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1~3\ & \inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1~2\ & 
\inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1~1\ & \inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1~0\);

\inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~0\ <= \inst3|i_Multiplicador|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~1\ <= \inst3|i_Multiplicador|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~2\ <= \inst3|i_Multiplicador|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~3\ <= \inst3|i_Multiplicador|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~4\ <= \inst3|i_Multiplicador|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~5\ <= \inst3|i_Multiplicador|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~6\ <= \inst3|i_Multiplicador|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~7\ <= \inst3|i_Multiplicador|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~dataout\ <= \inst3|i_Multiplicador|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~DATAOUT1\ <= \inst3|i_Multiplicador|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~DATAOUT2\ <= \inst3|i_Multiplicador|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~DATAOUT3\ <= \inst3|i_Multiplicador|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~DATAOUT4\ <= \inst3|i_Multiplicador|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~DATAOUT5\ <= \inst3|i_Multiplicador|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~DATAOUT6\ <= \inst3|i_Multiplicador|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~DATAOUT7\ <= \inst3|i_Multiplicador|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~DATAOUT8\ <= \inst3|i_Multiplicador|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~DATAOUT9\ <= \inst3|i_Multiplicador|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);

\inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\a~combout\(4) & \a~combout\(3) & \a~combout\(2) & \a~combout\(1) & \a~combout\(0) & gnd & gnd & gnd & gnd);

\inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\b~combout\(4) & \b~combout\(3) & \b~combout\(2) & \b~combout\(1) & \b~combout\(0) & gnd & gnd & gnd & gnd);

\inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1~0\ <= \inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1~1\ <= \inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1~2\ <= \inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1~3\ <= \inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1~4\ <= \inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1~5\ <= \inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1~6\ <= \inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1~7\ <= \inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1~dataout\ <= \inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);
\inst|ALT_INV_Mux0~0_combout\ <= NOT \inst|Mux0~0_combout\;

-- Location: DSPOUT_X28_Y9_N2
\inst3|i_Multiplicador|Mult0|auto_generated|mac_out2\ : cycloneii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|i_Multiplicador|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst3|i_Multiplicador|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X27_Y12_N16
\inst3|i_Mux2a15bits|s[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|i_Mux2a15bits|s[2]~2_combout\ = (\b~combout\(2) & !\sel~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(2),
	datad => \sel~combout\(1),
	combout => \inst3|i_Mux2a15bits|s[2]~2_combout\);

-- Location: LCCOMB_X27_Y9_N10
\inst3|i_SumadorRestador5Bits|b_i[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|i_SumadorRestador5Bits|b_i\(1) = \sel~combout\(0) $ (((\b~combout\(1) & !\sel~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(0),
	datac => \b~combout\(1),
	datad => \sel~combout\(1),
	combout => \inst3|i_SumadorRestador5Bits|b_i\(1));

-- Location: LCCOMB_X27_Y9_N24
\inst3|i_SumadorRestador5Bits|GenSum:0:i_Sumador1Bit|s_i~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|i_SumadorRestador5Bits|GenSum:0:i_Sumador1Bit|s_i~0_combout\ = \a~combout\(0) $ (((\sel~combout\(1)) # (\b~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(1),
	datab => \b~combout\(0),
	datad => \a~combout\(0),
	combout => \inst3|i_SumadorRestador5Bits|GenSum:0:i_Sumador1Bit|s_i~0_combout\);

-- Location: LCCOMB_X27_Y9_N20
\inst3|i_Mux3a15bits|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|i_Mux3a15bits|Mux3~1_combout\ = (\sel~combout\(1) & (\a~combout\(1) $ (((\sel~combout\(0)) # (\b~combout\(1)))))) # (!\sel~combout\(1) & ((\sel~combout\(0) & ((\b~combout\(1)) # (\a~combout\(1)))) # (!\sel~combout\(0) & (\b~combout\(1) & 
-- \a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(1),
	datab => \sel~combout\(0),
	datac => \b~combout\(1),
	datad => \a~combout\(1),
	combout => \inst3|i_Mux3a15bits|Mux3~1_combout\);

-- Location: LCCOMB_X27_Y12_N28
\inst3|i_Mux3a15bits|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|i_Mux3a15bits|Mux2~0_combout\ = (\sel~combout\(1) & (\a~combout\(2) $ (((\sel~combout\(0)) # (\b~combout\(2)))))) # (!\sel~combout\(1) & ((\sel~combout\(0) & ((\b~combout\(2)) # (\a~combout\(2)))) # (!\sel~combout\(0) & (\b~combout\(2) & 
-- \a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(0),
	datab => \sel~combout\(1),
	datac => \b~combout\(2),
	datad => \a~combout\(2),
	combout => \inst3|i_Mux3a15bits|Mux2~0_combout\);

-- Location: LCCOMB_X27_Y12_N6
\inst3|i_Mux3a15bits|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|i_Mux3a15bits|Mux2~1_combout\ = (\inst3|i_Mux3a15bits|Mux2~0_combout\ & !\sel~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|i_Mux3a15bits|Mux2~0_combout\,
	datad => \sel~combout\(2),
	combout => \inst3|i_Mux3a15bits|Mux2~1_combout\);

-- Location: LCCOMB_X29_Y9_N18
\inst3|i_Mux3a15bits|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|i_Mux3a15bits|Mux1~1_combout\ = (\sel~combout\(0) & (\inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~DATAOUT3\ & (\sel~combout\(2) & \sel~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(0),
	datab => \inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~DATAOUT3\,
	datac => \sel~combout\(2),
	datad => \sel~combout\(1),
	combout => \inst3|i_Mux3a15bits|Mux1~1_combout\);

-- Location: LCCOMB_X29_Y9_N16
\inst3|i_Mux3a15bits|Mux1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|i_Mux3a15bits|Mux1~3_combout\ = (\a~combout\(3) & (\sel~combout\(1) $ (((\sel~combout\(0)) # (\b~combout\(3)))))) # (!\a~combout\(3) & ((\sel~combout\(0) & ((\b~combout\(3)) # (\sel~combout\(1)))) # (!\sel~combout\(0) & (\b~combout\(3) & 
-- \sel~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(0),
	datab => \b~combout\(3),
	datac => \a~combout\(3),
	datad => \sel~combout\(1),
	combout => \inst3|i_Mux3a15bits|Mux1~3_combout\);

-- Location: LCCOMB_X29_Y9_N12
\inst3|i_Mux3a15bits|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|i_Mux3a15bits|Mux0~0_combout\ = (\a~combout\(4) & (\sel~combout\(1) $ (((\b~combout\(4)) # (\sel~combout\(0)))))) # (!\a~combout\(4) & ((\b~combout\(4) & ((\sel~combout\(0)) # (\sel~combout\(1)))) # (!\b~combout\(4) & (\sel~combout\(0) & 
-- \sel~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(4),
	datab => \a~combout\(4),
	datac => \sel~combout\(0),
	datad => \sel~combout\(1),
	combout => \inst3|i_Mux3a15bits|Mux0~0_combout\);

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

-- Location: DSPMULT_X28_Y9_N0
\inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1\ : cycloneii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 9,
	datab_clock => "none",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	dataa => \inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst3|i_Multiplicador|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: LCCOMB_X27_Y9_N12
\inst3|i_Mux2a11bit|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|i_Mux2a11bit|Selector0~1_combout\ = (\inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~DATAOUT4\ & ((!\inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~DATAOUT8\) # (!\inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~DATAOUT7\))) # 
-- (!\inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~DATAOUT4\ & ((\inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~DATAOUT7\) # (\inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~DATAOUT8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~DATAOUT4\,
	datac => \inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~DATAOUT7\,
	datad => \inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~DATAOUT8\,
	combout => \inst3|i_Mux2a11bit|Selector0~1_combout\);

-- Location: LCCOMB_X27_Y9_N26
\inst3|i_Mux2a11bit|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|i_Mux2a11bit|Selector0~0_combout\ = (\inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~DATAOUT9\ & (((!\inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~DATAOUT6\) # (!\inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~DATAOUT7\)) # 
-- (!\inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~DATAOUT5\))) # (!\inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~DATAOUT9\ & ((\inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~DATAOUT5\) # 
-- ((\inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~DATAOUT7\) # (\inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~DATAOUT6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~DATAOUT9\,
	datab => \inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~DATAOUT5\,
	datac => \inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~DATAOUT7\,
	datad => \inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~DATAOUT6\,
	combout => \inst3|i_Mux2a11bit|Selector0~0_combout\);

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sel[0]~I\ : cycloneii_io
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
	padio => ww_sel(0),
	combout => \sel~combout\(0));

-- Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sel[1]~I\ : cycloneii_io
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
	padio => ww_sel(1),
	combout => \sel~combout\(1));

-- Location: LCCOMB_X27_Y9_N8
\inst3|i_UnidadControl|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|i_UnidadControl|Mux1~0_combout\ = (\sel~combout\(0) & \sel~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sel~combout\(0),
	datad => \sel~combout\(1),
	combout => \inst3|i_UnidadControl|Mux1~0_combout\);

-- Location: LCCOMB_X29_Y9_N8
\inst3|i_Mux2a15bits|s[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|i_Mux2a15bits|s[4]~0_combout\ = (\b~combout\(4) & !\sel~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(4),
	datad => \sel~combout\(1),
	combout => \inst3|i_Mux2a15bits|s[4]~0_combout\);

-- Location: LCCOMB_X27_Y9_N30
\inst3|i_SumadorRestador5Bits|GenSum:0:i_Sumador1Bit|c_i_mas_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|i_SumadorRestador5Bits|GenSum:0:i_Sumador1Bit|c_i_mas_1~0_combout\ = (\sel~combout\(0) & (\a~combout\(0) $ (((!\sel~combout\(1) & !\b~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(1),
	datab => \b~combout\(0),
	datac => \sel~combout\(0),
	datad => \a~combout\(0),
	combout => \inst3|i_SumadorRestador5Bits|GenSum:0:i_Sumador1Bit|c_i_mas_1~0_combout\);

-- Location: LCCOMB_X27_Y9_N16
\inst3|i_SumadorRestador5Bits|GenSum:0:i_Sumador1Bit|c_i_mas_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|i_SumadorRestador5Bits|GenSum:0:i_Sumador1Bit|c_i_mas_1~1_combout\ = (\a~combout\(0) & (\sel~combout\(0) $ (((\sel~combout\(1)) # (\b~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(1),
	datab => \b~combout\(0),
	datac => \sel~combout\(0),
	datad => \a~combout\(0),
	combout => \inst3|i_SumadorRestador5Bits|GenSum:0:i_Sumador1Bit|c_i_mas_1~1_combout\);

-- Location: LCCOMB_X27_Y9_N4
\inst3|i_SumadorRestador5Bits|GenSum:1:i_Sumador1Bit|c_i_mas_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|i_SumadorRestador5Bits|GenSum:1:i_Sumador1Bit|c_i_mas_1~0_combout\ = (\inst3|i_SumadorRestador5Bits|b_i\(1) & ((\inst3|i_SumadorRestador5Bits|GenSum:0:i_Sumador1Bit|c_i_mas_1~0_combout\) # 
-- ((\inst3|i_SumadorRestador5Bits|GenSum:0:i_Sumador1Bit|c_i_mas_1~1_combout\) # (\a~combout\(1))))) # (!\inst3|i_SumadorRestador5Bits|b_i\(1) & (\a~combout\(1) & ((\inst3|i_SumadorRestador5Bits|GenSum:0:i_Sumador1Bit|c_i_mas_1~0_combout\) # 
-- (\inst3|i_SumadorRestador5Bits|GenSum:0:i_Sumador1Bit|c_i_mas_1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|i_SumadorRestador5Bits|b_i\(1),
	datab => \inst3|i_SumadorRestador5Bits|GenSum:0:i_Sumador1Bit|c_i_mas_1~0_combout\,
	datac => \inst3|i_SumadorRestador5Bits|GenSum:0:i_Sumador1Bit|c_i_mas_1~1_combout\,
	datad => \a~combout\(1),
	combout => \inst3|i_SumadorRestador5Bits|GenSum:1:i_Sumador1Bit|c_i_mas_1~0_combout\);

-- Location: LCCOMB_X27_Y12_N18
\inst3|i_SumadorRestador5Bits|GenSum:2:i_Sumador1Bit|c_i_mas_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|i_SumadorRestador5Bits|GenSum:2:i_Sumador1Bit|c_i_mas_1~0_combout\ = (\inst3|i_SumadorRestador5Bits|GenSum:1:i_Sumador1Bit|c_i_mas_1~0_combout\ & ((\a~combout\(2)) # (\inst3|i_Mux2a15bits|s[2]~2_combout\ $ (\sel~combout\(0))))) # 
-- (!\inst3|i_SumadorRestador5Bits|GenSum:1:i_Sumador1Bit|c_i_mas_1~0_combout\ & (\a~combout\(2) & (\inst3|i_Mux2a15bits|s[2]~2_combout\ $ (\sel~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|i_Mux2a15bits|s[2]~2_combout\,
	datab => \sel~combout\(0),
	datac => \inst3|i_SumadorRestador5Bits|GenSum:1:i_Sumador1Bit|c_i_mas_1~0_combout\,
	datad => \a~combout\(2),
	combout => \inst3|i_SumadorRestador5Bits|GenSum:2:i_Sumador1Bit|c_i_mas_1~0_combout\);

-- Location: LCCOMB_X29_Y9_N10
\inst3|i_Mux2a15bits|s[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|i_Mux2a15bits|s[3]~1_combout\ = (\b~combout\(3) & !\sel~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(3),
	datad => \sel~combout\(1),
	combout => \inst3|i_Mux2a15bits|s[3]~1_combout\);

-- Location: LCCOMB_X29_Y9_N20
\inst3|i_SumadorRestador5Bits|GenSum:3:i_Sumador1Bit|c_i_mas_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|i_SumadorRestador5Bits|GenSum:3:i_Sumador1Bit|c_i_mas_1~0_combout\ = (\a~combout\(3) & ((\inst3|i_SumadorRestador5Bits|GenSum:2:i_Sumador1Bit|c_i_mas_1~0_combout\) # (\sel~combout\(0) $ (\inst3|i_Mux2a15bits|s[3]~1_combout\)))) # (!\a~combout\(3) & 
-- (\inst3|i_SumadorRestador5Bits|GenSum:2:i_Sumador1Bit|c_i_mas_1~0_combout\ & (\sel~combout\(0) $ (\inst3|i_Mux2a15bits|s[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(3),
	datab => \inst3|i_SumadorRestador5Bits|GenSum:2:i_Sumador1Bit|c_i_mas_1~0_combout\,
	datac => \sel~combout\(0),
	datad => \inst3|i_Mux2a15bits|s[3]~1_combout\,
	combout => \inst3|i_SumadorRestador5Bits|GenSum:3:i_Sumador1Bit|c_i_mas_1~0_combout\);

-- Location: LCCOMB_X29_Y9_N22
\inst3|i_Mux2a11bit|Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|i_Mux2a11bit|Selector0~2_combout\ = (\a~combout\(4) & (!\inst3|i_SumadorRestador5Bits|GenSum:3:i_Sumador1Bit|c_i_mas_1~0_combout\ & (\sel~combout\(0) $ (\inst3|i_Mux2a15bits|s[4]~0_combout\)))) # (!\a~combout\(4) & 
-- (\inst3|i_SumadorRestador5Bits|GenSum:3:i_Sumador1Bit|c_i_mas_1~0_combout\ & (\sel~combout\(0) $ (!\inst3|i_Mux2a15bits|s[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(0),
	datab => \a~combout\(4),
	datac => \inst3|i_Mux2a15bits|s[4]~0_combout\,
	datad => \inst3|i_SumadorRestador5Bits|GenSum:3:i_Sumador1Bit|c_i_mas_1~0_combout\,
	combout => \inst3|i_Mux2a11bit|Selector0~2_combout\);

-- Location: LCCOMB_X27_Y9_N14
\inst3|i_Mux2a11bit|Selector0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|i_Mux2a11bit|Selector0~3_combout\ = (\inst3|i_UnidadControl|Mux1~0_combout\ & ((\inst3|i_Mux2a11bit|Selector0~1_combout\) # ((\inst3|i_Mux2a11bit|Selector0~0_combout\)))) # (!\inst3|i_UnidadControl|Mux1~0_combout\ & 
-- (((\inst3|i_Mux2a11bit|Selector0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|i_Mux2a11bit|Selector0~1_combout\,
	datab => \inst3|i_Mux2a11bit|Selector0~0_combout\,
	datac => \inst3|i_UnidadControl|Mux1~0_combout\,
	datad => \inst3|i_Mux2a11bit|Selector0~2_combout\,
	combout => \inst3|i_Mux2a11bit|Selector0~3_combout\);

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sel[2]~I\ : cycloneii_io
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
	padio => ww_sel(2),
	combout => \sel~combout\(2));

-- Location: LCCOMB_X27_Y9_N0
\inst3|i_SumadorRestador5Bits|GenSum:1:i_Sumador1Bit|s_i\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|i_SumadorRestador5Bits|GenSum:1:i_Sumador1Bit|s_i~combout\ = \inst3|i_SumadorRestador5Bits|b_i\(1) $ (\a~combout\(1) $ (((\inst3|i_SumadorRestador5Bits|GenSum:0:i_Sumador1Bit|c_i_mas_1~0_combout\) # 
-- (\inst3|i_SumadorRestador5Bits|GenSum:0:i_Sumador1Bit|c_i_mas_1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|i_SumadorRestador5Bits|b_i\(1),
	datab => \inst3|i_SumadorRestador5Bits|GenSum:0:i_Sumador1Bit|c_i_mas_1~0_combout\,
	datac => \inst3|i_SumadorRestador5Bits|GenSum:0:i_Sumador1Bit|c_i_mas_1~1_combout\,
	datad => \a~combout\(1),
	combout => \inst3|i_SumadorRestador5Bits|GenSum:1:i_Sumador1Bit|s_i~combout\);

-- Location: LCCOMB_X27_Y9_N2
\inst3|i_Mux3a15bits|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|i_Mux3a15bits|Mux3~0_combout\ = (\sel~combout\(2) & ((\inst3|i_UnidadControl|Mux1~0_combout\ & (\inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~DATAOUT1\)) # (!\inst3|i_UnidadControl|Mux1~0_combout\ & 
-- ((\inst3|i_SumadorRestador5Bits|GenSum:1:i_Sumador1Bit|s_i~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~DATAOUT1\,
	datab => \inst3|i_UnidadControl|Mux1~0_combout\,
	datac => \sel~combout\(2),
	datad => \inst3|i_SumadorRestador5Bits|GenSum:1:i_Sumador1Bit|s_i~combout\,
	combout => \inst3|i_Mux3a15bits|Mux3~0_combout\);

-- Location: LCCOMB_X27_Y9_N6
\inst3|i_Mux3a15bits|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|i_Mux3a15bits|Mux3~2_combout\ = (\inst3|i_Mux3a15bits|Mux3~0_combout\) # ((\inst3|i_Mux3a15bits|Mux3~1_combout\ & !\sel~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|i_Mux3a15bits|Mux3~1_combout\,
	datab => \inst3|i_Mux3a15bits|Mux3~0_combout\,
	datac => \sel~combout\(2),
	combout => \inst3|i_Mux3a15bits|Mux3~2_combout\);

-- Location: LCCOMB_X27_Y9_N28
\inst3|i_Mux3a15bits|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|i_Mux3a15bits|Mux4~1_combout\ = (\sel~combout\(1) & (\a~combout\(0) $ (((\b~combout\(0)) # (\sel~combout\(0)))))) # (!\sel~combout\(1) & ((\b~combout\(0) & ((\sel~combout\(0)) # (\a~combout\(0)))) # (!\b~combout\(0) & (\sel~combout\(0) & 
-- \a~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(1),
	datab => \b~combout\(0),
	datac => \sel~combout\(0),
	datad => \a~combout\(0),
	combout => \inst3|i_Mux3a15bits|Mux4~1_combout\);

-- Location: LCCOMB_X27_Y9_N18
\inst3|i_Mux3a15bits|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|i_Mux3a15bits|Mux4~0_combout\ = (\sel~combout\(2) & ((\inst3|i_UnidadControl|Mux1~0_combout\ & ((\inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~dataout\))) # (!\inst3|i_UnidadControl|Mux1~0_combout\ & 
-- (\inst3|i_SumadorRestador5Bits|GenSum:0:i_Sumador1Bit|s_i~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|i_SumadorRestador5Bits|GenSum:0:i_Sumador1Bit|s_i~0_combout\,
	datab => \inst3|i_UnidadControl|Mux1~0_combout\,
	datac => \sel~combout\(2),
	datad => \inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~dataout\,
	combout => \inst3|i_Mux3a15bits|Mux4~0_combout\);

-- Location: LCCOMB_X27_Y9_N22
\inst3|i_Mux3a15bits|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|i_Mux3a15bits|Mux4~2_combout\ = (\inst3|i_Mux3a15bits|Mux4~0_combout\) # ((\inst3|i_Mux3a15bits|Mux4~1_combout\ & !\sel~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|i_Mux3a15bits|Mux4~1_combout\,
	datac => \sel~combout\(2),
	datad => \inst3|i_Mux3a15bits|Mux4~0_combout\,
	combout => \inst3|i_Mux3a15bits|Mux4~2_combout\);

-- Location: LCCOMB_X27_Y12_N26
\inst3|i_SumadorRestador5Bits|GenSum:2:i_Sumador1Bit|s_i\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|i_SumadorRestador5Bits|GenSum:2:i_Sumador1Bit|s_i~combout\ = \inst3|i_Mux2a15bits|s[2]~2_combout\ $ (\sel~combout\(0) $ (\inst3|i_SumadorRestador5Bits|GenSum:1:i_Sumador1Bit|c_i_mas_1~0_combout\ $ (\a~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|i_Mux2a15bits|s[2]~2_combout\,
	datab => \sel~combout\(0),
	datac => \inst3|i_SumadorRestador5Bits|GenSum:1:i_Sumador1Bit|c_i_mas_1~0_combout\,
	datad => \a~combout\(2),
	combout => \inst3|i_SumadorRestador5Bits|GenSum:2:i_Sumador1Bit|s_i~combout\);

-- Location: LCCOMB_X27_Y12_N8
\inst3|i_Mux3a15bits|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|i_Mux3a15bits|Mux2~2_combout\ = (\sel~combout\(2) & (\sel~combout\(0) & (\inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~DATAOUT2\ & \sel~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(2),
	datab => \sel~combout\(0),
	datac => \inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~DATAOUT2\,
	datad => \sel~combout\(1),
	combout => \inst3|i_Mux3a15bits|Mux2~2_combout\);

-- Location: LCCOMB_X29_Y9_N0
\inst3|i_Mux3a15bits|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|i_Mux3a15bits|Mux1~0_combout\ = (\sel~combout\(2) & ((!\sel~combout\(1)) # (!\sel~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(0),
	datac => \sel~combout\(2),
	datad => \sel~combout\(1),
	combout => \inst3|i_Mux3a15bits|Mux1~0_combout\);

-- Location: LCCOMB_X27_Y12_N20
\inst3|i_Mux3a15bits|Mux2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|i_Mux3a15bits|Mux2~3_combout\ = (\inst3|i_Mux3a15bits|Mux2~1_combout\) # ((\inst3|i_Mux3a15bits|Mux2~2_combout\) # ((\inst3|i_SumadorRestador5Bits|GenSum:2:i_Sumador1Bit|s_i~combout\ & \inst3|i_Mux3a15bits|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|i_Mux3a15bits|Mux2~1_combout\,
	datab => \inst3|i_SumadorRestador5Bits|GenSum:2:i_Sumador1Bit|s_i~combout\,
	datac => \inst3|i_Mux3a15bits|Mux2~2_combout\,
	datad => \inst3|i_Mux3a15bits|Mux1~0_combout\,
	combout => \inst3|i_Mux3a15bits|Mux2~3_combout\);

-- Location: LCCOMB_X29_Y9_N28
\inst3|i_SumadorRestador5Bits|GenSum:3:i_Sumador1Bit|s_i~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|i_SumadorRestador5Bits|GenSum:3:i_Sumador1Bit|s_i~0_combout\ = \sel~combout\(0) $ (\a~combout\(3) $ (((\b~combout\(3) & !\sel~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(0),
	datab => \b~combout\(3),
	datac => \a~combout\(3),
	datad => \sel~combout\(1),
	combout => \inst3|i_SumadorRestador5Bits|GenSum:3:i_Sumador1Bit|s_i~0_combout\);

-- Location: LCCOMB_X29_Y9_N30
\inst3|i_Mux3a15bits|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|i_Mux3a15bits|Mux1~2_combout\ = (\inst3|i_Mux3a15bits|Mux1~1_combout\) # ((\inst3|i_Mux3a15bits|Mux1~0_combout\ & (\inst3|i_SumadorRestador5Bits|GenSum:3:i_Sumador1Bit|s_i~0_combout\ $ 
-- (\inst3|i_SumadorRestador5Bits|GenSum:2:i_Sumador1Bit|c_i_mas_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|i_Mux3a15bits|Mux1~1_combout\,
	datab => \inst3|i_SumadorRestador5Bits|GenSum:3:i_Sumador1Bit|s_i~0_combout\,
	datac => \inst3|i_SumadorRestador5Bits|GenSum:2:i_Sumador1Bit|c_i_mas_1~0_combout\,
	datad => \inst3|i_Mux3a15bits|Mux1~0_combout\,
	combout => \inst3|i_Mux3a15bits|Mux1~2_combout\);

-- Location: LCCOMB_X29_Y9_N2
\inst3|i_Mux3a15bits|Mux1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|i_Mux3a15bits|Mux1~4_combout\ = (\inst3|i_Mux3a15bits|Mux1~2_combout\) # ((\inst3|i_Mux3a15bits|Mux1~3_combout\ & !\sel~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|i_Mux3a15bits|Mux1~3_combout\,
	datab => \inst3|i_Mux3a15bits|Mux1~2_combout\,
	datac => \sel~combout\(2),
	combout => \inst3|i_Mux3a15bits|Mux1~4_combout\);

-- Location: LCCOMB_X27_Y12_N14
\inst|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux0~0_combout\ = (\inst3|i_Mux3a15bits|Mux4~2_combout\ & ((\inst3|i_Mux3a15bits|Mux1~4_combout\) # (\inst3|i_Mux3a15bits|Mux3~2_combout\ $ (\inst3|i_Mux3a15bits|Mux2~3_combout\)))) # (!\inst3|i_Mux3a15bits|Mux4~2_combout\ & 
-- ((\inst3|i_Mux3a15bits|Mux3~2_combout\) # (\inst3|i_Mux3a15bits|Mux2~3_combout\ $ (\inst3|i_Mux3a15bits|Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|i_Mux3a15bits|Mux3~2_combout\,
	datab => \inst3|i_Mux3a15bits|Mux4~2_combout\,
	datac => \inst3|i_Mux3a15bits|Mux2~3_combout\,
	datad => \inst3|i_Mux3a15bits|Mux1~4_combout\,
	combout => \inst|Mux0~0_combout\);

-- Location: LCCOMB_X27_Y12_N0
\inst|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux1~0_combout\ = (\inst3|i_Mux3a15bits|Mux3~2_combout\ & (!\inst3|i_Mux3a15bits|Mux1~4_combout\ & ((\inst3|i_Mux3a15bits|Mux4~2_combout\) # (!\inst3|i_Mux3a15bits|Mux2~3_combout\)))) # (!\inst3|i_Mux3a15bits|Mux3~2_combout\ & 
-- (\inst3|i_Mux3a15bits|Mux4~2_combout\ & (\inst3|i_Mux3a15bits|Mux2~3_combout\ $ (!\inst3|i_Mux3a15bits|Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|i_Mux3a15bits|Mux3~2_combout\,
	datab => \inst3|i_Mux3a15bits|Mux4~2_combout\,
	datac => \inst3|i_Mux3a15bits|Mux2~3_combout\,
	datad => \inst3|i_Mux3a15bits|Mux1~4_combout\,
	combout => \inst|Mux1~0_combout\);

-- Location: LCCOMB_X27_Y12_N10
\inst|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux2~0_combout\ = (\inst3|i_Mux3a15bits|Mux3~2_combout\ & (\inst3|i_Mux3a15bits|Mux4~2_combout\ & ((!\inst3|i_Mux3a15bits|Mux1~4_combout\)))) # (!\inst3|i_Mux3a15bits|Mux3~2_combout\ & ((\inst3|i_Mux3a15bits|Mux2~3_combout\ & 
-- ((!\inst3|i_Mux3a15bits|Mux1~4_combout\))) # (!\inst3|i_Mux3a15bits|Mux2~3_combout\ & (\inst3|i_Mux3a15bits|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|i_Mux3a15bits|Mux3~2_combout\,
	datab => \inst3|i_Mux3a15bits|Mux4~2_combout\,
	datac => \inst3|i_Mux3a15bits|Mux2~3_combout\,
	datad => \inst3|i_Mux3a15bits|Mux1~4_combout\,
	combout => \inst|Mux2~0_combout\);

-- Location: LCCOMB_X27_Y12_N12
\inst|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux3~0_combout\ = (\inst3|i_Mux3a15bits|Mux3~2_combout\ & ((\inst3|i_Mux3a15bits|Mux4~2_combout\ & (\inst3|i_Mux3a15bits|Mux2~3_combout\)) # (!\inst3|i_Mux3a15bits|Mux4~2_combout\ & (!\inst3|i_Mux3a15bits|Mux2~3_combout\ & 
-- \inst3|i_Mux3a15bits|Mux1~4_combout\)))) # (!\inst3|i_Mux3a15bits|Mux3~2_combout\ & (!\inst3|i_Mux3a15bits|Mux1~4_combout\ & (\inst3|i_Mux3a15bits|Mux4~2_combout\ $ (\inst3|i_Mux3a15bits|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|i_Mux3a15bits|Mux3~2_combout\,
	datab => \inst3|i_Mux3a15bits|Mux4~2_combout\,
	datac => \inst3|i_Mux3a15bits|Mux2~3_combout\,
	datad => \inst3|i_Mux3a15bits|Mux1~4_combout\,
	combout => \inst|Mux3~0_combout\);

-- Location: LCCOMB_X27_Y12_N22
\inst|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux4~0_combout\ = (\inst3|i_Mux3a15bits|Mux2~3_combout\ & (\inst3|i_Mux3a15bits|Mux1~4_combout\ & ((\inst3|i_Mux3a15bits|Mux3~2_combout\) # (!\inst3|i_Mux3a15bits|Mux4~2_combout\)))) # (!\inst3|i_Mux3a15bits|Mux2~3_combout\ & 
-- (\inst3|i_Mux3a15bits|Mux3~2_combout\ & (!\inst3|i_Mux3a15bits|Mux4~2_combout\ & !\inst3|i_Mux3a15bits|Mux1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|i_Mux3a15bits|Mux3~2_combout\,
	datab => \inst3|i_Mux3a15bits|Mux4~2_combout\,
	datac => \inst3|i_Mux3a15bits|Mux2~3_combout\,
	datad => \inst3|i_Mux3a15bits|Mux1~4_combout\,
	combout => \inst|Mux4~0_combout\);

-- Location: LCCOMB_X27_Y12_N24
\inst|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux5~0_combout\ = (\inst3|i_Mux3a15bits|Mux3~2_combout\ & ((\inst3|i_Mux3a15bits|Mux4~2_combout\ & ((\inst3|i_Mux3a15bits|Mux1~4_combout\))) # (!\inst3|i_Mux3a15bits|Mux4~2_combout\ & (\inst3|i_Mux3a15bits|Mux2~3_combout\)))) # 
-- (!\inst3|i_Mux3a15bits|Mux3~2_combout\ & (\inst3|i_Mux3a15bits|Mux2~3_combout\ & (\inst3|i_Mux3a15bits|Mux4~2_combout\ $ (\inst3|i_Mux3a15bits|Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|i_Mux3a15bits|Mux3~2_combout\,
	datab => \inst3|i_Mux3a15bits|Mux4~2_combout\,
	datac => \inst3|i_Mux3a15bits|Mux2~3_combout\,
	datad => \inst3|i_Mux3a15bits|Mux1~4_combout\,
	combout => \inst|Mux5~0_combout\);

-- Location: LCCOMB_X27_Y12_N2
\inst|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux6~0_combout\ = (\inst3|i_Mux3a15bits|Mux2~3_combout\ & (!\inst3|i_Mux3a15bits|Mux3~2_combout\ & (\inst3|i_Mux3a15bits|Mux4~2_combout\ $ (!\inst3|i_Mux3a15bits|Mux1~4_combout\)))) # (!\inst3|i_Mux3a15bits|Mux2~3_combout\ & 
-- (\inst3|i_Mux3a15bits|Mux4~2_combout\ & (\inst3|i_Mux3a15bits|Mux3~2_combout\ $ (!\inst3|i_Mux3a15bits|Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|i_Mux3a15bits|Mux3~2_combout\,
	datab => \inst3|i_Mux3a15bits|Mux4~2_combout\,
	datac => \inst3|i_Mux3a15bits|Mux2~3_combout\,
	datad => \inst3|i_Mux3a15bits|Mux1~4_combout\,
	combout => \inst|Mux6~0_combout\);

-- Location: LCCOMB_X29_Y9_N6
\inst3|i_Mux3a15bits|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|i_Mux3a15bits|Mux0~1_combout\ = (\inst3|i_Mux3a15bits|Mux0~0_combout\ & !\sel~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|i_Mux3a15bits|Mux0~0_combout\,
	datac => \sel~combout\(2),
	combout => \inst3|i_Mux3a15bits|Mux0~1_combout\);

-- Location: LCCOMB_X29_Y9_N26
\inst3|i_SumadorRestador5Bits|GenSum:4:i_Sumador1Bit|s_i\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|i_SumadorRestador5Bits|GenSum:4:i_Sumador1Bit|s_i~combout\ = \sel~combout\(0) $ (\a~combout\(4) $ (\inst3|i_Mux2a15bits|s[4]~0_combout\ $ (\inst3|i_SumadorRestador5Bits|GenSum:3:i_Sumador1Bit|c_i_mas_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(0),
	datab => \a~combout\(4),
	datac => \inst3|i_Mux2a15bits|s[4]~0_combout\,
	datad => \inst3|i_SumadorRestador5Bits|GenSum:3:i_Sumador1Bit|c_i_mas_1~0_combout\,
	combout => \inst3|i_SumadorRestador5Bits|GenSum:4:i_Sumador1Bit|s_i~combout\);

-- Location: LCCOMB_X29_Y9_N24
\inst3|i_Mux3a15bits|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|i_Mux3a15bits|Mux0~2_combout\ = (\inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~DATAOUT4\ & (\sel~combout\(2) & (\sel~combout\(0) & \sel~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|i_Multiplicador|Mult0|auto_generated|mac_out2~DATAOUT4\,
	datab => \sel~combout\(2),
	datac => \sel~combout\(0),
	datad => \sel~combout\(1),
	combout => \inst3|i_Mux3a15bits|Mux0~2_combout\);

-- Location: LCCOMB_X29_Y9_N4
\inst3|i_Mux3a15bits|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|i_Mux3a15bits|Mux0~3_combout\ = (\inst3|i_Mux3a15bits|Mux0~1_combout\) # ((\inst3|i_Mux3a15bits|Mux0~2_combout\) # ((\inst3|i_SumadorRestador5Bits|GenSum:4:i_Sumador1Bit|s_i~combout\ & \inst3|i_Mux3a15bits|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|i_Mux3a15bits|Mux0~1_combout\,
	datab => \inst3|i_SumadorRestador5Bits|GenSum:4:i_Sumador1Bit|s_i~combout\,
	datac => \inst3|i_Mux3a15bits|Mux0~2_combout\,
	datad => \inst3|i_Mux3a15bits|Mux1~0_combout\,
	combout => \inst3|i_Mux3a15bits|Mux0~3_combout\);

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led~I\ : cycloneii_io
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
	datain => \inst3|i_Mux2a11bit|Selector0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led);

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display1[6]~I\ : cycloneii_io
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
	datain => \inst|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display1(6));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display1[5]~I\ : cycloneii_io
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
	datain => \inst|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display1(5));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display1[4]~I\ : cycloneii_io
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
	datain => \inst|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display1(4));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display1[3]~I\ : cycloneii_io
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
	datain => \inst|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display1(3));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display1[2]~I\ : cycloneii_io
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
	datain => \inst|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display1(2));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display1[1]~I\ : cycloneii_io
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
	datain => \inst|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display1(1));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display1[0]~I\ : cycloneii_io
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
	datain => \inst|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display1(0));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display2[6]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display2(6));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display2[5]~I\ : cycloneii_io
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
	datain => \inst3|i_Mux3a15bits|Mux0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display2(5));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display2[4]~I\ : cycloneii_io
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
	datain => \inst3|i_Mux3a15bits|Mux0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display2(4));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display2[3]~I\ : cycloneii_io
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
	datain => \inst3|i_Mux3a15bits|Mux0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display2(3));

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display2[2]~I\ : cycloneii_io
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
	padio => ww_display2(2));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display2[1]~I\ : cycloneii_io
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
	padio => ww_display2(1));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display2[0]~I\ : cycloneii_io
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
	datain => \inst3|i_Mux3a15bits|Mux0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display2(0));
END structure;


