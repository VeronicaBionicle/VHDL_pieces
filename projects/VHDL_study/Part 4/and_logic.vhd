library IEEE; use IEEE.STD_LOGIC_1164.all;

entity and_8 is
  port (
    a, b : in STD_LOGIC;
    y: out STD_LOGIC
  );
end and_8;

architecture synth of and_8 is
begin
    y <=  a and b;
end synth; 
