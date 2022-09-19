library IEEE; use IEEE.STD_LOGIC_1164.all;

entity test_andN is
end test_andN;

architecture sim of test_andN is
component andN is
  generic (N : integer := 8);
  port (
    a : in STD_LOGIC_VECTOR(N-1 downto 0);
    y : out STD_LOGIC
  );
end component;

  signal a: STD_LOGIC_VECTOR(8 downto 0);
  signal y: STD_LOGIC;

begin
  dut: andN generic map (9) port map(a, y);
--tests
  process begin
    a <= "000000010"; wait for 10 ns;
    a <= "000000001"; wait for 10 ns;
    a <= "000000011"; wait for 10 ns;
    a <= "111100111"; wait for 10 ns;
    a <= "111110111"; wait for 10 ns;
    a <= "111111111"; wait for 10 ns;
    wait;
  end process;
end sim;