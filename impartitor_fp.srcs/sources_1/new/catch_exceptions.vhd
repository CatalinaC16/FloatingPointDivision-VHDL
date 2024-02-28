library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity catch_exceptions is
    Port ( EnCatching : in std_logic;
           ManA : in std_logic_vector (22 downto 0);
           ManB : in std_logic_vector (22 downto 0);
           ExpA : in std_logic_vector (7 downto 0);
           ExpB : in std_logic_vector (7 downto 0);
           isException : out std_logic);
end catch_exceptions;

architecture Behavioral of catch_exceptions is

begin

process(EnCatching)
begin
    if(EnCatching = '1') then 
        if(ManB = "00000000000000000000000" and ExpB = "00000000") then
           isException <= '1';
        else
            isException <= '0';  
        end if;
    else 
        isException <= '0';  
    end if;
end process;

end Behavioral;
