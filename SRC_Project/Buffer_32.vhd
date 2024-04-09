library ieee;
use ieee.std_logic_1164.all;

entity Buffer_32 is
  port (
    input  : in  std_logic_vector(31 downto 0);  
    output : out std_logic_vector(31 downto 0);  
    enable : in  std_logic              
    );
end Buffer_32;

architecture rtl of Buffer_32 is

  component Buffer_C
    port (
      input  : in  std_logic;
      output : out std_logic;
      enable : in  std_logic
      );
  end component;
begin  

c: for i IN 0 to 31 generate
  buf32 : Buffer_C port map (input(i),output(i), enable);
end generate;

end rtl;
