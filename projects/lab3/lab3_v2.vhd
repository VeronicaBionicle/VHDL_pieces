library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_ARITH.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity lab3_v2 is
	port(
		clk: in std_logic;	--����������� ������
		button_clear : in boolean;	--������ ������ �����������
		button_pause : in boolean;	--������ �����
		dec_seconds_indicator: out std_logic_vector(6 downto 0);	--���� ���������� ��� ������� ����� �������
		seconds_indicator: out std_logic_vector(6 downto 0);	--���� ���������� ��� ������
		unused_point: out std_logic := '1'	--�������� ����� �� ����������
	 );
end entity;

architecture dc of lab3_v2 is
	signal dec_seconds_counter : std_logic_vector(23 downto 0) := (others => '0');	--������� ������� counter (�� �������� ����� ������������� LED)
	signal dec_seconds : integer range 0 to 9 := 0;	-- ���������� ��������� ������� ����� �������
	signal seconds : integer range 0 to 9 := 0;	-- ���������� ��������� ������� ����� �������

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
	process(clk, button_clear, button_pause) -- ������ ������� (������������ ����� �� ����������� counter) ������������������ �� clk
���begin 
	if (button_pause and not button_clear) then	--���� �� ����� � �� �����, �������, ���� ����� - �� �������
��������if (rising_edge(clk)) then -- ������� ����������� �� ������������ ������ ������������
				dec_seconds_counter  <= dec_seconds_counter  + '1'; -- � ������ ������ �������� �������� ������������� �� �������
	���������if (dec_seconds_counter  = b"0100_1100_0100_1011_0100_0000") then -- ��� ������������ ��������
					dec_seconds_counter <= (others => '0');
					dec_seconds <= dec_seconds + 1;
					if (dec_seconds = 9) then	--���� ������ 10 ������� ����� �������
						dec_seconds <= 0;
						seconds <= seconds + 1;
						if (seconds = 9) then	--���� ������ 10 ������
							seconds <= 0;
						end if;
					end if;
				end if;
			end if;
		else if (button_clear) then	--���� �����
			dec_seconds_counter  <= (others => '0');	--�������� ������� �������
			dec_seconds <= 0;
			seconds <= 0;
		end if;
	end if;	
�	end process;	

	process(clk)	--������ �������, ���������� ����������
	begin
		if(rising_edge(clk))then
			dec_seconds_indicator <= seven_segment_decode(dec_seconds);
			seconds_indicator <= seven_segment_decode(seconds);
		end if;
	end process;
end dc;