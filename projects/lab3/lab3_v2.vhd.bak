library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_ARITH.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity lab3 is
	port(
		clk: in std_logic;	--тактирующий сигнал
		button_clear : in std_logic;	--кнопка сброса секундомера
		button_pause : in std_logic;	--кнопка паузы
		dec_sec_symbol: out std_logic_vector(6 downto 0);	--порт индикатора для десятых долей секунды
		sec_symbol: out std_logic_vector(6 downto 0);	--порт индикатора для секунд
		unused_point: out std_logic := '1'	--ненужная точка на индикаторе
	 );
end entity;

architecture dc of lab3 is
	signal dec_seconds_counter : std_logic_vector(23 downto 0) := (others => '0');	--счетный регистр counter (по которому будут переключаться LED)
	signal seconds_counter : std_logic_vector(3 downto 0):= (others => '0');
	signal dec_sec_number: std_logic_vector(3 downto 0) := (others => '0');	--регистр с числами от 0 до 15 (F)
	signal sec_number: std_logic_vector(3 downto 0) := (others => '0');	--регистр с числами от 0 до 15 (F)

begin
	 process(clk, button_clear, button_pause) -- первый процесс (переключение чисел по переполненю counter) синхронизированный по clk
    begin 
		if (button_pause = '1' and button_clear = '0') then
        if (rising_edge(clk)) then -- процесс выполняется по нарастающему фронту тактирования
					dec_seconds_counter  <= dec_seconds_counter  + '1'; -- с каждым тактом значение счетчика увеличивается на единицу 
	            if (dec_seconds_counter  = b"0100_1100_0100_1011_0100_0000") then -- при переполнении счетчика (b"<значение>"- двоичная запись числа) 10 гЦ
						dec_sec_number <= dec_sec_number + '1'; -- увеличивается значение регистра number, выбор следующего числа
						if (dec_sec_number  = b"1001") then
								dec_sec_number <= (others => '0');
						end if;
						dec_seconds_counter <= (others => '0');
						seconds_counter <= seconds_counter + '1'; 
	               if (seconds_counter  = b"1001") then
							sec_number <= sec_number + '1';
							if (sec_number  = b"1001") then
								sec_number <= (others => '0');
							end if;
							seconds_counter <= (others => '0');
						end if;
	            end if;

				end if;
        
		else 
					if (button_clear = '1') then
						dec_seconds_counter  <= (others => '0');
						dec_sec_number <= (others => '0');
						seconds_counter <= (others => '0');
						sec_number <= (others => '0');
					end if;
				end if;
    end process;

	process(clk)	--второй процесс, обновления индикатора
	begin
		if(rising_edge(clk))then
			case (dec_sec_number) is
				when b"0001" => dec_sec_symbol <= b"1001111";--1
				when b"0010" => dec_sec_symbol <= b"0010010";--2
				when b"0011" => dec_sec_symbol <= b"0000110";--3
				when b"0100" => dec_sec_symbol <= b"1001100";--4
				when b"0101" => dec_sec_symbol <= b"0100100";--5
				when b"0110" => dec_sec_symbol <= b"0100000";--6
				when b"0111" => dec_sec_symbol <= b"0001111";--7
				when b"1000" => dec_sec_symbol <= b"0000000";--8
				when b"1001" => dec_sec_symbol <= b"0000100";--9
				when others  => dec_sec_symbol <= b"0000001";--0
			end case;
			
			case (sec_number) is
				when b"0001" => sec_symbol <= b"1001111";--1
				when b"0010" => sec_symbol <= b"0010010";--2
				when b"0011" => sec_symbol <= b"0000110";--3
				when b"0100" => sec_symbol <= b"1001100";--4
				when b"0101" => sec_symbol <= b"0100100";--5
				when b"0110" => sec_symbol <= b"0100000";--6
				when b"0111" => sec_symbol <= b"0001111";--7
				when b"1000" => sec_symbol <= b"0000000";--8
				when b"1001" => sec_symbol <= b"0000100";--9
				when others  => sec_symbol <= b"0000001";--0
			end case;
		end if;
	end process;
	
end dc;