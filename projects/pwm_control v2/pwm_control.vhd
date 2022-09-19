library IEEE; use IEEE.STD_LOGIC_1164.all;

entity pwm_control is
  PORT (
	clk, meander	:  IN  STD_LOGIC;
	out_frequency, saw	:  OUT  STD_LOGIC_VECTOR(15 DOWNTO 0);
	PWM 			:  OUT  STD_LOGIC
	);
end pwm_control;

architecture SYNTH of pwm_control is
component meandr_counter is
  PORT (
	aclear, clock, cnt_en	: IN STD_LOGIC;
	q	: OUT STD_LOGIC_VECTOR (15 DOWNTO 0) := (others => '0')
        );
END component;

component frequency_block IS   
  PORT (
	count	: IN STD_LOGIC_VECTOR(15 downto 0);	-- signal from meander counter
	en	: IN STD_LOGIC;	-- meander signal
	k	: OUT STD_LOGIC_VECTOR(15 downto 0) := (others => '0')	-- output % signal 
	);
END component;

component sawtooth IS
  PORT (
	clock	: IN STD_LOGIC ;
	q	: OUT STD_LOGIC_VECTOR (15 DOWNTO 0) := (others => '0')
	);
END component;

component comparator IS
  PORT (
	data_a, data_b	: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
	a_ge_b		: OUT STD_LOGIC := '0'
	);
END component;

  signal meander_count: STD_LOGIC_VECTOR(15 downto 0);
begin
  frequency_counter: meandr_counter port map(meander, clk, meander, meander_count);
  from_frequency_to_duty_cycle: frequency_block port map(meander_count, meander, out_frequency);
  saw_to_compare: sawtooth port map(clk, saw);
  compare_saw_and_duty_cycle: comparator port map(saw, out_frequency, PWM);
end SYNTH;
