library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity divider_sim is
--  Port ( );
end divider_sim;

architecture Behavioral of divider_sim is
constant CLK_PERIOD : TIME := 10 ns;
signal Clk,Rst : STD_LOGIC := '0';
signal Start : STD_LOGIC := '1';
signal Term,isException: STD_LOGIC;
signal ManA : STD_LOGIC_VECTOR(47 downto 0) := "101000000000000000000000000000000000000000000000";
signal ManB : STD_LOGIC_VECTOR(47 downto 0) := "000000000000000000000000110000000000000000000000";
signal A,Q : STD_LOGIC_VECTOR (47 downto 0);
begin

gen_clk: process
 begin
     Clk <= '0';
     wait for (CLK_PERIOD/2);
     Clk <= '1';
     wait for (CLK_PERIOD/2);
 end process gen_clk;

DUT: entity work.divider generic map(n => 48)
    port map(Clk,Rst,Start,ManA,ManB,A,Q,isException,Term);
             
end Behavioral;
