library IEEE; use IEEE.STD_LOGIC_1164.all;

entity voltage_stabilizer_testbench is
end voltage_stabilizer_testbench;

architecture test of voltage_stabilizer_testbench is
  
  component voltage_stabilizer
    port(
    clk, reset : in STD_LOGIC;
    bypass, is_low, is_high : in STD_LOGIC;
    y: out STD_LOGIC_VECTOR(6 downto 0)
    );
  end component;
  signal clk, reset, bypass, is_low, is_high: STD_LOGIC;
  signal y : STD_LOGIC_VECTOR(6 downto 0);
begin
  --init component
  dut: voltage_stabilizer port map(clk, reset, bypass, is_low, is_high, y);
  -- generate clock
  process begin
    clk <= '1'; wait for 5 ns;
    clk <= '0'; wait for 5 ns;
  end process;

  -- run tests
  -- apply different states at a time
  process begin
  -- reset before start
    reset <= '1'; wait for 11 ns; reset <= '0';
 assert y = "0001000" report "Bypass after reset failed";
	is_low <= '0'; is_high <= '1'; bypass <= '0'; wait for 30 ns;
-- going upper
    is_low <= '0'; is_high <= '0'; bypass <= '0'; wait for 10 ns;
 assert y = "0000001" report "S0 failed";
    is_low <= '1'; is_high <= '0'; bypass <= '0'; wait for 10 ns;
 assert y = "0000010" report "S1 failed";
    is_low <= '1'; is_high <= '0'; bypass <= '0'; wait for 10 ns;
 assert y = "0000100" report "S2 failed";
    is_low <= '1'; is_high <= '0'; bypass <= '0'; wait for 10 ns;
 assert y = "0001000" report "S3 failed";
    is_low <= '1'; is_high <= '0'; bypass <= '0'; wait for 10 ns;
 assert y = "0010000" report "S4 failed";
    is_low <= '1'; is_high <= '0'; bypass <= '0'; wait for 10 ns;
 assert y = "0100000" report "S5 failed";
    is_low <= '1'; is_high <= '0'; bypass <= '0'; wait for 10 ns;
 assert y = "1000000" report "S6 failed";
    is_low <= '1'; is_high <= '0'; bypass <= '0'; wait for 10 ns;
 assert y = "1000000" report "S6 going upper failed";
    is_low <= '0'; is_high <= '0'; bypass <= '0'; wait for 10 ns;
 assert y = "1000000" report "S6 staing failed";
    -- going down
	is_high <= '1';
	wait for 10 ns; assert y = "0100000" report "S5 failed";
	wait for 10 ns; assert y = "0010000" report "S4 failed";
	wait for 10 ns; assert y = "0001000" report "S3 failed";
	wait for 10 ns; assert y = "0000100" report "S2 failed";
	wait for 10 ns; assert y = "0000010" report "S1 failed";
	wait for 10 ns; assert y = "0000001" report "S0 failed";
	wait for 10 ns; assert y = "0000001" report "S0 going lower failed";
	is_high <= '0';
	wait for 10 ns; assert y = "0000001" report "S0 staying failed";
--bypass from S0
	bypass <= '1'; wait for 10 ns;
	assert y = "0001000" report "Bypass failed";
	wait for 10 ns; assert y = "0001000" report "Bypass staying 1 failed";
	bypass <= '0'; wait for 10 ns;
	assert y = "0001000" report "Bypass staying 0 failed";
-- going lower and upper from bypass
	is_high <= '1'; wait for 10 ns;
	is_high <= '0'; wait for 10 ns;
	bypass <= '1'; wait for 10 ns;
	bypass <= '0'; wait for 10 ns;
	is_low <= '1'; wait for 10 ns;
	is_low <= '0'; wait for 10 ns;
	bypass <= '1';
  end process;
end test;