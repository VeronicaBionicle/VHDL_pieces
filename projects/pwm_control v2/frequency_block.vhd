LIBRARY ieee;
USE ieee.std_logic_1164.all;
Use ieee.std_logic_arith.all;
Use ieee.std_logic_unsigned.all; 

ENTITY frequency_block IS   
	PORT
	(
		count : IN STD_LOGIC_VECTOR(15 downto 0);	-- signal from meander counter
		en : IN STD_LOGIC;	-- meander signal
		k : OUT STD_LOGIC_VECTOR(15 downto 0) := (others => '0')	-- output % signal 
	);
	
END frequency_block;

ARCHITECTURE Behaviroral OF frequency_block IS
	constant clk_frequency: integer  := 50000000;	-- 50 MHz
	constant max_frequency: integer  := 50000;	-- 50 kHz
	constant min_frequency: integer  := 1000;	-- 1 kHz
BEGIN  
process (en)
	variable count_int: integer;
	variable meander_frequency: integer; 
begin    
if (en'event and en = '0') then -- falling edge
      count_int := conv_integer(count); -- to unsigned
	if (count_int > 0) then 
      		meander_frequency := clk_frequency/(count_int*2);   -- find frequency of meander
		k <= conv_std_logic_vector(((meander_frequency-min_frequency)*1020/(max_frequency-min_frequency)), 16);    -- to logic vector 1020*(f_in-f_min)/(f_max-f_min)

	else
		meander_frequency := 0;
		k <= (others => '0');
	end if;
    end if; 

end process;     
END Behaviroral;
