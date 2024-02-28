library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sign is
    Port ( SemnA : in std_logic;
           SemnB : in std_logic;
           Semn : out std_logic);
end sign;

architecture Behavioral of sign is
begin

Semn <= SemnA xor SemnB;

end Behavioral;
