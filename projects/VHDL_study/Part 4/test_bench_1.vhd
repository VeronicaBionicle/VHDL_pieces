library IEEE; use IEEE.STD_LOGIC_1164.all;

entity testbench1 is
end testbench1;

architecture test of testbench1 is
  component sillyfunction
    port(
      a, b, c : in STD_LOGIC;
      y : out STD_LOGIC
    );
  end component;
  signal a, b, c, y: STD_LOGIC;
begin
  --init component
  dut: sillyfunction port map(a,b,c,y);
  -- apply different states at a time
  process begin
    a <= '0'; b <= '0'; c <= '0'; wait for 10 ns;
    assert y = '1' report "000 failed.";
                        c <= '1'; wait for 10 ns;
    assert y = '0' report "001 failed.";
              b <= '1'; c <= '0'; wait for 10 ns;
    assert y = '0' report "010 failed.";
                        c <= '1'; wait for 10 ns;
    assert y = '0' report "011 failed.";
    a <= '1'; b <= '0'; c <= '0'; wait for 10 ns;
    assert y = '1' report "100 failed.";
                        c <= '1'; wait for 10 ns;
    assert y = '1' report "101 failed.";
              b <= '1'; c <= '0'; wait for 10 ns;
    assert y = '0' report "110 failed.";
                        c <= '1'; wait for 10 ns;
    assert y = '0' report "111 failed.";
    wait; --wait forever
  end process;
end test; 