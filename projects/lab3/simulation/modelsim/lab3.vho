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

-- DATE "10/07/2020 14:56:12"

-- 
-- Device: Altera EP1C3T144C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONE;
LIBRARY IEEE;
USE CYCLONE.CYCLONE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab3_v2 IS
    PORT (
	dec_seconds_indicator : OUT std_logic_vector(6 DOWNTO 0);
	seconds_indicator : OUT std_logic_vector(6 DOWNTO 0);
	unused_point : OUT std_logic;
	clk : IN std_logic;
	button_clear : IN std_logic;
	button_pause : IN std_logic
	);
END lab3_v2;

-- Design Ports Information
-- dec_seconds_indicator[0]	=>  Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dec_seconds_indicator[1]	=>  Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dec_seconds_indicator[2]	=>  Location: PIN_106,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dec_seconds_indicator[3]	=>  Location: PIN_105,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dec_seconds_indicator[4]	=>  Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dec_seconds_indicator[5]	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dec_seconds_indicator[6]	=>  Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seconds_indicator[0]	=>  Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seconds_indicator[1]	=>  Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seconds_indicator[2]	=>  Location: PIN_110,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seconds_indicator[3]	=>  Location: PIN_109,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seconds_indicator[4]	=>  Location: PIN_108,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seconds_indicator[5]	=>  Location: PIN_111,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seconds_indicator[6]	=>  Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- unused_point	=>  Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- button_clear	=>  Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- button_pause	=>  Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF lab3_v2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_dec_seconds_indicator : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seconds_indicator : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_unused_point : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_button_clear : std_logic;
SIGNAL ww_button_pause : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \button_clear~combout\ : std_logic;
SIGNAL \button_pause~combout\ : std_logic;
SIGNAL \Add0~105_combout\ : std_logic;
SIGNAL \Add0~107\ : std_logic;
SIGNAL \Add0~107COUT1_142\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~102COUT1_144\ : std_logic;
SIGNAL \Add0~95_combout\ : std_logic;
SIGNAL \Add0~97\ : std_logic;
SIGNAL \Add0~97COUT1_146\ : std_logic;
SIGNAL \Add0~90_combout\ : std_logic;
SIGNAL \Add0~87\ : std_logic;
SIGNAL \Add0~87COUT1_150\ : std_logic;
SIGNAL \Add0~70_combout\ : std_logic;
SIGNAL \dec_seconds_counter~6_combout\ : std_logic;
SIGNAL \Add0~72\ : std_logic;
SIGNAL \Add0~72COUT1_152\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \dec_seconds_counter~5_combout\ : std_logic;
SIGNAL \Add0~67\ : std_logic;
SIGNAL \Add0~67COUT1_154\ : std_logic;
SIGNAL \Add0~75_combout\ : std_logic;
SIGNAL \Add0~77\ : std_logic;
SIGNAL \Add0~77COUT1_156\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \dec_seconds_counter~4_combout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~55_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~57COUT1_158\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~52\ : std_logic;
SIGNAL \Add0~52COUT1_160\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \dec_seconds_counter~3_combout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~42COUT1_162\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~47COUT1_164\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~32\ : std_logic;
SIGNAL \Add0~32COUT1_166\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \dec_seconds_counter~2_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~27COUT1_168\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \dec_seconds_counter~1_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~22COUT1_170\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~17COUT1_172\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \dec_seconds_counter~0_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~2COUT1_174\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Add0~92\ : std_logic;
SIGNAL \Add0~92COUT1_148\ : std_logic;
SIGNAL \Add0~80_combout\ : std_logic;
SIGNAL \dec_seconds_counter~7_combout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~85_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Add0~115_combout\ : std_logic;
SIGNAL \dec_seconds_counter~8_combout\ : std_logic;
SIGNAL \Add0~117\ : std_logic;
SIGNAL \Add0~117COUT1_140\ : std_logic;
SIGNAL \Add0~110_combout\ : std_logic;
SIGNAL \Add0~112\ : std_logic;
SIGNAL \Add0~100_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \dec_seconds_indicator[0]~reg0_regout\ : std_logic;
SIGNAL \dec_seconds_indicator[1]~reg0_regout\ : std_logic;
SIGNAL \dec_seconds_indicator[2]~reg0_regout\ : std_logic;
SIGNAL \dec_seconds_indicator[3]~reg0_regout\ : std_logic;
SIGNAL \dec_seconds_indicator[4]~reg0_regout\ : std_logic;
SIGNAL \dec_seconds_indicator[5]~reg0_regout\ : std_logic;
SIGNAL \dec_seconds_indicator[6]~reg0_regout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \seconds[3]~0_combout\ : std_logic;
SIGNAL \seconds_indicator[0]~reg0_regout\ : std_logic;
SIGNAL \seconds_indicator[1]~reg0_regout\ : std_logic;
SIGNAL \seconds_indicator[2]~reg0_regout\ : std_logic;
SIGNAL \seconds_indicator[3]~reg0_regout\ : std_logic;
SIGNAL \seconds_indicator[4]~reg0_regout\ : std_logic;
SIGNAL \seconds_indicator[5]~reg0_regout\ : std_logic;
SIGNAL \seconds_indicator[6]~reg0_regout\ : std_logic;
SIGNAL dec_seconds : std_logic_vector(3 DOWNTO 0);
SIGNAL dec_seconds_counter : std_logic_vector(23 DOWNTO 0);
SIGNAL seconds : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_button_pause~combout\ : std_logic;

BEGIN

dec_seconds_indicator <= ww_dec_seconds_indicator;
seconds_indicator <= ww_seconds_indicator;
unused_point <= ww_unused_point;
ww_clk <= clk;
ww_button_clear <= button_clear;
ww_button_pause <= button_pause;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_button_pause~combout\ <= NOT \button_pause~combout\;

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cyclone_io
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

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\button_clear~I\ : cyclone_io
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
	padio => ww_button_clear,
	combout => \button_clear~combout\);

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\button_pause~I\ : cyclone_io
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
	padio => ww_button_pause,
	combout => \button_pause~combout\);

