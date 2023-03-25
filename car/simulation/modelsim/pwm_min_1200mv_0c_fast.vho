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

-- DATE "12/12/2022 10:30:19"

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

ENTITY 	pwm IS
    PORT (
	pwmq_r : OUT std_logic;
	clk_12_5M : IN std_logic;
	ref_R : IN std_logic_vector(4 DOWNTO 0);
	pwmq_l : OUT std_logic;
	ref_L : IN std_logic_vector(4 DOWNTO 0);
	pwmh_l : OUT std_logic;
	pwmh_R : OUT std_logic
	);
END pwm;

-- Design Ports Information
-- pwmq_r	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwmq_l	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwmh_l	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwmh_R	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ref_R[4]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ref_R[3]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ref_R[2]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ref_R[1]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ref_R[0]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_12_5M	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ref_L[4]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ref_L[3]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ref_L[2]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ref_L[1]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ref_L[0]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF pwm IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_pwmq_r : std_logic;
SIGNAL ww_clk_12_5M : std_logic;
SIGNAL ww_ref_R : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_pwmq_l : std_logic;
SIGNAL ww_ref_L : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_pwmh_l : std_logic;
SIGNAL ww_pwmh_R : std_logic;
SIGNAL \clk_12_5M~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pwmq_r~output_o\ : std_logic;
SIGNAL \pwmq_l~output_o\ : std_logic;
SIGNAL \pwmh_l~output_o\ : std_logic;
SIGNAL \pwmh_R~output_o\ : std_logic;
SIGNAL \clk_12_5M~input_o\ : std_logic;
SIGNAL \clk_12_5M~inputclkctrl_outclk\ : std_logic;
SIGNAL \ref_R[4]~input_o\ : std_logic;
SIGNAL \inst4|cnt[0]~6_combout\ : std_logic;
SIGNAL \inst4|cnt[0]~7\ : std_logic;
SIGNAL \inst4|cnt[1]~8_combout\ : std_logic;
SIGNAL \inst4|cnt[1]~9\ : std_logic;
SIGNAL \inst4|cnt[2]~10_combout\ : std_logic;
SIGNAL \inst4|up~q\ : std_logic;
SIGNAL \inst4|cnt[2]~11\ : std_logic;
SIGNAL \inst4|cnt[3]~12_combout\ : std_logic;
SIGNAL \inst4|Equal0~0_combout\ : std_logic;
SIGNAL \inst4|cnt~5_combout\ : std_logic;
SIGNAL \inst4|cnt[3]~13\ : std_logic;
SIGNAL \inst4|cnt[4]~14_combout\ : std_logic;
SIGNAL \ref_R[2]~input_o\ : std_logic;
SIGNAL \ref_R[1]~input_o\ : std_logic;
SIGNAL \ref_R[0]~input_o\ : std_logic;
SIGNAL \inst2|LessThan0~0_combout\ : std_logic;
SIGNAL \inst2|LessThan0~1_combout\ : std_logic;
SIGNAL \ref_R[3]~input_o\ : std_logic;
SIGNAL \inst2|LessThan0~2_combout\ : std_logic;
SIGNAL \inst2|LessThan0~3_combout\ : std_logic;
SIGNAL \inst2|PWM~feeder_combout\ : std_logic;
SIGNAL \inst2|PWM~q\ : std_logic;
SIGNAL \ref_L[4]~input_o\ : std_logic;
SIGNAL \ref_L[3]~input_o\ : std_logic;
SIGNAL \ref_L[2]~input_o\ : std_logic;
SIGNAL \ref_L[0]~input_o\ : std_logic;
SIGNAL \ref_L[1]~input_o\ : std_logic;
SIGNAL \inst1|LessThan0~0_combout\ : std_logic;
SIGNAL \inst1|LessThan0~1_combout\ : std_logic;
SIGNAL \inst1|LessThan0~2_combout\ : std_logic;
SIGNAL \inst1|LessThan0~3_combout\ : std_logic;
SIGNAL \inst1|PWM~q\ : std_logic;
SIGNAL \inst|PWM~q\ : std_logic;
SIGNAL \inst3|PWM~q\ : std_logic;
SIGNAL \inst4|cnt\ : std_logic_vector(4 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

pwmq_r <= ww_pwmq_r;
ww_clk_12_5M <= clk_12_5M;
ww_ref_R <= ref_R;
pwmq_l <= ww_pwmq_l;
ww_ref_L <= ref_L;
pwmh_l <= ww_pwmh_l;
pwmh_R <= ww_pwmh_R;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_12_5M~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_12_5M~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y9_N2
\pwmq_r~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|PWM~q\,
	devoe => ww_devoe,
	o => \pwmq_r~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\pwmq_l~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|PWM~q\,
	devoe => ww_devoe,
	o => \pwmq_l~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\pwmh_l~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|PWM~q\,
	devoe => ww_devoe,
	o => \pwmh_l~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\pwmh_R~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|PWM~q\,
	devoe => ww_devoe,
	o => \pwmh_R~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk_12_5M~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_12_5M,
	o => \clk_12_5M~input_o\);

