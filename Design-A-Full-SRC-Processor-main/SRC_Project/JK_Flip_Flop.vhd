library ieee;
use ieee.std_logic_1164.all;

entity JK_Flip_Flop is
  port (
    clock : in  std_logic;              
    reset : in  std_logic;              
    j     : in  std_logic;              
    k     : in  std_logic;              
    q     : out std_logic               
    );
end JK_Flip_Flop;

architecture rtl of JK_Flip_Flop is

  signal temp : std_logic := '0';
begin  

process (clock, reset, j, k)
begin 
    if reset = '1' then
      q    <= '0';
      temp <= '0';
    elsif rising_edge(clock) then
      if( (j = '0') and (k = '1') ) then
        q    <= '0';
        temp <= '0';
      elsif( (j = '1') and (k = '0') ) then
           q <= '1';
        temp <= '1';
      elsif( (j = '1') and (k = '1') ) then
        q    <= not temp;
        temp <= not temp;
      end if;
    end if;
end process;

end rtl;
