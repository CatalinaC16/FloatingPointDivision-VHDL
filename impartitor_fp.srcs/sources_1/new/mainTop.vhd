library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mainTop is
  Port (   
        Clk  : in  std_logic;
        Rst  : in  std_logic;
        Enable: in std_logic;
        AN   : out std_logic_vector (7 downto 0);
        Seg  : out std_logic_vector (7 downto 0);
        isException: out std_logic 
       );
end mainTop;

architecture Behavioral of mainTop is
signal Done,Exp: std_logic:='0'; 
signal Result: std_logic_vector(31 downto 0):=(others=>'0');

begin

divider_fp: entity WORK.main port map(Clk,Rst,Enable,Result,Done,exp);
display7seg: entity WORK.display7seg port map (Clk,Rst,Result,AN,Seg);
isException <= exp;
end Behavioral;
