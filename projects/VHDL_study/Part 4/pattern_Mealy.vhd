-- Finite state machine (Mealy) for machine, which "likes" (gives 1 on y) pattern '01'

library IEEE; use IEEE.STD_LOGIC_1164.all;

entity patternMealy is
  port (
    clk, reset : in STD_LOGIC;
    a : in STD_LOGIC;
    y: out STD_LOGIC
  );
end patternMealy;

architecture synth of patternMealy is
  type statetype is (S0, S1);
  signal state, nextstate: statetype;
begin
  
  process (clk, reset) begin
    if reset then state <= S0;
    elsif rising_edge(clk) then state <= nextstate;
    end if;
  end process;
  
  process (all) begin
    case state is
      when S0 => 
        if a then nextstate <= S0;
        else      nextstate <= S1;
        end if;
      when S1 => 
        if a then nextstate <= S0;
        else      nextstate <= S1;
        end if;
      when others =>
                  nextstate <= S0;
    end case;
  end process;

  y <= '1' when (state = S1 and a = '1') else '0';
end synth; 
