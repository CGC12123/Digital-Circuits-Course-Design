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

-- DATE "12/12/2022 10:00:39"

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

ENTITY 	clk_generator IS
    PORT (
	clkin : IN std_logic;
	clk_12_5M : OUT std_logic;
	clk_50 : OUT std_logic
	);
END clk_generator;

-- Design Ports Information
-- clk_12_5M	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clkin	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF clk_generator IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clkin : std_logic;
SIGNAL ww_clk_12_5M : std_logic;
SIGNAL ww_clk_50 : std_logic;
SIGNAL \clkin~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_12_5M~output_o\ : std_logic;
SIGNAL \clk_50~output_o\ : std_logic;
SIGNAL \clkin~input_o\ : std_logic;
SIGNAL \clkin~inputclkctrl_outclk\ : std_logic;
SIGNAL \U0|clkt~q\ : std_logic;
SIGNAL \U0|cnt~0_combout\ : std_logic;
SIGNAL \U0|cnt~q\ : std_logic;
SIGNAL \U0|clkt~0_combout\ : std_logic;
SIGNAL \U0|clkout~feeder_combout\ : std_logic;
SIGNAL \U0|clkout~q\ : std_logic;
SIGNAL \U1|Add0~0_combout\ : std_logic;
SIGNAL \U1|Add0~1\ : std_logic;
SIGNAL \U1|Add0~2_combout\ : std_logic;
SIGNAL \U1|Add0~3\ : std_logic;
SIGNAL \U1|Add0~4_combout\ : std_logic;
SIGNAL \U1|Add0~5\ : std_logic;
SIGNAL \U1|Add0~6_combout\ : std_logic;
SIGNAL \U1|Add0~7\ : std_logic;
SIGNAL \U1|Add0~8_combout\ : std_logic;
SIGNAL \U1|cnt~4_combout\ : std_logic;
SIGNAL \U1|Add0~9\ : std_logic;
SIGNAL \U1|Add0~10_combout\ : std_logic;
SIGNAL \U1|Equal0~2_combout\ : std_logic;
SIGNAL \U1|Add0~11\ : std_logic;
SIGNAL \U1|Add0~12_combout\ : std_logic;
SIGNAL \U1|Add0~13\ : std_logic;
SIGNAL \U1|Add0~14_combout\ : std_logic;
SIGNAL \U1|cnt~3_combout\ : std_logic;
SIGNAL \U1|Add0~15\ : std_logic;
SIGNAL \U1|Add0~16_combout\ : std_logic;
SIGNAL \U1|Equal0~1_combout\ : std_logic;
SIGNAL \U1|Add0~17\ : std_logic;
SIGNAL \U1|Add0~18_combout\ : std_logic;
SIGNAL \U1|Add0~19\ : std_logic;
SIGNAL \U1|Add0~20_combout\ : std_logic;
SIGNAL \U1|Add0~21\ : std_logic;
SIGNAL \U1|Add0~22_combout\ : std_logic;
SIGNAL \U1|Add0~23\ : std_logic;
SIGNAL \U1|Add0~24_combout\ : std_logic;
SIGNAL \U1|cnt~5_combout\ : std_logic;
SIGNAL \U1|Add0~25\ : std_logic;
SIGNAL \U1|Add0~26_combout\ : std_logic;
SIGNAL \U1|Add0~27\ : std_logic;
SIGNAL \U1|Add0~28_combout\ : std_logic;
SIGNAL \U1|cnt~6_combout\ : std_logic;
SIGNAL \U1|Equal0~4_combout\ : std_logic;
SIGNAL \U1|Equal0~3_combout\ : std_logic;
SIGNAL \U1|Equal0~5_combout\ : std_logic;
SIGNAL \U1|Add0~29\ : std_logic;
SIGNAL \U1|Add0~30_combout\ : std_logic;
SIGNAL \U1|cnt~0_combout\ : std_logic;
SIGNAL \U1|Add0~31\ : std_logic;
SIGNAL \U1|Add0~32_combout\ : std_logic;
SIGNAL \U1|cnt~1_combout\ : std_logic;
SIGNAL \U1|Add0~33\ : std_logic;
SIGNAL \U1|Add0~34_combout\ : std_logic;
SIGNAL \U1|cnt~2_combout\ : std_logic;
SIGNAL \U1|Equal0~0_combout\ : std_logic;
SIGNAL \U1|clkt~q\ : std_logic;
SIGNAL \U1|clkt~0_combout\ : std_logic;
SIGNAL \U1|clkout~feeder_combout\ : std_logic;
SIGNAL \U1|clkout~q\ : std_logic;
SIGNAL \U1|cnt\ : std_logic_vector(18 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clkin <= clkin;
clk_12_5M <= ww_clk_12_5M;
clk_50 <= ww_clk_50;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clkin~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkin~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y9_N2
\clk_12_5M~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0|clkout~q\,
	devoe => ww_devoe,
	o => \clk_12_5M~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\clk_50~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|clkout~q\,
	devoe => ww_devoe,
	o => \clk_50~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clkin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clkin,
	o => \clkin~input_o\);

