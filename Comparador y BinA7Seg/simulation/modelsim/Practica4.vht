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
-- Generated on "10/04/2018 22:17:36"
                                                            
-- Vhdl Test Bench template for design  :  Practica4
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Practica4_vhd_tst IS
END Practica4_vhd_tst;
ARCHITECTURE Practica4_arch OF Practica4_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL a_igual_b : STD_LOGIC;
SIGNAL a_mayor_b : STD_LOGIC;
SIGNAL a_menor_b : STD_LOGIC;
SIGNAL b : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL d_a : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL d_b : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT Practica4
	PORT (
	a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	a_igual_b : OUT STD_LOGIC;
	a_mayor_b : OUT STD_LOGIC;
	a_menor_b : OUT STD_LOGIC;
	b : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	d_a : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	d_b : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Practica4
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	a_igual_b => a_igual_b,
	a_mayor_b => a_mayor_b,
	a_menor_b => a_menor_b,
	b => b,
	d_a => d_a,
	d_b => d_b
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
END Practica4_arch;
