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

-- DATE "12/26/2020 17:46:03"

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

ENTITY 	alu_kp IS
    PORT (
	y : OUT std_logic_vector(7 DOWNTO 0);
	carry_flag : OUT std_logic;
	a : IN std_logic_vector(7 DOWNTO 0);
	b : IN std_logic_vector(7 DOWNTO 0);
	operation_code : IN std_logic_vector(2 DOWNTO 0)
	);
END alu_kp;

-- Design Ports Information
-- y[0]	=>  Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y[1]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y[2]	=>  Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y[3]	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y[4]	=>  Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y[5]	=>  Location: PIN_10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y[6]	=>  Location: PIN_11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y[7]	=>  Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- carry_flag	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- b[0]	=>  Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- operation_code[2]	=>  Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- operation_code[0]	=>  Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- operation_code[1]	=>  Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[0]	=>  Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[1]	=>  Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[1]	=>  Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[2]	=>  Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[2]	=>  Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[3]	=>  Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[3]	=>  Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[4]	=>  Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[4]	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[5]	=>  Location: PIN_83,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[5]	=>  Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[6]	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[6]	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[7]	=>  Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[7]	=>  Location: PIN_82,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF alu_kp IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_y : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_carry_flag : std_logic;
SIGNAL ww_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_operation_code : std_logic_vector(2 DOWNTO 0);
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~2COUT1_54\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~2COUT1_54\ : std_logic;
SIGNAL \Add1~5_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~7COUT1_56\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~7COUT1_56\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Add1~12\ : std_logic;
SIGNAL \Add1~12COUT1_58\ : std_logic;
SIGNAL \Add1~15_combout\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~12COUT1_58\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~17COUT1_60\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~17COUT1_60\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~25_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~27COUT1_62\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~27COUT1_62\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Add1~32\ : std_logic;
SIGNAL \Add1~32COUT1_64\ : std_logic;
SIGNAL \Add1~35_combout\ : std_logic;
SIGNAL \Add0~32\ : std_logic;
SIGNAL \Add0~32COUT1_64\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~37COUT1_66\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~37COUT1_66\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \a~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \operation_code~combout\ : std_logic_vector(2 DOWNTO 0);

BEGIN

y <= ww_y;
carry_flag <= ww_carry_flag;
ww_a <= a;
ww_b <= b;
ww_operation_code <= operation_code;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LC_X25_Y7_N0
\Add0~0\ : cyclone_lcell
-- Equation(s):
-- \Add0~0_combout\ = \a~combout\(0) $ ((\b~combout\(0)))
-- \Add0~2\ = CARRY((\a~combout\(0) & (\b~combout\(0))))
-- \Add0~2COUT1_54\ = CARRY((\a~combout\(0) & (\b~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \b~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~0_combout\,
	cout0 => \Add0~2\,
	cout1 => \Add0~2COUT1_54\);

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\operation_code[2]~I\ : cyclone_io
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
	padio => ww_operation_code(2),
	combout => \operation_code~combout\(2));

-- Location: LC_X24_Y10_N2
\Mux7~1\ : cyclone_lcell
-- Equation(s):
-- \Mux7~1_combout\ = (\operation_code~combout\(2) & (((\a~combout\(0))))) # (!\operation_code~combout\(2) & (\a~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "caca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(1),
	datab => \a~combout\(0),
	datac => \operation_code~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~1_combout\);

-- Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\operation_code[1]~I\ : cyclone_io
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
	padio => ww_operation_code(1),
	combout => \operation_code~combout\(1));

-- Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\operation_code[0]~I\ : cyclone_io
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
	padio => ww_operation_code(0),
	combout => \operation_code~combout\(0));

