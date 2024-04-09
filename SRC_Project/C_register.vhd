library ieee;
use ieee.std_logic_1164.all;

entity C_register is
  port (
    clock   : in  std_logic;           
    reset   : in  std_logic;           
    d       : in  std_logic_vector(31 downto 0);  
    out_bus : out std_logic_vector(31 downto 0);  
    load    : in  std_logic;            
    E      : in  std_logic             
    );
end C_register;


architecture rtl of C_register is
  component D_Flip_Flop_load_32
    port (
      clock : in  std_logic;
      reset : in  std_logic;
      d     : in  std_logic_vector(31 downto 0);
      q     : out std_logic_vector(31 downto 0);
      load  : in  std_logic
      );
  end component;
  
  component Buffer_32
    port (
      input  : in  std_logic_vector(31 downto 0);
      output : out std_logic_vector(31 downto 0);
      enable : in  std_logic
      );
  end component;
  
  signal S_out : std_logic_vector(31 downto 0);
  
begin  

  DFF1 : D_Flip_Flop_load_32 port map ( clock, reset, d, S_out, load );
  BF1 : Buffer_32 port map ( S_out, out_bus, E );

end rtl;
