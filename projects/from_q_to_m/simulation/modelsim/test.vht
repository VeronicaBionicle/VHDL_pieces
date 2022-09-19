-- Copyright (C) 1991-2011 Altera Corporation
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
-- Generated on "12/18/2020 15:55:06"
                                                            
-- Vhdl Test Bench template for design  :  test
-- 
-- Simulation tool : ModelSim (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY test_vhd_tst IS
END test_vhd_tst;
ARCHITECTURE test_arch OF test_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL in_1 : STD_LOGIC;
SIGNAL in_2 : STD_LOGIC;
SIGNAL out_1 : STD_LOGIC;
COMPONENT test
	PORT (
	in_1 : IN STD_LOGIC;
	in_2 : IN STD_LOGIC;
	out_1 : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : test
	PORT MAP (
-- list connections between master ports and signals
	in_1 => in_1,
	in_2 => in_2,
	out_1 => out_1
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
END test_arch;
