LIBRARY ieee;
USE ieee.std_logic_1164.all;
Use ieee.std_logic_arith.all; 
Use ieee.std_logic_unsigned.all; 

ENTITY sawtooth_breaker IS
	PORT
	( 
		count : in STD_LOGIC_VECTOR(15 downto 0);
		as_break: out  STD_LOGIC
	);
END sawtooth_breaker;

ARCHITECTURE Behavioral OF sawtooth_breaker IS
BEGIN
process(count)
	variable count_int: integer;	
begin

count_int := conv_integer(count);

	if (count_int < 1020) then
		as_break <= '0';
	elsif (count_int = 1020) then
		as_break <= '1';
        end if;

end process;

END Behavioral;
