LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY and_2 IS 
	PORT
	(
		in_1 :  IN  STD_LOGIC;
		in_2 :  IN  STD_LOGIC;
		out_1 :  OUT  STD_LOGIC
	);
END and_2;

ARCHITECTURE and_behave OF and_2 IS 
BEGIN 

out_1 <= in_1 AND in_2;

END and_behave;