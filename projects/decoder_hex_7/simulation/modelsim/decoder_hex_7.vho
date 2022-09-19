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

-- DATE "02/14/2021 17:11:39"

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

ENTITY 	decoder_hex_7 IS
    PORT (
	a : OUT std_logic;
	b : OUT std_logic;
	c : OUT std_logic;
	d : OUT std_logic;
	e : OUT std_logic;
	f : OUT std_logic;
	g : OUT std_logic;
	X3 : IN std_logic;
	X2 : IN std_logic;
	X0 : IN std_logic;
	X1 : IN std_logic
	);
END decoder_hex_7;

-- Design Ports Information
-- a	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- b	=>  Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c	=>  Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d	=>  Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- e	=>  Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- f	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- g	=>  Location: PIN_10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- X1	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X2	=>  Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X3	=>  Location: PIN_11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X0	=>  Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF decoder_hex_7 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL ww_e : std_logic;
SIGNAL ww_f : std_logic;
SIGNAL ww_g : std_logic;
SIGNAL ww_X3 : std_logic;
SIGNAL ww_X2 : std_logic;
SIGNAL ww_X0 : std_logic;
SIGNAL ww_X1 : std_logic;
SIGNAL \X0~combout\ : std_logic;
SIGNAL \X3~combout\ : std_logic;
SIGNAL \X2~combout\ : std_logic;
SIGNAL \X1~combout\ : std_logic;
SIGNAL \inst1~0_combout\ : std_logic;
SIGNAL \insta5~0_combout\ : std_logic;
SIGNAL \inst16~0_combout\ : std_logic;
SIGNAL \inst22~0_combout\ : std_logic;
SIGNAL \inst31~0_combout\ : std_logic;
SIGNAL \inst39~0_combout\ : std_logic;
SIGNAL \inst43~0_combout\ : std_logic;

BEGIN

a <= ww_a;
b <= ww_b;
c <= ww_c;
d <= ww_d;
e <= ww_e;
f <= ww_f;
g <= ww_g;
ww_X3 <= X3;
ww_X2 <= X2;
ww_X0 <= X0;
ww_X1 <= X1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X0~I\ : cyclone_io
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
	padio => ww_X0,
	combout => \X0~combout\);

-- Location: PIN_11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X3~I\ : cyclone_io
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
	padio => ww_X3,
	combout => \X3~combout\);

-- Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X2~I\ : cyclone_io
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
	padio => ww_X2,
	combout => \X2~combout\);

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X1~I\ : cyclone_io
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
	padio => ww_X1,
	combout => \X1~combout\);

-- Location: LC_X2_Y9_N6
\inst1~0\ : cyclone_lcell
-- Equation(s):
-- \inst1~0_combout\ = (\X3~combout\ & ((\X2~combout\ $ (!\X1~combout\)) # (!\X0~combout\))) # (!\X3~combout\ & ((\X1~combout\) # (\X0~combout\ $ (!\X2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f76d",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \X0~combout\,
	datab => \X3~combout\,
	datac => \X2~combout\,
	datad => \X1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1~0_combout\);

-- Location: LC_X2_Y9_N8
\insta5~0\ : cyclone_lcell
-- Equation(s):
-- \insta5~0_combout\ = (\X3~combout\ & ((\X0~combout\ & ((!\X1~combout\))) # (!\X0~combout\ & (!\X2~combout\)))) # (!\X3~combout\ & ((\X0~combout\ $ (!\X1~combout\)) # (!\X2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "279f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \X0~combout\,
	datab => \X3~combout\,
	datac => \X2~combout\,
	datad => \X1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \insta5~0_combout\);

-- Location: LC_X2_Y9_N4
\inst16~0\ : cyclone_lcell
-- Equation(s):
-- \inst16~0_combout\ = (\X3~combout\ & (((\X0~combout\ & !\X1~combout\)) # (!\X2~combout\))) # (!\X3~combout\ & ((\X0~combout\) # ((\X2~combout\) # (!\X1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3ebf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \X0~combout\,
	datab => \X3~combout\,
	datac => \X2~combout\,
	datad => \X1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst16~0_combout\);

-- Location: LC_X2_Y9_N5
\inst22~0\ : cyclone_lcell
-- Equation(s):
-- \inst22~0_combout\ = (\X1~combout\ & ((\X0~combout\ & ((!\X2~combout\))) # (!\X0~combout\ & ((\X2~combout\) # (!\X3~combout\))))) # (!\X1~combout\ & ((\X3~combout\) # (\X0~combout\ $ (!\X2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5bed",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \X0~combout\,
	datab => \X3~combout\,
	datac => \X2~combout\,
	datad => \X1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst22~0_combout\);

-- Location: LC_X2_Y9_N9
\inst31~0\ : cyclone_lcell
-- Equation(s):
-- \inst31~0_combout\ = (\X1~combout\ & (((\X3~combout\)) # (!\X0~combout\))) # (!\X1~combout\ & ((\X2~combout\ & ((\X3~combout\))) # (!\X2~combout\ & (!\X0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ddc5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \X0~combout\,
	datab => \X3~combout\,
	datac => \X2~combout\,
	datad => \X1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst31~0_combout\);

-- Location: LC_X2_Y9_N7
\inst39~0\ : cyclone_lcell
-- Equation(s):
-- \inst39~0_combout\ = (\X0~combout\ & (\X3~combout\ $ (((\X2~combout\ & !\X1~combout\))))) # (!\X0~combout\ & ((\X3~combout\) # ((\X2~combout\) # (!\X1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc7d",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \X0~combout\,
	datab => \X3~combout\,
	datac => \X2~combout\,
	datad => \X1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst39~0_combout\);

-- Location: LC_X2_Y9_N2
\inst43~0\ : cyclone_lcell
-- Equation(s):
-- \inst43~0_combout\ = (\X0~combout\ & ((\X3~combout\) # (\X2~combout\ $ (\X1~combout\)))) # (!\X0~combout\ & ((\X1~combout\) # (\X3~combout\ $ (\X2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dfbc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \X0~combout\,
	datab => \X3~combout\,
	datac => \X2~combout\,
	datad => \X1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst43~0_combout\);

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\a~I\ : cyclone_io
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
	datain => \inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_a);

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\b~I\ : cyclone_io
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
	datain => \insta5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_b);

-- Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\c~I\ : cyclone_io
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
	datain => \inst16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c);

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d~I\ : cyclone_io
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
	datain => \inst22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d);

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\e~I\ : cyclone_io
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
	datain => \inst31~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_e);

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\f~I\ : cyclone_io
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
	datain => \inst39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_f);

-- Location: PIN_10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\g~I\ : cyclone_io
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
	datain => \inst43~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_g);
END structure;


