library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity normalizare_man is
--  Port ( );
end normalizare_man;

architecture Behavioral of normalizare_man is
constant CLK_PERIOD : TIME := 10 ns;
signal Clk,Rst : STD_LOGIC := '0';
signal NrPozShift : integer :=0;
signal  MantisaNormalizata : STD_LOGIC_VECTOR (23 downto 0); 
begin

gen_clk: process
 begin
     Clk <= '0';
     wait for (CLK_PERIOD/2);
     Clk <= '1';
     wait for (CLK_PERIOD/2);
 end process gen_clk;
 
DUT: entity work.normalizare_mantisa port map(Clk,Rst,'1',"000010111111111111111111",NrPozShift, MantisaNormalizata);
end Behavioral;
