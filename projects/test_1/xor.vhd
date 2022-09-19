-- 4 input xor
library IEEE; use IEEE.STD_LOGIC_1164.all;

entity ex_4_3 is
  port (
    x : in STD_LOGIC_VECTOR(3 downto 0);
    y : out STD_LOGIC
  );
end ex_4_3;

architecture synth of ex_4_3 is
begin
  y <= x(0) xor x(1) xor x(2) xor x(3);
end synth; 