LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY alu_schematic_vhd_tst IS
END alu_schematic_vhd_tst;

ARCHITECTURE alu_schematic_arch OF alu_schematic_vhd_tst IS                                               
-- signals                                                   
SIGNAL a : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL b : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL carry : STD_LOGIC;
SIGNAL command : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL result : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT alu_schematic
	PORT (
	a : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	b : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	carry : OUT STD_LOGIC;
	command : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	result : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : alu_schematic
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	carry => carry,
	command => command,
	result => result
	);
                                        
always : PROCESS                                                                                 
BEGIN                                                         
	command <= "000";	-- a-b
	a <= "11001100"; b <= "00000011"; wait for 5 ns;
	a <= "11110000"; b <= "00001111"; wait for 5 ns;
	a <= "00001111"; b <= "10000000"; wait for 5 ns;
	a <= "01010101"; b <= "00000101"; wait for 5 ns;
	a <= "10101010"; b <= "00000001"; wait for 5 ns;
	command <= "001";	--a+b
	a <= "11001100"; b <= "00000011"; wait for 5 ns;
	a <= "11110000"; b <= "00001111"; wait for 5 ns;
	a <= "00001111"; b <= "10000000"; wait for 5 ns;
	a <= "01010101"; b <= "00000101"; wait for 5 ns;
	a <= "10101010"; b <= "00000001"; wait for 5 ns;
	command <= "010";	--a/2
	a <= "11001100"; b <= "00000000"; wait for 5 ns;
	a <= "11110000"; wait for 5 ns;
	a <= "00001111"; wait for 5 ns;
	a <= "01010101"; wait for 5 ns;
	a <= "10101010"; wait for 5 ns;
	command <= "011";	--a*2
	a <= "11001100"; wait for 5 ns;
	a <= "11110000"; wait for 5 ns;
	a <= "00001111"; wait for 5 ns;
	a <= "01010101"; wait for 5 ns;
	a <= "10101010"; wait for 5 ns;
	command <= "100";	--not a
	a <= "11001100"; wait for 5 ns;
	a <= "11110000"; wait for 5 ns;
	a <= "00001111"; wait for 5 ns;
	a <= "01010101"; wait for 5 ns;
	a <= "10101010"; wait for 5 ns;
	command <= "101";	--a and b
	a <= "11001100"; b <= "00000011"; wait for 5 ns;
	a <= "11110000"; b <= "00001111"; wait for 5 ns;
	a <= "00001111"; b <= "10000000"; wait for 5 ns;
	a <= "01010101"; b <= "00000101"; wait for 5 ns;
	a <= "10101010"; b <= "00000001"; wait for 5 ns;
	command <= "110";	--a or b
	a <= "11001100"; b <= "00000011"; wait for 5 ns;
	a <= "11110000"; b <= "00001111"; wait for 5 ns;
	a <= "00001111"; b <= "10000000"; wait for 5 ns;
	a <= "01010101"; b <= "00000101"; wait for 5 ns;
	a <= "10101010"; b <= "00000001"; wait for 5 ns;
	command <= "111";	--a xor b
	a <= "11001100"; b <= "00000011"; wait for 5 ns;
	a <= "11110000"; b <= "00001111"; wait for 5 ns;
	a <= "00001111"; b <= "10000000"; wait for 5 ns;
	a <= "01010101"; b <= "00000101"; wait for 5 ns;
	a <= "10101010"; b <= "00000001"; wait for 5 ns;
WAIT;                                                        
END PROCESS always;                                          
END alu_schematic_arch;
