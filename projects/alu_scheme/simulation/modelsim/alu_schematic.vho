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

-- VENDOR "Altera"
-- PROGRAM "Quartus II"
-- VERSION "Version 11.0 Build 208 07/03/2011 Service Pack 1 SJ Web Edition"

-- DATE "12/26/2020 12:44:34"

-- 
-- Device: Altera EP1C3T144C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY CYCLONE;
LIBRARY IEEE;
USE CYCLONE.CYCLONE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	alu_schematic IS
    PORT (
	carry : OUT std_logic;
	result : OUT std_logic_vector(7 DOWNTO 0);
	a : IN std_logic_vector(7 DOWNTO 0);
	command : IN std_logic_vector(2 DOWNTO 0);
	b : IN std_logic_vector(7 DOWNTO 0)
	);
END alu_schematic;

-- Design Ports Information
-- carry	=>  Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[7]	=>  Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[6]	=>  Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[5]	=>  Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[4]	=>  Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[3]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[2]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[1]	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[0]	=>  Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- command[1]	=>  Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- command[2]	=>  Location: PIN_82,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[7]	=>  Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[0]	=>  Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- command[0]	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[6]	=>  Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[7]	=>  Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[5]	=>  Location: PIN_83,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[6]	=>  Location: PIN_11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[4]	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[5]	=>  Location: PIN_78,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[3]	=>  Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[4]	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[2]	=>  Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[3]	=>  Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[1]	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[2]	=>  Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[1]	=>  Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[0]	=>  Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF alu_schematic IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_carry : std_logic;
SIGNAL ww_result : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_command : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(7 DOWNTO 0);
SIGNAL \result_mux|LPM_MUX_component|auto_generated|result_node[0]~14_combout\ : std_logic;
SIGNAL \carry_mux|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\ : std_logic;
SIGNAL \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_11\ : std_logic;
SIGNAL \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\ : std_logic;
SIGNAL \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_13\ : std_logic;
SIGNAL \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\ : std_logic;
SIGNAL \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_15\ : std_logic;
SIGNAL \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUT\ : std_logic;
SIGNAL \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_17\ : std_logic;
SIGNAL \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ : std_logic;
SIGNAL \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\ : std_logic;
SIGNAL \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_19\ : std_logic;
SIGNAL \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\ : std_logic;
SIGNAL \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_21\ : std_logic;
SIGNAL \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\ : std_logic;
SIGNAL \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_23\ : std_logic;
SIGNAL \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~0_combout\ : std_logic;
SIGNAL \result_mux|LPM_MUX_component|auto_generated|result_node[0]~15_combout\ : std_logic;
SIGNAL \carry_mux|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \result_mux|LPM_MUX_component|auto_generated|result_node[7]~16_combout\ : std_logic;
SIGNAL \result_mux|LPM_MUX_component|auto_generated|result_node[7]~17_combout\ : std_logic;
SIGNAL \result_mux|LPM_MUX_component|auto_generated|result_node[7]~53_combout\ : std_logic;
SIGNAL \result_mux|LPM_MUX_component|auto_generated|result_node[7]~54_combout\ : std_logic;
SIGNAL \result_mux|LPM_MUX_component|auto_generated|result_node[6]~20_combout\ : std_logic;
SIGNAL \result_mux|LPM_MUX_component|auto_generated|result_node[6]~18_combout\ : std_logic;
SIGNAL \result_mux|LPM_MUX_component|auto_generated|result_node[6]~19_combout\ : std_logic;
SIGNAL \result_mux|LPM_MUX_component|auto_generated|result_node[6]~46_combout\ : std_logic;
SIGNAL \result_mux|LPM_MUX_component|auto_generated|result_node[6]~21_combout\ : std_logic;
SIGNAL \result_mux|LPM_MUX_component|auto_generated|result_node[6]~22_combout\ : std_logic;
SIGNAL \result_mux|LPM_MUX_component|auto_generated|result_node[5]~23_combout\ : std_logic;
SIGNAL \result_mux|LPM_MUX_component|auto_generated|result_node[5]~24_combout\ : std_logic;
SIGNAL \result_mux|LPM_MUX_component|auto_generated|result_node[5]~47_combout\ : std_logic;
SIGNAL \result_mux|LPM_MUX_component|auto_generated|result_node[5]~25_combout\ : std_logic;
SIGNAL \result_mux|LPM_MUX_component|auto_generated|result_node[5]~26_combout\ : std_logic;
SIGNAL \result_mux|LPM_MUX_component|auto_generated|result_node[4]~29_combout\ : std_logic;
SIGNAL \result_mux|LPM_MUX_component|auto_generated|result_node[4]~28_combout\ : std_logic;
SIGNAL \result_mux|LPM_MUX_component|auto_generated|result_node[4]~27_combout\ : std_logic;
SIGNAL \result_mux|LPM_MUX_component|auto_generated|result_node[4]~48_combout\ : std_logic;
SIGNAL \result_mux|LPM_MUX_component|auto_generated|result_node[4]~30_combout\ : std_logic;
SIGNAL \result_mux|LPM_MUX_component|auto_generated|result_node[3]~33_combout\ : std_logic;
SIGNAL \result_mux|LPM_MUX_component|auto_generated|result_node[3]~32_combout\ : std_logic;
SIGNAL \result_mux|LPM_MUX_component|auto_generated|result_node[3]~31_combout\ : std_logic;
SIGNAL \result_mux|LPM_MUX_component|auto_generated|result_node[3]~49_combout\ : std_logic;
SIGNAL \result_mux|LPM_MUX_component|auto_generated|result_node[3]~34_combout\ : std_logic;
SIGNAL \result_mux|LPM_MUX_component|auto_generated|result_node[2]~35_combout\ : std_logic;
SIGNAL \result_mux|LPM_MUX_component|auto_generated|result_node[2]~36_combout\ : std_logic;
SIGNAL \result_mux|LPM_MUX_component|auto_generated|result_node[2]~50_combout\ : std_logic;
SIGNAL \result_mux|LPM_MUX_component|auto_generated|result_node[2]~37_combout\ : std_logic;
SIGNAL \result_mux|LPM_MUX_component|auto_generated|result_node[2]~38_combout\ : std_logic;
SIGNAL \result_mux|LPM_MUX_component|auto_generated|result_node[1]~39_combout\ : std_logic;
SIGNAL \result_mux|LPM_MUX_component|auto_generated|result_node[1]~40_combout\ : std_logic;
SIGNAL \result_mux|LPM_MUX_component|auto_generated|result_node[1]~51_combout\ : std_logic;
SIGNAL \result_mux|LPM_MUX_component|auto_generated|result_node[1]~41_combout\ : std_logic;
SIGNAL \result_mux|LPM_MUX_component|auto_generated|result_node[1]~42_combout\ : std_logic;
SIGNAL \result_mux|LPM_MUX_component|auto_generated|result_node[0]~44_combout\ : std_logic;
SIGNAL \result_mux|LPM_MUX_component|auto_generated|result_node[0]~43_combout\ : std_logic;
SIGNAL \result_mux|LPM_MUX_component|auto_generated|result_node[0]~45_combout\ : std_logic;
SIGNAL \result_mux|LPM_MUX_component|auto_generated|result_node[0]~52_combout\ : std_logic;
SIGNAL \a~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \command~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \add_sub|LPM_ADD_SUB_component|stratix_adder|result\ : std_logic_vector(7 DOWNTO 0);

