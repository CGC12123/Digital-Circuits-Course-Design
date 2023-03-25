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

-- DATE "12/14/2022 20:52:24"

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

ENTITY 	send IS
    PORT (
	clk1 : IN std_logic;
	clk2 : IN std_logic;
	rest : IN std_logic;
	key_temp : IN std_logic;
	x_in : IN std_logic_vector(7 DOWNTO 0);
	x_out : OUT std_logic_vector(7 DOWNTO 0);
	q : OUT std_logic_vector(3 DOWNTO 0);
	y : OUT std_logic;
	x_tiaozhi : OUT std_logic
	);
END send;

-- Design Ports Information
-- x_out[0]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_out[1]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_out[2]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_out[3]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_out[4]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_out[5]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_out[6]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_out[7]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[0]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[3]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_tiaozhi	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[0]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[1]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[2]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[3]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[4]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[5]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[6]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[7]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk2	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_temp	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk1	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF send IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk1 : std_logic;
SIGNAL ww_clk2 : std_logic;
SIGNAL ww_rest : std_logic;
SIGNAL ww_key_temp : std_logic;
SIGNAL ww_x_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_x_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_q : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_y : std_logic;
SIGNAL ww_x_tiaozhi : std_logic;
SIGNAL \y_temp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \process_1~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk1~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \x_out[0]~output_o\ : std_logic;
SIGNAL \x_out[1]~output_o\ : std_logic;
SIGNAL \x_out[2]~output_o\ : std_logic;
SIGNAL \x_out[3]~output_o\ : std_logic;
SIGNAL \x_out[4]~output_o\ : std_logic;
SIGNAL \x_out[5]~output_o\ : std_logic;
SIGNAL \x_out[6]~output_o\ : std_logic;
SIGNAL \x_out[7]~output_o\ : std_logic;
SIGNAL \q[0]~output_o\ : std_logic;
SIGNAL \q[1]~output_o\ : std_logic;
SIGNAL \q[2]~output_o\ : std_logic;
SIGNAL \q[3]~output_o\ : std_logic;
SIGNAL \y~output_o\ : std_logic;
SIGNAL \x_tiaozhi~output_o\ : std_logic;
SIGNAL \clk1~input_o\ : std_logic;
SIGNAL \rest~input_o\ : std_logic;
SIGNAL \sreg0.s0~0_combout\ : std_logic;
SIGNAL \key_temp~input_o\ : std_logic;
SIGNAL \sreg0.s0~q\ : std_logic;
SIGNAL \process_1~0_combout\ : std_logic;
SIGNAL \x_in[0]~input_o\ : std_logic;
SIGNAL \process_1~0clkctrl_outclk\ : std_logic;
SIGNAL \x_data[0]~1_combout\ : std_logic;
SIGNAL \clk1~inputclkctrl_outclk\ : std_logic;
SIGNAL \x_in[6]~input_o\ : std_logic;
SIGNAL \x_data[6]~25_combout\ : std_logic;
SIGNAL \x_in[5]~input_o\ : std_logic;
SIGNAL \x_data[5]~21_combout\ : std_logic;
SIGNAL \x_in[4]~input_o\ : std_logic;
SIGNAL \x_data[4]~17_combout\ : std_logic;
SIGNAL \x_in[3]~input_o\ : std_logic;
SIGNAL \x_data[3]~13_combout\ : std_logic;
SIGNAL \x_in[2]~input_o\ : std_logic;
SIGNAL \x_data[2]~9_combout\ : std_logic;
SIGNAL \x_in[1]~input_o\ : std_logic;
SIGNAL \x_data[1]~5_combout\ : std_logic;
SIGNAL \x_data[1]~7_combout\ : std_logic;
SIGNAL \x_data[1]~_emulated_q\ : std_logic;
SIGNAL \x_data[1]~6_combout\ : std_logic;
SIGNAL \x_data[2]~11_combout\ : std_logic;
SIGNAL \x_data[2]~_emulated_q\ : std_logic;
SIGNAL \x_data[2]~10_combout\ : std_logic;
SIGNAL \x_data[3]~15_combout\ : std_logic;
SIGNAL \x_data[3]~_emulated_q\ : std_logic;
SIGNAL \x_data[3]~14_combout\ : std_logic;
SIGNAL \x_data[4]~19_combout\ : std_logic;
SIGNAL \x_data[4]~_emulated_q\ : std_logic;
SIGNAL \x_data[4]~18_combout\ : std_logic;
SIGNAL \x_data[5]~23_combout\ : std_logic;
SIGNAL \x_data[5]~_emulated_q\ : std_logic;
SIGNAL \x_data[5]~22_combout\ : std_logic;
SIGNAL \x_data[6]~27_combout\ : std_logic;
SIGNAL \x_data[6]~_emulated_q\ : std_logic;
SIGNAL \x_data[6]~26_combout\ : std_logic;
SIGNAL \x~feeder_combout\ : std_logic;
SIGNAL \x~q\ : std_logic;
SIGNAL \q_data~1_combout\ : std_logic;
SIGNAL \q_data~2_combout\ : std_logic;
SIGNAL \q_data~3_combout\ : std_logic;
SIGNAL \q_data~0_combout\ : std_logic;
SIGNAL \sreg0~28_combout\ : std_logic;
SIGNAL \sreg0.s2~q\ : std_logic;
SIGNAL \sreg0~25_combout\ : std_logic;
SIGNAL \sreg0.s4~q\ : std_logic;
SIGNAL \sreg0~22_combout\ : std_logic;
SIGNAL \sreg0.s5~q\ : std_logic;
SIGNAL \sreg0~23_combout\ : std_logic;
SIGNAL \sreg0.s6~q\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \sreg0.s1~q\ : std_logic;
SIGNAL \sreg0~21_combout\ : std_logic;
SIGNAL \sreg0.s7~q\ : std_logic;
SIGNAL \sreg0~27_combout\ : std_logic;
SIGNAL \sreg0.s8~q\ : std_logic;
SIGNAL \sreg0~20_combout\ : std_logic;
SIGNAL \sreg0.s9~q\ : std_logic;
SIGNAL \sreg0~24_combout\ : std_logic;
SIGNAL \sreg0.s10~q\ : std_logic;
SIGNAL \sreg0~19_combout\ : std_logic;
SIGNAL \sreg0.s11~q\ : std_logic;
SIGNAL \sreg0~26_combout\ : std_logic;
SIGNAL \sreg0.s12~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \y_temp~q\ : std_logic;
SIGNAL \y_temp~clkctrl_outclk\ : std_logic;
SIGNAL \x_data[0]~_emulated_q\ : std_logic;
SIGNAL \x_data[0]~2_combout\ : std_logic;
SIGNAL \x_in[7]~input_o\ : std_logic;
SIGNAL \x_data[7]~29_combout\ : std_logic;
SIGNAL \x_data[7]~31_combout\ : std_logic;
SIGNAL \x_data[7]~_emulated_q\ : std_logic;
SIGNAL \x_data[7]~30_combout\ : std_logic;
SIGNAL \WideOr18~0_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \q[0]~reg0_q\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \Selector15~1_combout\ : std_logic;
SIGNAL \q[1]~reg0_q\ : std_logic;
SIGNAL \sreg0.s13~q\ : std_logic;
SIGNAL \sreg0~18_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Selector14~1_combout\ : std_logic;
SIGNAL \q[2]~reg0feeder_combout\ : std_logic;
SIGNAL \q[2]~reg0_q\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Selector13~1_combout\ : std_logic;
SIGNAL \q[3]~reg0_q\ : std_logic;
SIGNAL \clk2~input_o\ : std_logic;
SIGNAL \x_tiaozhi~0_combout\ : std_logic;
SIGNAL q_data : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_process_1~0clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_y_temp~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_process_1~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk1 <= clk1;
ww_clk2 <= clk2;
ww_rest <= rest;
ww_key_temp <= key_temp;
ww_x_in <= x_in;
x_out <= ww_x_out;
q <= ww_q;
y <= ww_y;
x_tiaozhi <= ww_x_tiaozhi;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\y_temp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \y_temp~q\);

