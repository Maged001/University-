library ieee;
use ieee.std_logic_1164.all;

entity Buffer_C is
  port (
    input  : in  std_logic;          
    output : out std_logic;           
    enable : in  std_logic            
    );
end Buffer_C;

architecture rtl of Buffer_C is

begin  

process( input, enable ) is
  begin
    if enable = '1' then
      output <= input;
    else
      output <= 'Z';
	end if;
	end process;
end rtl;