library IEEE; use IEEE.STD_LOGIC_1164.all;

entity test_multiplier is
end test_multiplier;

architecture sim of test_multiplier is
component multiplier is
  port (
    a, b: in STD_LOGIC_VECTOR(3 downto 0);
    y : out STD_LOGIC_VECTOR(7 downto 0)
  );
end component;
  signal a, b: STD_LOGIC_VECTOR(3 downto 0);
  signal y: STD_LOGIC_VECTOR(7 downto 0);
begin
  dut: multiplier port map(a, b, y);
--before start and waiting
  process begin
    a <= "0000"; b <= "0000"; wait for 10 ns;
    a <= "0001"; b <= "0001"; wait for 10 ns;
    a <= "0010"; b <= "0010"; wait for 10 ns;
    a <= "0100"; b <= "0100"; wait for 10 ns;
    a <= "1111"; b <= "0001"; wait for 10 ns;
    a <= "1111"; b <= "1111"; wait for 10 ns;			  
    wait;
  end process;
end sim;
