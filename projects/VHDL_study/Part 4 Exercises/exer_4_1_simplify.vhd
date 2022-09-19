library IEEE; use IEEE.STD_LOGIC_1164.all;

entity ex_4_1 is
  port (
    a, b, c : in STD_LOGIC;
    y, z: out STD_LOGIC
  );
end ex_4_1;

architecture synth of ex_4_1 is
begin
  -- simplify following logic conditions
  y <= (a and b and c) or (a and b and not c) or (a and not b and c); 
  z <= (a and b) or (not a and not b);
  -- result of simplifying
  y <= a and (b or c);
  z <= not (a xor b); --a==b
end synth; 
--a	b	c		origin y	simplif y
--0	0	0		ЛОЖЬ	ЛОЖЬ
--0	0	1		ЛОЖЬ	ЛОЖЬ
--0	1	0		ЛОЖЬ	ЛОЖЬ
--0	1	1		ЛОЖЬ	ЛОЖЬ
--1	0	0		ЛОЖЬ	ЛОЖЬ
--1	0	1		ИСТИНА	ИСТИНА
--1	1	0		ИСТИНА	ИСТИНА
--1	1	1		ИСТИНА	ИСТИНА
------
--a	b		origin z	simplif z
--0	0		ИСТИНА	ИСТИНА
--0	1		ЛОЖЬ	ЛОЖЬ
--1	0		ЛОЖЬ	ЛОЖЬ
--1	1		ИСТИНА	ИСТИНА