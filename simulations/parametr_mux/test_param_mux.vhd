library IEEE; use IEEE.STD_LOGIC_1164.all;

entity test_mux_12 is
end test_mux_12;

architecture sim of test_mux_12 is
component mux4_12 is
  port (
    d0, d1, d2, d3 : in STD_LOGIC_VECTOR(11 downto 0);
    s : in STD_LOGIC_VECTOR(1 downto 0);
    y : out STD_LOGIC_VECTOR(11 downto 0)
  );
end component;
  signal s: STD_LOGIC_VECTOR(1 downto 0);
  signal d0, d1, d2, d3, y : STD_LOGIC_VECTOR(11 downto 0);
begin
  dut: mux4_12 port map(d0, d1, d2, d3, s, y);
--before start and waiting
  process begin
    d0 <= "100110011001"; d1 <= "101010101010"; d2 <= "000000000000"; d3 <= "111111111111"; s <= "00"; wait for 10 ns;
    									    s <= "01"; wait for 10 ns;
    									    s <= "10"; wait for 10 ns;
    									    s <= "11"; wait for 10 ns;
    wait;
  end process;
end sim;