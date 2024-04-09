library ieee;
use ieee.std_logic_1164.all;

entity condition is
  port (
    clock   : in  std_logic;            
    reset   : in  std_logic;           
    cpu_bus : in  std_logic_vector(31 downto 0); 
    c3      : in  std_logic_vector(2 downto 0);  
    con_in  : in  std_logic;           
    con     : out std_logic           
    );
end condition;


architecture rtl of condition is

  component D_Flip_Flop_Load
    port (
      clock : in  std_logic;
      reset : in  std_logic;
      d     : in  std_logic;
      q     : out std_logic;
      load  : in  std_logic
      );
  end component;
  
component decoder_3to8 is
  port (
    input  : in  std_logic_vector(2  downto 0);           
    output : out std_logic_vector(7 downto 0)               
    );
end component;

  signal always    : std_logic;
  signal zero_chack: std_logic;
  signal zero      : std_logic;
  signal not_zero  : std_logic;
  signal postive   : std_logic;
  signal neg       : std_logic;
  
  signal decoder_out : std_logic_vector(7 downto 0);
  
  signal or_gate: std_logic;
  
begin

dec     : decoder_3to8     port map (c3,    decoder_out);

always 	  <=  decoder_out(1);
zero_chack <=  not( cpu_bus(0)     or cpu_bus(1)  or cpu_bus(2)  or cpu_bus(3)
                    or cpu_bus(4)  or cpu_bus(5)  or cpu_bus(6)  or cpu_bus(7)
                    or cpu_bus(8)  or cpu_bus(9)  or cpu_bus(10) or cpu_bus(11)
                    or cpu_bus(12) or cpu_bus(13) or cpu_bus(14) or cpu_bus(15)
                    or cpu_bus(16) or cpu_bus(17) or cpu_bus(18) or cpu_bus(19)
                    or cpu_bus(20) or cpu_bus(21) or cpu_bus(22) or cpu_bus(23)
                    or cpu_bus(24) or cpu_bus(25) or cpu_bus(26) or cpu_bus(27)
                    or cpu_bus(28) or cpu_bus(29) or cpu_bus(30) or cpu_bus(31)
                   );
zero       <= decoder_out(2) and zero_chack;
not_zero   <= decoder_out(3) and (not zero_chack);
postive    <= decoder_out(4) and (not cpu_bus(31));
neg        <= decoder_out(5) and cpu_bus(31);

or_gate <= always or zero or not_zero or postive or neg;
 
dff_con : D_Flip_Flop_Load port map (clock, reset, or_gate, con, con_in);
  
end rtl;
