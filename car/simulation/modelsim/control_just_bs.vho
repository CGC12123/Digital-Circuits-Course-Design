-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Standard Edition"

-- DATE "12/12/2022 10:32:31"

-- 
-- Device: Altera EP4CE6F17C8 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
LIBRARY STD;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE STD.STANDARD.ALL;

ENTITY 	control_just_bs IS
    PORT (
	clk_50 : IN std_logic;
	input : IN std_logic_vector(3 DOWNTO 0);
	if_start : IN std_logic;
	model_bs : IN std_logic;
	l : OUT std_logic_vector(1 DOWNTO 0);
	r : OUT std_logic_vector(1 DOWNTO 0);
	ref_L : OUT STD.STANDARD.integer range 0 TO 21;
	ref_R : OUT STD.STANDARD.integer range 0 TO 21
	);
END control_just_bs;

-- Design Ports Information
-- l[0]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l[1]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[0]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[1]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ref_L[0]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ref_L[1]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ref_L[2]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ref_L[3]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ref_L[4]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ref_R[0]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ref_R[1]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ref_R[2]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ref_R[3]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ref_R[4]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[0]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[1]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[3]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- model_bs	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- if_start	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[2]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF control_just_bs IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_50 : std_logic;
SIGNAL ww_input : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_if_start : std_logic;
SIGNAL ww_model_bs : std_logic;
SIGNAL ww_l : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_r : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ref_L : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_ref_R : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \l[0]~output_o\ : std_logic;
SIGNAL \l[1]~output_o\ : std_logic;
SIGNAL \r[0]~output_o\ : std_logic;
SIGNAL \r[1]~output_o\ : std_logic;
SIGNAL \ref_L[0]~output_o\ : std_logic;
SIGNAL \ref_L[1]~output_o\ : std_logic;
SIGNAL \ref_L[2]~output_o\ : std_logic;
SIGNAL \ref_L[3]~output_o\ : std_logic;
SIGNAL \ref_L[4]~output_o\ : std_logic;
SIGNAL \ref_R[0]~output_o\ : std_logic;
SIGNAL \ref_R[1]~output_o\ : std_logic;
SIGNAL \ref_R[2]~output_o\ : std_logic;
SIGNAL \ref_R[3]~output_o\ : std_logic;
SIGNAL \ref_R[4]~output_o\ : std_logic;
SIGNAL \clk_50~input_o\ : std_logic;
SIGNAL \clk_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \input[3]~input_o\ : std_logic;
SIGNAL \model_bs~input_o\ : std_logic;
SIGNAL \input[0]~input_o\ : std_logic;
SIGNAL \input[1]~input_o\ : std_logic;
SIGNAL \NextState~10_combout\ : std_logic;
SIGNAL \if_start~input_o\ : std_logic;
SIGNAL \signal_go~0_combout\ : std_logic;
SIGNAL \signal_go~q\ : std_logic;
SIGNAL \NextState.TURN_RIGHT~q\ : std_logic;
SIGNAL \l[0]~reg0feeder_combout\ : std_logic;
SIGNAL \l[0]~reg0_q\ : std_logic;
SIGNAL \input[2]~input_o\ : std_logic;
SIGNAL \NextState~11_combout\ : std_logic;
SIGNAL \NextState~12_combout\ : std_logic;
SIGNAL \NextState.TURN_LEFTW~q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \NextState.FORWARD~q\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \NextState.TURN_LEFT~q\ : std_logic;
SIGNAL \WideOr1~combout\ : std_logic;
SIGNAL \l[1]~reg0_q\ : std_logic;
SIGNAL \r[0]~reg0feeder_combout\ : std_logic;
SIGNAL \r[0]~reg0_q\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \NextState.TURN_RIGHTW~q\ : std_logic;
SIGNAL \WideOr2~combout\ : std_logic;
SIGNAL \r[1]~reg0_q\ : std_logic;
SIGNAL \ref_L[0]~reg0feeder_combout\ : std_logic;
SIGNAL \ref_L[0]~reg0_q\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \NextState.STOP~q\ : std_logic;
SIGNAL \NextState.START~feeder_combout\ : std_logic;
SIGNAL \NextState.START~q\ : std_logic;
SIGNAL \WideOr4~combout\ : std_logic;
SIGNAL \ref_L[1]~reg0_q\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \ref_L[2]~reg0_q\ : std_logic;
SIGNAL \WideOr3~combout\ : std_logic;
SIGNAL \ref_L[3]~reg0_q\ : std_logic;
SIGNAL \ref_R[0]~reg0feeder_combout\ : std_logic;
SIGNAL \ref_R[0]~reg0_q\ : std_logic;
SIGNAL \WideOr6~combout\ : std_logic;
SIGNAL \ref_R[1]~reg0_q\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \ref_R[2]~reg0_q\ : std_logic;
SIGNAL \WideOr5~combout\ : std_logic;
SIGNAL \ref_R[3]~reg0_q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk_50 <= clk_50;
ww_input <= input;
ww_if_start <= if_start;
ww_model_bs <= model_bs;
l <= ww_l;
r <= ww_r;
ref_L <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_ref_L));
ref_R <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_ref_R));
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X1_Y24_N2
\l[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \l[0]~reg0_q\,
	devoe => ww_devoe,
	o => \l[0]~output_o\);

