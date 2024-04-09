library ieee;
use ieee.std_logic_1164.all;

entity R_shift is
    port (
      B          : in  std_logic_vector(31 downto 0);  
      C          : out std_logic_vector(31 downto 0);  
      ArthM		  : in  std_logic;       
      Rshift     : in  std_logic        
      );
end R_shift;

architecture rtl of R_shift is

component Buffer_32 is
  port (
    input  : in  std_logic_vector(31 downto 0);  
    output : out std_logic_vector(31 downto 0);  
    enable : in  std_logic              
    );
end component;

  signal Eout : std_logic;
  signal shift : std_logic_vector(31 downto 0);
begin 

  Eout <= ArthM or Rshift;

  shift <= (B(31) and ArthM) & B(31 downto 1);

  shift_buff : Buffer_32 port map ( shift, C, Eout );

end rtl;
