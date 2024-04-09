library ieee;
use ieee.std_logic_1164.all;

entity memory_interface is
  port(
    clock    : in    std_logic;        
    reset    : in    std_logic;         
    cpu_bus  : inout std_logic_vector(31 downto 0);  
    ma       : out   std_logic_vector(31 downto 0);  
    md       : inout std_logic_vector(31 downto 0);  
    ma_in    : in    std_logic;         
    md_bus   : in    std_logic;        
    md_read  : in    std_logic;         
    md_write : in    std_logic;         
    md_out   : in    std_logic         
    );
end memory_interface;

architecture memory_interface_arch of memory_interface is

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

  signal or_gate : std_logic_vector(31 downto 0);
  signal MD_rig_out : std_logic_vector(31 downto 0);
  signal md_in : std_logic;
  
begin  

process (cpu_bus, md, md_bus, md_read)
  begin 
    for i in 0 to 31 loop
      or_gate(i) <= (cpu_bus(i) and md_bus) or (md(i) and md_read);
    end loop;
end process;

md_in <= md_bus or md_read;

MD_register : D_Flip_Flop_load_32 port map ( clock, reset, or_gate, MD_rig_out, md_in );

buf0 			: Buffer_32 port map ( MD_rig_out, cpu_bus, md_out );
buf1 			: Buffer_32 port map ( MD_rig_out, md, md_write );

MA_register : D_Flip_Flop_load_32 port map ( clock, reset, cpu_bus, ma, ma_in );

end memory_interface_arch;











