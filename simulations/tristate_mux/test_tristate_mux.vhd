library IEEE; use IEEE.STD_LOGIC_1164.all;

entity test_tristate_mux is
end test_tristate_mux;

architecture sim of test_tristate_mux is
component mux2 is
  port (
    d0, d1 : in STD_LOGIC_VECTOR(3 downto 0);
    s : in STD_LOGIC;
    y : out STD_LOGIC_VECTOR(3 downto 0)
  );
end component;
  signal s: STD_LOGIC;
  signal d0, d1, y : STD_LOGIC_VECTOR(3 downto 0);
begin
  dut: mux2 port map(d0, d1, s, y);
  -- reset before start and waiting
  process begin
    d0 <= "0011"; d1 <= "1100"; s <= '0'; wait for 10 ns;
    d0 <= "0011"; d1 <= "1100"; s <= '0'; wait for 10 ns;
    d0 <= "0101"; d1 <= "1010"; s <= '1'; wait for 10 ns;
    d0 <= "0101"; d1 <= "1010"; s <= '1'; wait for 10 ns;
    wait;
  end process;
end sim;
