LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_ARITH.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

ENTITY meandr_counter IS
	PORT
	(
		aclear		: IN STD_LOGIC ;
		clock		: IN STD_LOGIC ;
		cnt_en		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0) := (others => '0')
	);
END meandr_counter;

ARCHITECTURE SYN OF meandr_counter IS
BEGIN

process (clock, aclear, cnt_en) begin	
	if (aclear = '0') then
		q <= (others => '0');		
	elsif (cnt_en = '1' and rising_edge(clock)) then
		q <= q + '1';
		if (q = b"1111_1111_1111_1111") then	  
			q <= (others => '0');
		end if;
	end if;
end process;

END SYN;