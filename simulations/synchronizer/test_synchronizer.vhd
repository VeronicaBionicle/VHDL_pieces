library IEEE; use IEEE.STD_LOGIC_1164.all;

entity testsynchronizer is
end testsynchronizer;

architecture sim of testsynchronizer is
component synchro is
  port (
    clk : in STD_LOGIC;
    d : in STD_LOGIC_VECTOR(3 downto 0);
    q : out STD_LOGIC_VECTOR(3 downto 0)
  );
end component;
  signal clk: STD_LOGIC;
  signal d, q: STD_LOGIC_VECTOR(3 downto 0);
begin
  dut: synchro port map(clk, d, q);
  -- generate clock
  process begin
    clk <= '1'; wait for 5 ns;
    clk <= '0'; wait for 5 ns;
  end process;
  -- tests
  process begin
    wait for 5 ns;
    d <= "0000"; wait for 7 ns;
    d <= "1111"; wait for 7 ns;
    d <= "0101"; wait for 7 ns;
    d <= "1010"; wait for 7 ns;
    wait;
  end process;

end sim;