-- Location: LC_X24_Y10_N5
\Mux7~2\ : cyclone_lcell
-- Equation(s):
-- \Mux7~2_combout\ = (\operation_code~combout\(2) & (\operation_code~combout\(0) $ (((\operation_code~combout\(1)) # (!\Mux7~1_combout\))))) # (!\operation_code~combout\(2) & (\operation_code~combout\(0) & ((\Mux7~1_combout\) # 
-- (!\operation_code~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2bd0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~1_combout\,
	datab => \operation_code~combout\(1),
	datac => \operation_code~combout\(2),
	datad => \operation_code~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~2_combout\);

-- Location: LC_X26_Y10_N0
\Add1~0\ : cyclone_lcell
-- Equation(s):
-- \Add1~0_combout\ = \b~combout\(0) $ ((\a~combout\(0)))
-- \Add1~2\ = CARRY(((\a~combout\(0))) # (!\b~combout\(0)))
-- \Add1~2COUT1_54\ = CARRY(((\a~combout\(0))) # (!\b~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "66dd",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(0),
	datab => \a~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~0_combout\,
	cout0 => \Add1~2\,
	cout1 => \Add1~2COUT1_54\);

-- Location: LC_X25_Y7_N9
\Mux7~0\ : cyclone_lcell
-- Equation(s):
-- \Mux7~0_combout\ = (\operation_code~combout\(2) & (((\b~combout\(0))))) # (!\operation_code~combout\(2) & (((\Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operation_code~combout\(2),
	datac => \b~combout\(0),
	datad => \Add1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~0_combout\);

-- Location: LC_X24_Y10_N3
\Mux7~3\ : cyclone_lcell
-- Equation(s):
-- \Mux7~3_combout\ = (\operation_code~combout\(2) & ((\Mux7~1_combout\ & ((!\operation_code~combout\(0)))) # (!\Mux7~1_combout\ & (!\operation_code~combout\(1))))) # (!\operation_code~combout\(2) & (((\operation_code~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1cbc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~1_combout\,
	datab => \operation_code~combout\(1),
	datac => \operation_code~combout\(2),
	datad => \operation_code~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~3_combout\);

-- Location: LC_X24_Y10_N4
\Mux7~4\ : cyclone_lcell
-- Equation(s):
-- \Mux7~4_combout\ = (\Mux7~2_combout\ & (((\Mux7~0_combout\) # (\Mux7~3_combout\)))) # (!\Mux7~2_combout\ & (\Add0~0_combout\ & ((!\Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Mux7~2_combout\,
	datac => \Mux7~0_combout\,
	datad => \Mux7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~4_combout\);

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LC_X25_Y7_N1
\Add0~5\ : cyclone_lcell
-- Equation(s):
-- \Add0~5_combout\ = \b~combout\(1) $ (\a~combout\(1) $ ((\Add0~2\)))
-- \Add0~7\ = CARRY((\b~combout\(1) & (!\a~combout\(1) & !\Add0~2\)) # (!\b~combout\(1) & ((!\Add0~2\) # (!\a~combout\(1)))))
-- \Add0~7COUT1_56\ = CARRY((\b~combout\(1) & (!\a~combout\(1) & !\Add0~2COUT1_54\)) # (!\b~combout\(1) & ((!\Add0~2COUT1_54\) # (!\a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datab => \a~combout\(1),
	cin0 => \Add0~2\,
	cin1 => \Add0~2COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~5_combout\,
	cout0 => \Add0~7\,
	cout1 => \Add0~7COUT1_56\);

-- Location: LC_X26_Y10_N1
\Add1~5\ : cyclone_lcell
-- Equation(s):
-- \Add1~5_combout\ = \a~combout\(1) $ (\b~combout\(1) $ ((!\Add1~2\)))
-- \Add1~7\ = CARRY((\a~combout\(1) & (\b~combout\(1) & !\Add1~2\)) # (!\a~combout\(1) & ((\b~combout\(1)) # (!\Add1~2\))))
-- \Add1~7COUT1_56\ = CARRY((\a~combout\(1) & (\b~combout\(1) & !\Add1~2COUT1_54\)) # (!\a~combout\(1) & ((\b~combout\(1)) # (!\Add1~2COUT1_54\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(1),
	datab => \b~combout\(1),
	cin0 => \Add1~2\,
	cin1 => \Add1~2COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~5_combout\,
	cout0 => \Add1~7\,
	cout1 => \Add1~7COUT1_56\);

-- Location: LC_X24_Y10_N6
\Mux6~1\ : cyclone_lcell
-- Equation(s):
-- \Mux6~1_combout\ = (\operation_code~combout\(1) & (((\operation_code~combout\(0))))) # (!\operation_code~combout\(1) & ((\operation_code~combout\(0) & ((\Add1~5_combout\))) # (!\operation_code~combout\(0) & (\Add0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~5_combout\,
	datab => \operation_code~combout\(1),
	datac => \Add1~5_combout\,
	datad => \operation_code~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~1_combout\);

-- Location: LC_X24_Y10_N7
\Mux6~2\ : cyclone_lcell
-- Equation(s):
-- \Mux6~2_combout\ = (\operation_code~combout\(1) & ((\Mux6~1_combout\ & (\a~combout\(2))) # (!\Mux6~1_combout\ & ((\a~combout\(0)))))) # (!\operation_code~combout\(1) & (((\Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(2),
	datab => \operation_code~combout\(1),
	datac => \a~combout\(0),
	datad => \Mux6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~2_combout\);

-- Location: LC_X24_Y10_N0
\Mux6~0\ : cyclone_lcell
-- Equation(s):
-- \Mux6~0_combout\ = (\a~combout\(1) & (\operation_code~combout\(1) $ (((\operation_code~combout\(0) & \b~combout\(1)))))) # (!\a~combout\(1) & ((\operation_code~combout\(1) & ((\b~combout\(1)))) # (!\operation_code~combout\(1) & 
-- (!\operation_code~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "79a1",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(1),
	datab => \operation_code~combout\(0),
	datac => \operation_code~combout\(1),
	datad => \b~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~0_combout\);

-- Location: LC_X24_Y10_N1
\Mux6~3\ : cyclone_lcell
-- Equation(s):
-- \Mux6~3_combout\ = ((\operation_code~combout\(2) & ((\Mux6~0_combout\))) # (!\operation_code~combout\(2) & (\Mux6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~2_combout\,
	datac => \operation_code~combout\(2),
	datad => \Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~3_combout\);

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LC_X25_Y9_N6
\Mux5~0\ : cyclone_lcell
-- Equation(s):
-- \Mux5~0_combout\ = (\a~combout\(2) & (\operation_code~combout\(1) $ (((\operation_code~combout\(0) & \b~combout\(2)))))) # (!\a~combout\(2) & ((\operation_code~combout\(1) & ((\b~combout\(2)))) # (!\operation_code~combout\(1) & 
-- (!\operation_code~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ba1",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operation_code~combout\(1),
	datab => \operation_code~combout\(0),
	datac => \a~combout\(2),
	datad => \b~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~0_combout\);

-- Location: LC_X26_Y10_N2
\Add1~10\ : cyclone_lcell
-- Equation(s):
-- \Add1~10_combout\ = \a~combout\(2) $ (\b~combout\(2) $ ((\Add1~7\)))
-- \Add1~12\ = CARRY((\a~combout\(2) & ((!\Add1~7\) # (!\b~combout\(2)))) # (!\a~combout\(2) & (!\b~combout\(2) & !\Add1~7\)))
-- \Add1~12COUT1_58\ = CARRY((\a~combout\(2) & ((!\Add1~7COUT1_56\) # (!\b~combout\(2)))) # (!\a~combout\(2) & (!\b~combout\(2) & !\Add1~7COUT1_56\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(2),
	datab => \b~combout\(2),
	cin0 => \Add1~7\,
	cin1 => \Add1~7COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~10_combout\,
	cout0 => \Add1~12\,
	cout1 => \Add1~12COUT1_58\);

-- Location: LC_X25_Y7_N2
\Add0~10\ : cyclone_lcell
-- Equation(s):
-- \Add0~10_combout\ = \a~combout\(2) $ (\b~combout\(2) $ ((!\Add0~7\)))
-- \Add0~12\ = CARRY((\a~combout\(2) & ((\b~combout\(2)) # (!\Add0~7\))) # (!\a~combout\(2) & (\b~combout\(2) & !\Add0~7\)))
-- \Add0~12COUT1_58\ = CARRY((\a~combout\(2) & ((\b~combout\(2)) # (!\Add0~7COUT1_56\))) # (!\a~combout\(2) & (\b~combout\(2) & !\Add0~7COUT1_56\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(2),
	datab => \b~combout\(2),
	cin0 => \Add0~7\,
	cin1 => \Add0~7COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~10_combout\,
	cout0 => \Add0~12\,
	cout1 => \Add0~12COUT1_58\);

-- Location: LC_X25_Y9_N4
\Mux5~1\ : cyclone_lcell
-- Equation(s):
-- \Mux5~1_combout\ = (\operation_code~combout\(0) & ((\Add1~10_combout\) # ((\operation_code~combout\(1))))) # (!\operation_code~combout\(0) & (((\Add0~10_combout\ & !\operation_code~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~10_combout\,
	datab => \operation_code~combout\(0),
	datac => \Add0~10_combout\,
	datad => \operation_code~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~1_combout\);

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LC_X26_Y8_N7
\Mux5~2\ : cyclone_lcell
-- Equation(s):
-- \Mux5~2_combout\ = (\Mux5~1_combout\ & (((\a~combout\(3)) # (!\operation_code~combout\(1))))) # (!\Mux5~1_combout\ & (\a~combout\(1) & ((\operation_code~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(1),
	datab => \Mux5~1_combout\,
	datac => \a~combout\(3),
	datad => \operation_code~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~2_combout\);

-- Location: LC_X25_Y9_N2
\Mux5~3\ : cyclone_lcell
-- Equation(s):
-- \Mux5~3_combout\ = (\operation_code~combout\(2) & (\Mux5~0_combout\)) # (!\operation_code~combout\(2) & (((\Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datab => \operation_code~combout\(2),
	datad => \Mux5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~3_combout\);

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LC_X26_Y10_N3
\Add1~15\ : cyclone_lcell
-- Equation(s):
-- \Add1~15_combout\ = \b~combout\(3) $ (\a~combout\(3) $ ((!\Add1~12\)))
-- \Add1~17\ = CARRY((\b~combout\(3) & ((!\Add1~12\) # (!\a~combout\(3)))) # (!\b~combout\(3) & (!\a~combout\(3) & !\Add1~12\)))
-- \Add1~17COUT1_60\ = CARRY((\b~combout\(3) & ((!\Add1~12COUT1_58\) # (!\a~combout\(3)))) # (!\b~combout\(3) & (!\a~combout\(3) & !\Add1~12COUT1_58\)))

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
	cin0 => \Add1~12\,
	cin1 => \Add1~12COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~15_combout\,
	cout0 => \Add1~17\,
	cout1 => \Add1~17COUT1_60\);

-- Location: LC_X25_Y7_N3
\Add0~15\ : cyclone_lcell
-- Equation(s):
-- \Add0~15_combout\ = \b~combout\(3) $ (\a~combout\(3) $ ((\Add0~12\)))
-- \Add0~17\ = CARRY((\b~combout\(3) & (!\a~combout\(3) & !\Add0~12\)) # (!\b~combout\(3) & ((!\Add0~12\) # (!\a~combout\(3)))))
-- \Add0~17COUT1_60\ = CARRY((\b~combout\(3) & (!\a~combout\(3) & !\Add0~12COUT1_58\)) # (!\b~combout\(3) & ((!\Add0~12COUT1_58\) # (!\a~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(3),
	datab => \a~combout\(3),
	cin0 => \Add0~12\,
	cin1 => \Add0~12COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~15_combout\,
	cout0 => \Add0~17\,
	cout1 => \Add0~17COUT1_60\);

-- Location: LC_X26_Y8_N9
\Mux4~1\ : cyclone_lcell
-- Equation(s):
-- \Mux4~1_combout\ = (\operation_code~combout\(1) & (((\operation_code~combout\(0))))) # (!\operation_code~combout\(1) & ((\operation_code~combout\(0) & (\Add1~15_combout\)) # (!\operation_code~combout\(0) & ((\Add0~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~15_combout\,
	datab => \operation_code~combout\(1),
	datac => \Add0~15_combout\,
	datad => \operation_code~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~1_combout\);

-- Location: LC_X26_Y8_N0
\Mux4~2\ : cyclone_lcell
-- Equation(s):
-- \Mux4~2_combout\ = (\operation_code~combout\(1) & ((\Mux4~1_combout\ & (\a~combout\(4))) # (!\Mux4~1_combout\ & ((\a~combout\(2)))))) # (!\operation_code~combout\(1) & (((\Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bcb0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(4),
	datab => \operation_code~combout\(1),
	datac => \Mux4~1_combout\,
	datad => \a~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~2_combout\);

-- Location: LC_X26_Y8_N5
\Mux4~0\ : cyclone_lcell
-- Equation(s):
-- \Mux4~0_combout\ = (\a~combout\(3) & (\operation_code~combout\(1) $ (((\operation_code~combout\(0) & \b~combout\(3)))))) # (!\a~combout\(3) & ((\operation_code~combout\(1) & ((\b~combout\(3)))) # (!\operation_code~combout\(1) & 
-- (!\operation_code~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6dc1",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operation_code~combout\(0),
	datab => \operation_code~combout\(1),
	datac => \a~combout\(3),
	datad => \b~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~0_combout\);

-- Location: LC_X26_Y8_N3
\Mux4~3\ : cyclone_lcell
-- Equation(s):
-- \Mux4~3_combout\ = ((\operation_code~combout\(2) & ((\Mux4~0_combout\))) # (!\operation_code~combout\(2) & (\Mux4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mux4~2_combout\,
	datac => \operation_code~combout\(2),
	datad => \Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~3_combout\);

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

-- Location: LC_X26_Y10_N4
\Add1~20\ : cyclone_lcell
-- Equation(s):
-- \Add1~20_combout\ = \a~combout\(4) $ (\b~combout\(4) $ ((\Add1~17\)))
-- \Add1~22\ = CARRY((\a~combout\(4) & ((!\Add1~17COUT1_60\) # (!\b~combout\(4)))) # (!\a~combout\(4) & (!\b~combout\(4) & !\Add1~17COUT1_60\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(4),
	datab => \b~combout\(4),
	cin0 => \Add1~17\,
	cin1 => \Add1~17COUT1_60\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~20_combout\,
	cout => \Add1~22\);

-- Location: LC_X25_Y7_N4
\Add0~20\ : cyclone_lcell
-- Equation(s):
-- \Add0~20_combout\ = \b~combout\(4) $ (\a~combout\(4) $ ((!\Add0~17\)))
-- \Add0~22\ = CARRY((\b~combout\(4) & ((\a~combout\(4)) # (!\Add0~17COUT1_60\))) # (!\b~combout\(4) & (\a~combout\(4) & !\Add0~17COUT1_60\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(4),
	datab => \a~combout\(4),
	cin0 => \Add0~17\,
	cin1 => \Add0~17COUT1_60\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~20_combout\,
	cout => \Add0~22\);

-- Location: LC_X26_Y8_N8
\Mux3~1\ : cyclone_lcell
-- Equation(s):
-- \Mux3~1_combout\ = (\operation_code~combout\(0) & (((\operation_code~combout\(1))))) # (!\operation_code~combout\(0) & ((\operation_code~combout\(1) & ((\a~combout\(3)))) # (!\operation_code~combout\(1) & (\Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operation_code~combout\(0),
	datab => \Add0~20_combout\,
	datac => \a~combout\(3),
	datad => \operation_code~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~1_combout\);

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

-- Location: LC_X26_Y8_N4
\Mux3~2\ : cyclone_lcell
-- Equation(s):
-- \Mux3~2_combout\ = (\operation_code~combout\(0) & ((\Mux3~1_combout\ & ((\a~combout\(5)))) # (!\Mux3~1_combout\ & (\Add1~20_combout\)))) # (!\operation_code~combout\(0) & (((\Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f858",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operation_code~combout\(0),
	datab => \Add1~20_combout\,
	datac => \Mux3~1_combout\,
	datad => \a~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~2_combout\);

-- Location: LC_X26_Y8_N1
\Mux3~0\ : cyclone_lcell
-- Equation(s):
-- \Mux3~0_combout\ = (\a~combout\(4) & (\operation_code~combout\(1) $ (((\operation_code~combout\(0) & \b~combout\(4)))))) # (!\a~combout\(4) & ((\operation_code~combout\(1) & ((\b~combout\(4)))) # (!\operation_code~combout\(1) & 
-- (!\operation_code~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7c85",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operation_code~combout\(0),
	datab => \b~combout\(4),
	datac => \a~combout\(4),
	datad => \operation_code~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~0_combout\);

-- Location: LC_X26_Y8_N2
\Mux3~3\ : cyclone_lcell
-- Equation(s):
-- \Mux3~3_combout\ = ((\operation_code~combout\(2) & ((\Mux3~0_combout\))) # (!\operation_code~combout\(2) & (\Mux3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mux3~2_combout\,
	datac => \operation_code~combout\(2),
	datad => \Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~3_combout\);

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LC_X26_Y6_N4
\Mux2~0\ : cyclone_lcell
-- Equation(s):
-- \Mux2~0_combout\ = (\a~combout\(5) & (\operation_code~combout\(1) $ (((\operation_code~combout\(0) & \b~combout\(5)))))) # (!\a~combout\(5) & ((\operation_code~combout\(1) & ((\b~combout\(5)))) # (!\operation_code~combout\(1) & 
-- (!\operation_code~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7c85",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operation_code~combout\(0),
	datab => \b~combout\(5),
	datac => \a~combout\(5),
	datad => \operation_code~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~0_combout\);

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LC_X26_Y10_N5
\Add1~25\ : cyclone_lcell
-- Equation(s):
-- \Add1~25_combout\ = \a~combout\(5) $ (\b~combout\(5) $ ((!\Add1~22\)))
-- \Add1~27\ = CARRY((\a~combout\(5) & (\b~combout\(5) & !\Add1~22\)) # (!\a~combout\(5) & ((\b~combout\(5)) # (!\Add1~22\))))
-- \Add1~27COUT1_62\ = CARRY((\a~combout\(5) & (\b~combout\(5) & !\Add1~22\)) # (!\a~combout\(5) & ((\b~combout\(5)) # (!\Add1~22\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(5),
	datab => \b~combout\(5),
	cin => \Add1~22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~25_combout\,
	cout0 => \Add1~27\,
	cout1 => \Add1~27COUT1_62\);

-- Location: LC_X25_Y7_N5
\Add0~25\ : cyclone_lcell
-- Equation(s):
-- \Add0~25_combout\ = \b~combout\(5) $ (\a~combout\(5) $ ((\Add0~22\)))
-- \Add0~27\ = CARRY((\b~combout\(5) & (!\a~combout\(5) & !\Add0~22\)) # (!\b~combout\(5) & ((!\Add0~22\) # (!\a~combout\(5)))))
-- \Add0~27COUT1_62\ = CARRY((\b~combout\(5) & (!\a~combout\(5) & !\Add0~22\)) # (!\b~combout\(5) & ((!\Add0~22\) # (!\a~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(5),
	datab => \a~combout\(5),
	cin => \Add0~22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~25_combout\,
	cout0 => \Add0~27\,
	cout1 => \Add0~27COUT1_62\);

-- Location: LC_X26_Y8_N6
\Mux2~1\ : cyclone_lcell
-- Equation(s):
-- \Mux2~1_combout\ = (\operation_code~combout\(1) & (((\a~combout\(4)) # (\operation_code~combout\(0))))) # (!\operation_code~combout\(1) & (\Add0~25_combout\ & ((!\operation_code~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~25_combout\,
	datab => \operation_code~combout\(1),
	datac => \a~combout\(4),
	datad => \operation_code~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~1_combout\);

-- Location: LC_X26_Y10_N9
\Mux2~2\ : cyclone_lcell
-- Equation(s):
-- \Mux2~2_combout\ = (\Mux2~1_combout\ & ((\a~combout\(6)) # ((!\operation_code~combout\(0))))) # (!\Mux2~1_combout\ & (((\Add1~25_combout\ & \operation_code~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(6),
	datab => \Add1~25_combout\,
	datac => \Mux2~1_combout\,
	datad => \operation_code~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~2_combout\);

-- Location: LC_X26_Y6_N7
\Mux2~3\ : cyclone_lcell
-- Equation(s):
-- \Mux2~3_combout\ = ((\operation_code~combout\(2) & (\Mux2~0_combout\)) # (!\operation_code~combout\(2) & ((\Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \operation_code~combout\(2),
	datac => \Mux2~0_combout\,
	datad => \Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~3_combout\);

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LC_X26_Y10_N6
\Add1~30\ : cyclone_lcell
-- Equation(s):
-- \Add1~30_combout\ = \a~combout\(6) $ (\b~combout\(6) $ (((!\Add1~22\ & \Add1~27\) # (\Add1~22\ & \Add1~27COUT1_62\))))
-- \Add1~32\ = CARRY((\a~combout\(6) & ((!\Add1~27\) # (!\b~combout\(6)))) # (!\a~combout\(6) & (!\b~combout\(6) & !\Add1~27\)))
-- \Add1~32COUT1_64\ = CARRY((\a~combout\(6) & ((!\Add1~27COUT1_62\) # (!\b~combout\(6)))) # (!\a~combout\(6) & (!\b~combout\(6) & !\Add1~27COUT1_62\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(6),
	datab => \b~combout\(6),
	cin => \Add1~22\,
	cin0 => \Add1~27\,
	cin1 => \Add1~27COUT1_62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~30_combout\,
	cout0 => \Add1~32\,
	cout1 => \Add1~32COUT1_64\);

-- Location: LC_X25_Y7_N6
\Add0~30\ : cyclone_lcell
-- Equation(s):
-- \Add0~30_combout\ = \a~combout\(6) $ (\b~combout\(6) $ ((!(!\Add0~22\ & \Add0~27\) # (\Add0~22\ & \Add0~27COUT1_62\))))
-- \Add0~32\ = CARRY((\a~combout\(6) & ((\b~combout\(6)) # (!\Add0~27\))) # (!\a~combout\(6) & (\b~combout\(6) & !\Add0~27\)))
-- \Add0~32COUT1_64\ = CARRY((\a~combout\(6) & ((\b~combout\(6)) # (!\Add0~27COUT1_62\))) # (!\a~combout\(6) & (\b~combout\(6) & !\Add0~27COUT1_62\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(6),
	datab => \b~combout\(6),
	cin => \Add0~22\,
	cin0 => \Add0~27\,
	cin1 => \Add0~27COUT1_62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~30_combout\,
	cout0 => \Add0~32\,
	cout1 => \Add0~32COUT1_64\);

-- Location: LC_X26_Y6_N0
\Mux1~1\ : cyclone_lcell
-- Equation(s):
-- \Mux1~1_combout\ = (\operation_code~combout\(0) & (((\operation_code~combout\(1))))) # (!\operation_code~combout\(0) & ((\operation_code~combout\(1) & ((\a~combout\(5)))) # (!\operation_code~combout\(1) & (\Add0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datab => \a~combout\(5),
	datac => \operation_code~combout\(0),
	datad => \operation_code~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~1_combout\);

-- Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LC_X26_Y6_N2
\Mux1~2\ : cyclone_lcell
-- Equation(s):
-- \Mux1~2_combout\ = (\Mux1~1_combout\ & (((\a~combout\(7)) # (!\operation_code~combout\(0))))) # (!\Mux1~1_combout\ & (\Add1~30_combout\ & (\operation_code~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec2c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~30_combout\,
	datab => \Mux1~1_combout\,
	datac => \operation_code~combout\(0),
	datad => \a~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~2_combout\);

-- Location: LC_X26_Y6_N1
\Mux1~0\ : cyclone_lcell
-- Equation(s):
-- \Mux1~0_combout\ = (\a~combout\(6) & (\operation_code~combout\(1) $ (((\operation_code~combout\(0) & \b~combout\(6)))))) # (!\a~combout\(6) & ((\operation_code~combout\(1) & ((\b~combout\(6)))) # (!\operation_code~combout\(1) & 
-- (!\operation_code~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7c85",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operation_code~combout\(0),
	datab => \b~combout\(6),
	datac => \a~combout\(6),
	datad => \operation_code~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~0_combout\);

-- Location: LC_X26_Y6_N3
\Mux1~3\ : cyclone_lcell
-- Equation(s):
-- \Mux1~3_combout\ = ((\operation_code~combout\(2) & ((\Mux1~0_combout\))) # (!\operation_code~combout\(2) & (\Mux1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \operation_code~combout\(2),
	datac => \Mux1~2_combout\,
	datad => \Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~3_combout\);

-- Location: PIN_82,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LC_X26_Y10_N7
\Add1~35\ : cyclone_lcell
-- Equation(s):
-- \Add1~35_combout\ = \a~combout\(7) $ (\b~combout\(7) $ ((!(!\Add1~22\ & \Add1~32\) # (\Add1~22\ & \Add1~32COUT1_64\))))
-- \Add1~37\ = CARRY((\a~combout\(7) & (\b~combout\(7) & !\Add1~32\)) # (!\a~combout\(7) & ((\b~combout\(7)) # (!\Add1~32\))))
-- \Add1~37COUT1_66\ = CARRY((\a~combout\(7) & (\b~combout\(7) & !\Add1~32COUT1_64\)) # (!\a~combout\(7) & ((\b~combout\(7)) # (!\Add1~32COUT1_64\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(7),
	datab => \b~combout\(7),
	cin => \Add1~22\,
	cin0 => \Add1~32\,
	cin1 => \Add1~32COUT1_64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~35_combout\,
	cout0 => \Add1~37\,
	cout1 => \Add1~37COUT1_66\);

-- Location: LC_X25_Y7_N7
\Add0~35\ : cyclone_lcell
-- Equation(s):
-- \Add0~35_combout\ = \a~combout\(7) $ (\b~combout\(7) $ (((!\Add0~22\ & \Add0~32\) # (\Add0~22\ & \Add0~32COUT1_64\))))
-- \Add0~37\ = CARRY((\a~combout\(7) & (!\b~combout\(7) & !\Add0~32\)) # (!\a~combout\(7) & ((!\Add0~32\) # (!\b~combout\(7)))))
-- \Add0~37COUT1_66\ = CARRY((\a~combout\(7) & (!\b~combout\(7) & !\Add0~32COUT1_64\)) # (!\a~combout\(7) & ((!\Add0~32COUT1_64\) # (!\b~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(7),
	datab => \b~combout\(7),
	cin => \Add0~22\,
	cin0 => \Add0~32\,
	cin1 => \Add0~32COUT1_64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~35_combout\,
	cout0 => \Add0~37\,
	cout1 => \Add0~37COUT1_66\);

-- Location: LC_X26_Y6_N6
\Mux0~2\ : cyclone_lcell
-- Equation(s):
-- \Mux0~2_combout\ = (\operation_code~combout\(0) & (\Add1~35_combout\ & ((!\operation_code~combout\(1))))) # (!\operation_code~combout\(0) & (((\Add0~35_combout\) # (\operation_code~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55d8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operation_code~combout\(0),
	datab => \Add1~35_combout\,
	datac => \Add0~35_combout\,
	datad => \operation_code~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~2_combout\);

-- Location: LC_X26_Y6_N5
\Mux0~3\ : cyclone_lcell
-- Equation(s):
-- \Mux0~3_combout\ = (\operation_code~combout\(2) & (((\operation_code~combout\(1))))) # (!\operation_code~combout\(2) & (\Mux0~2_combout\ & ((\a~combout\(6)) # (!\operation_code~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~2_combout\,
	datab => \operation_code~combout\(2),
	datac => \a~combout\(6),
	datad => \operation_code~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~3_combout\);

-- Location: LC_X26_Y6_N8
\Mux0~0\ : cyclone_lcell
-- Equation(s):
-- \Mux0~0_combout\ = (\Mux0~3_combout\ & ((\a~combout\(7) $ (\b~combout\(7))) # (!\operation_code~combout\(2)))) # (!\Mux0~3_combout\ & (\operation_code~combout\(2) & ((\b~combout\(7)) # (!\a~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "79cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(7),
	datab => \Mux0~3_combout\,
	datac => \b~combout\(7),
	datad => \operation_code~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~0_combout\);

-- Location: LC_X26_Y6_N9
\Mux0~1\ : cyclone_lcell
-- Equation(s):
-- \Mux0~1_combout\ = (\a~combout\(7) & ((\operation_code~combout\(0) & ((\Mux0~0_combout\))) # (!\operation_code~combout\(0) & (\Mux0~3_combout\)))) # (!\a~combout\(7) & (\Mux0~0_combout\ & ((\Mux0~3_combout\) # (!\operation_code~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ed08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(7),
	datab => \Mux0~3_combout\,
	datac => \operation_code~combout\(0),
	datad => \Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~1_combout\);

-- Location: LC_X26_Y10_N8
\Add1~40\ : cyclone_lcell
-- Equation(s):
-- \Add1~40_combout\ = ((((!\Add1~22\ & \Add1~37\) # (\Add1~22\ & \Add1~37COUT1_66\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add1~22\,
	cin0 => \Add1~37\,
	cin1 => \Add1~37COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~40_combout\);

-- Location: LC_X25_Y7_N8
\Add0~40\ : cyclone_lcell
-- Equation(s):
-- \Add0~40_combout\ = (((!(!\Add0~22\ & \Add0~37\) # (\Add0~22\ & \Add0~37COUT1_66\))))

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
	cin => \Add0~22\,
	cin0 => \Add0~37\,
	cin1 => \Add0~37COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~40_combout\);

-- Location: LC_X25_Y9_N5
\Mux8~0\ : cyclone_lcell
-- Equation(s):
-- \Mux8~0_combout\ = (\operation_code~combout\(0) & ((\Add1~40_combout\) # ((\operation_code~combout\(1))))) # (!\operation_code~combout\(0) & (((\Add0~40_combout\ & !\operation_code~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~40_combout\,
	datab => \operation_code~combout\(0),
	datac => \Add0~40_combout\,
	datad => \operation_code~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~0_combout\);

-- Location: LC_X24_Y10_N8
\Mux8~1\ : cyclone_lcell
-- Equation(s):
-- \Mux8~1_combout\ = (\Mux8~0_combout\ & (((\a~combout\(0))) # (!\operation_code~combout\(1)))) # (!\Mux8~0_combout\ & (\operation_code~combout\(1) & ((\a~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6a2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~0_combout\,
	datab => \operation_code~combout\(1),
	datac => \a~combout\(0),
	datad => \a~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~1_combout\);

-- Location: LC_X24_Y10_N9
\Mux8~2\ : cyclone_lcell
-- Equation(s):
-- \Mux8~2_combout\ = (((!\operation_code~combout\(2) & \Mux8~1_combout\)))

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
	datac => \operation_code~combout\(2),
	datad => \Mux8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~2_combout\);

-- Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y[0]~I\ : cyclone_io
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
	datain => \Mux7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_y(0));

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y[1]~I\ : cyclone_io
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
	datain => \Mux6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_y(1));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y[2]~I\ : cyclone_io
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
	datain => \Mux5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_y(2));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y[3]~I\ : cyclone_io
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
	datain => \Mux4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_y(3));

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y[4]~I\ : cyclone_io
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
	datain => \Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_y(4));

-- Location: PIN_10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y[5]~I\ : cyclone_io
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
	datain => \Mux2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_y(5));

-- Location: PIN_11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y[6]~I\ : cyclone_io
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
	datain => \Mux1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_y(6));

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y[7]~I\ : cyclone_io
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
	datain => \Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_y(7));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\carry_flag~I\ : cyclone_io
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
	datain => \Mux8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_carry_flag);
END structure;


