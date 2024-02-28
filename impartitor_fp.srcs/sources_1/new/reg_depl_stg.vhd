library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity reg_depl_stg is
  generic (n : natural);
  Port (
        Clk : in std_logic;
        Rst : in std_logic;
        Dinit   : in std_logic_vector (n-1 downto 0);
        D   : in std_logic_vector (n-1 downto 0);
        SLI : in std_logic;
        LoadInit: in std_logic;
        Load: in std_logic;        
        CE  : in std_logic;
        Q   : out std_logic_vector (n-1 downto 0));
end reg_depl_stg;

architecture Behavioral of reg_depl_stg is
signal Qout : std_logic_vector (n-1 downto 0):= (others=>'0');
begin

process(Clk, Rst, CE,SLI)
begin
    if(rising_edge(Clk)) then
        if(Rst = '1') then 
            Qout <= (others => '0');
        else
            if(LoadInit ='1') then 
                Qout <= Dinit;
            elsif(Load ='1') then 
                Qout <= D;
            else
                if(CE = '1') then
                    Qout <= Qout(n-2 downto 0) & SLI;
                else
                    Qout <= Qout;
                end if;
            end if;       
        end if;
    end if;
end process;

Q <= Qout;
end Behavioral;
