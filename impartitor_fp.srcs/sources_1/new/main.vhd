library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity main is
    Port ( 
           Clk : in std_logic;
           Rst : in std_logic;
           Enable : in std_logic;
           Result: out std_logic_vector(31 downto 0);
           isEverythingDone: out std_logic;
           Exception: out std_logic
           );
end main;

architecture Behavioral of main is
signal isException,isAssigningValues,isCatchingExceptions,isDividing,isDoneDividing:std_logic;
signal isExponentSign,isNormalizing,isDone:std_logic;
signal SignA,SignB,Sign: std_logic;
signal ManA,ManB: std_logic_vector(47 downto 0);
signal RestA,CatQ: std_logic_vector(47 downto 0);
signal ExpA,ExpB,Exp: std_logic_vector(7 downto 0);
signal Res: std_logic_vector(31 downto 0);

begin

uc_main: entity work.UC port map(Clk,Rst,Enable,isException,isDoneDividing,
isAssigningValues,isCatchingExceptions,isDividing,
isExponentSign,isNormalizing);

values: entity work.assign_values port map(isAssigningValues,ManA,ManB,SignA,SignB,ExpA,ExpB);

check: entity work.catch_exceptions port map(isCatchingExceptions,ManA(46 downto 24),ManB(22 downto 0),ExpA,ExpB,isException);

divide: entity work.divider generic map(n=> 48) port map(Clk,Rst,isDividing,ManA,ManB,RestA,CatQ,isException,isDoneDividing);

exponent_sign: entity work.exp_sgn port map(ExpA,ExpB,isExponentSign,ManA(46 downto 24),ManB(22 downto 0),SignA,SignB,Exp,isException,Sign);

norm: entity work.normalization port map(Clk,Rst,isNormalizing,Sign,Exp,ExpA,ExpB,ManA(46 downto 24),ManB(22 downto 0),RestA(23 downto 0),CatQ(23 downto 0),CatQ(24),Res,isDone);

Result <= Res when isDone='1' else x"00000000";
isEverythingDone <= isDone;
Exception <= isException;
end Behavioral;