\process_1~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \process_1~0_combout\);

\clk1~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk1~input_o\);
\ALT_INV_process_1~0clkctrl_outclk\ <= NOT \process_1~0clkctrl_outclk\;
\ALT_INV_y_temp~clkctrl_outclk\ <= NOT \y_temp~clkctrl_outclk\;
\ALT_INV_process_1~0_combout\ <= NOT \process_1~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X5_Y24_N9
\x_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x_data[0]~2_combout\,
	devoe => ww_devoe,
	o => \x_out[0]~output_o\);

-- Location: IOOBUF_X5_Y24_N2
\x_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x_data[1]~6_combout\,
	devoe => ww_devoe,
	o => \x_out[1]~output_o\);

-- Location: IOOBUF_X3_Y24_N16
\x_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x_data[2]~10_combout\,
	devoe => ww_devoe,
	o => \x_out[2]~output_o\);

-- Location: IOOBUF_X3_Y24_N23
\x_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x_data[3]~14_combout\,
	devoe => ww_devoe,
	o => \x_out[3]~output_o\);

-- Location: IOOBUF_X3_Y24_N2
\x_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x_data[4]~18_combout\,
	devoe => ww_devoe,
	o => \x_out[4]~output_o\);

-- Location: IOOBUF_X5_Y24_N16
\x_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x_data[5]~22_combout\,
	devoe => ww_devoe,
	o => \x_out[5]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\x_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x_data[6]~26_combout\,
	devoe => ww_devoe,
	o => \x_out[6]~output_o\);

