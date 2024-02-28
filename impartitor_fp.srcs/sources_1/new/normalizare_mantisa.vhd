library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity normalizare_mantisa is
        Port (
           Enable : in std_logic;
           ExpA : in std_logic_vector (7 downto 0);
           ExpB : in std_logic_vector (7 downto 0);
           ManA : in std_logic_vector (22 downto 0);
           ManB : in std_logic_vector (22 downto 0);
           MantisaAfterDivide : in std_logic_vector (23 downto 0);
           RestAfterDivide : in std_logic_vector (23 downto 0);
           NoNormalization: in std_logic;
           NrPozShift: out integer;
           MantisaNormalizata: out std_logic_vector (23 downto 0)
             );
end normalizare_mantisa;

architecture Behavioral of normalizare_mantisa is

function count_zeros(mantisa : std_logic_vector) return integer is
variable nr : integer := 1;
begin
    for i in 23 downto 0 loop
        if (mantisa(i) = '0') then
            nr := nr + 1;
        else
           exit;
        end if;
    end loop;
return nr;
end function count_zeros;

begin

cateZerouri: process(Enable)
begin  
  if(Enable = '1') then 
    if(NoNormalization = '1') then 
      if(ExpB = "00000000" and ManB = "000000000000000000000000"
        and ExpA = "00000000" and ManA = "000000000000000000000000") then
          MantisaNormalizata <= "111111111111111111111111";
       elsif((ExpB = "00000000" and ManB = "000000000000000000000000") or ExpB = "00000000") then 
          MantisaNormalizata <= "000000000000000000000000";
       else
          MantisaNormalizata <= MantisaAfterDivide;
       end if;
       NrPozShift <= 0;
    else
         if(ExpB = "00000000" and ManB = "000000000000000000000000"
            and ExpA = "00000000" and ManA = "000000000000000000000000") then
                  NrPozShift <= 0;
                  MantisaNormalizata <= "111111111111111111111111";
         elsif(ExpB = "00000000" and ManB = "000000000000000000000000") then 
                  NrPozShift <= 0;
                  MantisaNormalizata <= "000000000000000000000000";
         else
                if(MantisaAfterDivide="000000000000000000000000") then
                  NrPozShift <= 0;
                  MantisaNormalizata <= MantisaAfterDivide;
                else        
                  NrPozShift <= count_zeros(MantisaAfterDivide);
                  MantisaNormalizata <= std_logic_vector(unsigned(MantisaAfterDivide) sll (count_zeros(MantisaAfterDivide)));
                end if;
          end if;
    end if;  
  end if;  
end process;

end Behavioral;
