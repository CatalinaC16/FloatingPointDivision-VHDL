library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity UC_divider is
generic (n : natural);
  Port (
    Clk : in std_logic;
    Rst : in std_logic;
    Start : in std_logic;
    SignA : in std_logic;
    ShQB : out std_logic; 
    SubB : out std_logic;
    Term : out std_logic;
    LoadA : out std_logic;
    LoadB : out std_logic;
    LoadQ : out std_logic;
    isSumDone: out std_logic;
    LoadQ_lastBit : out std_logic
   );
end UC_divider;

architecture Behavioral of UC_divider is
type t_state is (StartSt,Init,Shiftare,Scadere,VerifSignA,Refacere,Dec,VerifC,Stop);
signal state: t_state;
signal cnt: natural;
begin

process(state, Clk, Rst,SignA)
begin
    if( Rst = '1') then 
        state <= StartSt;
    elsif( rising_edge(Clk) ) then     
        case state is 
            when StartSt =>
                if ( Start = '1') then 
                    state <= Init;
                end if;
                
            when Init =>
                cnt <= n+1;
                state <= Scadere; 
            
            when Scadere =>
                state <= VerifSignA;
        
            when VerifSignA => 
                if(SignA = '1') then 
                    state <= Refacere;
                else
                    state <= Shiftare;
                end if;
                  
            when Refacere =>
                state <= Shiftare;
                
            when Shiftare =>
                state <= Dec;   
                
            when Dec =>
               cnt <= cnt - 1;
               state <= VerifC;
             
            when VerifC => 
                if cnt = 0 then
                    state <= Stop;
                else
                    state <= Scadere;
                end if;  
                
            when Stop =>
             state <= Stop;  
        
        end case;
     end if;
end process;

ShQB <= '1' when state = Shiftare else '0'; 
SubB <= '1' when state = Scadere else '0';
Term  <= '1' when state = Stop else '0';
LoadA <= '1' when state = Init else '0';
LoadB <= '1' when state = Init  else '0';
LoadQ <= '1' when state = Init else '0';
LoadQ_lastBit <= '1' when state = Scadere else '0';
isSumDone <= '1' when state = VerifSignA else '0';
end Behavioral;
