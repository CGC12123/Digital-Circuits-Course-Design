-- 该模块作为独立速度控制模块使用 直接输出于pwm控制端
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
--********
entity pid_speed is
port (
		clk: in std_logic; -- 时钟信号
		clk_:in std_logic; -- 时钟信号2 频率暂时未知
		huoer_l:	in std_logic; -- 霍尔传感器传入电平信号
		huoer_r:	in std_logic; -- 霍尔传感器传入电平信号
		
		taw_out_l: out integer range 0 to 20;
		taw_out_r: out integer range 0 to 20
);
end pid_speed;
--**************
architecture ach of pid_speed is
	signal  count_speed 	: integer;
	signal  target_speed	: integer := 60; -- 设置目标速度 单位为厘米每秒
	signal  now_speed_l	: integer;
	signal  now_speed_r	: integer;
	
	--** 计算速度相关参数 **--
	signal  time_count	: integer range 0 to 100:= 0;
	signal  time_count_1l : integer range 0 to 100; -- 计算时间差的中间变量
	signal  time_count_2l : integer range 0 to 100;
	signal  time_count_1r : integer range 0 to 100;
	signal  time_count_2r : integer range 0 to 100;
	
	signal  huoer_count_l : integer;
	signal  huoer_count_r : integer;
	
	--** pid相关参数 **--
	signal  kp : integer := 5; -- p
	signal  ki : integer := 3; -- i
	signal  kd : integer := 0; -- d
	
	signal  bias_l			: integer := 0; -- 偏移量
	signal  bias_last_l	: integer := 0; -- 上一位偏移量
	signal  bias_count_l	: integer := 0; -- 偏移积分量
	signal  bias_d_l		: integer := 0; -- 偏移微分量
	signal  de_l			: integer := 0;
	
	signal  bias_r			: integer := 0; -- 偏移量
	signal  bias_last_r	: integer := 0; -- 上一位偏移量
	signal  bias_count_r	: integer := 0; -- 偏移积分量
	signal  bias_d_r		: integer := 0; -- 偏移微分量
	signal  de_r			: integer := 0;
	
begin
pid: process(clk)
begin
	if clk' event and clk = '1' then 
	--** pid计算 **--
		bias_last_l <= bias_l;
		bias_l <= target_speed - now_speed_l; -- 当前差值
		bias_count_l <= bias_count_l + target_speed - now_speed_l; -- 积分量
		bias_d_l <= bias_l - bias_last_l; -- 两次误差差值 d量
		
		bias_last_r <= bias_r;
		bias_r <= target_speed - now_speed_r; -- 当前差值
		bias_count_r <= bias_count_r + target_speed - now_speed_r; -- 积分量
		bias_d_r <= bias_r - bias_last_r; -- 两次误差差值 d量
		
		de_l <= kp * bias_l + ki * bias_count_l + kd * bias_d_l; -- pid
		de_r <= kp * bias_r + ki * bias_count_r + kd * bias_d_r; -- pid
		
	end if;
end process pid;	

get_speed_l: process(clk, huoer_l)
begin
	if huoer_l'event and huoer_l = '1' then
		huoer_count_l <= huoer_count_l + 1;
		if huoer_count_l = 
	end if;
end process get_speed;

get_time: process(clk_, time_count)
begin
	if clk_'event and clk_ = '1' then
		time_count <= time_count + 1;
	end if;
end process get_time;

end ach;