-- Location: IOOBUF_X9_Y24_N23
\x_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x_data[7]~30_combout\,
	devoe => ww_devoe,
	o => \x_out[7]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\q[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[0]~reg0_q\,
	devoe => ww_devoe,
	o => \q[0]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\q[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[1]~reg0_q\,
	devoe => ww_devoe,
	o => \q[1]~output_o\);

-- Location: IOOBUF_X11_Y24_N2
\q[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[2]~reg0_q\,
	devoe => ww_devoe,
	o => \q[2]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\q[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[3]~reg0_q\,
	devoe => ww_devoe,
	o => \q[3]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\y~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y_temp~q\,
	devoe => ww_devoe,
	o => \y~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\x_tiaozhi~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x_tiaozhi~0_combout\,
	devoe => ww_devoe,
	o => \x_tiaozhi~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk1,
	o => \clk1~input_o\);

-- Location: IOIBUF_X11_Y24_N22
\rest~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rest,
	o => \rest~input_o\);

-- Location: LCCOMB_X8_Y22_N22
\sreg0.s0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sreg0.s0~0_combout\ = !\rest~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rest~input_o\,
	combout => \sreg0.s0~0_combout\);

-- Location: IOIBUF_X9_Y24_N15
\key_temp~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_temp,
	o => \key_temp~input_o\);

-- Location: FF_X8_Y22_N23
\sreg0.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	d => \sreg0.s0~0_combout\,
	clrn => \key_temp~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sreg0.s0~q\);

-- Location: LCCOMB_X8_Y22_N18
\process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_1~0_combout\ = (!\sreg0.s0~q\ & \key_temp~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sreg0.s0~q\,
	datad => \key_temp~input_o\,
	combout => \process_1~0_combout\);

-- Location: IOIBUF_X0_Y21_N8
\x_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(0),
	o => \x_in[0]~input_o\);

-- Location: CLKCTRL_G0
\process_1~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \process_1~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \process_1~0clkctrl_outclk\);

-- Location: LCCOMB_X7_Y22_N4
\x_data[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_data[0]~1_combout\ = (GLOBAL(\process_1~0clkctrl_outclk\) & (\x_in[0]~input_o\)) # (!GLOBAL(\process_1~0clkctrl_outclk\) & ((\x_data[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x_in[0]~input_o\,
	datac => \x_data[0]~1_combout\,
	datad => \process_1~0clkctrl_outclk\,
	combout => \x_data[0]~1_combout\);

-- Location: CLKCTRL_G2
\clk1~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk1~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk1~inputclkctrl_outclk\);

-- Location: IOIBUF_X9_Y24_N8
\x_in[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(6),
	o => \x_in[6]~input_o\);

-- Location: LCCOMB_X8_Y22_N4
\x_data[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_data[6]~25_combout\ = (GLOBAL(\process_1~0clkctrl_outclk\) & ((\x_in[6]~input_o\))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & (\x_data[6]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x_data[6]~25_combout\,
	datac => \x_in[6]~input_o\,
	datad => \process_1~0clkctrl_outclk\,
	combout => \x_data[6]~25_combout\);

-- Location: IOIBUF_X11_Y24_N8
\x_in[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(5),
	o => \x_in[5]~input_o\);

-- Location: LCCOMB_X8_Y22_N26
\x_data[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_data[5]~21_combout\ = (GLOBAL(\process_1~0clkctrl_outclk\) & (\x_in[5]~input_o\)) # (!GLOBAL(\process_1~0clkctrl_outclk\) & ((\x_data[5]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x_in[5]~input_o\,
	datac => \x_data[5]~21_combout\,
	datad => \process_1~0clkctrl_outclk\,
	combout => \x_data[5]~21_combout\);

-- Location: IOIBUF_X5_Y24_N22
\x_in[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(4),
	o => \x_in[4]~input_o\);

-- Location: LCCOMB_X8_Y22_N8
\x_data[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_data[4]~17_combout\ = (GLOBAL(\process_1~0clkctrl_outclk\) & (\x_in[4]~input_o\)) # (!GLOBAL(\process_1~0clkctrl_outclk\) & ((\x_data[4]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_in[4]~input_o\,
	datac => \x_data[4]~17_combout\,
	datad => \process_1~0clkctrl_outclk\,
	combout => \x_data[4]~17_combout\);

-- Location: IOIBUF_X7_Y24_N15
\x_in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(3),
	o => \x_in[3]~input_o\);

-- Location: LCCOMB_X7_Y22_N22
\x_data[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_data[3]~13_combout\ = (GLOBAL(\process_1~0clkctrl_outclk\) & (\x_in[3]~input_o\)) # (!GLOBAL(\process_1~0clkctrl_outclk\) & ((\x_data[3]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x_in[3]~input_o\,
	datac => \x_data[3]~13_combout\,
	datad => \process_1~0clkctrl_outclk\,
	combout => \x_data[3]~13_combout\);

-- Location: IOIBUF_X7_Y24_N1
\x_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(2),
	o => \x_in[2]~input_o\);

