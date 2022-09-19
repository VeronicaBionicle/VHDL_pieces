library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_ARITH.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity lab4 is 
	port (
		clk, freq : in STD_LOGIC;
		khz_indicator: out std_logic_vector(6 downto 0);
		hhz_indicator: out std_logic_vector(6 downto 0);
		decimal_point : out std_logic := '0';
		unused_point: out std_logic := '1'		
	);
end entity;

architecture freq_meter of lab4 is
	signal second_counter : std_logic_vector(25 downto 0) := (others => '0');	-- 1 second counter
	signal counter : integer range 0 to 99999 := 0;	-- input frequency counter
	signal displayed_counter : integer range 0 to 99999 := 0;	-- register to show on segments
	signal reset_counter : std_logic := '0';	-- signal to reset counter
	
	function seven_segment_decode (number : integer) return std_logic_vector is
		variable seven_segment_code: std_logic_vector(6 downto 0);
		begin
            case (number) is
					when 1 => seven_segment_code := b"1001111";
					when 2 => seven_segment_code := b"0010010";
					when 3 => seven_segment_code := b"0000110";
					when 4 => seven_segment_code := b"1001100";
					when 5 => seven_segment_code := b"0100100";
					when 6 => seven_segment_code := b"0100000";
					when 7 => seven_segment_code := b"0001111";
					when 8 => seven_segment_code := b"0000000";
					when 9 => seven_segment_code := b"0000100";
					when others => seven_segment_code := b"0000001"; --0
				end case;
				return std_logic_vector(seven_segment_code);
		end;

begin
	process (freq, reset_counter) begin	-- process for counting input frequency signal
		if reset_counter then
			counter <= 0;
		elsif (rising_edge(freq)) then
			if (counter < 99999) then
				counter <= counter + 1;
			end if;
		end if;
	end process;
	
	process (clk) begin	-- process for 1 second counter
		if (rising_edge(clk)) then
			second_counter  <= second_counter  + '1';
			if (second_counter = b"10_1111_1010_1111_0000_1000_0000") then	   -- 50 000 000 (1 s for 50 MHz)
			   second_counter <= (others => '0');
				displayed_counter <= counter;
				reset_counter <= '1';
			else
				reset_counter <= '0';	
			end if;
		end if;
	end process;
	
	process (all) begin	--combinatoric process for displaying measured frequency
		if (displayed_counter < 9999) then	-- if frequency is less than 9999 Hz (shows X.X)
	    	khz_indicator <= seven_segment_decode(displayed_counter/1000);
	    	hhz_indicator <= seven_segment_decode((displayed_counter rem 1000)/100);
			decimal_point <= '0';
		else	-- if frequency is between 10 and 99 kHz (shows XX)
	   		khz_indicator <= seven_segment_decode(displayed_counter/10000);
	    	hhz_indicator <= seven_segment_decode((displayed_counter rem 10000)/1000);
			decimal_point <= '1';
		end if;
	end process;
	
end freq_meter;