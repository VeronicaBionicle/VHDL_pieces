library IEEE; use IEEE.STD_LOGIC_1164.all;

entity fulladder is
  port (
    a, b, cin : in STD_LOGIC;
    s, cout: out STD_LOGIC
  );
end fulladder;

architecture synth of fulladder is
  signal p, g: STD_LOGIC;
  --signals are internal "ports"
begin
  p <= a xor b;
  g <= a and b;
  s <= p xor cin;
  cout <= g or (p and cin);
end synth; 