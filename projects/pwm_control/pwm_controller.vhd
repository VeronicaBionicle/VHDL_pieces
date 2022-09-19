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

-- PROGRAM		"Quartus II"
-- VERSION		"Version 11.0 Build 208 07/03/2011 Service Pack 1 SJ Web Edition"
-- CREATED		"Fri Dec 18 17:10:15 2020"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY pwm_controller IS 
	PORT
	(
		clk_frequency :  IN  STD_LOGIC;
		meander :  IN  STD_LOGIC;
		PWM :  OUT  STD_LOGIC;
		out_frequency :  OUT  STD_LOGIC_VECTOR(15 DOWNTO 0);
		saw :  OUT  STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END pwm_controller;

ARCHITECTURE bdf_type OF pwm_controller IS 

COMPONENT comparator
	PORT(dataa : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 datab : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 ageb : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT frequency_block
	PORT(input_signal : IN STD_LOGIC;
		 count : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 k : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT meandr_counter
	PORT(clock : IN STD_LOGIC;
		 cnt_en : IN STD_LOGIC;
		 aclr : IN STD_LOGIC;
		 q : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT sawtooth_breaker
	PORT(count : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 asynchroniusbreak : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT sawtooth
	PORT(clock : IN STD_LOGIC;
		 aclr : IN STD_LOGIC;
		 q : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	saw_signal :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	out_frequency_signal :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;


BEGIN 
out_frequency <= out_frequency_signal;
saw <= saw_signal;



b2v_comparator_inst : comparator
PORT MAP(dataa => saw_signal,
		 datab => out_frequency_signal,
		 ageb => PWM);


b2v_frequency_counter_inst : frequency_block
PORT MAP(input_signal => meander,
		 count => SYNTHESIZED_WIRE_2,
		 k => out_frequency_signal);


SYNTHESIZED_WIRE_3 <= NOT(meander);



b2v_meander_inst : meandr_counter
PORT MAP(clock => clk_frequency,
		 cnt_en => meander,
		 aclr => SYNTHESIZED_WIRE_3,
		 q => SYNTHESIZED_WIRE_2);


b2v_saw_break_inst : sawtooth_breaker
PORT MAP(count => saw_signal,
		 asynchroniusbreak => SYNTHESIZED_WIRE_5);


b2v_saw_inst : sawtooth
PORT MAP(clock => clk_frequency,
		 aclr => SYNTHESIZED_WIRE_5,
		 q => saw_signal);


END bdf_type;