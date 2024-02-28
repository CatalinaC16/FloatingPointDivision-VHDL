library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity normalization is
    Port (
           Clk: in std_logic;
           Rst: in std_logic;
           Enable : in std_logic;
           Semn : in std_logic;
           Exponent : in std_logic_vector (7 downto 0);
           ExpA : in std_logic_vector (7 downto 0);
           ExpB : in std_logic_vector (7 downto 0);
           ManA : in std_logic_vector (22 downto 0);
           ManB : in std_logic_vector (22 downto 0);
           RestAfterDivide : in std_logic_vector (23 downto 0);     
           QuotientAfterDivide : in std_logic_vector (23 downto 0);
           NoNormalization: in std_logic;
           NumberNormalized: out std_logic_vector(31 downto 0);
           isEverythingDone: out std_logic            
         );
end normalization;

architecture Behavioral of normalization is
signal NrPozShift: integer := 0;
signal ExponentNorm: std_logic_vector (7 downto 0);
signal MantisaNormalizata, MantisaRotunjita: std_logic_vector (23 downto 0);
signal Man: std_logic_vector (22 downto 0);
signal isDoneRounding,isNormDone,isExceptionUnderflow,isDoneExponent,isDone: std_logic;

begin
uc_norm: entity work.UC_normalization port map(Clk,Rst,Enable,isDoneRounding,isNormDone,isDoneExponent,isDone);
rotunjire: entity work.rounding port map(Enable,RestAfterDivide,QuotientAfterDivide,MantisaRotunjita);
mantisa: entity work.normalizare_mantisa port map(isDoneRounding,ExpA,ExpB,ManA,ManB,MantisaRotunjita,RestAfterDivide,NoNormalization,NrPozShift,MantisaNormalizata);
exponent_re: entity work.normalizare_exponent port map(isNormDone,Exponent,NrPozShift,ExponentNorm,isExceptionUnderflow);
assamble_finalResult: entity work.assamble port map(isDone,Man,Semn,ExponentNorm,NumberNormalized);

process(Clk,NoNormalization)
begin 
    if(rising_edge(Clk))then
        Man <= MantisaNormalizata(23 downto 1);
        isEverythingDone <= isDone;
    end if;
end process;
end Behavioral;
