library ieee;
use ieee.std_logic_1164.all;

entity step_generator is
  port (
    clock    : in  std_logic;           
    enable   : in  std_logic;           
    end_inst : in  std_logic;           
    goto6    : in  std_logic;           
    T0out 	 : out std_logic;
	 T1out 	 : out std_logic;
	 T2out 	 : out std_logic;
	 T3out 	 : out std_logic;
	 T4out    : out std_logic;
	 T5out 	 : out std_logic;
	 T6out 	 : out std_logic;
	 T7out 	 : out std_logic
    );
end step_generator;

architecture rtl of step_generator is

  component Control_Step_Decoder
    port (
		input : in  std_logic_vector(3 downto 0);
		T0out : out std_logic;
		T1out : out std_logic;
		T2out : out std_logic;
		T3out : out std_logic;
		T4out : out std_logic;
		T5out : out std_logic;
		T6out : out std_logic;
		T7out : out std_logic
      );
  end component;
 
 component counter_4bit_L is 
	port (
	  clk:     in std_logic;
	  reset:   in std_logic;
	  en:      in std_logic;
	  load:    in std_logic; 
	  Count_in:in std_logic_vector(3 downto 0);
	  Count:   out std_logic_vector(3 downto 0)
);
end component;
  
  signal sig_load    : std_logic:= '0';  
  signal Counter_to_decoder: std_logic_vector(3 downto 0);
  signal sig_counter_in: std_logic_vector(3 downto 0);
    
begin 

process(goto6) 
begin 

if goto6 = '1' then
	sig_load <= '1';
	sig_counter_in <= "0110";
else 
	sig_load <='0'; 
end if;

end process;

con: counter_4bit_L port map (clock, end_inst,enable ,sig_load ,sig_counter_in, Counter_to_decoder) ;
 
dec: Control_Step_Decoder port map (Counter_to_decoder, T0out, T1out, T2out, T3out, T4out , T5out , T6out , T7out);
  
end rtl;
