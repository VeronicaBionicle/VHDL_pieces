-- signals and numbers
-- STD_LOGIC can be '0', '1', 'Z' 
-- STD_LOGIC_VECTOR can be written as:
-- NB"value", N - bit size, B - base
-- bases: B - binary(2), O - octal(8), D - decimal(10), X - hexadecimal(16) 
-- examples:
-- 9X"25" -> 25_16 = 37_10 = 000100101_2

-- little endian (N downto 0) -> 0 - LSB, N - MSB
-- big endian (0 downto N)  -> 0 - MSB, N - LSB
-- example: LE: 0000'0123, BE: 3210'0000

library IEEE; use IEEE.STD_LOGIC_1164.all;

entity tristate is
  port (
    -- for bit operation example
    --port_z : out STD_LOGIC_VECTOR(7 downto 0)
    -- for tristate buffer
    a : in STD_LOGIC_VECTOR(3 downto 0);
    en : in STD_LOGIC;
    y: out STD_LOGIC_VECTOR(3 downto 0)
  );
end tristate;

architecture synth of tristate is
begin
    -- bit operation example
    -- N => '1' is equal (1<<N)
    -- 2 downto 1 => '1' is equal (1<<1)|(1<<2)
    -- it will be 1001_0110
    --port_z <= ("10", 4 => '1', 2 downto 1 => '1', others => '0');
    -- second example: takes bits from buses c and d, adds 101 to the end
    -- port_z <= (c(2 downto 1), d(0), d(0), c(0), 3B"101")
    y <= a when en else "ZZZZ";
    -- tristate buffer:
    -- if en = 0 it`s in Z-state, else - "opened"
end synth; 