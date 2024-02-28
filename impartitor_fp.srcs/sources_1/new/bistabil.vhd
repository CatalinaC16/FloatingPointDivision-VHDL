library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bistabil is
  Port (
        Clk : in std_logic;
        Rst : in std_logic;
        CE  : in std_logic;
        D   : in std_logic;
        Q   : out std_logic);
end bistabil;

architecture Behavioral of bistabil is
signal Qout: std_logic:='0';
begin

process(Clk, CE, Rst)
begin
 if rising_edge(Clk) then
        if (Rst = '1') then
            Qout <= '0';
        elsif (CE = '1') then
            Qout <= D;
        else
            Qout <= Qout;
        end if;
    end if;

end process;

Q<= Qout;

end Behavioral;
