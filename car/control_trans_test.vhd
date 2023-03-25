library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity	control_trans_test	is
	port(
		clk_50 	:		in	std_logic; -- 时钟信号
		clk_25m	:		in std_logic; -- 25m时钟
		input 	:		in	std_logic_vector(3 downto 0); -- 循迹模块输入 有返回为1
		if_start:		in std_logic; -- 出发按键
		
		model_fb:		in std_logic; -- 前车0 后车1
		
		transform:		in std_logic_vector(7 downto 0):= "00000000"; -- 接收红外传输信号
		
		l :				out std_logic_vector(1 downto 0); -- 左轮旋转情况 10为正转
		r :				out std_logic_vector(1 downto 0); -- 右轮旋转情况
		ref_L :			out integer range 0 to 20 + 1 ; -- pwml 二十分
		ref_R :			out integer range 0 to 20 + 1 ; -- pwmr
		
		show_model:		out std_logic; -- 输出当前模式
		out_test:		out std_logic_vector(3 downto 0); -- 循迹模块检测电平信号输出
		out_start:		out std_logic; -- 是否发车信号判断
		
		-- 以下为通信使用
		transform_out:	out std_logic_vector(7 downto 0); -- 红外传输信号
		
		out_start_back:out std_logic:= '0'; -- 后车是否接收到发车信号
		
		key:				out std_logic; -- 信号发送键
		send_start_temp: 	out std_logic := '0'; -- 发送后车发车信号标志位
		send_stop_temp: 	out std_logic := '0'); -- 发送后车听停车信号标志位
		
end	control_trans_test;

architecture beh of control_trans_test is
	type	state	is	(START, FORWARD, STOP, TURN_LEFT, TURN_RIGHT, TURN_LEFTW, TURN_RIGHTW, STOP_READY); -- 状态机
	signal	NextState:		state;	
	signal 	signal_go:		std_logic := '0'; -- 起始信号 按键输入
	signal	signal_go_back:std_logic := '0';
	signal	model_bs:		std_logic; -- 小圈0 大圈1
	signal 	count_forbs:	integer:= 0;
	
	signal 	count: 			integer:= 0; -- 计数器信号
	
	signal 	temp: 			std_logic := '0'; -- 单次遇到停止线标志位;
	
	signal	if_backcar_go:	std_logic := '0'; -- 后车出发信号
	signal	if_backcar_stop:std_logic:= '0'; -- 后车停止信号
	
	signal	send_open:		std_logic := '0'; -- 前车信号发送 开始条件
	signal	send_stop:		std_logic := '0'; -- 前车信号发送 停止条件
	
	signal 	send_open_temp1:integer:= 0; -- 解决multiple问题 独立进程设置send_open
	signal 	send_open_temp2:integer:= 0;
	
	signal 	send_stop_temp1:integer:= 0; -- 解决multiple问题 独立进程设置send_stop
	signal 	send_stop_temp2:integer:= 0;
	
