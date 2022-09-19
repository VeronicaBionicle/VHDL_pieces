library IEEE; use IEEE.STD_LOGIC_1164.all;

entity snail_testbench is
end snail_testbench;

architecture test of snail_testbench is
  component patternMealy
    port(
    clk, reset : in STD_LOGIC;
    a : in STD_LOGIC;
    y: out STD_LOGIC
    );
  end component;
  signal clk, reset, a, y: STD_LOGIC;
begin
  --init component
  dut: patternMealy port map(clk, reset, a, y);
  -- generate clock
  process begin
    clk <= '1'; wait for 5 ns;
    clk <= '0'; wait for 5 ns;
  end process;
  -- reset before start
  process begin
    reset <= '1'; wait for 27 ns; reset <= '0';
    wait;
  end process;
  -- run tests
  -- apply different states at a time
  process begin
    a <= '0'; wait for 16 ns;
    assert y = '0' report "0 failed.";
     a <= '1'; wait for 16 ns;
    assert y = '1' report "01 failed.";  
  end process;
end test;