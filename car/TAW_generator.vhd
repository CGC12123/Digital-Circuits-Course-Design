library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity	TAW_generator	is
	--generic(HEIGHT : integer := 20);
	port(
		clkin : 		in 	std_logic;
		TAW :	 		out integer range 0 to 20 );
end	TAW_generator;

architecture	beh	of	TAW_generator	is
begin
	process(clkin)
		variable	cnt: 	integer range 0 to 20 := 0;
		variable	up:		std_logic := '0';
	begin
		if clkin'event and clkin = '1' then
			if cnt = 0 then
				up := '1';		
				cnt := cnt + 1;
			elsif cnt = 20 then
				up := '0';		
				cnt := cnt - 1;
			else
				if up = '1' then
					cnt := cnt + 1;
				elsif up = '0' then
					cnt := cnt - 1;
				end if;
			end if;
			TAW <= cnt;
		end if;
	end process;
end beh;