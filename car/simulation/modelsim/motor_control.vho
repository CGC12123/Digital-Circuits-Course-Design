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

-- DATE "12/12/2022 10:31:25"

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

ENTITY 	motor_control IS
    PORT (
	pwmh_l : OUT std_logic;
	clk_12_5M : IN std_logic;
	ref_L : IN std_logic_vector(4 DOWNTO 0);
	ref_R : IN std_logic_vector(4 DOWNTO 0);
	pwmq_l : OUT std_logic;
	pwmq_r : OUT std_logic;
	pwmh_r : OUT std_logic;
	motor_sy : OUT std_logic_vector(3 DOWNTO 0);
	l : IN std_logic_vector(1 DOWNTO 0);
	r : IN std_logic_vector(1 DOWNTO 0);
	motor_sz : OUT std_logic_vector(3 DOWNTO 0)
	);
END motor_control;

-- Design Ports Information
-- pwmh_l	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwmq_l	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwmq_r	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwmh_r	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- motor_sy[3]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- motor_sy[2]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- motor_sy[1]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- motor_sy[0]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- motor_sz[3]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- motor_sz[2]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- motor_sz[1]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- motor_sz[0]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l[1]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[1]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[0]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l[0]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ref_L[4]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ref_L[3]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ref_L[2]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ref_L[1]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ref_L[0]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_12_5M	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ref_R[4]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ref_R[3]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ref_R[2]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ref_R[1]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ref_R[0]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF motor_control IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_pwmh_l : std_logic;
SIGNAL ww_clk_12_5M : std_logic;
SIGNAL ww_ref_L : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_ref_R : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_pwmq_l : std_logic;
SIGNAL ww_pwmq_r : std_logic;
SIGNAL ww_pwmh_r : std_logic;
SIGNAL ww_motor_sy : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_l : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_r : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_motor_sz : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_12_5M~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pwmh_l~output_o\ : std_logic;
SIGNAL \pwmq_l~output_o\ : std_logic;
SIGNAL \pwmq_r~output_o\ : std_logic;
SIGNAL \pwmh_r~output_o\ : std_logic;
SIGNAL \motor_sy[3]~output_o\ : std_logic;
SIGNAL \motor_sy[2]~output_o\ : std_logic;
SIGNAL \motor_sy[1]~output_o\ : std_logic;
SIGNAL \motor_sy[0]~output_o\ : std_logic;
SIGNAL \motor_sz[3]~output_o\ : std_logic;
SIGNAL \motor_sz[2]~output_o\ : std_logic;
SIGNAL \motor_sz[1]~output_o\ : std_logic;
SIGNAL \motor_sz[0]~output_o\ : std_logic;
SIGNAL \clk_12_5M~input_o\ : std_logic;
SIGNAL \clk_12_5M~inputclkctrl_outclk\ : std_logic;
SIGNAL \ref_L[4]~input_o\ : std_logic;
SIGNAL \inst|inst4|cnt[0]~6_combout\ : std_logic;
SIGNAL \inst|inst4|cnt[0]~7\ : std_logic;
SIGNAL \inst|inst4|cnt[1]~8_combout\ : std_logic;
SIGNAL \inst|inst4|cnt[1]~9\ : std_logic;
SIGNAL \inst|inst4|cnt[2]~10_combout\ : std_logic;
SIGNAL \inst|inst4|up~q\ : std_logic;
SIGNAL \inst|inst4|cnt[2]~11\ : std_logic;
SIGNAL \inst|inst4|cnt[3]~12_combout\ : std_logic;
SIGNAL \inst|inst4|Equal0~0_combout\ : std_logic;
SIGNAL \inst|inst4|cnt~5_combout\ : std_logic;
SIGNAL \inst|inst4|cnt[3]~13\ : std_logic;
SIGNAL \inst|inst4|cnt[4]~14_combout\ : std_logic;
SIGNAL \ref_L[3]~input_o\ : std_logic;
SIGNAL \ref_L[2]~input_o\ : std_logic;
SIGNAL \ref_L[0]~input_o\ : std_logic;
SIGNAL \ref_L[1]~input_o\ : std_logic;
SIGNAL \inst|inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|inst|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|inst|LessThan0~3_combout\ : std_logic;
SIGNAL \inst|inst|PWM~feeder_combout\ : std_logic;
SIGNAL \inst|inst|PWM~q\ : std_logic;
SIGNAL \inst|inst1|PWM~q\ : std_logic;
SIGNAL \ref_R[4]~input_o\ : std_logic;
SIGNAL \ref_R[3]~input_o\ : std_logic;
SIGNAL \ref_R[2]~input_o\ : std_logic;
SIGNAL \ref_R[1]~input_o\ : std_logic;
SIGNAL \ref_R[0]~input_o\ : std_logic;
SIGNAL \inst|inst2|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|inst2|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|inst2|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|inst2|LessThan0~3_combout\ : std_logic;
SIGNAL \inst|inst2|PWM~q\ : std_logic;
SIGNAL \inst|inst3|PWM~q\ : std_logic;
SIGNAL \l[0]~input_o\ : std_logic;
SIGNAL \r[1]~input_o\ : std_logic;
SIGNAL \l[1]~input_o\ : std_logic;
SIGNAL \r[0]~input_o\ : std_logic;
SIGNAL \inst1|moto_sy[3]~0_combout\ : std_logic;
SIGNAL \inst1|moto_sy[2]~1_combout\ : std_logic;
SIGNAL \inst1|moto_sz[3]~0_combout\ : std_logic;
SIGNAL \inst1|process_0~0_combout\ : std_logic;
SIGNAL \inst|inst4|cnt\ : std_logic_vector(4 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

pwmh_l <= ww_pwmh_l;
ww_clk_12_5M <= clk_12_5M;
ww_ref_L <= ref_L;
ww_ref_R <= ref_R;
pwmq_l <= ww_pwmq_l;
pwmq_r <= ww_pwmq_r;
pwmh_r <= ww_pwmh_r;
motor_sy <= ww_motor_sy;
ww_l <= l;
ww_r <= r;
motor_sz <= ww_motor_sz;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_12_5M~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_12_5M~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X7_Y0_N2
\pwmh_l~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|PWM~q\,
	devoe => ww_devoe,
	o => \pwmh_l~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\pwmq_l~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst1|PWM~q\,
	devoe => ww_devoe,
	o => \pwmq_l~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\pwmq_r~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|PWM~q\,
	devoe => ww_devoe,
	o => \pwmq_r~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\pwmh_r~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst3|PWM~q\,
	devoe => ww_devoe,
	o => \pwmh_r~output_o\);

