library ieee;
use ieee.std_logic_1164.all;

entity D_Flip_Flop_Load is
  port (
    clock : in  std_logic;            
    reset : in  std_logic;              
    d     : in  std_logic;             
    q     : out std_logic;            
    load  : in  std_logic               
    );
end D_Flip_Flop_Load;


architecture rtl of D_Flip_Flop_Load is

  component D_Flip_Flop
    port (
      clock : in  std_logic;
      reset : in  std_logic;
      d     : in  std_logic;
      q     : out std_logic
      );
  end component;

  signal d_input  : std_logic;
  signal q_output : std_logic;
  
begin  

  d_input <= (load and d) or ((not load) and q_output);
  dff0 : D_Flip_Flop port map ( clock, reset, d_input, q_output );
  q <= q_output;

end rtl;
