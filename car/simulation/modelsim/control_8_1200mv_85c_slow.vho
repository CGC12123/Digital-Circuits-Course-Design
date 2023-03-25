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

-- DATE "12/12/2022 10:02:10"

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

ENTITY 	control IS
    PORT (
	clk_50 : IN std_logic;
	input : IN std_logic_vector(3 DOWNTO 0);
	if_start : IN std_logic;
	model_fb : IN std_logic;
	l : OUT std_logic_vector(1 DOWNTO 0);
	r : OUT std_logic_vector(1 DOWNTO 0);
	ref_L : OUT STD.STANDARD.integer range 0 TO 21;
	ref_R : OUT STD.STANDARD.integer range 0 TO 21;
	transform_out : OUT std_logic_vector(7 DOWNTO 0);
	key : OUT std_logic;
	send_start_temp : OUT std_logic;
	send_stop_temp : OUT std_logic;
	beep : OUT std_logic
	);
END control;

-- Design Ports Information
-- l[0]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l[1]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[0]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[1]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ref_L[0]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ref_L[1]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ref_L[2]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ref_L[3]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ref_L[4]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ref_R[0]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ref_R[1]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ref_R[2]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ref_R[3]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ref_R[4]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- transform_out[0]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- transform_out[1]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- transform_out[2]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- transform_out[3]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- transform_out[4]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- transform_out[5]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- transform_out[6]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- transform_out[7]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send_start_temp	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send_stop_temp	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beep	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[1]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- if_start	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[2]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- model_fb	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF control IS
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
SIGNAL ww_model_fb : std_logic;
SIGNAL ww_l : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_r : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ref_L : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_ref_R : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_transform_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_key : std_logic;
SIGNAL ww_send_start_temp : std_logic;
SIGNAL ww_send_stop_temp : std_logic;
SIGNAL ww_beep : std_logic;
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
SIGNAL \transform_out[0]~output_o\ : std_logic;
SIGNAL \transform_out[1]~output_o\ : std_logic;
SIGNAL \transform_out[2]~output_o\ : std_logic;
SIGNAL \transform_out[3]~output_o\ : std_logic;
SIGNAL \transform_out[4]~output_o\ : std_logic;
SIGNAL \transform_out[5]~output_o\ : std_logic;
SIGNAL \transform_out[6]~output_o\ : std_logic;
SIGNAL \transform_out[7]~output_o\ : std_logic;
SIGNAL \key~output_o\ : std_logic;
SIGNAL \send_start_temp~output_o\ : std_logic;
SIGNAL \send_stop_temp~output_o\ : std_logic;
SIGNAL \beep~output_o\ : std_logic;
SIGNAL \clk_50~input_o\ : std_logic;
SIGNAL \clk_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \input[3]~input_o\ : std_logic;
SIGNAL \model_fb~input_o\ : std_logic;
SIGNAL \input[2]~input_o\ : std_logic;
SIGNAL \input[0]~input_o\ : std_logic;
SIGNAL \input[1]~input_o\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \count_forbs[0]~93_combout\ : std_logic;
SIGNAL \count_forbs[1]~31_combout\ : std_logic;
SIGNAL \count_forbs[1]~32\ : std_logic;
SIGNAL \count_forbs[2]~33_combout\ : std_logic;
SIGNAL \model_bs~0_combout\ : std_logic;
SIGNAL \count_forbs[2]~34\ : std_logic;
SIGNAL \count_forbs[3]~35_combout\ : std_logic;
SIGNAL \count_forbs[3]~36\ : std_logic;
SIGNAL \count_forbs[4]~37_combout\ : std_logic;
SIGNAL \count_forbs[4]~38\ : std_logic;
SIGNAL \count_forbs[5]~39_combout\ : std_logic;
SIGNAL \count_forbs[5]~40\ : std_logic;
SIGNAL \count_forbs[6]~41_combout\ : std_logic;
SIGNAL \count_forbs[6]~42\ : std_logic;
SIGNAL \count_forbs[7]~43_combout\ : std_logic;
SIGNAL \count_forbs[7]~44\ : std_logic;
SIGNAL \count_forbs[8]~45_combout\ : std_logic;
SIGNAL \count_forbs[8]~46\ : std_logic;
SIGNAL \count_forbs[9]~47_combout\ : std_logic;
SIGNAL \count_forbs[9]~48\ : std_logic;
SIGNAL \count_forbs[10]~49_combout\ : std_logic;
SIGNAL \count_forbs[10]~50\ : std_logic;
SIGNAL \count_forbs[11]~51_combout\ : std_logic;
SIGNAL \count_forbs[11]~52\ : std_logic;
SIGNAL \count_forbs[12]~53_combout\ : std_logic;
SIGNAL \count_forbs[12]~54\ : std_logic;
SIGNAL \count_forbs[13]~55_combout\ : std_logic;
SIGNAL \count_forbs[13]~56\ : std_logic;
SIGNAL \count_forbs[14]~57_combout\ : std_logic;
SIGNAL \count_forbs[14]~58\ : std_logic;
SIGNAL \count_forbs[15]~59_combout\ : std_logic;
SIGNAL \count_forbs[15]~60\ : std_logic;
SIGNAL \count_forbs[16]~61_combout\ : std_logic;
SIGNAL \count_forbs[16]~62\ : std_logic;
SIGNAL \count_forbs[17]~63_combout\ : std_logic;
SIGNAL \count_forbs[17]~64\ : std_logic;
SIGNAL \count_forbs[18]~65_combout\ : std_logic;
SIGNAL \count_forbs[18]~66\ : std_logic;
SIGNAL \count_forbs[19]~67_combout\ : std_logic;
SIGNAL \count_forbs[19]~68\ : std_logic;
SIGNAL \count_forbs[20]~69_combout\ : std_logic;
SIGNAL \count_forbs[20]~70\ : std_logic;
SIGNAL \count_forbs[21]~71_combout\ : std_logic;
SIGNAL \count_forbs[21]~72\ : std_logic;
SIGNAL \count_forbs[22]~73_combout\ : std_logic;
SIGNAL \SwitchToNextState~6_combout\ : std_logic;
SIGNAL \count_forbs[22]~74\ : std_logic;
SIGNAL \count_forbs[23]~75_combout\ : std_logic;
SIGNAL \count_forbs[23]~76\ : std_logic;
SIGNAL \count_forbs[24]~77_combout\ : std_logic;
SIGNAL \count_forbs[24]~78\ : std_logic;
SIGNAL \count_forbs[25]~79_combout\ : std_logic;
SIGNAL \count_forbs[25]~80\ : std_logic;
SIGNAL \count_forbs[26]~81_combout\ : std_logic;
SIGNAL \count_forbs[26]~82\ : std_logic;
SIGNAL \count_forbs[27]~83_combout\ : std_logic;
SIGNAL \count_forbs[27]~84\ : std_logic;
SIGNAL \count_forbs[28]~85_combout\ : std_logic;
SIGNAL \count_forbs[28]~86\ : std_logic;
SIGNAL \count_forbs[29]~87_combout\ : std_logic;
SIGNAL \count_forbs[29]~88\ : std_logic;
SIGNAL \count_forbs[30]~89_combout\ : std_logic;
SIGNAL \count_forbs[30]~90\ : std_logic;
SIGNAL \count_forbs[31]~91_combout\ : std_logic;
SIGNAL \SwitchToNextState~7_combout\ : std_logic;
SIGNAL \SwitchToNextState~8_combout\ : std_logic;
SIGNAL \SwitchToNextState~9_combout\ : std_logic;
SIGNAL \SwitchToNextState~2_combout\ : std_logic;
SIGNAL \SwitchToNextState~1_combout\ : std_logic;
SIGNAL \SwitchToNextState~3_combout\ : std_logic;
SIGNAL \SwitchToNextState~4_combout\ : std_logic;
SIGNAL \SwitchToNextState~5_combout\ : std_logic;
SIGNAL \model_bs~1_combout\ : std_logic;
SIGNAL \model_bs~q\ : std_logic;
SIGNAL \NextState~15_combout\ : std_logic;
SIGNAL \if_start~input_o\ : std_logic;
SIGNAL \signal_go~0_combout\ : std_logic;
SIGNAL \signal_go~q\ : std_logic;
SIGNAL \NextState.STOP_READY~q\ : std_logic;
SIGNAL \SwitchToNextState~10_combout\ : std_logic;
SIGNAL \SwitchToNextState~11_combout\ : std_logic;
SIGNAL \NextState~10_combout\ : std_logic;
SIGNAL \NextState~11_combout\ : std_logic;
SIGNAL \NextState.TURN_RIGHT~q\ : std_logic;
SIGNAL \l[0]~reg0_q\ : std_logic;
SIGNAL \NextState~12_combout\ : std_logic;
SIGNAL \NextState~13_combout\ : std_logic;
SIGNAL \NextState.TURN_LEFTW~q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \NextState.FORWARD~q\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \NextState.TURN_LEFT~q\ : std_logic;
SIGNAL \WideOr1~combout\ : std_logic;
SIGNAL \l[1]~reg0_q\ : std_logic;
SIGNAL \r[0]~reg0feeder_combout\ : std_logic;
SIGNAL \r[0]~reg0_q\ : std_logic;
SIGNAL \NextState~14_combout\ : std_logic;
SIGNAL \NextState.TURN_RIGHTW~q\ : std_logic;
SIGNAL \WideOr2~combout\ : std_logic;
SIGNAL \r[1]~reg0_q\ : std_logic;
SIGNAL \ref_L[0]~reg0feeder_combout\ : std_logic;
SIGNAL \ref_L[0]~reg0_q\ : std_logic;
SIGNAL \NextState.START~feeder_combout\ : std_logic;
SIGNAL \NextState.START~q\ : std_logic;
SIGNAL \NextState.STOP~feeder_combout\ : std_logic;
SIGNAL \NextState.STOP~q\ : std_logic;
SIGNAL \WideOr4~combout\ : std_logic;
SIGNAL \ref_L[1]~reg0_q\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \ref_L[2]~reg0_q\ : std_logic;
SIGNAL \WideOr3~combout\ : std_logic;
SIGNAL \ref_L[3]~reg0_q\ : std_logic;
SIGNAL \ref_R[0]~reg0_q\ : std_logic;
SIGNAL \WideOr6~combout\ : std_logic;
SIGNAL \ref_R[1]~reg0_q\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \ref_R[2]~reg0_q\ : std_logic;
SIGNAL \WideOr5~combout\ : std_logic;
SIGNAL \ref_R[3]~reg0_q\ : std_logic;
SIGNAL \send_stop~feeder_combout\ : std_logic;
SIGNAL \send_stop_temp1[0]~0_combout\ : std_logic;
SIGNAL \send_stop~q\ : std_logic;
SIGNAL \send_open~feeder_combout\ : std_logic;
SIGNAL \send_open~q\ : std_logic;
SIGNAL \count~0_combout\ : std_logic;
SIGNAL \transform_out~0_combout\ : std_logic;
SIGNAL \transform_out[0]~reg0_q\ : std_logic;
SIGNAL \transform_out[2]~1_combout\ : std_logic;
SIGNAL \transform_out[2]~reg0_q\ : std_logic;
SIGNAL \send_start_temp~reg0feeder_combout\ : std_logic;
SIGNAL \send_start_temp~reg0_q\ : std_logic;
SIGNAL \send_stop_temp~reg0feeder_combout\ : std_logic;
SIGNAL \send_stop_temp~reg0_q\ : std_logic;
SIGNAL \count_forbeep[0]~93_combout\ : std_logic;
SIGNAL \count_forbeep[1]~31_combout\ : std_logic;
SIGNAL \count_forbeep[1]~32\ : std_logic;
SIGNAL \count_forbeep[2]~33_combout\ : std_logic;
SIGNAL \count_forbeep[2]~34\ : std_logic;
SIGNAL \count_forbeep[3]~35_combout\ : std_logic;
SIGNAL \count_forbeep[3]~36\ : std_logic;
SIGNAL \count_forbeep[4]~37_combout\ : std_logic;
SIGNAL \count_forbeep[4]~38\ : std_logic;
SIGNAL \count_forbeep[5]~39_combout\ : std_logic;
SIGNAL \count_forbeep[5]~40\ : std_logic;
SIGNAL \count_forbeep[6]~41_combout\ : std_logic;
SIGNAL \count_forbeep[6]~42\ : std_logic;
SIGNAL \count_forbeep[7]~43_combout\ : std_logic;
SIGNAL \count_forbeep[7]~44\ : std_logic;
SIGNAL \count_forbeep[8]~45_combout\ : std_logic;
SIGNAL \count_forbeep[8]~46\ : std_logic;
SIGNAL \count_forbeep[9]~47_combout\ : std_logic;
SIGNAL \count_forbeep[9]~48\ : std_logic;
SIGNAL \count_forbeep[10]~49_combout\ : std_logic;
SIGNAL \count_forbeep[10]~50\ : std_logic;
SIGNAL \count_forbeep[11]~51_combout\ : std_logic;
SIGNAL \count_forbeep[11]~52\ : std_logic;
SIGNAL \count_forbeep[12]~53_combout\ : std_logic;
SIGNAL \count_forbeep[12]~54\ : std_logic;
SIGNAL \count_forbeep[13]~55_combout\ : std_logic;
SIGNAL \count_forbeep[13]~56\ : std_logic;
SIGNAL \count_forbeep[14]~57_combout\ : std_logic;
SIGNAL \count_forbeep[14]~58\ : std_logic;
SIGNAL \count_forbeep[15]~59_combout\ : std_logic;
SIGNAL \count_forbeep[15]~60\ : std_logic;
SIGNAL \count_forbeep[16]~61_combout\ : std_logic;
SIGNAL \count_forbeep[16]~62\ : std_logic;
SIGNAL \count_forbeep[17]~63_combout\ : std_logic;
SIGNAL \count_forbeep[17]~64\ : std_logic;
SIGNAL \count_forbeep[18]~65_combout\ : std_logic;
SIGNAL \count_forbeep[18]~66\ : std_logic;
SIGNAL \count_forbeep[19]~67_combout\ : std_logic;
SIGNAL \count_forbeep[19]~68\ : std_logic;
SIGNAL \count_forbeep[20]~69_combout\ : std_logic;
SIGNAL \count_forbeep[20]~70\ : std_logic;
SIGNAL \count_forbeep[21]~71_combout\ : std_logic;
SIGNAL \count_forbeep[21]~72\ : std_logic;
SIGNAL \count_forbeep[22]~73_combout\ : std_logic;
SIGNAL \count_forbeep[22]~74\ : std_logic;
SIGNAL \count_forbeep[23]~75_combout\ : std_logic;
SIGNAL \count_forbeep[23]~76\ : std_logic;
SIGNAL \count_forbeep[24]~77_combout\ : std_logic;
SIGNAL \count_forbeep[24]~78\ : std_logic;
SIGNAL \count_forbeep[25]~79_combout\ : std_logic;
SIGNAL \count_forbeep[25]~80\ : std_logic;
SIGNAL \count_forbeep[26]~81_combout\ : std_logic;
SIGNAL \count_forbeep[26]~82\ : std_logic;
SIGNAL \count_forbeep[27]~83_combout\ : std_logic;
SIGNAL \count_forbeep[27]~84\ : std_logic;
SIGNAL \count_forbeep[28]~85_combout\ : std_logic;
SIGNAL \count_forbeep[28]~86\ : std_logic;
SIGNAL \count_forbeep[29]~87_combout\ : std_logic;
SIGNAL \count_forbeep[29]~88\ : std_logic;
SIGNAL \count_forbeep[30]~89_combout\ : std_logic;
SIGNAL \count_forbeep[30]~90\ : std_logic;
SIGNAL \count_forbeep[31]~91_combout\ : std_logic;
SIGNAL \Equal10~9_combout\ : std_logic;
SIGNAL \Equal10~5_combout\ : std_logic;
SIGNAL \Equal10~6_combout\ : std_logic;
SIGNAL \Equal10~7_combout\ : std_logic;
SIGNAL \Equal10~8_combout\ : std_logic;
SIGNAL \Equal10~3_combout\ : std_logic;
SIGNAL \Equal10~1_combout\ : std_logic;
SIGNAL \Equal10~0_combout\ : std_logic;
SIGNAL \Equal10~2_combout\ : std_logic;
SIGNAL \Equal10~4_combout\ : std_logic;
SIGNAL \Equal10~10_combout\ : std_logic;
SIGNAL \beep~reg0_q\ : std_logic;
SIGNAL count_forbeep : std_logic_vector(31 DOWNTO 0);
SIGNAL count_forbs : std_logic_vector(31 DOWNTO 0);
SIGNAL count : std_logic_vector(31 DOWNTO 0);
SIGNAL send_stop_temp1 : std_logic_vector(31 DOWNTO 0);

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
ww_model_fb <= model_fb;
l <= ww_l;
r <= ww_r;
ref_L <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_ref_L));
ref_R <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_ref_R));
transform_out <= ww_transform_out;
key <= ww_key;
send_start_temp <= ww_send_start_temp;
send_stop_temp <= ww_send_stop_temp;
beep <= ww_beep;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y20_N2
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

