LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_ARITH.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;


ENTITY sawtooth IS
	PORT
	(
		clock		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0) := (others => '0')
	);
END sawtooth;


ARCHITECTURE SYN OF sawtooth IS
BEGIN

process (clock) begin		
	if (rising_edge(clock)) then
		q <= q + '1';
		if (conv_integer(q) = 1020) then	  --1020 b"0000_0011_1111_1100"
			q <= (others => '0');
		end if;
	end if;
end process;

END SYN;