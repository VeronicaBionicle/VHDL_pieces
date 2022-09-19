library IEEE; use IEEE.STD_LOGIC_1164.all;

entity test_comb_fulladder is
end test_comb_fulladder;

architecture sim of test_comb_fulladder is
component comb_fulladder is
  port (
    a, b, cin : in STD_LOGIC;
    s, cout : out STD_LOGIC
  );
end component;
  signal a, b, cin, s, cout: STD_LOGIC;
begin
  dut: comb_fulladder port map(a, b, cin, s, cout);
--before start and waiting
  process begin
    a <= '0'; b <= '0'; cin <= '0'; wait for 10 ns;
    a <= '0'; b <= '1'; cin <= '0'; wait for 10 ns;
    a <= '1'; b <= '0'; cin <= '0'; wait for 10 ns;
    a <= '1'; b <= '1'; cin <= '0'; wait for 10 ns;
    a <= '0'; b <= '0'; cin <= '1'; wait for 10 ns;
    a <= '0'; b <= '1'; cin <= '1'; wait for 10 ns;
    a <= '1'; b <= '0'; cin <= '1'; wait for 10 ns;
    a <= '1'; b <= '1'; cin <= '1'; wait for 10 ns;
    wait;
  end process;
end sim;