library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity assamble is
    Port ( Enable : in STD_LOGIC;
           Mantisa : in STD_LOGIC_VECTOR (22 downto 0);
           Semn : in STD_LOGIC;
           Exponent : in STD_LOGIC_VECTOR (7 downto 0);
           FinalResult : out STD_LOGIC_VECTOR (31 downto 0));
end assamble;

architecture Behavioral of assamble is

begin

process(Enable)
begin
    if(Enable = '1') then 
        FinalResult(31) <= Semn;
        FinalResult(30 downto 23) <= Exponent;
        FinalResult(22 downto 0) <= Mantisa;
    end if;
end process;

end Behavioral;
