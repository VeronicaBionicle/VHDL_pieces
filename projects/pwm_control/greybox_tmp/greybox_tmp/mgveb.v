//lpm_compare CBX_SINGLE_OUTPUT_FILE="ON" LPM_REPRESENTATION="UNSIGNED" LPM_TYPE="LPM_COMPARE" LPM_WIDTH=16 ageb dataa datab
//VERSION_BEGIN 11.0SP1 cbx_mgl 2011:07:03:21:10:12:SJ cbx_stratixii 2011:07:03:21:07:09:SJ cbx_util_mgl 2011:07:03:21:07:09:SJ  VERSION_END
// synthesis VERILOG_INPUT_VERSION VERILOG_2001
// altera message_off 10463



// Copyright (C) 1991-2011 Altera Corporation
//  Your use of Altera Corporation's design tools, logic functions 
//  and other software and tools, and its AMPP partner logic 
//  functions, and any output files from any of the foregoing 
//  (including device programming or simulation files), and any 
//  associated documentation or information are expressly subject 
//  to the terms and conditions of the Altera Program License 
//  Subscription Agreement, Altera MegaCore Function License 
//  Agreement, or other applicable license agreement, including, 
//  without limitation, that your use is for the sole purpose of 
//  programming logic devices manufactured by Altera and sold by 
//  Altera or its authorized distributors.  Please refer to the 
//  applicable agreement for further details.



//synthesis_resources = lpm_compare 1 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  mgveb
	( 
	ageb,
	dataa,
	datab) /* synthesis synthesis_clearbox=1 */;
	output   ageb;
	input   [15:0]  dataa;
	input   [15:0]  datab;

	wire  wire_mgl_prim1_ageb;

	lpm_compare   mgl_prim1
	( 
	.ageb(wire_mgl_prim1_ageb),
	.dataa(dataa),
	.datab(datab));
	defparam
		mgl_prim1.lpm_representation = "UNSIGNED",
		mgl_prim1.lpm_type = "LPM_COMPARE",
		mgl_prim1.lpm_width = 16;
	assign
		ageb = wire_mgl_prim1_ageb;
endmodule //mgveb
//VALID FILE
