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

-- DATE "09/24/2020 13:50:11"

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

ENTITY 	lab3 IS
    PORT (
	Symbol : OUT std_logic_vector(6 DOWNTO 0);
	clk : IN std_logic
	);
END lab3;

-- Design Ports Information
-- Symbol[0]	=>  Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Symbol[1]	=>  Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Symbol[2]	=>  Location: PIN_110,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Symbol[3]	=>  Location: PIN_109,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Symbol[4]	=>  Location: PIN_108,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Symbol[5]	=>  Location: PIN_111,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Symbol[6]	=>  Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF lab3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Symbol : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \counter[1]~1\ : std_logic;
SIGNAL \counter[1]~1COUT1_61\ : std_logic;
SIGNAL \counter[2]~3\ : std_logic;
SIGNAL \counter[2]~3COUT1_63\ : std_logic;
SIGNAL \counter[3]~5\ : std_logic;
SIGNAL \counter[3]~5COUT1_65\ : std_logic;
SIGNAL \counter[4]~7\ : std_logic;
SIGNAL \counter[4]~7COUT1_67\ : std_logic;
SIGNAL \counter[5]~9\ : std_logic;
SIGNAL \counter[6]~11\ : std_logic;
SIGNAL \counter[6]~11COUT1_69\ : std_logic;
SIGNAL \counter[7]~13\ : std_logic;
SIGNAL \counter[7]~13COUT1_71\ : std_logic;
SIGNAL \counter[8]~15\ : std_logic;
SIGNAL \counter[8]~15COUT1_73\ : std_logic;
SIGNAL \counter[9]~17\ : std_logic;
SIGNAL \counter[9]~17COUT1_75\ : std_logic;
SIGNAL \counter[10]~19\ : std_logic;
SIGNAL \counter[11]~21\ : std_logic;
SIGNAL \counter[11]~21COUT1_77\ : std_logic;
SIGNAL \counter[12]~23\ : std_logic;
SIGNAL \counter[12]~23COUT1_79\ : std_logic;
SIGNAL \counter[13]~25\ : std_logic;
SIGNAL \counter[13]~25COUT1_81\ : std_logic;
SIGNAL \counter[14]~27\ : std_logic;
SIGNAL \counter[14]~27COUT1_83\ : std_logic;
SIGNAL \counter[15]~29\ : std_logic;
SIGNAL \counter[16]~31\ : std_logic;
SIGNAL \counter[16]~31COUT1_85\ : std_logic;
SIGNAL \counter[17]~33\ : std_logic;
SIGNAL \counter[17]~33COUT1_87\ : std_logic;
SIGNAL \counter[18]~35\ : std_logic;
SIGNAL \counter[18]~35COUT1_89\ : std_logic;
SIGNAL \counter[19]~37\ : std_logic;
SIGNAL \counter[19]~37COUT1_91\ : std_logic;
SIGNAL \counter[20]~39\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \number[1]~3_combout\ : std_logic;
SIGNAL \Symbol[0]~reg0_regout\ : std_logic;
SIGNAL \Symbol[1]~reg0_regout\ : std_logic;
SIGNAL \Symbol[2]~reg0_regout\ : std_logic;
SIGNAL \Symbol[3]~reg0_regout\ : std_logic;
SIGNAL \Symbol[4]~reg0_regout\ : std_logic;
SIGNAL \Symbol[5]~reg0_regout\ : std_logic;
SIGNAL \Symbol[6]~reg0_regout\ : std_logic;
SIGNAL counter : std_logic_vector(21 DOWNTO 0);
SIGNAL number : std_logic_vector(3 DOWNTO 0);

BEGIN

Symbol <= ww_Symbol;
ww_clk <= clk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

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

