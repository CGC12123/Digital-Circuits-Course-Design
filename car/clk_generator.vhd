library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity clk_generator is -- 时钟发生器 实体
	port(
		clkin : in std_logic; -- 板子时钟信号 50MHz
		clk_12_5M : out std_logic; -- 输出12.5MHz时钟信号 100ns周期用该
		clk_50 : out std_logic; -- 输出50Hz时钟信号 用于按键等时钟
		clk_2_5M: out std_logic; -- 输出2.5MHz时钟信号
		clk_38K:out std_logic -- 输出38kHz时钟信号
		);
end clk_generator;

architecture struct of clk_generator is
	component divider_12_5M is -- 声明元件
		generic(LEN : integer := 2); -- 12.5MHz 该数值为(50m/target)/2
		port(
			clkin : in std_logic;
			clkout : out std_logic );
	end component;
	component divider_50 is
		generic(LEN : integer := 500000); -- 50Hz
		port(
			clkin : in std_logic;
			clkout : out std_logic );
	end component;
	component divider_2_5M is
		generic(LEN : integer := 10); -- 2.5MHz
		port(
			clkin : in std_logic;
			clkout : out std_logic );
	end component;
	component divider_38K is
		generic(LEN : integer := 658); -- 38kHz
		port(
			clkin : in std_logic;
			clkout : out std_logic );
	end component;
begin
	U0 : divider_12_5M	port map(clkin, clk_12_5M);
	U1 : divider_50 port map(clkin, clk_50);
	U2	: divider_2_5M port map(clkin, clk_2_5M);
	U3	: divider_38K port map(clkin, clk_38K);
end struct;
--***************************************************************
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity divider_12_5M is
	generic(LEN : integer := 2); -- 12.5MHz
	port(
		clkin : 	in std_logic;
		clkout : out std_logic );
end divider_12_5M;

architecture beh of divider_12_5M is
begin
	process(clkin)
		variable cnt : integer range 0 to LEN - 1; 
		variable clkt : std_logic ;
	begin
		if rising_edge(clkin) then
			if cnt = LEN - 1 then
				if clkt = '1' then
					clkt := '0' ;
				else
					clkt := '1' ;
				end if;
				cnt := 0 ;
			else
				cnt := cnt + 1;
			end if;
			clkout <= clkt;
		end if;
	end process;
end beh;

--******************************************************************
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity 	divider_50 is
	generic(LEN : integer := 500000); -- 50Hz
	port(
		clkin : in std_logic;
		clkout : out std_logic );
end divider_50;

architecture beh of divider_50 is
begin
	process(clkin)
		variable cnt : integer range 0 to LEN - 1; 
		variable clkt : std_logic ;
	begin
		if rising_edge(clkin) then
			if cnt = LEN - 1 then
				if clkt = '1' then
					clkt := '0' ;
				else
					clkt := '1' ;
				end if;
				cnt := 0 ;
			else
				cnt := cnt + 1;
			end if;
			clkout <= clkt;
		end if;
	end process;
end beh;
--***********************************************************************
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity 	divider_2_5M is
	generic(LEN : integer := 10); -- 2.5MHz
	port(
		clkin : in std_logic;
		clkout : out std_logic );
end divider_2_5M;

architecture beh of divider_2_5M is
begin
	process(clkin)
		variable cnt : integer range 0 to LEN - 1; 
		variable clkt : std_logic ;
	begin
		if rising_edge(clkin) then
			if cnt = LEN - 1 then
				if clkt = '1' then
					clkt := '0' ;
				else
					clkt := '1' ;
				end if;
				cnt := 0 ;
			else
				cnt := cnt + 1;
			end if;
			clkout <= clkt;
		end if;
	end process;
end beh;
--************************************************************************
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity 	divider_38K is
	generic(LEN : integer := 658); -- 38kHz
	port(
		clkin : in std_logic;
		clkout : out std_logic );
end divider_38K;

architecture beh of divider_38K is
begin
	process(clkin)
		variable cnt : integer range 0 to LEN - 1; 
		variable clkt : std_logic ;
	begin
		if rising_edge(clkin) then
			if cnt = LEN - 1 then
				if clkt = '1' then
					clkt := '0' ;
				else
					clkt := '1' ;
				end if;
				cnt := 0 ;
			else
				cnt := cnt + 1;
			end if;
			clkout <= clkt;
		end if;
	end process;
end beh;