-- Location: IOOBUF_X3_Y24_N2
\l[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \l[1]~reg0_q\,
	devoe => ww_devoe,
	o => \l[1]~output_o\);

-- Location: IOOBUF_X1_Y24_N9
\r[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r[0]~reg0_q\,
	devoe => ww_devoe,
	o => \r[0]~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\r[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r[1]~reg0_q\,
	devoe => ww_devoe,
	o => \r[1]~output_o\);

-- Location: IOOBUF_X0_Y19_N2
\ref_L[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ref_L[0]~reg0_q\,
	devoe => ww_devoe,
	o => \ref_L[0]~output_o\);

-- Location: IOOBUF_X9_Y24_N23
\ref_L[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ref_L[1]~reg0_q\,
	devoe => ww_devoe,
	o => \ref_L[1]~output_o\);

-- Location: IOOBUF_X5_Y24_N16
\ref_L[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ref_L[2]~reg0_q\,
	devoe => ww_devoe,
	o => \ref_L[2]~output_o\);

-- Location: IOOBUF_X3_Y24_N9
\ref_L[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ref_L[3]~reg0_q\,
	devoe => ww_devoe,
	o => \ref_L[3]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\ref_L[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ref_L[4]~output_o\);

-- Location: IOOBUF_X0_Y19_N16
\ref_R[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ref_R[0]~reg0_q\,
	devoe => ww_devoe,
	o => \ref_R[0]~output_o\);

-- Location: IOOBUF_X5_Y24_N23
\ref_R[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ref_R[1]~reg0_q\,
	devoe => ww_devoe,
	o => \ref_R[1]~output_o\);

-- Location: IOOBUF_X5_Y24_N2
\ref_R[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ref_R[2]~reg0_q\,
	devoe => ww_devoe,
	o => \ref_R[2]~output_o\);

-- Location: IOOBUF_X9_Y24_N16
\ref_R[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ref_R[3]~reg0_q\,
	devoe => ww_devoe,
	o => \ref_R[3]~output_o\);

-- Location: IOOBUF_X34_Y7_N23
\ref_R[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ref_R[4]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_50,
	o => \clk_50~input_o\);

-- Location: CLKCTRL_G2
\clk_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_50~inputclkctrl_outclk\);

-- Location: IOIBUF_X3_Y24_N22
\input[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(3),
	o => \input[3]~input_o\);

-- Location: IOIBUF_X7_Y24_N15
\model_bs~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_model_bs,
	o => \model_bs~input_o\);

-- Location: IOIBUF_X7_Y24_N1
\input[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(0),
	o => \input[0]~input_o\);

-- Location: IOIBUF_X9_Y24_N8
\input[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(1),
	o => \input[1]~input_o\);

