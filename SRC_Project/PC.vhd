library ieee;
use ieee.std_logic_1164.all;

entity PC is
  port (
    clock   : in    std_logic;         
    reset   : in    std_logic;          
    d_bus   : inout std_logic_vector(31 downto 0);  
    PCin    : in    std_logic;            
    PCout   : in    std_logic            
);
end PC;

architecture rtl of PC is

  component D_Flip_Flop_load_32 is
  port (
    clock : in  std_logic;          
    reset : in  std_logic;            
    d     : in  std_logic_vector(31 downto 0); 
    q     : out std_logic_vector(31 downto 0); 
    load  : in  std_logic             
	);
  end component;

  component Buffer_32 is
  port (
    input  : in  std_logic_vector(31 downto 0);  
    output : out std_logic_vector(31 downto 0); 
    enable : in  std_logic             
    );
  end component;

  
  signal dff_out : std_logic_vector(31 downto 0);
  
begin

  dff:  D_Flip_Flop_load_32 port map (clock,   reset, d_bus, dff_out, PCin);
  buf:  Buffer_32 			 port map (dff_out, d_bus, PCout);

end rtl;
