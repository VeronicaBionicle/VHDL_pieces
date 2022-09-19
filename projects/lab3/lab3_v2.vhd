library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_ARITH.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity lab3_v2 is
	port(
		clk: in std_logic;	--тактирующий сигнал
		button_clear : in boolean;	--кнопка сброса секундомера
		button_pause : in boolean;	--кнопка паузы
		dec_seconds_indicator: out std_logic_vector(6 downto 0);	--порт индикатора для десятых долей секунды
		seconds_indicator: out std_logic_vector(6 downto 0);	--порт индикатора для секунд
		unused_point: out std_logic := '1'	--ненужная точка на индикаторе
	 );
end entity;

architecture dc of lab3_v2 is
	signal dec_seconds_counter : std_logic_vector(23 downto 0) := (others => '0');	--счетный регистр counter (по которому будут переключаться LED)
	signal dec_seconds : integer range 0 to 9 := 0;	-- количество прошедших десятых долей секунды
	signal seconds : integer range 0 to 9 := 0;	-- количество прошедших десятых долей секунды

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
	process(clk, button_clear, button_pause) -- первый процесс (переключение чисел по переполненю counter) синхронизированный по clk
   begin 
	if (button_pause and not button_clear) then	--если не сброс и не пауза, считаем, если пауза - не считаем
        if (rising_edge(clk)) then -- процесс выполняется по нарастающему фронту тактирования
				dec_seconds_counter  <= dec_seconds_counter  + '1'; -- с каждым тактом значение счетчика увеличивается на единицу 
	         if (dec_seconds_counter  = b"0100_1100_0100_1011_0100_0000") then -- при переполнении счетчика
					dec_seconds_counter <= (others => '0');
					dec_seconds <= dec_seconds + 1;
					if (dec_seconds = 9) then	--если прошло 10 десятых долей секунды
						dec_seconds <= 0;
						seconds <= seconds + 1;
						if (seconds = 9) then	--если прошло 10 секунд
							seconds <= 0;
						end if;
					end if;
				end if;
			end if;
		else if (button_clear) then	--если сброс
			dec_seconds_counter  <= (others => '0');	--обнуляем счетный регистр
			dec_seconds <= 0;
			seconds <= 0;
		end if;
	end if;	
 	end process;	

	process(clk)	--второй процесс, обновления индикатора
	begin
		if(rising_edge(clk))then
			dec_seconds_indicator <= seven_segment_decode(dec_seconds);
			seconds_indicator <= seven_segment_decode(seconds);
		end if;
	end process;
end dc;