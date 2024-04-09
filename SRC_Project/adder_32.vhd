library ieee;
use ieee.std_logic_1164.all;

entity adder_32 is
  port (
    a     : in  std_logic_vector(31 downto 0);  
    b     : in  std_logic_vector(31 downto 0); 
    c_in  : in  std_logic;              
    s     : out std_logic_vector(31 downto 0);
	 c_out: out std_logic	 
    );
end adder_32;

architecture rtl of adder_32 is

component fullAdder_struct is 
port 
(	a: 	 in  std_logic;
	b:		 in  std_logic;
	c_in:  in  std_logic;
	s:		 out std_logic;
	c_out: out std_logic
);
end component;

  signal c_32 : std_logic_vector(32 downto 0);
  
begin
  c_32(0) <= c_in;
 Y : for i IN 0 to 31 generate
  full32 : fullAdder_struct port map (a(i), b(i) ,c_32(i) , s(i) , c_32(i+1) );
end generate;
 c_out <=c_32(32);
end rtl;