-- Location: LCCOMB_X7_Y22_N24
\x_data[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_data[2]~9_combout\ = (GLOBAL(\process_1~0clkctrl_outclk\) & (\x_in[2]~input_o\)) # (!GLOBAL(\process_1~0clkctrl_outclk\) & ((\x_data[2]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_in[2]~input_o\,
	datab => \x_data[2]~9_combout\,
	datad => \process_1~0clkctrl_outclk\,
	combout => \x_data[2]~9_combout\);

-- Location: IOIBUF_X3_Y24_N8
\x_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(1),
	o => \x_in[1]~input_o\);

-- Location: LCCOMB_X7_Y22_N26
\x_data[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_data[1]~5_combout\ = (GLOBAL(\process_1~0clkctrl_outclk\) & (\x_in[1]~input_o\)) # (!GLOBAL(\process_1~0clkctrl_outclk\) & ((\x_data[1]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x_in[1]~input_o\,
	datac => \x_data[1]~5_combout\,
	datad => \process_1~0clkctrl_outclk\,
	combout => \x_data[1]~5_combout\);

-- Location: LCCOMB_X7_Y22_N10
\x_data[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_data[1]~7_combout\ = \x_data[1]~5_combout\ $ (\x_data[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_data[1]~5_combout\,
	datac => \x_data[0]~2_combout\,
	combout => \x_data[1]~7_combout\);

-- Location: FF_X7_Y22_N11
\x_data[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_y_temp~clkctrl_outclk\,
	d => \x_data[1]~7_combout\,
	clrn => \ALT_INV_process_1~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_data[1]~_emulated_q\);

-- Location: LCCOMB_X7_Y22_N0
\x_data[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_data[1]~6_combout\ = (\process_1~0_combout\ & (((\x_in[1]~input_o\)))) # (!\process_1~0_combout\ & (\x_data[1]~5_combout\ $ (((\x_data[1]~_emulated_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_data[1]~5_combout\,
	datab => \x_in[1]~input_o\,
	datac => \process_1~0_combout\,
	datad => \x_data[1]~_emulated_q\,
	combout => \x_data[1]~6_combout\);

-- Location: LCCOMB_X7_Y22_N6
\x_data[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_data[2]~11_combout\ = \x_data[1]~6_combout\ $ (\x_data[2]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x_data[1]~6_combout\,
	datad => \x_data[2]~9_combout\,
	combout => \x_data[2]~11_combout\);

-- Location: FF_X7_Y22_N7
\x_data[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_y_temp~clkctrl_outclk\,
	d => \x_data[2]~11_combout\,
	clrn => \ALT_INV_process_1~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_data[2]~_emulated_q\);

-- Location: LCCOMB_X7_Y22_N20
\x_data[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_data[2]~10_combout\ = (\process_1~0_combout\ & (\x_in[2]~input_o\)) # (!\process_1~0_combout\ & ((\x_data[2]~9_combout\ $ (\x_data[2]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_in[2]~input_o\,
	datab => \x_data[2]~9_combout\,
	datac => \process_1~0_combout\,
	datad => \x_data[2]~_emulated_q\,
	combout => \x_data[2]~10_combout\);

-- Location: LCCOMB_X7_Y22_N18
\x_data[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_data[3]~15_combout\ = \x_data[2]~10_combout\ $ (\x_data[3]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_data[2]~10_combout\,
	datac => \x_data[3]~13_combout\,
	combout => \x_data[3]~15_combout\);

-- Location: FF_X7_Y22_N19
\x_data[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_y_temp~clkctrl_outclk\,
	d => \x_data[3]~15_combout\,
	clrn => \ALT_INV_process_1~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_data[3]~_emulated_q\);

-- Location: LCCOMB_X7_Y22_N8
\x_data[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_data[3]~14_combout\ = (\process_1~0_combout\ & (((\x_in[3]~input_o\)))) # (!\process_1~0_combout\ & (\x_data[3]~13_combout\ $ (((\x_data[3]~_emulated_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_data[3]~13_combout\,
	datab => \x_in[3]~input_o\,
	datac => \process_1~0_combout\,
	datad => \x_data[3]~_emulated_q\,
	combout => \x_data[3]~14_combout\);

-- Location: LCCOMB_X7_Y22_N14
\x_data[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_data[4]~19_combout\ = \x_data[4]~17_combout\ $ (\x_data[3]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x_data[4]~17_combout\,
	datac => \x_data[3]~14_combout\,
	combout => \x_data[4]~19_combout\);

-- Location: FF_X7_Y22_N15
\x_data[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_y_temp~clkctrl_outclk\,
	d => \x_data[4]~19_combout\,
	clrn => \ALT_INV_process_1~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_data[4]~_emulated_q\);

-- Location: LCCOMB_X8_Y22_N24
\x_data[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_data[4]~18_combout\ = (\process_1~0_combout\ & (((\x_in[4]~input_o\)))) # (!\process_1~0_combout\ & (\x_data[4]~17_combout\ $ (((\x_data[4]~_emulated_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~0_combout\,
	datab => \x_data[4]~17_combout\,
	datac => \x_in[4]~input_o\,
	datad => \x_data[4]~_emulated_q\,
	combout => \x_data[4]~18_combout\);

-- Location: LCCOMB_X8_Y22_N20
\x_data[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_data[5]~23_combout\ = \x_data[5]~21_combout\ $ (\x_data[4]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x_data[5]~21_combout\,
	datad => \x_data[4]~18_combout\,
	combout => \x_data[5]~23_combout\);

-- Location: FF_X8_Y22_N21
\x_data[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_y_temp~clkctrl_outclk\,
	d => \x_data[5]~23_combout\,
	clrn => \ALT_INV_process_1~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_data[5]~_emulated_q\);

-- Location: LCCOMB_X8_Y22_N30
\x_data[5]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_data[5]~22_combout\ = (\process_1~0_combout\ & (((\x_in[5]~input_o\)))) # (!\process_1~0_combout\ & (\x_data[5]~21_combout\ $ (((\x_data[5]~_emulated_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_data[5]~21_combout\,
	datab => \process_1~0_combout\,
	datac => \x_in[5]~input_o\,
	datad => \x_data[5]~_emulated_q\,
	combout => \x_data[5]~22_combout\);

-- Location: LCCOMB_X8_Y22_N10
\x_data[6]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_data[6]~27_combout\ = \x_data[6]~25_combout\ $ (\x_data[5]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x_data[6]~25_combout\,
	datac => \x_data[5]~22_combout\,
	combout => \x_data[6]~27_combout\);

-- Location: FF_X8_Y22_N11
\x_data[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_y_temp~clkctrl_outclk\,
	d => \x_data[6]~27_combout\,
	clrn => \ALT_INV_process_1~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_data[6]~_emulated_q\);

-- Location: LCCOMB_X8_Y22_N6
\x_data[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_data[6]~26_combout\ = (\process_1~0_combout\ & (\x_in[6]~input_o\)) # (!\process_1~0_combout\ & ((\x_data[6]~25_combout\ $ (\x_data[6]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_in[6]~input_o\,
	datab => \process_1~0_combout\,
	datac => \x_data[6]~25_combout\,
	datad => \x_data[6]~_emulated_q\,
	combout => \x_data[6]~26_combout\);

-- Location: LCCOMB_X10_Y22_N28
\x~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \x~feeder_combout\ = \x_data[6]~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x_data[6]~26_combout\,
	combout => \x~feeder_combout\);

-- Location: FF_X10_Y22_N29
x : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_y_temp~clkctrl_outclk\,
	d => \x~feeder_combout\,
	ena => \ALT_INV_process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x~q\);

-- Location: LCCOMB_X9_Y22_N18
\q_data~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \q_data~1_combout\ = (!q_data(3) & (q_data(2) $ (((q_data(1) & q_data(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q_data(1),
	datab => q_data(3),
	datac => q_data(2),
	datad => q_data(0),
	combout => \q_data~1_combout\);

-- Location: FF_X9_Y22_N19
\q_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_y_temp~clkctrl_outclk\,
	d => \q_data~1_combout\,
	ena => \ALT_INV_process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q_data(2));

-- Location: LCCOMB_X9_Y22_N28
\q_data~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \q_data~2_combout\ = (!q_data(0) & (((!q_data(1) & !q_data(2))) # (!q_data(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q_data(1),
	datab => q_data(2),
	datac => q_data(0),
	datad => q_data(3),
	combout => \q_data~2_combout\);

-- Location: FF_X9_Y22_N29
\q_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_y_temp~clkctrl_outclk\,
	d => \q_data~2_combout\,
	ena => \ALT_INV_process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q_data(0));

-- Location: LCCOMB_X9_Y22_N30
\q_data~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \q_data~3_combout\ = (!q_data(3) & (q_data(1) $ (q_data(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => q_data(3),
	datac => q_data(1),
	datad => q_data(0),
	combout => \q_data~3_combout\);

-- Location: FF_X9_Y22_N31
\q_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_y_temp~clkctrl_outclk\,
	d => \q_data~3_combout\,
	ena => \ALT_INV_process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q_data(1));

-- Location: LCCOMB_X9_Y22_N14
\q_data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \q_data~0_combout\ = (q_data(1) & (q_data(0) & (!q_data(3) & q_data(2)))) # (!q_data(1) & (!q_data(0) & (q_data(3) & !q_data(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q_data(1),
	datab => q_data(0),
	datac => q_data(3),
	datad => q_data(2),
	combout => \q_data~0_combout\);

-- Location: FF_X9_Y22_N15
\q_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_y_temp~clkctrl_outclk\,
	d => \q_data~0_combout\,
	ena => \ALT_INV_process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q_data(3));

-- Location: LCCOMB_X9_Y22_N12
\sreg0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \sreg0~28_combout\ = (\sreg0.s1~q\ & (!\rest~input_o\ & (\x~q\ & !q_data(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sreg0.s1~q\,
	datab => \rest~input_o\,
	datac => \x~q\,
	datad => q_data(3),
	combout => \sreg0~28_combout\);

-- Location: FF_X9_Y22_N13
\sreg0.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \sreg0~28_combout\,
	clrn => \key_temp~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sreg0.s2~q\);

-- Location: LCCOMB_X10_Y22_N2
\sreg0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \sreg0~25_combout\ = (!q_data(3) & (!\rest~input_o\ & (!\x~q\ & \sreg0.s1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q_data(3),
	datab => \rest~input_o\,
	datac => \x~q\,
	datad => \sreg0.s1~q\,
	combout => \sreg0~25_combout\);

-- Location: FF_X10_Y22_N3
\sreg0.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \sreg0~25_combout\,
	clrn => \key_temp~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sreg0.s4~q\);

-- Location: LCCOMB_X10_Y22_N26
\sreg0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sreg0~22_combout\ = (\sreg0.s4~q\ & !\rest~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sreg0.s4~q\,
	datad => \rest~input_o\,
	combout => \sreg0~22_combout\);

-- Location: FF_X10_Y22_N27
\sreg0.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \sreg0~22_combout\,
	clrn => \key_temp~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sreg0.s5~q\);

-- Location: LCCOMB_X9_Y22_N20
\sreg0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \sreg0~23_combout\ = (!\rest~input_o\ & \sreg0.s5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rest~input_o\,
	datad => \sreg0.s5~q\,
	combout => \sreg0~23_combout\);

-- Location: FF_X9_Y22_N21
\sreg0.s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \sreg0~23_combout\,
	clrn => \key_temp~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sreg0.s6~q\);

-- Location: LCCOMB_X9_Y22_N22
\Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\sreg0.s2~q\) # ((\sreg0.s6~q\) # (!\sreg0.s0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sreg0.s2~q\,
	datab => \sreg0.s6~q\,
	datad => \sreg0.s0~q\,
	combout => \Selector12~0_combout\);

-- Location: FF_X9_Y22_N17
\sreg0.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \Selector12~0_combout\,
	clrn => \key_temp~input_o\,
	sclr => \rest~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sreg0.s1~q\);

-- Location: LCCOMB_X10_Y22_N18
\sreg0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \sreg0~21_combout\ = (q_data(3) & (!\rest~input_o\ & \sreg0.s1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q_data(3),
	datab => \rest~input_o\,
	datac => \sreg0.s1~q\,
	combout => \sreg0~21_combout\);

-- Location: FF_X10_Y22_N19
\sreg0.s7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \sreg0~21_combout\,
	clrn => \key_temp~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sreg0.s7~q\);

-- Location: LCCOMB_X10_Y22_N12
\sreg0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \sreg0~27_combout\ = (\sreg0.s7~q\ & !\rest~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sreg0.s7~q\,
	datad => \rest~input_o\,
	combout => \sreg0~27_combout\);

-- Location: FF_X10_Y22_N13
\sreg0.s8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \sreg0~27_combout\,
	clrn => \key_temp~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sreg0.s8~q\);

-- Location: LCCOMB_X10_Y22_N8
\sreg0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sreg0~20_combout\ = (!\rest~input_o\ & \sreg0.s8~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rest~input_o\,
	datad => \sreg0.s8~q\,
	combout => \sreg0~20_combout\);

-- Location: FF_X10_Y22_N9
\sreg0.s9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \sreg0~20_combout\,
	clrn => \key_temp~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sreg0.s9~q\);

-- Location: LCCOMB_X9_Y22_N24
\sreg0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \sreg0~24_combout\ = (!\rest~input_o\ & \sreg0.s9~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rest~input_o\,
	datac => \sreg0.s9~q\,
	combout => \sreg0~24_combout\);

-- Location: FF_X9_Y22_N25
\sreg0.s10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \sreg0~24_combout\,
	clrn => \key_temp~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sreg0.s10~q\);

-- Location: LCCOMB_X10_Y22_N30
\sreg0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sreg0~19_combout\ = (\sreg0.s10~q\ & !\rest~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sreg0.s10~q\,
	datad => \rest~input_o\,
	combout => \sreg0~19_combout\);

-- Location: FF_X10_Y22_N31
\sreg0.s11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \sreg0~19_combout\,
	clrn => \key_temp~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sreg0.s11~q\);

-- Location: LCCOMB_X10_Y22_N22
\sreg0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \sreg0~26_combout\ = (\sreg0.s11~q\ & !\rest~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sreg0.s11~q\,
	datad => \rest~input_o\,
	combout => \sreg0~26_combout\);

-- Location: FF_X10_Y22_N23
\sreg0.s12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \sreg0~26_combout\,
	clrn => \key_temp~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sreg0.s12~q\);

