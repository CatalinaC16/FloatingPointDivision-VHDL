library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity expo_sim is
--  Port ( );
end expo_sim;

architecture Behavioral of expo_sim is
signal Exp : std_logic_vector (7 downto 0);
signal Exceptie: std_logic;
begin
DUT: entity work.exponent port map("00000000","01111111",Exp, Exceptie);

end Behavioral;
