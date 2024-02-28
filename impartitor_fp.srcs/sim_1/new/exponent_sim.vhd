library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity exponent_sim is
--  Port ( );
end exponent_sim;

architecture Behavioral of exponent_sim is
signal ExponentNorm:std_logic_vector (7 downto 0);
signal isExceptionOverflow: std_logic;
begin
DUT: entity work.normalizare_exponent port map('1',"10001000",10,ExponentNorm,isExceptionOverflow);

end Behavioral;
