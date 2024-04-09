library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter_4bit_L is 
port (
 clk:     in std_logic;
 reset:   in std_logic;
 en:      in std_logic;
 load:    in std_logic; 
 count_in:in std_logic_vector(3 downto 0);
 Count:   out std_logic_vector(3 downto 0)
);
end counter_4bit_L;

architecture rtl of counter_4bit_L is 

signal count_i: integer range 0 to 15:=0;
 
begin 

process (clk,reset,load,count_in)
begin 
	if clk'event and clk='1' then
		if reset ='1' then 
		count_i <= 0;
		elsif load = '1' then
		count_i <= to_integer(unsigned(count_in));
		elsif en = '1' then 
			if count_i = 15 then
				count_i <= 0;
			else 	
			count_i <= count_i + 1;
			end if ;
	end if;
end if; 
end process ;

count <= std_logic_vector(to_unsigned(count_i,4));

end rtl;