-- Location: CLKCTRL_G2
\clkin~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkin~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkin~inputclkctrl_outclk\);

-- Location: FF_X9_Y9_N25
\U0|clkt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \U0|clkt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|clkt~q\);

-- Location: LCCOMB_X10_Y9_N12
\U0|cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|cnt~0_combout\ = !\U0|cnt~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|cnt~q\,
	combout => \U0|cnt~0_combout\);

-- Location: FF_X10_Y9_N13
\U0|cnt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \U0|cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|cnt~q\);

-- Location: LCCOMB_X9_Y9_N24
\U0|clkt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|clkt~0_combout\ = \U0|clkt~q\ $ (\U0|cnt~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|clkt~q\,
	datad => \U0|cnt~q\,
	combout => \U0|clkt~0_combout\);

-- Location: LCCOMB_X8_Y9_N4
\U0|clkout~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|clkout~feeder_combout\ = \U0|clkt~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|clkt~0_combout\,
	combout => \U0|clkout~feeder_combout\);

-- Location: FF_X8_Y9_N5
\U0|clkout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \U0|clkout~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|clkout~q\);

-- Location: LCCOMB_X10_Y9_N14
\U1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~0_combout\ = (\U0|cnt~q\ & (\U1|cnt\(1) $ (VCC))) # (!\U0|cnt~q\ & (\U1|cnt\(1) & VCC))
-- \U1|Add0~1\ = CARRY((\U0|cnt~q\ & \U1|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|cnt~q\,
	datab => \U1|cnt\(1),
	datad => VCC,
	combout => \U1|Add0~0_combout\,
	cout => \U1|Add0~1\);

-- Location: FF_X10_Y9_N15
\U1|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \U1|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|cnt\(1));

-- Location: LCCOMB_X10_Y9_N16
\U1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~2_combout\ = (\U1|cnt\(2) & (!\U1|Add0~1\)) # (!\U1|cnt\(2) & ((\U1|Add0~1\) # (GND)))
-- \U1|Add0~3\ = CARRY((!\U1|Add0~1\) # (!\U1|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|cnt\(2),
	datad => VCC,
	cin => \U1|Add0~1\,
	combout => \U1|Add0~2_combout\,
	cout => \U1|Add0~3\);

-- Location: FF_X10_Y9_N17
\U1|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \U1|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|cnt\(2));

-- Location: LCCOMB_X10_Y9_N18
\U1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~4_combout\ = (\U1|cnt\(3) & (\U1|Add0~3\ $ (GND))) # (!\U1|cnt\(3) & (!\U1|Add0~3\ & VCC))
-- \U1|Add0~5\ = CARRY((\U1|cnt\(3) & !\U1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|cnt\(3),
	datad => VCC,
	cin => \U1|Add0~3\,
	combout => \U1|Add0~4_combout\,
	cout => \U1|Add0~5\);

-- Location: FF_X10_Y9_N19
\U1|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \U1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|cnt\(3));

-- Location: LCCOMB_X10_Y9_N20
\U1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~6_combout\ = (\U1|cnt\(4) & (!\U1|Add0~5\)) # (!\U1|cnt\(4) & ((\U1|Add0~5\) # (GND)))
-- \U1|Add0~7\ = CARRY((!\U1|Add0~5\) # (!\U1|cnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|cnt\(4),
	datad => VCC,
	cin => \U1|Add0~5\,
	combout => \U1|Add0~6_combout\,
	cout => \U1|Add0~7\);

-- Location: FF_X10_Y9_N21
\U1|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \U1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|cnt\(4));

