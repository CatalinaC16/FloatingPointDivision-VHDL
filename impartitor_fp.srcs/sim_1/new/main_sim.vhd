library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity main_sim is
--  Port ( );
end main_sim;

architecture Behavioral of main_sim is
constant CLK_PERIOD : TIME := 10 ns;
signal Clk,Rst : STD_LOGIC := '0';
signal Semn,isEverythingDone, isException: std_logic;
signal Result : std_logic_vector(31 downto 0);
begin

gen_clk: process
 begin
     Clk <= '0';
     wait for (CLK_PERIOD/2);
     Clk <= '1';
     wait for (CLK_PERIOD/2);
 end process gen_clk;
 
DUT: entity work.main port map(Clk,Rst,'1',Result,isEverythingDone,isException);

end Behavioral;
