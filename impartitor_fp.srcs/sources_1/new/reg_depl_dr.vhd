library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity reg_depl_dr is
generic(n : natural);
 Port (
        Clk : in std_logic;
        Rst : in std_logic;
        D   : in std_logic_vector (n-1 downto 0);
        SRI : in std_logic;
        Load: in std_logic;
        CE  : in std_logic;
        Q   : out std_logic_vector (n-1 downto 0));
end reg_depl_dr;

architecture Behavioral of reg_depl_dr is
signal Qout : std_logic_vector (n-1 downto 0):= (others=>'0');
begin

process(Clk, Rst, CE)
begin
    if rising_edge(Clk) then
        if (Rst = '1') then
            Qout <= (others => '0');
        else
            if (Load = '1') then
                Qout <= D;
            else
                if (CE = '1') then
                     Qout <= SRI & Qout(n-1 downto 1);               
                else
                     Qout <= Qout;
                end if;
             end if;
         end if;
     end if;
 end process;
 
 Q <= Qout; 

end Behavioral;