-- Location: LCCOMB_X10_Y9_N22
\U1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~8_combout\ = (\U1|cnt\(5) & (\U1|Add0~7\ $ (GND))) # (!\U1|cnt\(5) & (!\U1|Add0~7\ & VCC))
-- \U1|Add0~9\ = CARRY((\U1|cnt\(5) & !\U1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|cnt\(5),
	datad => VCC,
	cin => \U1|Add0~7\,
	combout => \U1|Add0~8_combout\,
	cout => \U1|Add0~9\);

-- Location: LCCOMB_X10_Y9_N10
\U1|cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|cnt~4_combout\ = (\U1|Add0~8_combout\ & ((!\U1|Equal0~5_combout\) # (!\U1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Equal0~0_combout\,
	datac => \U1|Add0~8_combout\,
	datad => \U1|Equal0~5_combout\,
	combout => \U1|cnt~4_combout\);

-- Location: FF_X10_Y9_N11
\U1|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \U1|cnt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|cnt\(5));

-- Location: LCCOMB_X10_Y9_N24
\U1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~10_combout\ = (\U1|cnt\(6) & (!\U1|Add0~9\)) # (!\U1|cnt\(6) & ((\U1|Add0~9\) # (GND)))
-- \U1|Add0~11\ = CARRY((!\U1|Add0~9\) # (!\U1|cnt\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|cnt\(6),
	datad => VCC,
	cin => \U1|Add0~9\,
	combout => \U1|Add0~10_combout\,
	cout => \U1|Add0~11\);

-- Location: FF_X10_Y9_N25
\U1|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \U1|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|cnt\(6));

