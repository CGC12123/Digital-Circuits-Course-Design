library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity clk_generator is
	port(
		clkin : 		in 	std_logic;
		clk_12_5M : 	out std_logic;
		clk_50 : 		out std_logic );
end clk_generator;

architecture struct of clk_generator is
	component 	divider_4 is
		generic(LEN : integer := 2);
		port(
			clkin : 		in 	std_logic;
			clkout : 		out std_logic );
	end component;
	component 	divider_1M is
		generic(LEN : integer := 500000); --4Hz
		port(
			clkin : 		in 	std_logic;
			clkout : 		out std_logic );
	end component;
begin
	U0 : divider_4		port map(clkin,clk_12_5M);
	U1 : divider_1M		port map(clkin,clk_50);
end struct;



library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity 	divider_4 is
	generic(LEN : integer := 2); --12.5MHz
	port(
		clkin : 		in 	std_logic;
		clkout : 		out std_logic );
end divider_4;

architecture beh of divider_4 is
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


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity 	divider_1M is
	generic(LEN : integer := 500000); --50Hz
	port(
		clkin : 		in 	std_logic;
		clkout : 		out std_logic );
end divider_1M;

architecture beh of divider_1M is
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
