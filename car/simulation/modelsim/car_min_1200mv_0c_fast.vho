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

-- DATE "03/25/2023 12:52:20"

-- 
-- Device: Altera EP4CE6F17C8 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	car IS
    PORT (
	pwmh_l : OUT std_logic;
	clkin : IN std_logic;
	if_start : IN std_logic;
	model_bs : IN std_logic;
	input : IN std_logic_vector(3 DOWNTO 0);
	hongwai_in : IN std_logic;
	pwmq_l : OUT std_logic;
	pwmq_r : OUT std_logic;
	pwmh_r : OUT std_logic;
	show_model : OUT std_logic;
	out_start_test : OUT std_logic;
	y : OUT std_logic;
	tiaozhi : OUT std_logic;
	if_send_stop : OUT std_logic;
	if_send_start : OUT std_logic;
	vcc_for_hw : OUT std_logic;
	gnd_for_hw : OUT std_logic;
	gnd_for_hwout : OUT std_logic;
	motor_sy : OUT std_logic_vector(3 DOWNTO 0);
	motor_sz : OUT std_logic_vector(3 DOWNTO 0);
	out_test : OUT std_logic_vector(3 DOWNTO 0)
	);
END car;

-- Design Ports Information
-- pwmh_l	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwmq_l	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwmq_r	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwmh_r	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- show_model	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_start_test	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiaozhi	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- if_send_stop	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- if_send_start	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vcc_for_hw	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- gnd_for_hw	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- gnd_for_hwout	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- motor_sy[3]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- motor_sy[2]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- motor_sy[1]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- motor_sy[0]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- motor_sz[3]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- motor_sz[2]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- motor_sz[1]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- motor_sz[0]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_test[3]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_test[2]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_test[1]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_test[0]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- model_bs	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[3]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[1]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[0]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clkin	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- if_start	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hongwai_in	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF car IS
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
SIGNAL ww_clkin : std_logic;
SIGNAL ww_if_start : std_logic;
SIGNAL ww_model_bs : std_logic;
SIGNAL ww_input : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_hongwai_in : std_logic;
SIGNAL ww_pwmq_l : std_logic;
SIGNAL ww_pwmq_r : std_logic;
SIGNAL ww_pwmh_r : std_logic;
SIGNAL ww_show_model : std_logic;
SIGNAL ww_out_start_test : std_logic;
SIGNAL ww_y : std_logic;
SIGNAL ww_tiaozhi : std_logic;
SIGNAL ww_if_send_stop : std_logic;
SIGNAL ww_if_send_start : std_logic;
SIGNAL ww_vcc_for_hw : std_logic;
SIGNAL ww_gnd_for_hw : std_logic;
SIGNAL ww_gnd_for_hwout : std_logic;
SIGNAL ww_motor_sy : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_motor_sz : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_out_test : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|U1|clkout~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|U0|clkout~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|U2|clkout~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clkin~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pwmh_l~output_o\ : std_logic;
SIGNAL \pwmq_l~output_o\ : std_logic;
SIGNAL \pwmq_r~output_o\ : std_logic;
SIGNAL \pwmh_r~output_o\ : std_logic;
SIGNAL \show_model~output_o\ : std_logic;
SIGNAL \out_start_test~output_o\ : std_logic;
SIGNAL \y~output_o\ : std_logic;
SIGNAL \tiaozhi~output_o\ : std_logic;
SIGNAL \if_send_stop~output_o\ : std_logic;
SIGNAL \if_send_start~output_o\ : std_logic;
SIGNAL \vcc_for_hw~output_o\ : std_logic;
SIGNAL \gnd_for_hw~output_o\ : std_logic;
SIGNAL \gnd_for_hwout~output_o\ : std_logic;
SIGNAL \motor_sy[3]~output_o\ : std_logic;
SIGNAL \motor_sy[2]~output_o\ : std_logic;
SIGNAL \motor_sy[1]~output_o\ : std_logic;
SIGNAL \motor_sy[0]~output_o\ : std_logic;
SIGNAL \motor_sz[3]~output_o\ : std_logic;
SIGNAL \motor_sz[2]~output_o\ : std_logic;
SIGNAL \motor_sz[1]~output_o\ : std_logic;
SIGNAL \motor_sz[0]~output_o\ : std_logic;
SIGNAL \out_test[3]~output_o\ : std_logic;
SIGNAL \out_test[2]~output_o\ : std_logic;
SIGNAL \out_test[1]~output_o\ : std_logic;
SIGNAL \out_test[0]~output_o\ : std_logic;
SIGNAL \clkin~input_o\ : std_logic;
SIGNAL \clkin~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst3|U0|clkt~q\ : std_logic;
SIGNAL \inst3|U2|cnt[0]~3_combout\ : std_logic;
SIGNAL \inst3|U1|Add0~0_combout\ : std_logic;
SIGNAL \inst3|U0|clkout~feeder_combout\ : std_logic;
SIGNAL \inst3|U0|clkout~q\ : std_logic;
SIGNAL \inst3|U0|clkout~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|inst|inst4|cnt[0]~5_combout\ : std_logic;
SIGNAL \inst2|inst|inst4|cnt[0]~6\ : std_logic;
SIGNAL \inst2|inst|inst4|cnt[1]~8_combout\ : std_logic;
SIGNAL \inst2|inst|inst4|cnt[1]~9\ : std_logic;
SIGNAL \inst2|inst|inst4|cnt[2]~10_combout\ : std_logic;
SIGNAL \inst2|inst|inst4|up~q\ : std_logic;
SIGNAL \inst2|inst|inst4|cnt[2]~11\ : std_logic;
SIGNAL \inst2|inst|inst4|cnt[3]~12_combout\ : std_logic;
SIGNAL \inst2|inst|inst4|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|inst|inst4|cnt~7_combout\ : std_logic;
SIGNAL \inst2|inst|inst4|cnt[3]~13\ : std_logic;
SIGNAL \inst2|inst|inst4|cnt[4]~14_combout\ : std_logic;
SIGNAL \inst3|U2|clkt~q\ : std_logic;
SIGNAL \inst3|U2|cnt[2]~2_combout\ : std_logic;
SIGNAL \inst3|U2|cnt~1_combout\ : std_logic;
SIGNAL \inst3|U2|cnt~0_combout\ : std_logic;
SIGNAL \inst3|U2|Equal0~0_combout\ : std_logic;
SIGNAL \inst3|U2|clkt~0_combout\ : std_logic;
SIGNAL \inst3|U2|clkout~feeder_combout\ : std_logic;
SIGNAL \inst3|U2|clkout~q\ : std_logic;
SIGNAL \inst3|U2|clkout~clkctrl_outclk\ : std_logic;
SIGNAL \input[2]~input_o\ : std_logic;
SIGNAL \input[1]~input_o\ : std_logic;
SIGNAL \input[3]~input_o\ : std_logic;
SIGNAL \input[0]~input_o\ : std_logic;
SIGNAL \inst16|Equal0~0_combout\ : std_logic;
SIGNAL \inst3|U1|Add0~1\ : std_logic;
SIGNAL \inst3|U1|Add0~2_combout\ : std_logic;
SIGNAL \inst3|U1|Add0~3\ : std_logic;
SIGNAL \inst3|U1|Add0~4_combout\ : std_logic;
SIGNAL \inst3|U1|Add0~5\ : std_logic;
SIGNAL \inst3|U1|Add0~6_combout\ : std_logic;
SIGNAL \inst3|U1|Add0~7\ : std_logic;
SIGNAL \inst3|U1|Add0~8_combout\ : std_logic;
SIGNAL \inst3|U1|cnt~3_combout\ : std_logic;
SIGNAL \inst3|U1|Add0~9\ : std_logic;
SIGNAL \inst3|U1|Add0~10_combout\ : std_logic;
SIGNAL \inst3|U1|Equal0~2_combout\ : std_logic;
SIGNAL \inst3|U1|Add0~11\ : std_logic;
SIGNAL \inst3|U1|Add0~12_combout\ : std_logic;
SIGNAL \inst3|U1|Add0~13\ : std_logic;
SIGNAL \inst3|U1|Add0~14_combout\ : std_logic;
SIGNAL \inst3|U1|cnt~2_combout\ : std_logic;
SIGNAL \inst3|U1|Add0~15\ : std_logic;
SIGNAL \inst3|U1|Add0~16_combout\ : std_logic;
SIGNAL \inst3|U1|Add0~17\ : std_logic;
SIGNAL \inst3|U1|Add0~18_combout\ : std_logic;
SIGNAL \inst3|U1|Add0~19\ : std_logic;
SIGNAL \inst3|U1|Add0~20_combout\ : std_logic;
SIGNAL \inst3|U1|Add0~21\ : std_logic;
SIGNAL \inst3|U1|Add0~22_combout\ : std_logic;
SIGNAL \inst3|U1|Add0~23\ : std_logic;
SIGNAL \inst3|U1|Add0~24_combout\ : std_logic;
SIGNAL \inst3|U1|cnt~4_combout\ : std_logic;
SIGNAL \inst3|U1|Add0~25\ : std_logic;
SIGNAL \inst3|U1|Add0~26_combout\ : std_logic;
SIGNAL \inst3|U1|Add0~27\ : std_logic;
SIGNAL \inst3|U1|Add0~28_combout\ : std_logic;
SIGNAL \inst3|U1|cnt~5_combout\ : std_logic;
SIGNAL \inst3|U1|Add0~29\ : std_logic;
SIGNAL \inst3|U1|Add0~30_combout\ : std_logic;
SIGNAL \inst3|U1|cnt~6_combout\ : std_logic;
SIGNAL \inst3|U1|Equal0~4_combout\ : std_logic;
SIGNAL \inst3|U1|Equal0~1_combout\ : std_logic;
SIGNAL \inst3|U1|Equal0~3_combout\ : std_logic;
SIGNAL \inst3|U1|Equal0~5_combout\ : std_logic;
SIGNAL \inst3|U1|Add0~31\ : std_logic;
SIGNAL \inst3|U1|Add0~32_combout\ : std_logic;
SIGNAL \inst3|U1|cnt~0_combout\ : std_logic;
SIGNAL \inst3|U1|Add0~33\ : std_logic;
SIGNAL \inst3|U1|Add0~34_combout\ : std_logic;
SIGNAL \inst3|U1|cnt~1_combout\ : std_logic;
SIGNAL \inst3|U1|Equal0~0_combout\ : std_logic;
SIGNAL \inst3|U1|clkt~q\ : std_logic;
SIGNAL \inst3|U1|clkt~0_combout\ : std_logic;
SIGNAL \inst3|U1|clkout~feeder_combout\ : std_logic;
SIGNAL \inst3|U1|clkout~q\ : std_logic;
SIGNAL \inst3|U1|clkout~clkctrl_outclk\ : std_logic;
SIGNAL \inst16|count_forbs[0]~1_combout\ : std_logic;
SIGNAL \if_start~input_o\ : std_logic;
SIGNAL \model_bs~input_o\ : std_logic;
SIGNAL \hongwai_in~input_o\ : std_logic;
SIGNAL \inst8|q1[0]~12_combout\ : std_logic;
SIGNAL \inst8|q1[1]~4_combout\ : std_logic;
SIGNAL \inst8|q1[1]~5\ : std_logic;
SIGNAL \inst8|q1[2]~6_combout\ : std_logic;
SIGNAL \inst8|q1[2]~7\ : std_logic;
SIGNAL \inst8|q1[3]~8_combout\ : std_logic;
SIGNAL \inst8|q1[3]~9\ : std_logic;
SIGNAL \inst8|q1[4]~10_combout\ : std_logic;
SIGNAL \inst8|q2[4]~feeder_combout\ : std_logic;
SIGNAL \inst8|q2[3]~feeder_combout\ : std_logic;
SIGNAL \inst8|q2[0]~feeder_combout\ : std_logic;
SIGNAL \inst8|q2[2]~feeder_combout\ : std_logic;
SIGNAL \inst8|q2[1]~feeder_combout\ : std_logic;
SIGNAL \inst8|LessThan0~0_combout\ : std_logic;
SIGNAL \inst8|LessThan1~0_combout\ : std_logic;
SIGNAL \inst8|data1~3_combout\ : std_logic;
SIGNAL \inst8|data1~2_combout\ : std_logic;
SIGNAL \inst8|data1[3]~1_combout\ : std_logic;
SIGNAL \inst8|data1~0_combout\ : std_logic;
SIGNAL \inst8|data1~4_combout\ : std_logic;
SIGNAL \inst8|data1~5_combout\ : std_logic;
SIGNAL \inst8|data1~6_combout\ : std_logic;
SIGNAL \inst8|data1~7_combout\ : std_logic;
SIGNAL \inst8|data1~8_combout\ : std_logic;
SIGNAL \inst16|Equal8~1_combout\ : std_logic;
SIGNAL \inst16|Equal8~0_combout\ : std_logic;
SIGNAL \inst16|if_backcar_go~0_combout\ : std_logic;
SIGNAL \inst16|if_backcar_go~q\ : std_logic;
SIGNAL \inst16|signal_go_back~0_combout\ : std_logic;
SIGNAL \inst16|signal_go_back~q\ : std_logic;
SIGNAL \inst16|SwitchToNextState~1_combout\ : std_logic;
SIGNAL \inst16|signal_go~0_combout\ : std_logic;
SIGNAL \inst16|signal_go~feeder_combout\ : std_logic;
SIGNAL \inst16|signal_go~q\ : std_logic;
SIGNAL \inst16|temp~q\ : std_logic;
SIGNAL \inst16|count_forbs[31]~0_combout\ : std_logic;
SIGNAL \inst16|Add0~0_combout\ : std_logic;
SIGNAL \inst16|Add0~1\ : std_logic;
SIGNAL \inst16|Add0~2_combout\ : std_logic;
SIGNAL \inst16|Add0~3\ : std_logic;
SIGNAL \inst16|Add0~4_combout\ : std_logic;
SIGNAL \inst16|Add0~5\ : std_logic;
SIGNAL \inst16|Add0~6_combout\ : std_logic;
SIGNAL \inst16|Add0~7\ : std_logic;
SIGNAL \inst16|Add0~8_combout\ : std_logic;
SIGNAL \inst16|model_bs~0_combout\ : std_logic;
SIGNAL \inst16|Add0~9\ : std_logic;
SIGNAL \inst16|Add0~10_combout\ : std_logic;
SIGNAL \inst16|Add0~11\ : std_logic;
SIGNAL \inst16|Add0~12_combout\ : std_logic;
SIGNAL \inst16|Add0~13\ : std_logic;
SIGNAL \inst16|Add0~14_combout\ : std_logic;
SIGNAL \inst16|Add0~15\ : std_logic;
SIGNAL \inst16|Add0~16_combout\ : std_logic;
SIGNAL \inst16|model_bs~1_combout\ : std_logic;
SIGNAL \inst16|Add0~17\ : std_logic;
SIGNAL \inst16|Add0~18_combout\ : std_logic;
SIGNAL \inst16|Add0~19\ : std_logic;
SIGNAL \inst16|Add0~20_combout\ : std_logic;
SIGNAL \inst16|Add0~21\ : std_logic;
SIGNAL \inst16|Add0~22_combout\ : std_logic;
SIGNAL \inst16|Add0~23\ : std_logic;
SIGNAL \inst16|Add0~24_combout\ : std_logic;
SIGNAL \inst16|Add0~25\ : std_logic;
SIGNAL \inst16|Add0~26_combout\ : std_logic;
SIGNAL \inst16|Add0~27\ : std_logic;
SIGNAL \inst16|Add0~28_combout\ : std_logic;
SIGNAL \inst16|Add0~29\ : std_logic;
SIGNAL \inst16|Add0~30_combout\ : std_logic;
SIGNAL \inst16|Add0~31\ : std_logic;
SIGNAL \inst16|Add0~32_combout\ : std_logic;
SIGNAL \inst16|model_bs~3_combout\ : std_logic;
SIGNAL \inst16|model_bs~2_combout\ : std_logic;
SIGNAL \inst16|model_bs~4_combout\ : std_logic;
SIGNAL \inst16|Add0~33\ : std_logic;
SIGNAL \inst16|Add0~34_combout\ : std_logic;
SIGNAL \inst16|Add0~35\ : std_logic;
SIGNAL \inst16|Add0~36_combout\ : std_logic;
SIGNAL \inst16|Add0~37\ : std_logic;
SIGNAL \inst16|Add0~38_combout\ : std_logic;
SIGNAL \inst16|Add0~39\ : std_logic;
SIGNAL \inst16|Add0~40_combout\ : std_logic;
SIGNAL \inst16|Add0~41\ : std_logic;
SIGNAL \inst16|Add0~42_combout\ : std_logic;
SIGNAL \inst16|Add0~43\ : std_logic;
SIGNAL \inst16|Add0~44_combout\ : std_logic;
SIGNAL \inst16|Add0~45\ : std_logic;
SIGNAL \inst16|Add0~46_combout\ : std_logic;
SIGNAL \inst16|Add0~47\ : std_logic;
SIGNAL \inst16|Add0~48_combout\ : std_logic;
SIGNAL \inst16|Add0~49\ : std_logic;
SIGNAL \inst16|Add0~50_combout\ : std_logic;
SIGNAL \inst16|Add0~51\ : std_logic;
SIGNAL \inst16|Add0~52_combout\ : std_logic;
SIGNAL \inst16|Add0~53\ : std_logic;
SIGNAL \inst16|Add0~54_combout\ : std_logic;
SIGNAL \inst16|Add0~55\ : std_logic;
SIGNAL \inst16|Add0~56_combout\ : std_logic;
SIGNAL \inst16|Add0~57\ : std_logic;
SIGNAL \inst16|Add0~58_combout\ : std_logic;
SIGNAL \inst16|model_bs~6_combout\ : std_logic;
SIGNAL \inst16|model_bs~5_combout\ : std_logic;
SIGNAL \inst16|model_bs~7_combout\ : std_logic;
SIGNAL \inst16|model_bs~8_combout\ : std_logic;
SIGNAL \inst16|Add0~59\ : std_logic;
SIGNAL \inst16|Add0~60_combout\ : std_logic;
SIGNAL \inst16|model_bs~9_combout\ : std_logic;
SIGNAL \inst16|model_bs~10_combout\ : std_logic;
SIGNAL \inst16|model_bs~q\ : std_logic;
SIGNAL \inst16|NextState~14_combout\ : std_logic;
SIGNAL \inst16|NextState~21_combout\ : std_logic;
SIGNAL \inst16|NextState.STOP_READY~q\ : std_logic;
SIGNAL \inst16|SwitchToNextState~2_combout\ : std_logic;
SIGNAL \inst16|NextState.STOP~feeder_combout\ : std_logic;
SIGNAL \inst16|NextState.STOP~q\ : std_logic;
SIGNAL \inst16|NextState~15_combout\ : std_logic;
SIGNAL \inst16|NextState~16_combout\ : std_logic;
SIGNAL \inst16|NextState.TURN_RIGHTW~q\ : std_logic;
SIGNAL \inst16|WideOr0~0_combout\ : std_logic;
SIGNAL \inst16|NextState~19_combout\ : std_logic;
SIGNAL \inst16|NextState~20_combout\ : std_logic;
SIGNAL \inst16|NextState.TURN_LEFTW~q\ : std_logic;
SIGNAL \inst16|WideOr2~combout\ : std_logic;
SIGNAL \inst16|Mux0~0_combout\ : std_logic;
SIGNAL \inst16|NextState~17_combout\ : std_logic;
SIGNAL \inst16|NextState~18_combout\ : std_logic;
SIGNAL \inst16|NextState.TURN_LEFT~q\ : std_logic;
SIGNAL \inst16|NextState~12_combout\ : std_logic;
SIGNAL \inst16|NextState~13_combout\ : std_logic;
SIGNAL \inst16|NextState.TURN_RIGHT~q\ : std_logic;
SIGNAL \inst16|WideOr3~combout\ : std_logic;
SIGNAL \inst2|inst|inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst2|inst|inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst2|inst|inst|LessThan0~2_combout\ : std_logic;
SIGNAL \inst2|inst|inst|PWM~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|inst|PWM~q\ : std_logic;
SIGNAL \inst2|inst|inst1|PWM~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|inst1|PWM~q\ : std_logic;
SIGNAL \inst16|WideOr1~0_combout\ : std_logic;
SIGNAL \inst16|WideOr4~combout\ : std_logic;
SIGNAL \inst2|inst|inst2|LessThan0~0_combout\ : std_logic;
SIGNAL \inst2|inst|inst2|LessThan0~1_combout\ : std_logic;
SIGNAL \inst2|inst|inst2|LessThan0~2_combout\ : std_logic;
SIGNAL \inst2|inst|inst2|PWM~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|inst2|PWM~q\ : std_logic;
SIGNAL \inst2|inst|inst3|PWM~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|inst3|PWM~q\ : std_logic;
SIGNAL \inst16|out_start~feeder_combout\ : std_logic;
SIGNAL \inst16|out_start~q\ : std_logic;
SIGNAL \inst16|send_open_temp1[0]~0_combout\ : std_logic;
SIGNAL \inst16|send_start_temp~0_combout\ : std_logic;
SIGNAL \inst16|send_start_temp~q\ : std_logic;
SIGNAL \inst16|WideOr0~combout\ : std_logic;
SIGNAL \inst16|WideOr1~combout\ : std_logic;
SIGNAL \inst2|inst1|moto_sy[3]~0_combout\ : std_logic;
SIGNAL \inst2|inst1|moto_sy[2]~1_combout\ : std_logic;
SIGNAL \inst2|inst1|moto_sz[3]~0_combout\ : std_logic;
SIGNAL \inst2|inst1|process_0~0_combout\ : std_logic;
SIGNAL \inst16|out_test[1]~feeder_combout\ : std_logic;
SIGNAL \inst16|out_test[0]~feeder_combout\ : std_logic;
SIGNAL \inst16|ref_R\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst2|inst|inst4|cnt\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst16|out_test\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst8|q1\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst16|l\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst16|r\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst16|ref_L\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst16|send_open_temp1\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst3|U2|cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|U1|cnt\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst16|count_forbs\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst8|data1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|q2\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_hongwai_in~input_o\ : std_logic;

