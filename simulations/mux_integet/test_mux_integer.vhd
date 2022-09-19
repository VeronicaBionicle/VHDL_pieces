library IEEE; use IEEE.STD_LOGIC_1164.all;

entity test_mux8 is
end test_mux8;

architecture sim of test_mux8 is
component mux8 is
  port (
    d: in STD_LOGIC_VECTOR(7 downto 0);
    s : in STD_LOGIC_VECTOR(2 downto 0);
    y : out STD_LOGIC
  );
end component;
  signal y: STD_LOGIC;
  signal s: STD_LOGIC_VECTOR(2 downto 0);
  signal d: STD_LOGIC_VECTOR(7 downto 0);
begin
  dut: mux8 port map(d, s, y);
--before start and waiting
  process begin
    d <= "00000001"; s <= "000"; wait for 10 ns;
    d <= "00000010"; s <= "001"; wait for 10 ns;		
    d <= "00000100"; s <= "010"; wait for 10 ns;		
    d <= "00001000"; s <= "011"; wait for 10 ns;	
    d <= "00010000"; s <= "100"; wait for 10 ns;
    d <= "00100000"; s <= "101"; wait for 10 ns;	
    d <= "01000000"; s <= "110"; wait for 10 ns;	
    d <= "10000000"; s <= "111"; wait for 10 ns;				  
    wait;
  end process;
end sim;