-- Location: LCCOMB_X10_Y22_N24
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\sreg0.s1~q\) # (\sreg0.s12~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sreg0.s1~q\,
	datac => \sreg0.s12~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X10_Y22_N25
y_temp : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	clrn => \key_temp~input_o\,
	sclr => \rest~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_temp~q\);

-- Location: CLKCTRL_G4
\y_temp~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \y_temp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \y_temp~clkctrl_outclk\);

-- Location: FF_X7_Y22_N17
\x_data[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_y_temp~clkctrl_outclk\,
	asdata => \x_data[0]~1_combout\,
	clrn => \ALT_INV_process_1~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_data[0]~_emulated_q\);

-- Location: LCCOMB_X7_Y22_N16
\x_data[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_data[0]~2_combout\ = (\process_1~0_combout\ & (((\x_in[0]~input_o\)))) # (!\process_1~0_combout\ & (\x_data[0]~1_combout\ $ ((\x_data[0]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~0_combout\,
	datab => \x_data[0]~1_combout\,
	datac => \x_data[0]~_emulated_q\,
	datad => \x_in[0]~input_o\,
	combout => \x_data[0]~2_combout\);

-- Location: IOIBUF_X0_Y22_N1
\x_in[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(7),
	o => \x_in[7]~input_o\);

