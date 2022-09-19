library IEEE; use IEEE.STD_LOGIC_1164.all;

entity mux4 is
  port (
    d0, d1, d2, d3 : in STD_LOGIC_VECTOR(3 downto 0);
    s: in STD_LOGIC_VECTOR(1 downto 0);
    y: out STD_LOGIC_VECTOR(3 downto 0)
  );
end mux4;

architecture synth of mux4 is
  component mux2
    port(
      d0, d1 : in STD_LOGIC_VECTOR(3 downto 0);
      s: in STD_LOGIC;
      y : out STD_LOGIC_VECTOR(3 downto 0)
    );
  end component;
  signal low, high: STD_LOGIC_VECTOR(3 downto 0);
begin
  lowmux: mux2 port map(d0, d1, s(0), low); -- in -> d0, d1, s0; out -> low
  highmux: mux2 port map(d2, d3, s(0), high); -- in -> d2, d3, s0; out -> high
  lowmux: mux2 port map(low, high, s(1), y); -- in -> low, high (from lowmux, highmux), s1; out -> y
end synth; 