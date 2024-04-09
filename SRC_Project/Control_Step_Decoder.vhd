library ieee;
use ieee.std_logic_1164.all;

entity Control_Step_Decoder is
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
end Control_Step_Decoder;

architecture rtl of Control_Step_Decoder is
  
begin  

process (input)
begin
case input is
	when "0000" =>
		T0out <= '1';T1out <= '0';T2out <= '0';T3out <= '0';
		T4out <= '0';T5out <= '0';T6out <= '0';T7out <= '0';
		
	when "0001" =>
		T0out <= '0';T1out <= '1';T2out <= '0';T3out <= '0';
		T4out <= '0';T5out <= '0';T6out <= '0';T7out <= '0';

	when "0010" =>
		T0out <= '0';T1out <= '0';T2out <= '1';T3out <= '0';
		T4out <= '0';T5out <= '0';T6out <= '0';T7out <= '0';
		
   when "0011" =>
		T0out <= '0';T1out <= '0';T2out <= '0';T3out <= '1';
		T4out <= '0';T5out <= '0';T6out <= '0';T7out <= '0';
		
   when "0100" =>
		T0out <= '0';T1out <= '0';T2out <= '0';T3out <= '0';
		T4out <= '1';T5out <= '0';T6out <= '0';T7out <= '0';
		
	when "0101" =>
		T0out <= '0';T1out <= '0';T2out <= '0';T3out <= '0';
		T4out <= '0';T5out <= '1';T6out <= '0';T7out <= '0';
		
	when "0110" =>
		T0out <= '0';T1out <= '0';T2out <= '0';T3out <= '0';
		T4out <= '0';T5out <= '0';T6out <= '1';T7out <= '0';
		
	when "0111" =>
		T0out <= '0';T1out <= '0';T2out <= '0';T3out <= '0';
		T4out <= '0';T5out <= '0';T6out <= '0';T7out <= '1';
		
	when others =>
		T0out <= '-';T1out <= '-';T2out <= '-';T3out <= '-';
		T4out <= '-';T5out <= '-';T6out <= '-';T7out <= '-'; 
	end case;
end process;

end rtl;