-- Location: IOOBUF_X34_Y20_N9
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

-- Location: IOOBUF_X28_Y24_N23
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

-- Location: IOOBUF_X34_Y11_N9
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

-- Location: IOOBUF_X34_Y10_N9
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

-- Location: IOOBUF_X34_Y11_N2
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

-- Location: IOOBUF_X34_Y17_N2
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

-- Location: IOOBUF_X34_Y19_N16
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

-- Location: IOOBUF_X0_Y21_N23
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

-- Location: IOOBUF_X34_Y17_N23
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

-- Location: IOOBUF_X28_Y24_N16
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

-- Location: IOOBUF_X34_Y20_N16
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

-- Location: IOOBUF_X34_Y17_N16
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

-- Location: IOOBUF_X21_Y0_N2
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

-- Location: IOOBUF_X34_Y8_N23
\transform_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \transform_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => \transform_out[0]~output_o\);

-- Location: IOOBUF_X34_Y8_N16
\transform_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \transform_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => \transform_out[1]~output_o\);

-- Location: IOOBUF_X34_Y8_N9
\transform_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \transform_out[2]~reg0_q\,
	devoe => ww_devoe,
	o => \transform_out[2]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\transform_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \transform_out[3]~output_o\);

-- Location: IOOBUF_X28_Y0_N9
\transform_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \transform_out[4]~output_o\);

-- Location: IOOBUF_X34_Y7_N16
\transform_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \transform_out[2]~reg0_q\,
	devoe => ww_devoe,
	o => \transform_out[5]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\transform_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \transform_out[2]~reg0_q\,
	devoe => ww_devoe,
	o => \transform_out[6]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\transform_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \transform_out[7]~output_o\);

-- Location: IOOBUF_X34_Y7_N23
\key~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \transform_out[2]~reg0_q\,
	devoe => ww_devoe,
	o => \key~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\send_start_temp~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \send_start_temp~reg0_q\,
	devoe => ww_devoe,
	o => \send_start_temp~output_o\);

-- Location: IOOBUF_X30_Y24_N9
\send_stop_temp~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \send_stop_temp~reg0_q\,
	devoe => ww_devoe,
	o => \send_stop_temp~output_o\);

-- Location: IOOBUF_X30_Y24_N23
\beep~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \beep~reg0_q\,
	devoe => ww_devoe,
	o => \beep~output_o\);

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

-- Location: IOIBUF_X34_Y18_N1
\input[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(3),
	o => \input[3]~input_o\);

-- Location: IOIBUF_X34_Y10_N1
\model_fb~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_model_fb,
	o => \model_fb~input_o\);

-- Location: IOIBUF_X34_Y18_N15
\input[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(2),
	o => \input[2]~input_o\);

-- Location: IOIBUF_X34_Y19_N1
\input[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(0),
	o => \input[0]~input_o\);

-- Location: IOIBUF_X34_Y19_N8
\input[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(1),
	o => \input[1]~input_o\);

