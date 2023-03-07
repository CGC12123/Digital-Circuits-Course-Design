library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
--*******************************
entity receive is
	port(
			clk, start: in std_logic;
			x_out: out std_logic_vector(7 downto 0));
end receive;
--******************************
architecture abc of receive is
signal q1, q2: std_logic_vector(4 downto 0);
signal q3: std_logic_vector(5 downto 0);
signal data1: std_logic_vector(7 downto 0);
begin
-- 接受解码电路
-- 解码结果在data1中
-- clk: 100ns 解码电路时钟
process(clk, start)
begin
	if start = '1' then -- 接收到同步头
		q1 <= "00000"; -- 准备判断电平宽度 用计数器q1表示 先清零
	elsif start = '0' then -- 测量电平宽度
		if clk' event and clk = '1' then -- 每个接收时钟中q1计数器加1
		q1 <= q1 + 1; q2 <= q1; -- q1当前结果保存在q2中
		end if;
	end if;
end process;

--*******************************

process(start, q2)
begin
	if start' event and start = '1' then -- 接收信号以此上升沿代表一次低电平测量结束
		if q2(4) = '1' then data1 <= "00000000"; -- q2最高位为1则为结束信号 清零data1寄存器
		--** 以下为协议判断内容 **--
		--** 理论上0 **--
		elsif "1000" < q2(3 downto 0) then data1 <= data1(6 downto 0) & '0'; -- 若大于8则判断为高电平
		elsif q2(3 downto 0) <= "0110" then data1 <= data1(6 downto 0) & '1'; -- 小于6为低电平
		--****--
		end if;
	end if;
end process;
x_out <= data1; -- 并行输出结果
end abc;