BEGIN

pwmh_l <= ww_pwmh_l;
ww_clkin <= clkin;
ww_if_start <= if_start;
ww_model_bs <= model_bs;
ww_input <= input;
ww_hongwai_in <= hongwai_in;
pwmq_l <= ww_pwmq_l;
pwmq_r <= ww_pwmq_r;
pwmh_r <= ww_pwmh_r;
show_model <= ww_show_model;
out_start_test <= ww_out_start_test;
y <= ww_y;
tiaozhi <= ww_tiaozhi;
if_send_stop <= ww_if_send_stop;
if_send_start <= ww_if_send_start;
vcc_for_hw <= ww_vcc_for_hw;
gnd_for_hw <= ww_gnd_for_hw;
gnd_for_hwout <= ww_gnd_for_hwout;
motor_sy <= ww_motor_sy;
motor_sz <= ww_motor_sz;
out_test <= ww_out_test;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst3|U1|clkout~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst3|U1|clkout~q\);

\inst3|U0|clkout~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst3|U0|clkout~q\);

\inst3|U2|clkout~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst3|U2|clkout~q\);

\clkin~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkin~input_o\);
\ALT_INV_hongwai_in~input_o\ <= NOT \hongwai_in~input_o\;

-- Location: IOOBUF_X25_Y0_N2
\pwmh_l~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|inst|PWM~q\,
	devoe => ww_devoe,
	o => \pwmh_l~output_o\);

-- Location: IOOBUF_X18_Y24_N9
\pwmq_l~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|inst1|PWM~q\,
	devoe => ww_devoe,
	o => \pwmq_l~output_o\);

-- Location: IOOBUF_X21_Y24_N9
\pwmq_r~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|inst2|PWM~q\,
	devoe => ww_devoe,
	o => \pwmq_r~output_o\);

-- Location: IOOBUF_X30_Y0_N16
\pwmh_r~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|inst3|PWM~q\,
	devoe => ww_devoe,
	o => \pwmh_r~output_o\);

-- Location: IOOBUF_X1_Y24_N2
\show_model~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \show_model~output_o\);

-- Location: IOOBUF_X5_Y24_N16
\out_start_test~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|out_start~q\,
	devoe => ww_devoe,
	o => \out_start_test~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\y~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \y~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\tiaozhi~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \tiaozhi~output_o\);

-- Location: IOOBUF_X3_Y24_N23
\if_send_stop~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \if_send_stop~output_o\);

-- Location: IOOBUF_X5_Y24_N2
\if_send_start~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|send_start_temp~q\,
	devoe => ww_devoe,
	o => \if_send_start~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\vcc_for_hw~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \vcc_for_hw~output_o\);

-- Location: IOOBUF_X9_Y24_N23
\gnd_for_hw~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \gnd_for_hw~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\gnd_for_hwout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \gnd_for_hwout~output_o\);

-- Location: IOOBUF_X28_Y0_N9
\motor_sy[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst1|moto_sy[3]~0_combout\,
	devoe => ww_devoe,
	o => \motor_sy[3]~output_o\);

-- Location: IOOBUF_X28_Y0_N16
\motor_sy[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst1|moto_sy[2]~1_combout\,
	devoe => ww_devoe,
	o => \motor_sy[2]~output_o\);

-- Location: IOOBUF_X25_Y0_N23
\motor_sy[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst1|moto_sy[3]~0_combout\,
	devoe => ww_devoe,
	o => \motor_sy[1]~output_o\);