BEGIN

carry <= ww_carry;
result <= ww_result;
ww_a <= a;
ww_command <= command;
ww_b <= b;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_82,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\command[2]~I\ : cyclone_io
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
	padio => ww_command(2),
	combout => \command~combout\(2));

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\command[1]~I\ : cyclone_io
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
	padio => ww_command(1),
	combout => \command~combout\(1));

-- Location: LC_X21_Y9_N1
\result_mux|LPM_MUX_component|auto_generated|result_node[0]~14\ : cyclone_lcell
-- Equation(s):
-- \result_mux|LPM_MUX_component|auto_generated|result_node[0]~14_combout\ = (((!\command~combout\(2) & \command~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \command~combout\(2),
	datad => \command~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \result_mux|LPM_MUX_component|auto_generated|result_node[0]~14_combout\);

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[7]~I\ : cyclone_io
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
	padio => ww_a(7),
	combout => \a~combout\(7));

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\command[0]~I\ : cyclone_io
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
	padio => ww_command(0),
	combout => \command~combout\(0));

-- Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[0]~I\ : cyclone_io
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

-- Location: LC_X21_Y9_N6
\carry_mux|LPM_MUX_component|auto_generated|result_node[0]~0\ : cyclone_lcell
-- Equation(s):
-- \carry_mux|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = (\result_mux|LPM_MUX_component|auto_generated|result_node[0]~14_combout\ & ((\command~combout\(0) & (\a~combout\(7))) # (!\command~combout\(0) & ((\a~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8a80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \result_mux|LPM_MUX_component|auto_generated|result_node[0]~14_combout\,
	datab => \a~combout\(7),
	datac => \command~combout\(0),
	datad => \a~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \carry_mux|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[4]~I\ : cyclone_io
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

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[4]~I\ : cyclone_io
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

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[3]~I\ : cyclone_io
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

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[3]~I\ : cyclone_io
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

-- Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[2]~I\ : cyclone_io
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

-- Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[2]~I\ : cyclone_io
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

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[1]~I\ : cyclone_io
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

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[1]~I\ : cyclone_io
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

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[0]~I\ : cyclone_io
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

-- Location: LC_X26_Y9_N0
\add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]\ : cyclone_lcell
-- Equation(s):
-- \add_sub|LPM_ADD_SUB_component|stratix_adder|result\(0) = \b~combout\(0) $ \command~combout\(0) $ (\a~combout\(0) $ ((\command~combout\(0))))
-- \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\ = CARRY((\b~combout\(0) $ \command~combout\(0) & (\a~combout\(0) & !\command~combout\(0))) # (!\b~combout\(0) $ \command~combout\(0) & ((\a~combout\(0)) # (!\command~combout\(0)))))
-- \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_11\ = CARRY((\b~combout\(0) $ \command~combout\(0) & (\a~combout\(0) & !\command~combout\(0))) # (!\b~combout\(0) $ \command~combout\(0) & ((\a~combout\(0)) # 
-- (!\command~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(0),
	datab => \a~combout\(0),
	inverta => \command~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_sub|LPM_ADD_SUB_component|stratix_adder|result\(0),
	cout0 => \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\,
	cout1 => \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_11\);

-- Location: LC_X26_Y9_N1
\add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]\ : cyclone_lcell
-- Equation(s):
-- \add_sub|LPM_ADD_SUB_component|stratix_adder|result\(1) = \b~combout\(1) $ \command~combout\(0) $ (\a~combout\(1) $ ((!(!\command~combout\(0) & \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\) # (\command~combout\(0) & 
-- \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_11\))))
-- \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\ = CARRY((\b~combout\(1) $ \command~combout\(0) & ((!\add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\) # (!\a~combout\(1)))) # (!\b~combout\(1) $ \command~combout\(0) & 
-- (!\a~combout\(1) & !\add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\)))
-- \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_13\ = CARRY((\b~combout\(1) $ \command~combout\(0) & ((!\add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_11\) # (!\a~combout\(1)))) # (!\b~combout\(1) $ 
-- \command~combout\(0) & (!\a~combout\(1) & !\add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_11\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datab => \a~combout\(1),
	cin0 => \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\,
	cin1 => \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_11\,
	inverta => \command~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_sub|LPM_ADD_SUB_component|stratix_adder|result\(1),
	cout0 => \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\,
	cout1 => \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_13\);

-- Location: LC_X26_Y9_N2
\add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]\ : cyclone_lcell
-- Equation(s):
-- \add_sub|LPM_ADD_SUB_component|stratix_adder|result\(2) = \b~combout\(2) $ \command~combout\(0) $ (\a~combout\(2) $ (((!\command~combout\(0) & \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\) # (\command~combout\(0) & 
-- \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_13\))))
-- \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\ = CARRY((\b~combout\(2) $ \command~combout\(0) & (\a~combout\(2) & !\add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\)) # (!\b~combout\(2) $ \command~combout\(0) & 
-- ((\a~combout\(2)) # (!\add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\))))
-- \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_15\ = CARRY((\b~combout\(2) $ \command~combout\(0) & (\a~combout\(2) & !\add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_13\)) # (!\b~combout\(2) $ 
-- \command~combout\(0) & ((\a~combout\(2)) # (!\add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_13\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datab => \a~combout\(2),
	cin0 => \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\,
	cin1 => \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_13\,
	inverta => \command~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_sub|LPM_ADD_SUB_component|stratix_adder|result\(2),
	cout0 => \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\,
	cout1 => \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_15\);

-- Location: LC_X26_Y9_N3
\add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]\ : cyclone_lcell
-- Equation(s):
-- \add_sub|LPM_ADD_SUB_component|stratix_adder|result\(3) = \b~combout\(3) $ \command~combout\(0) $ (\a~combout\(3) $ ((!(!\command~combout\(0) & \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\) # (\command~combout\(0) & 
-- \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_15\))))
-- \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUT\ = CARRY((\b~combout\(3) $ \command~combout\(0) & ((!\add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\) # (!\a~combout\(3)))) # (!\b~combout\(3) $ \command~combout\(0) & 
-- (!\a~combout\(3) & !\add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\)))
-- \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_17\ = CARRY((\b~combout\(3) $ \command~combout\(0) & ((!\add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_15\) # (!\a~combout\(3)))) # (!\b~combout\(3) $ 
-- \command~combout\(0) & (!\a~combout\(3) & !\add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_15\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(3),
	datab => \a~combout\(3),
	cin0 => \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\,
	cin1 => \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_15\,
	inverta => \command~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_sub|LPM_ADD_SUB_component|stratix_adder|result\(3),
	cout0 => \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUT\,
	cout1 => \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_17\);

-- Location: LC_X26_Y9_N4
\add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]\ : cyclone_lcell
-- Equation(s):
-- \add_sub|LPM_ADD_SUB_component|stratix_adder|result\(4) = \b~combout\(4) $ \command~combout\(0) $ (\a~combout\(4) $ (((!\command~combout\(0) & \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUT\) # (\command~combout\(0) & 
-- \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_17\))))
-- \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ = CARRY((\b~combout\(4) $ \command~combout\(0) & (\a~combout\(4) & !\add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_17\)) # (!\b~combout\(4) $ \command~combout\(0) & 
-- ((\a~combout\(4)) # (!\add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_17\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(4),
	datab => \a~combout\(4),
	cin0 => \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUT\,
	cin1 => \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_17\,
	inverta => \command~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_sub|LPM_ADD_SUB_component|stratix_adder|result\(4),
	cout => \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\);

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[7]~I\ : cyclone_io
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
	padio => ww_b(7),
	combout => \b~combout\(7));

-- Location: PIN_11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[6]~I\ : cyclone_io
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
	padio => ww_b(6),
	combout => \b~combout\(6));

-- Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[6]~I\ : cyclone_io
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
	padio => ww_a(6),
	combout => \a~combout\(6));

-- Location: PIN_78,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[5]~I\ : cyclone_io
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
	padio => ww_b(5),
	combout => \b~combout\(5));

-- Location: PIN_83,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[5]~I\ : cyclone_io
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
	padio => ww_a(5),
	combout => \a~combout\(5));

-- Location: LC_X26_Y9_N5
\add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]\ : cyclone_lcell
-- Equation(s):
-- \add_sub|LPM_ADD_SUB_component|stratix_adder|result\(5) = \b~combout\(5) $ \command~combout\(0) $ (\a~combout\(5) $ ((!\add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\)))
-- \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\ = CARRY((\b~combout\(5) $ \command~combout\(0) & ((!\add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\) # (!\a~combout\(5)))) # (!\b~combout\(5) $ \command~combout\(0) & 
-- (!\a~combout\(5) & !\add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\)))
-- \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_19\ = CARRY((\b~combout\(5) $ \command~combout\(0) & ((!\add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\) # (!\a~combout\(5)))) # (!\b~combout\(5) $ 
-- \command~combout\(0) & (!\a~combout\(5) & !\add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(5),
	datab => \a~combout\(5),
	cin => \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\,
	inverta => \command~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_sub|LPM_ADD_SUB_component|stratix_adder|result\(5),
	cout0 => \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\,
	cout1 => \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_19\);

-- Location: LC_X26_Y9_N6
\add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]\ : cyclone_lcell
-- Equation(s):
-- \add_sub|LPM_ADD_SUB_component|stratix_adder|result\(6) = \b~combout\(6) $ \command~combout\(0) $ (\a~combout\(6) $ (((!\add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & 
-- \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\) # (\add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_19\))))
-- \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\ = CARRY((\b~combout\(6) $ \command~combout\(0) & (\a~combout\(6) & !\add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\)) # (!\b~combout\(6) $ \command~combout\(0) & 
-- ((\a~combout\(6)) # (!\add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\))))
-- \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_21\ = CARRY((\b~combout\(6) $ \command~combout\(0) & (\a~combout\(6) & !\add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_19\)) # (!\b~combout\(6) $ 
-- \command~combout\(0) & ((\a~combout\(6)) # (!\add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_19\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(6),
	datab => \a~combout\(6),
	cin => \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\,
	cin0 => \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\,
	cin1 => \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_19\,
	inverta => \command~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_sub|LPM_ADD_SUB_component|stratix_adder|result\(6),
	cout0 => \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\,
	cout1 => \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_21\);

-- Location: LC_X26_Y9_N7
\add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]\ : cyclone_lcell
-- Equation(s):
-- \add_sub|LPM_ADD_SUB_component|stratix_adder|result\(7) = \b~combout\(7) $ \command~combout\(0) $ (\a~combout\(7) $ ((!(!\add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & 
-- \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\) # (\add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_21\))))
-- \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\ = CARRY((\b~combout\(7) $ \command~combout\(0) & ((!\add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\) # (!\a~combout\(7)))) # (!\b~combout\(7) $ \command~combout\(0) & 
-- (!\a~combout\(7) & !\add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\)))
-- \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_23\ = CARRY((\b~combout\(7) $ \command~combout\(0) & ((!\add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_21\) # (!\a~combout\(7)))) # (!\b~combout\(7) $ 
-- \command~combout\(0) & (!\a~combout\(7) & !\add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_21\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(7),
	datab => \a~combout\(7),
	cin => \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\,
	cin0 => \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\,
	cin1 => \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_21\,
	inverta => \command~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_sub|LPM_ADD_SUB_component|stratix_adder|result\(7),
	cout0 => \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\,
	cout1 => \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_23\);

-- Location: LC_X26_Y9_N8
\add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~0\ : cyclone_lcell
-- Equation(s):
-- \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~0_combout\ = (((!(!\add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\) # 
-- (\add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_23\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\,
	cin0 => \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\,
	cin1 => \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_23\,
	inverta => \command~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~0_combout\);

-- Location: LC_X20_Y9_N7
\result_mux|LPM_MUX_component|auto_generated|result_node[0]~15\ : cyclone_lcell
-- Equation(s):
-- \result_mux|LPM_MUX_component|auto_generated|result_node[0]~15_combout\ = (((!\command~combout\(2) & !\command~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \command~combout\(2),
	datad => \command~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \result_mux|LPM_MUX_component|auto_generated|result_node[0]~15_combout\);

-- Location: LC_X21_Y9_N2
\carry_mux|LPM_MUX_component|auto_generated|result_node[0]~1\ : cyclone_lcell
-- Equation(s):
-- \carry_mux|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ = (\carry_mux|LPM_MUX_component|auto_generated|result_node[0]~0_combout\) # ((\result_mux|LPM_MUX_component|auto_generated|result_node[0]~15_combout\ & 
-- (\add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~0_combout\ $ (!\command~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ebaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \carry_mux|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datab => \add_sub|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~0_combout\,
	datac => \command~combout\(0),
	datad => \result_mux|LPM_MUX_component|auto_generated|result_node[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \carry_mux|LPM_MUX_component|auto_generated|result_node[0]~1_combout\);

-- Location: LC_X26_Y9_N9
\result_mux|LPM_MUX_component|auto_generated|result_node[7]~16\ : cyclone_lcell
-- Equation(s):
-- \result_mux|LPM_MUX_component|auto_generated|result_node[7]~16_combout\ = (((\a~combout\(6) & \command~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(6),
	datad => \command~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \result_mux|LPM_MUX_component|auto_generated|result_node[7]~16_combout\);

-- Location: LC_X20_Y9_N9
\result_mux|LPM_MUX_component|auto_generated|result_node[7]~17\ : cyclone_lcell
-- Equation(s):
-- \result_mux|LPM_MUX_component|auto_generated|result_node[7]~17_combout\ = (!\command~combout\(2) & ((\command~combout\(1) & (\result_mux|LPM_MUX_component|auto_generated|result_node[7]~16_combout\)) # (!\command~combout\(1) & 
-- ((\add_sub|LPM_ADD_SUB_component|stratix_adder|result\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2230",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \result_mux|LPM_MUX_component|auto_generated|result_node[7]~16_combout\,
	datab => \command~combout\(2),
	datac => \add_sub|LPM_ADD_SUB_component|stratix_adder|result\(7),
	datad => \command~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \result_mux|LPM_MUX_component|auto_generated|result_node[7]~17_combout\);

-- Location: LC_X18_Y4_N2
\result_mux|LPM_MUX_component|auto_generated|result_node[7]~53\ : cyclone_lcell
-- Equation(s):
-- \result_mux|LPM_MUX_component|auto_generated|result_node[7]~53_combout\ = (\a~combout\(7) & (\command~combout\(1) $ (((\b~combout\(7) & \command~combout\(0)))))) # (!\a~combout\(7) & ((\command~combout\(1) & (\b~combout\(7))) # (!\command~combout\(1) & 
-- ((!\command~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6e83",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(7),
	datab => \a~combout\(7),
	datac => \command~combout\(0),
	datad => \command~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \result_mux|LPM_MUX_component|auto_generated|result_node[7]~53_combout\);

-- Location: LC_X18_Y4_N4
\result_mux|LPM_MUX_component|auto_generated|result_node[7]~54\ : cyclone_lcell
-- Equation(s):
-- \result_mux|LPM_MUX_component|auto_generated|result_node[7]~54_combout\ = ((\result_mux|LPM_MUX_component|auto_generated|result_node[7]~17_combout\) # ((\result_mux|LPM_MUX_component|auto_generated|result_node[7]~53_combout\ & \command~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \result_mux|LPM_MUX_component|auto_generated|result_node[7]~17_combout\,
	datac => \result_mux|LPM_MUX_component|auto_generated|result_node[7]~53_combout\,
	datad => \command~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \result_mux|LPM_MUX_component|auto_generated|result_node[7]~54_combout\);

-- Location: LC_X18_Y5_N0
\result_mux|LPM_MUX_component|auto_generated|result_node[6]~20\ : cyclone_lcell
-- Equation(s):
-- \result_mux|LPM_MUX_component|auto_generated|result_node[6]~20_combout\ = (\command~combout\(0) & (\a~combout\(5))) # (!\command~combout\(0) & (((\a~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \command~combout\(0),
	datab => \a~combout\(5),
	datad => \a~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \result_mux|LPM_MUX_component|auto_generated|result_node[6]~20_combout\);

-- Location: LC_X20_Y9_N0
\result_mux|LPM_MUX_component|auto_generated|result_node[6]~18\ : cyclone_lcell
-- Equation(s):
-- \result_mux|LPM_MUX_component|auto_generated|result_node[6]~18_combout\ = (!\command~combout\(0) & (((\command~combout\(2) & \command~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \command~combout\(0),
	datac => \command~combout\(2),
	datad => \command~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \result_mux|LPM_MUX_component|auto_generated|result_node[6]~18_combout\);

-- Location: LC_X18_Y5_N9
\result_mux|LPM_MUX_component|auto_generated|result_node[6]~19\ : cyclone_lcell
-- Equation(s):
-- \result_mux|LPM_MUX_component|auto_generated|result_node[6]~19_combout\ = (\result_mux|LPM_MUX_component|auto_generated|result_node[6]~18_combout\ & ((\a~combout\(6)) # ((\result_mux|LPM_MUX_component|auto_generated|result_node[0]~15_combout\ & 
-- \add_sub|LPM_ADD_SUB_component|stratix_adder|result\(6))))) # (!\result_mux|LPM_MUX_component|auto_generated|result_node[6]~18_combout\ & (\result_mux|LPM_MUX_component|auto_generated|result_node[0]~15_combout\ & 
-- (\add_sub|LPM_ADD_SUB_component|stratix_adder|result\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \result_mux|LPM_MUX_component|auto_generated|result_node[6]~18_combout\,
	datab => \result_mux|LPM_MUX_component|auto_generated|result_node[0]~15_combout\,
	datac => \add_sub|LPM_ADD_SUB_component|stratix_adder|result\(6),
	datad => \a~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \result_mux|LPM_MUX_component|auto_generated|result_node[6]~19_combout\);

-- Location: LC_X18_Y5_N8
\result_mux|LPM_MUX_component|auto_generated|result_node[6]~46\ : cyclone_lcell
-- Equation(s):
-- \result_mux|LPM_MUX_component|auto_generated|result_node[6]~46_combout\ = (\result_mux|LPM_MUX_component|auto_generated|result_node[6]~19_combout\) # ((!\command~combout\(2) & (\result_mux|LPM_MUX_component|auto_generated|result_node[6]~20_combout\ & 
-- \command~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \command~combout\(2),
	datab => \result_mux|LPM_MUX_component|auto_generated|result_node[6]~20_combout\,
	datac => \result_mux|LPM_MUX_component|auto_generated|result_node[6]~19_combout\,
	datad => \command~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \result_mux|LPM_MUX_component|auto_generated|result_node[6]~46_combout\);

-- Location: LC_X18_Y5_N1
\result_mux|LPM_MUX_component|auto_generated|result_node[6]~21\ : cyclone_lcell
-- Equation(s):
-- \result_mux|LPM_MUX_component|auto_generated|result_node[6]~21_combout\ = (\a~combout\(6) & ((\command~combout\(1) $ (!\b~combout\(6))) # (!\command~combout\(0)))) # (!\a~combout\(6) & ((\command~combout\(1) & (!\b~combout\(6))) # (!\command~combout\(1) & 
-- ((\command~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "97ae",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(6),
	datab => \command~combout\(1),
	datac => \b~combout\(6),
	datad => \command~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \result_mux|LPM_MUX_component|auto_generated|result_node[6]~21_combout\);

-- Location: LC_X18_Y5_N4
\result_mux|LPM_MUX_component|auto_generated|result_node[6]~22\ : cyclone_lcell
-- Equation(s):
-- \result_mux|LPM_MUX_component|auto_generated|result_node[6]~22_combout\ = ((\result_mux|LPM_MUX_component|auto_generated|result_node[6]~46_combout\) # ((\command~combout\(2) & !\result_mux|LPM_MUX_component|auto_generated|result_node[6]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0fa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \command~combout\(2),
	datac => \result_mux|LPM_MUX_component|auto_generated|result_node[6]~46_combout\,
	datad => \result_mux|LPM_MUX_component|auto_generated|result_node[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \result_mux|LPM_MUX_component|auto_generated|result_node[6]~22_combout\);

-- Location: LC_X18_Y5_N5
\result_mux|LPM_MUX_component|auto_generated|result_node[5]~23\ : cyclone_lcell
-- Equation(s):
-- \result_mux|LPM_MUX_component|auto_generated|result_node[5]~23_combout\ = (\result_mux|LPM_MUX_component|auto_generated|result_node[6]~18_combout\ & ((\a~combout\(5)) # ((\result_mux|LPM_MUX_component|auto_generated|result_node[0]~15_combout\ & 
-- \add_sub|LPM_ADD_SUB_component|stratix_adder|result\(5))))) # (!\result_mux|LPM_MUX_component|auto_generated|result_node[6]~18_combout\ & (\result_mux|LPM_MUX_component|auto_generated|result_node[0]~15_combout\ & 
-- (\add_sub|LPM_ADD_SUB_component|stratix_adder|result\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \result_mux|LPM_MUX_component|auto_generated|result_node[6]~18_combout\,
	datab => \result_mux|LPM_MUX_component|auto_generated|result_node[0]~15_combout\,
	datac => \add_sub|LPM_ADD_SUB_component|stratix_adder|result\(5),
	datad => \a~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \result_mux|LPM_MUX_component|auto_generated|result_node[5]~23_combout\);

-- Location: LC_X18_Y5_N7
\result_mux|LPM_MUX_component|auto_generated|result_node[5]~24\ : cyclone_lcell
-- Equation(s):
-- \result_mux|LPM_MUX_component|auto_generated|result_node[5]~24_combout\ = ((\command~combout\(0) & ((\a~combout\(4)))) # (!\command~combout\(0) & (\a~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(6),
	datac => \a~combout\(4),
	datad => \command~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \result_mux|LPM_MUX_component|auto_generated|result_node[5]~24_combout\);

-- Location: LC_X18_Y5_N3
\result_mux|LPM_MUX_component|auto_generated|result_node[5]~47\ : cyclone_lcell
-- Equation(s):
-- \result_mux|LPM_MUX_component|auto_generated|result_node[5]~47_combout\ = (\result_mux|LPM_MUX_component|auto_generated|result_node[5]~23_combout\) # ((!\command~combout\(2) & (\result_mux|LPM_MUX_component|auto_generated|result_node[5]~24_combout\ & 
-- \command~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \command~combout\(2),
	datab => \result_mux|LPM_MUX_component|auto_generated|result_node[5]~23_combout\,
	datac => \result_mux|LPM_MUX_component|auto_generated|result_node[5]~24_combout\,
	datad => \command~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \result_mux|LPM_MUX_component|auto_generated|result_node[5]~47_combout\);

-- Location: LC_X18_Y5_N2
\result_mux|LPM_MUX_component|auto_generated|result_node[5]~25\ : cyclone_lcell
-- Equation(s):
-- \result_mux|LPM_MUX_component|auto_generated|result_node[5]~25_combout\ = (\a~combout\(5) & ((\b~combout\(5) $ (!\command~combout\(1))) # (!\command~combout\(0)))) # (!\a~combout\(5) & ((\command~combout\(1) & ((!\b~combout\(5)))) # (!\command~combout\(1) 
-- & (\command~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c76e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \command~combout\(0),
	datab => \a~combout\(5),
	datac => \b~combout\(5),
	datad => \command~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \result_mux|LPM_MUX_component|auto_generated|result_node[5]~25_combout\);

-- Location: LC_X18_Y5_N6
\result_mux|LPM_MUX_component|auto_generated|result_node[5]~26\ : cyclone_lcell
-- Equation(s):
-- \result_mux|LPM_MUX_component|auto_generated|result_node[5]~26_combout\ = ((\result_mux|LPM_MUX_component|auto_generated|result_node[5]~47_combout\) # ((!\result_mux|LPM_MUX_component|auto_generated|result_node[5]~25_combout\ & \command~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \result_mux|LPM_MUX_component|auto_generated|result_node[5]~47_combout\,
	datac => \result_mux|LPM_MUX_component|auto_generated|result_node[5]~25_combout\,
	datad => \command~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \result_mux|LPM_MUX_component|auto_generated|result_node[5]~26_combout\);

-- Location: LC_X20_Y9_N4
\result_mux|LPM_MUX_component|auto_generated|result_node[4]~29\ : cyclone_lcell
-- Equation(s):
-- \result_mux|LPM_MUX_component|auto_generated|result_node[4]~29_combout\ = (\a~combout\(4) & ((\b~combout\(4) $ (!\command~combout\(1))) # (!\command~combout\(0)))) # (!\a~combout\(4) & ((\command~combout\(1) & ((!\b~combout\(4)))) # (!\command~combout\(1) 
-- & (\command~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c76e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \command~combout\(0),
	datab => \a~combout\(4),
	datac => \b~combout\(4),
	datad => \command~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \result_mux|LPM_MUX_component|auto_generated|result_node[4]~29_combout\);

-- Location: LC_X20_Y9_N6
\result_mux|LPM_MUX_component|auto_generated|result_node[4]~28\ : cyclone_lcell
-- Equation(s):
-- \result_mux|LPM_MUX_component|auto_generated|result_node[4]~28_combout\ = (\command~combout\(0) & (((\a~combout\(3))))) # (!\command~combout\(0) & (\a~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4e4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \command~combout\(0),
	datab => \a~combout\(5),
	datac => \a~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \result_mux|LPM_MUX_component|auto_generated|result_node[4]~28_combout\);

-- Location: LC_X20_Y9_N8
\result_mux|LPM_MUX_component|auto_generated|result_node[4]~27\ : cyclone_lcell
-- Equation(s):
-- \result_mux|LPM_MUX_component|auto_generated|result_node[4]~27_combout\ = (\result_mux|LPM_MUX_component|auto_generated|result_node[0]~15_combout\ & ((\add_sub|LPM_ADD_SUB_component|stratix_adder|result\(4)) # ((\a~combout\(4) & 
-- \result_mux|LPM_MUX_component|auto_generated|result_node[6]~18_combout\)))) # (!\result_mux|LPM_MUX_component|auto_generated|result_node[0]~15_combout\ & (\a~combout\(4) & ((\result_mux|LPM_MUX_component|auto_generated|result_node[6]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \result_mux|LPM_MUX_component|auto_generated|result_node[0]~15_combout\,
	datab => \a~combout\(4),
	datac => \add_sub|LPM_ADD_SUB_component|stratix_adder|result\(4),
	datad => \result_mux|LPM_MUX_component|auto_generated|result_node[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \result_mux|LPM_MUX_component|auto_generated|result_node[4]~27_combout\);

-- Location: LC_X20_Y9_N1
\result_mux|LPM_MUX_component|auto_generated|result_node[4]~48\ : cyclone_lcell
-- Equation(s):
-- \result_mux|LPM_MUX_component|auto_generated|result_node[4]~48_combout\ = (\result_mux|LPM_MUX_component|auto_generated|result_node[4]~27_combout\) # ((\result_mux|LPM_MUX_component|auto_generated|result_node[4]~28_combout\ & (!\command~combout\(2) & 
-- \command~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \result_mux|LPM_MUX_component|auto_generated|result_node[4]~28_combout\,
	datab => \command~combout\(2),
	datac => \result_mux|LPM_MUX_component|auto_generated|result_node[4]~27_combout\,
	datad => \command~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \result_mux|LPM_MUX_component|auto_generated|result_node[4]~48_combout\);

-- Location: LC_X20_Y9_N2
\result_mux|LPM_MUX_component|auto_generated|result_node[4]~30\ : cyclone_lcell
-- Equation(s):
-- \result_mux|LPM_MUX_component|auto_generated|result_node[4]~30_combout\ = ((\result_mux|LPM_MUX_component|auto_generated|result_node[4]~48_combout\) # ((!\result_mux|LPM_MUX_component|auto_generated|result_node[4]~29_combout\ & \command~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \result_mux|LPM_MUX_component|auto_generated|result_node[4]~29_combout\,
	datac => \command~combout\(2),
	datad => \result_mux|LPM_MUX_component|auto_generated|result_node[4]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \result_mux|LPM_MUX_component|auto_generated|result_node[4]~30_combout\);

-- Location: LC_X24_Y8_N5
\result_mux|LPM_MUX_component|auto_generated|result_node[3]~33\ : cyclone_lcell
-- Equation(s):
-- \result_mux|LPM_MUX_component|auto_generated|result_node[3]~33_combout\ = (\a~combout\(3) & ((\b~combout\(3) $ (!\command~combout\(1))) # (!\command~combout\(0)))) # (!\a~combout\(3) & ((\command~combout\(1) & ((!\b~combout\(3)))) # (!\command~combout\(1) 
-- & (\command~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d73a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \command~combout\(0),
	datab => \b~combout\(3),
	datac => \command~combout\(1),
	datad => \a~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \result_mux|LPM_MUX_component|auto_generated|result_node[3]~33_combout\);

-- Location: LC_X24_Y8_N9
\result_mux|LPM_MUX_component|auto_generated|result_node[3]~32\ : cyclone_lcell
-- Equation(s):
-- \result_mux|LPM_MUX_component|auto_generated|result_node[3]~32_combout\ = (\command~combout\(0) & (((\a~combout\(2))))) # (!\command~combout\(0) & (((\a~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \command~combout\(0),
	datac => \a~combout\(4),
	datad => \a~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \result_mux|LPM_MUX_component|auto_generated|result_node[3]~32_combout\);

-- Location: LC_X24_Y8_N8
\result_mux|LPM_MUX_component|auto_generated|result_node[3]~31\ : cyclone_lcell
-- Equation(s):
-- \result_mux|LPM_MUX_component|auto_generated|result_node[3]~31_combout\ = (\add_sub|LPM_ADD_SUB_component|stratix_adder|result\(3) & ((\result_mux|LPM_MUX_component|auto_generated|result_node[0]~15_combout\) # 
-- ((\result_mux|LPM_MUX_component|auto_generated|result_node[6]~18_combout\ & \a~combout\(3))))) # (!\add_sub|LPM_ADD_SUB_component|stratix_adder|result\(3) & (((\result_mux|LPM_MUX_component|auto_generated|result_node[6]~18_combout\ & \a~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub|LPM_ADD_SUB_component|stratix_adder|result\(3),
	datab => \result_mux|LPM_MUX_component|auto_generated|result_node[0]~15_combout\,
	datac => \result_mux|LPM_MUX_component|auto_generated|result_node[6]~18_combout\,
	datad => \a~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \result_mux|LPM_MUX_component|auto_generated|result_node[3]~31_combout\);

-- Location: LC_X24_Y8_N1
\result_mux|LPM_MUX_component|auto_generated|result_node[3]~49\ : cyclone_lcell
-- Equation(s):
-- \result_mux|LPM_MUX_component|auto_generated|result_node[3]~49_combout\ = (\result_mux|LPM_MUX_component|auto_generated|result_node[3]~31_combout\) # ((\result_mux|LPM_MUX_component|auto_generated|result_node[3]~32_combout\ & (\command~combout\(1) & 
-- !\command~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \result_mux|LPM_MUX_component|auto_generated|result_node[3]~32_combout\,
	datab => \result_mux|LPM_MUX_component|auto_generated|result_node[3]~31_combout\,
	datac => \command~combout\(1),
	datad => \command~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \result_mux|LPM_MUX_component|auto_generated|result_node[3]~49_combout\);

-- Location: LC_X24_Y8_N2
\result_mux|LPM_MUX_component|auto_generated|result_node[3]~34\ : cyclone_lcell
-- Equation(s):
-- \result_mux|LPM_MUX_component|auto_generated|result_node[3]~34_combout\ = ((\result_mux|LPM_MUX_component|auto_generated|result_node[3]~49_combout\) # ((\command~combout\(2) & !\result_mux|LPM_MUX_component|auto_generated|result_node[3]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \command~combout\(2),
	datab => \result_mux|LPM_MUX_component|auto_generated|result_node[3]~33_combout\,
	datad => \result_mux|LPM_MUX_component|auto_generated|result_node[3]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \result_mux|LPM_MUX_component|auto_generated|result_node[3]~34_combout\);

-- Location: LC_X24_Y8_N0
\result_mux|LPM_MUX_component|auto_generated|result_node[2]~35\ : cyclone_lcell
-- Equation(s):
-- \result_mux|LPM_MUX_component|auto_generated|result_node[2]~35_combout\ = (\add_sub|LPM_ADD_SUB_component|stratix_adder|result\(2) & ((\result_mux|LPM_MUX_component|auto_generated|result_node[0]~15_combout\) # 
-- ((\result_mux|LPM_MUX_component|auto_generated|result_node[6]~18_combout\ & \a~combout\(2))))) # (!\add_sub|LPM_ADD_SUB_component|stratix_adder|result\(2) & (((\result_mux|LPM_MUX_component|auto_generated|result_node[6]~18_combout\ & \a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub|LPM_ADD_SUB_component|stratix_adder|result\(2),
	datab => \result_mux|LPM_MUX_component|auto_generated|result_node[0]~15_combout\,
	datac => \result_mux|LPM_MUX_component|auto_generated|result_node[6]~18_combout\,
	datad => \a~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \result_mux|LPM_MUX_component|auto_generated|result_node[2]~35_combout\);

-- Location: LC_X24_Y8_N6
\result_mux|LPM_MUX_component|auto_generated|result_node[2]~36\ : cyclone_lcell
-- Equation(s):
-- \result_mux|LPM_MUX_component|auto_generated|result_node[2]~36_combout\ = ((\command~combout\(0) & (\a~combout\(1))) # (!\command~combout\(0) & ((\a~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(1),
	datac => \command~combout\(0),
	datad => \a~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \result_mux|LPM_MUX_component|auto_generated|result_node[2]~36_combout\);

-- Location: LC_X24_Y8_N3
\result_mux|LPM_MUX_component|auto_generated|result_node[2]~50\ : cyclone_lcell
-- Equation(s):
-- \result_mux|LPM_MUX_component|auto_generated|result_node[2]~50_combout\ = (\result_mux|LPM_MUX_component|auto_generated|result_node[2]~35_combout\) # ((!\command~combout\(2) & (\command~combout\(1) & 
-- \result_mux|LPM_MUX_component|auto_generated|result_node[2]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \command~combout\(2),
	datab => \result_mux|LPM_MUX_component|auto_generated|result_node[2]~35_combout\,
	datac => \command~combout\(1),
	datad => \result_mux|LPM_MUX_component|auto_generated|result_node[2]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \result_mux|LPM_MUX_component|auto_generated|result_node[2]~50_combout\);

-- Location: LC_X24_Y8_N7
\result_mux|LPM_MUX_component|auto_generated|result_node[2]~37\ : cyclone_lcell
-- Equation(s):
-- \result_mux|LPM_MUX_component|auto_generated|result_node[2]~37_combout\ = (\a~combout\(2) & ((\b~combout\(2) $ (!\command~combout\(1))) # (!\command~combout\(0)))) # (!\a~combout\(2) & ((\command~combout\(1) & ((!\b~combout\(2)))) # (!\command~combout\(1) 
-- & (\command~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d73a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \command~combout\(0),
	datab => \b~combout\(2),
	datac => \command~combout\(1),
	datad => \a~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \result_mux|LPM_MUX_component|auto_generated|result_node[2]~37_combout\);

-- Location: LC_X24_Y8_N4
\result_mux|LPM_MUX_component|auto_generated|result_node[2]~38\ : cyclone_lcell
-- Equation(s):
-- \result_mux|LPM_MUX_component|auto_generated|result_node[2]~38_combout\ = ((\result_mux|LPM_MUX_component|auto_generated|result_node[2]~50_combout\) # ((!\result_mux|LPM_MUX_component|auto_generated|result_node[2]~37_combout\ & \command~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \result_mux|LPM_MUX_component|auto_generated|result_node[2]~50_combout\,
	datac => \result_mux|LPM_MUX_component|auto_generated|result_node[2]~37_combout\,
	datad => \command~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \result_mux|LPM_MUX_component|auto_generated|result_node[2]~38_combout\);

-- Location: LC_X21_Y9_N7
\result_mux|LPM_MUX_component|auto_generated|result_node[1]~39\ : cyclone_lcell
-- Equation(s):
-- \result_mux|LPM_MUX_component|auto_generated|result_node[1]~39_combout\ = (\add_sub|LPM_ADD_SUB_component|stratix_adder|result\(1) & ((\result_mux|LPM_MUX_component|auto_generated|result_node[0]~15_combout\) # 
-- ((\result_mux|LPM_MUX_component|auto_generated|result_node[6]~18_combout\ & \a~combout\(1))))) # (!\add_sub|LPM_ADD_SUB_component|stratix_adder|result\(1) & (((\result_mux|LPM_MUX_component|auto_generated|result_node[6]~18_combout\ & \a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub|LPM_ADD_SUB_component|stratix_adder|result\(1),
	datab => \result_mux|LPM_MUX_component|auto_generated|result_node[0]~15_combout\,
	datac => \result_mux|LPM_MUX_component|auto_generated|result_node[6]~18_combout\,
	datad => \a~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \result_mux|LPM_MUX_component|auto_generated|result_node[1]~39_combout\);

-- Location: LC_X21_Y9_N0
\result_mux|LPM_MUX_component|auto_generated|result_node[1]~40\ : cyclone_lcell
-- Equation(s):
-- \result_mux|LPM_MUX_component|auto_generated|result_node[1]~40_combout\ = ((\command~combout\(0) & (\a~combout\(0))) # (!\command~combout\(0) & ((\a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datac => \command~combout\(0),
	datad => \a~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \result_mux|LPM_MUX_component|auto_generated|result_node[1]~40_combout\);

-- Location: LC_X21_Y9_N8
\result_mux|LPM_MUX_component|auto_generated|result_node[1]~51\ : cyclone_lcell
-- Equation(s):
-- \result_mux|LPM_MUX_component|auto_generated|result_node[1]~51_combout\ = (\result_mux|LPM_MUX_component|auto_generated|result_node[1]~39_combout\) # ((\result_mux|LPM_MUX_component|auto_generated|result_node[1]~40_combout\ & (!\command~combout\(2) & 
-- \command~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aeaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \result_mux|LPM_MUX_component|auto_generated|result_node[1]~39_combout\,
	datab => \result_mux|LPM_MUX_component|auto_generated|result_node[1]~40_combout\,
	datac => \command~combout\(2),
	datad => \command~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \result_mux|LPM_MUX_component|auto_generated|result_node[1]~51_combout\);

-- Location: LC_X20_Y9_N5
\result_mux|LPM_MUX_component|auto_generated|result_node[1]~41\ : cyclone_lcell
-- Equation(s):
-- \result_mux|LPM_MUX_component|auto_generated|result_node[1]~41_combout\ = (\a~combout\(1) & ((\b~combout\(1) $ (!\command~combout\(1))) # (!\command~combout\(0)))) # (!\a~combout\(1) & ((\command~combout\(1) & ((!\b~combout\(1)))) # (!\command~combout\(1) 
-- & (\command~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c76e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \command~combout\(0),
	datab => \a~combout\(1),
	datac => \b~combout\(1),
	datad => \command~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \result_mux|LPM_MUX_component|auto_generated|result_node[1]~41_combout\);

-- Location: LC_X20_Y9_N3
\result_mux|LPM_MUX_component|auto_generated|result_node[1]~42\ : cyclone_lcell
-- Equation(s):
-- \result_mux|LPM_MUX_component|auto_generated|result_node[1]~42_combout\ = (\result_mux|LPM_MUX_component|auto_generated|result_node[1]~51_combout\) # (((\command~combout\(2) & !\result_mux|LPM_MUX_component|auto_generated|result_node[1]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aafa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \result_mux|LPM_MUX_component|auto_generated|result_node[1]~51_combout\,
	datac => \command~combout\(2),
	datad => \result_mux|LPM_MUX_component|auto_generated|result_node[1]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \result_mux|LPM_MUX_component|auto_generated|result_node[1]~42_combout\);

-- Location: LC_X21_Y9_N9
\result_mux|LPM_MUX_component|auto_generated|result_node[0]~44\ : cyclone_lcell
-- Equation(s):
-- \result_mux|LPM_MUX_component|auto_generated|result_node[0]~44_combout\ = (\a~combout\(0) & ((\b~combout\(0) $ (!\command~combout\(1))) # (!\command~combout\(0)))) # (!\a~combout\(0) & (\command~combout\(0) $ (((\b~combout\(0) & \command~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9e7a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \b~combout\(0),
	datac => \command~combout\(0),
	datad => \command~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \result_mux|LPM_MUX_component|auto_generated|result_node[0]~44_combout\);

-- Location: LC_X21_Y9_N5
\result_mux|LPM_MUX_component|auto_generated|result_node[0]~43\ : cyclone_lcell
-- Equation(s):
-- \result_mux|LPM_MUX_component|auto_generated|result_node[0]~43_combout\ = (((!\command~combout\(0) & \command~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \command~combout\(0),
	datad => \command~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \result_mux|LPM_MUX_component|auto_generated|result_node[0]~43_combout\);

-- Location: LC_X21_Y9_N3
\result_mux|LPM_MUX_component|auto_generated|result_node[0]~45\ : cyclone_lcell
-- Equation(s):
-- \result_mux|LPM_MUX_component|auto_generated|result_node[0]~45_combout\ = (\command~combout\(2) & (\result_mux|LPM_MUX_component|auto_generated|result_node[0]~44_combout\ $ ((!\result_mux|LPM_MUX_component|auto_generated|result_node[0]~43_combout\)))) # 
-- (!\command~combout\(2) & (((\result_mux|LPM_MUX_component|auto_generated|result_node[0]~43_combout\ & \a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9c90",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \result_mux|LPM_MUX_component|auto_generated|result_node[0]~44_combout\,
	datab => \result_mux|LPM_MUX_component|auto_generated|result_node[0]~43_combout\,
	datac => \command~combout\(2),
	datad => \a~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \result_mux|LPM_MUX_component|auto_generated|result_node[0]~45_combout\);

-- Location: LC_X21_Y9_N4
\result_mux|LPM_MUX_component|auto_generated|result_node[0]~52\ : cyclone_lcell
-- Equation(s):
-- \result_mux|LPM_MUX_component|auto_generated|result_node[0]~52_combout\ = (\result_mux|LPM_MUX_component|auto_generated|result_node[0]~45_combout\) # ((!\command~combout\(1) & (!\command~combout\(2) & 
-- \add_sub|LPM_ADD_SUB_component|stratix_adder|result\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cdcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \command~combout\(1),
	datab => \result_mux|LPM_MUX_component|auto_generated|result_node[0]~45_combout\,
	datac => \command~combout\(2),
	datad => \add_sub|LPM_ADD_SUB_component|stratix_adder|result\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \result_mux|LPM_MUX_component|auto_generated|result_node[0]~52_combout\);

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\carry~I\ : cyclone_io
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
	datain => \carry_mux|LPM_MUX_component|auto_generated|result_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_carry);

-- Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[7]~I\ : cyclone_io
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
	datain => \result_mux|LPM_MUX_component|auto_generated|result_node[7]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(7));

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[6]~I\ : cyclone_io
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
	datain => \result_mux|LPM_MUX_component|auto_generated|result_node[6]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(6));

-- Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[5]~I\ : cyclone_io
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
	datain => \result_mux|LPM_MUX_component|auto_generated|result_node[5]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(5));

-- Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[4]~I\ : cyclone_io
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
	datain => \result_mux|LPM_MUX_component|auto_generated|result_node[4]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(4));

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[3]~I\ : cyclone_io
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
	datain => \result_mux|LPM_MUX_component|auto_generated|result_node[3]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(3));

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[2]~I\ : cyclone_io
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
	datain => \result_mux|LPM_MUX_component|auto_generated|result_node[2]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(2));

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[1]~I\ : cyclone_io
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
	datain => \result_mux|LPM_MUX_component|auto_generated|result_node[1]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(1));

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[0]~I\ : cyclone_io
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
	datain => \result_mux|LPM_MUX_component|auto_generated|result_node[0]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(0));
END structure;