-- Location: LCCOMB_X10_Y9_N0
\U1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal0~2_combout\ = (!\U1|cnt\(5) & (\U1|cnt\(4) & (\U1|cnt\(3) & !\U1|cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|cnt\(5),
	datab => \U1|cnt\(4),
	datac => \U1|cnt\(3),
	datad => \U1|cnt\(6),
	combout => \U1|Equal0~2_combout\);

-- Location: LCCOMB_X10_Y9_N26
\U1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~12_combout\ = (\U1|cnt\(7) & (\U1|Add0~11\ $ (GND))) # (!\U1|cnt\(7) & (!\U1|Add0~11\ & VCC))
-- \U1|Add0~13\ = CARRY((\U1|cnt\(7) & !\U1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|cnt\(7),
	datad => VCC,
	cin => \U1|Add0~11\,
	combout => \U1|Add0~12_combout\,
	cout => \U1|Add0~13\);

-- Location: FF_X10_Y9_N27
\U1|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \U1|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|cnt\(7));

-- Location: LCCOMB_X10_Y9_N28
\U1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~14_combout\ = (\U1|cnt\(8) & (!\U1|Add0~13\)) # (!\U1|cnt\(8) & ((\U1|Add0~13\) # (GND)))
-- \U1|Add0~15\ = CARRY((!\U1|Add0~13\) # (!\U1|cnt\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|cnt\(8),
	datad => VCC,
	cin => \U1|Add0~13\,
	combout => \U1|Add0~14_combout\,
	cout => \U1|Add0~15\);

-- Location: LCCOMB_X10_Y9_N6
\U1|cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|cnt~3_combout\ = (\U1|Add0~14_combout\ & ((!\U1|Equal0~0_combout\) # (!\U1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal0~5_combout\,
	datac => \U1|Equal0~0_combout\,
	datad => \U1|Add0~14_combout\,
	combout => \U1|cnt~3_combout\);

-- Location: FF_X10_Y9_N7
\U1|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \U1|cnt~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|cnt\(8));

-- Location: LCCOMB_X10_Y9_N30
\U1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~16_combout\ = (\U1|cnt\(9) & (\U1|Add0~15\ $ (GND))) # (!\U1|cnt\(9) & (!\U1|Add0~15\ & VCC))
-- \U1|Add0~17\ = CARRY((\U1|cnt\(9) & !\U1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|cnt\(9),
	datad => VCC,
	cin => \U1|Add0~15\,
	combout => \U1|Add0~16_combout\,
	cout => \U1|Add0~17\);

-- Location: FF_X10_Y9_N31
\U1|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \U1|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|cnt\(9));

-- Location: LCCOMB_X10_Y9_N4
\U1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal0~1_combout\ = (!\U1|cnt\(7) & (\U0|cnt~q\ & (!\U1|cnt\(9) & \U1|cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|cnt\(7),
	datab => \U0|cnt~q\,
	datac => \U1|cnt\(9),
	datad => \U1|cnt\(8),
	combout => \U1|Equal0~1_combout\);

-- Location: LCCOMB_X10_Y8_N0
\U1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~18_combout\ = (\U1|cnt\(10) & (!\U1|Add0~17\)) # (!\U1|cnt\(10) & ((\U1|Add0~17\) # (GND)))
-- \U1|Add0~19\ = CARRY((!\U1|Add0~17\) # (!\U1|cnt\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|cnt\(10),
	datad => VCC,
	cin => \U1|Add0~17\,
	combout => \U1|Add0~18_combout\,
	cout => \U1|Add0~19\);

-- Location: FF_X10_Y8_N1
\U1|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \U1|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|cnt\(10));

-- Location: LCCOMB_X10_Y8_N2
\U1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~20_combout\ = (\U1|cnt\(11) & (\U1|Add0~19\ $ (GND))) # (!\U1|cnt\(11) & (!\U1|Add0~19\ & VCC))
-- \U1|Add0~21\ = CARRY((\U1|cnt\(11) & !\U1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|cnt\(11),
	datad => VCC,
	cin => \U1|Add0~19\,
	combout => \U1|Add0~20_combout\,
	cout => \U1|Add0~21\);

-- Location: FF_X10_Y8_N3
\U1|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \U1|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|cnt\(11));

-- Location: LCCOMB_X10_Y8_N4
\U1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~22_combout\ = (\U1|cnt\(12) & (!\U1|Add0~21\)) # (!\U1|cnt\(12) & ((\U1|Add0~21\) # (GND)))
-- \U1|Add0~23\ = CARRY((!\U1|Add0~21\) # (!\U1|cnt\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|cnt\(12),
	datad => VCC,
	cin => \U1|Add0~21\,
	combout => \U1|Add0~22_combout\,
	cout => \U1|Add0~23\);

-- Location: FF_X10_Y8_N5
\U1|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \U1|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|cnt\(12));

-- Location: LCCOMB_X10_Y8_N6
\U1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~24_combout\ = (\U1|cnt\(13) & (\U1|Add0~23\ $ (GND))) # (!\U1|cnt\(13) & (!\U1|Add0~23\ & VCC))
-- \U1|Add0~25\ = CARRY((\U1|cnt\(13) & !\U1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|cnt\(13),
	datad => VCC,
	cin => \U1|Add0~23\,
	combout => \U1|Add0~24_combout\,
	cout => \U1|Add0~25\);

-- Location: LCCOMB_X10_Y8_N30
\U1|cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|cnt~5_combout\ = (\U1|Add0~24_combout\ & ((!\U1|Equal0~5_combout\) # (!\U1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Equal0~0_combout\,
	datac => \U1|Equal0~5_combout\,
	datad => \U1|Add0~24_combout\,
	combout => \U1|cnt~5_combout\);

-- Location: FF_X10_Y8_N31
\U1|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \U1|cnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|cnt\(13));

-- Location: LCCOMB_X10_Y8_N8
\U1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~26_combout\ = (\U1|cnt\(14) & (!\U1|Add0~25\)) # (!\U1|cnt\(14) & ((\U1|Add0~25\) # (GND)))
-- \U1|Add0~27\ = CARRY((!\U1|Add0~25\) # (!\U1|cnt\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|cnt\(14),
	datad => VCC,
	cin => \U1|Add0~25\,
	combout => \U1|Add0~26_combout\,
	cout => \U1|Add0~27\);

-- Location: FF_X10_Y8_N9
\U1|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \U1|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|cnt\(14));

-- Location: LCCOMB_X10_Y8_N10
\U1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~28_combout\ = (\U1|cnt\(15) & (\U1|Add0~27\ $ (GND))) # (!\U1|cnt\(15) & (!\U1|Add0~27\ & VCC))
-- \U1|Add0~29\ = CARRY((\U1|cnt\(15) & !\U1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|cnt\(15),
	datad => VCC,
	cin => \U1|Add0~27\,
	combout => \U1|Add0~28_combout\,
	cout => \U1|Add0~29\);

-- Location: LCCOMB_X10_Y8_N28
\U1|cnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|cnt~6_combout\ = (\U1|Add0~28_combout\ & ((!\U1|Equal0~5_combout\) # (!\U1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Equal0~0_combout\,
	datac => \U1|Equal0~5_combout\,
	datad => \U1|Add0~28_combout\,
	combout => \U1|cnt~6_combout\);

-- Location: FF_X10_Y8_N29
\U1|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \U1|cnt~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|cnt\(15));

-- Location: LCCOMB_X10_Y8_N26
\U1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal0~4_combout\ = (\U1|cnt\(13) & (!\U1|cnt\(12) & (!\U1|cnt\(14) & \U1|cnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|cnt\(13),
	datab => \U1|cnt\(12),
	datac => \U1|cnt\(14),
	datad => \U1|cnt\(15),
	combout => \U1|Equal0~4_combout\);

-- Location: LCCOMB_X10_Y9_N2
\U1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal0~3_combout\ = (\U1|cnt\(1) & (!\U1|cnt\(10) & (\U1|cnt\(2) & !\U1|cnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|cnt\(1),
	datab => \U1|cnt\(10),
	datac => \U1|cnt\(2),
	datad => \U1|cnt\(11),
	combout => \U1|Equal0~3_combout\);

-- Location: LCCOMB_X10_Y9_N8
\U1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal0~5_combout\ = (\U1|Equal0~2_combout\ & (\U1|Equal0~1_combout\ & (\U1|Equal0~4_combout\ & \U1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal0~2_combout\,
	datab => \U1|Equal0~1_combout\,
	datac => \U1|Equal0~4_combout\,
	datad => \U1|Equal0~3_combout\,
	combout => \U1|Equal0~5_combout\);

-- Location: LCCOMB_X10_Y8_N12
\U1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~30_combout\ = (\U1|cnt\(16) & (!\U1|Add0~29\)) # (!\U1|cnt\(16) & ((\U1|Add0~29\) # (GND)))
-- \U1|Add0~31\ = CARRY((!\U1|Add0~29\) # (!\U1|cnt\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|cnt\(16),
	datad => VCC,
	cin => \U1|Add0~29\,
	combout => \U1|Add0~30_combout\,
	cout => \U1|Add0~31\);

-- Location: LCCOMB_X10_Y8_N18
\U1|cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|cnt~0_combout\ = (\U1|Add0~30_combout\ & ((!\U1|Equal0~5_combout\) # (!\U1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Equal0~0_combout\,
	datac => \U1|Equal0~5_combout\,
	datad => \U1|Add0~30_combout\,
	combout => \U1|cnt~0_combout\);

-- Location: FF_X10_Y8_N19
\U1|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \U1|cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|cnt\(16));

-- Location: LCCOMB_X10_Y8_N14
\U1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~32_combout\ = (\U1|cnt\(17) & (\U1|Add0~31\ $ (GND))) # (!\U1|cnt\(17) & (!\U1|Add0~31\ & VCC))
-- \U1|Add0~33\ = CARRY((\U1|cnt\(17) & !\U1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|cnt\(17),
	datad => VCC,
	cin => \U1|Add0~31\,
	combout => \U1|Add0~32_combout\,
	cout => \U1|Add0~33\);

-- Location: LCCOMB_X10_Y8_N24
\U1|cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|cnt~1_combout\ = (\U1|Add0~32_combout\ & ((!\U1|Equal0~5_combout\) # (!\U1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Equal0~0_combout\,
	datac => \U1|Add0~32_combout\,
	datad => \U1|Equal0~5_combout\,
	combout => \U1|cnt~1_combout\);

-- Location: FF_X10_Y8_N25
\U1|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \U1|cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|cnt\(17));

-- Location: LCCOMB_X10_Y8_N16
\U1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~34_combout\ = \U1|cnt\(18) $ (\U1|Add0~33\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|cnt\(18),
	cin => \U1|Add0~33\,
	combout => \U1|Add0~34_combout\);

-- Location: LCCOMB_X10_Y8_N22
\U1|cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|cnt~2_combout\ = (\U1|Add0~34_combout\ & ((!\U1|Equal0~5_combout\) # (!\U1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Equal0~0_combout\,
	datac => \U1|Equal0~5_combout\,
	datad => \U1|Add0~34_combout\,
	combout => \U1|cnt~2_combout\);

-- Location: FF_X10_Y8_N23
\U1|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \U1|cnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|cnt\(18));

-- Location: LCCOMB_X10_Y8_N20
\U1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal0~0_combout\ = (\U1|cnt\(18) & (\U1|cnt\(16) & \U1|cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|cnt\(18),
	datac => \U1|cnt\(16),
	datad => \U1|cnt\(17),
	combout => \U1|Equal0~0_combout\);

-- Location: FF_X11_Y9_N19
\U1|clkt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \U1|clkt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|clkt~q\);

-- Location: LCCOMB_X11_Y9_N18
\U1|clkt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|clkt~0_combout\ = \U1|clkt~q\ $ (((\U1|Equal0~0_combout\ & \U1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal0~0_combout\,
	datac => \U1|clkt~q\,
	datad => \U1|Equal0~5_combout\,
	combout => \U1|clkt~0_combout\);

-- Location: LCCOMB_X11_Y9_N28
\U1|clkout~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|clkout~feeder_combout\ = \U1|clkt~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|clkt~0_combout\,
	combout => \U1|clkout~feeder_combout\);

-- Location: FF_X11_Y9_N29
\U1|clkout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \U1|clkout~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|clkout~q\);

ww_clk_12_5M <= \clk_12_5M~output_o\;

ww_clk_50 <= \clk_50~output_o\;
END structure;


