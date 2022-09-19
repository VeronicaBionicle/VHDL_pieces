library IEEE; use IEEE.STD_LOGIC_1164.all;

entity test_meander_counter is
end test_meander_counter;

architecture sim of test_meander_counter is

component meandr_counter is
  port (
	    aclear		: IN STD_LOGIC ;
		clock		: IN STD_LOGIC ;
		cnt_en		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
  );
end component;

component frequency_block IS   
	PORT
	(
		count : IN STD_LOGIC_VECTOR(15 downto 0);	-- signal from meander counter
		en : IN STD_LOGIC;	-- meander signal
		k : OUT STD_LOGIC_VECTOR(15 downto 0)	-- output % signal 
	);
END component;

component sawtooth IS
	PORT
	(
		clock		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0) := (others => '0')
	);
END component;

component comparator IS
	PORT
	(
		data_a		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
		data_b		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
		a_ge_b		: OUT STD_LOGIC := '0'
	);
END component;

  signal clock, meander: STD_LOGIC;
  signal q: STD_LOGIC_VECTOR(15 downto 0);
  signal k: STD_LOGIC_VECTOR(15 downto 0);
  signal saw: STD_LOGIC_VECTOR(15 downto 0);
  signal pwm: STD_LOGIC;
begin
  dut_1: meandr_counter port map(meander, clock, meander, q);
  dut_2: frequency_block port map(q, meander, k);
  dut_3: sawtooth port map(clock, saw);
  dut_4: comparator port map(saw, k, pwm);

process begin
wait;
end process;

end sim;
