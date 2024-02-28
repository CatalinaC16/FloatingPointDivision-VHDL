library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity UC_normalization is
  Port (
    Clk : in std_logic;
    Rst : in std_logic;
    EnableNormalization : in std_logic;
    isDoneRounding: out std_logic;
    isDoneNormalizing: out std_logic;
    isDoneExponent: out std_logic;
    isDone: out std_logic
     );
end UC_normalization;

architecture Behavioral of UC_normalization is
type t_state is (Start,Rounding,Normalization,Exponent,Stop); 
signal state: t_state;
begin

process(state,Clk,Rst)
begin
    if(Rst = '1') then 
        state <= Start;
    elsif( rising_edge(Clk) ) then     
        case state is 
            when Start =>
                if(EnableNormalization = '1') then 
                    state <= Rounding;
                else 
                    state <= Start;
                end if;
            when Rounding => 
               state <= Normalization ;  
            when Normalization =>
               state <= Exponent;
            when Exponent =>
               state <= Stop;
            when Stop =>
               state <= Stop;                
            end case;
     end if;       
end process;

isDoneRounding <= '1' when state = Rounding else '0'; 
isDoneNormalizing <= '1' when state = Normalization else '0'; 
isDoneExponent <= '1' when state = Exponent else '0'; 
isDone <= '1' when state = Stop else '0'; 
end Behavioral;