begin
SwitchToNextState : process (clk_25m, input, model_bs) -- 主要控制进程
begin
	if clk_25m'event and clk_25m='1' then -- 引入时钟信号进行判断 上升沿判断
	--** 以下为分模式下循迹 **--
	-- 初始信号处理
	
	------------------------------------------------
		-- 是否发车判断
		if if_start = '0' then
			signal_go <= '1'; -- 前车发车使能
			send_open_temp1 <= 1; -- 向后传出发车信号使能
		end if;
	------------------------------------------------
		if if_backcar_go = '1' then
			signal_go_back <= '1';
		end if;
	------------------------------
	
		out_start <= signal_go;
		show_model <= model_bs;
		
		out_test <= input;
		
		if (signal_go = '1' and model_fb = '0') or (signal_go_back = '1' and model_fb = '1') then
			
			if model_bs = '0' then -- 走小圈 左优先
				case input is -- 白1 黑0 引脚4321
				when "1001" => -- 直线走
					NextState <= FORWARD;
				when "0000" => -- 停止信号
					NextState <= STOP_READY;
				--** 略偏修正 **--	
				when "1101" => -- 略偏左 修正
					NextState <= TURN_LEFTW;
				when "1011" => -- 略偏右 修正
					NextState <= TURN_RIGHTW;
				--** 过弯 只考虑左情况 **--
				when "0111" => -- 遇到弯道 左大转弯 情况一
					NextState <= TURN_RIGHT;
				--** 忽略最右识别到线的情况 **-- 待测试
				when "1110" => -- 偏左多 情况一
					NextState <= TURN_RIGHT;
				when "1100" => -- 偏左多 情况二
					NextState <= TURN_LEFTW;
				when others =>
					NextState <= FORWARD;
				end case;
				
				-- 针对小圈做优化
				if input(3) = '0' and input /= "0000" then -- 只要最左识别到线就大拉
					NextState <= TURN_LEFT;
				end if;
				
				if NextState = STOP_READY and count_forbs >= 4 then
					NextState <= STOP;
				end if;
				
				-- 处理下一状态
				-- 处理下一状态
				case NextState is
				when FORWARD =>
					l <= "10";
					r <= "10";
					ref_l <= 12;
					ref_R <= 12;
				when STOP =>
					l <= "00";
					r <= "00";
					ref_l <= 0;
					ref_R <= 0;
					signal_go <= '0';
				when TURN_LEFT => -- 向右大转
					l <= "10";
					r <= "01";
					ref_l <= 14;
					ref_R <= 14;
				when TURN_RIGHT => -- 向左大转
					l <= "01";
					r <= "10";
					ref_l <= 14;
					ref_R <= 14;
				when TURN_LEFTW => -- 向右微调
					l <= "10";
					r <= "00";
					ref_l <= 11;
					ref_R <= 0;
				when TURN_RIGHTW => -- 向左微调
					l <= "00";
					r <= "10";
					ref_l <= 0;
					ref_R <= 11;
				when others => -- 其余直走
					l <= "10";
					r <= "10";
					ref_l <= 12;
					ref_R <= 12;
				end case;
--***********************************
			else -- 走大圈 右优先 可能左拉速度需比小圈慢防止误识别
				case input is--白1 黑0 引脚4321 板子2134？
				when "1001" => -- 直线走
					NextState <= FORWARD;
				when "0000" => -- 停止信号
					NextState <= STOP_READY;
				--** 略偏修正 **--	
				when "1101" => -- 略偏左 修正
					NextState <= TURN_LEFTW;
				when "1011" => -- 略偏右 修正
					NextState <= TURN_RIGHTW;
				--** 过弯 不考虑左情况 **--
				when "0111" =>
					NextState <= TURN_LEFT;
				when "0011" =>
					NextState <= FORWARD;	
				--** 最右识别到线 **--
				when "1110" => -- 偏左多 防止过弯道识别为微偏被拉过去
					NextState <= TURN_LEFT;
				when "1100" =>
					NextState <= TURN_LEFTW;
				when "0101" =>
					NextState <= FORWARD;
				when "0110" =>
					NextState <= FORWARD;
				when others =>
					NextState <= FORWARD;
				end case;
			
				-- 针对大圈做优化
				if input(0) = '0' and input /= "0000" then -- 只要最右识别到线就大拉
					NextState <= TURN_RIGHT;
				end if;
				
				if NextState = STOP_READY and count_forbs >= 4 then
					NextState <= STOP;
				end if;

--******************************当前状态执行方案分析完成
				-- 处理下一状态
				-- 处理下一状态
				case NextState is
				when FORWARD =>
					l <= "10";
					r <= "10";
					ref_l <= 12;
					ref_R <= 12;
				when STOP =>
					l <= "00";
					r <= "00";
					ref_l <= 0;
					ref_R <= 0;
					signal_go <= '0'; -- 关闭使能
				when TURN_LEFT => -- 向右大转
					l <= "10";
					r <= "01";
					ref_l <= 14;
					ref_R <= 14;
				when TURN_RIGHT => -- 向左大转
					l <= "01";
					r <= "10";
					ref_l <= 14;
					ref_R <= 14;
				when TURN_LEFTW => -- 向右微调
					l <= "10";
					r <= "00";
					ref_l <= 11;
					ref_R <= 0;
				when TURN_RIGHTW => -- 向左微调
					l <= "00";
					r <= "10";
					ref_l <= 0;
					ref_R <= 11;
				when others => -- 其余直走
					l <= "10";
					r <= "10";
					ref_l <= 12;
					ref_R <= 12;
				end case;
			end if; -- 循迹状态判断结束
		end if; -- 未接受到任务开始信号
	
  end if;
