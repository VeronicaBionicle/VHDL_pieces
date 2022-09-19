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
-- Generated on "12/18/2020 17:50:03"
                                                            
-- Vhdl Test Bench template for design  :  pwm_controller
-- 
-- Simulation tool : ModelSim (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY pwm_controller_vhd_tst IS
END pwm_controller_vhd_tst;
ARCHITECTURE pwm_controller_arch OF pwm_controller_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk_frequency : STD_LOGIC;
SIGNAL meander : STD_LOGIC;
SIGNAL out_frequency : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL PWM_out: STD_LOGIC;
SIGNAL saw : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT pwm_controller
	PORT (
	clk_frequency : IN STD_LOGIC;
	meander : IN STD_LOGIC;
	out_frequency : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	PWM : OUT STD_LOGIC;
	saw : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : pwm_controller
	PORT MAP (
-- list connections between master ports and signals
	clk_frequency => clk_frequency,
	meander => meander,
	out_frequency => out_frequency,
	PWM => PWM_out,
	saw => saw
	);
clock: PROCESS BEGIN                                                        
	clk_frequency <= '1'; wait for 10 ns;
	clk_frequency <= '0'; wait for 10 ns;                                                                           
END PROCESS clock;    
                                 
square_in : PROCESS BEGIN                                                         
        meander <= '1'; wait for 25000 ns;
	meander <= '0'; wait for 25000 ns;                                                
END PROCESS square_in;     
                                     
END pwm_controller_arch;
