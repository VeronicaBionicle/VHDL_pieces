library IEEE; use IEEE.STD_LOGIC_1164.all;

entity ex4_9 is
 port(a, b, c: in STD_LOGIC;
            y: out STD_LOGIC_VECTOR(0 downto 0));
end;

architecture struct of ex4_9 is
 component mux8
 generic(width: integer);
 port(
   d0, d1, d2, d3, d4, d5, d6, d7: in STD_LOGIC_VECTOR(width-1 downto 0);
   s: in STD_LOGIC_VECTOR(2 downto 0);
   y: out STD_LOGIC_VECTOR(width-1 downto 0)
 );
 end component;
 signal sel: STD_LOGIC_VECTOR(2 downto 0);
begin
  sel <= a & b & c;
  mux8_1: mux8 generic map(1)
  port map("1", "0", "0", "1", "1", "1", "0", "0", sel, y);
end;

--- port map is from
-- a | b | c | y
-- 0 | 0 | 0 | 1
-- 0 | 0 | 1 | 0
-- 0 | 1 | 0 | 0
-- 0 | 1 | 1 | 1
-- 1 | 0 | 0 | 1
-- 1 | 0 | 1 | 1
-- 1 | 1 | 0 | 0
-- 1 | 1 | 1 | 0