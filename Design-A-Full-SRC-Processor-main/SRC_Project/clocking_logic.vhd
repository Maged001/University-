library IEEE;
use IEEE.std_logic_1164.all;

entity clocking_logic is
  port (
    clock    : in  std_logic;           
    start    : in  std_logic;          
    reset    : in  std_logic;          
    stop     : in  std_logic;           
    cpu_wait : in  std_logic;          
    done     : in  std_logic;          
    enable   : out std_logic;        
    read_m   : in  std_logic;           
    write_m  : in  std_logic;         
    r        : out std_logic;         
    w        : out std_logic           
    );
end clocking_logic;

architecture rtl of clocking_logic is

  component D_Flip_Flop
    port (
      clock : in  std_logic;
      reset : in  std_logic;
      d     : in  std_logic;
      q     : out std_logic
      );
  end component;

  component JK_Flip_Flop
    port (
      clock : in  std_logic;
      reset : in  std_logic;
      j     : in  std_logic;
      k     : in  std_logic;
      q     : out std_logic
      );
  end component;

  signal run       : std_logic;
  signal sdone     : std_logic;
  signal or_gate_1 : std_logic;
  signal or_gate_2 : std_logic;
  signal temp_r    : std_logic;
  signal temp_w    : std_logic;
  signal d_r       : std_logic;
  signal d_w       : std_logic;
  signal q_r       : std_logic;
  signal q_w       : std_logic;
  
begin 

  jk0  : JK_Flip_Flop port map ( clock, reset, start, stop, run );
  jk1  : JK_Flip_Flop port map ( clock, reset, read_m, sdone, temp_r );
  jk2  : JK_Flip_Flop port map ( clock, reset, write_m, sdone, temp_w );

  dff0 : D_Flip_Flop  port map ( clock, reset, done, sdone );

  enable    <= run and or_gate_2;
  or_gate_2 <= sdone or (not cpu_wait) or (not or_gate_1);
  or_gate_1 <= temp_r or temp_w;
  
  r <= temp_r;                          
  w <= temp_w;    
  
end rtl;
