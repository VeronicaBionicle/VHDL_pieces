library IEEE; use IEEE.STD_LOGIC_1164.all;
use STD.TEXTIO.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.STD_LOGIC_ARITH.all;

entity ex4_7_testbench is -- no inputs or outputs
end;

architecture sim of ex4_7_testbench is
 component seven_seg_decoder
 port(data: in STD_LOGIC_VECTOR(3 downto 0);
 segments: out STD_LOGIC_VECTOR(6 downto 0));
 end component;
 signal data: STD_LOGIC_VECTOR(3 downto 0);
 signal s: STD_LOGIC_VECTOR(6 downto 0);
 signal clk, reset: STD_LOGIC;
 signal s_expected: STD_LOGIC_VECTOR(6 downto 0);
 constant MEMSIZE: integer := 10000;
 type tvarray is array(MEMSIZE downto 0) of STD_LOGIC_VECTOR(10 downto 0);
 signal testvectors: tvarray;
 shared variable vectornum, errors: integer;
begin
 -- instantiate device under test
 dut: seven_seg_decoder port map(data, s);
 -- generate clock
 process begin
 clk <= '1'; wait for 5 ns;
 clk <= '0'; wait for 5 ns;
 end process;
 -- at start of test, load vectors
 -- and pulse reset
 process is
 file tv: TEXT;
 variable i, j: integer;
 variable L: line;
 variable ch: character;
 begin
 -- read file of test vectors
 i := 0;
 FILE_OPEN(tv, "ex4_7.tv", READ_MODE);
 while not endfile(tv) loop
 readline(tv, L);
 for j in 10 downto 0 loop
 read(L, ch);
 if (ch = '_') then read(L, ch);
 end if;
 if (ch = '0') then
 testvectors(i)(j) <= '0';
 else testvectors(i)(j) <= '1';
 end if;
 end loop;
 i := i + 1;
 end loop;
 vectornum := 0; errors := 0;
 reset <= '1'; wait for 27 ns; reset <= '0';
 wait;
 end process;

 -- apply test vectors on rising edge of clk
 process (clk) begin
 if (clk'event and clk = '1') then
 data <= testvectors(vectornum)(10 downto 7) after 1 ns;
 s_expected <= testvectors(vectornum)(6 downto 0) after 1 ns;
 end if;
 end process;
 -- check results on falling edge of clk
 process (clk) begin
 if (clk'event and clk = '0' and reset = '0') then
 assert s = s_expected
 report "data = " &
 integer'image(CONV_INTEGER(data)) &
 "; s = " &
 integer'image(CONV_INTEGER(s)) &
 "; s_expected = " &
 integer'image(CONV_INTEGER(s_expected));
 if (s /= s_expected) then
 errors := errors + 1;
 end if;
 vectornum := vectornum + 1;
 if (is_x(testvectors(vectornum))) then
 if (errors = 0) then
 report "Just kidding -- " &
 integer'image(vectornum) &
 " tests completed successfully."
 severity failure;
 else
 report integer'image(vectornum) &
 " tests completed, errors = " &
 integer'image(errors)
 severity failure;
 end if;
 end if;
 end if;
 end process;
end;
----
ex4_7.tv file:
0000_111_1110
0001_011_0000
0010_110_1101
0011_111_1001
0100_011_0011
0101_101_1011
0110_101_1111
0111_111_0000
1000_111_1111
1001_111_1011
1010_111_0111
1011_001_1111
1100_000_1101
1101_011_1101
1110_100_1111
1111_100_0111
----