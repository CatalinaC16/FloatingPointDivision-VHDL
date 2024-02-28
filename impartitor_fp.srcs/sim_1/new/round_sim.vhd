library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity round_sim is
--  Port ( );
end round_sim;

architecture Behavioral of round_sim is
signal MantisaRotunjita: std_logic_vector(23 downto 0);
begin
DUT: entity work.rounding port map('1',"011111111110110011101111","100000000001001100010000",MantisaRotunjita);

end Behavioral;