-- Location: LCCOMB_X5_Y20_N24
\NextState~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \NextState~10_combout\ = (!\input[3]~input_o\ & (!\model_bs~input_o\ & (\input[0]~input_o\ & \input[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[3]~input_o\,
	datab => \model_bs~input_o\,
	datac => \input[0]~input_o\,
	datad => \input[1]~input_o\,
	combout => \NextState~10_combout\);

-- Location: IOIBUF_X3_Y24_N15
\if_start~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_if_start,
	o => \if_start~input_o\);

-- Location: LCCOMB_X5_Y20_N6
\signal_go~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \signal_go~0_combout\ = !\if_start~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \if_start~input_o\,
	combout => \signal_go~0_combout\);

-- Location: FF_X5_Y20_N7
signal_go : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \signal_go~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \signal_go~q\);

-- Location: FF_X5_Y20_N25
\NextState.TURN_RIGHT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \NextState~10_combout\,
	ena => \signal_go~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \NextState.TURN_RIGHT~q\);

-- Location: LCCOMB_X5_Y20_N8
\l[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \l[0]~reg0feeder_combout\ = \NextState.TURN_RIGHT~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \NextState.TURN_RIGHT~q\,
	combout => \l[0]~reg0feeder_combout\);

-- Location: FF_X5_Y20_N9
\l[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \l[0]~reg0feeder_combout\,
	ena => \signal_go~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l[0]~reg0_q\);

-- Location: IOIBUF_X7_Y24_N8
\input[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(2),
	o => \input[2]~input_o\);

