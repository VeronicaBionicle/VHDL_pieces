library IEEE; use IEEE.STD_LOGIC_1164.all;

entity mux2 is
    generic (width : integer := 8);  --default value, if not given in "init"
    port (
      d0, d1 : in STD_LOGIC_VECTOR(width-1 downto 0);
      s : in STD_LOGIC;
      y : out STD_LOGIC_VECTOR(width-1 downto 0)
    );
end mux2;

architecture synth of mux2 is
begin
    y <= d1 when s else d0;
    --equal to y <= s ? d1 : d0
end synth; 