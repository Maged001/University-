library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity memory is
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
end memory;

architecture rtl of memory is

type ram_array is array (0 to 63) of std_logic_vector (7 downto 0);
signal ram_data: ram_array :=(

 "00101000",   -- M[0] 
 "11000000",
 "00000000",
 "00000011",	-- la R[3],c2			  c2<=3 
 
 "00101001",
 "00000000",
 "00000000",
 "00000011",	-- la R[4],c2			  c2<=3
 
 "01100001",
 "01001000",
 "00110000",
 "00000000",	-- add R[5],R[4],R[3]  R[5] <= R[4] + R[3] && R5 <= 3 + 3 = 6 
 
 "00011001",
 "01000000",
 "00000000",
 "00111100",	-- st R[5],c2			  c2<=60  && M[60] <= 6
 
 "00000000",
 "00000000",
 "00000000",
 "00000000", 
 "00000000",
 "00000000",
 "00000000",
 "00000000",
 "00000000",
 "00000000",
 "00000000",
 "00000000",
 "00000000",
 "00000000", 
 "00000000",
 "00000000",
 "00000000",
 "00000000",
 "00000000",
 "00000000",
 "00000000",
 "00000000",
 "00000000",
 "00000000", 
 "00000000",
 "00000000",
 "00000000",
 "00000000",
 "00000000",
 "00000000",
 "00000000",
 "00000000",
 "00000000",
 "00000000", 
 "00000000",
 "00000000",
 "00000000",
 "00000000",
 "00000000",
 "00000000",
 "00000000",
 "00000000",
 "00000000",
 "00000000",
 
 "00000000",
 "00000000",
 "00000000",
 "00000000" 
); 
	
signal ma_integer: integer range 0 to 65;

begin

ma_integer <= CONV_INTEGER(ma); 

process(clock,reset,r,w)
begin  
if(rising_edge(clock)) then
	if reset = '1' then 
		md <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
		done   <= '0';
		md_read  <= '0';
		md_write <= '0';
	elsif(w ='1') then
			ram_data(ma_integer  ) <= md(31 downto 24);
			ram_data(ma_integer+1) <= md(23 downto 16);
			ram_data(ma_integer+2) <= md(15 downto  8);
			ram_data(ma_integer+3) <= md(7  downto  0);
			
			done <= '1';
		
	elsif(r ='1') then
			md(31 downto 24) <= ram_data(ma_integer  );
			md(23 downto 16) <= ram_data(ma_integer+1);
			md(15 downto  8) <= ram_data(ma_integer+2);
			md(7  downto  0) <= ram_data(ma_integer+3);
			
			done <= '1';
		end if;
end if;
  done <= r or w;
  md_read <= r;
  md_write <= w;
end process;

 
end rtl;