library IEEE; use IEEE.STD_LOGIC_1164.all;

entity flop is
  port (
    clk : in STD_LOGIC;
    d : in STD_LOGIC_VECTOR(3 downto 0);
    q : out STD_LOGIC_VECTOR(3 downto 0)
  );
end flop;

architecture synth of flop is
begin
  process (clk) begin
    -- rising_edge is similar to clk'event and clk = '1'
    if rising_edge(clk) then
      q <= d;  
    end if;
  end process;
end synth; 