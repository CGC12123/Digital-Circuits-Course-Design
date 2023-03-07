library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity	control	is
	port(
		clk_50 	:		in	std_logic; -- 时钟信号
		input 	:		in	std_logic_vector(3 downto 0); -- 循迹模块输入 有返回为1
		if_start:		in std_logic; -- 出发按键
		model_fb:		in std_logic; -- 前车0 后车1
		
		l :				out std_logic_vector(1 downto 0); -- 左轮旋转情况 10为正转
		r :				out std_logic_vector(1 downto 0); -- 右轮旋转情况
		ref_L :			out integer range 0 to 20 + 1 ; -- pwml 二十分
		ref_R :			out integer range 0 to 20 + 1 ; -- pwmr
		transform_out:	out std_logic_vector(7 downto 0); -- 红外传输信号
		key:				out std_logic; -- 信号发送键
		
		send_start_temp: 	out std_logic := '0'; -- 发送后车发车信号标志位
		send_stop_temp: 	out std_logic := '0'; -- 发送后车听停车信号标志位
		
		beep:				out std_logic := '0'); -- 响铃信号
		
end	control;

architecture beh of control is
	type	state	is	(START, FORWARD, STOP, TURN_LEFT, TURN_RIGHT, TURN_LEFTW, TURN_RIGHTW, STOP_READY); -- 状态机
	signal	NextState:		state;	
	signal 	signal_go:		std_logic; -- 起始信号 按键输入
	signal	transform_go:	std_logic; -- 后车出发信号
	signal	transform_stop:std_logic; -- 后车停止信号
	signal	send_open:		std_logic := '0'; -- 前车信号发送 开始条件
	signal	send_stop:		std_logic := '0'; -- 前车信号发送 停止条件

	signal 	count: 			integer:= 0; -- 计数器信号
	
	signal 	send_open_temp1:integer:= 0; -- 解决multiple问题 独立进程设置send_open
	signal 	send_open_temp2:integer:= 0;
	
	signal 	send_stop_temp1:integer:= 0; -- 解决multiple问题 独立进程设置send_stop
	signal 	send_stop_temp2:integer:= 0;
	
	signal 	count_forbs:	integer:= 0;
	signal	count_forbeep:	integer:= 0;
	
	signal 	model_bs:		std_logic; -- 小圈0 大圈1
	
	signal temp: std_logic := '0'; -- 单次遇到停止线标志位;
begin
SwitchToNextState : process (clk_50, input, model_fb)
begin
	if clk_50'event and clk_50='1' then -- 引入时钟信号进行判断 上升沿判断
	--** 以下为分模式下循迹 **--
	-- 初始信号处理
		if if_start = '0' then -- 为0代表其按下
			signal_go <= '1';
		else signal_go <= '0';
		end if;
		
		if signal_go = '1' then
			
			send_open_temp1 <= 1; -- 传输信号
			
			if model_bs = '0' then -- 走小圈 左优先
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
				--** 过弯 只考虑左情况 **--
				when "0111" => -- 遇到弯道 左大转弯 情况一
					NextState <= TURN_RIGHT;
				when "0011" => -- 遇到弯道 左大转弯 情况二
					NextState <= TURN_RIGHT;
				--** 忽略最右识别到线的情况 **-- 待测试
				when "1110" => -- 偏左多 情况一
					NextState <= FORWARD;
				when "1100" => -- 偏左多 情况二
					NextState <= FORWARD;
				when others =>
					NextState <= FORWARD;
				end case;
			else -- 走大圈 右优先
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
					NextState <= FORWARD;
				when "0011" =>
					NextState <= FORWARD;	
				--** 最右识别到线 **--
				when "1110" => -- 偏左多 防止过弯道识别为微偏被拉过去
					NextState <= TURN_LEFT;
				when "1100" =>
					NextState <= TURN_LEFT;
				when "0101" =>
					NextState <= TURN_LEFT;
				when "0110" =>
					NextState <= TURN_LEFT;
				when "1001" =>
					NextState <= TURN_LEFTW;
				when others =>
					NextState <= FORWARD;
				end case;
			end if; -- 循迹状态判断结束
	
			if NextState = STOP_READY and count_forbs = 4 then
				NextState <= STOP;
			end if;
