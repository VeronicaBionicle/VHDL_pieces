library IEEE; use IEEE.STD_LOGIC_1164.all;

entity test_chooser is
end test_chooser;

architecture simul of test_chooser is

component priorityckt is
  port (
    a : in STD_LOGIC_VECTOR(3 downto 0);
    y : out STD_LOGIC_VECTOR(3 downto 0)
  );
end component;

  signal a, y: STD_LOGIC_VECTOR(3 downto 0);
begin
  dut: priorityckt port map(a, y);
  -- reset before start and waiting
  process begin
    a <= "0000"; wait for 10 ns;
    a <= "0001"; wait for 10 ns;
    a <= "0010"; wait for 10 ns;
    a <= "0110"; wait for 10 ns;
    a <= "1100"; wait for 10 ns;	
    a <= "0100"; wait for 10 ns;	
    a <= "1000"; wait for 10 ns;	
    wait;
  end process;
end simul;
