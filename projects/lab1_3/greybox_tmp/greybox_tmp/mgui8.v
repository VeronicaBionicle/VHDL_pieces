//lpm_decode CBX_SINGLE_OUTPUT_FILE="ON" LPM_DECODES=256 LPM_TYPE="LPM_DECODE" LPM_WIDTH=8 data
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



//synthesis_resources = lpm_decode 1 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  mgui8
	( 
	data) /* synthesis synthesis_clearbox=1 */;
	input   [7:0]  data;


	lpm_decode   mgl_prim1
	( 
	.data(data));
	defparam
		mgl_prim1.lpm_decodes = 256,
		mgl_prim1.lpm_type = "LPM_DECODE",
		mgl_prim1.lpm_width = 8;
endmodule //mgui8
//VALID FILE
