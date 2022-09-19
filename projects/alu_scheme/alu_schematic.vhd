LIBRARY ieee;
USE ieee.std_logic_1164.all; 
LIBRARY work;

ENTITY alu_schematic IS 
	PORT
	(
		a :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		b :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		command :  IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
		carry :  OUT  STD_LOGIC;
		result :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END alu_schematic;

ARCHITECTURE bdf_type OF alu_schematic IS 

COMPONENT lpm_add_sub0
	PORT(add_sub : IN STD_LOGIC;
		 dataa : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 datab : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 cout : OUT STD_LOGIC;
		 result : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT lpm_mux1
	PORT(data7 : IN STD_LOGIC;
		 data6 : IN STD_LOGIC;
		 data5 : IN STD_LOGIC;
		 data4 : IN STD_LOGIC;
		 data3 : IN STD_LOGIC;
		 data2 : IN STD_LOGIC;
		 data1 : IN STD_LOGIC;
		 data0 : IN STD_LOGIC;
		 sel : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 result : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT lpm_mux0
	PORT(data0x : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 data1x : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 data2x : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 data3x : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 data4x : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 data5x : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 data6x : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 data7x : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 sel 	: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	ADD_SUB_CARRY :  STD_LOGIC;
SIGNAL	NOT_ADD_SUB_CARRY :  STD_LOGIC;
SIGNAL	ADD_SUB_RESULT :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	NOT_A_RESULT :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	A_AND_B_RESULT :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	A_OR_B_RESULT :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	A_XOR_B_RESULT :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SHIFT_LEFT_RESULT :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SHIFT_RIGHT_RESULT :  STD_LOGIC_VECTOR(7 DOWNTO 0);

BEGIN 

SHIFT_LEFT_RESULT <= (a(6 DOWNTO 0) & '0');
SHIFT_RIGHT_RESULT <= ('0' & a(7 DOWNTO 1));
A_AND_B_RESULT <= a AND b;
NOT_A_RESULT <= NOT(a);
A_OR_B_RESULT <= a OR b;
A_XOR_B_RESULT <= a XOR b;

subtracter_adder : lpm_add_sub0
PORT MAP(add_sub => command(0),
		 dataa => a,
		 datab => b,
		 cout => ADD_SUB_CARRY,
		 result => ADD_SUB_RESULT);

NOT_ADD_SUB_CARRY <= NOT(ADD_SUB_CARRY);

carry_mux : lpm_mux1
PORT MAP(data7 => '0',
		 data6 => '0',
		 data5 => '0',
		 data4 => '0',
		 data3 => a(7),
		 data2 => a(0),
		 data1 => ADD_SUB_CARRY,
		 data0 => NOT_ADD_SUB_CARRY,
		 sel => command,
		 result => carry);

result_mux : lpm_mux0
PORT MAP(data0x => ADD_SUB_RESULT,
		 data1x => ADD_SUB_RESULT,
		 data2x => SHIFT_RIGHT_RESULT,
		 data3x => SHIFT_LEFT_RESULT,
		 data4x => NOT_A_RESULT,
		 data5x => A_AND_B_RESULT,
		 data6x => A_OR_B_RESULT,
		 data7x => A_XOR_B_RESULT,
		 sel => command,
		 result => result);

END bdf_type;