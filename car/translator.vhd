library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity	translator	is
	port(
		l : in std_logic_vector(1 downto 0);
		r : in std_logic_vector(1 downto 0);
		moto_sz : out std_logic_vector(3 downto 0);--左轮
		moto_sy : out std_logic_vector(3 downto 0));--右轮
end translator;

architecture beh of translator is
begin
	process(l,r)
	begin
  if l = "10" and r = "10" then
  moto_sz <= "1010";
  moto_sy <= "1010";
  elsif l = "10" and r = "01" then
  moto_sz <= "0101";
  moto_sy <= "1010";
  elsif l = "00" and r = "00" then
  moto_sz <= "0000";
  moto_sy <= "0000";
  elsif l = "01" and r = "10" then
  moto_sz <= "1010";
  moto_sy <= "0101";
  elsif l = "00" and r = "10" then
  moto_sz <= "1010";
  moto_sy <= "1010";
  elsif l = "10" and r = "00" then
  moto_sz <= "1010";
  moto_sy <= "1010";
  else 
  moto_sz <= "0000";
  moto_sy <= "0000";
  end if;
  end process;
end beh;