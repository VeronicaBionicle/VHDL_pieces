library IEEE; use IEEE.STD_LOGIC_1164.all;

entity synchro is
  port (
    clk : in STD_LOGIC;
    d : in STD_LOGIC_VECTOR(3 downto 0);
    q : out STD_LOGIC_VECTOR(3 downto 0)
  );
end synchro;

architecture synth of synchro is
  signal n1 : STD_LOGIC_VECTOR(3 downto 0);
begin
  process (clk) begin
    if rising_edge(clk) then
      n1 := d;
      q <= n1;  
    end if;
  end process;
end synth; 