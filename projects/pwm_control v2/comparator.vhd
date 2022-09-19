LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

ENTITY comparator IS
	PORT
	(
		data_a		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
		data_b		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
		a_ge_b		: OUT STD_LOGIC := '0'
	);
END comparator;


ARCHITECTURE SYN OF comparator IS
BEGIN
process (all) begin
	if (data_a >= data_b) then
		a_ge_b <= '1';
	else
		a_ge_b <= '0';
	end if;
end process;
END SYN;