-- Location: LCCOMB_X8_Y22_N14
\x_data[7]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_data[7]~29_combout\ = (GLOBAL(\process_1~0clkctrl_outclk\) & (\x_in[7]~input_o\)) # (!GLOBAL(\process_1~0clkctrl_outclk\) & ((\x_data[7]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x_in[7]~input_o\,
	datac => \x_data[7]~29_combout\,
	datad => \process_1~0clkctrl_outclk\,
	combout => \x_data[7]~29_combout\);

-- Location: LCCOMB_X8_Y22_N28
\x_data[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_data[7]~31_combout\ = \x_data[7]~29_combout\ $ (\x_data[6]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x_data[7]~29_combout\,
	datac => \x_data[6]~26_combout\,
	combout => \x_data[7]~31_combout\);

-- Location: FF_X8_Y22_N29
\x_data[7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_y_temp~clkctrl_outclk\,
	d => \x_data[7]~31_combout\,
	clrn => \ALT_INV_process_1~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_data[7]~_emulated_q\);

-- Location: LCCOMB_X8_Y22_N16
\x_data[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_data[7]~30_combout\ = (\process_1~0_combout\ & (\x_in[7]~input_o\)) # (!\process_1~0_combout\ & ((\x_data[7]~29_combout\ $ (\x_data[7]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~0_combout\,
	datab => \x_in[7]~input_o\,
	datac => \x_data[7]~29_combout\,
	datad => \x_data[7]~_emulated_q\,
	combout => \x_data[7]~30_combout\);

-- Location: LCCOMB_X10_Y22_N20
\WideOr18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr18~0_combout\ = (!\sreg0.s5~q\ & (!\sreg0.s7~q\ & (!\sreg0.s11~q\ & !\sreg0.s9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sreg0.s5~q\,
	datab => \sreg0.s7~q\,
	datac => \sreg0.s11~q\,
	datad => \sreg0.s9~q\,
	combout => \WideOr18~0_combout\);

-- Location: LCCOMB_X11_Y22_N4
\Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\sreg0.s1~q\ & (q_data(3))) # (!\sreg0.s1~q\ & ((\WideOr18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q_data(3),
	datab => \sreg0.s1~q\,
	datad => \WideOr18~0_combout\,
	combout => \Selector16~0_combout\);

-- Location: FF_X11_Y22_N5
\q[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \Selector16~0_combout\,
	asdata => VCC,
	clrn => \key_temp~input_o\,
	sload => \rest~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[0]~reg0_q\);

-- Location: LCCOMB_X9_Y22_N2
\Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\sreg0.s6~q\) # ((\sreg0.s1~q\ & ((q_data(3)) # (\x~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sreg0.s1~q\,
	datab => \sreg0.s6~q\,
	datac => q_data(3),
	datad => \x~q\,
	combout => \Selector15~0_combout\);

