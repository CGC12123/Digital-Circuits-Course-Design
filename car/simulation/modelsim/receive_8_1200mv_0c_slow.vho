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

-- DATE "12/14/2022 20:53:40"

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
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	receive IS
    PORT (
	clk : IN std_logic;
	start : IN std_logic;
	x_out : OUT std_logic_vector(7 DOWNTO 0)
	);
END receive;

-- Design Ports Information
-- x_out[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_out[1]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_out[2]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_out[3]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_out[4]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_out[5]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_out[6]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_out[7]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF receive IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_x_out : std_logic_vector(7 DOWNTO 0);
SIGNAL \start~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \x_out[0]~output_o\ : std_logic;
SIGNAL \x_out[1]~output_o\ : std_logic;
SIGNAL \x_out[2]~output_o\ : std_logic;
SIGNAL \x_out[3]~output_o\ : std_logic;
SIGNAL \x_out[4]~output_o\ : std_logic;
SIGNAL \x_out[5]~output_o\ : std_logic;
SIGNAL \x_out[6]~output_o\ : std_logic;
SIGNAL \x_out[7]~output_o\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \start~inputclkctrl_outclk\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \q1[0]~12_combout\ : std_logic;
SIGNAL \q1[1]~4_combout\ : std_logic;
SIGNAL \q1[1]~5\ : std_logic;
SIGNAL \q1[2]~6_combout\ : std_logic;
SIGNAL \q1[2]~7\ : std_logic;
SIGNAL \q1[3]~8_combout\ : std_logic;
SIGNAL \q1[3]~9\ : std_logic;
SIGNAL \q1[4]~10_combout\ : std_logic;
SIGNAL \q2[4]~feeder_combout\ : std_logic;
SIGNAL \q2[2]~feeder_combout\ : std_logic;
SIGNAL \q2[3]~feeder_combout\ : std_logic;
SIGNAL \q2[0]~feeder_combout\ : std_logic;
SIGNAL \q2[1]~feeder_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \data1~0_combout\ : std_logic;
SIGNAL \data1~1_combout\ : std_logic;
SIGNAL \data1[1]~2_combout\ : std_logic;
SIGNAL \data1~3_combout\ : std_logic;
SIGNAL \data1~4_combout\ : std_logic;
SIGNAL \data1~5_combout\ : std_logic;
SIGNAL \data1~6_combout\ : std_logic;
SIGNAL \data1~7_combout\ : std_logic;
SIGNAL \data1~8_combout\ : std_logic;
SIGNAL q1 : std_logic_vector(4 DOWNTO 0);
SIGNAL data1 : std_logic_vector(7 DOWNTO 0);
SIGNAL q2 : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_start~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_start~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_start <= start;
x_out <= ww_x_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\start~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \start~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_start~inputclkctrl_outclk\ <= NOT \start~inputclkctrl_outclk\;
\ALT_INV_start~input_o\ <= NOT \start~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y10_N23
\x_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data1(0),
	devoe => ww_devoe,
	o => \x_out[0]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\x_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data1(1),
	devoe => ww_devoe,
	o => \x_out[1]~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\x_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data1(2),
	devoe => ww_devoe,
	o => \x_out[2]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\x_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data1(3),
	devoe => ww_devoe,
	o => \x_out[3]~output_o\);

-- Location: IOOBUF_X0_Y8_N9
\x_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data1(4),
	devoe => ww_devoe,
	o => \x_out[4]~output_o\);

-- Location: IOOBUF_X0_Y8_N2
\x_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data1(5),
	devoe => ww_devoe,
	o => \x_out[5]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\x_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data1(6),
	devoe => ww_devoe,
	o => \x_out[6]~output_o\);

-- Location: IOOBUF_X0_Y10_N2
\x_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data1(7),
	devoe => ww_devoe,
	o => \x_out[7]~output_o\);

-- Location: IOIBUF_X0_Y11_N15
\start~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: CLKCTRL_G4
\start~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \start~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \start~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y11_N0
\q1[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \q1[0]~12_combout\ = !q1(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => q1(0),
	combout => \q1[0]~12_combout\);

-- Location: FF_X1_Y11_N1
\q1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q1[0]~12_combout\,
	clrn => \ALT_INV_start~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q1(0));