-- Location: CLKCTRL_G2
\clk_12_5M~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_12_5M~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_12_5M~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y8_N1
\ref_R[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ref_R(4),
	o => \ref_R[4]~input_o\);

-- Location: LCCOMB_X1_Y8_N14
\inst4|cnt[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|cnt[0]~6_combout\ = \inst4|cnt\(0) $ (VCC)
-- \inst4|cnt[0]~7\ = CARRY(\inst4|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(0),
	datad => VCC,
	combout => \inst4|cnt[0]~6_combout\,
	cout => \inst4|cnt[0]~7\);

-- Location: FF_X1_Y8_N15
\inst4|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_12_5M~inputclkctrl_outclk\,
	d => \inst4|cnt[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(0));

-- Location: LCCOMB_X1_Y8_N16
\inst4|cnt[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|cnt[1]~8_combout\ = (\inst4|cnt\(1) & ((\inst4|cnt~5_combout\ & (!\inst4|cnt[0]~7\)) # (!\inst4|cnt~5_combout\ & (\inst4|cnt[0]~7\ & VCC)))) # (!\inst4|cnt\(1) & ((\inst4|cnt~5_combout\ & ((\inst4|cnt[0]~7\) # (GND))) # (!\inst4|cnt~5_combout\ & 
-- (!\inst4|cnt[0]~7\))))
-- \inst4|cnt[1]~9\ = CARRY((\inst4|cnt\(1) & (\inst4|cnt~5_combout\ & !\inst4|cnt[0]~7\)) # (!\inst4|cnt\(1) & ((\inst4|cnt~5_combout\) # (!\inst4|cnt[0]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(1),
	datab => \inst4|cnt~5_combout\,
	datad => VCC,
	cin => \inst4|cnt[0]~7\,
	combout => \inst4|cnt[1]~8_combout\,
	cout => \inst4|cnt[1]~9\);

-- Location: FF_X1_Y8_N17
\inst4|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_12_5M~inputclkctrl_outclk\,
	d => \inst4|cnt[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(1));

-- Location: LCCOMB_X1_Y8_N18
\inst4|cnt[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|cnt[2]~10_combout\ = ((\inst4|cnt\(2) $ (\inst4|cnt~5_combout\ $ (\inst4|cnt[1]~9\)))) # (GND)
-- \inst4|cnt[2]~11\ = CARRY((\inst4|cnt\(2) & ((!\inst4|cnt[1]~9\) # (!\inst4|cnt~5_combout\))) # (!\inst4|cnt\(2) & (!\inst4|cnt~5_combout\ & !\inst4|cnt[1]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(2),
	datab => \inst4|cnt~5_combout\,
	datad => VCC,
	cin => \inst4|cnt[1]~9\,
	combout => \inst4|cnt[2]~10_combout\,
	cout => \inst4|cnt[2]~11\);

-- Location: FF_X1_Y8_N19
\inst4|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_12_5M~inputclkctrl_outclk\,
	d => \inst4|cnt[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(2));

-- Location: FF_X1_Y8_N9
\inst4|up\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_12_5M~inputclkctrl_outclk\,
	d => \inst4|cnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|up~q\);

-- Location: LCCOMB_X1_Y8_N20
\inst4|cnt[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|cnt[3]~12_combout\ = (\inst4|cnt\(3) & ((\inst4|cnt~5_combout\ & (!\inst4|cnt[2]~11\)) # (!\inst4|cnt~5_combout\ & (\inst4|cnt[2]~11\ & VCC)))) # (!\inst4|cnt\(3) & ((\inst4|cnt~5_combout\ & ((\inst4|cnt[2]~11\) # (GND))) # (!\inst4|cnt~5_combout\ 
-- & (!\inst4|cnt[2]~11\))))
-- \inst4|cnt[3]~13\ = CARRY((\inst4|cnt\(3) & (\inst4|cnt~5_combout\ & !\inst4|cnt[2]~11\)) # (!\inst4|cnt\(3) & ((\inst4|cnt~5_combout\) # (!\inst4|cnt[2]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(3),
	datab => \inst4|cnt~5_combout\,
	datad => VCC,
	cin => \inst4|cnt[2]~11\,
	combout => \inst4|cnt[3]~12_combout\,
	cout => \inst4|cnt[3]~13\);

-- Location: FF_X1_Y8_N21
\inst4|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_12_5M~inputclkctrl_outclk\,
	d => \inst4|cnt[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(3));

-- Location: LCCOMB_X1_Y8_N10
\inst4|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal0~0_combout\ = (!\inst4|cnt\(1) & (!\inst4|cnt\(0) & !\inst4|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cnt\(1),
	datac => \inst4|cnt\(0),
	datad => \inst4|cnt\(3),
	combout => \inst4|Equal0~0_combout\);

-- Location: LCCOMB_X1_Y8_N8
\inst4|cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|cnt~5_combout\ = (\inst4|cnt\(4) & (\inst4|up~q\ & ((!\inst4|Equal0~0_combout\) # (!\inst4|cnt\(2))))) # (!\inst4|cnt\(4) & ((\inst4|up~q\) # ((!\inst4|cnt\(2) & \inst4|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(4),
	datab => \inst4|cnt\(2),
	datac => \inst4|up~q\,
	datad => \inst4|Equal0~0_combout\,
	combout => \inst4|cnt~5_combout\);

-- Location: LCCOMB_X1_Y8_N22
\inst4|cnt[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|cnt[4]~14_combout\ = \inst4|cnt\(4) $ (\inst4|cnt[3]~13\ $ (\inst4|cnt~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(4),
	datad => \inst4|cnt~5_combout\,
	cin => \inst4|cnt[3]~13\,
	combout => \inst4|cnt[4]~14_combout\);

-- Location: FF_X1_Y8_N23
\inst4|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_12_5M~inputclkctrl_outclk\,
	d => \inst4|cnt[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(4));

-- Location: IOIBUF_X0_Y8_N22
\ref_R[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ref_R(2),
	o => \ref_R[2]~input_o\);

-- Location: IOIBUF_X0_Y8_N15
\ref_R[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ref_R(1),
	o => \ref_R[1]~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\ref_R[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ref_R(0),
	o => \ref_R[0]~input_o\);

-- Location: LCCOMB_X1_Y8_N28
\inst2|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~0_combout\ = (\ref_R[1]~input_o\ & (((\ref_R[0]~input_o\ & !\inst4|cnt\(0))) # (!\inst4|cnt\(1)))) # (!\ref_R[1]~input_o\ & (\ref_R[0]~input_o\ & (!\inst4|cnt\(0) & !\inst4|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ref_R[1]~input_o\,
	datab => \ref_R[0]~input_o\,
	datac => \inst4|cnt\(0),
	datad => \inst4|cnt\(1),
	combout => \inst2|LessThan0~0_combout\);

-- Location: LCCOMB_X1_Y8_N30
\inst2|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~1_combout\ = (\inst4|cnt\(2) & (\ref_R[2]~input_o\ & \inst2|LessThan0~0_combout\)) # (!\inst4|cnt\(2) & ((\ref_R[2]~input_o\) # (\inst2|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cnt\(2),
	datac => \ref_R[2]~input_o\,
	datad => \inst2|LessThan0~0_combout\,
	combout => \inst2|LessThan0~1_combout\);

-- Location: IOIBUF_X0_Y7_N22
\ref_R[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ref_R(3),
	o => \ref_R[3]~input_o\);

-- Location: LCCOMB_X1_Y8_N24
\inst2|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~2_combout\ = (\inst4|cnt\(3) & (\inst2|LessThan0~1_combout\ & \ref_R[3]~input_o\)) # (!\inst4|cnt\(3) & ((\inst2|LessThan0~1_combout\) # (\ref_R[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(3),
	datac => \inst2|LessThan0~1_combout\,
	datad => \ref_R[3]~input_o\,
	combout => \inst2|LessThan0~2_combout\);

-- Location: LCCOMB_X1_Y8_N26
\inst2|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~3_combout\ = (\ref_R[4]~input_o\ & ((\inst2|LessThan0~2_combout\) # (!\inst4|cnt\(4)))) # (!\ref_R[4]~input_o\ & (!\inst4|cnt\(4) & \inst2|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ref_R[4]~input_o\,
	datac => \inst4|cnt\(4),
	datad => \inst2|LessThan0~2_combout\,
	combout => \inst2|LessThan0~3_combout\);

-- Location: LCCOMB_X1_Y8_N12
\inst2|PWM~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|PWM~feeder_combout\ = \inst2|LessThan0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|LessThan0~3_combout\,
	combout => \inst2|PWM~feeder_combout\);

-- Location: FF_X1_Y8_N13
\inst2|PWM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_12_5M~inputclkctrl_outclk\,
	d => \inst2|PWM~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|PWM~q\);

-- Location: IOIBUF_X0_Y7_N15
\ref_L[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ref_L(4),
	o => \ref_L[4]~input_o\);

-- Location: IOIBUF_X0_Y9_N8
\ref_L[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ref_L(3),
	o => \ref_L[3]~input_o\);

-- Location: IOIBUF_X0_Y10_N22
\ref_L[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ref_L(2),
	o => \ref_L[2]~input_o\);

-- Location: IOIBUF_X0_Y7_N1
\ref_L[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ref_L(0),
	o => \ref_L[0]~input_o\);

-- Location: IOIBUF_X0_Y8_N8
\ref_L[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ref_L(1),
	o => \ref_L[1]~input_o\);

-- Location: LCCOMB_X1_Y8_N0
\inst1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~0_combout\ = (\ref_L[1]~input_o\ & (((\ref_L[0]~input_o\ & !\inst4|cnt\(0))) # (!\inst4|cnt\(1)))) # (!\ref_L[1]~input_o\ & (\ref_L[0]~input_o\ & (!\inst4|cnt\(0) & !\inst4|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ref_L[0]~input_o\,
	datab => \ref_L[1]~input_o\,
	datac => \inst4|cnt\(0),
	datad => \inst4|cnt\(1),
	combout => \inst1|LessThan0~0_combout\);

-- Location: LCCOMB_X1_Y8_N6
\inst1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~1_combout\ = (\inst4|cnt\(2) & (\ref_L[2]~input_o\ & \inst1|LessThan0~0_combout\)) # (!\inst4|cnt\(2) & ((\ref_L[2]~input_o\) # (\inst1|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cnt\(2),
	datac => \ref_L[2]~input_o\,
	datad => \inst1|LessThan0~0_combout\,
	combout => \inst1|LessThan0~1_combout\);

-- Location: LCCOMB_X1_Y8_N2
\inst1|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~2_combout\ = (\inst4|cnt\(3) & (\ref_L[3]~input_o\ & \inst1|LessThan0~1_combout\)) # (!\inst4|cnt\(3) & ((\ref_L[3]~input_o\) # (\inst1|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(3),
	datab => \ref_L[3]~input_o\,
	datad => \inst1|LessThan0~1_combout\,
	combout => \inst1|LessThan0~2_combout\);

-- Location: LCCOMB_X1_Y8_N4
\inst1|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~3_combout\ = (\ref_L[4]~input_o\ & ((\inst1|LessThan0~2_combout\) # (!\inst4|cnt\(4)))) # (!\ref_L[4]~input_o\ & (!\inst4|cnt\(4) & \inst1|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ref_L[4]~input_o\,
	datac => \inst4|cnt\(4),
	datad => \inst1|LessThan0~2_combout\,
	combout => \inst1|LessThan0~3_combout\);

-- Location: FF_X1_Y8_N3
\inst1|PWM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_12_5M~inputclkctrl_outclk\,
	asdata => \inst1|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PWM~q\);

-- Location: FF_X1_Y8_N5
\inst|PWM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_12_5M~inputclkctrl_outclk\,
	d => \inst1|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PWM~q\);

-- Location: FF_X1_Y8_N27
\inst3|PWM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_12_5M~inputclkctrl_outclk\,
	d => \inst2|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|PWM~q\);

ww_pwmq_r <= \pwmq_r~output_o\;

ww_pwmq_l <= \pwmq_l~output_o\;

ww_pwmh_l <= \pwmh_l~output_o\;

ww_pwmh_R <= \pwmh_R~output_o\;
END structure;