-- Location: LC_X15_Y12_N5
\Add0~105\ : cyclone_lcell
-- Equation(s):
-- \Add0~105_combout\ = dec_seconds_counter(2) $ ((((!\Add0~112\))))
-- \Add0~107\ = CARRY((dec_seconds_counter(2) & ((!\Add0~112\))))
-- \Add0~107COUT1_142\ = CARRY((dec_seconds_counter(2) & ((!\Add0~112\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => dec_seconds_counter(2),
	cin => \Add0~112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~105_combout\,
	cout0 => \Add0~107\,
	cout1 => \Add0~107COUT1_142\);

-- Location: LC_X15_Y12_N2
\dec_seconds_counter[2]\ : cyclone_lcell
-- Equation(s):
-- dec_seconds_counter(2) = DFFEAS((((\Add0~105_combout\))), GLOBAL(\clk~combout\), !GLOBAL(\button_clear~combout\), , , dec_seconds_counter(2), !GLOBAL(\button_pause~combout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => dec_seconds_counter(2),
	datad => \Add0~105_combout\,
	aclr => \button_clear~combout\,
	aload => \ALT_INV_button_pause~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dec_seconds_counter(2));

-- Location: LC_X15_Y12_N6
\Add0~100\ : cyclone_lcell
-- Equation(s):
-- \Add0~100_combout\ = (dec_seconds_counter(3) $ (((!\Add0~112\ & \Add0~107\) # (\Add0~112\ & \Add0~107COUT1_142\))))
-- \Add0~102\ = CARRY(((!\Add0~107\) # (!dec_seconds_counter(3))))
-- \Add0~102COUT1_144\ = CARRY(((!\Add0~107COUT1_142\) # (!dec_seconds_counter(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => dec_seconds_counter(3),
	cin => \Add0~112\,
	cin0 => \Add0~107\,
	cin1 => \Add0~107COUT1_142\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~100_combout\,
	cout0 => \Add0~102\,
	cout1 => \Add0~102COUT1_144\);

-- Location: LC_X15_Y12_N7
\Add0~95\ : cyclone_lcell
-- Equation(s):
-- \Add0~95_combout\ = (dec_seconds_counter(4) $ ((!(!\Add0~112\ & \Add0~102\) # (\Add0~112\ & \Add0~102COUT1_144\))))
-- \Add0~97\ = CARRY(((dec_seconds_counter(4) & !\Add0~102\)))
-- \Add0~97COUT1_146\ = CARRY(((dec_seconds_counter(4) & !\Add0~102COUT1_144\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => dec_seconds_counter(4),
	cin => \Add0~112\,
	cin0 => \Add0~102\,
	cin1 => \Add0~102COUT1_144\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~95_combout\,
	cout0 => \Add0~97\,
	cout1 => \Add0~97COUT1_146\);

-- Location: LC_X17_Y10_N9
\dec_seconds_counter[4]\ : cyclone_lcell
-- Equation(s):
-- dec_seconds_counter(4) = DFFEAS((((\Add0~95_combout\))), GLOBAL(\clk~combout\), !GLOBAL(\button_clear~combout\), , , dec_seconds_counter(4), !GLOBAL(\button_pause~combout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => dec_seconds_counter(4),
	datad => \Add0~95_combout\,
	aclr => \button_clear~combout\,
	aload => \ALT_INV_button_pause~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dec_seconds_counter(4));

-- Location: LC_X15_Y12_N8
\Add0~90\ : cyclone_lcell
-- Equation(s):
-- \Add0~90_combout\ = (dec_seconds_counter(5) $ (((!\Add0~112\ & \Add0~97\) # (\Add0~112\ & \Add0~97COUT1_146\))))
-- \Add0~92\ = CARRY(((!\Add0~97\) # (!dec_seconds_counter(5))))
-- \Add0~92COUT1_148\ = CARRY(((!\Add0~97COUT1_146\) # (!dec_seconds_counter(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => dec_seconds_counter(5),
	cin => \Add0~112\,
	cin0 => \Add0~97\,
	cin1 => \Add0~97COUT1_146\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~90_combout\,
	cout0 => \Add0~92\,
	cout1 => \Add0~92COUT1_148\);

-- Location: LC_X17_Y10_N8
\dec_seconds_counter[5]\ : cyclone_lcell
-- Equation(s):
-- dec_seconds_counter(5) = DFFEAS((((\Add0~90_combout\))), GLOBAL(\clk~combout\), !GLOBAL(\button_clear~combout\), , , dec_seconds_counter(5), !GLOBAL(\button_pause~combout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => dec_seconds_counter(5),
	datad => \Add0~90_combout\,
	aclr => \button_clear~combout\,
	aload => \ALT_INV_button_pause~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dec_seconds_counter(5));

-- Location: LC_X15_Y11_N0
\Add0~85\ : cyclone_lcell
-- Equation(s):
-- \Add0~85_combout\ = (dec_seconds_counter(7) $ ((\Add0~82\)))
-- \Add0~87\ = CARRY(((!\Add0~82\) # (!dec_seconds_counter(7))))
-- \Add0~87COUT1_150\ = CARRY(((!\Add0~82\) # (!dec_seconds_counter(7))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => dec_seconds_counter(7),
	cin => \Add0~82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~85_combout\,
	cout0 => \Add0~87\,
	cout1 => \Add0~87COUT1_150\);

-- Location: LC_X15_Y11_N1
\Add0~70\ : cyclone_lcell
-- Equation(s):
-- \Add0~70_combout\ = (dec_seconds_counter(8) $ ((!(!\Add0~82\ & \Add0~87\) # (\Add0~82\ & \Add0~87COUT1_150\))))
-- \Add0~72\ = CARRY(((dec_seconds_counter(8) & !\Add0~87\)))
-- \Add0~72COUT1_152\ = CARRY(((dec_seconds_counter(8) & !\Add0~87COUT1_150\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => dec_seconds_counter(8),
	cin => \Add0~82\,
	cin0 => \Add0~87\,
	cin1 => \Add0~87COUT1_150\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~70_combout\,
	cout0 => \Add0~72\,
	cout1 => \Add0~72COUT1_152\);

-- Location: LC_X17_Y8_N6
\dec_seconds_counter~6\ : cyclone_lcell
-- Equation(s):
-- \dec_seconds_counter~6_combout\ = (\Add0~70_combout\ & (((!\Equal0~6_combout\) # (!\Equal0~5_combout\)) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~5_combout\,
	datac => \Equal0~6_combout\,
	datad => \Add0~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dec_seconds_counter~6_combout\);

-- Location: LC_X17_Y8_N7
\dec_seconds_counter[8]\ : cyclone_lcell
-- Equation(s):
-- dec_seconds_counter(8) = DFFEAS((((\dec_seconds_counter~6_combout\))), GLOBAL(\clk~combout\), !GLOBAL(\button_clear~combout\), , , dec_seconds_counter(8), !GLOBAL(\button_pause~combout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => dec_seconds_counter(8),
	datad => \dec_seconds_counter~6_combout\,
	aclr => \button_clear~combout\,
	aload => \ALT_INV_button_pause~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dec_seconds_counter(8));

-- Location: LC_X15_Y11_N2
\Add0~65\ : cyclone_lcell
-- Equation(s):
-- \Add0~65_combout\ = (dec_seconds_counter(9) $ (((!\Add0~82\ & \Add0~72\) # (\Add0~82\ & \Add0~72COUT1_152\))))
-- \Add0~67\ = CARRY(((!\Add0~72\) # (!dec_seconds_counter(9))))
-- \Add0~67COUT1_154\ = CARRY(((!\Add0~72COUT1_152\) # (!dec_seconds_counter(9))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => dec_seconds_counter(9),
	cin => \Add0~82\,
	cin0 => \Add0~72\,
	cin1 => \Add0~72COUT1_152\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~65_combout\,
	cout0 => \Add0~67\,
	cout1 => \Add0~67COUT1_154\);

-- Location: LC_X17_Y8_N3
\dec_seconds_counter~5\ : cyclone_lcell
-- Equation(s):
-- \dec_seconds_counter~5_combout\ = (\Add0~65_combout\ & (((!\Equal0~6_combout\) # (!\Equal0~5_combout\)) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~5_combout\,
	datac => \Equal0~6_combout\,
	datad => \Add0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dec_seconds_counter~5_combout\);

-- Location: LC_X17_Y8_N4
\dec_seconds_counter[9]\ : cyclone_lcell
-- Equation(s):
-- dec_seconds_counter(9) = DFFEAS((((\dec_seconds_counter~5_combout\))), GLOBAL(\clk~combout\), !GLOBAL(\button_clear~combout\), , , dec_seconds_counter(9), !GLOBAL(\button_pause~combout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => dec_seconds_counter(9),
	datad => \dec_seconds_counter~5_combout\,
	aclr => \button_clear~combout\,
	aload => \ALT_INV_button_pause~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dec_seconds_counter(9));

-- Location: LC_X15_Y11_N3
\Add0~75\ : cyclone_lcell
-- Equation(s):
-- \Add0~75_combout\ = dec_seconds_counter(10) $ ((((!(!\Add0~82\ & \Add0~67\) # (\Add0~82\ & \Add0~67COUT1_154\)))))
-- \Add0~77\ = CARRY((dec_seconds_counter(10) & ((!\Add0~67\))))
-- \Add0~77COUT1_156\ = CARRY((dec_seconds_counter(10) & ((!\Add0~67COUT1_154\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => dec_seconds_counter(10),
	cin => \Add0~82\,
	cin0 => \Add0~67\,
	cin1 => \Add0~67COUT1_154\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~75_combout\,
	cout0 => \Add0~77\,
	cout1 => \Add0~77COUT1_156\);

-- Location: LC_X17_Y8_N8
\dec_seconds_counter[10]\ : cyclone_lcell
-- Equation(s):
-- dec_seconds_counter(10) = DFFEAS((((\Add0~75_combout\))), GLOBAL(\clk~combout\), !GLOBAL(\button_clear~combout\), , , dec_seconds_counter(10), !GLOBAL(\button_pause~combout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => dec_seconds_counter(10),
	datad => \Add0~75_combout\,
	aclr => \button_clear~combout\,
	aload => \ALT_INV_button_pause~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dec_seconds_counter(10));

-- Location: LC_X15_Y11_N4
\Add0~60\ : cyclone_lcell
-- Equation(s):
-- \Add0~60_combout\ = dec_seconds_counter(11) $ (((((!\Add0~82\ & \Add0~77\) # (\Add0~82\ & \Add0~77COUT1_156\)))))
-- \Add0~62\ = CARRY(((!\Add0~77COUT1_156\)) # (!dec_seconds_counter(11)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => dec_seconds_counter(11),
	cin => \Add0~82\,
	cin0 => \Add0~77\,
	cin1 => \Add0~77COUT1_156\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~60_combout\,
	cout => \Add0~62\);

-- Location: LC_X17_Y8_N1
\dec_seconds_counter~4\ : cyclone_lcell
-- Equation(s):
-- \dec_seconds_counter~4_combout\ = (\Add0~60_combout\ & (((!\Equal0~5_combout\) # (!\Equal0~6_combout\)) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~6_combout\,
	datac => \Equal0~5_combout\,
	datad => \Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dec_seconds_counter~4_combout\);

-- Location: LC_X17_Y8_N2
\dec_seconds_counter[11]\ : cyclone_lcell
-- Equation(s):
-- dec_seconds_counter(11) = DFFEAS((((\dec_seconds_counter~4_combout\))), GLOBAL(\clk~combout\), !GLOBAL(\button_clear~combout\), , , dec_seconds_counter(11), !GLOBAL(\button_pause~combout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => dec_seconds_counter(11),
	datad => \dec_seconds_counter~4_combout\,
	aclr => \button_clear~combout\,
	aload => \ALT_INV_button_pause~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dec_seconds_counter(11));

-- Location: LC_X15_Y11_N5
\Add0~55\ : cyclone_lcell
-- Equation(s):
-- \Add0~55_combout\ = (dec_seconds_counter(12) $ ((!\Add0~62\)))
-- \Add0~57\ = CARRY(((dec_seconds_counter(12) & !\Add0~62\)))
-- \Add0~57COUT1_158\ = CARRY(((dec_seconds_counter(12) & !\Add0~62\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => dec_seconds_counter(12),
	cin => \Add0~62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~55_combout\,
	cout0 => \Add0~57\,
	cout1 => \Add0~57COUT1_158\);

-- Location: LC_X16_Y10_N4
\dec_seconds_counter[12]\ : cyclone_lcell
-- Equation(s):
-- dec_seconds_counter(12) = DFFEAS(((\Add0~55_combout\)), GLOBAL(\clk~combout\), !GLOBAL(\button_clear~combout\), , , dec_seconds_counter(12), !GLOBAL(\button_pause~combout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \Add0~55_combout\,
	datac => dec_seconds_counter(12),
	aclr => \button_clear~combout\,
	aload => \ALT_INV_button_pause~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dec_seconds_counter(12));

-- Location: LC_X15_Y11_N6
\Add0~50\ : cyclone_lcell
-- Equation(s):
-- \Add0~50_combout\ = (dec_seconds_counter(13) $ (((!\Add0~62\ & \Add0~57\) # (\Add0~62\ & \Add0~57COUT1_158\))))
-- \Add0~52\ = CARRY(((!\Add0~57\) # (!dec_seconds_counter(13))))
-- \Add0~52COUT1_160\ = CARRY(((!\Add0~57COUT1_158\) # (!dec_seconds_counter(13))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => dec_seconds_counter(13),
	cin => \Add0~62\,
	cin0 => \Add0~57\,
	cin1 => \Add0~57COUT1_158\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~50_combout\,
	cout0 => \Add0~52\,
	cout1 => \Add0~52COUT1_160\);

-- Location: LC_X15_Y9_N2
\dec_seconds_counter[13]\ : cyclone_lcell
-- Equation(s):
-- dec_seconds_counter(13) = DFFEAS((((\Add0~50_combout\))), GLOBAL(\clk~combout\), !GLOBAL(\button_clear~combout\), , , dec_seconds_counter(13), !GLOBAL(\button_pause~combout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => dec_seconds_counter(13),
	datad => \Add0~50_combout\,
	aclr => \button_clear~combout\,
	aload => \ALT_INV_button_pause~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dec_seconds_counter(13));

-- Location: LC_X15_Y11_N7
\Add0~40\ : cyclone_lcell
-- Equation(s):
-- \Add0~40_combout\ = (dec_seconds_counter(14) $ ((!(!\Add0~62\ & \Add0~52\) # (\Add0~62\ & \Add0~52COUT1_160\))))
-- \Add0~42\ = CARRY(((dec_seconds_counter(14) & !\Add0~52\)))
-- \Add0~42COUT1_162\ = CARRY(((dec_seconds_counter(14) & !\Add0~52COUT1_160\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => dec_seconds_counter(14),
	cin => \Add0~62\,
	cin0 => \Add0~52\,
	cin1 => \Add0~52COUT1_160\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~40_combout\,
	cout0 => \Add0~42\,
	cout1 => \Add0~42COUT1_162\);

-- Location: LC_X16_Y10_N3
\dec_seconds_counter~3\ : cyclone_lcell
-- Equation(s):
-- \dec_seconds_counter~3_combout\ = (\Add0~40_combout\ & (((!\Equal0~5_combout\) # (!\Equal0~4_combout\)) # (!\Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~5_combout\,
	datad => \Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dec_seconds_counter~3_combout\);

-- Location: LC_X16_Y10_N2
\dec_seconds_counter[14]\ : cyclone_lcell
-- Equation(s):
-- dec_seconds_counter(14) = DFFEAS((((\dec_seconds_counter~3_combout\))), GLOBAL(\clk~combout\), !GLOBAL(\button_clear~combout\), , , dec_seconds_counter(14), !GLOBAL(\button_pause~combout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => dec_seconds_counter(14),
	datad => \dec_seconds_counter~3_combout\,
	aclr => \button_clear~combout\,
	aload => \ALT_INV_button_pause~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dec_seconds_counter(14));

-- Location: LC_X15_Y11_N8
\Add0~45\ : cyclone_lcell
-- Equation(s):
-- \Add0~45_combout\ = dec_seconds_counter(15) $ (((((!\Add0~62\ & \Add0~42\) # (\Add0~62\ & \Add0~42COUT1_162\)))))
-- \Add0~47\ = CARRY(((!\Add0~42\)) # (!dec_seconds_counter(15)))
-- \Add0~47COUT1_164\ = CARRY(((!\Add0~42COUT1_162\)) # (!dec_seconds_counter(15)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => dec_seconds_counter(15),
	cin => \Add0~62\,
	cin0 => \Add0~42\,
	cin1 => \Add0~42COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~45_combout\,
	cout0 => \Add0~47\,
	cout1 => \Add0~47COUT1_164\);

-- Location: LC_X16_Y10_N9
\dec_seconds_counter[15]\ : cyclone_lcell
-- Equation(s):
-- dec_seconds_counter(15) = DFFEAS((((\Add0~45_combout\))), GLOBAL(\clk~combout\), !GLOBAL(\button_clear~combout\), , , dec_seconds_counter(15), !GLOBAL(\button_pause~combout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => dec_seconds_counter(15),
	datad => \Add0~45_combout\,
	aclr => \button_clear~combout\,
	aload => \ALT_INV_button_pause~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dec_seconds_counter(15));

-- Location: LC_X16_Y10_N1
\Equal0~2\ : cyclone_lcell
-- Equation(s):
-- \Equal0~2_combout\ = (!dec_seconds_counter(15) & (dec_seconds_counter(14) & (!dec_seconds_counter(12) & !dec_seconds_counter(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => dec_seconds_counter(15),
	datab => dec_seconds_counter(14),
	datac => dec_seconds_counter(12),
	datad => dec_seconds_counter(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~2_combout\);

-- Location: LC_X15_Y11_N9
\Add0~35\ : cyclone_lcell
-- Equation(s):
-- \Add0~35_combout\ = (dec_seconds_counter(16) $ ((!(!\Add0~62\ & \Add0~47\) # (\Add0~62\ & \Add0~47COUT1_164\))))
-- \Add0~37\ = CARRY(((dec_seconds_counter(16) & !\Add0~47COUT1_164\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => dec_seconds_counter(16),
	cin => \Add0~62\,
	cin0 => \Add0~47\,
	cin1 => \Add0~47COUT1_164\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~35_combout\,
	cout => \Add0~37\);

-- Location: LC_X16_Y7_N9
\dec_seconds_counter[16]\ : cyclone_lcell
-- Equation(s):
-- dec_seconds_counter(16) = DFFEAS((((\Add0~35_combout\))), GLOBAL(\clk~combout\), !GLOBAL(\button_clear~combout\), , , dec_seconds_counter(16), !GLOBAL(\button_pause~combout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => dec_seconds_counter(16),
	datad => \Add0~35_combout\,
	aclr => \button_clear~combout\,
	aload => \ALT_INV_button_pause~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dec_seconds_counter(16));

-- Location: LC_X15_Y10_N0
\Add0~30\ : cyclone_lcell
-- Equation(s):
-- \Add0~30_combout\ = (dec_seconds_counter(17) $ ((\Add0~37\)))
-- \Add0~32\ = CARRY(((!\Add0~37\) # (!dec_seconds_counter(17))))
-- \Add0~32COUT1_166\ = CARRY(((!\Add0~37\) # (!dec_seconds_counter(17))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => dec_seconds_counter(17),
	cin => \Add0~37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~30_combout\,
	cout0 => \Add0~32\,
	cout1 => \Add0~32COUT1_166\);

-- Location: LC_X15_Y8_N2
\dec_seconds_counter[17]\ : cyclone_lcell
-- Equation(s):
-- dec_seconds_counter(17) = DFFEAS((((\Add0~30_combout\))), GLOBAL(\clk~combout\), !GLOBAL(\button_clear~combout\), , , dec_seconds_counter(17), !GLOBAL(\button_pause~combout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => dec_seconds_counter(17),
	datad => \Add0~30_combout\,
	aclr => \button_clear~combout\,
	aload => \ALT_INV_button_pause~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dec_seconds_counter(17));

-- Location: LC_X15_Y10_N1
\Add0~25\ : cyclone_lcell
-- Equation(s):
-- \Add0~25_combout\ = dec_seconds_counter(18) $ ((((!(!\Add0~37\ & \Add0~32\) # (\Add0~37\ & \Add0~32COUT1_166\)))))
-- \Add0~27\ = CARRY((dec_seconds_counter(18) & ((!\Add0~32\))))
-- \Add0~27COUT1_168\ = CARRY((dec_seconds_counter(18) & ((!\Add0~32COUT1_166\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => dec_seconds_counter(18),
	cin => \Add0~37\,
	cin0 => \Add0~32\,
	cin1 => \Add0~32COUT1_166\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~25_combout\,
	cout0 => \Add0~27\,
	cout1 => \Add0~27COUT1_168\);

-- Location: LC_X16_Y10_N6
\dec_seconds_counter~2\ : cyclone_lcell
-- Equation(s):
-- \dec_seconds_counter~2_combout\ = (\Add0~25_combout\ & (((!\Equal0~4_combout\) # (!\Equal0~5_combout\)) # (!\Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4ccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Add0~25_combout\,
	datac => \Equal0~5_combout\,
	datad => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dec_seconds_counter~2_combout\);

-- Location: LC_X16_Y10_N7
\dec_seconds_counter[18]\ : cyclone_lcell
-- Equation(s):
-- dec_seconds_counter(18) = DFFEAS((((\dec_seconds_counter~2_combout\))), GLOBAL(\clk~combout\), !GLOBAL(\button_clear~combout\), , , dec_seconds_counter(18), !GLOBAL(\button_pause~combout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => dec_seconds_counter(18),
	datad => \dec_seconds_counter~2_combout\,
	aclr => \button_clear~combout\,
	aload => \ALT_INV_button_pause~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dec_seconds_counter(18));

-- Location: LC_X15_Y10_N2
\Add0~20\ : cyclone_lcell
-- Equation(s):
-- \Add0~20_combout\ = dec_seconds_counter(19) $ (((((!\Add0~37\ & \Add0~27\) # (\Add0~37\ & \Add0~27COUT1_168\)))))
-- \Add0~22\ = CARRY(((!\Add0~27\)) # (!dec_seconds_counter(19)))
-- \Add0~22COUT1_170\ = CARRY(((!\Add0~27COUT1_168\)) # (!dec_seconds_counter(19)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => dec_seconds_counter(19),
	cin => \Add0~37\,
	cin0 => \Add0~27\,
	cin1 => \Add0~27COUT1_168\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~20_combout\,
	cout0 => \Add0~22\,
	cout1 => \Add0~22COUT1_170\);

-- Location: LC_X16_Y10_N0
\dec_seconds_counter~1\ : cyclone_lcell
-- Equation(s):
-- \dec_seconds_counter~1_combout\ = (\Add0~20_combout\ & (((!\Equal0~4_combout\) # (!\Equal0~5_combout\)) # (!\Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4ccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Add0~20_combout\,
	datac => \Equal0~5_combout\,
	datad => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dec_seconds_counter~1_combout\);

-- Location: LC_X16_Y10_N8
\dec_seconds_counter[19]\ : cyclone_lcell
-- Equation(s):
-- dec_seconds_counter(19) = DFFEAS((((\dec_seconds_counter~1_combout\))), GLOBAL(\clk~combout\), !GLOBAL(\button_clear~combout\), , , dec_seconds_counter(19), !GLOBAL(\button_pause~combout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => dec_seconds_counter(19),
	datad => \dec_seconds_counter~1_combout\,
	aclr => \button_clear~combout\,
	aload => \ALT_INV_button_pause~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dec_seconds_counter(19));

-- Location: LC_X17_Y10_N3
\Equal0~1\ : cyclone_lcell
-- Equation(s):
-- \Equal0~1_combout\ = (dec_seconds_counter(19) & (!dec_seconds_counter(17) & (!dec_seconds_counter(16) & dec_seconds_counter(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => dec_seconds_counter(19),
	datab => dec_seconds_counter(17),
	datac => dec_seconds_counter(16),
	datad => dec_seconds_counter(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~1_combout\);

-- Location: LC_X17_Y8_N0
\Equal0~3\ : cyclone_lcell
-- Equation(s):
-- \Equal0~3_combout\ = (dec_seconds_counter(8) & (!dec_seconds_counter(10) & (dec_seconds_counter(11) & dec_seconds_counter(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => dec_seconds_counter(8),
	datab => dec_seconds_counter(10),
	datac => dec_seconds_counter(11),
	datad => dec_seconds_counter(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~3_combout\);

-- Location: LC_X15_Y10_N3
\Add0~15\ : cyclone_lcell
-- Equation(s):
-- \Add0~15_combout\ = (dec_seconds_counter(20) $ ((!(!\Add0~37\ & \Add0~22\) # (\Add0~37\ & \Add0~22COUT1_170\))))
-- \Add0~17\ = CARRY(((dec_seconds_counter(20) & !\Add0~22\)))
-- \Add0~17COUT1_172\ = CARRY(((dec_seconds_counter(20) & !\Add0~22COUT1_170\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => dec_seconds_counter(20),
	cin => \Add0~37\,
	cin0 => \Add0~22\,
	cin1 => \Add0~22COUT1_170\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~15_combout\,
	cout0 => \Add0~17\,
	cout1 => \Add0~17COUT1_172\);

-- Location: LC_X12_Y10_N7
\dec_seconds_counter[20]\ : cyclone_lcell
-- Equation(s):
-- dec_seconds_counter(20) = DFFEAS((((\Add0~15_combout\))), GLOBAL(\clk~combout\), !GLOBAL(\button_clear~combout\), , , dec_seconds_counter(20), !GLOBAL(\button_pause~combout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => dec_seconds_counter(20),
	datad => \Add0~15_combout\,
	aclr => \button_clear~combout\,
	aload => \ALT_INV_button_pause~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dec_seconds_counter(20));

-- Location: LC_X15_Y10_N4
\Add0~10\ : cyclone_lcell
-- Equation(s):
-- \Add0~10_combout\ = (dec_seconds_counter(21) $ (((!\Add0~37\ & \Add0~17\) # (\Add0~37\ & \Add0~17COUT1_172\))))
-- \Add0~12\ = CARRY(((!\Add0~17COUT1_172\) # (!dec_seconds_counter(21))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => dec_seconds_counter(21),
	cin => \Add0~37\,
	cin0 => \Add0~17\,
	cin1 => \Add0~17COUT1_172\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~10_combout\,
	cout => \Add0~12\);

-- Location: LC_X12_Y10_N2
\dec_seconds_counter[21]\ : cyclone_lcell
-- Equation(s):
-- dec_seconds_counter(21) = DFFEAS((((\Add0~10_combout\))), GLOBAL(\clk~combout\), !GLOBAL(\button_clear~combout\), , , dec_seconds_counter(21), !GLOBAL(\button_pause~combout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => dec_seconds_counter(21),
	datad => \Add0~10_combout\,
	aclr => \button_clear~combout\,
	aload => \ALT_INV_button_pause~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dec_seconds_counter(21));

-- Location: LC_X15_Y10_N5
\Add0~0\ : cyclone_lcell
-- Equation(s):
-- \Add0~0_combout\ = dec_seconds_counter(22) $ ((((!\Add0~12\))))
-- \Add0~2\ = CARRY((dec_seconds_counter(22) & ((!\Add0~12\))))
-- \Add0~2COUT1_174\ = CARRY((dec_seconds_counter(22) & ((!\Add0~12\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => dec_seconds_counter(22),
	cin => \Add0~12\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~0_combout\,
	cout0 => \Add0~2\,
	cout1 => \Add0~2COUT1_174\);

-- Location: LC_X15_Y10_N8
\dec_seconds_counter~0\ : cyclone_lcell
-- Equation(s):
-- \dec_seconds_counter~0_combout\ = (\Add0~0_combout\ & (((!\Equal0~4_combout\) # (!\Equal0~5_combout\)) # (!\Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4ccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Add0~0_combout\,
	datac => \Equal0~5_combout\,
	datad => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dec_seconds_counter~0_combout\);

-- Location: LC_X15_Y10_N9
\dec_seconds_counter[22]\ : cyclone_lcell
-- Equation(s):
-- dec_seconds_counter(22) = DFFEAS((((\dec_seconds_counter~0_combout\))), GLOBAL(\clk~combout\), !GLOBAL(\button_clear~combout\), , , dec_seconds_counter(22), !GLOBAL(\button_pause~combout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => dec_seconds_counter(22),
	datad => \dec_seconds_counter~0_combout\,
	aclr => \button_clear~combout\,
	aload => \ALT_INV_button_pause~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dec_seconds_counter(22));

-- Location: LC_X15_Y10_N6
\Add0~5\ : cyclone_lcell
-- Equation(s):
-- \Add0~5_combout\ = (((!\Add0~12\ & \Add0~2\) # (\Add0~12\ & \Add0~2COUT1_174\) $ (dec_seconds_counter(23))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => dec_seconds_counter(23),
	cin => \Add0~12\,
	cin0 => \Add0~2\,
	cin1 => \Add0~2COUT1_174\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~5_combout\);

-- Location: LC_X15_Y10_N7
\dec_seconds_counter[23]\ : cyclone_lcell
-- Equation(s):
-- dec_seconds_counter(23) = DFFEAS((((\Add0~5_combout\))), GLOBAL(\clk~combout\), !GLOBAL(\button_clear~combout\), , , dec_seconds_counter(23), !GLOBAL(\button_pause~combout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => dec_seconds_counter(23),
	datad => \Add0~5_combout\,
	aclr => \button_clear~combout\,
	aload => \ALT_INV_button_pause~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dec_seconds_counter(23));

-- Location: LC_X12_Y10_N4
\Equal0~0\ : cyclone_lcell
-- Equation(s):
-- \Equal0~0_combout\ = (!dec_seconds_counter(20) & (!dec_seconds_counter(21) & (dec_seconds_counter(22) & !dec_seconds_counter(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => dec_seconds_counter(20),
	datab => dec_seconds_counter(21),
	datac => dec_seconds_counter(22),
	datad => dec_seconds_counter(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~0_combout\);

-- Location: LC_X17_Y10_N0
\Equal0~4\ : cyclone_lcell
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~2_combout\ & (\Equal0~1_combout\ & (\Equal0~3_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~4_combout\);

-- Location: LC_X15_Y12_N9
\Add0~80\ : cyclone_lcell
-- Equation(s):
-- \Add0~80_combout\ = (dec_seconds_counter(6) $ ((!(!\Add0~112\ & \Add0~92\) # (\Add0~112\ & \Add0~92COUT1_148\))))
-- \Add0~82\ = CARRY(((dec_seconds_counter(6) & !\Add0~92COUT1_148\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => dec_seconds_counter(6),
	cin => \Add0~112\,
	cin0 => \Add0~92\,
	cin1 => \Add0~92COUT1_148\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~80_combout\,
	cout => \Add0~82\);

-- Location: LC_X17_Y10_N5
\dec_seconds_counter~7\ : cyclone_lcell
-- Equation(s):
-- \dec_seconds_counter~7_combout\ = (\Add0~80_combout\ & (((!\Equal0~6_combout\) # (!\Equal0~4_combout\)) # (!\Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "70f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~4_combout\,
	datac => \Add0~80_combout\,
	datad => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dec_seconds_counter~7_combout\);

-- Location: LC_X17_Y10_N7
\dec_seconds_counter[6]\ : cyclone_lcell
-- Equation(s):
-- dec_seconds_counter(6) = DFFEAS((((\dec_seconds_counter~7_combout\))), GLOBAL(\clk~combout\), !GLOBAL(\button_clear~combout\), , , dec_seconds_counter(6), !GLOBAL(\button_pause~combout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => dec_seconds_counter(6),
	datad => \dec_seconds_counter~7_combout\,
	aclr => \button_clear~combout\,
	aload => \ALT_INV_button_pause~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dec_seconds_counter(6));

-- Location: LC_X17_Y10_N4
\dec_seconds_counter[7]\ : cyclone_lcell
-- Equation(s):
-- dec_seconds_counter(7) = DFFEAS(((\Add0~85_combout\)), GLOBAL(\clk~combout\), !GLOBAL(\button_clear~combout\), , , dec_seconds_counter(7), !GLOBAL(\button_pause~combout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \Add0~85_combout\,
	datac => dec_seconds_counter(7),
	aclr => \button_clear~combout\,
	aload => \ALT_INV_button_pause~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dec_seconds_counter(7));

-- Location: LC_X17_Y10_N6
\Equal0~5\ : cyclone_lcell
-- Equation(s):
-- \Equal0~5_combout\ = (!dec_seconds_counter(4) & (!dec_seconds_counter(5) & (!dec_seconds_counter(7) & dec_seconds_counter(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => dec_seconds_counter(4),
	datab => dec_seconds_counter(5),
	datac => dec_seconds_counter(7),
	datad => dec_seconds_counter(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~5_combout\);

-- Location: LC_X15_Y12_N3
\Add0~115\ : cyclone_lcell
-- Equation(s):
-- \Add0~115_combout\ = ((!dec_seconds_counter(0)))
-- \Add0~117\ = CARRY(((dec_seconds_counter(0))))
-- \Add0~117COUT1_140\ = CARRY(((dec_seconds_counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => dec_seconds_counter(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~115_combout\,
	cout0 => \Add0~117\,
	cout1 => \Add0~117COUT1_140\);

-- Location: LC_X16_Y10_N5
\dec_seconds_counter~8\ : cyclone_lcell
-- Equation(s):
-- \dec_seconds_counter~8_combout\ = (\Add0~115_combout\ & (((!\Equal0~6_combout\) # (!\Equal0~4_combout\)) # (!\Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "70f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~4_combout\,
	datac => \Add0~115_combout\,
	datad => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dec_seconds_counter~8_combout\);

-- Location: LC_X15_Y12_N0
\dec_seconds_counter[0]\ : cyclone_lcell
-- Equation(s):
-- dec_seconds_counter(0) = DFFEAS((((\dec_seconds_counter~8_combout\))), GLOBAL(\clk~combout\), !GLOBAL(\button_clear~combout\), , , dec_seconds_counter(0), !GLOBAL(\button_pause~combout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => dec_seconds_counter(0),
	datad => \dec_seconds_counter~8_combout\,
	aclr => \button_clear~combout\,
	aload => \ALT_INV_button_pause~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dec_seconds_counter(0));

-- Location: LC_X15_Y12_N4
\Add0~110\ : cyclone_lcell
-- Equation(s):
-- \Add0~110_combout\ = dec_seconds_counter(1) $ ((((\Add0~117\))))
-- \Add0~112\ = CARRY(((!\Add0~117COUT1_140\)) # (!dec_seconds_counter(1)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => dec_seconds_counter(1),
	cin0 => \Add0~117\,
	cin1 => \Add0~117COUT1_140\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~110_combout\,
	cout => \Add0~112\);

-- Location: LC_X15_Y12_N1
\dec_seconds_counter[1]\ : cyclone_lcell
-- Equation(s):
-- dec_seconds_counter(1) = DFFEAS(((\Add0~110_combout\)), GLOBAL(\clk~combout\), !GLOBAL(\button_clear~combout\), , , dec_seconds_counter(1), !GLOBAL(\button_pause~combout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \Add0~110_combout\,
	datac => dec_seconds_counter(1),
	aclr => \button_clear~combout\,
	aload => \ALT_INV_button_pause~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dec_seconds_counter(1));

-- Location: LC_X17_Y10_N2
\dec_seconds_counter[3]\ : cyclone_lcell
-- Equation(s):
-- dec_seconds_counter(3) = DFFEAS((\Add0~100_combout\), GLOBAL(\clk~combout\), !GLOBAL(\button_clear~combout\), , , dec_seconds_counter(3), !GLOBAL(\button_pause~combout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Add0~100_combout\,
	datac => dec_seconds_counter(3),
	aclr => \button_clear~combout\,
	aload => \ALT_INV_button_pause~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dec_seconds_counter(3));

-- Location: LC_X17_Y10_N1
\Equal0~6\ : cyclone_lcell
-- Equation(s):
-- \Equal0~6_combout\ = (!dec_seconds_counter(3) & (!dec_seconds_counter(0) & (!dec_seconds_counter(1) & !dec_seconds_counter(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => dec_seconds_counter(3),
	datab => dec_seconds_counter(0),
	datac => dec_seconds_counter(1),
	datad => dec_seconds_counter(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~6_combout\);

-- Location: LC_X17_Y8_N5
\Equal0~7\ : cyclone_lcell
-- Equation(s):
-- \Equal0~7_combout\ = ((\Equal0~6_combout\ & (\Equal0~5_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~6_combout\,
	datac => \Equal0~5_combout\,
	datad => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~7_combout\);

-- Location: LC_X26_Y11_N7
\dec_seconds[0]\ : cyclone_lcell
-- Equation(s):
-- dec_seconds(0) = DFFEAS((((!dec_seconds(0)))), GLOBAL(\clk~combout\), !GLOBAL(\button_clear~combout\), , \Equal0~7_combout\, dec_seconds(0), !GLOBAL(\button_pause~combout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => dec_seconds(0),
	datad => dec_seconds(0),
	aclr => \button_clear~combout\,
	aload => \ALT_INV_button_pause~combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dec_seconds(0));

-- Location: LC_X26_Y11_N9
\dec_seconds[2]\ : cyclone_lcell
-- Equation(s):
-- dec_seconds(2) = DFFEAS(dec_seconds(2) $ (((dec_seconds(0) & (dec_seconds(1) & \Equal0~7_combout\)))), GLOBAL(\clk~combout\), !GLOBAL(\button_clear~combout\), , , dec_seconds(2), !GLOBAL(\button_pause~combout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "78f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => dec_seconds(0),
	datab => dec_seconds(1),
	datac => dec_seconds(2),
	datad => \Equal0~7_combout\,
	aclr => \button_clear~combout\,
	aload => \ALT_INV_button_pause~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dec_seconds(2));

-- Location: LC_X26_Y11_N2
\dec_seconds[1]\ : cyclone_lcell
-- Equation(s):
-- dec_seconds(1) = DFFEAS((dec_seconds(0) & (!dec_seconds(1) & ((dec_seconds(2)) # (!dec_seconds(3))))) # (!dec_seconds(0) & (((dec_seconds(1))))), GLOBAL(\clk~combout\), !GLOBAL(\button_clear~combout\), , \Equal0~7_combout\, dec_seconds(1), 
-- !GLOBAL(\button_pause~combout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a52",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => dec_seconds(0),
	datab => dec_seconds(3),
	datac => dec_seconds(1),
	datad => dec_seconds(2),
	aclr => \button_clear~combout\,
	aload => \ALT_INV_button_pause~combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dec_seconds(1));

-- Location: LC_X26_Y11_N4
\dec_seconds[3]\ : cyclone_lcell
-- Equation(s):
-- dec_seconds(3) = DFFEAS((dec_seconds(0) & ((dec_seconds(1) & (dec_seconds(3) $ (dec_seconds(2)))) # (!dec_seconds(1) & (dec_seconds(3) & dec_seconds(2))))) # (!dec_seconds(0) & (((dec_seconds(3))))), GLOBAL(\clk~combout\), !GLOBAL(\button_clear~combout\), 
-- , \Equal0~7_combout\, dec_seconds(3), !GLOBAL(\button_pause~combout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "78d0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => dec_seconds(0),
	datab => dec_seconds(1),
	datac => dec_seconds(3),
	datad => dec_seconds(2),
	aclr => \button_clear~combout\,
	aload => \ALT_INV_button_pause~combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dec_seconds(3));

-- Location: LC_X26_Y11_N0
\dec_seconds_indicator[0]~reg0\ : cyclone_lcell
-- Equation(s):
-- \dec_seconds_indicator[0]~reg0_regout\ = DFFEAS((dec_seconds(2) & ((dec_seconds(3)) # ((dec_seconds(0) & dec_seconds(1))))) # (!dec_seconds(2) & ((dec_seconds(3) $ (!dec_seconds(1))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ecc3",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => dec_seconds(0),
	datab => dec_seconds(3),
	datac => dec_seconds(2),
	datad => dec_seconds(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_seconds_indicator[0]~reg0_regout\);

-- Location: LC_X26_Y11_N6
\dec_seconds_indicator[1]~reg0\ : cyclone_lcell
-- Equation(s):
-- \dec_seconds_indicator[1]~reg0_regout\ = DFFEAS((!dec_seconds(3) & ((dec_seconds(0) & ((dec_seconds(1)) # (!dec_seconds(2)))) # (!dec_seconds(0) & (!dec_seconds(2) & dec_seconds(1))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2302",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => dec_seconds(0),
	datab => dec_seconds(3),
	datac => dec_seconds(2),
	datad => dec_seconds(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_seconds_indicator[1]~reg0_regout\);

-- Location: LC_X26_Y11_N3
\dec_seconds_indicator[2]~reg0\ : cyclone_lcell
-- Equation(s):
-- \dec_seconds_indicator[2]~reg0_regout\ = DFFEAS((dec_seconds(1) & (dec_seconds(0) & (!dec_seconds(3)))) # (!dec_seconds(1) & ((dec_seconds(2) & ((!dec_seconds(3)))) # (!dec_seconds(2) & (dec_seconds(0))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "223a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => dec_seconds(0),
	datab => dec_seconds(3),
	datac => dec_seconds(2),
	datad => dec_seconds(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_seconds_indicator[2]~reg0_regout\);

-- Location: LC_X26_Y11_N8
\dec_seconds_indicator[3]~reg0\ : cyclone_lcell
-- Equation(s):
-- \dec_seconds_indicator[3]~reg0_regout\ = DFFEAS((!dec_seconds(3) & ((dec_seconds(0) & (dec_seconds(2) $ (!dec_seconds(1)))) # (!dec_seconds(0) & (dec_seconds(2) & !dec_seconds(1))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2012",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => dec_seconds(0),
	datab => dec_seconds(3),
	datac => dec_seconds(2),
	datad => dec_seconds(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_seconds_indicator[3]~reg0_regout\);

-- Location: LC_X26_Y11_N5
\dec_seconds_indicator[4]~reg0\ : cyclone_lcell
-- Equation(s):
-- \dec_seconds_indicator[4]~reg0_regout\ = DFFEAS((!dec_seconds(0) & (!dec_seconds(3) & (!dec_seconds(2) & dec_seconds(1)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => dec_seconds(0),
	datab => dec_seconds(3),
	datac => dec_seconds(2),
	datad => dec_seconds(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_seconds_indicator[4]~reg0_regout\);

-- Location: LC_X26_Y9_N4
\dec_seconds_indicator[5]~reg0\ : cyclone_lcell
-- Equation(s):
-- \dec_seconds_indicator[5]~reg0_regout\ = DFFEAS((dec_seconds(2) & (!dec_seconds(3) & (dec_seconds(0) $ (dec_seconds(1))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0408",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => dec_seconds(0),
	datab => dec_seconds(2),
	datac => dec_seconds(3),
	datad => dec_seconds(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_seconds_indicator[5]~reg0_regout\);

-- Location: LC_X26_Y9_N2
\dec_seconds_indicator[6]~reg0\ : cyclone_lcell
-- Equation(s):
-- \dec_seconds_indicator[6]~reg0_regout\ = DFFEAS((!dec_seconds(3) & (!dec_seconds(1) & (dec_seconds(0) $ (dec_seconds(2))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0006",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => dec_seconds(0),
	datab => dec_seconds(2),
	datac => dec_seconds(3),
	datad => dec_seconds(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_seconds_indicator[6]~reg0_regout\);

-- Location: LC_X26_Y11_N1
\Equal1~0\ : cyclone_lcell
-- Equation(s):
-- \Equal1~0_combout\ = (dec_seconds(0) & (dec_seconds(3) & (!dec_seconds(2) & !dec_seconds(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => dec_seconds(0),
	datab => dec_seconds(3),
	datac => dec_seconds(2),
	datad => dec_seconds(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~0_combout\);

-- Location: LC_X17_Y8_N9
\seconds[3]~0\ : cyclone_lcell
-- Equation(s):
-- \seconds[3]~0_combout\ = (\Equal0~5_combout\ & (\Equal1~0_combout\ & (\Equal0~6_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal1~0_combout\,
	datac => \Equal0~6_combout\,
	datad => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \seconds[3]~0_combout\);

-- Location: LC_X22_Y13_N9
\seconds[0]\ : cyclone_lcell
-- Equation(s):
-- seconds(0) = DFFEAS(((!seconds(0))), GLOBAL(\clk~combout\), !GLOBAL(\button_clear~combout\), , \seconds[3]~0_combout\, seconds(0), !GLOBAL(\button_pause~combout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3333",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => seconds(0),
	datac => seconds(0),
	aclr => \button_clear~combout\,
	aload => \ALT_INV_button_pause~combout\,
	ena => \seconds[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => seconds(0));

-- Location: LC_X22_Y13_N2
\seconds[2]\ : cyclone_lcell
-- Equation(s):
-- seconds(2) = DFFEAS(seconds(2) $ (((seconds(1) & (seconds(0) & \seconds[3]~0_combout\)))), GLOBAL(\clk~combout\), !GLOBAL(\button_clear~combout\), , , seconds(2), !GLOBAL(\button_pause~combout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "78f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => seconds(1),
	datab => seconds(0),
	datac => seconds(2),
	datad => \seconds[3]~0_combout\,
	aclr => \button_clear~combout\,
	aload => \ALT_INV_button_pause~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => seconds(2));

-- Location: LC_X22_Y13_N8
\seconds[3]\ : cyclone_lcell
-- Equation(s):
-- seconds(3) = DFFEAS((seconds(1) & (seconds(3) $ (((seconds(0) & seconds(2)))))) # (!seconds(1) & (seconds(3) & ((seconds(2)) # (!seconds(0))))), GLOBAL(\clk~combout\), !GLOBAL(\button_clear~combout\), , \seconds[3]~0_combout\, seconds(3), 
-- !GLOBAL(\button_pause~combout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "78b0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => seconds(1),
	datab => seconds(0),
	datac => seconds(3),
	datad => seconds(2),
	aclr => \button_clear~combout\,
	aload => \ALT_INV_button_pause~combout\,
	ena => \seconds[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => seconds(3));

-- Location: LC_X22_Y13_N7
\seconds[1]\ : cyclone_lcell
-- Equation(s):
-- seconds(1) = DFFEAS((seconds(0) & (!seconds(1) & ((seconds(2)) # (!seconds(3))))) # (!seconds(0) & (((seconds(1))))), GLOBAL(\clk~combout\), !GLOBAL(\button_clear~combout\), , \seconds[3]~0_combout\, seconds(1), !GLOBAL(\button_pause~combout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c34",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => seconds(3),
	datab => seconds(0),
	datac => seconds(1),
	datad => seconds(2),
	aclr => \button_clear~combout\,
	aload => \ALT_INV_button_pause~combout\,
	ena => \seconds[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => seconds(1));

-- Location: LC_X22_Y13_N1
\seconds_indicator[0]~reg0\ : cyclone_lcell
-- Equation(s):
-- \seconds_indicator[0]~reg0_regout\ = DFFEAS((seconds(1) & ((seconds(3)) # ((seconds(0) & seconds(2))))) # (!seconds(1) & (seconds(3) $ (((!seconds(2)))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec99",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => seconds(1),
	datab => seconds(3),
	datac => seconds(0),
	datad => seconds(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seconds_indicator[0]~reg0_regout\);

-- Location: LC_X22_Y13_N5
\seconds_indicator[1]~reg0\ : cyclone_lcell
-- Equation(s):
-- \seconds_indicator[1]~reg0_regout\ = DFFEAS((!seconds(3) & ((seconds(1) & ((seconds(0)) # (!seconds(2)))) # (!seconds(1) & (seconds(0) & !seconds(2))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2032",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => seconds(1),
	datab => seconds(3),
	datac => seconds(0),
	datad => seconds(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seconds_indicator[1]~reg0_regout\);

-- Location: LC_X22_Y13_N0
\seconds_indicator[2]~reg0\ : cyclone_lcell
-- Equation(s):
-- \seconds_indicator[2]~reg0_regout\ = DFFEAS((seconds(1) & (!seconds(3) & (seconds(0)))) # (!seconds(1) & ((seconds(2) & (!seconds(3))) # (!seconds(2) & ((seconds(0)))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3170",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => seconds(1),
	datab => seconds(3),
	datac => seconds(0),
	datad => seconds(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seconds_indicator[2]~reg0_regout\);

-- Location: LC_X22_Y13_N3
\seconds_indicator[3]~reg0\ : cyclone_lcell
-- Equation(s):
-- \seconds_indicator[3]~reg0_regout\ = DFFEAS((!seconds(3) & ((seconds(1) & (seconds(0) & seconds(2))) # (!seconds(1) & (seconds(0) $ (seconds(2)))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2110",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => seconds(1),
	datab => seconds(3),
	datac => seconds(0),
	datad => seconds(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seconds_indicator[3]~reg0_regout\);

-- Location: LC_X22_Y13_N6
\seconds_indicator[4]~reg0\ : cyclone_lcell
-- Equation(s):
-- \seconds_indicator[4]~reg0_regout\ = DFFEAS((seconds(1) & (!seconds(3) & (!seconds(0) & !seconds(2)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => seconds(1),
	datab => seconds(3),
	datac => seconds(0),
	datad => seconds(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seconds_indicator[4]~reg0_regout\);

-- Location: LC_X22_Y13_N4
\seconds_indicator[5]~reg0\ : cyclone_lcell
-- Equation(s):
-- \seconds_indicator[5]~reg0_regout\ = DFFEAS((!seconds(3) & (seconds(2) & (seconds(1) $ (seconds(0))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1200",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => seconds(1),
	datab => seconds(3),
	datac => seconds(0),
	datad => seconds(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seconds_indicator[5]~reg0_regout\);

-- Location: LC_X8_Y13_N2
\seconds_indicator[6]~reg0\ : cyclone_lcell
-- Equation(s):
-- \seconds_indicator[6]~reg0_regout\ = DFFEAS((!seconds(3) & (!seconds(1) & (seconds(0) $ (seconds(2))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0014",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => seconds(3),
	datab => seconds(0),
	datac => seconds(2),
	datad => seconds(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seconds_indicator[6]~reg0_regout\);

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dec_seconds_indicator[0]~I\ : cyclone_io
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
	datain => \dec_seconds_indicator[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dec_seconds_indicator(0));

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dec_seconds_indicator[1]~I\ : cyclone_io
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
	datain => \dec_seconds_indicator[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dec_seconds_indicator(1));

-- Location: PIN_106,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dec_seconds_indicator[2]~I\ : cyclone_io
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
	datain => \dec_seconds_indicator[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dec_seconds_indicator(2));

-- Location: PIN_105,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dec_seconds_indicator[3]~I\ : cyclone_io
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
	datain => \dec_seconds_indicator[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dec_seconds_indicator(3));

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dec_seconds_indicator[4]~I\ : cyclone_io
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
	datain => \dec_seconds_indicator[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dec_seconds_indicator(4));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dec_seconds_indicator[5]~I\ : cyclone_io
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
	datain => \dec_seconds_indicator[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dec_seconds_indicator(5));

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dec_seconds_indicator[6]~I\ : cyclone_io
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
	datain => \dec_seconds_indicator[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dec_seconds_indicator(6));

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seconds_indicator[0]~I\ : cyclone_io
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
	datain => \seconds_indicator[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seconds_indicator(0));

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seconds_indicator[1]~I\ : cyclone_io
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
	datain => \seconds_indicator[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seconds_indicator(1));

-- Location: PIN_110,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seconds_indicator[2]~I\ : cyclone_io
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
	datain => \seconds_indicator[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seconds_indicator(2));

-- Location: PIN_109,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seconds_indicator[3]~I\ : cyclone_io
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
	datain => \seconds_indicator[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seconds_indicator(3));

-- Location: PIN_108,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seconds_indicator[4]~I\ : cyclone_io
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
	datain => \seconds_indicator[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seconds_indicator(4));

-- Location: PIN_111,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seconds_indicator[5]~I\ : cyclone_io
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
	datain => \seconds_indicator[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seconds_indicator(5));

-- Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seconds_indicator[6]~I\ : cyclone_io
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
	datain => \seconds_indicator[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seconds_indicator(6));

-- Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\unused_point~I\ : cyclone_io
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
	padio => ww_unused_point);
END structure;