-- Location: LC_X24_Y12_N3
\counter[0]\ : cyclone_lcell
-- Equation(s):
-- counter(0) = DFFEAS((((!counter(0)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => counter(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(0));

-- Location: LC_X24_Y12_N5
\counter[1]\ : cyclone_lcell
-- Equation(s):
-- counter(1) = DFFEAS(counter(1) $ ((counter(0))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \counter[1]~1\ = CARRY((counter(1) & (counter(0))))
-- \counter[1]~1COUT1_61\ = CARRY((counter(1) & (counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => counter(1),
	datab => counter(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(1),
	cout0 => \counter[1]~1\,
	cout1 => \counter[1]~1COUT1_61\);

-- Location: LC_X24_Y12_N6
\counter[2]\ : cyclone_lcell
-- Equation(s):
-- counter(2) = DFFEAS(counter(2) $ ((((\counter[1]~1\)))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \counter[2]~3\ = CARRY(((!\counter[1]~1\)) # (!counter(2)))
-- \counter[2]~3COUT1_63\ = CARRY(((!\counter[1]~1COUT1_61\)) # (!counter(2)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => counter(2),
	aclr => GND,
	cin0 => \counter[1]~1\,
	cin1 => \counter[1]~1COUT1_61\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(2),
	cout0 => \counter[2]~3\,
	cout1 => \counter[2]~3COUT1_63\);

-- Location: LC_X24_Y12_N7
\counter[3]\ : cyclone_lcell
-- Equation(s):
-- counter(3) = DFFEAS(counter(3) $ ((((!\counter[2]~3\)))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \counter[3]~5\ = CARRY((counter(3) & ((!\counter[2]~3\))))
-- \counter[3]~5COUT1_65\ = CARRY((counter(3) & ((!\counter[2]~3COUT1_63\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => counter(3),
	aclr => GND,
	cin0 => \counter[2]~3\,
	cin1 => \counter[2]~3COUT1_63\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(3),
	cout0 => \counter[3]~5\,
	cout1 => \counter[3]~5COUT1_65\);

-- Location: LC_X24_Y12_N8
\counter[4]\ : cyclone_lcell
-- Equation(s):
-- counter(4) = DFFEAS((counter(4) $ ((\counter[3]~5\))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \counter[4]~7\ = CARRY(((!\counter[3]~5\) # (!counter(4))))
-- \counter[4]~7COUT1_67\ = CARRY(((!\counter[3]~5COUT1_65\) # (!counter(4))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => counter(4),
	aclr => GND,
	cin0 => \counter[3]~5\,
	cin1 => \counter[3]~5COUT1_65\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(4),
	cout0 => \counter[4]~7\,
	cout1 => \counter[4]~7COUT1_67\);

-- Location: LC_X24_Y12_N9
\counter[5]\ : cyclone_lcell
-- Equation(s):
-- counter(5) = DFFEAS(counter(5) $ ((((!\counter[4]~7\)))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \counter[5]~9\ = CARRY((counter(5) & ((!\counter[4]~7COUT1_67\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => counter(5),
	aclr => GND,
	cin0 => \counter[4]~7\,
	cin1 => \counter[4]~7COUT1_67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(5),
	cout => \counter[5]~9\);

-- Location: LC_X24_Y11_N0
\counter[6]\ : cyclone_lcell
-- Equation(s):
-- counter(6) = DFFEAS((counter(6) $ ((\counter[5]~9\))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \counter[6]~11\ = CARRY(((!\counter[5]~9\) # (!counter(6))))
-- \counter[6]~11COUT1_69\ = CARRY(((!\counter[5]~9\) # (!counter(6))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => counter(6),
	aclr => GND,
	cin => \counter[5]~9\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(6),
	cout0 => \counter[6]~11\,
	cout1 => \counter[6]~11COUT1_69\);

-- Location: LC_X24_Y11_N1
\counter[7]\ : cyclone_lcell
-- Equation(s):
-- counter(7) = DFFEAS(counter(7) $ ((((!(!\counter[5]~9\ & \counter[6]~11\) # (\counter[5]~9\ & \counter[6]~11COUT1_69\))))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \counter[7]~13\ = CARRY((counter(7) & ((!\counter[6]~11\))))
-- \counter[7]~13COUT1_71\ = CARRY((counter(7) & ((!\counter[6]~11COUT1_69\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => counter(7),
	aclr => GND,
	cin => \counter[5]~9\,
	cin0 => \counter[6]~11\,
	cin1 => \counter[6]~11COUT1_69\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(7),
	cout0 => \counter[7]~13\,
	cout1 => \counter[7]~13COUT1_71\);

-- Location: LC_X24_Y11_N2
\counter[8]\ : cyclone_lcell
-- Equation(s):
-- counter(8) = DFFEAS(counter(8) $ (((((!\counter[5]~9\ & \counter[7]~13\) # (\counter[5]~9\ & \counter[7]~13COUT1_71\))))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \counter[8]~15\ = CARRY(((!\counter[7]~13\)) # (!counter(8)))
-- \counter[8]~15COUT1_73\ = CARRY(((!\counter[7]~13COUT1_71\)) # (!counter(8)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => counter(8),
	aclr => GND,
	cin => \counter[5]~9\,
	cin0 => \counter[7]~13\,
	cin1 => \counter[7]~13COUT1_71\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(8),
	cout0 => \counter[8]~15\,
	cout1 => \counter[8]~15COUT1_73\);

-- Location: LC_X24_Y11_N3
\counter[9]\ : cyclone_lcell
-- Equation(s):
-- counter(9) = DFFEAS((counter(9) $ ((!(!\counter[5]~9\ & \counter[8]~15\) # (\counter[5]~9\ & \counter[8]~15COUT1_73\)))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \counter[9]~17\ = CARRY(((counter(9) & !\counter[8]~15\)))
-- \counter[9]~17COUT1_75\ = CARRY(((counter(9) & !\counter[8]~15COUT1_73\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => counter(9),
	aclr => GND,
	cin => \counter[5]~9\,
	cin0 => \counter[8]~15\,
	cin1 => \counter[8]~15COUT1_73\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(9),
	cout0 => \counter[9]~17\,
	cout1 => \counter[9]~17COUT1_75\);

-- Location: LC_X24_Y11_N4
\counter[10]\ : cyclone_lcell
-- Equation(s):
-- counter(10) = DFFEAS((counter(10) $ (((!\counter[5]~9\ & \counter[9]~17\) # (\counter[5]~9\ & \counter[9]~17COUT1_75\)))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \counter[10]~19\ = CARRY(((!\counter[9]~17COUT1_75\) # (!counter(10))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => counter(10),
	aclr => GND,
	cin => \counter[5]~9\,
	cin0 => \counter[9]~17\,
	cin1 => \counter[9]~17COUT1_75\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(10),
	cout => \counter[10]~19\);

-- Location: LC_X24_Y11_N5
\counter[11]\ : cyclone_lcell
-- Equation(s):
-- counter(11) = DFFEAS((counter(11) $ ((!\counter[10]~19\))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \counter[11]~21\ = CARRY(((counter(11) & !\counter[10]~19\)))
-- \counter[11]~21COUT1_77\ = CARRY(((counter(11) & !\counter[10]~19\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => counter(11),
	aclr => GND,
	cin => \counter[10]~19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(11),
	cout0 => \counter[11]~21\,
	cout1 => \counter[11]~21COUT1_77\);

-- Location: LC_X24_Y11_N6
\counter[12]\ : cyclone_lcell
-- Equation(s):
-- counter(12) = DFFEAS(counter(12) $ (((((!\counter[10]~19\ & \counter[11]~21\) # (\counter[10]~19\ & \counter[11]~21COUT1_77\))))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \counter[12]~23\ = CARRY(((!\counter[11]~21\)) # (!counter(12)))
-- \counter[12]~23COUT1_79\ = CARRY(((!\counter[11]~21COUT1_77\)) # (!counter(12)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => counter(12),
	aclr => GND,
	cin => \counter[10]~19\,
	cin0 => \counter[11]~21\,
	cin1 => \counter[11]~21COUT1_77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(12),
	cout0 => \counter[12]~23\,
	cout1 => \counter[12]~23COUT1_79\);

-- Location: LC_X24_Y11_N7
\counter[13]\ : cyclone_lcell
-- Equation(s):
-- counter(13) = DFFEAS(counter(13) $ ((((!(!\counter[10]~19\ & \counter[12]~23\) # (\counter[10]~19\ & \counter[12]~23COUT1_79\))))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \counter[13]~25\ = CARRY((counter(13) & ((!\counter[12]~23\))))
-- \counter[13]~25COUT1_81\ = CARRY((counter(13) & ((!\counter[12]~23COUT1_79\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => counter(13),
	aclr => GND,
	cin => \counter[10]~19\,
	cin0 => \counter[12]~23\,
	cin1 => \counter[12]~23COUT1_79\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(13),
	cout0 => \counter[13]~25\,
	cout1 => \counter[13]~25COUT1_81\);

-- Location: LC_X24_Y11_N8
\counter[14]\ : cyclone_lcell
-- Equation(s):
-- counter(14) = DFFEAS((counter(14) $ (((!\counter[10]~19\ & \counter[13]~25\) # (\counter[10]~19\ & \counter[13]~25COUT1_81\)))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \counter[14]~27\ = CARRY(((!\counter[13]~25\) # (!counter(14))))
-- \counter[14]~27COUT1_83\ = CARRY(((!\counter[13]~25COUT1_81\) # (!counter(14))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => counter(14),
	aclr => GND,
	cin => \counter[10]~19\,
	cin0 => \counter[13]~25\,
	cin1 => \counter[13]~25COUT1_81\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(14),
	cout0 => \counter[14]~27\,
	cout1 => \counter[14]~27COUT1_83\);

-- Location: LC_X24_Y11_N9
\counter[15]\ : cyclone_lcell
-- Equation(s):
-- counter(15) = DFFEAS(counter(15) $ ((((!(!\counter[10]~19\ & \counter[14]~27\) # (\counter[10]~19\ & \counter[14]~27COUT1_83\))))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \counter[15]~29\ = CARRY((counter(15) & ((!\counter[14]~27COUT1_83\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => counter(15),
	aclr => GND,
	cin => \counter[10]~19\,
	cin0 => \counter[14]~27\,
	cin1 => \counter[14]~27COUT1_83\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(15),
	cout => \counter[15]~29\);

-- Location: LC_X24_Y10_N0
\counter[16]\ : cyclone_lcell
-- Equation(s):
-- counter(16) = DFFEAS((counter(16) $ ((\counter[15]~29\))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \counter[16]~31\ = CARRY(((!\counter[15]~29\) # (!counter(16))))
-- \counter[16]~31COUT1_85\ = CARRY(((!\counter[15]~29\) # (!counter(16))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => counter(16),
	aclr => GND,
	cin => \counter[15]~29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(16),
	cout0 => \counter[16]~31\,
	cout1 => \counter[16]~31COUT1_85\);

-- Location: LC_X24_Y10_N1
\counter[17]\ : cyclone_lcell
-- Equation(s):
-- counter(17) = DFFEAS(counter(17) $ ((((!(!\counter[15]~29\ & \counter[16]~31\) # (\counter[15]~29\ & \counter[16]~31COUT1_85\))))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \counter[17]~33\ = CARRY((counter(17) & ((!\counter[16]~31\))))
-- \counter[17]~33COUT1_87\ = CARRY((counter(17) & ((!\counter[16]~31COUT1_85\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => counter(17),
	aclr => GND,
	cin => \counter[15]~29\,
	cin0 => \counter[16]~31\,
	cin1 => \counter[16]~31COUT1_85\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(17),
	cout0 => \counter[17]~33\,
	cout1 => \counter[17]~33COUT1_87\);

-- Location: LC_X24_Y10_N2
\counter[18]\ : cyclone_lcell
-- Equation(s):
-- counter(18) = DFFEAS(counter(18) $ (((((!\counter[15]~29\ & \counter[17]~33\) # (\counter[15]~29\ & \counter[17]~33COUT1_87\))))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \counter[18]~35\ = CARRY(((!\counter[17]~33\)) # (!counter(18)))
-- \counter[18]~35COUT1_89\ = CARRY(((!\counter[17]~33COUT1_87\)) # (!counter(18)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => counter(18),
	aclr => GND,
	cin => \counter[15]~29\,
	cin0 => \counter[17]~33\,
	cin1 => \counter[17]~33COUT1_87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(18),
	cout0 => \counter[18]~35\,
	cout1 => \counter[18]~35COUT1_89\);

-- Location: LC_X24_Y10_N3
\counter[19]\ : cyclone_lcell
-- Equation(s):
-- counter(19) = DFFEAS((counter(19) $ ((!(!\counter[15]~29\ & \counter[18]~35\) # (\counter[15]~29\ & \counter[18]~35COUT1_89\)))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \counter[19]~37\ = CARRY(((counter(19) & !\counter[18]~35\)))
-- \counter[19]~37COUT1_91\ = CARRY(((counter(19) & !\counter[18]~35COUT1_89\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => counter(19),
	aclr => GND,
	cin => \counter[15]~29\,
	cin0 => \counter[18]~35\,
	cin1 => \counter[18]~35COUT1_89\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(19),
	cout0 => \counter[19]~37\,
	cout1 => \counter[19]~37COUT1_91\);

-- Location: LC_X24_Y10_N4
\counter[20]\ : cyclone_lcell
-- Equation(s):
-- counter(20) = DFFEAS((counter(20) $ (((!\counter[15]~29\ & \counter[19]~37\) # (\counter[15]~29\ & \counter[19]~37COUT1_91\)))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \counter[20]~39\ = CARRY(((!\counter[19]~37COUT1_91\) # (!counter(20))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => counter(20),
	aclr => GND,
	cin => \counter[15]~29\,
	cin0 => \counter[19]~37\,
	cin1 => \counter[19]~37COUT1_91\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(20),
	cout => \counter[20]~39\);

-- Location: LC_X24_Y10_N5
\counter[21]\ : cyclone_lcell
-- Equation(s):
-- counter(21) = DFFEAS(((\counter[20]~39\ $ (!counter(21)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => counter(21),
	aclr => GND,
	cin => \counter[20]~39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(21));

-- Location: LC_X24_Y10_N8
\Equal0~5\ : cyclone_lcell
-- Equation(s):
-- \Equal0~5_combout\ = (counter(17) & (counter(16) & (counter(18) & counter(19))))

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
	dataa => counter(17),
	datab => counter(16),
	datac => counter(18),
	datad => counter(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~5_combout\);

-- Location: LC_X24_Y12_N1
\Equal0~0\ : cyclone_lcell
-- Equation(s):
-- \Equal0~0_combout\ = (counter(2) & (counter(1) & (counter(3) & counter(0))))

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
	dataa => counter(2),
	datab => counter(1),
	datac => counter(3),
	datad => counter(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~0_combout\);

-- Location: LC_X24_Y12_N0
\Equal0~1\ : cyclone_lcell
-- Equation(s):
-- \Equal0~1_combout\ = (counter(5) & (counter(6) & (counter(4) & counter(7))))

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
	dataa => counter(5),
	datab => counter(6),
	datac => counter(4),
	datad => counter(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~1_combout\);

-- Location: LC_X24_Y12_N2
\Equal0~2\ : cyclone_lcell
-- Equation(s):
-- \Equal0~2_combout\ = (counter(9) & (counter(10) & (counter(8) & counter(11))))

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
	dataa => counter(9),
	datab => counter(10),
	datac => counter(8),
	datad => counter(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~2_combout\);

-- Location: LC_X25_Y11_N9
\Equal0~3\ : cyclone_lcell
-- Equation(s):
-- \Equal0~3_combout\ = (counter(12) & (counter(15) & (counter(14) & counter(13))))

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
	dataa => counter(12),
	datab => counter(15),
	datac => counter(14),
	datad => counter(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~3_combout\);

-- Location: LC_X24_Y12_N4
\Equal0~4\ : cyclone_lcell
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\ & (\Equal0~1_combout\ & (\Equal0~2_combout\ & \Equal0~3_combout\)))

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
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~4_combout\);

-- Location: LC_X24_Y10_N9
\Equal0~6\ : cyclone_lcell
-- Equation(s):
-- \Equal0~6_combout\ = (counter(21) & (counter(20) & (\Equal0~5_combout\ & \Equal0~4_combout\)))

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
	dataa => counter(21),
	datab => counter(20),
	datac => \Equal0~5_combout\,
	datad => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~6_combout\);

-- Location: LC_X24_Y10_N7
\number[0]\ : cyclone_lcell
-- Equation(s):
-- number(0) = DFFEAS(number(0) $ ((((\Equal0~6_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => number(0),
	datac => \Equal0~6_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => number(0));

-- Location: LC_X24_Y10_N6
\number[1]\ : cyclone_lcell
-- Equation(s):
-- number(1) = DFFEAS((number(1) $ (((number(0) & \Equal0~6_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5fa0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => number(0),
	datac => \Equal0~6_combout\,
	datad => number(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => number(1));

-- Location: LC_X25_Y12_N0
\number[2]\ : cyclone_lcell
-- Equation(s):
-- number(2) = DFFEAS(number(2) $ (((number(1) & (number(0) & \Equal0~6_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f80",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => number(1),
	datab => number(0),
	datac => \Equal0~6_combout\,
	datad => number(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => number(2));

-- Location: LC_X25_Y12_N4
\number[1]~3\ : cyclone_lcell
-- Equation(s):
-- \number[1]~3_combout\ = (((number(0) & \Equal0~6_combout\)))

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
	datac => number(0),
	datad => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \number[1]~3_combout\);

-- Location: LC_X25_Y12_N5
\number[3]\ : cyclone_lcell
-- Equation(s):
-- number(3) = DFFEAS(number(3) $ (((number(2) & (number(1) & \number[1]~3_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => number(2),
	datab => number(3),
	datac => number(1),
	datad => \number[1]~3_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => number(3));

-- Location: LC_X25_Y12_N6
\Symbol[0]~reg0\ : cyclone_lcell
-- Equation(s):
-- \Symbol[0]~reg0_regout\ = DFFEAS((number(0) & (!number(3) & (number(1) $ (!number(2))))) # (!number(0) & (!number(1) & (number(3) $ (!number(2))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2411",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => number(1),
	datab => number(3),
	datac => number(0),
	datad => number(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Symbol[0]~reg0_regout\);

-- Location: LC_X25_Y12_N2
\Symbol[1]~reg0\ : cyclone_lcell
-- Equation(s):
-- \Symbol[1]~reg0_regout\ = DFFEAS((number(1) & (!number(3) & ((number(0)) # (!number(2))))) # (!number(1) & (number(0) & (number(3) $ (!number(2))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6032",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => number(1),
	datab => number(3),
	datac => number(0),
	datad => number(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Symbol[1]~reg0_regout\);

-- Location: LC_X25_Y12_N1
\Symbol[2]~reg0\ : cyclone_lcell
-- Equation(s):
-- \Symbol[2]~reg0_regout\ = DFFEAS((number(1) & (!number(3) & (number(0)))) # (!number(1) & ((number(2) & (!number(3))) # (!number(2) & ((number(0)))))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	dataa => number(1),
	datab => number(3),
	datac => number(0),
	datad => number(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Symbol[2]~reg0_regout\);

-- Location: LC_X25_Y12_N7
\Symbol[3]~reg0\ : cyclone_lcell
-- Equation(s):
-- \Symbol[3]~reg0_regout\ = DFFEAS((number(1) & ((number(0) & ((number(2)))) # (!number(0) & (number(3) & !number(2))))) # (!number(1) & (!number(3) & (number(0) $ (number(2))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a118",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => number(1),
	datab => number(3),
	datac => number(0),
	datad => number(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Symbol[3]~reg0_regout\);

-- Location: LC_X25_Y12_N8
\Symbol[4]~reg0\ : cyclone_lcell
-- Equation(s):
-- \Symbol[4]~reg0_regout\ = DFFEAS((number(3) & (number(2) & ((number(1)) # (!number(0))))) # (!number(3) & (number(1) & (!number(0) & !number(2)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8c02",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => number(1),
	datab => number(3),
	datac => number(0),
	datad => number(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Symbol[4]~reg0_regout\);

-- Location: LC_X25_Y12_N9
\Symbol[5]~reg0\ : cyclone_lcell
-- Equation(s):
-- \Symbol[5]~reg0_regout\ = DFFEAS((number(1) & ((number(0) & (number(3))) # (!number(0) & ((number(2)))))) # (!number(1) & (number(2) & (number(3) $ (number(0))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9e80",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => number(1),
	datab => number(3),
	datac => number(0),
	datad => number(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Symbol[5]~reg0_regout\);

-- Location: LC_X25_Y12_N3
\Symbol[6]~reg0\ : cyclone_lcell
-- Equation(s):
-- \Symbol[6]~reg0_regout\ = DFFEAS((number(3) & (number(0) & (number(1) $ (number(2))))) # (!number(3) & (!number(1) & (number(0) $ (number(2))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4190",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => number(1),
	datab => number(3),
	datac => number(0),
	datad => number(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Symbol[6]~reg0_regout\);

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Symbol[0]~I\ : cyclone_io
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
	datain => \Symbol[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Symbol(0));

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Symbol[1]~I\ : cyclone_io
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
	datain => \Symbol[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Symbol(1));

-- Location: PIN_110,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Symbol[2]~I\ : cyclone_io
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
	datain => \Symbol[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Symbol(2));

-- Location: PIN_109,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Symbol[3]~I\ : cyclone_io
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
	datain => \Symbol[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Symbol(3));

-- Location: PIN_108,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Symbol[4]~I\ : cyclone_io
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
	datain => \Symbol[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Symbol(4));

-- Location: PIN_111,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Symbol[5]~I\ : cyclone_io
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
	datain => \Symbol[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Symbol(5));

-- Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Symbol[6]~I\ : cyclone_io
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
	datain => \Symbol[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Symbol(6));
END structure;