end process SwitchToNextState;

--*************************************************************************************************
--** 该写法对速度有要求 **--
--** 走大圈或小圈选择 **--
--** 前车小大小010 后车小小大001 **--
SetBigorSmall : process(clk_50, model_fb, input)
begin
	if clk_50' event and clk_50 = '1' then
		if signal_go = '1' then
			if input = "0000" then -- 遇到停止线 判断是否过线
				if temp = '0' then
					count_forbs <= count_forbs + 1;
					temp <= '1';
				end if;
			elsif input /= "0000" and temp = '1'then
				temp <= '0';
			end if;
			-------
			if model_fb = '0' then-- 前车
				if count_forbs = 1 or count_forbs = 3 then
					model_bs <= '0';
				else
					model_bs <= '1';
				end if;
			------
			else -- 后车
				if count_forbs = 1 or count_forbs = 2 then
					model_bs <= '0';
				else
					model_bs <= '1';
				end if;
			end if;
		end if;
	end if;
end process SetBigorSmall;

--***************************************************************************************************
--***************************************************************************************************
-- 独立发送数据传输
-- 处理发车或停车数据传输
Send : process(clk_50, send_open, send_stop) 
begin
	if clk_50' event and clk_50 = '1' then
		if model_fb = '0' then
			-- 将发送发车信号
			if send_open = '1' then
				key <= '0'; -- 清零做发送前准备
				transform_out <= "00000000";
				if count = 1 then
					transform_out <= "01100111"; -- 八位数据传输后车出发信号 高位为1为了防止传输过程误识别
					key <= '1'; -- 发送
					count <= 0;
					send_open_temp2 <= 0; -- 重置信号防止发送中断
				else count <= 0;
				end if;
			end if;
			
			-- 将发送停车信号
			if send_stop = '1' then 
				key <= '0'; -- 清零做发送前准备
				transform_out <= "00000000";
				if count = 1 then
					transform_out <= "01100100"; -- 八位数据传输后车停车信号 高位为1为了防止传输过程误识别
					key <= '1'; -- 发送
					count <= 0;
					send_stop_temp2 <= 0; -- 重置信号防止发送中断
				else count <= 1;
				end if;
			end if;
		end if;
	end if;
end process Send;

--********************************************************************
judge_send_open : process(clk_50, send_open_temp1, send_open_temp2)
begin 
	if clk_50' event and clk_50 = '1' then
		if model_fb = '0' then 
			if (send_open_temp1 = 1) or (send_open_temp2 = 1) then
				send_open <= '1';
				send_start_temp <= '1'; -- 是否发出开车信号
			end if;
		end if;
	end if;
end process judge_send_open;

--***************************************************************************
judge_send_stop : process(clk_50, send_stop_temp1, send_stop_temp2)
begin 
	if clk_50' event and clk_50 = '1' then
		if model_fb = '0' then
			if (send_stop_temp1 = 1) or (send_stop_temp2 = 1) then
				send_stop <= '1';
				send_stop_temp <= '1'; -- 是否发出停车信号
			end if;
		end if;
	end if;
end process judge_send_stop;
--*****************************************************************************
 -- 处理接收到的信号
judge_singal_receive : process(clk_50, transform)
begin
	if clk_50' event and clk_50 = '1' then
		if model_fb = '1' then
			-- 后车是否发车 有点冗余 待修改
--			if transform = "01100111" then
			if transform /= "00000000" then
				if_backcar_go <= '1';
				out_start_back <= '1'; -- 测试信号

			elsif transform = "01100100" then
				if_backcar_stop <= '1';
				
			end if;
		end if;
	end if;
end process judge_singal_receive; 		
--*****************************************************************************

		

end beh;