-- Location: LCCOMB_X7_Y20_N10
\NextState~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \NextState~11_combout\ = (\input[0]~input_o\ & (!\input[1]~input_o\ & ((\input[2]~input_o\) # (\model_bs~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[2]~input_o\,
	datab => \model_bs~input_o\,
	datac => \input[0]~input_o\,
	datad => \input[1]~input_o\,
	combout => \NextState~11_combout\);

-- Location: LCCOMB_X5_Y20_N12
\NextState~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \NextState~12_combout\ = (\input[3]~input_o\ & \NextState~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[3]~input_o\,
	datac => \NextState~11_combout\,
	combout => \NextState~12_combout\);

-- Location: FF_X5_Y20_N13
\NextState.TURN_LEFTW\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \NextState~12_combout\,
	ena => \signal_go~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \NextState.TURN_LEFTW~q\);

-- Location: LCCOMB_X7_Y20_N26
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\input[0]~input_o\ & ((\input[2]~input_o\ & ((\input[1]~input_o\))) # (!\input[2]~input_o\ & (!\input[3]~input_o\)))) # (!\input[0]~input_o\ & (\input[2]~input_o\ $ (((\input[3]~input_o\) # (\input[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[2]~input_o\,
	datab => \input[0]~input_o\,
	datac => \input[3]~input_o\,
	datad => \input[1]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X7_Y20_N12
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\input[0]~input_o\ & (\input[1]~input_o\ $ (((!\input[3]~input_o\) # (!\input[2]~input_o\))))) # (!\input[0]~input_o\ & ((\input[2]~input_o\) # ((\input[3]~input_o\) # (\input[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[2]~input_o\,
	datab => \input[0]~input_o\,
	datac => \input[3]~input_o\,
	datad => \input[1]~input_o\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X6_Y20_N26
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\model_bs~input_o\ & (\Mux0~0_combout\)) # (!\model_bs~input_o\ & ((\Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux0~0_combout\,
	datac => \Mux0~1_combout\,
	datad => \model_bs~input_o\,
	combout => \Mux0~2_combout\);

-- Location: FF_X6_Y20_N27
\NextState.FORWARD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Mux0~2_combout\,
	ena => \signal_go~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \NextState.FORWARD~q\);

-- Location: LCCOMB_X7_Y20_N20
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\input[2]~input_o\ & (\input[0]~input_o\ $ (((\input[3]~input_o\) # (\input[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[2]~input_o\,
	datab => \input[0]~input_o\,
	datac => \input[3]~input_o\,
	datad => \input[1]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X6_Y20_N28
\Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux5~0_combout\ & \model_bs~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux5~0_combout\,
	datad => \model_bs~input_o\,
	combout => \Mux5~1_combout\);

-- Location: FF_X6_Y20_N29
\NextState.TURN_LEFT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Mux5~1_combout\,
	ena => \signal_go~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \NextState.TURN_LEFT~q\);

-- Location: LCCOMB_X5_Y20_N2
WideOr1 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr1~combout\ = (\NextState.TURN_LEFTW~q\) # ((\NextState.FORWARD~q\) # (\NextState.TURN_LEFT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NextState.TURN_LEFTW~q\,
	datab => \NextState.FORWARD~q\,
	datad => \NextState.TURN_LEFT~q\,
	combout => \WideOr1~combout\);

-- Location: FF_X5_Y20_N3
\l[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \WideOr1~combout\,
	ena => \signal_go~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l[1]~reg0_q\);

-- Location: LCCOMB_X5_Y20_N4
\r[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r[0]~reg0feeder_combout\ = \NextState.TURN_LEFT~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \NextState.TURN_LEFT~q\,
	combout => \r[0]~reg0feeder_combout\);

-- Location: FF_X5_Y20_N5
\r[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \r[0]~reg0feeder_combout\,
	ena => \signal_go~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r[0]~reg0_q\);

-- Location: LCCOMB_X5_Y20_N18
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\input[3]~input_o\ & (!\input[2]~input_o\ & (\input[0]~input_o\ & \input[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[3]~input_o\,
	datab => \input[2]~input_o\,
	datac => \input[0]~input_o\,
	datad => \input[1]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: FF_X5_Y20_N19
\NextState.TURN_RIGHTW\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Mux7~0_combout\,
	ena => \signal_go~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \NextState.TURN_RIGHTW~q\);

-- Location: LCCOMB_X6_Y20_N4
WideOr2 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~combout\ = (\NextState.TURN_RIGHTW~q\) # ((\NextState.FORWARD~q\) # (\NextState.TURN_RIGHT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NextState.TURN_RIGHTW~q\,
	datac => \NextState.FORWARD~q\,
	datad => \NextState.TURN_RIGHT~q\,
	combout => \WideOr2~combout\);

-- Location: FF_X6_Y20_N5
\r[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \WideOr2~combout\,
	ena => \signal_go~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r[1]~reg0_q\);

-- Location: LCCOMB_X5_Y20_N30
\ref_L[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ref_L[0]~reg0feeder_combout\ = \NextState.TURN_LEFTW~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \NextState.TURN_LEFTW~q\,
	combout => \ref_L[0]~reg0feeder_combout\);

-- Location: FF_X5_Y20_N31
\ref_L[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \ref_L[0]~reg0feeder_combout\,
	ena => \signal_go~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref_L[0]~reg0_q\);

-- Location: LCCOMB_X5_Y20_N16
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (!\input[3]~input_o\ & (!\input[2]~input_o\ & (!\input[0]~input_o\ & !\input[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[3]~input_o\,
	datab => \input[2]~input_o\,
	datac => \input[0]~input_o\,
	datad => \input[1]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: FF_X5_Y20_N17
\NextState.STOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Mux4~0_combout\,
	ena => \signal_go~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \NextState.STOP~q\);

-- Location: LCCOMB_X5_Y20_N22
\NextState.START~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \NextState.START~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \NextState.START~feeder_combout\);

-- Location: FF_X5_Y20_N23
\NextState.START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \NextState.START~feeder_combout\,
	ena => \signal_go~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \NextState.START~q\);

-- Location: LCCOMB_X5_Y20_N20
WideOr4 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr4~combout\ = (!\NextState.STOP~q\ & (\NextState.START~q\ & !\NextState.TURN_LEFTW~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NextState.STOP~q\,
	datac => \NextState.START~q\,
	datad => \NextState.TURN_LEFTW~q\,
	combout => \WideOr4~combout\);

-- Location: FF_X5_Y20_N21
\ref_L[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \WideOr4~combout\,
	ena => \signal_go~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref_L[1]~reg0_q\);

-- Location: LCCOMB_X5_Y20_N14
\WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (\NextState.TURN_LEFTW~q\) # (\NextState.FORWARD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NextState.TURN_LEFTW~q\,
	datad => \NextState.FORWARD~q\,
	combout => \WideOr1~0_combout\);

-- Location: FF_X5_Y20_N15
\ref_L[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \WideOr1~0_combout\,
	ena => \signal_go~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref_L[2]~reg0_q\);

-- Location: LCCOMB_X5_Y20_N0
WideOr3 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr3~combout\ = (\NextState.TURN_RIGHTW~q\) # ((\NextState.TURN_RIGHT~q\) # (\NextState.TURN_LEFT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NextState.TURN_RIGHTW~q\,
	datac => \NextState.TURN_RIGHT~q\,
	datad => \NextState.TURN_LEFT~q\,
	combout => \WideOr3~combout\);

-- Location: FF_X5_Y20_N1
\ref_L[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \WideOr3~combout\,
	ena => \signal_go~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref_L[3]~reg0_q\);

-- Location: LCCOMB_X5_Y20_N26
\ref_R[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ref_R[0]~reg0feeder_combout\ = \NextState.TURN_RIGHTW~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \NextState.TURN_RIGHTW~q\,
	combout => \ref_R[0]~reg0feeder_combout\);

-- Location: FF_X5_Y20_N27
\ref_R[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \ref_R[0]~reg0feeder_combout\,
	ena => \signal_go~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref_R[0]~reg0_q\);

-- Location: LCCOMB_X5_Y20_N28
WideOr6 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr6~combout\ = (!\NextState.STOP~q\ & (\NextState.START~q\ & !\NextState.TURN_RIGHTW~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NextState.STOP~q\,
	datac => \NextState.START~q\,
	datad => \NextState.TURN_RIGHTW~q\,
	combout => \WideOr6~combout\);

-- Location: FF_X5_Y20_N29
\ref_R[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \WideOr6~combout\,
	ena => \signal_go~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref_R[1]~reg0_q\);

-- Location: LCCOMB_X6_Y20_N2
\WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (\NextState.FORWARD~q\) # (\NextState.TURN_RIGHTW~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \NextState.FORWARD~q\,
	datad => \NextState.TURN_RIGHTW~q\,
	combout => \WideOr2~0_combout\);

-- Location: FF_X6_Y20_N3
\ref_R[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \WideOr2~0_combout\,
	ena => \signal_go~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref_R[2]~reg0_q\);

-- Location: LCCOMB_X5_Y20_N10
WideOr5 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr5~combout\ = (\NextState.TURN_LEFTW~q\) # ((\NextState.TURN_RIGHT~q\) # (\NextState.TURN_LEFT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NextState.TURN_LEFTW~q\,
	datab => \NextState.TURN_RIGHT~q\,
	datad => \NextState.TURN_LEFT~q\,
	combout => \WideOr5~combout\);

-- Location: FF_X5_Y20_N11
\ref_R[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \WideOr5~combout\,
	ena => \signal_go~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref_R[3]~reg0_q\);

ww_l(0) <= \l[0]~output_o\;

ww_l(1) <= \l[1]~output_o\;

ww_r(0) <= \r[0]~output_o\;

ww_r(1) <= \r[1]~output_o\;

ww_ref_L(0) <= \ref_L[0]~output_o\;

ww_ref_L(1) <= \ref_L[1]~output_o\;

ww_ref_L(2) <= \ref_L[2]~output_o\;

ww_ref_L(3) <= \ref_L[3]~output_o\;

ww_ref_L(4) <= \ref_L[4]~output_o\;

ww_ref_R(0) <= \ref_R[0]~output_o\;

ww_ref_R(1) <= \ref_R[1]~output_o\;

ww_ref_R(2) <= \ref_R[2]~output_o\;

ww_ref_R(3) <= \ref_R[3]~output_o\;

ww_ref_R(4) <= \ref_R[4]~output_o\;
END structure;


