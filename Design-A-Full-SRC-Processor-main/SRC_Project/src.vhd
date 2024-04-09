library ieee;
use ieee.std_logic_1164.all;

entity src is
  port (
	 MASTER_CLOCK    : in    std_logic;
    MASTER_RESET	  : in    std_logic;
	 MASTER_START	  : in 	 std_logic
);
end src;

architecture rtl of src is
  component CPU
    port (
      master_clock : in    std_logic;
      start        : in    std_logic;
      reset        : in    std_logic;
      done         : in    std_logic;
      md_read      : in    std_logic;
      md_write     : in    std_logic;
      r            : out   std_logic;
      w            : out   std_logic;
      ma           : out   std_logic_vector(31 downto 0);
      md           : inout std_logic_vector(31 downto 0)
      );
  end component;
  
  component memory
    port (
       clock    : in    std_logic;
		 reset    : in    std_logic;        
		 done   	 : out   std_logic;         
		 md_read  : out   std_logic;         
		 md_write : out   std_logic;         
		 r        : in    std_logic;         
		 w        : in    std_logic;         
		 ma       : in    std_logic_vector(31 downto 0);
		 md       : inout std_logic_vector(31 downto 0)
      );
  end component;
  
  signal done       	 : std_logic;
  signal md_read      : std_logic;
  signal md_write     : std_logic;
  signal r            : std_logic;
  signal w            : std_logic;
  signal ma           : std_logic_vector(31 downto 0);
  signal md           : std_logic_vector(31 downto 0);
begin  

  cpunit : cpu port map ( MASTER_CLOCK, MASTER_START, MASTER_RESET, done, md_read,
                          md_write, r, w, ma, md );
  mem : memory port map ( MASTER_CLOCK, MASTER_RESET, done, md_read, md_write, r, w, ma, md );

end rtl;