-- Location: LCCOMB_X10_Y22_N4
\Selector15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~1_combout\ = (\sreg0.s9~q\) # ((\sreg0.s10~q\) # ((\sreg0.s5~q\) # (\Selector15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sreg0.s9~q\,
	datab => \sreg0.s10~q\,
	datac => \sreg0.s5~q\,
	datad => \Selector15~0_combout\,
	combout => \Selector15~1_combout\);

-- Location: FF_X10_Y22_N5
\q[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \Selector15~1_combout\,
	clrn => \key_temp~input_o\,
	sclr => \rest~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[1]~reg0_q\);

-- Location: FF_X10_Y22_N17
\sreg0.s13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \sreg0~18_combout\,
	clrn => \key_temp~input_o\,
	sclr => \rest~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sreg0.s13~q\);

-- Location: LCCOMB_X10_Y22_N16
\sreg0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sreg0~18_combout\ = (\sreg0.s13~q\) # (\sreg0.s12~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sreg0.s13~q\,
	datad => \sreg0.s12~q\,
	combout => \sreg0~18_combout\);

-- Location: LCCOMB_X10_Y22_N0
\Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\sreg0.s5~q\) # ((\sreg0.s1~q\ & ((q_data(3)) # (!\x~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sreg0.s5~q\,
	datab => \x~q\,
	datac => \sreg0.s1~q\,
	datad => q_data(3),
	combout => \Selector14~0_combout\);

