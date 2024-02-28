library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity normalization_sim is
--  Port ( );
end normalization_sim;

architecture Behavioral of normalization_sim is
constant CLK_PERIOD : TIME := 10 ns;
signal Clk : STD_LOGIC := '0';
signal NumberNormalized:  std_logic_vector(31 downto 0);
begin

gen_clk: process
 begin
     Clk <= '0';
     wait for (CLK_PERIOD/2);
     Clk <= '1';
     wait for (CLK_PERIOD/2);
 end process gen_clk;

DUT: entity work.normalization port map(Clk,'0','1','0',"00010001","000000000000001001010100","000000000000000101101111",NumberNormalized);

end Behavioral;