--******************************当前状态执行方案分析完成
			-- 处理下一状态
			case NextState is
			when FORWARD =>
				l <= "10";
				r <= "10";
				ref_l <= 6;
				ref_R <= 6;
			when STOP =>
				l <= "00";
				r <= "00";
				ref_l <= 0;
				ref_R <= 0;
				send_stop_temp1 <= 1;-- 发送停车信号
			when TURN_LEFT => -- 向右大转
				l <= "10";
				r <= "01";
				ref_l <= 10;
				ref_R <= 10;
			when TURN_RIGHT => -- 向左大转
				l <= "01";
				r <= "10";
				ref_l <= 10;
				ref_R <= 10;
			when TURN_LEFTW => -- 向右微调
				l <= "10";
				r <= "00";
				ref_l <= 5;
				ref_R <= 10;
			when TURN_RIGHTW => -- 向左微调
				l <= "00";
				r <= "10";
				ref_l <= 10;
				ref_R <= 5;
			when others => -- 其余直走
				l <= "00";
				r <= "00";
				ref_l <= 0;
				ref_R <= 0;
			end case;
		end if; -- 未接受到任务开始信号
  end if;
end process SwitchToNextState;

--*************************************************************************************************
--** 走大圈或小圈选择 **--
--** 该写法对速度有要求 **--
SetBigorSmall : process(clk_50, model_fb, input)
begin
	if clk_50' event and clk_50 = '1' then
		if input = "0000" then -- 遇到停止线
			if temp = '0' then
				count_forbs <= count_forbs + 1;
				temp <= '1';
			end if;
		elsif input /= "0000" and temp = '1'then
			temp <= '0';
		end if;
		-------
		if model_fb = '0' then-- 前车
			if count_forbs = 1 or count_forbs = 2 then
				model_bs <= '1';
			else
				model_bs <= '0';
			end if;
		------
		else -- 后车
			if count_forbs = 1 or count_forbs = 3 then
				model_bs <= '1';
			else
				model_bs <= '0';
			end if;
		end if;
	end if;
end process SetBigorSmall;

--***************************************************************************************************
Send : process(clk_50, send_open, send_stop) -- 独立发送数据传输
begin
	if clk_50' event and clk_50 = '1' then
	
		if send_open = '1' then -- 将发送发车信号
			key <= '0'; -- 清零做发送前准备
			transform_out <= "00000000";
			if count = 1 then
				transform_out <= "01100111"; -- 八位数据传输后车出发信号 高位为1为了防止传输过程误识别
				key <= '1'; -- 发送
				count <= 0;
				send_open_temp2 <= 0; -- 重置信号防止发送中断
			else count <= 0;
			end if;

		elsif send_stop = '1' then -- 将发送停车信号
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
end process Send;
--********************************************************************
judge_send_open : process(clk_50, send_open_temp1, send_open_temp2)
begin 
	if clk_50' event and clk_50 = '1' then
		if send_open_temp1 = 1 or send_open_temp2 = 1 then
			send_open <= '1';
			send_start_temp <= '1';
		end if;
	end if;
end process judge_send_open;
--***************************************************************************
judge_send_stop : process(clk_50, send_stop_temp1, send_stop_temp2)
begin 
	if clk_50' event and clk_50 = '1' then
		if send_stop_temp1 = 1 or send_stop_temp2 = 1 then
			send_stop <= '1';
			send_stop_temp <= '1';
		end if;
	end if;
end process judge_send_stop;
--*****************************************************************************
ifbeep : process(clk_50)
begin
	if clk_50' event and clk_50 = '1' then
		if NEXTSTATE = STOP then
			beep <= '1';
			count_forbeep <= count_forbeep + 1;
			if count_forbeep = 50 then
				beep <= '0';
			end if;
		end if;
	end if;
end process ifbeep;

end beh;