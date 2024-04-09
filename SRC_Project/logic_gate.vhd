library ieee;
use ieee.std_logic_1164.all;

entity logic_gate is
  port (
    a           : in  std_logic_vector(31 downto 0);  
    b           : in  std_logic_vector(31 downto 0);  
    c           : out std_logic_vector(31 downto 0);  
    OP_or  		 : in  std_logic;       
    OP_and		 : in  std_logic         
    );
end logic_gate;

architecture rtl of logic_gate is

  component Buffer_32
    port (
      input  : in  std_logic_vector(31 downto 0);
      output : out std_logic_vector(31 downto 0);
      enable : in  std_logic
      );
  end component;

  signal temp : std_logic_vector(31 downto 0);
  signal E  : std_logic;
  
begin  

	process (a , b , OP_or, OP_and)
   begin  
    for i in 0 to 31 loop
      temp(i) <= (OP_or and (a(i) or b(i))) or (OP_and and (a(i) and b(i)));
    end loop;
  end process ;

  E <= OP_or or OP_and;

   or_and: Buffer_32 port map ( temp, c, E );
  
end rtl;
