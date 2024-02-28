library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity UC is
  Port (
    Clk : in std_logic;
    Rst : in std_logic;
    StartUC : in std_logic;
    isException: in std_logic;
    isDoneDividing: in std_logic;
    isAssigningValues: out std_logic;
    isCatchingExceptions: out std_logic;
    isDividing: out std_logic;
    isExponentSign: out std_logic;
    isNormalizing: out std_logic
   );
end UC;

architecture Behavioral of UC is
type t_state is (Start, AssignValues, CatchExceptions, DivideMantises, ExpoSign, Normalize, Stop);
signal state: t_state;
begin

process(state,Clk, Rst,isException,isDoneDividing) 
begin 
    if(Rst = '1') then 
        state <= Start;
    elsif( rising_edge(Clk)) then 
        if(isException = '1') then 
            state <= Stop;
        else
            case state is 
                when Start =>
                    if (StartUC ='1') then 
                        state <= AssignValues;
                    else 
                        state <= Start;
                    end if;   
                when AssignValues =>
                    state <= CatchExceptions; 
                when CatchExceptions =>
                    state <= DivideMantises;
                when DivideMantises => 
                        state <= ExpoSign;
                when ExpoSign =>
                  if(isDoneDividing='1') then
                    state <= Normalize;
                  end if;
                when Normalize =>
                    state <= Stop;
                when Stop =>
                    state <= Stop; 
             end case;
       end if;  
     end if;             
end process;

isAssigningValues <= '1' when state = AssignValues else '0'; 
isCatchingExceptions <= '1' when state = CatchExceptions else '0'; 
isDividing <= '1' when state = DivideMantises else '0'; 
isExponentSign <= '1' when state = ExpoSign else '0'; 
isNormalizing <= '1' when state = Normalize else '0';  

end Behavioral;