-- Location: LCCOMB_X1_Y11_N8
\q1[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \q1[1]~4_combout\ = (q1(0) & (q1(1) $ (VCC))) # (!q1(0) & (q1(1) & VCC))
-- \q1[1]~5\ = CARRY((q1(0) & q1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q1(0),
	datab => q1(1),
	datad => VCC,
	combout => \q1[1]~4_combout\,
	cout => \q1[1]~5\);

-- Location: FF_X1_Y11_N9
\q1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q1[1]~4_combout\,
	clrn => \ALT_INV_start~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q1(1));

-- Location: LCCOMB_X1_Y11_N10
\q1[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \q1[2]~6_combout\ = (q1(2) & (!\q1[1]~5\)) # (!q1(2) & ((\q1[1]~5\) # (GND)))
-- \q1[2]~7\ = CARRY((!\q1[1]~5\) # (!q1(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q1(2),
	datad => VCC,
	cin => \q1[1]~5\,
	combout => \q1[2]~6_combout\,
	cout => \q1[2]~7\);

-- Location: FF_X1_Y11_N11
\q1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q1[2]~6_combout\,
	clrn => \ALT_INV_start~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q1(2));

-- Location: LCCOMB_X1_Y11_N12
\q1[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \q1[3]~8_combout\ = (q1(3) & (\q1[2]~7\ $ (GND))) # (!q1(3) & (!\q1[2]~7\ & VCC))
-- \q1[3]~9\ = CARRY((q1(3) & !\q1[2]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q1(3),
	datad => VCC,
	cin => \q1[2]~7\,
	combout => \q1[3]~8_combout\,
	cout => \q1[3]~9\);

-- Location: FF_X1_Y11_N13
\q1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q1[3]~8_combout\,
	clrn => \ALT_INV_start~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q1(3));

-- Location: LCCOMB_X1_Y11_N14
\q1[4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \q1[4]~10_combout\ = q1(4) $ (\q1[3]~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q1(4),
	cin => \q1[3]~9\,
	combout => \q1[4]~10_combout\);

-- Location: FF_X1_Y11_N15
\q1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q1[4]~10_combout\,
	clrn => \ALT_INV_start~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q1(4));

-- Location: LCCOMB_X1_Y11_N18
\q2[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \q2[4]~feeder_combout\ = q1(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => q1(4),
	combout => \q2[4]~feeder_combout\);

-- Location: FF_X1_Y11_N19
\q2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q2[4]~feeder_combout\,
	ena => \ALT_INV_start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q2(4));

-- Location: LCCOMB_X1_Y11_N30
\q2[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \q2[2]~feeder_combout\ = q1(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => q1(2),
	combout => \q2[2]~feeder_combout\);

-- Location: FF_X1_Y11_N31
\q2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q2[2]~feeder_combout\,
	ena => \ALT_INV_start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q2(2));

-- Location: LCCOMB_X1_Y11_N16
\q2[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \q2[3]~feeder_combout\ = q1(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => q1(3),
	combout => \q2[3]~feeder_combout\);

-- Location: FF_X1_Y11_N17
\q2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q2[3]~feeder_combout\,
	ena => \ALT_INV_start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q2(3));

-- Location: LCCOMB_X1_Y11_N22
\q2[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \q2[0]~feeder_combout\ = q1(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => q1(0),
	combout => \q2[0]~feeder_combout\);

-- Location: FF_X1_Y11_N23
\q2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q2[0]~feeder_combout\,
	ena => \ALT_INV_start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q2(0));

-- Location: LCCOMB_X1_Y11_N20
\q2[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \q2[1]~feeder_combout\ = q1(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => q1(1),
	combout => \q2[1]~feeder_combout\);

-- Location: FF_X1_Y11_N21
\q2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q2[1]~feeder_combout\,
	ena => \ALT_INV_start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q2(1));

-- Location: LCCOMB_X1_Y11_N28
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (q2(3)) # ((q2(2) & (q2(0) & q2(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q2(2),
	datab => q2(3),
	datac => q2(0),
	datad => q2(1),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X1_Y11_N4
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (q2(3) & ((q2(2)) # ((q2(0)) # (q2(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q2(2),
	datab => q2(3),
	datac => q2(0),
	datad => q2(1),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X2_Y11_N0
\data1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data1~0_combout\ = (!q2(4) & (!\LessThan0~0_combout\ & ((data1(0)) # (!\LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q2(4),
	datab => \LessThan1~0_combout\,
	datac => data1(0),
	datad => \LessThan0~0_combout\,
	combout => \data1~0_combout\);

-- Location: FF_X2_Y11_N1
\data1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \start~inputclkctrl_outclk\,
	d => \data1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data1(0));

-- Location: LCCOMB_X2_Y11_N2
\data1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data1~1_combout\ = (!q2(4) & data1(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => q2(4),
	datad => data1(0),
	combout => \data1~1_combout\);

-- Location: LCCOMB_X1_Y11_N6
\data1[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \data1[1]~2_combout\ = (q2(4)) # ((\LessThan0~0_combout\) # (!\LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => q2(4),
	datac => \LessThan0~0_combout\,
	datad => \LessThan1~0_combout\,
	combout => \data1[1]~2_combout\);

-- Location: FF_X2_Y11_N3
\data1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \start~inputclkctrl_outclk\,
	d => \data1~1_combout\,
	ena => \data1[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data1(1));

-- Location: LCCOMB_X2_Y11_N24
\data1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \data1~3_combout\ = (!q2(4) & data1(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => q2(4),
	datad => data1(1),
	combout => \data1~3_combout\);

-- Location: FF_X2_Y11_N25
\data1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \start~inputclkctrl_outclk\,
	d => \data1~3_combout\,
	ena => \data1[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data1(2));

-- Location: LCCOMB_X2_Y11_N18
\data1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \data1~4_combout\ = (!q2(4) & data1(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => q2(4),
	datad => data1(2),
	combout => \data1~4_combout\);

-- Location: FF_X2_Y11_N19
\data1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \start~inputclkctrl_outclk\,
	d => \data1~4_combout\,
	ena => \data1[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data1(3));

-- Location: LCCOMB_X2_Y11_N28
\data1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \data1~5_combout\ = (!q2(4) & data1(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => q2(4),
	datad => data1(3),
	combout => \data1~5_combout\);

-- Location: FF_X2_Y11_N29
\data1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \start~inputclkctrl_outclk\,
	d => \data1~5_combout\,
	ena => \data1[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data1(4));

-- Location: LCCOMB_X2_Y11_N10
\data1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \data1~6_combout\ = (!q2(4) & data1(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => q2(4),
	datad => data1(4),
	combout => \data1~6_combout\);

-- Location: FF_X2_Y11_N11
\data1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \start~inputclkctrl_outclk\,
	d => \data1~6_combout\,
	ena => \data1[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data1(5));

-- Location: LCCOMB_X2_Y11_N12
\data1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \data1~7_combout\ = (!q2(4) & data1(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => q2(4),
	datad => data1(5),
	combout => \data1~7_combout\);

-- Location: FF_X2_Y11_N13
\data1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \start~inputclkctrl_outclk\,
	d => \data1~7_combout\,
	ena => \data1[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data1(6));

-- Location: LCCOMB_X2_Y11_N30
\data1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \data1~8_combout\ = (!q2(4) & data1(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => q2(4),
	datad => data1(6),
	combout => \data1~8_combout\);

-- Location: FF_X2_Y11_N31
\data1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \start~inputclkctrl_outclk\,
	d => \data1~8_combout\,
	ena => \data1[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data1(7));

ww_x_out(0) <= \x_out[0]~output_o\;

ww_x_out(1) <= \x_out[1]~output_o\;

ww_x_out(2) <= \x_out[2]~output_o\;

ww_x_out(3) <= \x_out[3]~output_o\;

ww_x_out(4) <= \x_out[4]~output_o\;

ww_x_out(5) <= \x_out[5]~output_o\;

ww_x_out(6) <= \x_out[6]~output_o\;

ww_x_out(7) <= \x_out[7]~output_o\;
END structure;


