LIBRARY ieee; --    подключаем библиотеки
USE ieee.std_logic_1164.all; --     названи€ сигналов и обозначениу
Use ieee.std_logic_arith.all; --     арифметика
Use ieee.std_logic_unsigned.all; --     работа с безнаковыми числами(конвертирование типов)

ENTITY frequency_block IS -- об€зательна€ строчка заголовка блока с названием Frequencyblock      
	PORT --     определение входных и выходных сигналов
	(
		count : IN STD_LOGIC_VECTOR(15 downto 0); --  сигнал из счетчика 16 бит
		input_signal : IN STD_LOGIC; --     сигнал меандра
		k : OUT STD_LOGIC_VECTOR(15 downto 0) --    выходной сигнал на компаратор 
	);
	
END frequency_block; --     конец описани€ блока с названием  Frequencyblock      

ARCHITECTURE Behaviroral OF frequency_block IS --  внутренн€€ архитектура нашего блока
constant clk_frequency: integer  := 50000000; --   внутренние константы :частота осцилл€тора
constant max_frequency: integer  := 50000; --     максимальна€ частота меандра
constant min_frequency: integer  := 1000; --     минимальна€ частота меандра
BEGIN -- начало 
process(input_signal) --     процесс, который запускаетс€ по изменению сигнала меандра
variable count_int: integer;	--   внутренн€€ переменна€ (только дл€ этого процесса)  
variable our_frequency: integer;    --   внутренн€€ переменна€ (только дл€ этого процесса)  
begin    
if (input_signal'event and input_signal='0') then --     если нисход€щий фронт меандра
      count_int := conv_integer(count); --   конвертирование в stdlogic в unsigned  
      our_frequency:=clk_frequency/(count_int*2); -- вычисление частот меандра    
      k <= conv_std_logic_vector(((our_frequency-min_frequency)*1020/(max_frequency-min_frequency)),16); --   привидение частоты меандра к сигналу от 0 до 1, затем умножени€ на 1020, затем конвертирование обратно в stdlogic   
   end if; --конец услови€     

end process; --конец процесса     
END Behaviroral; --  конец описани€  внутренней архитектура нашего блока 
