library IEEE; use IEEE.STD_LOGIC_1164.all;

entity comb_fulladder is
  port (
    a, b, cin : in STD_LOGIC;
    s, cout : out STD_LOGIC
  );
end comb_fulladder;

architecture synth of comb_fulladder is
begin
  -- process (all) is ok for combinatory logic devices (something like while(1)/loop?)
  process (all)
    variable p, g: STD_LOGIC;
  begin
    -- blocking assigment makes sense in combinatory logic, but isn`t good for sequential logic
    -- at first "calc" p and g, then - s and cout
    p := a xor b; --blocking assigment
    g := a and b; --also blocking assigment
    s <= p xor cin;
    cout <= g or (p and cin);
  end process;
end synth; 