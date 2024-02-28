library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity rounding is
 Port ( 
  Enable : in std_logic;
  RestAfterDivide : in std_logic_vector (23 downto 0);     
  QuotientAfterDivide : in std_logic_vector (23 downto 0);
  Quotient: out std_logic_vector (23 downto 0)
 );
end rounding;

architecture Behavioral of rounding is
begin

process(Enable)
begin
 if(Enable = '1') then 
      if(RestAfterDivide >= "011111111111111111111111") then 
          Quotient <= QuotientAfterDivide + "000000000000000000000001";
      else  
          Quotient<= QuotientAfterDivide;
      end if;
    end if;
end process;

end Behavioral;