-- Location: LCCOMB_X30_Y18_N30
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (!\input[2]~input_o\ & (!\input[0]~input_o\ & (!\input[3]~input_o\ & !\input[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[2]~input_o\,
	datab => \input[0]~input_o\,
	datac => \input[3]~input_o\,
	datad => \input[1]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X30_Y18_N20
\count_forbs[0]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbs[0]~93_combout\ = \Mux7~0_combout\ $ (count_forbs(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~0_combout\,
	datac => count_forbs(0),
	combout => \count_forbs[0]~93_combout\);

-- Location: FF_X30_Y18_N21
\count_forbs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbs[0]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbs(0));

-- Location: LCCOMB_X29_Y18_N2
\count_forbs[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbs[1]~31_combout\ = (count_forbs(0) & (count_forbs(1) $ (VCC))) # (!count_forbs(0) & (count_forbs(1) & VCC))
-- \count_forbs[1]~32\ = CARRY((count_forbs(0) & count_forbs(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_forbs(0),
	datab => count_forbs(1),
	datad => VCC,
	combout => \count_forbs[1]~31_combout\,
	cout => \count_forbs[1]~32\);

-- Location: FF_X29_Y18_N3
\count_forbs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbs[1]~31_combout\,
	ena => \Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbs(1));

-- Location: LCCOMB_X29_Y18_N4
\count_forbs[2]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbs[2]~33_combout\ = (count_forbs(2) & (!\count_forbs[1]~32\)) # (!count_forbs(2) & ((\count_forbs[1]~32\) # (GND)))
-- \count_forbs[2]~34\ = CARRY((!\count_forbs[1]~32\) # (!count_forbs(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_forbs(2),
	datad => VCC,
	cin => \count_forbs[1]~32\,
	combout => \count_forbs[2]~33_combout\,
	cout => \count_forbs[2]~34\);

-- Location: FF_X29_Y18_N5
\count_forbs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbs[2]~33_combout\,
	ena => \Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbs(2));

-- Location: LCCOMB_X30_Y18_N12
\model_bs~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \model_bs~0_combout\ = (!count_forbs(2) & (count_forbs(0) $ (((!\model_fb~input_o\ & count_forbs(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \model_fb~input_o\,
	datab => count_forbs(0),
	datac => count_forbs(2),
	datad => count_forbs(1),
	combout => \model_bs~0_combout\);

-- Location: LCCOMB_X29_Y18_N6
\count_forbs[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbs[3]~35_combout\ = (count_forbs(3) & (\count_forbs[2]~34\ $ (GND))) # (!count_forbs(3) & (!\count_forbs[2]~34\ & VCC))
-- \count_forbs[3]~36\ = CARRY((count_forbs(3) & !\count_forbs[2]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_forbs(3),
	datad => VCC,
	cin => \count_forbs[2]~34\,
	combout => \count_forbs[3]~35_combout\,
	cout => \count_forbs[3]~36\);

-- Location: FF_X29_Y18_N7
\count_forbs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbs[3]~35_combout\,
	ena => \Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbs(3));

-- Location: LCCOMB_X29_Y18_N8
\count_forbs[4]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbs[4]~37_combout\ = (count_forbs(4) & (!\count_forbs[3]~36\)) # (!count_forbs(4) & ((\count_forbs[3]~36\) # (GND)))
-- \count_forbs[4]~38\ = CARRY((!\count_forbs[3]~36\) # (!count_forbs(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_forbs(4),
	datad => VCC,
	cin => \count_forbs[3]~36\,
	combout => \count_forbs[4]~37_combout\,
	cout => \count_forbs[4]~38\);

-- Location: FF_X29_Y18_N9
\count_forbs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbs[4]~37_combout\,
	ena => \Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbs(4));

-- Location: LCCOMB_X29_Y18_N10
\count_forbs[5]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbs[5]~39_combout\ = (count_forbs(5) & (\count_forbs[4]~38\ $ (GND))) # (!count_forbs(5) & (!\count_forbs[4]~38\ & VCC))
-- \count_forbs[5]~40\ = CARRY((count_forbs(5) & !\count_forbs[4]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_forbs(5),
	datad => VCC,
	cin => \count_forbs[4]~38\,
	combout => \count_forbs[5]~39_combout\,
	cout => \count_forbs[5]~40\);

-- Location: FF_X29_Y18_N11
\count_forbs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbs[5]~39_combout\,
	ena => \Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbs(5));

-- Location: LCCOMB_X29_Y18_N12
\count_forbs[6]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbs[6]~41_combout\ = (count_forbs(6) & (!\count_forbs[5]~40\)) # (!count_forbs(6) & ((\count_forbs[5]~40\) # (GND)))
-- \count_forbs[6]~42\ = CARRY((!\count_forbs[5]~40\) # (!count_forbs(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_forbs(6),
	datad => VCC,
	cin => \count_forbs[5]~40\,
	combout => \count_forbs[6]~41_combout\,
	cout => \count_forbs[6]~42\);

-- Location: FF_X29_Y18_N13
\count_forbs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbs[6]~41_combout\,
	ena => \Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbs(6));

-- Location: LCCOMB_X29_Y18_N14
\count_forbs[7]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbs[7]~43_combout\ = (count_forbs(7) & (\count_forbs[6]~42\ $ (GND))) # (!count_forbs(7) & (!\count_forbs[6]~42\ & VCC))
-- \count_forbs[7]~44\ = CARRY((count_forbs(7) & !\count_forbs[6]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_forbs(7),
	datad => VCC,
	cin => \count_forbs[6]~42\,
	combout => \count_forbs[7]~43_combout\,
	cout => \count_forbs[7]~44\);

-- Location: FF_X29_Y18_N15
\count_forbs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbs[7]~43_combout\,
	ena => \Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbs(7));

-- Location: LCCOMB_X29_Y18_N16
\count_forbs[8]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbs[8]~45_combout\ = (count_forbs(8) & (!\count_forbs[7]~44\)) # (!count_forbs(8) & ((\count_forbs[7]~44\) # (GND)))
-- \count_forbs[8]~46\ = CARRY((!\count_forbs[7]~44\) # (!count_forbs(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_forbs(8),
	datad => VCC,
	cin => \count_forbs[7]~44\,
	combout => \count_forbs[8]~45_combout\,
	cout => \count_forbs[8]~46\);

-- Location: FF_X29_Y18_N17
\count_forbs[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbs[8]~45_combout\,
	ena => \Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbs(8));

-- Location: LCCOMB_X29_Y18_N18
\count_forbs[9]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbs[9]~47_combout\ = (count_forbs(9) & (\count_forbs[8]~46\ $ (GND))) # (!count_forbs(9) & (!\count_forbs[8]~46\ & VCC))
-- \count_forbs[9]~48\ = CARRY((count_forbs(9) & !\count_forbs[8]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_forbs(9),
	datad => VCC,
	cin => \count_forbs[8]~46\,
	combout => \count_forbs[9]~47_combout\,
	cout => \count_forbs[9]~48\);

-- Location: FF_X29_Y18_N19
\count_forbs[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbs[9]~47_combout\,
	ena => \Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbs(9));

-- Location: LCCOMB_X29_Y18_N20
\count_forbs[10]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbs[10]~49_combout\ = (count_forbs(10) & (!\count_forbs[9]~48\)) # (!count_forbs(10) & ((\count_forbs[9]~48\) # (GND)))
-- \count_forbs[10]~50\ = CARRY((!\count_forbs[9]~48\) # (!count_forbs(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_forbs(10),
	datad => VCC,
	cin => \count_forbs[9]~48\,
	combout => \count_forbs[10]~49_combout\,
	cout => \count_forbs[10]~50\);

-- Location: FF_X29_Y18_N21
\count_forbs[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbs[10]~49_combout\,
	ena => \Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbs(10));

-- Location: LCCOMB_X29_Y18_N22
\count_forbs[11]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbs[11]~51_combout\ = (count_forbs(11) & (\count_forbs[10]~50\ $ (GND))) # (!count_forbs(11) & (!\count_forbs[10]~50\ & VCC))
-- \count_forbs[11]~52\ = CARRY((count_forbs(11) & !\count_forbs[10]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_forbs(11),
	datad => VCC,
	cin => \count_forbs[10]~50\,
	combout => \count_forbs[11]~51_combout\,
	cout => \count_forbs[11]~52\);

-- Location: FF_X29_Y18_N23
\count_forbs[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbs[11]~51_combout\,
	ena => \Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbs(11));

-- Location: LCCOMB_X29_Y18_N24
\count_forbs[12]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbs[12]~53_combout\ = (count_forbs(12) & (!\count_forbs[11]~52\)) # (!count_forbs(12) & ((\count_forbs[11]~52\) # (GND)))
-- \count_forbs[12]~54\ = CARRY((!\count_forbs[11]~52\) # (!count_forbs(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_forbs(12),
	datad => VCC,
	cin => \count_forbs[11]~52\,
	combout => \count_forbs[12]~53_combout\,
	cout => \count_forbs[12]~54\);

-- Location: FF_X29_Y18_N25
\count_forbs[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbs[12]~53_combout\,
	ena => \Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbs(12));

-- Location: LCCOMB_X29_Y18_N26
\count_forbs[13]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbs[13]~55_combout\ = (count_forbs(13) & (\count_forbs[12]~54\ $ (GND))) # (!count_forbs(13) & (!\count_forbs[12]~54\ & VCC))
-- \count_forbs[13]~56\ = CARRY((count_forbs(13) & !\count_forbs[12]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_forbs(13),
	datad => VCC,
	cin => \count_forbs[12]~54\,
	combout => \count_forbs[13]~55_combout\,
	cout => \count_forbs[13]~56\);

-- Location: FF_X29_Y18_N27
\count_forbs[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbs[13]~55_combout\,
	ena => \Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbs(13));

-- Location: LCCOMB_X29_Y18_N28
\count_forbs[14]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbs[14]~57_combout\ = (count_forbs(14) & (!\count_forbs[13]~56\)) # (!count_forbs(14) & ((\count_forbs[13]~56\) # (GND)))
-- \count_forbs[14]~58\ = CARRY((!\count_forbs[13]~56\) # (!count_forbs(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_forbs(14),
	datad => VCC,
	cin => \count_forbs[13]~56\,
	combout => \count_forbs[14]~57_combout\,
	cout => \count_forbs[14]~58\);

-- Location: FF_X29_Y18_N29
\count_forbs[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbs[14]~57_combout\,
	ena => \Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbs(14));

-- Location: LCCOMB_X29_Y18_N30
\count_forbs[15]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbs[15]~59_combout\ = (count_forbs(15) & (\count_forbs[14]~58\ $ (GND))) # (!count_forbs(15) & (!\count_forbs[14]~58\ & VCC))
-- \count_forbs[15]~60\ = CARRY((count_forbs(15) & !\count_forbs[14]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_forbs(15),
	datad => VCC,
	cin => \count_forbs[14]~58\,
	combout => \count_forbs[15]~59_combout\,
	cout => \count_forbs[15]~60\);

-- Location: FF_X29_Y18_N31
\count_forbs[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbs[15]~59_combout\,
	ena => \Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbs(15));

-- Location: LCCOMB_X29_Y17_N0
\count_forbs[16]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbs[16]~61_combout\ = (count_forbs(16) & (!\count_forbs[15]~60\)) # (!count_forbs(16) & ((\count_forbs[15]~60\) # (GND)))
-- \count_forbs[16]~62\ = CARRY((!\count_forbs[15]~60\) # (!count_forbs(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_forbs(16),
	datad => VCC,
	cin => \count_forbs[15]~60\,
	combout => \count_forbs[16]~61_combout\,
	cout => \count_forbs[16]~62\);

-- Location: FF_X29_Y17_N1
\count_forbs[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbs[16]~61_combout\,
	ena => \Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbs(16));

-- Location: LCCOMB_X29_Y17_N2
\count_forbs[17]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbs[17]~63_combout\ = (count_forbs(17) & (\count_forbs[16]~62\ $ (GND))) # (!count_forbs(17) & (!\count_forbs[16]~62\ & VCC))
-- \count_forbs[17]~64\ = CARRY((count_forbs(17) & !\count_forbs[16]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_forbs(17),
	datad => VCC,
	cin => \count_forbs[16]~62\,
	combout => \count_forbs[17]~63_combout\,
	cout => \count_forbs[17]~64\);

-- Location: FF_X29_Y17_N3
\count_forbs[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbs[17]~63_combout\,
	ena => \Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbs(17));

-- Location: LCCOMB_X29_Y17_N4
\count_forbs[18]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbs[18]~65_combout\ = (count_forbs(18) & (!\count_forbs[17]~64\)) # (!count_forbs(18) & ((\count_forbs[17]~64\) # (GND)))
-- \count_forbs[18]~66\ = CARRY((!\count_forbs[17]~64\) # (!count_forbs(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_forbs(18),
	datad => VCC,
	cin => \count_forbs[17]~64\,
	combout => \count_forbs[18]~65_combout\,
	cout => \count_forbs[18]~66\);

-- Location: FF_X29_Y17_N5
\count_forbs[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbs[18]~65_combout\,
	ena => \Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbs(18));

-- Location: LCCOMB_X29_Y17_N6
\count_forbs[19]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbs[19]~67_combout\ = (count_forbs(19) & (\count_forbs[18]~66\ $ (GND))) # (!count_forbs(19) & (!\count_forbs[18]~66\ & VCC))
-- \count_forbs[19]~68\ = CARRY((count_forbs(19) & !\count_forbs[18]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_forbs(19),
	datad => VCC,
	cin => \count_forbs[18]~66\,
	combout => \count_forbs[19]~67_combout\,
	cout => \count_forbs[19]~68\);

-- Location: FF_X29_Y17_N7
\count_forbs[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbs[19]~67_combout\,
	ena => \Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbs(19));

-- Location: LCCOMB_X29_Y17_N8
\count_forbs[20]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbs[20]~69_combout\ = (count_forbs(20) & (!\count_forbs[19]~68\)) # (!count_forbs(20) & ((\count_forbs[19]~68\) # (GND)))
-- \count_forbs[20]~70\ = CARRY((!\count_forbs[19]~68\) # (!count_forbs(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_forbs(20),
	datad => VCC,
	cin => \count_forbs[19]~68\,
	combout => \count_forbs[20]~69_combout\,
	cout => \count_forbs[20]~70\);

-- Location: FF_X29_Y17_N9
\count_forbs[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbs[20]~69_combout\,
	ena => \Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbs(20));

-- Location: LCCOMB_X29_Y17_N10
\count_forbs[21]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbs[21]~71_combout\ = (count_forbs(21) & (\count_forbs[20]~70\ $ (GND))) # (!count_forbs(21) & (!\count_forbs[20]~70\ & VCC))
-- \count_forbs[21]~72\ = CARRY((count_forbs(21) & !\count_forbs[20]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_forbs(21),
	datad => VCC,
	cin => \count_forbs[20]~70\,
	combout => \count_forbs[21]~71_combout\,
	cout => \count_forbs[21]~72\);

-- Location: FF_X29_Y17_N11
\count_forbs[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbs[21]~71_combout\,
	ena => \Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbs(21));

-- Location: LCCOMB_X29_Y17_N12
\count_forbs[22]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbs[22]~73_combout\ = (count_forbs(22) & (!\count_forbs[21]~72\)) # (!count_forbs(22) & ((\count_forbs[21]~72\) # (GND)))
-- \count_forbs[22]~74\ = CARRY((!\count_forbs[21]~72\) # (!count_forbs(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_forbs(22),
	datad => VCC,
	cin => \count_forbs[21]~72\,
	combout => \count_forbs[22]~73_combout\,
	cout => \count_forbs[22]~74\);

-- Location: FF_X29_Y17_N13
\count_forbs[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbs[22]~73_combout\,
	ena => \Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbs(22));

-- Location: LCCOMB_X30_Y17_N12
\SwitchToNextState~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SwitchToNextState~6_combout\ = (!count_forbs(20) & (!count_forbs(19) & (!count_forbs(21) & !count_forbs(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_forbs(20),
	datab => count_forbs(19),
	datac => count_forbs(21),
	datad => count_forbs(22),
	combout => \SwitchToNextState~6_combout\);

-- Location: LCCOMB_X29_Y17_N14
\count_forbs[23]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbs[23]~75_combout\ = (count_forbs(23) & (\count_forbs[22]~74\ $ (GND))) # (!count_forbs(23) & (!\count_forbs[22]~74\ & VCC))
-- \count_forbs[23]~76\ = CARRY((count_forbs(23) & !\count_forbs[22]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_forbs(23),
	datad => VCC,
	cin => \count_forbs[22]~74\,
	combout => \count_forbs[23]~75_combout\,
	cout => \count_forbs[23]~76\);

-- Location: FF_X29_Y17_N15
\count_forbs[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbs[23]~75_combout\,
	ena => \Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbs(23));

-- Location: LCCOMB_X29_Y17_N16
\count_forbs[24]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbs[24]~77_combout\ = (count_forbs(24) & (!\count_forbs[23]~76\)) # (!count_forbs(24) & ((\count_forbs[23]~76\) # (GND)))
-- \count_forbs[24]~78\ = CARRY((!\count_forbs[23]~76\) # (!count_forbs(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_forbs(24),
	datad => VCC,
	cin => \count_forbs[23]~76\,
	combout => \count_forbs[24]~77_combout\,
	cout => \count_forbs[24]~78\);

-- Location: FF_X29_Y17_N17
\count_forbs[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbs[24]~77_combout\,
	ena => \Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbs(24));

-- Location: LCCOMB_X29_Y17_N18
\count_forbs[25]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbs[25]~79_combout\ = (count_forbs(25) & (\count_forbs[24]~78\ $ (GND))) # (!count_forbs(25) & (!\count_forbs[24]~78\ & VCC))
-- \count_forbs[25]~80\ = CARRY((count_forbs(25) & !\count_forbs[24]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_forbs(25),
	datad => VCC,
	cin => \count_forbs[24]~78\,
	combout => \count_forbs[25]~79_combout\,
	cout => \count_forbs[25]~80\);

-- Location: FF_X29_Y17_N19
\count_forbs[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbs[25]~79_combout\,
	ena => \Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbs(25));

-- Location: LCCOMB_X29_Y17_N20
\count_forbs[26]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbs[26]~81_combout\ = (count_forbs(26) & (!\count_forbs[25]~80\)) # (!count_forbs(26) & ((\count_forbs[25]~80\) # (GND)))
-- \count_forbs[26]~82\ = CARRY((!\count_forbs[25]~80\) # (!count_forbs(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_forbs(26),
	datad => VCC,
	cin => \count_forbs[25]~80\,
	combout => \count_forbs[26]~81_combout\,
	cout => \count_forbs[26]~82\);

-- Location: FF_X29_Y17_N21
\count_forbs[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbs[26]~81_combout\,
	ena => \Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbs(26));

-- Location: LCCOMB_X29_Y17_N22
\count_forbs[27]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbs[27]~83_combout\ = (count_forbs(27) & (\count_forbs[26]~82\ $ (GND))) # (!count_forbs(27) & (!\count_forbs[26]~82\ & VCC))
-- \count_forbs[27]~84\ = CARRY((count_forbs(27) & !\count_forbs[26]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_forbs(27),
	datad => VCC,
	cin => \count_forbs[26]~82\,
	combout => \count_forbs[27]~83_combout\,
	cout => \count_forbs[27]~84\);

-- Location: FF_X29_Y17_N23
\count_forbs[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbs[27]~83_combout\,
	ena => \Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbs(27));

-- Location: LCCOMB_X29_Y17_N24
\count_forbs[28]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbs[28]~85_combout\ = (count_forbs(28) & (!\count_forbs[27]~84\)) # (!count_forbs(28) & ((\count_forbs[27]~84\) # (GND)))
-- \count_forbs[28]~86\ = CARRY((!\count_forbs[27]~84\) # (!count_forbs(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_forbs(28),
	datad => VCC,
	cin => \count_forbs[27]~84\,
	combout => \count_forbs[28]~85_combout\,
	cout => \count_forbs[28]~86\);

-- Location: FF_X29_Y17_N25
\count_forbs[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbs[28]~85_combout\,
	ena => \Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbs(28));

-- Location: LCCOMB_X29_Y17_N26
\count_forbs[29]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbs[29]~87_combout\ = (count_forbs(29) & (\count_forbs[28]~86\ $ (GND))) # (!count_forbs(29) & (!\count_forbs[28]~86\ & VCC))
-- \count_forbs[29]~88\ = CARRY((count_forbs(29) & !\count_forbs[28]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_forbs(29),
	datad => VCC,
	cin => \count_forbs[28]~86\,
	combout => \count_forbs[29]~87_combout\,
	cout => \count_forbs[29]~88\);

-- Location: FF_X29_Y17_N27
\count_forbs[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbs[29]~87_combout\,
	ena => \Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbs(29));

-- Location: LCCOMB_X29_Y17_N28
\count_forbs[30]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbs[30]~89_combout\ = (count_forbs(30) & (!\count_forbs[29]~88\)) # (!count_forbs(30) & ((\count_forbs[29]~88\) # (GND)))
-- \count_forbs[30]~90\ = CARRY((!\count_forbs[29]~88\) # (!count_forbs(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_forbs(30),
	datad => VCC,
	cin => \count_forbs[29]~88\,
	combout => \count_forbs[30]~89_combout\,
	cout => \count_forbs[30]~90\);

-- Location: FF_X29_Y17_N29
\count_forbs[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbs[30]~89_combout\,
	ena => \Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbs(30));

-- Location: LCCOMB_X29_Y17_N30
\count_forbs[31]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbs[31]~91_combout\ = count_forbs(31) $ (!\count_forbs[30]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_forbs(31),
	cin => \count_forbs[30]~90\,
	combout => \count_forbs[31]~91_combout\);

-- Location: FF_X29_Y17_N31
\count_forbs[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbs[31]~91_combout\,
	ena => \Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbs(31));

-- Location: LCCOMB_X30_Y17_N30
\SwitchToNextState~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \SwitchToNextState~7_combout\ = (!count_forbs(23) & (!count_forbs(26) & (!count_forbs(24) & !count_forbs(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_forbs(23),
	datab => count_forbs(26),
	datac => count_forbs(24),
	datad => count_forbs(25),
	combout => \SwitchToNextState~7_combout\);

-- Location: LCCOMB_X30_Y17_N0
\SwitchToNextState~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \SwitchToNextState~8_combout\ = (!count_forbs(29) & (!count_forbs(30) & (!count_forbs(28) & !count_forbs(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_forbs(29),
	datab => count_forbs(30),
	datac => count_forbs(28),
	datad => count_forbs(27),
	combout => \SwitchToNextState~8_combout\);

-- Location: LCCOMB_X30_Y17_N26
\SwitchToNextState~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \SwitchToNextState~9_combout\ = (\SwitchToNextState~6_combout\ & (!count_forbs(31) & (\SwitchToNextState~7_combout\ & \SwitchToNextState~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwitchToNextState~6_combout\,
	datab => count_forbs(31),
	datac => \SwitchToNextState~7_combout\,
	datad => \SwitchToNextState~8_combout\,
	combout => \SwitchToNextState~9_combout\);

-- Location: LCCOMB_X28_Y18_N6
\SwitchToNextState~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SwitchToNextState~2_combout\ = (!count_forbs(10) & (!count_forbs(8) & (!count_forbs(7) & !count_forbs(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_forbs(10),
	datab => count_forbs(8),
	datac => count_forbs(7),
	datad => count_forbs(9),
	combout => \SwitchToNextState~2_combout\);

-- Location: LCCOMB_X28_Y18_N8
\SwitchToNextState~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SwitchToNextState~1_combout\ = (!count_forbs(3) & (!count_forbs(6) & (!count_forbs(5) & !count_forbs(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_forbs(3),
	datab => count_forbs(6),
	datac => count_forbs(5),
	datad => count_forbs(4),
	combout => \SwitchToNextState~1_combout\);

-- Location: LCCOMB_X29_Y18_N0
\SwitchToNextState~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SwitchToNextState~3_combout\ = (!count_forbs(13) & (!count_forbs(14) & (!count_forbs(11) & !count_forbs(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_forbs(13),
	datab => count_forbs(14),
	datac => count_forbs(11),
	datad => count_forbs(12),
	combout => \SwitchToNextState~3_combout\);

-- Location: LCCOMB_X28_Y18_N12
\SwitchToNextState~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SwitchToNextState~4_combout\ = (!count_forbs(15) & (!count_forbs(16) & (!count_forbs(17) & !count_forbs(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_forbs(15),
	datab => count_forbs(16),
	datac => count_forbs(17),
	datad => count_forbs(18),
	combout => \SwitchToNextState~4_combout\);

-- Location: LCCOMB_X28_Y18_N30
\SwitchToNextState~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SwitchToNextState~5_combout\ = (\SwitchToNextState~2_combout\ & (\SwitchToNextState~1_combout\ & (\SwitchToNextState~3_combout\ & \SwitchToNextState~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwitchToNextState~2_combout\,
	datab => \SwitchToNextState~1_combout\,
	datac => \SwitchToNextState~3_combout\,
	datad => \SwitchToNextState~4_combout\,
	combout => \SwitchToNextState~5_combout\);

-- Location: LCCOMB_X30_Y18_N24
\model_bs~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \model_bs~1_combout\ = (\model_bs~0_combout\ & (\SwitchToNextState~9_combout\ & \SwitchToNextState~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \model_bs~0_combout\,
	datac => \SwitchToNextState~9_combout\,
	datad => \SwitchToNextState~5_combout\,
	combout => \model_bs~1_combout\);

-- Location: FF_X30_Y18_N25
model_bs : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \model_bs~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \model_bs~q\);

-- Location: LCCOMB_X30_Y18_N0
\NextState~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \NextState~15_combout\ = (\Mux7~0_combout\ & (((!\SwitchToNextState~5_combout\) # (!\SwitchToNextState~9_combout\)) # (!\SwitchToNextState~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwitchToNextState~10_combout\,
	datab => \SwitchToNextState~9_combout\,
	datac => \Mux7~0_combout\,
	datad => \SwitchToNextState~5_combout\,
	combout => \NextState~15_combout\);

-- Location: IOIBUF_X30_Y24_N1
\if_start~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_if_start,
	o => \if_start~input_o\);

-- Location: LCCOMB_X30_Y20_N6
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

-- Location: FF_X30_Y20_N7
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

-- Location: FF_X30_Y18_N1
\NextState.STOP_READY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \NextState~15_combout\,
	ena => \signal_go~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \NextState.STOP_READY~q\);

-- Location: LCCOMB_X30_Y18_N6
\SwitchToNextState~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \SwitchToNextState~10_combout\ = (!count_forbs(1) & (!count_forbs(0) & (count_forbs(2) & \NextState.STOP_READY~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_forbs(1),
	datab => count_forbs(0),
	datac => count_forbs(2),
	datad => \NextState.STOP_READY~q\,
	combout => \SwitchToNextState~10_combout\);

-- Location: LCCOMB_X31_Y18_N2
\SwitchToNextState~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \SwitchToNextState~11_combout\ = (\SwitchToNextState~9_combout\ & (\SwitchToNextState~10_combout\ & \SwitchToNextState~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwitchToNextState~9_combout\,
	datab => \SwitchToNextState~10_combout\,
	datad => \SwitchToNextState~5_combout\,
	combout => \SwitchToNextState~11_combout\);

-- Location: LCCOMB_X31_Y18_N24
\NextState~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \NextState~10_combout\ = (\input[1]~input_o\ & (\input[0]~input_o\ & !\SwitchToNextState~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[1]~input_o\,
	datab => \input[0]~input_o\,
	datad => \SwitchToNextState~11_combout\,
	combout => \NextState~10_combout\);

-- Location: LCCOMB_X31_Y18_N18
\NextState~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \NextState~11_combout\ = (!\input[3]~input_o\ & (!\model_bs~q\ & \NextState~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[3]~input_o\,
	datab => \model_bs~q\,
	datad => \NextState~10_combout\,
	combout => \NextState~11_combout\);

-- Location: FF_X31_Y18_N19
\NextState.TURN_RIGHT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \NextState~11_combout\,
	ena => \signal_go~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \NextState.TURN_RIGHT~q\);

-- Location: FF_X31_Y18_N3
\l[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \NextState.TURN_RIGHT~q\,
	sload => VCC,
	ena => \signal_go~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l[0]~reg0_q\);

-- Location: LCCOMB_X30_Y18_N16
\NextState~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \NextState~12_combout\ = (\input[3]~input_o\ & (!\input[1]~input_o\ & ((\input[2]~input_o\) # (\model_bs~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[2]~input_o\,
	datab => \model_bs~q\,
	datac => \input[3]~input_o\,
	datad => \input[1]~input_o\,
	combout => \NextState~12_combout\);

-- Location: LCCOMB_X31_Y18_N6
\NextState~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \NextState~13_combout\ = (\input[0]~input_o\ & (\NextState~12_combout\ & !\SwitchToNextState~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input[0]~input_o\,
	datac => \NextState~12_combout\,
	datad => \SwitchToNextState~11_combout\,
	combout => \NextState~13_combout\);

-- Location: FF_X31_Y18_N7
\NextState.TURN_LEFTW\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \NextState~13_combout\,
	ena => \signal_go~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \NextState.TURN_LEFTW~q\);

-- Location: LCCOMB_X30_Y18_N14
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

-- Location: LCCOMB_X31_Y18_N8
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\input[0]~input_o\ & (\input[1]~input_o\ $ (((!\input[3]~input_o\) # (!\input[2]~input_o\))))) # (!\input[0]~input_o\ & ((\input[2]~input_o\) # ((\input[1]~input_o\) # (\input[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[2]~input_o\,
	datab => \input[0]~input_o\,
	datac => \input[1]~input_o\,
	datad => \input[3]~input_o\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X31_Y18_N20
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (!\SwitchToNextState~11_combout\ & ((\model_bs~q\ & (\Mux0~0_combout\)) # (!\model_bs~q\ & ((\Mux0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \model_bs~q\,
	datac => \Mux0~1_combout\,
	datad => \SwitchToNextState~11_combout\,
	combout => \Mux0~2_combout\);

-- Location: FF_X31_Y18_N21
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

-- Location: LCCOMB_X31_Y18_N12
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\input[2]~input_o\ & (\input[0]~input_o\ $ (((\input[1]~input_o\) # (\input[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[2]~input_o\,
	datab => \input[0]~input_o\,
	datac => \input[1]~input_o\,
	datad => \input[3]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X31_Y18_N28
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux4~0_combout\ & (\model_bs~q\ & !\SwitchToNextState~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \model_bs~q\,
	datad => \SwitchToNextState~11_combout\,
	combout => \Mux4~1_combout\);

-- Location: FF_X31_Y18_N29
\NextState.TURN_LEFT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Mux4~1_combout\,
	ena => \signal_go~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \NextState.TURN_LEFT~q\);

-- Location: LCCOMB_X31_Y18_N10
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

-- Location: FF_X31_Y18_N11
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

-- Location: LCCOMB_X30_Y18_N4
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

-- Location: FF_X30_Y18_N5
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

-- Location: LCCOMB_X31_Y18_N16
\NextState~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \NextState~14_combout\ = (\input[3]~input_o\ & (!\input[2]~input_o\ & \NextState~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[3]~input_o\,
	datac => \input[2]~input_o\,
	datad => \NextState~10_combout\,
	combout => \NextState~14_combout\);

-- Location: FF_X31_Y18_N17
\NextState.TURN_RIGHTW\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \NextState~14_combout\,
	ena => \signal_go~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \NextState.TURN_RIGHTW~q\);

-- Location: LCCOMB_X31_Y18_N14
WideOr2 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~combout\ = (\NextState.TURN_RIGHTW~q\) # ((\NextState.FORWARD~q\) # (\NextState.TURN_RIGHT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NextState.TURN_RIGHTW~q\,
	datab => \NextState.FORWARD~q\,
	datac => \NextState.TURN_RIGHT~q\,
	combout => \WideOr2~combout\);

-- Location: FF_X31_Y18_N15
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

-- Location: LCCOMB_X30_Y18_N2
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

-- Location: FF_X30_Y18_N3
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

-- Location: LCCOMB_X30_Y18_N22
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

-- Location: FF_X30_Y18_N23
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

-- Location: LCCOMB_X31_Y18_N22
\NextState.STOP~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \NextState.STOP~feeder_combout\ = \SwitchToNextState~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SwitchToNextState~11_combout\,
	combout => \NextState.STOP~feeder_combout\);

-- Location: FF_X31_Y18_N23
\NextState.STOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \NextState.STOP~feeder_combout\,
	ena => \signal_go~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \NextState.STOP~q\);

-- Location: LCCOMB_X30_Y18_N28
WideOr4 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr4~combout\ = (\NextState.START~q\ & (!\NextState.STOP_READY~q\ & (!\NextState.STOP~q\ & !\NextState.TURN_LEFTW~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NextState.START~q\,
	datab => \NextState.STOP_READY~q\,
	datac => \NextState.STOP~q\,
	datad => \NextState.TURN_LEFTW~q\,
	combout => \WideOr4~combout\);

-- Location: FF_X30_Y18_N29
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

-- Location: LCCOMB_X31_Y18_N30
\WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (\NextState.FORWARD~q\) # (\NextState.TURN_LEFTW~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NextState.FORWARD~q\,
	datad => \NextState.TURN_LEFTW~q\,
	combout => \WideOr1~0_combout\);

-- Location: FF_X31_Y18_N31
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

-- Location: LCCOMB_X31_Y18_N0
WideOr3 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr3~combout\ = (\NextState.TURN_RIGHT~q\) # ((\NextState.TURN_RIGHTW~q\) # (\NextState.TURN_LEFT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NextState.TURN_RIGHT~q\,
	datac => \NextState.TURN_RIGHTW~q\,
	datad => \NextState.TURN_LEFT~q\,
	combout => \WideOr3~combout\);

-- Location: FF_X31_Y18_N1
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

-- Location: FF_X31_Y18_N25
\ref_R[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \NextState.TURN_RIGHTW~q\,
	sload => VCC,
	ena => \signal_go~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ref_R[0]~reg0_q\);

-- Location: LCCOMB_X30_Y18_N26
WideOr6 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr6~combout\ = (!\NextState.STOP~q\ & (!\NextState.STOP_READY~q\ & (\NextState.START~q\ & !\NextState.TURN_RIGHTW~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NextState.STOP~q\,
	datab => \NextState.STOP_READY~q\,
	datac => \NextState.START~q\,
	datad => \NextState.TURN_RIGHTW~q\,
	combout => \WideOr6~combout\);

-- Location: FF_X30_Y18_N27
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

-- Location: LCCOMB_X31_Y18_N26
\WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (\NextState.FORWARD~q\) # (\NextState.TURN_RIGHTW~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NextState.FORWARD~q\,
	datac => \NextState.TURN_RIGHTW~q\,
	combout => \WideOr2~0_combout\);

-- Location: FF_X31_Y18_N27
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

-- Location: LCCOMB_X31_Y18_N4
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

-- Location: FF_X31_Y18_N5
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

-- Location: LCCOMB_X31_Y20_N14
\send_stop~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \send_stop~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \send_stop~feeder_combout\);

-- Location: LCCOMB_X30_Y20_N4
\send_stop_temp1[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \send_stop_temp1[0]~0_combout\ = (send_stop_temp1(0)) # ((\signal_go~q\ & \NextState.STOP~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signal_go~q\,
	datac => send_stop_temp1(0),
	datad => \NextState.STOP~q\,
	combout => \send_stop_temp1[0]~0_combout\);

-- Location: FF_X30_Y20_N5
\send_stop_temp1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \send_stop_temp1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => send_stop_temp1(0));

-- Location: FF_X31_Y20_N15
send_stop : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \send_stop~feeder_combout\,
	ena => send_stop_temp1(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send_stop~q\);

-- Location: LCCOMB_X33_Y12_N4
\send_open~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \send_open~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \send_open~feeder_combout\);

-- Location: FF_X33_Y12_N5
send_open : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \send_open~feeder_combout\,
	ena => \NextState.START~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send_open~q\);

-- Location: LCCOMB_X33_Y12_N18
\count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~0_combout\ = (!\send_open~q\ & (\send_stop~q\ $ (count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \send_stop~q\,
	datac => count(0),
	datad => \send_open~q\,
	combout => \count~0_combout\);

-- Location: FF_X33_Y12_N19
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X33_Y12_N8
\transform_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \transform_out~0_combout\ = (\send_open~q\ & (((count(0))))) # (!\send_open~q\ & (!\send_stop~q\ & ((\transform_out[0]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \send_stop~q\,
	datab => count(0),
	datac => \transform_out[0]~reg0_q\,
	datad => \send_open~q\,
	combout => \transform_out~0_combout\);

-- Location: FF_X33_Y12_N9
\transform_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \transform_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transform_out[0]~reg0_q\);

-- Location: LCCOMB_X33_Y12_N14
\transform_out[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \transform_out[2]~1_combout\ = (\send_open~q\ & (((count(0))))) # (!\send_open~q\ & ((\send_stop~q\ & ((count(0)))) # (!\send_stop~q\ & (\transform_out[2]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \send_open~q\,
	datab => \send_stop~q\,
	datac => \transform_out[2]~reg0_q\,
	datad => count(0),
	combout => \transform_out[2]~1_combout\);

-- Location: FF_X33_Y12_N15
\transform_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \transform_out[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transform_out[2]~reg0_q\);

-- Location: LCCOMB_X33_Y12_N28
\send_start_temp~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \send_start_temp~reg0feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \send_start_temp~reg0feeder_combout\);

-- Location: FF_X33_Y12_N29
\send_start_temp~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \send_start_temp~reg0feeder_combout\,
	ena => \NextState.START~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send_start_temp~reg0_q\);

-- Location: LCCOMB_X31_Y20_N4
\send_stop_temp~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \send_stop_temp~reg0feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \send_stop_temp~reg0feeder_combout\);

-- Location: FF_X31_Y20_N5
\send_stop_temp~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \send_stop_temp~reg0feeder_combout\,
	ena => send_stop_temp1(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send_stop_temp~reg0_q\);

-- Location: LCCOMB_X30_Y20_N30
\count_forbeep[0]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbeep[0]~93_combout\ = !count_forbeep(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count_forbeep(0),
	combout => \count_forbeep[0]~93_combout\);

-- Location: FF_X29_Y20_N1
\count_forbeep[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \count_forbeep[0]~93_combout\,
	sload => VCC,
	ena => \NextState.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbeep(0));

-- Location: LCCOMB_X29_Y20_N2
\count_forbeep[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbeep[1]~31_combout\ = (count_forbeep(1) & (count_forbeep(0) $ (VCC))) # (!count_forbeep(1) & (count_forbeep(0) & VCC))
-- \count_forbeep[1]~32\ = CARRY((count_forbeep(1) & count_forbeep(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_forbeep(1),
	datab => count_forbeep(0),
	datad => VCC,
	combout => \count_forbeep[1]~31_combout\,
	cout => \count_forbeep[1]~32\);

-- Location: FF_X29_Y20_N3
\count_forbeep[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbeep[1]~31_combout\,
	ena => \NextState.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbeep(1));

-- Location: LCCOMB_X29_Y20_N4
\count_forbeep[2]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbeep[2]~33_combout\ = (count_forbeep(2) & (!\count_forbeep[1]~32\)) # (!count_forbeep(2) & ((\count_forbeep[1]~32\) # (GND)))
-- \count_forbeep[2]~34\ = CARRY((!\count_forbeep[1]~32\) # (!count_forbeep(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_forbeep(2),
	datad => VCC,
	cin => \count_forbeep[1]~32\,
	combout => \count_forbeep[2]~33_combout\,
	cout => \count_forbeep[2]~34\);

-- Location: FF_X29_Y20_N5
\count_forbeep[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbeep[2]~33_combout\,
	ena => \NextState.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbeep(2));

-- Location: LCCOMB_X29_Y20_N6
\count_forbeep[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbeep[3]~35_combout\ = (count_forbeep(3) & (\count_forbeep[2]~34\ $ (GND))) # (!count_forbeep(3) & (!\count_forbeep[2]~34\ & VCC))
-- \count_forbeep[3]~36\ = CARRY((count_forbeep(3) & !\count_forbeep[2]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_forbeep(3),
	datad => VCC,
	cin => \count_forbeep[2]~34\,
	combout => \count_forbeep[3]~35_combout\,
	cout => \count_forbeep[3]~36\);

-- Location: FF_X29_Y20_N7
\count_forbeep[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbeep[3]~35_combout\,
	ena => \NextState.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbeep(3));

-- Location: LCCOMB_X29_Y20_N8
\count_forbeep[4]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbeep[4]~37_combout\ = (count_forbeep(4) & (!\count_forbeep[3]~36\)) # (!count_forbeep(4) & ((\count_forbeep[3]~36\) # (GND)))
-- \count_forbeep[4]~38\ = CARRY((!\count_forbeep[3]~36\) # (!count_forbeep(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_forbeep(4),
	datad => VCC,
	cin => \count_forbeep[3]~36\,
	combout => \count_forbeep[4]~37_combout\,
	cout => \count_forbeep[4]~38\);

-- Location: FF_X29_Y20_N9
\count_forbeep[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbeep[4]~37_combout\,
	ena => \NextState.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbeep(4));

-- Location: LCCOMB_X29_Y20_N10
\count_forbeep[5]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbeep[5]~39_combout\ = (count_forbeep(5) & (\count_forbeep[4]~38\ $ (GND))) # (!count_forbeep(5) & (!\count_forbeep[4]~38\ & VCC))
-- \count_forbeep[5]~40\ = CARRY((count_forbeep(5) & !\count_forbeep[4]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_forbeep(5),
	datad => VCC,
	cin => \count_forbeep[4]~38\,
	combout => \count_forbeep[5]~39_combout\,
	cout => \count_forbeep[5]~40\);

-- Location: FF_X29_Y20_N11
\count_forbeep[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbeep[5]~39_combout\,
	ena => \NextState.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbeep(5));

-- Location: LCCOMB_X29_Y20_N12
\count_forbeep[6]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbeep[6]~41_combout\ = (count_forbeep(6) & (!\count_forbeep[5]~40\)) # (!count_forbeep(6) & ((\count_forbeep[5]~40\) # (GND)))
-- \count_forbeep[6]~42\ = CARRY((!\count_forbeep[5]~40\) # (!count_forbeep(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_forbeep(6),
	datad => VCC,
	cin => \count_forbeep[5]~40\,
	combout => \count_forbeep[6]~41_combout\,
	cout => \count_forbeep[6]~42\);

-- Location: FF_X29_Y20_N13
\count_forbeep[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbeep[6]~41_combout\,
	ena => \NextState.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbeep(6));

-- Location: LCCOMB_X29_Y20_N14
\count_forbeep[7]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbeep[7]~43_combout\ = (count_forbeep(7) & (\count_forbeep[6]~42\ $ (GND))) # (!count_forbeep(7) & (!\count_forbeep[6]~42\ & VCC))
-- \count_forbeep[7]~44\ = CARRY((count_forbeep(7) & !\count_forbeep[6]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_forbeep(7),
	datad => VCC,
	cin => \count_forbeep[6]~42\,
	combout => \count_forbeep[7]~43_combout\,
	cout => \count_forbeep[7]~44\);

-- Location: FF_X29_Y20_N15
\count_forbeep[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbeep[7]~43_combout\,
	ena => \NextState.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbeep(7));

-- Location: LCCOMB_X29_Y20_N16
\count_forbeep[8]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbeep[8]~45_combout\ = (count_forbeep(8) & (!\count_forbeep[7]~44\)) # (!count_forbeep(8) & ((\count_forbeep[7]~44\) # (GND)))
-- \count_forbeep[8]~46\ = CARRY((!\count_forbeep[7]~44\) # (!count_forbeep(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_forbeep(8),
	datad => VCC,
	cin => \count_forbeep[7]~44\,
	combout => \count_forbeep[8]~45_combout\,
	cout => \count_forbeep[8]~46\);

-- Location: FF_X29_Y20_N17
\count_forbeep[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbeep[8]~45_combout\,
	ena => \NextState.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbeep(8));

-- Location: LCCOMB_X29_Y20_N18
\count_forbeep[9]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbeep[9]~47_combout\ = (count_forbeep(9) & (\count_forbeep[8]~46\ $ (GND))) # (!count_forbeep(9) & (!\count_forbeep[8]~46\ & VCC))
-- \count_forbeep[9]~48\ = CARRY((count_forbeep(9) & !\count_forbeep[8]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_forbeep(9),
	datad => VCC,
	cin => \count_forbeep[8]~46\,
	combout => \count_forbeep[9]~47_combout\,
	cout => \count_forbeep[9]~48\);

-- Location: FF_X29_Y20_N19
\count_forbeep[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbeep[9]~47_combout\,
	ena => \NextState.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbeep(9));

-- Location: LCCOMB_X29_Y20_N20
\count_forbeep[10]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbeep[10]~49_combout\ = (count_forbeep(10) & (!\count_forbeep[9]~48\)) # (!count_forbeep(10) & ((\count_forbeep[9]~48\) # (GND)))
-- \count_forbeep[10]~50\ = CARRY((!\count_forbeep[9]~48\) # (!count_forbeep(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_forbeep(10),
	datad => VCC,
	cin => \count_forbeep[9]~48\,
	combout => \count_forbeep[10]~49_combout\,
	cout => \count_forbeep[10]~50\);

-- Location: FF_X29_Y20_N21
\count_forbeep[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbeep[10]~49_combout\,
	ena => \NextState.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbeep(10));

-- Location: LCCOMB_X29_Y20_N22
\count_forbeep[11]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbeep[11]~51_combout\ = (count_forbeep(11) & (\count_forbeep[10]~50\ $ (GND))) # (!count_forbeep(11) & (!\count_forbeep[10]~50\ & VCC))
-- \count_forbeep[11]~52\ = CARRY((count_forbeep(11) & !\count_forbeep[10]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_forbeep(11),
	datad => VCC,
	cin => \count_forbeep[10]~50\,
	combout => \count_forbeep[11]~51_combout\,
	cout => \count_forbeep[11]~52\);

-- Location: FF_X29_Y20_N23
\count_forbeep[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbeep[11]~51_combout\,
	ena => \NextState.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbeep(11));

-- Location: LCCOMB_X29_Y20_N24
\count_forbeep[12]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbeep[12]~53_combout\ = (count_forbeep(12) & (!\count_forbeep[11]~52\)) # (!count_forbeep(12) & ((\count_forbeep[11]~52\) # (GND)))
-- \count_forbeep[12]~54\ = CARRY((!\count_forbeep[11]~52\) # (!count_forbeep(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_forbeep(12),
	datad => VCC,
	cin => \count_forbeep[11]~52\,
	combout => \count_forbeep[12]~53_combout\,
	cout => \count_forbeep[12]~54\);

-- Location: FF_X29_Y20_N25
\count_forbeep[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbeep[12]~53_combout\,
	ena => \NextState.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbeep(12));

-- Location: LCCOMB_X29_Y20_N26
\count_forbeep[13]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbeep[13]~55_combout\ = (count_forbeep(13) & (\count_forbeep[12]~54\ $ (GND))) # (!count_forbeep(13) & (!\count_forbeep[12]~54\ & VCC))
-- \count_forbeep[13]~56\ = CARRY((count_forbeep(13) & !\count_forbeep[12]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_forbeep(13),
	datad => VCC,
	cin => \count_forbeep[12]~54\,
	combout => \count_forbeep[13]~55_combout\,
	cout => \count_forbeep[13]~56\);

-- Location: FF_X29_Y20_N27
\count_forbeep[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbeep[13]~55_combout\,
	ena => \NextState.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbeep(13));

-- Location: LCCOMB_X29_Y20_N28
\count_forbeep[14]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbeep[14]~57_combout\ = (count_forbeep(14) & (!\count_forbeep[13]~56\)) # (!count_forbeep(14) & ((\count_forbeep[13]~56\) # (GND)))
-- \count_forbeep[14]~58\ = CARRY((!\count_forbeep[13]~56\) # (!count_forbeep(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_forbeep(14),
	datad => VCC,
	cin => \count_forbeep[13]~56\,
	combout => \count_forbeep[14]~57_combout\,
	cout => \count_forbeep[14]~58\);

-- Location: FF_X29_Y20_N29
\count_forbeep[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbeep[14]~57_combout\,
	ena => \NextState.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbeep(14));

-- Location: LCCOMB_X29_Y20_N30
\count_forbeep[15]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbeep[15]~59_combout\ = (count_forbeep(15) & (\count_forbeep[14]~58\ $ (GND))) # (!count_forbeep(15) & (!\count_forbeep[14]~58\ & VCC))
-- \count_forbeep[15]~60\ = CARRY((count_forbeep(15) & !\count_forbeep[14]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_forbeep(15),
	datad => VCC,
	cin => \count_forbeep[14]~58\,
	combout => \count_forbeep[15]~59_combout\,
	cout => \count_forbeep[15]~60\);

-- Location: FF_X29_Y20_N31
\count_forbeep[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbeep[15]~59_combout\,
	ena => \NextState.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbeep(15));

-- Location: LCCOMB_X29_Y19_N0
\count_forbeep[16]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbeep[16]~61_combout\ = (count_forbeep(16) & (!\count_forbeep[15]~60\)) # (!count_forbeep(16) & ((\count_forbeep[15]~60\) # (GND)))
-- \count_forbeep[16]~62\ = CARRY((!\count_forbeep[15]~60\) # (!count_forbeep(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_forbeep(16),
	datad => VCC,
	cin => \count_forbeep[15]~60\,
	combout => \count_forbeep[16]~61_combout\,
	cout => \count_forbeep[16]~62\);

-- Location: FF_X29_Y19_N1
\count_forbeep[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbeep[16]~61_combout\,
	ena => \NextState.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbeep(16));

-- Location: LCCOMB_X29_Y19_N2
\count_forbeep[17]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbeep[17]~63_combout\ = (count_forbeep(17) & (\count_forbeep[16]~62\ $ (GND))) # (!count_forbeep(17) & (!\count_forbeep[16]~62\ & VCC))
-- \count_forbeep[17]~64\ = CARRY((count_forbeep(17) & !\count_forbeep[16]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_forbeep(17),
	datad => VCC,
	cin => \count_forbeep[16]~62\,
	combout => \count_forbeep[17]~63_combout\,
	cout => \count_forbeep[17]~64\);

-- Location: FF_X29_Y19_N3
\count_forbeep[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbeep[17]~63_combout\,
	ena => \NextState.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbeep(17));

-- Location: LCCOMB_X29_Y19_N4
\count_forbeep[18]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbeep[18]~65_combout\ = (count_forbeep(18) & (!\count_forbeep[17]~64\)) # (!count_forbeep(18) & ((\count_forbeep[17]~64\) # (GND)))
-- \count_forbeep[18]~66\ = CARRY((!\count_forbeep[17]~64\) # (!count_forbeep(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_forbeep(18),
	datad => VCC,
	cin => \count_forbeep[17]~64\,
	combout => \count_forbeep[18]~65_combout\,
	cout => \count_forbeep[18]~66\);

-- Location: FF_X29_Y19_N5
\count_forbeep[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbeep[18]~65_combout\,
	ena => \NextState.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbeep(18));

-- Location: LCCOMB_X29_Y19_N6
\count_forbeep[19]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbeep[19]~67_combout\ = (count_forbeep(19) & (\count_forbeep[18]~66\ $ (GND))) # (!count_forbeep(19) & (!\count_forbeep[18]~66\ & VCC))
-- \count_forbeep[19]~68\ = CARRY((count_forbeep(19) & !\count_forbeep[18]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_forbeep(19),
	datad => VCC,
	cin => \count_forbeep[18]~66\,
	combout => \count_forbeep[19]~67_combout\,
	cout => \count_forbeep[19]~68\);

-- Location: FF_X29_Y19_N7
\count_forbeep[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbeep[19]~67_combout\,
	ena => \NextState.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbeep(19));

-- Location: LCCOMB_X29_Y19_N8
\count_forbeep[20]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbeep[20]~69_combout\ = (count_forbeep(20) & (!\count_forbeep[19]~68\)) # (!count_forbeep(20) & ((\count_forbeep[19]~68\) # (GND)))
-- \count_forbeep[20]~70\ = CARRY((!\count_forbeep[19]~68\) # (!count_forbeep(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_forbeep(20),
	datad => VCC,
	cin => \count_forbeep[19]~68\,
	combout => \count_forbeep[20]~69_combout\,
	cout => \count_forbeep[20]~70\);

-- Location: FF_X29_Y19_N9
\count_forbeep[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbeep[20]~69_combout\,
	ena => \NextState.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbeep(20));

-- Location: LCCOMB_X29_Y19_N10
\count_forbeep[21]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbeep[21]~71_combout\ = (count_forbeep(21) & (\count_forbeep[20]~70\ $ (GND))) # (!count_forbeep(21) & (!\count_forbeep[20]~70\ & VCC))
-- \count_forbeep[21]~72\ = CARRY((count_forbeep(21) & !\count_forbeep[20]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_forbeep(21),
	datad => VCC,
	cin => \count_forbeep[20]~70\,
	combout => \count_forbeep[21]~71_combout\,
	cout => \count_forbeep[21]~72\);

-- Location: FF_X29_Y19_N11
\count_forbeep[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbeep[21]~71_combout\,
	ena => \NextState.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbeep(21));

-- Location: LCCOMB_X29_Y19_N12
\count_forbeep[22]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbeep[22]~73_combout\ = (count_forbeep(22) & (!\count_forbeep[21]~72\)) # (!count_forbeep(22) & ((\count_forbeep[21]~72\) # (GND)))
-- \count_forbeep[22]~74\ = CARRY((!\count_forbeep[21]~72\) # (!count_forbeep(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_forbeep(22),
	datad => VCC,
	cin => \count_forbeep[21]~72\,
	combout => \count_forbeep[22]~73_combout\,
	cout => \count_forbeep[22]~74\);

-- Location: FF_X29_Y19_N13
\count_forbeep[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbeep[22]~73_combout\,
	ena => \NextState.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbeep(22));

-- Location: LCCOMB_X29_Y19_N14
\count_forbeep[23]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbeep[23]~75_combout\ = (count_forbeep(23) & (\count_forbeep[22]~74\ $ (GND))) # (!count_forbeep(23) & (!\count_forbeep[22]~74\ & VCC))
-- \count_forbeep[23]~76\ = CARRY((count_forbeep(23) & !\count_forbeep[22]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_forbeep(23),
	datad => VCC,
	cin => \count_forbeep[22]~74\,
	combout => \count_forbeep[23]~75_combout\,
	cout => \count_forbeep[23]~76\);

-- Location: FF_X29_Y19_N15
\count_forbeep[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbeep[23]~75_combout\,
	ena => \NextState.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbeep(23));

-- Location: LCCOMB_X29_Y19_N16
\count_forbeep[24]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbeep[24]~77_combout\ = (count_forbeep(24) & (!\count_forbeep[23]~76\)) # (!count_forbeep(24) & ((\count_forbeep[23]~76\) # (GND)))
-- \count_forbeep[24]~78\ = CARRY((!\count_forbeep[23]~76\) # (!count_forbeep(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_forbeep(24),
	datad => VCC,
	cin => \count_forbeep[23]~76\,
	combout => \count_forbeep[24]~77_combout\,
	cout => \count_forbeep[24]~78\);

-- Location: FF_X29_Y19_N17
\count_forbeep[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbeep[24]~77_combout\,
	ena => \NextState.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbeep(24));

-- Location: LCCOMB_X29_Y19_N18
\count_forbeep[25]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbeep[25]~79_combout\ = (count_forbeep(25) & (\count_forbeep[24]~78\ $ (GND))) # (!count_forbeep(25) & (!\count_forbeep[24]~78\ & VCC))
-- \count_forbeep[25]~80\ = CARRY((count_forbeep(25) & !\count_forbeep[24]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_forbeep(25),
	datad => VCC,
	cin => \count_forbeep[24]~78\,
	combout => \count_forbeep[25]~79_combout\,
	cout => \count_forbeep[25]~80\);

-- Location: FF_X29_Y19_N19
\count_forbeep[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbeep[25]~79_combout\,
	ena => \NextState.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbeep(25));

-- Location: LCCOMB_X29_Y19_N20
\count_forbeep[26]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbeep[26]~81_combout\ = (count_forbeep(26) & (!\count_forbeep[25]~80\)) # (!count_forbeep(26) & ((\count_forbeep[25]~80\) # (GND)))
-- \count_forbeep[26]~82\ = CARRY((!\count_forbeep[25]~80\) # (!count_forbeep(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_forbeep(26),
	datad => VCC,
	cin => \count_forbeep[25]~80\,
	combout => \count_forbeep[26]~81_combout\,
	cout => \count_forbeep[26]~82\);

-- Location: FF_X29_Y19_N21
\count_forbeep[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbeep[26]~81_combout\,
	ena => \NextState.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbeep(26));

-- Location: LCCOMB_X29_Y19_N22
\count_forbeep[27]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbeep[27]~83_combout\ = (count_forbeep(27) & (\count_forbeep[26]~82\ $ (GND))) # (!count_forbeep(27) & (!\count_forbeep[26]~82\ & VCC))
-- \count_forbeep[27]~84\ = CARRY((count_forbeep(27) & !\count_forbeep[26]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_forbeep(27),
	datad => VCC,
	cin => \count_forbeep[26]~82\,
	combout => \count_forbeep[27]~83_combout\,
	cout => \count_forbeep[27]~84\);

-- Location: FF_X29_Y19_N23
\count_forbeep[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbeep[27]~83_combout\,
	ena => \NextState.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbeep(27));

-- Location: LCCOMB_X29_Y19_N24
\count_forbeep[28]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbeep[28]~85_combout\ = (count_forbeep(28) & (!\count_forbeep[27]~84\)) # (!count_forbeep(28) & ((\count_forbeep[27]~84\) # (GND)))
-- \count_forbeep[28]~86\ = CARRY((!\count_forbeep[27]~84\) # (!count_forbeep(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_forbeep(28),
	datad => VCC,
	cin => \count_forbeep[27]~84\,
	combout => \count_forbeep[28]~85_combout\,
	cout => \count_forbeep[28]~86\);

-- Location: FF_X29_Y19_N25
\count_forbeep[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbeep[28]~85_combout\,
	ena => \NextState.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbeep(28));

-- Location: LCCOMB_X29_Y19_N26
\count_forbeep[29]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbeep[29]~87_combout\ = (count_forbeep(29) & (\count_forbeep[28]~86\ $ (GND))) # (!count_forbeep(29) & (!\count_forbeep[28]~86\ & VCC))
-- \count_forbeep[29]~88\ = CARRY((count_forbeep(29) & !\count_forbeep[28]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_forbeep(29),
	datad => VCC,
	cin => \count_forbeep[28]~86\,
	combout => \count_forbeep[29]~87_combout\,
	cout => \count_forbeep[29]~88\);

-- Location: FF_X29_Y19_N27
\count_forbeep[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbeep[29]~87_combout\,
	ena => \NextState.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbeep(29));

-- Location: LCCOMB_X29_Y19_N28
\count_forbeep[30]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbeep[30]~89_combout\ = (count_forbeep(30) & (!\count_forbeep[29]~88\)) # (!count_forbeep(30) & ((\count_forbeep[29]~88\) # (GND)))
-- \count_forbeep[30]~90\ = CARRY((!\count_forbeep[29]~88\) # (!count_forbeep(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_forbeep(30),
	datad => VCC,
	cin => \count_forbeep[29]~88\,
	combout => \count_forbeep[30]~89_combout\,
	cout => \count_forbeep[30]~90\);

-- Location: FF_X29_Y19_N29
\count_forbeep[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbeep[30]~89_combout\,
	ena => \NextState.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbeep(30));

-- Location: LCCOMB_X29_Y19_N30
\count_forbeep[31]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_forbeep[31]~91_combout\ = count_forbeep(31) $ (!\count_forbeep[30]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_forbeep(31),
	cin => \count_forbeep[30]~90\,
	combout => \count_forbeep[31]~91_combout\);

-- Location: FF_X29_Y19_N31
\count_forbeep[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count_forbeep[31]~91_combout\,
	ena => \NextState.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_forbeep(31));

-- Location: LCCOMB_X30_Y19_N12
\Equal10~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal10~9_combout\ = (!count_forbeep(31) & (!count_forbeep(30) & (!count_forbeep(29) & !count_forbeep(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_forbeep(31),
	datab => count_forbeep(30),
	datac => count_forbeep(29),
	datad => count_forbeep(28),
	combout => \Equal10~9_combout\);

-- Location: LCCOMB_X30_Y19_N28
\Equal10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal10~5_combout\ = (!count_forbeep(16) & (!count_forbeep(18) & (!count_forbeep(19) & !count_forbeep(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_forbeep(16),
	datab => count_forbeep(18),
	datac => count_forbeep(19),
	datad => count_forbeep(17),
	combout => \Equal10~5_combout\);

-- Location: LCCOMB_X30_Y19_N18
\Equal10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal10~6_combout\ = (!count_forbeep(21) & (!count_forbeep(23) & (!count_forbeep(22) & !count_forbeep(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_forbeep(21),
	datab => count_forbeep(23),
	datac => count_forbeep(22),
	datad => count_forbeep(20),
	combout => \Equal10~6_combout\);

-- Location: LCCOMB_X30_Y19_N0
\Equal10~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal10~7_combout\ = (\Equal10~5_combout\ & \Equal10~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal10~5_combout\,
	datad => \Equal10~6_combout\,
	combout => \Equal10~7_combout\);

-- Location: LCCOMB_X30_Y19_N30
\Equal10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal10~8_combout\ = (!count_forbeep(27) & (!count_forbeep(26) & (!count_forbeep(24) & !count_forbeep(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_forbeep(27),
	datab => count_forbeep(26),
	datac => count_forbeep(24),
	datad => count_forbeep(25),
	combout => \Equal10~8_combout\);

-- Location: LCCOMB_X30_Y20_N22
\Equal10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal10~3_combout\ = (!count_forbeep(15) & (!count_forbeep(12) & (!count_forbeep(13) & !count_forbeep(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_forbeep(15),
	datab => count_forbeep(12),
	datac => count_forbeep(13),
	datad => count_forbeep(14),
	combout => \Equal10~3_combout\);

-- Location: LCCOMB_X30_Y20_N18
\Equal10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal10~1_combout\ = (count_forbeep(5) & (!count_forbeep(6) & (count_forbeep(4) & !count_forbeep(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_forbeep(5),
	datab => count_forbeep(6),
	datac => count_forbeep(4),
	datad => count_forbeep(7),
	combout => \Equal10~1_combout\);

-- Location: LCCOMB_X29_Y20_N0
\Equal10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal10~0_combout\ = (count_forbeep(1) & (!count_forbeep(2) & (!count_forbeep(0) & !count_forbeep(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_forbeep(1),
	datab => count_forbeep(2),
	datac => count_forbeep(0),
	datad => count_forbeep(3),
	combout => \Equal10~0_combout\);

-- Location: LCCOMB_X30_Y20_N12
\Equal10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal10~2_combout\ = (!count_forbeep(10) & (!count_forbeep(9) & (!count_forbeep(8) & !count_forbeep(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_forbeep(10),
	datab => count_forbeep(9),
	datac => count_forbeep(8),
	datad => count_forbeep(11),
	combout => \Equal10~2_combout\);

-- Location: LCCOMB_X30_Y20_N28
\Equal10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal10~4_combout\ = (\Equal10~3_combout\ & (\Equal10~1_combout\ & (\Equal10~0_combout\ & \Equal10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~3_combout\,
	datab => \Equal10~1_combout\,
	datac => \Equal10~0_combout\,
	datad => \Equal10~2_combout\,
	combout => \Equal10~4_combout\);

-- Location: LCCOMB_X30_Y20_N16
\Equal10~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal10~10_combout\ = (((!\Equal10~4_combout\) # (!\Equal10~8_combout\)) # (!\Equal10~7_combout\)) # (!\Equal10~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~9_combout\,
	datab => \Equal10~7_combout\,
	datac => \Equal10~8_combout\,
	datad => \Equal10~4_combout\,
	combout => \Equal10~10_combout\);

-- Location: FF_X30_Y20_N17
\beep~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Equal10~10_combout\,
	ena => \NextState.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \beep~reg0_q\);

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

ww_transform_out(0) <= \transform_out[0]~output_o\;

ww_transform_out(1) <= \transform_out[1]~output_o\;

ww_transform_out(2) <= \transform_out[2]~output_o\;

ww_transform_out(3) <= \transform_out[3]~output_o\;

ww_transform_out(4) <= \transform_out[4]~output_o\;

ww_transform_out(5) <= \transform_out[5]~output_o\;

ww_transform_out(6) <= \transform_out[6]~output_o\;

ww_transform_out(7) <= \transform_out[7]~output_o\;

ww_key <= \key~output_o\;

ww_send_start_temp <= \send_start_temp~output_o\;

ww_send_stop_temp <= \send_stop_temp~output_o\;

ww_beep <= \beep~output_o\;
END structure;


