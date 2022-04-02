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
-- Generated on "12/05/2018 12:38:20"
                                                            
-- Vhdl Test Bench template for design  :  Practica11
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Practica11_vhd_tst IS
END Practica11_vhd_tst;
ARCHITECTURE Practica11_arch OF Practica11_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL abierta : STD_LOGIC;
SIGNAL boton : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL fin : STD_LOGIC;
SIGNAL horno_on : STD_LOGIC;
SIGNAL mins0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL mins1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL puerta : STD_LOGIC;
SIGNAL reset_n : STD_LOGIC;
SIGNAL seg0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL seg1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL sw : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT Practica11
	PORT (
	abierta : OUT STD_LOGIC;
	boton : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	fin : OUT STD_LOGIC;
	horno_on : OUT STD_LOGIC;
	mins0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	mins1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	puerta : IN STD_LOGIC;
	reset_n : IN STD_LOGIC;
	seg0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	seg1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	sw : IN STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Practica11
	PORT MAP (
-- list connections between master ports and signals
	abierta => abierta,
	boton => boton,
	clk => clk,
	fin => fin,
	horno_on => horno_on,
	mins0 => mins0,
	mins1 => mins1,
	puerta => puerta,
	reset_n => reset_n,
	seg0 => seg0,
	seg1 => seg1,
	sw => sw
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
END Practica11_arch;
