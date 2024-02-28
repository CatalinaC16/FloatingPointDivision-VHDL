library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_signed.ALL;
use ieee.numeric_std.all;

entity exponent is
    Port ( ExpA : in std_logic_vector (7 downto 0);
           ExpB : in std_logic_vector (7 downto 0);
           ManA : in std_logic_vector (22 downto 0);
           ManB : in std_logic_vector (22 downto 0);
           Exp : out std_logic_vector (7 downto 0);
           Exceptie: out std_logic);
end exponent;

architecture Behavioral of exponent is
signal deplOvf: integer := 128;
signal deplUvf: integer := -127;
signal expp:  std_logic_vector(7 downto 0);
begin

process(ExpA,ExpB)
begin
    if((ExpB = "00000000" and ManB = "000000000000000000000000") or ExpB = "00000000" ) then 
        expp <= "11111111";
    elsif(ExpA = "00000000" and ManA = "000000000000000000000000") then 
        expp <= "00000000";
     else         
        expp <= std_logic_vector(signed(ExpA) - signed(ExpB));
        if(signed(expp) > deplOvf or signed(expp) < deplUvf ) then 
            Exceptie <= '1';
        else 
            Exceptie <= '0';
        end if;
     end if;
end process;

Exp <= expp;
 
end Behavioral;