-- Location: IOOBUF_X1_Y24_N2
\motor_sy[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|moto_sy[3]~0_combout\,
	devoe => ww_devoe,
	o => \motor_sy[3]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\motor_sy[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|moto_sy[2]~1_combout\,
	devoe => ww_devoe,
	o => \motor_sy[2]~output_o\);

-- Location: IOOBUF_X1_Y24_N9
\motor_sy[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|moto_sy[3]~0_combout\,
	devoe => ww_devoe,
	o => \motor_sy[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\motor_sy[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|moto_sy[2]~1_combout\,
	devoe => ww_devoe,
	o => \motor_sy[0]~output_o\);

-- Location: IOOBUF_X0_Y19_N2
\motor_sz[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|moto_sz[3]~0_combout\,
	devoe => ww_devoe,
	o => \motor_sz[3]~output_o\);

-- Location: IOOBUF_X0_Y22_N2
\motor_sz[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|process_0~0_combout\,
	devoe => ww_devoe,
	o => \motor_sz[2]~output_o\);

-- Location: IOOBUF_X0_Y19_N23
\motor_sz[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|moto_sz[3]~0_combout\,
	devoe => ww_devoe,
	o => \motor_sz[1]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\motor_sz[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|process_0~0_combout\,
	devoe => ww_devoe,
	o => \motor_sz[0]~output_o\);

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

-- Location: IOIBUF_X11_Y0_N8
\ref_L[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ref_L(4),
	o => \ref_L[4]~input_o\);

-- Location: LCCOMB_X8_Y2_N14
\inst|inst4|cnt[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|cnt[0]~6_combout\ = \inst|inst4|cnt\(0) $ (VCC)
-- \inst|inst4|cnt[0]~7\ = CARRY(\inst|inst4|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|cnt\(0),
	datad => VCC,
	combout => \inst|inst4|cnt[0]~6_combout\,
	cout => \inst|inst4|cnt[0]~7\);

-- Location: FF_X8_Y2_N15
\inst|inst4|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_12_5M~inputclkctrl_outclk\,
	d => \inst|inst4|cnt[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|cnt\(0));

-- Location: LCCOMB_X8_Y2_N16
\inst|inst4|cnt[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|cnt[1]~8_combout\ = (\inst|inst4|cnt~5_combout\ & ((\inst|inst4|cnt\(1) & (!\inst|inst4|cnt[0]~7\)) # (!\inst|inst4|cnt\(1) & ((\inst|inst4|cnt[0]~7\) # (GND))))) # (!\inst|inst4|cnt~5_combout\ & ((\inst|inst4|cnt\(1) & (\inst|inst4|cnt[0]~7\ 
-- & VCC)) # (!\inst|inst4|cnt\(1) & (!\inst|inst4|cnt[0]~7\))))
-- \inst|inst4|cnt[1]~9\ = CARRY((\inst|inst4|cnt~5_combout\ & ((!\inst|inst4|cnt[0]~7\) # (!\inst|inst4|cnt\(1)))) # (!\inst|inst4|cnt~5_combout\ & (!\inst|inst4|cnt\(1) & !\inst|inst4|cnt[0]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|cnt~5_combout\,
	datab => \inst|inst4|cnt\(1),
	datad => VCC,
	cin => \inst|inst4|cnt[0]~7\,
	combout => \inst|inst4|cnt[1]~8_combout\,
	cout => \inst|inst4|cnt[1]~9\);

-- Location: FF_X8_Y2_N17
\inst|inst4|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_12_5M~inputclkctrl_outclk\,
	d => \inst|inst4|cnt[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|cnt\(1));

-- Location: LCCOMB_X8_Y2_N18
\inst|inst4|cnt[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|cnt[2]~10_combout\ = ((\inst|inst4|cnt~5_combout\ $ (\inst|inst4|cnt\(2) $ (\inst|inst4|cnt[1]~9\)))) # (GND)
-- \inst|inst4|cnt[2]~11\ = CARRY((\inst|inst4|cnt~5_combout\ & (\inst|inst4|cnt\(2) & !\inst|inst4|cnt[1]~9\)) # (!\inst|inst4|cnt~5_combout\ & ((\inst|inst4|cnt\(2)) # (!\inst|inst4|cnt[1]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|cnt~5_combout\,
	datab => \inst|inst4|cnt\(2),
	datad => VCC,
	cin => \inst|inst4|cnt[1]~9\,
	combout => \inst|inst4|cnt[2]~10_combout\,
	cout => \inst|inst4|cnt[2]~11\);

-- Location: FF_X8_Y2_N19
\inst|inst4|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_12_5M~inputclkctrl_outclk\,
	d => \inst|inst4|cnt[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|cnt\(2));

-- Location: FF_X8_Y2_N27
\inst|inst4|up\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_12_5M~inputclkctrl_outclk\,
	d => \inst|inst4|cnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|up~q\);

-- Location: LCCOMB_X8_Y2_N20
\inst|inst4|cnt[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|cnt[3]~12_combout\ = (\inst|inst4|cnt~5_combout\ & ((\inst|inst4|cnt\(3) & (!\inst|inst4|cnt[2]~11\)) # (!\inst|inst4|cnt\(3) & ((\inst|inst4|cnt[2]~11\) # (GND))))) # (!\inst|inst4|cnt~5_combout\ & ((\inst|inst4|cnt\(3) & 
-- (\inst|inst4|cnt[2]~11\ & VCC)) # (!\inst|inst4|cnt\(3) & (!\inst|inst4|cnt[2]~11\))))
-- \inst|inst4|cnt[3]~13\ = CARRY((\inst|inst4|cnt~5_combout\ & ((!\inst|inst4|cnt[2]~11\) # (!\inst|inst4|cnt\(3)))) # (!\inst|inst4|cnt~5_combout\ & (!\inst|inst4|cnt\(3) & !\inst|inst4|cnt[2]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|cnt~5_combout\,
	datab => \inst|inst4|cnt\(3),
	datad => VCC,
	cin => \inst|inst4|cnt[2]~11\,
	combout => \inst|inst4|cnt[3]~12_combout\,
	cout => \inst|inst4|cnt[3]~13\);

-- Location: FF_X8_Y2_N21
\inst|inst4|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_12_5M~inputclkctrl_outclk\,
	d => \inst|inst4|cnt[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|cnt\(3));

-- Location: LCCOMB_X8_Y2_N28
\inst|inst4|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Equal0~0_combout\ = (!\inst|inst4|cnt\(3) & (!\inst|inst4|cnt\(0) & !\inst|inst4|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|cnt\(3),
	datab => \inst|inst4|cnt\(0),
	datad => \inst|inst4|cnt\(1),
	combout => \inst|inst4|Equal0~0_combout\);

-- Location: LCCOMB_X8_Y2_N26
\inst|inst4|cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|cnt~5_combout\ = (\inst|inst4|cnt\(4) & (\inst|inst4|up~q\ & ((!\inst|inst4|Equal0~0_combout\) # (!\inst|inst4|cnt\(2))))) # (!\inst|inst4|cnt\(4) & ((\inst|inst4|up~q\) # ((!\inst|inst4|cnt\(2) & \inst|inst4|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|cnt\(4),
	datab => \inst|inst4|cnt\(2),
	datac => \inst|inst4|up~q\,
	datad => \inst|inst4|Equal0~0_combout\,
	combout => \inst|inst4|cnt~5_combout\);

-- Location: LCCOMB_X8_Y2_N22
\inst|inst4|cnt[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|cnt[4]~14_combout\ = \inst|inst4|cnt\(4) $ (\inst|inst4|cnt[3]~13\ $ (\inst|inst4|cnt~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|cnt\(4),
	datad => \inst|inst4|cnt~5_combout\,
	cin => \inst|inst4|cnt[3]~13\,
	combout => \inst|inst4|cnt[4]~14_combout\);

-- Location: FF_X8_Y2_N23
\inst|inst4|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_12_5M~inputclkctrl_outclk\,
	d => \inst|inst4|cnt[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|cnt\(4));

-- Location: IOIBUF_X5_Y0_N15
\ref_L[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ref_L(3),
	o => \ref_L[3]~input_o\);

-- Location: IOIBUF_X9_Y0_N8
\ref_L[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ref_L(2),
	o => \ref_L[2]~input_o\);

-- Location: IOIBUF_X7_Y0_N15
\ref_L[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ref_L(0),
	o => \ref_L[0]~input_o\);

-- Location: IOIBUF_X9_Y0_N15
\ref_L[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ref_L(1),
	o => \ref_L[1]~input_o\);

-- Location: LCCOMB_X8_Y2_N8
\inst|inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|LessThan0~0_combout\ = (\ref_L[1]~input_o\ & (((\ref_L[0]~input_o\ & !\inst|inst4|cnt\(0))) # (!\inst|inst4|cnt\(1)))) # (!\ref_L[1]~input_o\ & (\ref_L[0]~input_o\ & (!\inst|inst4|cnt\(0) & !\inst|inst4|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ref_L[0]~input_o\,
	datab => \ref_L[1]~input_o\,
	datac => \inst|inst4|cnt\(0),
	datad => \inst|inst4|cnt\(1),
	combout => \inst|inst|LessThan0~0_combout\);

-- Location: LCCOMB_X8_Y2_N10
\inst|inst|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|LessThan0~1_combout\ = (\ref_L[2]~input_o\ & ((\inst|inst|LessThan0~0_combout\) # (!\inst|inst4|cnt\(2)))) # (!\ref_L[2]~input_o\ & (!\inst|inst4|cnt\(2) & \inst|inst|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ref_L[2]~input_o\,
	datab => \inst|inst4|cnt\(2),
	datac => \inst|inst|LessThan0~0_combout\,
	combout => \inst|inst|LessThan0~1_combout\);

-- Location: LCCOMB_X8_Y2_N0
\inst|inst|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|LessThan0~2_combout\ = (\inst|inst4|cnt\(3) & (\ref_L[3]~input_o\ & \inst|inst|LessThan0~1_combout\)) # (!\inst|inst4|cnt\(3) & ((\ref_L[3]~input_o\) # (\inst|inst|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|cnt\(3),
	datac => \ref_L[3]~input_o\,
	datad => \inst|inst|LessThan0~1_combout\,
	combout => \inst|inst|LessThan0~2_combout\);

-- Location: LCCOMB_X8_Y2_N6
\inst|inst|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|LessThan0~3_combout\ = (\ref_L[4]~input_o\ & ((\inst|inst|LessThan0~2_combout\) # (!\inst|inst4|cnt\(4)))) # (!\ref_L[4]~input_o\ & (!\inst|inst4|cnt\(4) & \inst|inst|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ref_L[4]~input_o\,
	datac => \inst|inst4|cnt\(4),
	datad => \inst|inst|LessThan0~2_combout\,
	combout => \inst|inst|LessThan0~3_combout\);

-- Location: LCCOMB_X8_Y2_N4
\inst|inst|PWM~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|PWM~feeder_combout\ = \inst|inst|LessThan0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst|LessThan0~3_combout\,
	combout => \inst|inst|PWM~feeder_combout\);

-- Location: FF_X8_Y2_N5
\inst|inst|PWM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_12_5M~inputclkctrl_outclk\,
	d => \inst|inst|PWM~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|PWM~q\);

-- Location: FF_X8_Y2_N7
\inst|inst1|PWM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_12_5M~inputclkctrl_outclk\,
	d => \inst|inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|PWM~q\);

-- Location: IOIBUF_X7_Y0_N22
\ref_R[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ref_R(4),
	o => \ref_R[4]~input_o\);

-- Location: IOIBUF_X9_Y0_N22
\ref_R[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ref_R(3),
	o => \ref_R[3]~input_o\);

-- Location: IOIBUF_X9_Y0_N1
\ref_R[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ref_R(2),
	o => \ref_R[2]~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\ref_R[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ref_R(1),
	o => \ref_R[1]~input_o\);

-- Location: IOIBUF_X11_Y0_N1
\ref_R[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ref_R(0),
	o => \ref_R[0]~input_o\);

-- Location: LCCOMB_X8_Y2_N12
\inst|inst2|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|LessThan0~0_combout\ = (\ref_R[1]~input_o\ & (((\ref_R[0]~input_o\ & !\inst|inst4|cnt\(0))) # (!\inst|inst4|cnt\(1)))) # (!\ref_R[1]~input_o\ & (\ref_R[0]~input_o\ & (!\inst|inst4|cnt\(0) & !\inst|inst4|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ref_R[1]~input_o\,
	datab => \ref_R[0]~input_o\,
	datac => \inst|inst4|cnt\(0),
	datad => \inst|inst4|cnt\(1),
	combout => \inst|inst2|LessThan0~0_combout\);

-- Location: LCCOMB_X8_Y2_N2
\inst|inst2|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|LessThan0~1_combout\ = (\inst|inst4|cnt\(2) & (\ref_R[2]~input_o\ & \inst|inst2|LessThan0~0_combout\)) # (!\inst|inst4|cnt\(2) & ((\ref_R[2]~input_o\) # (\inst|inst2|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|cnt\(2),
	datac => \ref_R[2]~input_o\,
	datad => \inst|inst2|LessThan0~0_combout\,
	combout => \inst|inst2|LessThan0~1_combout\);

-- Location: LCCOMB_X8_Y2_N24
\inst|inst2|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|LessThan0~2_combout\ = (\ref_R[3]~input_o\ & ((\inst|inst2|LessThan0~1_combout\) # (!\inst|inst4|cnt\(3)))) # (!\ref_R[3]~input_o\ & (!\inst|inst4|cnt\(3) & \inst|inst2|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ref_R[3]~input_o\,
	datac => \inst|inst4|cnt\(3),
	datad => \inst|inst2|LessThan0~1_combout\,
	combout => \inst|inst2|LessThan0~2_combout\);

-- Location: LCCOMB_X8_Y2_N30
\inst|inst2|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|LessThan0~3_combout\ = (\ref_R[4]~input_o\ & ((\inst|inst2|LessThan0~2_combout\) # (!\inst|inst4|cnt\(4)))) # (!\ref_R[4]~input_o\ & (!\inst|inst4|cnt\(4) & \inst|inst2|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ref_R[4]~input_o\,
	datac => \inst|inst4|cnt\(4),
	datad => \inst|inst2|LessThan0~2_combout\,
	combout => \inst|inst2|LessThan0~3_combout\);

-- Location: FF_X8_Y2_N29
\inst|inst2|PWM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_12_5M~inputclkctrl_outclk\,
	asdata => \inst|inst2|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|PWM~q\);

-- Location: FF_X8_Y2_N31
\inst|inst3|PWM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_12_5M~inputclkctrl_outclk\,
	d => \inst|inst2|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|PWM~q\);

-- Location: IOIBUF_X0_Y18_N22
\l[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_l(0),
	o => \l[0]~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\r[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r(1),
	o => \r[1]~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\l[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_l(1),
	o => \l[1]~input_o\);

-- Location: IOIBUF_X0_Y19_N15
\r[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r(0),
	o => \r[0]~input_o\);

-- Location: LCCOMB_X1_Y21_N0
\inst1|moto_sy[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|moto_sy[3]~0_combout\ = (!\l[0]~input_o\ & ((\r[1]~input_o\ & ((!\r[0]~input_o\))) # (!\r[1]~input_o\ & (\l[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l[0]~input_o\,
	datab => \r[1]~input_o\,
	datac => \l[1]~input_o\,
	datad => \r[0]~input_o\,
	combout => \inst1|moto_sy[3]~0_combout\);

-- Location: LCCOMB_X1_Y21_N14
\inst1|moto_sy[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|moto_sy[2]~1_combout\ = (\l[0]~input_o\ & (\r[1]~input_o\ & (!\l[1]~input_o\ & !\r[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l[0]~input_o\,
	datab => \r[1]~input_o\,
	datac => \l[1]~input_o\,
	datad => \r[0]~input_o\,
	combout => \inst1|moto_sy[2]~1_combout\);

-- Location: LCCOMB_X1_Y21_N20
\inst1|moto_sz[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|moto_sz[3]~0_combout\ = (!\r[0]~input_o\ & ((\l[1]~input_o\ & (!\l[0]~input_o\)) # (!\l[1]~input_o\ & ((\r[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l[0]~input_o\,
	datab => \r[1]~input_o\,
	datac => \l[1]~input_o\,
	datad => \r[0]~input_o\,
	combout => \inst1|moto_sz[3]~0_combout\);

-- Location: LCCOMB_X1_Y21_N2
\inst1|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~0_combout\ = (!\l[0]~input_o\ & (!\r[1]~input_o\ & (\l[1]~input_o\ & \r[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l[0]~input_o\,
	datab => \r[1]~input_o\,
	datac => \l[1]~input_o\,
	datad => \r[0]~input_o\,
	combout => \inst1|process_0~0_combout\);

ww_pwmh_l <= \pwmh_l~output_o\;

ww_pwmq_l <= \pwmq_l~output_o\;

ww_pwmq_r <= \pwmq_r~output_o\;

ww_pwmh_r <= \pwmh_r~output_o\;

ww_motor_sy(3) <= \motor_sy[3]~output_o\;

ww_motor_sy(2) <= \motor_sy[2]~output_o\;

ww_motor_sy(1) <= \motor_sy[1]~output_o\;

ww_motor_sy(0) <= \motor_sy[0]~output_o\;

ww_motor_sz(3) <= \motor_sz[3]~output_o\;

ww_motor_sz(2) <= \motor_sz[2]~output_o\;

ww_motor_sz(1) <= \motor_sz[1]~output_o\;

ww_motor_sz(0) <= \motor_sz[0]~output_o\;
END structure;


