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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "12/05/2018 15:46:25"
                                                            
-- Vhdl Test Bench template for design  :  Practica12
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Practica12_vhd_tst IS
END Practica12_vhd_tst;
ARCHITECTURE Practica12_arch OF Practica12_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL abierta : STD_LOGIC;
SIGNAL boton : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL d_a : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL d_b : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL d_c : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL d_d : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL e_p : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL fin : STD_LOGIC;
SIGNAL horno_on : STD_LOGIC;
SIGNAL puerta : STD_LOGIC;
SIGNAL reset_n : STD_LOGIC;
COMPONENT Practica12
	PORT (
	abierta : OUT STD_LOGIC;
	boton : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	d_a : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	d_b : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	d_c : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	d_d : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	e_p : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
	fin : OUT STD_LOGIC;
	horno_on : OUT STD_LOGIC;
	puerta : IN STD_LOGIC;
	reset_n : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Practica12
	PORT MAP (
-- list connections between master ports and signals
	abierta => abierta,
	boton => boton,
	clk => clk,
	d_a => d_a,
	d_b => d_b,
	d_c => d_c,
	d_d => d_d,
	e_p => e_p,
	fin => fin,
	horno_on => horno_on,
	puerta => puerta,
	reset_n => reset_n
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END Practica12_arch;
