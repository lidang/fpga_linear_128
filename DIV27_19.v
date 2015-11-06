// megafunction wizard: %LPM_DIVIDE%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: lpm_divide 

// ============================================================
// File Name: DIV27_19.v
// Megafunction Name(s):
// 			lpm_divide
//
// Simulation Library Files(s):
// 			lpm
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 9.0 Build 132 02/25/2009 SJ Full Version
// ************************************************************


//Copyright (C) 1991-2009 Altera Corporation
//Your use of Altera Corporation's design tools, logic functions 
//and other software and tools, and its AMPP partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Altera Program License 
//Subscription Agreement, Altera MegaCore Function License 
//Agreement, or other applicable license agreement, including, 
//without limitation, that your use is for the sole purpose of 
//programming logic devices manufactured by Altera and sold by 
//Altera or its authorized distributors.  Please refer to the 
//applicable agreement for further details.


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module DIV27_19 (
	clock,
	denom,
	numer,
	quotient,
	remain);

	input	  clock;
	input	[34:0]  denom;
	input	[42:0]  numer;
	output	[42:0]  quotient;
	output	[34:0]  remain;

	wire [42:0] sub_wire0;
	wire [34:0] sub_wire1;
	wire [42:0] quotient = sub_wire0[42:0];
	wire [34:0] remain = sub_wire1[34:0];

	lpm_divide	lpm_divide_component (
				.denom (denom),
				.clock (clock),
				.numer (numer),
				.quotient (sub_wire0),
				.remain (sub_wire1),
				.aclr (1'b0),
				.clken (1'b1));
	defparam
		lpm_divide_component.lpm_drepresentation = "UNSIGNED",
		lpm_divide_component.lpm_hint = "MAXIMIZE_SPEED=5,LPM_REMAINDERPOSITIVE=TRUE",
		lpm_divide_component.lpm_nrepresentation = "UNSIGNED",
		lpm_divide_component.lpm_pipeline = 6,
		lpm_divide_component.lpm_type = "LPM_DIVIDE",
		lpm_divide_component.lpm_widthd = 35,
		lpm_divide_component.lpm_widthn = 43;


endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone III"
// Retrieval info: PRIVATE: PRIVATE_LPM_REMAINDERPOSITIVE STRING "TRUE"
// Retrieval info: PRIVATE: PRIVATE_MAXIMIZE_SPEED NUMERIC "5"
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
// Retrieval info: PRIVATE: USING_PIPELINE NUMERIC "1"
// Retrieval info: PRIVATE: VERSION_NUMBER NUMERIC "2"
// Retrieval info: CONSTANT: LPM_DREPRESENTATION STRING "UNSIGNED"
// Retrieval info: CONSTANT: LPM_HINT STRING "MAXIMIZE_SPEED=5,LPM_REMAINDERPOSITIVE=TRUE"
// Retrieval info: CONSTANT: LPM_NREPRESENTATION STRING "UNSIGNED"
// Retrieval info: CONSTANT: LPM_PIPELINE NUMERIC "6"
// Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_DIVIDE"
// Retrieval info: CONSTANT: LPM_WIDTHD NUMERIC "35"
// Retrieval info: CONSTANT: LPM_WIDTHN NUMERIC "43"
// Retrieval info: USED_PORT: clock 0 0 0 0 INPUT NODEFVAL clock
// Retrieval info: USED_PORT: denom 0 0 35 0 INPUT NODEFVAL denom[34..0]
// Retrieval info: USED_PORT: numer 0 0 43 0 INPUT NODEFVAL numer[42..0]
// Retrieval info: USED_PORT: quotient 0 0 43 0 OUTPUT NODEFVAL quotient[42..0]
// Retrieval info: USED_PORT: remain 0 0 35 0 OUTPUT NODEFVAL remain[34..0]
// Retrieval info: CONNECT: @numer 0 0 43 0 numer 0 0 43 0
// Retrieval info: CONNECT: @denom 0 0 35 0 denom 0 0 35 0
// Retrieval info: CONNECT: quotient 0 0 43 0 @quotient 0 0 43 0
// Retrieval info: CONNECT: remain 0 0 35 0 @remain 0 0 35 0
// Retrieval info: CONNECT: @clock 0 0 0 0 clock 0 0 0 0
// Retrieval info: LIBRARY: lpm lpm.lpm_components.all
// Retrieval info: GEN_FILE: TYPE_NORMAL DIV27_19.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL DIV27_19.inc TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL DIV27_19.cmp TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL DIV27_19.bsf TRUE FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL DIV27_19_inst.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL DIV27_19_bb.v TRUE
// Retrieval info: LIB_FILE: lpm
