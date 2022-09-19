LIBRARY ieee; --    ���������� ����������
USE ieee.std_logic_1164.all; --     �������� �������� � �����������
Use ieee.std_logic_arith.all; --     ����������
Use ieee.std_logic_unsigned.all; --     ������ � ����������� �������(��������������� �����)

ENTITY frequency_block IS -- ������������ ������� ��������� ����� � ��������� Frequencyblock      
	PORT --     ����������� ������� � �������� ��������
	(
		count : IN STD_LOGIC_VECTOR(15 downto 0); --  ������ �� �������� 16 ���
		input_signal : IN STD_LOGIC; --     ������ �������
		k : OUT STD_LOGIC_VECTOR(15 downto 0) --    �������� ������ �� ���������� 
	);
	
END frequency_block; --     ����� �������� ����� � ���������  Frequencyblock      

ARCHITECTURE Behaviroral OF frequency_block IS --  ���������� ����������� ������ �����
constant clk_frequency: integer  := 50000000; --   ���������� ��������� :������� �����������
constant max_frequency: integer  := 50000; --     ������������ ������� �������
constant min_frequency: integer  := 1000; --     ����������� ������� �������
BEGIN -- ������ 
process(input_signal) --     �������, ������� ����������� �� ��������� ������� �������
variable count_int: integer;	--   ���������� ���������� (������ ��� ����� ��������)  
variable our_frequency: integer;    --   ���������� ���������� (������ ��� ����� ��������)  
begin    
if (input_signal'event and input_signal='0') then --     ���� ���������� ����� �������
      count_int := conv_integer(count); --   ��������������� � stdlogic � unsigned  
      our_frequency:=clk_frequency/(count_int*2); -- ���������� ������ �������    
      k <= conv_std_logic_vector(((our_frequency-min_frequency)*1020/(max_frequency-min_frequency)),16); --   ���������� ������� ������� � ������� �� 0 �� 1, ����� ��������� �� 1020, ����� ��������������� ������� � stdlogic   
   end if; --����� �������     

end process; --����� ��������     
END Behaviroral; --  ����� ��������  ���������� ����������� ������ ����� 
