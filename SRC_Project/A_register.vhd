library ieee;
use ieee.std_logic_1164.all;

entity A_register is
  port (
    clock : in  std_logic;              
    reset : in  std_logic;              
    d     : in  std_logic_vector(31 downto 0);  
    q     : out std_logic_vector(31 downto 0);  
    load  : in  std_logic               
    );
end A_register;


architecture rtl of A_register is

  component D_Flip_Flop_load_32
    port (
      clock : in  std_logic;
      reset : in  std_logic;
      d     : in  std_logic_vector(31 downto 0);
      q     : out std_logic_vector(31 downto 0);
      load  : in  std_logic
      );
  end component;
begin  

A_R : D_Flip_Flop_load_32 port map(clock ,reset,d ,q, load);

end rtl;