-- Location: LCCOMB_X10_Y22_N14
\Selector14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~1_combout\ = (\sreg0.s11~q\) # ((\sreg0~18_combout\) # ((\sreg0.s4~q\) # (\Selector14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sreg0.s11~q\,
	datab => \sreg0~18_combout\,
	datac => \sreg0.s4~q\,
	datad => \Selector14~0_combout\,
	combout => \Selector14~1_combout\);

-- Location: LCCOMB_X11_Y22_N6
\q[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[2]~reg0feeder_combout\ = \Selector14~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector14~1_combout\,
	combout => \q[2]~reg0feeder_combout\);

-- Location: FF_X11_Y22_N7
\q[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \q[2]~reg0feeder_combout\,
	asdata => VCC,
	clrn => \key_temp~input_o\,
	sload => \rest~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[2]~reg0_q\);

-- Location: LCCOMB_X10_Y22_N10
\Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\sreg0.s8~q\) # ((\sreg0.s13~q\) # ((\sreg0.s11~q\) # (\sreg0.s12~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sreg0.s8~q\,
	datab => \sreg0.s13~q\,
	datac => \sreg0.s11~q\,
	datad => \sreg0.s12~q\,
	combout => \Selector13~0_combout\);

-- Location: LCCOMB_X10_Y22_N6
\Selector13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~1_combout\ = (\sreg0.s9~q\) # ((\sreg0.s7~q\) # ((\Selector13~0_combout\) # (\sreg0.s10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sreg0.s9~q\,
	datab => \sreg0.s7~q\,
	datac => \Selector13~0_combout\,
	datad => \sreg0.s10~q\,
	combout => \Selector13~1_combout\);

-- Location: FF_X10_Y22_N7
\q[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \Selector13~1_combout\,
	clrn => \key_temp~input_o\,
	sclr => \rest~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[3]~reg0_q\);

-- Location: IOIBUF_X0_Y23_N1
\clk2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk2,
	o => \clk2~input_o\);

-- Location: LCCOMB_X8_Y23_N0
\x_tiaozhi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_tiaozhi~0_combout\ = (\y_temp~q\ & \clk2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \y_temp~q\,
	datad => \clk2~input_o\,
	combout => \x_tiaozhi~0_combout\);

ww_x_out(0) <= \x_out[0]~output_o\;

ww_x_out(1) <= \x_out[1]~output_o\;

ww_x_out(2) <= \x_out[2]~output_o\;

ww_x_out(3) <= \x_out[3]~output_o\;

ww_x_out(4) <= \x_out[4]~output_o\;

ww_x_out(5) <= \x_out[5]~output_o\;

ww_x_out(6) <= \x_out[6]~output_o\;

ww_x_out(7) <= \x_out[7]~output_o\;

ww_q(0) <= \q[0]~output_o\;

ww_q(1) <= \q[1]~output_o\;

ww_q(2) <= \q[2]~output_o\;

ww_q(3) <= \q[3]~output_o\;

ww_y <= \y~output_o\;

ww_x_tiaozhi <= \x_tiaozhi~output_o\;
END structure;


