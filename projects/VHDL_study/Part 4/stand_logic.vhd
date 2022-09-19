--priority of operations:
-- high:
  -- not
  -- *, /, mod, rem (module, remainder)
  -- rol, ror, (rotate left/right)  // циклический сдвиг
  -- srl, sll (logic shift left/right)  //логический сдвиг
-- low
  -- <, <=, >, =>
  -- =, /= (equal, not equal)
  -- and, or, nand, nor, xor, xnor
  
library IEEE; use IEEE.STD_LOGIC_1164.all;

entity standart_logic is
  port (
    a, b : in STD_LOGIC_VECTOR(3 downto 0);
    y0, y1, y2, y3, y4, y5: out STD_LOGIC_VECTOR(3 downto 0)
  );
end standart_logic;

architecture synth of standart_logic is
begin
    y0 <= not a;
    y1 <= a and b;
    y2 <= a or b;
    y3 <= a xor b;
    y4 <= a nand b;
    y5 <= a nor b;
end synth; 