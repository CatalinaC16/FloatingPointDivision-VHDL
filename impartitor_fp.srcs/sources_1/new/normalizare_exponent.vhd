library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use ieee.STD_LOGIC_signed.all;

entity normalizare_exponent is
  Port (
   Enable : in std_logic;
   Exponent : in std_logic_vector (7 downto 0);
   NrPozShift: in integer;
   ExponentNorm: out std_logic_vector (7 downto 0);
   isExceptionUnderflow: out std_logic
   );
end normalizare_exponent;

architecture Behavioral of normalizare_exponent is

begin
process(Enable) begin
    if(Enable = '1') then 
        if(NrPozShift = 0) then 
                ExponentNorm <= Exponent;
        elsif(NrPozShift > 0) then 
            if((to_integer(signed(Exponent)) - NrPozShift) < -127) then 
                ExponentNorm <= std_logic_vector(signed(Exponent) - to_signed(NrPozShift,Exponent'length));
                isExceptionUnderflow <= '1';
            else
                ExponentNorm <= std_logic_vector(signed(Exponent) - to_signed(NrPozShift,Exponent'length));
                isExceptionUnderflow <= '0';  
            end if;    
        end if;
    end if;
end process;

end Behavioral;
