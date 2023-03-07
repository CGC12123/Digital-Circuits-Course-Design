library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
--*******************************
entity test is
	port(
			clk: in std_logic;
			check: in std_logic_vector(7 downto 0);
			testout: out std_logic := '0';
			testout2: out std_logic := '0';
			testout3: out std_logic := '0';
			checkout: out std_logic_vector(7 downto 0));
end test;
--******************************
architecture abc of test is
signal test: std_logic := '0';
signal test2: std_logic := '0';
signal test3: std_logic := '0';
begin

process(clk, check)
begin
	if clk' event and clk = '1' then
		checkout <= check;
		if check = "01100111" then
			test <= '1';
		end if;
		
		if (check /= "00000000") then
			test2 <= '1';
		end if;
		
		if (check = "01100100") then
			test3 <= '1';
		end if;
		testout <= test;
		testout2 <= test2;
		testout3 <= test3;
	end if;
end process;
end abc;