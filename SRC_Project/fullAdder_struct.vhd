library ieee;
use ieee.std_logic_1164.all;

entity fullAdder_struct is 
port 
(	a: 	 in  std_logic;
	b:		 in  std_logic;
	c_in:  in  std_logic;
	s:		 out std_logic;
	c_out: out std_logic
);
end fullAdder_struct;

architecture rtl of fullAdder_struct is 

signal sig_1, sig_2, sig_3: std_logic:= '0';

component half_adder 
port 
(  a: in std_logic;
	b: in std_logic;
	s: out std_logic;
	c: out std_logic
);
end component;

begin 

first_HA : half_adder port map (a, b, sig_1, sig_2); 

 
second_HA : half_adder port map (sig_1, c_in, s, c=>sig_3);

c_out <= sig_2 or sig_3;

end rtl;