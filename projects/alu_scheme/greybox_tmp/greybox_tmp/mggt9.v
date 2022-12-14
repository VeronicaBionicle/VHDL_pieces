//lpm_mux CBX_SINGLE_OUTPUT_FILE="ON" LPM_SIZE=8 LPM_TYPE="LPM_MUX" LPM_WIDTH=1 LPM_WIDTHS=3 data result sel
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



//synthesis_resources = lpm_mux 1 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  mggt9
	( 
	data,
	result,
	sel) /* synthesis synthesis_clearbox=1 */;
	input   [7:0]  data;
	output   [0:0]  result;
	input   [2:0]  sel;

	wire  [0:0]   wire_mgl_prim1_result;

	lpm_mux   mgl_prim1
	( 
	.data(data),
	.result(wire_mgl_prim1_result),
	.sel(sel));
	defparam
		mgl_prim1.lpm_size = 8,
		mgl_prim1.lpm_type = "LPM_MUX",
		mgl_prim1.lpm_width = 1,
		mgl_prim1.lpm_widths = 3;
	assign
		result = wire_mgl_prim1_result;
endmodule //mggt9
//VALID FILE
