library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_ARITH.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

--D6 d5 d4 d3 d2 d1 d0
--A  B   C   D  E    F   G
--����������� ����� �� ������������
-- 1 - ���������� �������, 0 - �����������

entity lab3 is
port(
	clk: in std_logic;
	--Hex:in std_logic_vector(3 downto 0);
	Symbol: out std_logic_vector(6 downto 0)
 );
end entity;

architecture dc of lab3 is
	signal counter : std_logic_vector(21 downto 0) := (others => '0');	--������� ������� counter (�� �������� ����� ������������� LED)
	signal number: std_logic_vector(3 downto 0) := (others => '0');	--������� � ������� �� 0 �� 15 (F)
	
begin
	�process(clk) -- ������ ������� (������������ ����� �� ����������� counter) ������������������ �� clk
����begin 
��������if (rising_edge(clk)) then -- ������� ����������� �� ������������ ������ ������������
������������counter <= counter + '1'; -- � ������ ������ �������� �������� ������������� �� �������
������������if (counter = b"11_1111_1111_1111_1111_1111") then -- ��� ������������ �������� (b"<��������>"- �������� ������ �����)�� 
����������������number <= number + '1'; -- ������������� �������� �������� number, ����� ���������� �����
������������end if;
��������end if;
����end process;

	process(clk)	--������ �������, ���������� ����������
	begin
		if(rising_edge(clk))then
			case (number) is
				when b"0001" => Symbol <= b"1001111";--1
				when b"0010" => Symbol <= b"0010010";--2
				when b"0011" => Symbol <= b"0000110";--3
				when b"0100" => Symbol <= b"1001100";--4
				when b"0101" => Symbol <= b"0100100";--5
				when b"0110" => Symbol <= b"0100000";--6
				when b"0111" => Symbol <= b"0001111";--7
				when b"1000" => Symbol <= b"0000000";--8
				when b"1001" => Symbol <= b"0000100";--9
				when b"1010" => Symbol <= b"0001000";--A
				when b"1011" => Symbol <= b"1100000";--b
				when b"1100" => Symbol <= b"0110001";--C
				when b"1101" => Symbol <= b"1000010";--d
				when b"1110" => Symbol <= b"0110000";--E
				when b"1111" => Symbol <= b"0111000";--F
				when others  => Symbol <= b"0000001";--0
			end case;
		end if;
	end process;
	
end dc;