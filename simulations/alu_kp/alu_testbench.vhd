library IEEE; use IEEE.STD_LOGIC_1164.all;

entity test_alu is
end test_alu;

architecture sim of test_alu is
component alu_kp is
  port (
    a, b : in STD_LOGIC_VECTOR(7 downto 0);	-- input vectors
    operation_code : in STD_LOGIC_VECTOR(2 downto 0); -- operation
    y : out STD_LOGIC_VECTOR(7 downto 0);
    carry_flag : out STD_LOGIC
  );
end component;
  signal a, b: STD_LOGIC_VECTOR(7 downto 0);
  signal operation_code : STD_LOGIC_VECTOR(2 downto 0);
  signal y: STD_LOGIC_VECTOR(7 downto 0);
  signal carry_flag : STD_LOGIC;
begin
  dut: alu_kp port map(a, b, operation_code, y, carry_flag);
--before start and waiting
  process begin	-- 8 operations * 6 tests * 5 ns = 240 ns
    operation_code <= "000"; -- add
    a <= "00000000"; b <= "00000000"; wait for 5 ns;
    a <= "00000001"; b <= "00001001"; wait for 5 ns;
    a <= "00101010"; b <= "10000011"; wait for 5 ns;
    a <= "01001000"; b <= "01000100"; wait for 5 ns;
    a <= "11111110"; b <= "00000010"; wait for 5 ns;
    a <= "11111111"; b <= "11111111"; wait for 5 ns;	
    operation_code <= "001"; -- substract
    a <= "00000000"; b <= "00000000"; wait for 5 ns;
    a <= "00011010"; b <= "00011010"; wait for 5 ns;
    a <= "00101000"; b <= "00000001"; wait for 5 ns;
    a <= "01000000"; b <= "00000011"; wait for 5 ns;
    a <= "00000000"; b <= "00000001"; wait for 5 ns;
    a <= "00000001"; b <= "11110111"; wait for 5 ns;		
    operation_code <= "010"; -- <<
    a <= "00000000"; b <= "00000000"; wait for 5 ns;
    a <= "00000001"; wait for 5 ns;
    a <= "01101101"; wait for 5 ns;
    a <= "11010101"; wait for 5 ns;
    a <= "11111111"; wait for 5 ns;
    a <= "10101010"; wait for 5 ns;
    operation_code <= "011"; -- >>
    a <= "00000000"; wait for 5 ns;
    a <= "00000001"; wait for 5 ns;
    a <= "10101010"; wait for 5 ns;
    a <= "01010101"; wait for 5 ns;
    a <= "11111111"; wait for 5 ns;
    a <= "01111001"; wait for 5 ns;
    operation_code <= "100"; -- not
    a <= "00000000"; wait for 5 ns;
    a <= "10011001"; wait for 5 ns;
    a <= "00100010"; wait for 5 ns;
    a <= "10101010"; wait for 5 ns;
    a <= "11111111"; wait for 5 ns;
    a <= "01010101"; wait for 5 ns;	
    operation_code <= "101"; -- and
    a <= "00000000"; b <= "00000000"; wait for 5 ns;
    a <= "01010100"; b <= "00011011"; wait for 5 ns;
    a <= "00100011"; b <= "00010001"; wait for 5 ns;
    a <= "01010101"; b <= "10101010"; wait for 5 ns;
    a <= "11111111"; b <= "01010101"; wait for 5 ns;
    a <= "01110111"; b <= "10111011"; wait for 5 ns;	
    operation_code <= "110"; -- or
    a <= "00000000"; b <= "00000000"; wait for 5 ns;
    a <= "00010001"; b <= "00010001"; wait for 5 ns;
    a <= "01100110"; b <= "00010001"; wait for 5 ns;
    a <= "01010101"; b <= "10101010"; wait for 5 ns;
    a <= "11111111"; b <= "00000000"; wait for 5 ns;
    a <= "11111111"; b <= "11111111"; wait for 5 ns;	
    operation_code <= "111"; -- xor
    a <= "00000000"; b <= "00000000"; wait for 5 ns;
    a <= "01010101"; b <= "00000000"; wait for 5 ns;
    a <= "00100010"; b <= "00010001"; wait for 5 ns;
    a <= "01010101"; b <= "11111111"; wait for 5 ns;
    a <= "11111111"; b <= "10011001"; wait for 5 ns;
    a <= "01110111"; b <= "01110111"; wait for 5 ns;			
    wait;
  end process;
end sim;

