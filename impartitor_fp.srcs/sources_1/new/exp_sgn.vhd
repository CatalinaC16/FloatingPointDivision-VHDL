library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity exp_sgn is
    Port ( ExpA : in std_logic_vector (7 downto 0);
           ExpB : in std_logic_vector (7 downto 0);
           Start : in std_logic;
           ManA : in std_logic_vector (22 downto 0);
           ManB : in std_logic_vector (22 downto 0);
           SemnA : in std_logic;
           SemnB : in std_logic;
           Exponent : out std_logic_vector (7 downto 0);
           Exceptie : out std_logic;
           Semn : out std_logic);
end exp_sgn;

architecture Behavioral of exp_sgn is
signal sgn,ecx: std_logic;
signal exp : std_logic_vector(7 downto 0);
begin

expp: entity work.exponent port map(ExpA,ExpB,ManA,ManB,exp,ecx);
sgnn: entity work.sign port map(SemnA,SemnB,sgn);

Exponent <= exp;
Exceptie <= ecx;
Semn <= sgn;

end Behavioral;
