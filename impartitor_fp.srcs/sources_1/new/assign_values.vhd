library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity assign_values is
    Port ( Enable : in std_logic;
           ManA : out std_logic_vector (47 downto 0);
           ManB : out std_logic_vector (47 downto 0);
           SignA : out std_logic;
           SignB : out std_logic;
           ExpA : out std_logic_vector (7 downto 0);
           ExpB : out std_logic_vector (7 downto 0));
end assign_values;

architecture Behavioral of assign_values is

begin

process(Enable) 
begin 
    if(Enable = '1') then 
    
        ManA <= "110010000000000000000000"&"000000000000000000000000";
        ExpA <= "10000011";
        SignA <= '0';
     
        ManB <= "000000000000000000000000"&"100101110000000000000000";
        ExpB <= "10000101";
        SignB <= '1';
          
    end if;
end process;

end Behavioral;
