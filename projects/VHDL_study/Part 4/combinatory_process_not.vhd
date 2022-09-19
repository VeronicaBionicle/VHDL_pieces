library IEEE; use IEEE.STD_LOGIC_1164.all;

entity invertor is
  port (
    x : in STD_LOGIC_VECTOR(3 downto 0);
    y : out STD_LOGIC_VECTOR(3 downto 0)
  );
end invertor;

architecture synth of invertor is
begin
  -- process (all) is ok for combinatory logic devices (something like while(1)/loop?)
  process (all) begin
      y <= not a;  
  end process;
end synth; 