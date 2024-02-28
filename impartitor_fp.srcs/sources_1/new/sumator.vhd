library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sumator is
generic (n : natural);
Port (
        A : in std_logic_vector (n-1 downto 0);
        Bc2 : in std_logic_vector (n-1 downto 0);
        Tin : in std_logic;
        Sum : out std_logic_vector (n-1 downto 0);
        Tout : out std_logic;
        OVF : out std_logic;
        SignA: out std_logic
);
end sumator;

architecture Behavioral of sumator is
signal T : std_logic_vector (n downto 0);
signal S,B_xor,SS: std_logic_vector (n-1 downto 0):=(others=>'0');
signal Semn: std_logic;
begin
SS<=A; 
xor_gate: for i in 0 to n-1 generate
    B_xor(i) <= '1' xor Bc2(i);
end generate;

T(0) <= Tin;
gen1:for i in 0 to n-1 generate
        S(i) <= A(i) xor B_xor(i) xor T(i);
        T(i+1) <= (A(i) and B_xor(i)) or ((A(i) or B_xor(i)) and T(i));
end generate;


Semn <= S(n-1) OR BC2(n-1);
Tout <= T(n) when Semn='0' else '0' ;
OVF <= (T(n) xor T(n-1)) when Semn='0' else '0';
Sum <= SS when Semn='1' else S;
SignA <= S(n-1);
end Behavioral;
