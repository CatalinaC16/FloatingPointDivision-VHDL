library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity divider is
    generic(n : natural:=48);
    Port ( Clk : in std_logic;
           Rst : in std_logic;
           Start : in std_logic;
           ManA : in std_logic_vector (n-1 downto 0);
           ManB : in std_logic_vector (n-1 downto 0);
           A : out std_logic_vector (n-1 downto 0);
           Q : out std_logic_vector (n-1 downto 0);
           isException : out std_logic;
           Term: out std_logic
         );
end divider;

architecture Behavioral of divider is
signal SignA,ShQB,SubB,LoadA,LoadB,LoadQ,Tout,OVF, isSumDone,Semn,LoadQ_lastBit,Sgn: std_logic:='0';
signal sumaMan,RegA,RegQ,RegB,mannB,mannA: std_logic_vector(2*n-1 downto 0);
signal isDividingDone : std_logic:='0';
signal zeroVector : std_logic_vector(n-1 downto 0) := (others => '0');
begin
uc: entity work.UC_divider generic map(n=> n)
    port map(Clk,Rst,Start,SignA,ShQB,SubB,isDividingDone,LoadA,LoadB,LoadQ,isSumDone,LoadQ_lastBit);
     
suma: entity work.sumator generic map(n=>2*n)
    port map(RegA,RegB,SubB,sumaMan,Tout,OVF,SignA);

mannA(n-1 downto 0) <= ManA when LoadA ='1';
mannA(mannA'high downto mannA'high - (n-1))<= (others=>'0') when LoadA ='1';
regDepl1: entity work.reg_depl_stg generic map(n => 2*n)
    port map(Clk,Rst,mannA,sumaMan,'0',LoadA,SubB,'0',RegA);

Sgn<= not SignA;
bist: entity work.bistabil port map(Clk,Rst,LoadQ_lastBit,Sgn,Semn);

regDepl2: entity work.reg_depl_stg generic map(n => 2*n)
    port map(Clk,Rst,sumaMan,sumaMan,Semn,'0',LoadQ,isSumDone,RegQ);
    
mannB(mannB'high downto mannB'high - (n-1)) <= ManB when LoadB ='1';
mannB(n-1 downto 0) <= (others=>'0') when LoadB ='1';
regDepl3: entity work.reg_depl_dr generic map(n=>2*n)
    port map(Clk,Rst,mannB,'0',LoadB,isSumDone,RegB);

process(Clk, isDividingDone)
begin 
    if(rising_edge(Clk)) then 
         if( isDividingDone='1') then 
            Term<= '1';
            if (RegQ(n-1 downto 0) = zeroVector) then 
                A <= ManA;            
            else
                A <= RegA(n-1 downto 0);
            end if;
         else
            Term <= '0';
            A <= RegA(n-1 downto 0);
        end if; 
     end if; 
    
    isException<='0';
    Q <= RegQ(n-1 downto 0);
end process; 

end Behavioral;
