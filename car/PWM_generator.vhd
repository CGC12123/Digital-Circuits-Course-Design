library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity	PWM_generator	is
	port(
		clkin : 		in 	std_logic;
		ref :			in	integer range 0 to 20 + 1 ;
		TAW :	 		in 	integer range 0 to 20;
		PWM :			out	std_logic );
end	PWM_generator;

architecture	beh	of	PWM_generator	is
begin
	process(clkin)
	begin
		if clkin'event and clkin = '1' then
			if TAW >= ref then
				PWM <= '0';		
			else
				PWM <= '1';		
			end if;
		end if;
	end process;
end beh;