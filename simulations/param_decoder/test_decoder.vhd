library IEEE; use IEEE.STD_LOGIC_1164.all;

entity test_decoder is
end test_decoder;

architecture sim of test_decoder is
component decoder is
  generic (N : integer := 3);
  port (
    a : in STD_LOGIC_VECTOR(N-1 downto 0);
    y : out STD_LOGIC_VECTOR(2**N-1 downto 0)
  );
end component;
  signal a: STD_LOGIC_VECTOR(3 downto 0);
  signal y: STD_LOGIC_VECTOR(15 downto 0);
begin
  dut: decoder generic map (4) port map(a, y);
--before start and waiting
  process begin
    a <= "0000"; wait for 10 ns;
    a <= "0001"; wait for 10 ns;
    a <= "0010"; wait for 10 ns;
    a <= "0011"; wait for 10 ns;
    a <= "0100"; wait for 10 ns;
    a <= "0101"; wait for 10 ns;
    a <= "0110"; wait for 10 ns;
    a <= "0111"; wait for 10 ns;
    a <= "1000"; wait for 10 ns;
    a <= "1001"; wait for 10 ns;
    a <= "1010"; wait for 10 ns;
    a <= "1011"; wait for 10 ns;
    a <= "1100"; wait for 10 ns;
    a <= "1101"; wait for 10 ns;
    a <= "1110"; wait for 10 ns;
    a <= "1111"; wait for 10 ns;
    wait;
  end process;
end sim;