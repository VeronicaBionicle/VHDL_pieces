-- if at least 2 input are FALSE y <= TRUE 
library IEEE; use IEEE.STD_LOGIC_1164.all;

entity ex_4_5 is
  port (
    a, b, c : in STD_LOGIC;
    y : out STD_LOGIC
  );
end ex_4_5;

architecture synth of ex_4_5 is
begin
  y <= ((not a) and (not b)) or ((not a) and (not c)) or ((not b) and (not c));
end synth; 