-- Location: IOOBUF_X25_Y0_N16
\motor_sy[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst1|moto_sy[2]~1_combout\,
	devoe => ww_devoe,
	o => \motor_sy[0]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\motor_sz[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst1|moto_sz[3]~0_combout\,
	devoe => ww_devoe,
	o => \motor_sz[3]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\motor_sz[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst1|process_0~0_combout\,
	devoe => ww_devoe,
	o => \motor_sz[2]~output_o\);

-- Location: IOOBUF_X25_Y24_N16
\motor_sz[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst1|moto_sz[3]~0_combout\,
	devoe => ww_devoe,
	o => \motor_sz[1]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\motor_sz[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst1|process_0~0_combout\,
	devoe => ww_devoe,
	o => \motor_sz[0]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\out_test[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|out_test\(3),
	devoe => ww_devoe,
	o => \out_test[3]~output_o\);

-- Location: IOOBUF_X34_Y8_N23
\out_test[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|out_test\(2),
	devoe => ww_devoe,
	o => \out_test[2]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\out_test[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|out_test\(1),
	devoe => ww_devoe,
	o => \out_test[1]~output_o\);

-- Location: IOOBUF_X34_Y17_N16
\out_test[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|out_test\(0),
	devoe => ww_devoe,
	o => \out_test[0]~output_o\);

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

-- Location: FF_X28_Y13_N11
\inst3|U0|clkt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	asdata => \inst3|U1|Add0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|U0|clkt~q\);

-- Location: LCCOMB_X28_Y13_N0
\inst3|U2|cnt[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|U2|cnt[0]~3_combout\ = !\inst3|U2|cnt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|U2|cnt\(0),
	combout => \inst3|U2|cnt[0]~3_combout\);

-- Location: FF_X28_Y13_N1
\inst3|U2|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \inst3|U2|cnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|U2|cnt\(0));

-- Location: LCCOMB_X28_Y13_N14
\inst3|U1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|U1|Add0~0_combout\ = (\inst3|U0|clkt~q\ & (\inst3|U2|cnt\(0) $ (VCC))) # (!\inst3|U0|clkt~q\ & (\inst3|U2|cnt\(0) & VCC))
-- \inst3|U1|Add0~1\ = CARRY((\inst3|U0|clkt~q\ & \inst3|U2|cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|U0|clkt~q\,
	datab => \inst3|U2|cnt\(0),
	datad => VCC,
	combout => \inst3|U1|Add0~0_combout\,
	cout => \inst3|U1|Add0~1\);

-- Location: LCCOMB_X33_Y12_N2
\inst3|U0|clkout~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|U0|clkout~feeder_combout\ = \inst3|U1|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|U1|Add0~0_combout\,
	combout => \inst3|U0|clkout~feeder_combout\);

-- Location: FF_X33_Y12_N3
\inst3|U0|clkout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \inst3|U0|clkout~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|U0|clkout~q\);

-- Location: CLKCTRL_G6
\inst3|U0|clkout~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst3|U0|clkout~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst3|U0|clkout~clkctrl_outclk\);

-- Location: LCCOMB_X21_Y19_N16
\inst2|inst|inst4|cnt[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|inst4|cnt[0]~5_combout\ = \inst2|inst|inst4|cnt\(0) $ (VCC)
-- \inst2|inst|inst4|cnt[0]~6\ = CARRY(\inst2|inst|inst4|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|inst4|cnt\(0),
	datad => VCC,
	combout => \inst2|inst|inst4|cnt[0]~5_combout\,
	cout => \inst2|inst|inst4|cnt[0]~6\);

-- Location: FF_X21_Y19_N17
\inst2|inst|inst4|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U0|clkout~clkctrl_outclk\,
	d => \inst2|inst|inst4|cnt[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|inst4|cnt\(0));

-- Location: LCCOMB_X21_Y19_N18
\inst2|inst|inst4|cnt[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|inst4|cnt[1]~8_combout\ = (\inst2|inst|inst4|cnt~7_combout\ & ((\inst2|inst|inst4|cnt\(1) & (!\inst2|inst|inst4|cnt[0]~6\)) # (!\inst2|inst|inst4|cnt\(1) & ((\inst2|inst|inst4|cnt[0]~6\) # (GND))))) # (!\inst2|inst|inst4|cnt~7_combout\ & 
-- ((\inst2|inst|inst4|cnt\(1) & (\inst2|inst|inst4|cnt[0]~6\ & VCC)) # (!\inst2|inst|inst4|cnt\(1) & (!\inst2|inst|inst4|cnt[0]~6\))))
-- \inst2|inst|inst4|cnt[1]~9\ = CARRY((\inst2|inst|inst4|cnt~7_combout\ & ((!\inst2|inst|inst4|cnt[0]~6\) # (!\inst2|inst|inst4|cnt\(1)))) # (!\inst2|inst|inst4|cnt~7_combout\ & (!\inst2|inst|inst4|cnt\(1) & !\inst2|inst|inst4|cnt[0]~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|inst4|cnt~7_combout\,
	datab => \inst2|inst|inst4|cnt\(1),
	datad => VCC,
	cin => \inst2|inst|inst4|cnt[0]~6\,
	combout => \inst2|inst|inst4|cnt[1]~8_combout\,
	cout => \inst2|inst|inst4|cnt[1]~9\);

-- Location: FF_X21_Y19_N19
\inst2|inst|inst4|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U0|clkout~clkctrl_outclk\,
	d => \inst2|inst|inst4|cnt[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|inst4|cnt\(1));

-- Location: LCCOMB_X21_Y19_N20
\inst2|inst|inst4|cnt[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|inst4|cnt[2]~10_combout\ = ((\inst2|inst|inst4|cnt~7_combout\ $ (\inst2|inst|inst4|cnt\(2) $ (\inst2|inst|inst4|cnt[1]~9\)))) # (GND)
-- \inst2|inst|inst4|cnt[2]~11\ = CARRY((\inst2|inst|inst4|cnt~7_combout\ & (\inst2|inst|inst4|cnt\(2) & !\inst2|inst|inst4|cnt[1]~9\)) # (!\inst2|inst|inst4|cnt~7_combout\ & ((\inst2|inst|inst4|cnt\(2)) # (!\inst2|inst|inst4|cnt[1]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|inst4|cnt~7_combout\,
	datab => \inst2|inst|inst4|cnt\(2),
	datad => VCC,
	cin => \inst2|inst|inst4|cnt[1]~9\,
	combout => \inst2|inst|inst4|cnt[2]~10_combout\,
	cout => \inst2|inst|inst4|cnt[2]~11\);

-- Location: FF_X21_Y19_N21
\inst2|inst|inst4|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U0|clkout~clkctrl_outclk\,
	d => \inst2|inst|inst4|cnt[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|inst4|cnt\(2));

-- Location: FF_X21_Y19_N31
\inst2|inst|inst4|up\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U0|clkout~clkctrl_outclk\,
	d => \inst2|inst|inst4|cnt~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|inst4|up~q\);

-- Location: LCCOMB_X21_Y19_N22
\inst2|inst|inst4|cnt[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|inst4|cnt[3]~12_combout\ = (\inst2|inst|inst4|cnt~7_combout\ & ((\inst2|inst|inst4|cnt\(3) & (!\inst2|inst|inst4|cnt[2]~11\)) # (!\inst2|inst|inst4|cnt\(3) & ((\inst2|inst|inst4|cnt[2]~11\) # (GND))))) # (!\inst2|inst|inst4|cnt~7_combout\ & 
-- ((\inst2|inst|inst4|cnt\(3) & (\inst2|inst|inst4|cnt[2]~11\ & VCC)) # (!\inst2|inst|inst4|cnt\(3) & (!\inst2|inst|inst4|cnt[2]~11\))))
-- \inst2|inst|inst4|cnt[3]~13\ = CARRY((\inst2|inst|inst4|cnt~7_combout\ & ((!\inst2|inst|inst4|cnt[2]~11\) # (!\inst2|inst|inst4|cnt\(3)))) # (!\inst2|inst|inst4|cnt~7_combout\ & (!\inst2|inst|inst4|cnt\(3) & !\inst2|inst|inst4|cnt[2]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|inst4|cnt~7_combout\,
	datab => \inst2|inst|inst4|cnt\(3),
	datad => VCC,
	cin => \inst2|inst|inst4|cnt[2]~11\,
	combout => \inst2|inst|inst4|cnt[3]~12_combout\,
	cout => \inst2|inst|inst4|cnt[3]~13\);

-- Location: FF_X21_Y19_N23
\inst2|inst|inst4|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U0|clkout~clkctrl_outclk\,
	d => \inst2|inst|inst4|cnt[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|inst4|cnt\(3));

-- Location: LCCOMB_X21_Y19_N12
\inst2|inst|inst4|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|inst4|Equal0~0_combout\ = (!\inst2|inst|inst4|cnt\(1) & (!\inst2|inst|inst4|cnt\(3) & !\inst2|inst|inst4|cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|inst4|cnt\(1),
	datac => \inst2|inst|inst4|cnt\(3),
	datad => \inst2|inst|inst4|cnt\(0),
	combout => \inst2|inst|inst4|Equal0~0_combout\);

-- Location: LCCOMB_X21_Y19_N30
\inst2|inst|inst4|cnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|inst4|cnt~7_combout\ = (\inst2|inst|inst4|cnt\(4) & (\inst2|inst|inst4|up~q\ & ((!\inst2|inst|inst4|Equal0~0_combout\) # (!\inst2|inst|inst4|cnt\(2))))) # (!\inst2|inst|inst4|cnt\(4) & ((\inst2|inst|inst4|up~q\) # ((!\inst2|inst|inst4|cnt\(2) 
-- & \inst2|inst|inst4|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|inst4|cnt\(4),
	datab => \inst2|inst|inst4|cnt\(2),
	datac => \inst2|inst|inst4|up~q\,
	datad => \inst2|inst|inst4|Equal0~0_combout\,
	combout => \inst2|inst|inst4|cnt~7_combout\);

-- Location: LCCOMB_X21_Y19_N24
\inst2|inst|inst4|cnt[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|inst4|cnt[4]~14_combout\ = \inst2|inst|inst4|cnt\(4) $ (\inst2|inst|inst4|cnt[3]~13\ $ (\inst2|inst|inst4|cnt~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|inst4|cnt\(4),
	datad => \inst2|inst|inst4|cnt~7_combout\,
	cin => \inst2|inst|inst4|cnt[3]~13\,
	combout => \inst2|inst|inst4|cnt[4]~14_combout\);

-- Location: FF_X21_Y19_N25
\inst2|inst|inst4|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U0|clkout~clkctrl_outclk\,
	d => \inst2|inst|inst4|cnt[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|inst4|cnt\(4));

-- Location: FF_X31_Y13_N11
\inst3|U2|clkt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \inst3|U2|clkt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|U2|clkt~q\);

-- Location: LCCOMB_X31_Y13_N18
\inst3|U2|cnt[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|U2|cnt[2]~2_combout\ = \inst3|U2|cnt\(2) $ (((\inst3|U2|cnt\(1) & \inst3|U2|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|U2|cnt\(1),
	datac => \inst3|U2|cnt\(2),
	datad => \inst3|U2|cnt\(0),
	combout => \inst3|U2|cnt[2]~2_combout\);

-- Location: FF_X31_Y13_N19
\inst3|U2|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \inst3|U2|cnt[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|U2|cnt\(2));

-- Location: LCCOMB_X31_Y13_N8
\inst3|U2|cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|U2|cnt~1_combout\ = (\inst3|U2|cnt\(0) & (!\inst3|U2|cnt\(1) & ((\inst3|U2|cnt\(2)) # (!\inst3|U2|cnt\(3))))) # (!\inst3|U2|cnt\(0) & (((\inst3|U2|cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|U2|cnt\(0),
	datab => \inst3|U2|cnt\(3),
	datac => \inst3|U2|cnt\(1),
	datad => \inst3|U2|cnt\(2),
	combout => \inst3|U2|cnt~1_combout\);

-- Location: FF_X31_Y13_N9
\inst3|U2|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \inst3|U2|cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|U2|cnt\(1));

-- Location: LCCOMB_X31_Y13_N4
\inst3|U2|cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|U2|cnt~0_combout\ = (\inst3|U2|cnt\(0) & ((\inst3|U2|cnt\(1) & (\inst3|U2|cnt\(3) $ (\inst3|U2|cnt\(2)))) # (!\inst3|U2|cnt\(1) & (\inst3|U2|cnt\(3) & \inst3|U2|cnt\(2))))) # (!\inst3|U2|cnt\(0) & (((\inst3|U2|cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|U2|cnt\(0),
	datab => \inst3|U2|cnt\(1),
	datac => \inst3|U2|cnt\(3),
	datad => \inst3|U2|cnt\(2),
	combout => \inst3|U2|cnt~0_combout\);

-- Location: FF_X31_Y13_N5
\inst3|U2|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \inst3|U2|cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|U2|cnt\(3));

-- Location: LCCOMB_X31_Y13_N12
\inst3|U2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|U2|Equal0~0_combout\ = (\inst3|U2|cnt\(0) & (\inst3|U2|cnt\(3) & (!\inst3|U2|cnt\(1) & !\inst3|U2|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|U2|cnt\(0),
	datab => \inst3|U2|cnt\(3),
	datac => \inst3|U2|cnt\(1),
	datad => \inst3|U2|cnt\(2),
	combout => \inst3|U2|Equal0~0_combout\);

-- Location: LCCOMB_X31_Y13_N10
\inst3|U2|clkt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|U2|clkt~0_combout\ = \inst3|U2|clkt~q\ $ (\inst3|U2|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|U2|clkt~q\,
	datad => \inst3|U2|Equal0~0_combout\,
	combout => \inst3|U2|clkt~0_combout\);

-- Location: LCCOMB_X31_Y13_N30
\inst3|U2|clkout~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|U2|clkout~feeder_combout\ = \inst3|U2|clkt~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|U2|clkt~0_combout\,
	combout => \inst3|U2|clkout~feeder_combout\);

-- Location: FF_X31_Y13_N31
\inst3|U2|clkout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \inst3|U2|clkout~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|U2|clkout~q\);

-- Location: CLKCTRL_G9
\inst3|U2|clkout~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst3|U2|clkout~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst3|U2|clkout~clkctrl_outclk\);

-- Location: IOIBUF_X34_Y18_N1
\input[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(2),
	o => \input[2]~input_o\);

-- Location: IOIBUF_X34_Y20_N1
\input[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(1),
	o => \input[1]~input_o\);

-- Location: IOIBUF_X21_Y24_N1
\input[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(3),
	o => \input[3]~input_o\);

-- Location: IOIBUF_X34_Y20_N8
\input[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(0),
	o => \input[0]~input_o\);

-- Location: LCCOMB_X30_Y18_N0
\inst16|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Equal0~0_combout\ = (!\input[2]~input_o\ & (!\input[1]~input_o\ & (!\input[3]~input_o\ & !\input[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[2]~input_o\,
	datab => \input[1]~input_o\,
	datac => \input[3]~input_o\,
	datad => \input[0]~input_o\,
	combout => \inst16|Equal0~0_combout\);

-- Location: LCCOMB_X28_Y13_N16
\inst3|U1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|U1|Add0~2_combout\ = (\inst3|U1|cnt\(2) & (!\inst3|U1|Add0~1\)) # (!\inst3|U1|cnt\(2) & ((\inst3|U1|Add0~1\) # (GND)))
-- \inst3|U1|Add0~3\ = CARRY((!\inst3|U1|Add0~1\) # (!\inst3|U1|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|U1|cnt\(2),
	datad => VCC,
	cin => \inst3|U1|Add0~1\,
	combout => \inst3|U1|Add0~2_combout\,
	cout => \inst3|U1|Add0~3\);

-- Location: FF_X28_Y13_N17
\inst3|U1|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \inst3|U1|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|U1|cnt\(2));

-- Location: LCCOMB_X28_Y13_N18
\inst3|U1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|U1|Add0~4_combout\ = (\inst3|U1|cnt\(3) & (\inst3|U1|Add0~3\ $ (GND))) # (!\inst3|U1|cnt\(3) & (!\inst3|U1|Add0~3\ & VCC))
-- \inst3|U1|Add0~5\ = CARRY((\inst3|U1|cnt\(3) & !\inst3|U1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|U1|cnt\(3),
	datad => VCC,
	cin => \inst3|U1|Add0~3\,
	combout => \inst3|U1|Add0~4_combout\,
	cout => \inst3|U1|Add0~5\);

-- Location: FF_X28_Y13_N19
\inst3|U1|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \inst3|U1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|U1|cnt\(3));

-- Location: LCCOMB_X28_Y13_N20
\inst3|U1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|U1|Add0~6_combout\ = (\inst3|U1|cnt\(4) & (!\inst3|U1|Add0~5\)) # (!\inst3|U1|cnt\(4) & ((\inst3|U1|Add0~5\) # (GND)))
-- \inst3|U1|Add0~7\ = CARRY((!\inst3|U1|Add0~5\) # (!\inst3|U1|cnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|U1|cnt\(4),
	datad => VCC,
	cin => \inst3|U1|Add0~5\,
	combout => \inst3|U1|Add0~6_combout\,
	cout => \inst3|U1|Add0~7\);

-- Location: FF_X28_Y13_N21
\inst3|U1|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \inst3|U1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|U1|cnt\(4));

-- Location: LCCOMB_X28_Y13_N22
\inst3|U1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|U1|Add0~8_combout\ = (\inst3|U1|cnt\(5) & (\inst3|U1|Add0~7\ $ (GND))) # (!\inst3|U1|cnt\(5) & (!\inst3|U1|Add0~7\ & VCC))
-- \inst3|U1|Add0~9\ = CARRY((\inst3|U1|cnt\(5) & !\inst3|U1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|U1|cnt\(5),
	datad => VCC,
	cin => \inst3|U1|Add0~7\,
	combout => \inst3|U1|Add0~8_combout\,
	cout => \inst3|U1|Add0~9\);

-- Location: LCCOMB_X28_Y13_N4
\inst3|U1|cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|U1|cnt~3_combout\ = (\inst3|U1|Add0~8_combout\ & ((!\inst3|U1|Equal0~5_combout\) # (!\inst3|U1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|U1|Equal0~0_combout\,
	datac => \inst3|U1|Add0~8_combout\,
	datad => \inst3|U1|Equal0~5_combout\,
	combout => \inst3|U1|cnt~3_combout\);

-- Location: FF_X28_Y13_N5
\inst3|U1|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \inst3|U1|cnt~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|U1|cnt\(5));

-- Location: LCCOMB_X28_Y13_N24
\inst3|U1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|U1|Add0~10_combout\ = (\inst3|U1|cnt\(6) & (!\inst3|U1|Add0~9\)) # (!\inst3|U1|cnt\(6) & ((\inst3|U1|Add0~9\) # (GND)))
-- \inst3|U1|Add0~11\ = CARRY((!\inst3|U1|Add0~9\) # (!\inst3|U1|cnt\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|U1|cnt\(6),
	datad => VCC,
	cin => \inst3|U1|Add0~9\,
	combout => \inst3|U1|Add0~10_combout\,
	cout => \inst3|U1|Add0~11\);

-- Location: FF_X28_Y13_N25
\inst3|U1|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \inst3|U1|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|U1|cnt\(6));

-- Location: LCCOMB_X28_Y13_N6
\inst3|U1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|U1|Equal0~2_combout\ = (!\inst3|U1|cnt\(6) & (\inst3|U1|cnt\(3) & (!\inst3|U1|cnt\(5) & \inst3|U1|cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|U1|cnt\(6),
	datab => \inst3|U1|cnt\(3),
	datac => \inst3|U1|cnt\(5),
	datad => \inst3|U1|cnt\(4),
	combout => \inst3|U1|Equal0~2_combout\);

-- Location: LCCOMB_X28_Y13_N26
\inst3|U1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|U1|Add0~12_combout\ = (\inst3|U1|cnt\(7) & (\inst3|U1|Add0~11\ $ (GND))) # (!\inst3|U1|cnt\(7) & (!\inst3|U1|Add0~11\ & VCC))
-- \inst3|U1|Add0~13\ = CARRY((\inst3|U1|cnt\(7) & !\inst3|U1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|U1|cnt\(7),
	datad => VCC,
	cin => \inst3|U1|Add0~11\,
	combout => \inst3|U1|Add0~12_combout\,
	cout => \inst3|U1|Add0~13\);

-- Location: FF_X28_Y13_N27
\inst3|U1|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \inst3|U1|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|U1|cnt\(7));

-- Location: LCCOMB_X28_Y13_N28
\inst3|U1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|U1|Add0~14_combout\ = (\inst3|U1|cnt\(8) & (!\inst3|U1|Add0~13\)) # (!\inst3|U1|cnt\(8) & ((\inst3|U1|Add0~13\) # (GND)))
-- \inst3|U1|Add0~15\ = CARRY((!\inst3|U1|Add0~13\) # (!\inst3|U1|cnt\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|U1|cnt\(8),
	datad => VCC,
	cin => \inst3|U1|Add0~13\,
	combout => \inst3|U1|Add0~14_combout\,
	cout => \inst3|U1|Add0~15\);

-- Location: LCCOMB_X28_Y13_N2
\inst3|U1|cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|U1|cnt~2_combout\ = (\inst3|U1|Add0~14_combout\ & ((!\inst3|U1|Equal0~5_combout\) # (!\inst3|U1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|U1|Add0~14_combout\,
	datac => \inst3|U1|Equal0~0_combout\,
	datad => \inst3|U1|Equal0~5_combout\,
	combout => \inst3|U1|cnt~2_combout\);

-- Location: FF_X28_Y13_N3
\inst3|U1|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \inst3|U1|cnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|U1|cnt\(8));

-- Location: LCCOMB_X28_Y13_N30
\inst3|U1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|U1|Add0~16_combout\ = (\inst3|U1|cnt\(9) & (\inst3|U1|Add0~15\ $ (GND))) # (!\inst3|U1|cnt\(9) & (!\inst3|U1|Add0~15\ & VCC))
-- \inst3|U1|Add0~17\ = CARRY((\inst3|U1|cnt\(9) & !\inst3|U1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|U1|cnt\(9),
	datad => VCC,
	cin => \inst3|U1|Add0~15\,
	combout => \inst3|U1|Add0~16_combout\,
	cout => \inst3|U1|Add0~17\);

-- Location: FF_X28_Y13_N31
\inst3|U1|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \inst3|U1|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|U1|cnt\(9));

-- Location: LCCOMB_X28_Y12_N0
\inst3|U1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|U1|Add0~18_combout\ = (\inst3|U1|cnt\(10) & (!\inst3|U1|Add0~17\)) # (!\inst3|U1|cnt\(10) & ((\inst3|U1|Add0~17\) # (GND)))
-- \inst3|U1|Add0~19\ = CARRY((!\inst3|U1|Add0~17\) # (!\inst3|U1|cnt\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|U1|cnt\(10),
	datad => VCC,
	cin => \inst3|U1|Add0~17\,
	combout => \inst3|U1|Add0~18_combout\,
	cout => \inst3|U1|Add0~19\);

-- Location: FF_X28_Y12_N1
\inst3|U1|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \inst3|U1|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|U1|cnt\(10));

-- Location: LCCOMB_X28_Y12_N2
\inst3|U1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|U1|Add0~20_combout\ = (\inst3|U1|cnt\(11) & (\inst3|U1|Add0~19\ $ (GND))) # (!\inst3|U1|cnt\(11) & (!\inst3|U1|Add0~19\ & VCC))
-- \inst3|U1|Add0~21\ = CARRY((\inst3|U1|cnt\(11) & !\inst3|U1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|U1|cnt\(11),
	datad => VCC,
	cin => \inst3|U1|Add0~19\,
	combout => \inst3|U1|Add0~20_combout\,
	cout => \inst3|U1|Add0~21\);

-- Location: FF_X28_Y12_N3
\inst3|U1|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \inst3|U1|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|U1|cnt\(11));

-- Location: LCCOMB_X28_Y12_N4
\inst3|U1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|U1|Add0~22_combout\ = (\inst3|U1|cnt\(12) & (!\inst3|U1|Add0~21\)) # (!\inst3|U1|cnt\(12) & ((\inst3|U1|Add0~21\) # (GND)))
-- \inst3|U1|Add0~23\ = CARRY((!\inst3|U1|Add0~21\) # (!\inst3|U1|cnt\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|U1|cnt\(12),
	datad => VCC,
	cin => \inst3|U1|Add0~21\,
	combout => \inst3|U1|Add0~22_combout\,
	cout => \inst3|U1|Add0~23\);

-- Location: FF_X28_Y12_N5
\inst3|U1|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \inst3|U1|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|U1|cnt\(12));

-- Location: LCCOMB_X28_Y12_N6
\inst3|U1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|U1|Add0~24_combout\ = (\inst3|U1|cnt\(13) & (\inst3|U1|Add0~23\ $ (GND))) # (!\inst3|U1|cnt\(13) & (!\inst3|U1|Add0~23\ & VCC))
-- \inst3|U1|Add0~25\ = CARRY((\inst3|U1|cnt\(13) & !\inst3|U1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|U1|cnt\(13),
	datad => VCC,
	cin => \inst3|U1|Add0~23\,
	combout => \inst3|U1|Add0~24_combout\,
	cout => \inst3|U1|Add0~25\);

-- Location: LCCOMB_X28_Y12_N30
\inst3|U1|cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|U1|cnt~4_combout\ = (\inst3|U1|Add0~24_combout\ & ((!\inst3|U1|Equal0~5_combout\) # (!\inst3|U1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|U1|Equal0~0_combout\,
	datac => \inst3|U1|Equal0~5_combout\,
	datad => \inst3|U1|Add0~24_combout\,
	combout => \inst3|U1|cnt~4_combout\);

-- Location: FF_X28_Y12_N31
\inst3|U1|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \inst3|U1|cnt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|U1|cnt\(13));

-- Location: LCCOMB_X28_Y12_N8
\inst3|U1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|U1|Add0~26_combout\ = (\inst3|U1|cnt\(14) & (!\inst3|U1|Add0~25\)) # (!\inst3|U1|cnt\(14) & ((\inst3|U1|Add0~25\) # (GND)))
-- \inst3|U1|Add0~27\ = CARRY((!\inst3|U1|Add0~25\) # (!\inst3|U1|cnt\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|U1|cnt\(14),
	datad => VCC,
	cin => \inst3|U1|Add0~25\,
	combout => \inst3|U1|Add0~26_combout\,
	cout => \inst3|U1|Add0~27\);

-- Location: FF_X28_Y12_N9
\inst3|U1|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \inst3|U1|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|U1|cnt\(14));

-- Location: LCCOMB_X28_Y12_N10
\inst3|U1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|U1|Add0~28_combout\ = (\inst3|U1|cnt\(15) & (\inst3|U1|Add0~27\ $ (GND))) # (!\inst3|U1|cnt\(15) & (!\inst3|U1|Add0~27\ & VCC))
-- \inst3|U1|Add0~29\ = CARRY((\inst3|U1|cnt\(15) & !\inst3|U1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|U1|cnt\(15),
	datad => VCC,
	cin => \inst3|U1|Add0~27\,
	combout => \inst3|U1|Add0~28_combout\,
	cout => \inst3|U1|Add0~29\);

-- Location: LCCOMB_X28_Y12_N20
\inst3|U1|cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|U1|cnt~5_combout\ = (\inst3|U1|Add0~28_combout\ & ((!\inst3|U1|Equal0~5_combout\) # (!\inst3|U1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|U1|Equal0~0_combout\,
	datac => \inst3|U1|Equal0~5_combout\,
	datad => \inst3|U1|Add0~28_combout\,
	combout => \inst3|U1|cnt~5_combout\);

-- Location: FF_X28_Y12_N21
\inst3|U1|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \inst3|U1|cnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|U1|cnt\(15));

-- Location: LCCOMB_X28_Y12_N12
\inst3|U1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|U1|Add0~30_combout\ = (\inst3|U1|cnt\(16) & (!\inst3|U1|Add0~29\)) # (!\inst3|U1|cnt\(16) & ((\inst3|U1|Add0~29\) # (GND)))
-- \inst3|U1|Add0~31\ = CARRY((!\inst3|U1|Add0~29\) # (!\inst3|U1|cnt\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|U1|cnt\(16),
	datad => VCC,
	cin => \inst3|U1|Add0~29\,
	combout => \inst3|U1|Add0~30_combout\,
	cout => \inst3|U1|Add0~31\);

-- Location: LCCOMB_X28_Y12_N26
\inst3|U1|cnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|U1|cnt~6_combout\ = (\inst3|U1|Add0~30_combout\ & ((!\inst3|U1|Equal0~5_combout\) # (!\inst3|U1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|U1|Equal0~0_combout\,
	datac => \inst3|U1|Equal0~5_combout\,
	datad => \inst3|U1|Add0~30_combout\,
	combout => \inst3|U1|cnt~6_combout\);

-- Location: FF_X28_Y12_N27
\inst3|U1|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \inst3|U1|cnt~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|U1|cnt\(16));

-- Location: LCCOMB_X28_Y12_N28
\inst3|U1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|U1|Equal0~4_combout\ = (\inst3|U1|cnt\(13) & (!\inst3|U1|cnt\(14) & (\inst3|U1|cnt\(16) & \inst3|U1|cnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|U1|cnt\(13),
	datab => \inst3|U1|cnt\(14),
	datac => \inst3|U1|cnt\(16),
	datad => \inst3|U1|cnt\(15),
	combout => \inst3|U1|Equal0~4_combout\);

-- Location: LCCOMB_X28_Y13_N10
\inst3|U1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|U1|Equal0~1_combout\ = (!\inst3|U1|cnt\(9) & (!\inst3|U1|cnt\(7) & (\inst3|U0|clkt~q\ & \inst3|U1|cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|U1|cnt\(9),
	datab => \inst3|U1|cnt\(7),
	datac => \inst3|U0|clkt~q\,
	datad => \inst3|U1|cnt\(8),
	combout => \inst3|U1|Equal0~1_combout\);

-- Location: LCCOMB_X28_Y13_N12
\inst3|U1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|U1|Equal0~3_combout\ = (\inst3|U1|cnt\(2) & (!\inst3|U1|cnt\(10) & (!\inst3|U1|cnt\(11) & !\inst3|U1|cnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|U1|cnt\(2),
	datab => \inst3|U1|cnt\(10),
	datac => \inst3|U1|cnt\(11),
	datad => \inst3|U1|cnt\(12),
	combout => \inst3|U1|Equal0~3_combout\);

-- Location: LCCOMB_X28_Y12_N22
\inst3|U1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|U1|Equal0~5_combout\ = (\inst3|U1|Equal0~2_combout\ & (\inst3|U1|Equal0~4_combout\ & (\inst3|U1|Equal0~1_combout\ & \inst3|U1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|U1|Equal0~2_combout\,
	datab => \inst3|U1|Equal0~4_combout\,
	datac => \inst3|U1|Equal0~1_combout\,
	datad => \inst3|U1|Equal0~3_combout\,
	combout => \inst3|U1|Equal0~5_combout\);

-- Location: LCCOMB_X28_Y12_N14
\inst3|U1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|U1|Add0~32_combout\ = (\inst3|U1|cnt\(17) & (\inst3|U1|Add0~31\ $ (GND))) # (!\inst3|U1|cnt\(17) & (!\inst3|U1|Add0~31\ & VCC))
-- \inst3|U1|Add0~33\ = CARRY((\inst3|U1|cnt\(17) & !\inst3|U1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|U1|cnt\(17),
	datad => VCC,
	cin => \inst3|U1|Add0~31\,
	combout => \inst3|U1|Add0~32_combout\,
	cout => \inst3|U1|Add0~33\);

-- Location: LCCOMB_X28_Y12_N18
\inst3|U1|cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|U1|cnt~0_combout\ = (\inst3|U1|Add0~32_combout\ & ((!\inst3|U1|Equal0~5_combout\) # (!\inst3|U1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|U1|Equal0~0_combout\,
	datac => \inst3|U1|Add0~32_combout\,
	datad => \inst3|U1|Equal0~5_combout\,
	combout => \inst3|U1|cnt~0_combout\);

-- Location: FF_X28_Y12_N19
\inst3|U1|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \inst3|U1|cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|U1|cnt\(17));

-- Location: LCCOMB_X28_Y12_N16
\inst3|U1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|U1|Add0~34_combout\ = \inst3|U1|Add0~33\ $ (\inst3|U1|cnt\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst3|U1|cnt\(18),
	cin => \inst3|U1|Add0~33\,
	combout => \inst3|U1|Add0~34_combout\);

-- Location: LCCOMB_X28_Y12_N24
\inst3|U1|cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|U1|cnt~1_combout\ = (\inst3|U1|Add0~34_combout\ & ((!\inst3|U1|Equal0~5_combout\) # (!\inst3|U1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|U1|Equal0~0_combout\,
	datac => \inst3|U1|Equal0~5_combout\,
	datad => \inst3|U1|Add0~34_combout\,
	combout => \inst3|U1|cnt~1_combout\);

-- Location: FF_X28_Y12_N25
\inst3|U1|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \inst3|U1|cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|U1|cnt\(18));

-- Location: LCCOMB_X28_Y13_N8
\inst3|U1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|U1|Equal0~0_combout\ = (\inst3|U2|cnt\(0) & (\inst3|U1|cnt\(18) & \inst3|U1|cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|U2|cnt\(0),
	datac => \inst3|U1|cnt\(18),
	datad => \inst3|U1|cnt\(17),
	combout => \inst3|U1|Equal0~0_combout\);

-- Location: FF_X29_Y12_N19
\inst3|U1|clkt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \inst3|U1|clkt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|U1|clkt~q\);

-- Location: LCCOMB_X29_Y12_N18
\inst3|U1|clkt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|U1|clkt~0_combout\ = \inst3|U1|clkt~q\ $ (((\inst3|U1|Equal0~0_combout\ & \inst3|U1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|U1|Equal0~0_combout\,
	datac => \inst3|U1|clkt~q\,
	datad => \inst3|U1|Equal0~5_combout\,
	combout => \inst3|U1|clkt~0_combout\);

-- Location: LCCOMB_X29_Y12_N30
\inst3|U1|clkout~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|U1|clkout~feeder_combout\ = \inst3|U1|clkt~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|U1|clkt~0_combout\,
	combout => \inst3|U1|clkout~feeder_combout\);

-- Location: FF_X29_Y12_N31
\inst3|U1|clkout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \inst3|U1|clkout~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|U1|clkout~q\);

-- Location: CLKCTRL_G8
\inst3|U1|clkout~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst3|U1|clkout~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst3|U1|clkout~clkctrl_outclk\);

-- Location: LCCOMB_X24_Y18_N4
\inst16|count_forbs[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|count_forbs[0]~1_combout\ = !\inst16|count_forbs\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|count_forbs\(0),
	combout => \inst16|count_forbs[0]~1_combout\);

-- Location: IOIBUF_X34_Y10_N1
\if_start~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_if_start,
	o => \if_start~input_o\);

-- Location: IOIBUF_X34_Y5_N15
\model_bs~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_model_bs,
	o => \model_bs~input_o\);

-- Location: IOIBUF_X9_Y24_N15
\hongwai_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hongwai_in,
	o => \hongwai_in~input_o\);

-- Location: LCCOMB_X10_Y20_N24
\inst8|q1[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|q1[0]~12_combout\ = !\inst8|q1\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|q1\(0),
	combout => \inst8|q1[0]~12_combout\);

-- Location: FF_X10_Y20_N25
\inst8|q1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U0|clkout~clkctrl_outclk\,
	d => \inst8|q1[0]~12_combout\,
	clrn => \ALT_INV_hongwai_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|q1\(0));

-- Location: LCCOMB_X10_Y20_N16
\inst8|q1[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|q1[1]~4_combout\ = (\inst8|q1\(0) & (\inst8|q1\(1) $ (VCC))) # (!\inst8|q1\(0) & (\inst8|q1\(1) & VCC))
-- \inst8|q1[1]~5\ = CARRY((\inst8|q1\(0) & \inst8|q1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|q1\(0),
	datab => \inst8|q1\(1),
	datad => VCC,
	combout => \inst8|q1[1]~4_combout\,
	cout => \inst8|q1[1]~5\);

-- Location: FF_X10_Y20_N17
\inst8|q1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U0|clkout~clkctrl_outclk\,
	d => \inst8|q1[1]~4_combout\,
	clrn => \ALT_INV_hongwai_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|q1\(1));

-- Location: LCCOMB_X10_Y20_N18
\inst8|q1[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|q1[2]~6_combout\ = (\inst8|q1\(2) & (!\inst8|q1[1]~5\)) # (!\inst8|q1\(2) & ((\inst8|q1[1]~5\) # (GND)))
-- \inst8|q1[2]~7\ = CARRY((!\inst8|q1[1]~5\) # (!\inst8|q1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|q1\(2),
	datad => VCC,
	cin => \inst8|q1[1]~5\,
	combout => \inst8|q1[2]~6_combout\,
	cout => \inst8|q1[2]~7\);

-- Location: FF_X10_Y20_N19
\inst8|q1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U0|clkout~clkctrl_outclk\,
	d => \inst8|q1[2]~6_combout\,
	clrn => \ALT_INV_hongwai_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|q1\(2));

-- Location: LCCOMB_X10_Y20_N20
\inst8|q1[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|q1[3]~8_combout\ = (\inst8|q1\(3) & (\inst8|q1[2]~7\ $ (GND))) # (!\inst8|q1\(3) & (!\inst8|q1[2]~7\ & VCC))
-- \inst8|q1[3]~9\ = CARRY((\inst8|q1\(3) & !\inst8|q1[2]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|q1\(3),
	datad => VCC,
	cin => \inst8|q1[2]~7\,
	combout => \inst8|q1[3]~8_combout\,
	cout => \inst8|q1[3]~9\);

-- Location: FF_X10_Y20_N21
\inst8|q1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U0|clkout~clkctrl_outclk\,
	d => \inst8|q1[3]~8_combout\,
	clrn => \ALT_INV_hongwai_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|q1\(3));

-- Location: LCCOMB_X10_Y20_N22
\inst8|q1[4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|q1[4]~10_combout\ = \inst8|q1\(4) $ (\inst8|q1[3]~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|q1\(4),
	cin => \inst8|q1[3]~9\,
	combout => \inst8|q1[4]~10_combout\);

-- Location: FF_X10_Y20_N23
\inst8|q1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U0|clkout~clkctrl_outclk\,
	d => \inst8|q1[4]~10_combout\,
	clrn => \ALT_INV_hongwai_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|q1\(4));

-- Location: LCCOMB_X10_Y20_N8
\inst8|q2[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|q2[4]~feeder_combout\ = \inst8|q1\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|q1\(4),
	combout => \inst8|q2[4]~feeder_combout\);

-- Location: FF_X10_Y20_N9
\inst8|q2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U0|clkout~clkctrl_outclk\,
	d => \inst8|q2[4]~feeder_combout\,
	ena => \ALT_INV_hongwai_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|q2\(4));

-- Location: LCCOMB_X10_Y20_N26
\inst8|q2[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|q2[3]~feeder_combout\ = \inst8|q1\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|q1\(3),
	combout => \inst8|q2[3]~feeder_combout\);

-- Location: FF_X10_Y20_N27
\inst8|q2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U0|clkout~clkctrl_outclk\,
	d => \inst8|q2[3]~feeder_combout\,
	ena => \ALT_INV_hongwai_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|q2\(3));

-- Location: LCCOMB_X10_Y20_N0
\inst8|q2[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|q2[0]~feeder_combout\ = \inst8|q1\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|q1\(0),
	combout => \inst8|q2[0]~feeder_combout\);

-- Location: FF_X10_Y20_N1
\inst8|q2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U0|clkout~clkctrl_outclk\,
	d => \inst8|q2[0]~feeder_combout\,
	ena => \ALT_INV_hongwai_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|q2\(0));

-- Location: LCCOMB_X10_Y20_N12
\inst8|q2[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|q2[2]~feeder_combout\ = \inst8|q1\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|q1\(2),
	combout => \inst8|q2[2]~feeder_combout\);

-- Location: FF_X10_Y20_N13
\inst8|q2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U0|clkout~clkctrl_outclk\,
	d => \inst8|q2[2]~feeder_combout\,
	ena => \ALT_INV_hongwai_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|q2\(2));

-- Location: LCCOMB_X10_Y20_N6
\inst8|q2[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|q2[1]~feeder_combout\ = \inst8|q1\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|q1\(1),
	combout => \inst8|q2[1]~feeder_combout\);

-- Location: FF_X10_Y20_N7
\inst8|q2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U0|clkout~clkctrl_outclk\,
	d => \inst8|q2[1]~feeder_combout\,
	ena => \ALT_INV_hongwai_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|q2\(1));

-- Location: LCCOMB_X10_Y20_N30
\inst8|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|LessThan0~0_combout\ = (\inst8|q2\(3) & ((\inst8|q2\(0)) # ((\inst8|q2\(2)) # (\inst8|q2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|q2\(3),
	datab => \inst8|q2\(0),
	datac => \inst8|q2\(2),
	datad => \inst8|q2\(1),
	combout => \inst8|LessThan0~0_combout\);

-- Location: LCCOMB_X10_Y20_N28
\inst8|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|LessThan1~0_combout\ = (\inst8|q2\(3)) # ((\inst8|q2\(2) & (\inst8|q2\(0) & \inst8|q2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|q2\(2),
	datab => \inst8|q2\(0),
	datac => \inst8|q2\(3),
	datad => \inst8|q2\(1),
	combout => \inst8|LessThan1~0_combout\);

-- Location: LCCOMB_X11_Y17_N8
\inst8|data1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|data1~3_combout\ = (!\inst8|q2\(4) & (!\inst8|LessThan0~0_combout\ & ((\inst8|data1\(0)) # (!\inst8|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|q2\(4),
	datab => \inst8|LessThan0~0_combout\,
	datac => \inst8|data1\(0),
	datad => \inst8|LessThan1~0_combout\,
	combout => \inst8|data1~3_combout\);

-- Location: FF_X11_Y17_N9
\inst8|data1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hongwai_in~input_o\,
	d => \inst8|data1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|data1\(0));

-- Location: LCCOMB_X11_Y17_N22
\inst8|data1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|data1~2_combout\ = (\inst8|data1\(0) & !\inst8|q2\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|data1\(0),
	datad => \inst8|q2\(4),
	combout => \inst8|data1~2_combout\);

-- Location: LCCOMB_X10_Y20_N14
\inst8|data1[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|data1[3]~1_combout\ = (\inst8|q2\(4)) # ((\inst8|LessThan0~0_combout\) # (!\inst8|LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|q2\(4),
	datac => \inst8|LessThan0~0_combout\,
	datad => \inst8|LessThan1~0_combout\,
	combout => \inst8|data1[3]~1_combout\);

-- Location: FF_X11_Y17_N23
\inst8|data1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hongwai_in~input_o\,
	d => \inst8|data1~2_combout\,
	ena => \inst8|data1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|data1\(1));

-- Location: LCCOMB_X11_Y17_N12
\inst8|data1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|data1~0_combout\ = (\inst8|data1\(1) & !\inst8|q2\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|data1\(1),
	datad => \inst8|q2\(4),
	combout => \inst8|data1~0_combout\);

-- Location: FF_X11_Y17_N13
\inst8|data1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hongwai_in~input_o\,
	d => \inst8|data1~0_combout\,
	ena => \inst8|data1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|data1\(2));

-- Location: LCCOMB_X11_Y17_N2
\inst8|data1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|data1~4_combout\ = (!\inst8|q2\(4) & \inst8|data1\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|q2\(4),
	datad => \inst8|data1\(2),
	combout => \inst8|data1~4_combout\);

-- Location: FF_X11_Y17_N3
\inst8|data1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hongwai_in~input_o\,
	d => \inst8|data1~4_combout\,
	ena => \inst8|data1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|data1\(3));

-- Location: LCCOMB_X11_Y17_N10
\inst8|data1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|data1~5_combout\ = (!\inst8|q2\(4) & \inst8|data1\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|q2\(4),
	datad => \inst8|data1\(3),
	combout => \inst8|data1~5_combout\);

-- Location: FF_X11_Y17_N11
\inst8|data1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hongwai_in~input_o\,
	d => \inst8|data1~5_combout\,
	ena => \inst8|data1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|data1\(4));

-- Location: LCCOMB_X11_Y17_N4
\inst8|data1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|data1~6_combout\ = (!\inst8|q2\(4) & \inst8|data1\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|q2\(4),
	datad => \inst8|data1\(4),
	combout => \inst8|data1~6_combout\);

-- Location: FF_X11_Y17_N5
\inst8|data1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hongwai_in~input_o\,
	d => \inst8|data1~6_combout\,
	ena => \inst8|data1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|data1\(5));

-- Location: LCCOMB_X11_Y17_N6
\inst8|data1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|data1~7_combout\ = (\inst8|data1\(5) & !\inst8|q2\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|data1\(5),
	datad => \inst8|q2\(4),
	combout => \inst8|data1~7_combout\);

-- Location: FF_X11_Y17_N7
\inst8|data1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hongwai_in~input_o\,
	d => \inst8|data1~7_combout\,
	ena => \inst8|data1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|data1\(6));

-- Location: LCCOMB_X11_Y17_N28
\inst8|data1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|data1~8_combout\ = (!\inst8|q2\(4) & \inst8|data1\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|q2\(4),
	datad => \inst8|data1\(6),
	combout => \inst8|data1~8_combout\);

-- Location: FF_X11_Y17_N29
\inst8|data1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hongwai_in~input_o\,
	d => \inst8|data1~8_combout\,
	ena => \inst8|data1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|data1\(7));

-- Location: LCCOMB_X11_Y17_N26
\inst16|Equal8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Equal8~1_combout\ = (!\inst8|data1\(6) & (!\inst8|data1\(4) & (!\inst8|data1\(5) & !\inst8|data1\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|data1\(6),
	datab => \inst8|data1\(4),
	datac => \inst8|data1\(5),
	datad => \inst8|data1\(7),
	combout => \inst16|Equal8~1_combout\);

-- Location: LCCOMB_X11_Y17_N24
\inst16|Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Equal8~0_combout\ = (!\inst8|data1\(2) & (!\inst8|data1\(0) & (!\inst8|data1\(1) & !\inst8|data1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|data1\(2),
	datab => \inst8|data1\(0),
	datac => \inst8|data1\(1),
	datad => \inst8|data1\(3),
	combout => \inst16|Equal8~0_combout\);

-- Location: LCCOMB_X12_Y17_N2
\inst16|if_backcar_go~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|if_backcar_go~0_combout\ = (\inst16|if_backcar_go~q\) # ((\model_bs~input_o\ & ((!\inst16|Equal8~0_combout\) # (!\inst16|Equal8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Equal8~1_combout\,
	datab => \model_bs~input_o\,
	datac => \inst16|if_backcar_go~q\,
	datad => \inst16|Equal8~0_combout\,
	combout => \inst16|if_backcar_go~0_combout\);

-- Location: FF_X12_Y17_N3
\inst16|if_backcar_go\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U1|clkout~clkctrl_outclk\,
	d => \inst16|if_backcar_go~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|if_backcar_go~q\);

-- Location: LCCOMB_X12_Y17_N8
\inst16|signal_go_back~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|signal_go_back~0_combout\ = (\inst16|if_backcar_go~q\) # (\inst16|signal_go_back~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|if_backcar_go~q\,
	datac => \inst16|signal_go_back~q\,
	combout => \inst16|signal_go_back~0_combout\);

-- Location: FF_X12_Y17_N9
\inst16|signal_go_back\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U2|clkout~clkctrl_outclk\,
	d => \inst16|signal_go_back~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|signal_go_back~q\);

-- Location: LCCOMB_X22_Y19_N10
\inst16|SwitchToNextState~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|SwitchToNextState~1_combout\ = (\model_bs~input_o\ & ((\inst16|signal_go_back~q\))) # (!\model_bs~input_o\ & (\inst16|signal_go~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \model_bs~input_o\,
	datab => \inst16|signal_go~q\,
	datad => \inst16|signal_go_back~q\,
	combout => \inst16|SwitchToNextState~1_combout\);

-- Location: LCCOMB_X22_Y18_N6
\inst16|signal_go~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|signal_go~0_combout\ = (\if_start~input_o\ & (\inst16|signal_go~q\ & ((!\inst16|SwitchToNextState~1_combout\) # (!\inst16|NextState.STOP~q\)))) # (!\if_start~input_o\ & (((!\inst16|SwitchToNextState~1_combout\) # (!\inst16|NextState.STOP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \if_start~input_o\,
	datab => \inst16|signal_go~q\,
	datac => \inst16|NextState.STOP~q\,
	datad => \inst16|SwitchToNextState~1_combout\,
	combout => \inst16|signal_go~0_combout\);

-- Location: LCCOMB_X22_Y18_N0
\inst16|signal_go~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|signal_go~feeder_combout\ = \inst16|signal_go~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst16|signal_go~0_combout\,
	combout => \inst16|signal_go~feeder_combout\);

-- Location: FF_X22_Y18_N1
\inst16|signal_go\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U2|clkout~clkctrl_outclk\,
	d => \inst16|signal_go~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|signal_go~q\);

-- Location: FF_X22_Y18_N21
\inst16|temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U1|clkout~clkctrl_outclk\,
	asdata => \inst16|Equal0~0_combout\,
	sload => VCC,
	ena => \inst16|signal_go~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|temp~q\);

-- Location: LCCOMB_X22_Y18_N20
\inst16|count_forbs[31]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|count_forbs[31]~0_combout\ = (\inst16|Equal0~0_combout\ & (!\inst16|temp~q\ & \inst16|signal_go~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|Equal0~0_combout\,
	datac => \inst16|temp~q\,
	datad => \inst16|signal_go~q\,
	combout => \inst16|count_forbs[31]~0_combout\);

-- Location: FF_X24_Y18_N5
\inst16|count_forbs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U1|clkout~clkctrl_outclk\,
	d => \inst16|count_forbs[0]~1_combout\,
	ena => \inst16|count_forbs[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|count_forbs\(0));

-- Location: LCCOMB_X23_Y18_N2
\inst16|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Add0~0_combout\ = (\inst16|count_forbs\(0) & (\inst16|count_forbs\(1) $ (VCC))) # (!\inst16|count_forbs\(0) & (\inst16|count_forbs\(1) & VCC))
-- \inst16|Add0~1\ = CARRY((\inst16|count_forbs\(0) & \inst16|count_forbs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|count_forbs\(0),
	datab => \inst16|count_forbs\(1),
	datad => VCC,
	combout => \inst16|Add0~0_combout\,
	cout => \inst16|Add0~1\);

-- Location: FF_X23_Y18_N3
\inst16|count_forbs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U1|clkout~clkctrl_outclk\,
	d => \inst16|Add0~0_combout\,
	ena => \inst16|count_forbs[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|count_forbs\(1));

-- Location: LCCOMB_X23_Y18_N4
\inst16|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Add0~2_combout\ = (\inst16|count_forbs\(2) & (!\inst16|Add0~1\)) # (!\inst16|count_forbs\(2) & ((\inst16|Add0~1\) # (GND)))
-- \inst16|Add0~3\ = CARRY((!\inst16|Add0~1\) # (!\inst16|count_forbs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst16|count_forbs\(2),
	datad => VCC,
	cin => \inst16|Add0~1\,
	combout => \inst16|Add0~2_combout\,
	cout => \inst16|Add0~3\);

-- Location: FF_X23_Y18_N5
\inst16|count_forbs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U1|clkout~clkctrl_outclk\,
	d => \inst16|Add0~2_combout\,
	ena => \inst16|count_forbs[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|count_forbs\(2));

-- Location: LCCOMB_X23_Y18_N6
\inst16|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Add0~4_combout\ = (\inst16|count_forbs\(3) & (\inst16|Add0~3\ $ (GND))) # (!\inst16|count_forbs\(3) & (!\inst16|Add0~3\ & VCC))
-- \inst16|Add0~5\ = CARRY((\inst16|count_forbs\(3) & !\inst16|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|count_forbs\(3),
	datad => VCC,
	cin => \inst16|Add0~3\,
	combout => \inst16|Add0~4_combout\,
	cout => \inst16|Add0~5\);

-- Location: FF_X23_Y18_N7
\inst16|count_forbs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U1|clkout~clkctrl_outclk\,
	d => \inst16|Add0~4_combout\,
	ena => \inst16|count_forbs[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|count_forbs\(3));

-- Location: LCCOMB_X23_Y18_N8
\inst16|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Add0~6_combout\ = (\inst16|count_forbs\(4) & (!\inst16|Add0~5\)) # (!\inst16|count_forbs\(4) & ((\inst16|Add0~5\) # (GND)))
-- \inst16|Add0~7\ = CARRY((!\inst16|Add0~5\) # (!\inst16|count_forbs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst16|count_forbs\(4),
	datad => VCC,
	cin => \inst16|Add0~5\,
	combout => \inst16|Add0~6_combout\,
	cout => \inst16|Add0~7\);

-- Location: FF_X23_Y18_N9
\inst16|count_forbs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U1|clkout~clkctrl_outclk\,
	d => \inst16|Add0~6_combout\,
	ena => \inst16|count_forbs[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|count_forbs\(4));

-- Location: LCCOMB_X23_Y18_N10
\inst16|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Add0~8_combout\ = (\inst16|count_forbs\(5) & (\inst16|Add0~7\ $ (GND))) # (!\inst16|count_forbs\(5) & (!\inst16|Add0~7\ & VCC))
-- \inst16|Add0~9\ = CARRY((\inst16|count_forbs\(5) & !\inst16|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|count_forbs\(5),
	datad => VCC,
	cin => \inst16|Add0~7\,
	combout => \inst16|Add0~8_combout\,
	cout => \inst16|Add0~9\);

-- Location: FF_X23_Y18_N11
\inst16|count_forbs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U1|clkout~clkctrl_outclk\,
	d => \inst16|Add0~8_combout\,
	ena => \inst16|count_forbs[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|count_forbs\(5));

-- Location: LCCOMB_X23_Y19_N12
\inst16|model_bs~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|model_bs~0_combout\ = (!\inst16|count_forbs\(2) & (!\inst16|count_forbs\(3) & (!\inst16|count_forbs\(5) & !\inst16|count_forbs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|count_forbs\(2),
	datab => \inst16|count_forbs\(3),
	datac => \inst16|count_forbs\(5),
	datad => \inst16|count_forbs\(4),
	combout => \inst16|model_bs~0_combout\);

-- Location: LCCOMB_X23_Y18_N12
\inst16|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Add0~10_combout\ = (\inst16|count_forbs\(6) & (!\inst16|Add0~9\)) # (!\inst16|count_forbs\(6) & ((\inst16|Add0~9\) # (GND)))
-- \inst16|Add0~11\ = CARRY((!\inst16|Add0~9\) # (!\inst16|count_forbs\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|count_forbs\(6),
	datad => VCC,
	cin => \inst16|Add0~9\,
	combout => \inst16|Add0~10_combout\,
	cout => \inst16|Add0~11\);

-- Location: FF_X23_Y18_N13
\inst16|count_forbs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U1|clkout~clkctrl_outclk\,
	d => \inst16|Add0~10_combout\,
	ena => \inst16|count_forbs[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|count_forbs\(6));

-- Location: LCCOMB_X23_Y18_N14
\inst16|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Add0~12_combout\ = (\inst16|count_forbs\(7) & (\inst16|Add0~11\ $ (GND))) # (!\inst16|count_forbs\(7) & (!\inst16|Add0~11\ & VCC))
-- \inst16|Add0~13\ = CARRY((\inst16|count_forbs\(7) & !\inst16|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst16|count_forbs\(7),
	datad => VCC,
	cin => \inst16|Add0~11\,
	combout => \inst16|Add0~12_combout\,
	cout => \inst16|Add0~13\);

-- Location: FF_X23_Y18_N15
\inst16|count_forbs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U1|clkout~clkctrl_outclk\,
	d => \inst16|Add0~12_combout\,
	ena => \inst16|count_forbs[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|count_forbs\(7));

-- Location: LCCOMB_X23_Y18_N16
\inst16|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Add0~14_combout\ = (\inst16|count_forbs\(8) & (!\inst16|Add0~13\)) # (!\inst16|count_forbs\(8) & ((\inst16|Add0~13\) # (GND)))
-- \inst16|Add0~15\ = CARRY((!\inst16|Add0~13\) # (!\inst16|count_forbs\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst16|count_forbs\(8),
	datad => VCC,
	cin => \inst16|Add0~13\,
	combout => \inst16|Add0~14_combout\,
	cout => \inst16|Add0~15\);

-- Location: FF_X23_Y18_N17
\inst16|count_forbs[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U1|clkout~clkctrl_outclk\,
	d => \inst16|Add0~14_combout\,
	ena => \inst16|count_forbs[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|count_forbs\(8));

-- Location: LCCOMB_X23_Y18_N18
\inst16|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Add0~16_combout\ = (\inst16|count_forbs\(9) & (\inst16|Add0~15\ $ (GND))) # (!\inst16|count_forbs\(9) & (!\inst16|Add0~15\ & VCC))
-- \inst16|Add0~17\ = CARRY((\inst16|count_forbs\(9) & !\inst16|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst16|count_forbs\(9),
	datad => VCC,
	cin => \inst16|Add0~15\,
	combout => \inst16|Add0~16_combout\,
	cout => \inst16|Add0~17\);

-- Location: FF_X23_Y18_N19
\inst16|count_forbs[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U1|clkout~clkctrl_outclk\,
	d => \inst16|Add0~16_combout\,
	ena => \inst16|count_forbs[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|count_forbs\(9));

-- Location: LCCOMB_X23_Y18_N0
\inst16|model_bs~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|model_bs~1_combout\ = (!\inst16|count_forbs\(6) & (!\inst16|count_forbs\(8) & (!\inst16|count_forbs\(7) & !\inst16|count_forbs\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|count_forbs\(6),
	datab => \inst16|count_forbs\(8),
	datac => \inst16|count_forbs\(7),
	datad => \inst16|count_forbs\(9),
	combout => \inst16|model_bs~1_combout\);

-- Location: LCCOMB_X23_Y18_N20
\inst16|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Add0~18_combout\ = (\inst16|count_forbs\(10) & (!\inst16|Add0~17\)) # (!\inst16|count_forbs\(10) & ((\inst16|Add0~17\) # (GND)))
-- \inst16|Add0~19\ = CARRY((!\inst16|Add0~17\) # (!\inst16|count_forbs\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst16|count_forbs\(10),
	datad => VCC,
	cin => \inst16|Add0~17\,
	combout => \inst16|Add0~18_combout\,
	cout => \inst16|Add0~19\);

-- Location: FF_X23_Y18_N21
\inst16|count_forbs[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U1|clkout~clkctrl_outclk\,
	d => \inst16|Add0~18_combout\,
	ena => \inst16|count_forbs[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|count_forbs\(10));

-- Location: LCCOMB_X23_Y18_N22
\inst16|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Add0~20_combout\ = (\inst16|count_forbs\(11) & (\inst16|Add0~19\ $ (GND))) # (!\inst16|count_forbs\(11) & (!\inst16|Add0~19\ & VCC))
-- \inst16|Add0~21\ = CARRY((\inst16|count_forbs\(11) & !\inst16|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|count_forbs\(11),
	datad => VCC,
	cin => \inst16|Add0~19\,
	combout => \inst16|Add0~20_combout\,
	cout => \inst16|Add0~21\);

-- Location: FF_X23_Y18_N23
\inst16|count_forbs[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U1|clkout~clkctrl_outclk\,
	d => \inst16|Add0~20_combout\,
	ena => \inst16|count_forbs[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|count_forbs\(11));

-- Location: LCCOMB_X23_Y18_N24
\inst16|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Add0~22_combout\ = (\inst16|count_forbs\(12) & (!\inst16|Add0~21\)) # (!\inst16|count_forbs\(12) & ((\inst16|Add0~21\) # (GND)))
-- \inst16|Add0~23\ = CARRY((!\inst16|Add0~21\) # (!\inst16|count_forbs\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst16|count_forbs\(12),
	datad => VCC,
	cin => \inst16|Add0~21\,
	combout => \inst16|Add0~22_combout\,
	cout => \inst16|Add0~23\);

-- Location: FF_X23_Y18_N25
\inst16|count_forbs[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U1|clkout~clkctrl_outclk\,
	d => \inst16|Add0~22_combout\,
	ena => \inst16|count_forbs[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|count_forbs\(12));

-- Location: LCCOMB_X23_Y18_N26
\inst16|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Add0~24_combout\ = (\inst16|count_forbs\(13) & (\inst16|Add0~23\ $ (GND))) # (!\inst16|count_forbs\(13) & (!\inst16|Add0~23\ & VCC))
-- \inst16|Add0~25\ = CARRY((\inst16|count_forbs\(13) & !\inst16|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|count_forbs\(13),
	datad => VCC,
	cin => \inst16|Add0~23\,
	combout => \inst16|Add0~24_combout\,
	cout => \inst16|Add0~25\);

-- Location: FF_X23_Y18_N27
\inst16|count_forbs[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U1|clkout~clkctrl_outclk\,
	d => \inst16|Add0~24_combout\,
	ena => \inst16|count_forbs[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|count_forbs\(13));

-- Location: LCCOMB_X23_Y18_N28
\inst16|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Add0~26_combout\ = (\inst16|count_forbs\(14) & (!\inst16|Add0~25\)) # (!\inst16|count_forbs\(14) & ((\inst16|Add0~25\) # (GND)))
-- \inst16|Add0~27\ = CARRY((!\inst16|Add0~25\) # (!\inst16|count_forbs\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst16|count_forbs\(14),
	datad => VCC,
	cin => \inst16|Add0~25\,
	combout => \inst16|Add0~26_combout\,
	cout => \inst16|Add0~27\);

-- Location: FF_X23_Y18_N29
\inst16|count_forbs[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U1|clkout~clkctrl_outclk\,
	d => \inst16|Add0~26_combout\,
	ena => \inst16|count_forbs[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|count_forbs\(14));

-- Location: LCCOMB_X23_Y18_N30
\inst16|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Add0~28_combout\ = (\inst16|count_forbs\(15) & (\inst16|Add0~27\ $ (GND))) # (!\inst16|count_forbs\(15) & (!\inst16|Add0~27\ & VCC))
-- \inst16|Add0~29\ = CARRY((\inst16|count_forbs\(15) & !\inst16|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|count_forbs\(15),
	datad => VCC,
	cin => \inst16|Add0~27\,
	combout => \inst16|Add0~28_combout\,
	cout => \inst16|Add0~29\);

-- Location: FF_X23_Y18_N31
\inst16|count_forbs[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U1|clkout~clkctrl_outclk\,
	d => \inst16|Add0~28_combout\,
	ena => \inst16|count_forbs[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|count_forbs\(15));

-- Location: LCCOMB_X23_Y17_N0
\inst16|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Add0~30_combout\ = (\inst16|count_forbs\(16) & (!\inst16|Add0~29\)) # (!\inst16|count_forbs\(16) & ((\inst16|Add0~29\) # (GND)))
-- \inst16|Add0~31\ = CARRY((!\inst16|Add0~29\) # (!\inst16|count_forbs\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst16|count_forbs\(16),
	datad => VCC,
	cin => \inst16|Add0~29\,
	combout => \inst16|Add0~30_combout\,
	cout => \inst16|Add0~31\);

-- Location: FF_X23_Y17_N1
\inst16|count_forbs[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U1|clkout~clkctrl_outclk\,
	d => \inst16|Add0~30_combout\,
	ena => \inst16|count_forbs[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|count_forbs\(16));

-- Location: LCCOMB_X23_Y17_N2
\inst16|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Add0~32_combout\ = (\inst16|count_forbs\(17) & (\inst16|Add0~31\ $ (GND))) # (!\inst16|count_forbs\(17) & (!\inst16|Add0~31\ & VCC))
-- \inst16|Add0~33\ = CARRY((\inst16|count_forbs\(17) & !\inst16|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst16|count_forbs\(17),
	datad => VCC,
	cin => \inst16|Add0~31\,
	combout => \inst16|Add0~32_combout\,
	cout => \inst16|Add0~33\);

-- Location: FF_X23_Y17_N3
\inst16|count_forbs[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U1|clkout~clkctrl_outclk\,
	d => \inst16|Add0~32_combout\,
	ena => \inst16|count_forbs[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|count_forbs\(17));

-- Location: LCCOMB_X23_Y19_N8
\inst16|model_bs~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|model_bs~3_combout\ = (!\inst16|count_forbs\(14) & (!\inst16|count_forbs\(16) & (!\inst16|count_forbs\(15) & !\inst16|count_forbs\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|count_forbs\(14),
	datab => \inst16|count_forbs\(16),
	datac => \inst16|count_forbs\(15),
	datad => \inst16|count_forbs\(17),
	combout => \inst16|model_bs~3_combout\);

-- Location: LCCOMB_X23_Y19_N18
\inst16|model_bs~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|model_bs~2_combout\ = (!\inst16|count_forbs\(12) & (!\inst16|count_forbs\(10) & (!\inst16|count_forbs\(13) & !\inst16|count_forbs\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|count_forbs\(12),
	datab => \inst16|count_forbs\(10),
	datac => \inst16|count_forbs\(13),
	datad => \inst16|count_forbs\(11),
	combout => \inst16|model_bs~2_combout\);

-- Location: LCCOMB_X23_Y19_N22
\inst16|model_bs~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|model_bs~4_combout\ = (\inst16|model_bs~0_combout\ & (\inst16|model_bs~1_combout\ & (\inst16|model_bs~3_combout\ & \inst16|model_bs~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|model_bs~0_combout\,
	datab => \inst16|model_bs~1_combout\,
	datac => \inst16|model_bs~3_combout\,
	datad => \inst16|model_bs~2_combout\,
	combout => \inst16|model_bs~4_combout\);

-- Location: LCCOMB_X23_Y17_N4
\inst16|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Add0~34_combout\ = (\inst16|count_forbs\(18) & (!\inst16|Add0~33\)) # (!\inst16|count_forbs\(18) & ((\inst16|Add0~33\) # (GND)))
-- \inst16|Add0~35\ = CARRY((!\inst16|Add0~33\) # (!\inst16|count_forbs\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst16|count_forbs\(18),
	datad => VCC,
	cin => \inst16|Add0~33\,
	combout => \inst16|Add0~34_combout\,
	cout => \inst16|Add0~35\);

-- Location: FF_X23_Y17_N5
\inst16|count_forbs[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U1|clkout~clkctrl_outclk\,
	d => \inst16|Add0~34_combout\,
	ena => \inst16|count_forbs[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|count_forbs\(18));

-- Location: LCCOMB_X23_Y17_N6
\inst16|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Add0~36_combout\ = (\inst16|count_forbs\(19) & (\inst16|Add0~35\ $ (GND))) # (!\inst16|count_forbs\(19) & (!\inst16|Add0~35\ & VCC))
-- \inst16|Add0~37\ = CARRY((\inst16|count_forbs\(19) & !\inst16|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|count_forbs\(19),
	datad => VCC,
	cin => \inst16|Add0~35\,
	combout => \inst16|Add0~36_combout\,
	cout => \inst16|Add0~37\);

-- Location: FF_X23_Y17_N7
\inst16|count_forbs[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U1|clkout~clkctrl_outclk\,
	d => \inst16|Add0~36_combout\,
	ena => \inst16|count_forbs[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|count_forbs\(19));

-- Location: LCCOMB_X23_Y17_N8
\inst16|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Add0~38_combout\ = (\inst16|count_forbs\(20) & (!\inst16|Add0~37\)) # (!\inst16|count_forbs\(20) & ((\inst16|Add0~37\) # (GND)))
-- \inst16|Add0~39\ = CARRY((!\inst16|Add0~37\) # (!\inst16|count_forbs\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst16|count_forbs\(20),
	datad => VCC,
	cin => \inst16|Add0~37\,
	combout => \inst16|Add0~38_combout\,
	cout => \inst16|Add0~39\);

-- Location: FF_X23_Y17_N9
\inst16|count_forbs[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U1|clkout~clkctrl_outclk\,
	d => \inst16|Add0~38_combout\,
	ena => \inst16|count_forbs[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|count_forbs\(20));

-- Location: LCCOMB_X23_Y17_N10
\inst16|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Add0~40_combout\ = (\inst16|count_forbs\(21) & (\inst16|Add0~39\ $ (GND))) # (!\inst16|count_forbs\(21) & (!\inst16|Add0~39\ & VCC))
-- \inst16|Add0~41\ = CARRY((\inst16|count_forbs\(21) & !\inst16|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|count_forbs\(21),
	datad => VCC,
	cin => \inst16|Add0~39\,
	combout => \inst16|Add0~40_combout\,
	cout => \inst16|Add0~41\);

-- Location: FF_X23_Y17_N11
\inst16|count_forbs[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U1|clkout~clkctrl_outclk\,
	d => \inst16|Add0~40_combout\,
	ena => \inst16|count_forbs[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|count_forbs\(21));

-- Location: LCCOMB_X23_Y17_N12
\inst16|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Add0~42_combout\ = (\inst16|count_forbs\(22) & (!\inst16|Add0~41\)) # (!\inst16|count_forbs\(22) & ((\inst16|Add0~41\) # (GND)))
-- \inst16|Add0~43\ = CARRY((!\inst16|Add0~41\) # (!\inst16|count_forbs\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|count_forbs\(22),
	datad => VCC,
	cin => \inst16|Add0~41\,
	combout => \inst16|Add0~42_combout\,
	cout => \inst16|Add0~43\);

-- Location: FF_X23_Y17_N13
\inst16|count_forbs[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U1|clkout~clkctrl_outclk\,
	d => \inst16|Add0~42_combout\,
	ena => \inst16|count_forbs[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|count_forbs\(22));

-- Location: LCCOMB_X23_Y17_N14
\inst16|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Add0~44_combout\ = (\inst16|count_forbs\(23) & (\inst16|Add0~43\ $ (GND))) # (!\inst16|count_forbs\(23) & (!\inst16|Add0~43\ & VCC))
-- \inst16|Add0~45\ = CARRY((\inst16|count_forbs\(23) & !\inst16|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst16|count_forbs\(23),
	datad => VCC,
	cin => \inst16|Add0~43\,
	combout => \inst16|Add0~44_combout\,
	cout => \inst16|Add0~45\);

-- Location: FF_X23_Y17_N15
\inst16|count_forbs[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U1|clkout~clkctrl_outclk\,
	d => \inst16|Add0~44_combout\,
	ena => \inst16|count_forbs[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|count_forbs\(23));

-- Location: LCCOMB_X23_Y17_N16
\inst16|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Add0~46_combout\ = (\inst16|count_forbs\(24) & (!\inst16|Add0~45\)) # (!\inst16|count_forbs\(24) & ((\inst16|Add0~45\) # (GND)))
-- \inst16|Add0~47\ = CARRY((!\inst16|Add0~45\) # (!\inst16|count_forbs\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst16|count_forbs\(24),
	datad => VCC,
	cin => \inst16|Add0~45\,
	combout => \inst16|Add0~46_combout\,
	cout => \inst16|Add0~47\);

-- Location: FF_X23_Y17_N17
\inst16|count_forbs[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U1|clkout~clkctrl_outclk\,
	d => \inst16|Add0~46_combout\,
	ena => \inst16|count_forbs[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|count_forbs\(24));

-- Location: LCCOMB_X23_Y17_N18
\inst16|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Add0~48_combout\ = (\inst16|count_forbs\(25) & (\inst16|Add0~47\ $ (GND))) # (!\inst16|count_forbs\(25) & (!\inst16|Add0~47\ & VCC))
-- \inst16|Add0~49\ = CARRY((\inst16|count_forbs\(25) & !\inst16|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst16|count_forbs\(25),
	datad => VCC,
	cin => \inst16|Add0~47\,
	combout => \inst16|Add0~48_combout\,
	cout => \inst16|Add0~49\);

-- Location: FF_X23_Y17_N19
\inst16|count_forbs[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U1|clkout~clkctrl_outclk\,
	d => \inst16|Add0~48_combout\,
	ena => \inst16|count_forbs[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|count_forbs\(25));

-- Location: LCCOMB_X23_Y17_N20
\inst16|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Add0~50_combout\ = (\inst16|count_forbs\(26) & (!\inst16|Add0~49\)) # (!\inst16|count_forbs\(26) & ((\inst16|Add0~49\) # (GND)))
-- \inst16|Add0~51\ = CARRY((!\inst16|Add0~49\) # (!\inst16|count_forbs\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst16|count_forbs\(26),
	datad => VCC,
	cin => \inst16|Add0~49\,
	combout => \inst16|Add0~50_combout\,
	cout => \inst16|Add0~51\);

-- Location: FF_X23_Y17_N21
\inst16|count_forbs[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U1|clkout~clkctrl_outclk\,
	d => \inst16|Add0~50_combout\,
	ena => \inst16|count_forbs[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|count_forbs\(26));

-- Location: LCCOMB_X23_Y17_N22
\inst16|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Add0~52_combout\ = (\inst16|count_forbs\(27) & (\inst16|Add0~51\ $ (GND))) # (!\inst16|count_forbs\(27) & (!\inst16|Add0~51\ & VCC))
-- \inst16|Add0~53\ = CARRY((\inst16|count_forbs\(27) & !\inst16|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|count_forbs\(27),
	datad => VCC,
	cin => \inst16|Add0~51\,
	combout => \inst16|Add0~52_combout\,
	cout => \inst16|Add0~53\);

-- Location: FF_X23_Y17_N23
\inst16|count_forbs[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U1|clkout~clkctrl_outclk\,
	d => \inst16|Add0~52_combout\,
	ena => \inst16|count_forbs[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|count_forbs\(27));

-- Location: LCCOMB_X23_Y17_N24
\inst16|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Add0~54_combout\ = (\inst16|count_forbs\(28) & (!\inst16|Add0~53\)) # (!\inst16|count_forbs\(28) & ((\inst16|Add0~53\) # (GND)))
-- \inst16|Add0~55\ = CARRY((!\inst16|Add0~53\) # (!\inst16|count_forbs\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst16|count_forbs\(28),
	datad => VCC,
	cin => \inst16|Add0~53\,
	combout => \inst16|Add0~54_combout\,
	cout => \inst16|Add0~55\);

-- Location: FF_X23_Y17_N25
\inst16|count_forbs[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U1|clkout~clkctrl_outclk\,
	d => \inst16|Add0~54_combout\,
	ena => \inst16|count_forbs[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|count_forbs\(28));

-- Location: LCCOMB_X23_Y17_N26
\inst16|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Add0~56_combout\ = (\inst16|count_forbs\(29) & (\inst16|Add0~55\ $ (GND))) # (!\inst16|count_forbs\(29) & (!\inst16|Add0~55\ & VCC))
-- \inst16|Add0~57\ = CARRY((\inst16|count_forbs\(29) & !\inst16|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|count_forbs\(29),
	datad => VCC,
	cin => \inst16|Add0~55\,
	combout => \inst16|Add0~56_combout\,
	cout => \inst16|Add0~57\);

-- Location: FF_X23_Y17_N27
\inst16|count_forbs[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U1|clkout~clkctrl_outclk\,
	d => \inst16|Add0~56_combout\,
	ena => \inst16|count_forbs[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|count_forbs\(29));

-- Location: LCCOMB_X23_Y17_N28
\inst16|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Add0~58_combout\ = (\inst16|count_forbs\(30) & (!\inst16|Add0~57\)) # (!\inst16|count_forbs\(30) & ((\inst16|Add0~57\) # (GND)))
-- \inst16|Add0~59\ = CARRY((!\inst16|Add0~57\) # (!\inst16|count_forbs\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst16|count_forbs\(30),
	datad => VCC,
	cin => \inst16|Add0~57\,
	combout => \inst16|Add0~58_combout\,
	cout => \inst16|Add0~59\);

-- Location: FF_X23_Y17_N29
\inst16|count_forbs[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U1|clkout~clkctrl_outclk\,
	d => \inst16|Add0~58_combout\,
	ena => \inst16|count_forbs[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|count_forbs\(30));

-- Location: LCCOMB_X23_Y19_N4
\inst16|model_bs~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|model_bs~6_combout\ = (!\inst16|count_forbs\(22) & (!\inst16|count_forbs\(24) & (!\inst16|count_forbs\(23) & !\inst16|count_forbs\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|count_forbs\(22),
	datab => \inst16|count_forbs\(24),
	datac => \inst16|count_forbs\(23),
	datad => \inst16|count_forbs\(25),
	combout => \inst16|model_bs~6_combout\);

-- Location: LCCOMB_X24_Y19_N20
\inst16|model_bs~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|model_bs~5_combout\ = (!\inst16|count_forbs\(21) & (!\inst16|count_forbs\(20) & (!\inst16|count_forbs\(19) & !\inst16|count_forbs\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|count_forbs\(21),
	datab => \inst16|count_forbs\(20),
	datac => \inst16|count_forbs\(19),
	datad => \inst16|count_forbs\(18),
	combout => \inst16|model_bs~5_combout\);

-- Location: LCCOMB_X24_Y17_N20
\inst16|model_bs~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|model_bs~7_combout\ = (!\inst16|count_forbs\(27) & (!\inst16|count_forbs\(28) & (!\inst16|count_forbs\(29) & !\inst16|count_forbs\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|count_forbs\(27),
	datab => \inst16|count_forbs\(28),
	datac => \inst16|count_forbs\(29),
	datad => \inst16|count_forbs\(26),
	combout => \inst16|model_bs~7_combout\);

-- Location: LCCOMB_X23_Y19_N2
\inst16|model_bs~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|model_bs~8_combout\ = (!\inst16|count_forbs\(30) & (\inst16|model_bs~6_combout\ & (\inst16|model_bs~5_combout\ & \inst16|model_bs~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|count_forbs\(30),
	datab => \inst16|model_bs~6_combout\,
	datac => \inst16|model_bs~5_combout\,
	datad => \inst16|model_bs~7_combout\,
	combout => \inst16|model_bs~8_combout\);

-- Location: LCCOMB_X23_Y17_N30
\inst16|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Add0~60_combout\ = \inst16|count_forbs\(31) $ (!\inst16|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|count_forbs\(31),
	cin => \inst16|Add0~59\,
	combout => \inst16|Add0~60_combout\);

-- Location: FF_X23_Y17_N31
\inst16|count_forbs[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U1|clkout~clkctrl_outclk\,
	d => \inst16|Add0~60_combout\,
	ena => \inst16|count_forbs[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|count_forbs\(31));

-- Location: LCCOMB_X24_Y18_N2
\inst16|model_bs~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|model_bs~9_combout\ = (!\inst16|count_forbs\(31) & ((\model_bs~input_o\ & ((\inst16|Add0~0_combout\))) # (!\model_bs~input_o\ & (\inst16|count_forbs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \model_bs~input_o\,
	datab => \inst16|count_forbs\(0),
	datac => \inst16|count_forbs\(31),
	datad => \inst16|Add0~0_combout\,
	combout => \inst16|model_bs~9_combout\);

-- Location: LCCOMB_X23_Y19_N14
\inst16|model_bs~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|model_bs~10_combout\ = ((!\inst16|model_bs~9_combout\) # (!\inst16|model_bs~8_combout\)) # (!\inst16|model_bs~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|model_bs~4_combout\,
	datab => \inst16|model_bs~8_combout\,
	datad => \inst16|model_bs~9_combout\,
	combout => \inst16|model_bs~10_combout\);

-- Location: FF_X23_Y19_N15
\inst16|model_bs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U1|clkout~clkctrl_outclk\,
	d => \inst16|model_bs~10_combout\,
	ena => \inst16|signal_go~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|model_bs~q\);

-- Location: LCCOMB_X24_Y19_N30
\inst16|NextState~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|NextState~14_combout\ = (\inst16|Equal0~0_combout\) # ((\inst16|model_bs~q\ & (\input[0]~input_o\)) # (!\inst16|model_bs~q\ & ((\input[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Equal0~0_combout\,
	datab => \input[0]~input_o\,
	datac => \input[3]~input_o\,
	datad => \inst16|model_bs~q\,
	combout => \inst16|NextState~14_combout\);

-- Location: LCCOMB_X23_Y19_N10
\inst16|NextState~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|NextState~21_combout\ = (\inst16|Equal0~0_combout\ & (\inst16|NextState~14_combout\ & !\inst16|SwitchToNextState~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|Equal0~0_combout\,
	datac => \inst16|NextState~14_combout\,
	datad => \inst16|SwitchToNextState~2_combout\,
	combout => \inst16|NextState~21_combout\);

-- Location: FF_X23_Y19_N11
\inst16|NextState.STOP_READY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U2|clkout~clkctrl_outclk\,
	d => \inst16|NextState~21_combout\,
	ena => \inst16|SwitchToNextState~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|NextState.STOP_READY~q\);

-- Location: LCCOMB_X23_Y19_N20
\inst16|SwitchToNextState~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|SwitchToNextState~2_combout\ = (\inst16|NextState.STOP_READY~q\ & (!\inst16|count_forbs\(31) & ((!\inst16|model_bs~8_combout\) # (!\inst16|model_bs~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|NextState.STOP_READY~q\,
	datab => \inst16|count_forbs\(31),
	datac => \inst16|model_bs~4_combout\,
	datad => \inst16|model_bs~8_combout\,
	combout => \inst16|SwitchToNextState~2_combout\);

-- Location: LCCOMB_X23_Y19_N30
\inst16|NextState.STOP~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|NextState.STOP~feeder_combout\ = \inst16|SwitchToNextState~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst16|SwitchToNextState~2_combout\,
	combout => \inst16|NextState.STOP~feeder_combout\);

-- Location: FF_X23_Y19_N31
\inst16|NextState.STOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U2|clkout~clkctrl_outclk\,
	d => \inst16|NextState.STOP~feeder_combout\,
	ena => \inst16|SwitchToNextState~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|NextState.STOP~q\);

-- Location: LCCOMB_X26_Y19_N4
\inst16|NextState~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|NextState~15_combout\ = (!\input[2]~input_o\ & (\input[1]~input_o\ & \input[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input[2]~input_o\,
	datac => \input[1]~input_o\,
	datad => \input[0]~input_o\,
	combout => \inst16|NextState~15_combout\);

-- Location: LCCOMB_X23_Y19_N0
\inst16|NextState~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|NextState~16_combout\ = (\inst16|NextState~15_combout\ & (\input[3]~input_o\ & (\inst16|NextState~14_combout\ & !\inst16|SwitchToNextState~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|NextState~15_combout\,
	datab => \input[3]~input_o\,
	datac => \inst16|NextState~14_combout\,
	datad => \inst16|SwitchToNextState~2_combout\,
	combout => \inst16|NextState~16_combout\);

-- Location: FF_X23_Y19_N1
\inst16|NextState.TURN_RIGHTW\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U2|clkout~clkctrl_outclk\,
	d => \inst16|NextState~16_combout\,
	ena => \inst16|SwitchToNextState~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|NextState.TURN_RIGHTW~q\);

-- Location: LCCOMB_X21_Y19_N8
\inst16|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|WideOr0~0_combout\ = (!\inst16|NextState.STOP~q\ & !\inst16|NextState.TURN_RIGHTW~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|NextState.STOP~q\,
	datad => \inst16|NextState.TURN_RIGHTW~q\,
	combout => \inst16|WideOr0~0_combout\);

-- Location: FF_X21_Y19_N9
\inst16|ref_L[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U2|clkout~clkctrl_outclk\,
	d => \inst16|WideOr0~0_combout\,
	ena => \inst16|SwitchToNextState~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|ref_L\(3));

-- Location: LCCOMB_X26_Y19_N2
\inst16|NextState~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|NextState~19_combout\ = (\input[2]~input_o\ & !\input[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input[2]~input_o\,
	datac => \input[1]~input_o\,
	combout => \inst16|NextState~19_combout\);

-- Location: LCCOMB_X23_Y19_N24
\inst16|NextState~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|NextState~20_combout\ = (\inst16|NextState~14_combout\ & (\input[3]~input_o\ & (\inst16|NextState~19_combout\ & !\inst16|SwitchToNextState~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|NextState~14_combout\,
	datab => \input[3]~input_o\,
	datac => \inst16|NextState~19_combout\,
	datad => \inst16|SwitchToNextState~2_combout\,
	combout => \inst16|NextState~20_combout\);

-- Location: FF_X23_Y19_N25
\inst16|NextState.TURN_LEFTW\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U2|clkout~clkctrl_outclk\,
	d => \inst16|NextState~20_combout\,
	ena => \inst16|SwitchToNextState~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|NextState.TURN_LEFTW~q\);

-- Location: LCCOMB_X21_Y19_N6
\inst16|WideOr2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|WideOr2~combout\ = (!\inst16|NextState.STOP~q\ & (!\inst16|NextState.TURN_LEFTW~q\ & !\inst16|NextState.TURN_RIGHTW~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|NextState.STOP~q\,
	datac => \inst16|NextState.TURN_LEFTW~q\,
	datad => \inst16|NextState.TURN_RIGHTW~q\,
	combout => \inst16|WideOr2~combout\);

-- Location: FF_X21_Y19_N7
\inst16|ref_L[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U2|clkout~clkctrl_outclk\,
	d => \inst16|WideOr2~combout\,
	ena => \inst16|SwitchToNextState~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|ref_L\(2));

-- Location: FF_X21_Y19_N3
\inst16|ref_L[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U2|clkout~clkctrl_outclk\,
	asdata => \inst16|NextState.TURN_LEFTW~q\,
	sload => VCC,
	ena => \inst16|SwitchToNextState~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|ref_L\(0));

-- Location: LCCOMB_X26_Y19_N30
\inst16|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Mux0~0_combout\ = (\input[2]~input_o\ & (\input[1]~input_o\ & (\input[3]~input_o\ $ (\input[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[3]~input_o\,
	datab => \input[2]~input_o\,
	datac => \input[1]~input_o\,
	datad => \input[0]~input_o\,
	combout => \inst16|Mux0~0_combout\);

-- Location: LCCOMB_X23_Y19_N26
\inst16|NextState~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|NextState~17_combout\ = (\inst16|model_bs~q\ & (\inst16|Mux0~0_combout\ & ((\inst16|Equal0~0_combout\) # (\input[0]~input_o\)))) # (!\inst16|model_bs~q\ & (\inst16|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Equal0~0_combout\,
	datab => \inst16|Mux0~0_combout\,
	datac => \inst16|model_bs~q\,
	datad => \input[0]~input_o\,
	combout => \inst16|NextState~17_combout\);

-- Location: LCCOMB_X23_Y19_N6
\inst16|NextState~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|NextState~18_combout\ = (!\inst16|SwitchToNextState~2_combout\ & ((\inst16|model_bs~q\ & ((\inst16|NextState~17_combout\))) # (!\inst16|model_bs~q\ & (!\input[3]~input_o\ & !\inst16|NextState~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[3]~input_o\,
	datab => \inst16|model_bs~q\,
	datac => \inst16|NextState~17_combout\,
	datad => \inst16|SwitchToNextState~2_combout\,
	combout => \inst16|NextState~18_combout\);

-- Location: FF_X23_Y19_N7
\inst16|NextState.TURN_LEFT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U2|clkout~clkctrl_outclk\,
	d => \inst16|NextState~18_combout\,
	ena => \inst16|SwitchToNextState~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|NextState.TURN_LEFT~q\);

-- Location: LCCOMB_X23_Y19_N28
\inst16|NextState~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|NextState~12_combout\ = (\inst16|model_bs~q\ & (((\inst16|Equal0~0_combout\)))) # (!\inst16|model_bs~q\ & (\inst16|Mux0~0_combout\ & ((\input[3]~input_o\) # (\inst16|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[3]~input_o\,
	datab => \inst16|Mux0~0_combout\,
	datac => \inst16|model_bs~q\,
	datad => \inst16|Equal0~0_combout\,
	combout => \inst16|NextState~12_combout\);

-- Location: LCCOMB_X23_Y19_N16
\inst16|NextState~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|NextState~13_combout\ = (!\inst16|SwitchToNextState~2_combout\ & ((\inst16|NextState~12_combout\ & (!\inst16|model_bs~q\)) # (!\inst16|NextState~12_combout\ & (\inst16|model_bs~q\ & !\input[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|NextState~12_combout\,
	datab => \inst16|model_bs~q\,
	datac => \input[0]~input_o\,
	datad => \inst16|SwitchToNextState~2_combout\,
	combout => \inst16|NextState~13_combout\);

-- Location: FF_X23_Y19_N17
\inst16|NextState.TURN_RIGHT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U2|clkout~clkctrl_outclk\,
	d => \inst16|NextState~13_combout\,
	ena => \inst16|SwitchToNextState~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|NextState.TURN_RIGHT~q\);

-- Location: LCCOMB_X21_Y19_N28
\inst16|WideOr3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|WideOr3~combout\ = (\inst16|NextState.TURN_LEFTW~q\) # ((\inst16|NextState.TURN_LEFT~q\) # (\inst16|NextState.TURN_RIGHT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|NextState.TURN_LEFTW~q\,
	datac => \inst16|NextState.TURN_LEFT~q\,
	datad => \inst16|NextState.TURN_RIGHT~q\,
	combout => \inst16|WideOr3~combout\);

-- Location: FF_X21_Y19_N29
\inst16|ref_L[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U2|clkout~clkctrl_outclk\,
	d => \inst16|WideOr3~combout\,
	ena => \inst16|SwitchToNextState~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|ref_L\(1));

-- Location: LCCOMB_X21_Y19_N2
\inst2|inst|inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|inst|LessThan0~0_combout\ = (\inst2|inst|inst4|cnt\(1) & (!\inst2|inst|inst4|cnt\(0) & (\inst16|ref_L\(0) & \inst16|ref_L\(1)))) # (!\inst2|inst|inst4|cnt\(1) & ((\inst16|ref_L\(1)) # ((!\inst2|inst|inst4|cnt\(0) & \inst16|ref_L\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|inst4|cnt\(1),
	datab => \inst2|inst|inst4|cnt\(0),
	datac => \inst16|ref_L\(0),
	datad => \inst16|ref_L\(1),
	combout => \inst2|inst|inst|LessThan0~0_combout\);

-- Location: LCCOMB_X21_Y19_N0
\inst2|inst|inst|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|inst|LessThan0~1_combout\ = (\inst16|ref_L\(2) & ((\inst2|inst|inst|LessThan0~0_combout\) # (!\inst2|inst|inst4|cnt\(2)))) # (!\inst16|ref_L\(2) & (!\inst2|inst|inst4|cnt\(2) & \inst2|inst|inst|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ref_L\(2),
	datab => \inst2|inst|inst4|cnt\(2),
	datad => \inst2|inst|inst|LessThan0~0_combout\,
	combout => \inst2|inst|inst|LessThan0~1_combout\);

-- Location: LCCOMB_X21_Y19_N10
\inst2|inst|inst|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|inst|LessThan0~2_combout\ = (!\inst2|inst|inst4|cnt\(4) & ((\inst2|inst|inst4|cnt\(3) & (\inst16|ref_L\(3) & \inst2|inst|inst|LessThan0~1_combout\)) # (!\inst2|inst|inst4|cnt\(3) & ((\inst16|ref_L\(3)) # 
-- (\inst2|inst|inst|LessThan0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|inst4|cnt\(4),
	datab => \inst2|inst|inst4|cnt\(3),
	datac => \inst16|ref_L\(3),
	datad => \inst2|inst|inst|LessThan0~1_combout\,
	combout => \inst2|inst|inst|LessThan0~2_combout\);

-- Location: LCCOMB_X21_Y19_N4
\inst2|inst|inst|PWM~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|inst|PWM~feeder_combout\ = \inst2|inst|inst|LessThan0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|inst|LessThan0~2_combout\,
	combout => \inst2|inst|inst|PWM~feeder_combout\);

-- Location: FF_X21_Y19_N5
\inst2|inst|inst|PWM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U0|clkout~clkctrl_outclk\,
	d => \inst2|inst|inst|PWM~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|inst|PWM~q\);

-- Location: LCCOMB_X21_Y19_N26
\inst2|inst|inst1|PWM~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|inst1|PWM~feeder_combout\ = \inst2|inst|inst|LessThan0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|inst|LessThan0~2_combout\,
	combout => \inst2|inst|inst1|PWM~feeder_combout\);

-- Location: FF_X21_Y19_N27
\inst2|inst|inst1|PWM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U0|clkout~clkctrl_outclk\,
	d => \inst2|inst|inst1|PWM~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|inst1|PWM~q\);

-- Location: LCCOMB_X22_Y19_N24
\inst16|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|WideOr1~0_combout\ = (!\inst16|NextState.STOP~q\ & !\inst16|NextState.TURN_LEFTW~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|NextState.STOP~q\,
	datad => \inst16|NextState.TURN_LEFTW~q\,
	combout => \inst16|WideOr1~0_combout\);

-- Location: FF_X22_Y19_N25
\inst16|ref_R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U2|clkout~clkctrl_outclk\,
	d => \inst16|WideOr1~0_combout\,
	ena => \inst16|SwitchToNextState~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|ref_R\(3));

-- Location: FF_X22_Y19_N21
\inst16|ref_R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U2|clkout~clkctrl_outclk\,
	asdata => \inst16|NextState.TURN_RIGHTW~q\,
	sload => VCC,
	ena => \inst16|SwitchToNextState~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|ref_R\(0));

-- Location: LCCOMB_X22_Y19_N2
\inst16|WideOr4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|WideOr4~combout\ = (\inst16|NextState.TURN_LEFT~q\) # ((\inst16|NextState.TURN_RIGHTW~q\) # (\inst16|NextState.TURN_RIGHT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|NextState.TURN_LEFT~q\,
	datac => \inst16|NextState.TURN_RIGHTW~q\,
	datad => \inst16|NextState.TURN_RIGHT~q\,
	combout => \inst16|WideOr4~combout\);

-- Location: FF_X22_Y19_N3
\inst16|ref_R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U2|clkout~clkctrl_outclk\,
	d => \inst16|WideOr4~combout\,
	ena => \inst16|SwitchToNextState~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|ref_R\(1));

-- Location: LCCOMB_X22_Y19_N20
\inst2|inst|inst2|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|inst2|LessThan0~0_combout\ = (\inst2|inst|inst4|cnt\(1) & (!\inst2|inst|inst4|cnt\(0) & (\inst16|ref_R\(0) & \inst16|ref_R\(1)))) # (!\inst2|inst|inst4|cnt\(1) & ((\inst16|ref_R\(1)) # ((!\inst2|inst|inst4|cnt\(0) & \inst16|ref_R\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|inst4|cnt\(0),
	datab => \inst2|inst|inst4|cnt\(1),
	datac => \inst16|ref_R\(0),
	datad => \inst16|ref_R\(1),
	combout => \inst2|inst|inst2|LessThan0~0_combout\);

-- Location: LCCOMB_X22_Y19_N12
\inst2|inst|inst2|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|inst2|LessThan0~1_combout\ = (\inst2|inst|inst4|cnt\(2) & (\inst16|ref_L\(2) & \inst2|inst|inst2|LessThan0~0_combout\)) # (!\inst2|inst|inst4|cnt\(2) & ((\inst16|ref_L\(2)) # (\inst2|inst|inst2|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|inst4|cnt\(2),
	datab => \inst16|ref_L\(2),
	datad => \inst2|inst|inst2|LessThan0~0_combout\,
	combout => \inst2|inst|inst2|LessThan0~1_combout\);

-- Location: LCCOMB_X22_Y19_N6
\inst2|inst|inst2|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|inst2|LessThan0~2_combout\ = (!\inst2|inst|inst4|cnt\(4) & ((\inst2|inst|inst4|cnt\(3) & (\inst16|ref_R\(3) & \inst2|inst|inst2|LessThan0~1_combout\)) # (!\inst2|inst|inst4|cnt\(3) & ((\inst16|ref_R\(3)) # 
-- (\inst2|inst|inst2|LessThan0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|inst4|cnt\(3),
	datab => \inst2|inst|inst4|cnt\(4),
	datac => \inst16|ref_R\(3),
	datad => \inst2|inst|inst2|LessThan0~1_combout\,
	combout => \inst2|inst|inst2|LessThan0~2_combout\);

-- Location: LCCOMB_X22_Y19_N8
\inst2|inst|inst2|PWM~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|inst2|PWM~feeder_combout\ = \inst2|inst|inst2|LessThan0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|inst2|LessThan0~2_combout\,
	combout => \inst2|inst|inst2|PWM~feeder_combout\);

-- Location: FF_X22_Y19_N9
\inst2|inst|inst2|PWM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U0|clkout~clkctrl_outclk\,
	d => \inst2|inst|inst2|PWM~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|inst2|PWM~q\);

-- Location: LCCOMB_X22_Y19_N30
\inst2|inst|inst3|PWM~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|inst3|PWM~feeder_combout\ = \inst2|inst|inst2|LessThan0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|inst2|LessThan0~2_combout\,
	combout => \inst2|inst|inst3|PWM~feeder_combout\);

-- Location: FF_X22_Y19_N31
\inst2|inst|inst3|PWM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U0|clkout~clkctrl_outclk\,
	d => \inst2|inst|inst3|PWM~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|inst3|PWM~q\);

-- Location: LCCOMB_X19_Y19_N0
\inst16|out_start~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|out_start~feeder_combout\ = \inst16|signal_go~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst16|signal_go~q\,
	combout => \inst16|out_start~feeder_combout\);

-- Location: FF_X19_Y19_N1
\inst16|out_start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U2|clkout~clkctrl_outclk\,
	d => \inst16|out_start~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|out_start~q\);

-- Location: LCCOMB_X12_Y17_N10
\inst16|send_open_temp1[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|send_open_temp1[0]~0_combout\ = (\inst16|send_open_temp1\(0)) # (!\if_start~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|send_open_temp1\(0),
	datad => \if_start~input_o\,
	combout => \inst16|send_open_temp1[0]~0_combout\);

-- Location: FF_X12_Y17_N11
\inst16|send_open_temp1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U2|clkout~clkctrl_outclk\,
	d => \inst16|send_open_temp1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|send_open_temp1\(0));

-- Location: LCCOMB_X12_Y17_N12
\inst16|send_start_temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|send_start_temp~0_combout\ = (\inst16|send_start_temp~q\) # ((\inst16|send_open_temp1\(0) & !\model_bs~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|send_open_temp1\(0),
	datac => \inst16|send_start_temp~q\,
	datad => \model_bs~input_o\,
	combout => \inst16|send_start_temp~0_combout\);

-- Location: FF_X12_Y17_N13
\inst16|send_start_temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U1|clkout~clkctrl_outclk\,
	d => \inst16|send_start_temp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|send_start_temp~q\);

-- Location: FF_X22_Y19_N11
\inst16|l[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U2|clkout~clkctrl_outclk\,
	asdata => \inst16|NextState.TURN_RIGHT~q\,
	sload => VCC,
	ena => \inst16|SwitchToNextState~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|l\(0));

-- Location: LCCOMB_X22_Y19_N28
\inst16|WideOr0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|WideOr0~combout\ = (!\inst16|NextState.TURN_RIGHTW~q\ & (!\inst16|NextState.STOP~q\ & !\inst16|NextState.TURN_RIGHT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|NextState.TURN_RIGHTW~q\,
	datac => \inst16|NextState.STOP~q\,
	datad => \inst16|NextState.TURN_RIGHT~q\,
	combout => \inst16|WideOr0~combout\);

-- Location: FF_X22_Y19_N29
\inst16|l[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U2|clkout~clkctrl_outclk\,
	d => \inst16|WideOr0~combout\,
	ena => \inst16|SwitchToNextState~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|l\(1));

-- Location: FF_X22_Y19_N13
\inst16|r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U2|clkout~clkctrl_outclk\,
	asdata => \inst16|NextState.TURN_LEFT~q\,
	sload => VCC,
	ena => \inst16|SwitchToNextState~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|r\(0));

-- Location: LCCOMB_X22_Y19_N18
\inst16|WideOr1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|WideOr1~combout\ = (!\inst16|NextState.TURN_LEFT~q\ & (!\inst16|NextState.STOP~q\ & !\inst16|NextState.TURN_LEFTW~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|NextState.TURN_LEFT~q\,
	datac => \inst16|NextState.STOP~q\,
	datad => \inst16|NextState.TURN_LEFTW~q\,
	combout => \inst16|WideOr1~combout\);

-- Location: FF_X22_Y19_N19
\inst16|r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U2|clkout~clkctrl_outclk\,
	d => \inst16|WideOr1~combout\,
	ena => \inst16|SwitchToNextState~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|r\(1));

-- Location: LCCOMB_X22_Y19_N0
\inst2|inst1|moto_sy[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|moto_sy[3]~0_combout\ = (!\inst16|l\(0) & ((\inst16|r\(1) & ((!\inst16|r\(0)))) # (!\inst16|r\(1) & (\inst16|l\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|l\(0),
	datab => \inst16|l\(1),
	datac => \inst16|r\(0),
	datad => \inst16|r\(1),
	combout => \inst2|inst1|moto_sy[3]~0_combout\);

-- Location: LCCOMB_X22_Y19_N14
\inst2|inst1|moto_sy[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|moto_sy[2]~1_combout\ = (\inst16|l\(0) & (!\inst16|l\(1) & (!\inst16|r\(0) & \inst16|r\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|l\(0),
	datab => \inst16|l\(1),
	datac => \inst16|r\(0),
	datad => \inst16|r\(1),
	combout => \inst2|inst1|moto_sy[2]~1_combout\);

-- Location: LCCOMB_X22_Y19_N16
\inst2|inst1|moto_sz[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|moto_sz[3]~0_combout\ = (!\inst16|r\(0) & ((\inst16|l\(1) & (!\inst16|l\(0))) # (!\inst16|l\(1) & ((\inst16|r\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|l\(0),
	datab => \inst16|l\(1),
	datac => \inst16|r\(0),
	datad => \inst16|r\(1),
	combout => \inst2|inst1|moto_sz[3]~0_combout\);

-- Location: LCCOMB_X22_Y19_N26
\inst2|inst1|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|process_0~0_combout\ = (!\inst16|l\(0) & (\inst16|l\(1) & (\inst16|r\(0) & !\inst16|r\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|l\(0),
	datab => \inst16|l\(1),
	datac => \inst16|r\(0),
	datad => \inst16|r\(1),
	combout => \inst2|inst1|process_0~0_combout\);

-- Location: FF_X14_Y17_N21
\inst16|out_test[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U2|clkout~clkctrl_outclk\,
	asdata => \input[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|out_test\(3));

-- Location: FF_X26_Y19_N17
\inst16|out_test[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U2|clkout~clkctrl_outclk\,
	asdata => \input[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|out_test\(2));

-- Location: LCCOMB_X33_Y17_N4
\inst16|out_test[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|out_test[1]~feeder_combout\ = \input[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input[1]~input_o\,
	combout => \inst16|out_test[1]~feeder_combout\);

-- Location: FF_X33_Y17_N5
\inst16|out_test[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U2|clkout~clkctrl_outclk\,
	d => \inst16|out_test[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|out_test\(1));

-- Location: LCCOMB_X33_Y17_N2
\inst16|out_test[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|out_test[0]~feeder_combout\ = \input[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input[0]~input_o\,
	combout => \inst16|out_test[0]~feeder_combout\);

-- Location: FF_X33_Y17_N3
\inst16|out_test[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|U2|clkout~clkctrl_outclk\,
	d => \inst16|out_test[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|out_test\(0));

ww_pwmh_l <= \pwmh_l~output_o\;

ww_pwmq_l <= \pwmq_l~output_o\;

ww_pwmq_r <= \pwmq_r~output_o\;

ww_pwmh_r <= \pwmh_r~output_o\;

ww_show_model <= \show_model~output_o\;

ww_out_start_test <= \out_start_test~output_o\;

ww_y <= \y~output_o\;

ww_tiaozhi <= \tiaozhi~output_o\;

ww_if_send_stop <= \if_send_stop~output_o\;

ww_if_send_start <= \if_send_start~output_o\;

ww_vcc_for_hw <= \vcc_for_hw~output_o\;

ww_gnd_for_hw <= \gnd_for_hw~output_o\;

ww_gnd_for_hwout <= \gnd_for_hwout~output_o\;

ww_motor_sy(3) <= \motor_sy[3]~output_o\;

ww_motor_sy(2) <= \motor_sy[2]~output_o\;

ww_motor_sy(1) <= \motor_sy[1]~output_o\;

ww_motor_sy(0) <= \motor_sy[0]~output_o\;

ww_motor_sz(3) <= \motor_sz[3]~output_o\;

ww_motor_sz(2) <= \motor_sz[2]~output_o\;

ww_motor_sz(1) <= \motor_sz[1]~output_o\;

ww_motor_sz(0) <= \motor_sz[0]~output_o\;

ww_out_test(3) <= \out_test[3]~output_o\;

ww_out_test(2) <= \out_test[2]~output_o\;

ww_out_test(1) <= \out_test[1]~output_o\;

ww_out_test(0) <= \out_test[0]~output_o\;
END structure;


