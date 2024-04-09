library ieee;
use ieee.std_logic_1164.all;

entity op_code_decoder is
  port (
   input    : in  std_logic_vector(4 downto 0);  
   AddInst 	: out std_logic;
	AddiInst : out std_logic;
	SubInst 	: out std_logic;
	AndInst 	: out std_logic;
	AndiInst : out std_logic;
	OrInst 	: out std_logic;
	OriInst  : out std_logic;
	notInst	: out std_logic;
	negInst  : out std_logic;
	SHRInst 	: out std_logic;
	SHRAInst : out std_logic;
	SHLInst  : out std_logic;
	SHCInst  : out std_logic;
	BrInst	: out std_logic;
	BrlInst	: out std_logic;
	ldInst	: out std_logic;
	ldrInst	: out std_logic;
	stInst	: out std_logic;
	strInst	: out std_logic;
	laInst	: out std_logic;
	larInst	: out std_logic;
	stopInst : out std_logic
	);
end op_code_decoder;

architecture rtl of op_code_decoder is
begin


process (input)
begin
case input is
	when "00001" =>
	AddInst  <= '0'; AddiInst <= '0'; SubInst  <= '0'; AndInst <= '0';
	AndiInst <= '0'; OrInst   <= '0'; OriInst  <= '0'; notInst <= '0';
	negInst  <= '0'; SHRInst  <= '0'; SHRAInst <= '0';	SHLInst <= '0';
	SHCInst  <= '0'; BrInst	  <= '0'; BrlInst  <= '0'; ldInst  <= '1';
	ldrInst	<= '0'; stInst	  <= '0'; strInst  <= '0'; laInst  <= '0'; 
	larInst  <= '0'; stopInst <= '0';
		
	when "00010" =>
	AddInst  <= '0'; AddiInst <= '0'; SubInst  <= '0'; AndInst <= '0';
	AndiInst <= '0'; OrInst   <= '0'; OriInst  <= '0'; notInst <= '0';
	negInst  <= '0'; SHRInst  <= '0'; SHRAInst <= '0';	SHLInst <= '0';
	SHCInst  <= '0'; BrInst	  <= '0'; BrlInst  <= '0'; ldInst  <= '0';
	ldrInst	<= '1'; stInst	  <= '0'; strInst  <= '0'; laInst  <= '0';
	larInst  <= '0'; stopInst <= '0';

	when "00011" =>
	AddInst  <= '0'; AddiInst <= '0'; SubInst  <= '0'; AndInst <= '0';
	AndiInst <= '0'; OrInst   <= '0'; OriInst  <= '0'; notInst <= '0';
	negInst  <= '0'; SHRInst  <= '0'; SHRAInst <= '0';	SHLInst <= '0';
	SHCInst  <= '0'; BrInst	  <= '0'; BrlInst  <= '0'; ldInst  <= '0';
	ldrInst	<= '0'; stInst	  <= '1'; strInst  <= '0'; laInst  <= '0';
	larInst  <= '0'; stopInst <= '0';
	
   when "00100" =>
	AddInst  <= '0'; AddiInst <= '0'; SubInst  <= '0'; AndInst <= '0';
	AndiInst <= '0'; OrInst   <= '0'; OriInst  <= '0'; notInst <= '0';
	negInst  <= '0'; SHRInst  <= '1'; SHRAInst <= '0';	SHLInst <= '0';
	SHCInst  <= '0'; BrInst	  <= '0'; BrlInst  <= '0'; ldInst  <= '0';
	ldrInst	<= '0'; stInst	  <= '0'; strInst  <= '0'; laInst  <= '0';
	larInst  <= '0'; stopInst <= '0';
	
   when "00101" =>
	AddInst  <= '0'; AddiInst <= '0'; SubInst  <= '0'; AndInst <= '0';
	AndiInst <= '0'; OrInst   <= '0'; OriInst  <= '0'; notInst <= '0';
	negInst  <= '0'; SHRInst  <= '0'; SHRAInst <= '0';	SHLInst <= '0';
	SHCInst  <= '0'; BrInst	  <= '0'; BrlInst  <= '0'; ldInst  <= '0';
	ldrInst	<= '0'; stInst	  <= '0'; strInst  <= '0'; laInst  <= '1';
	larInst  <= '0'; stopInst <= '0';
	
	when "00110" =>
	AddInst  <= '0'; AddiInst <= '0'; SubInst  <= '0'; AndInst <= '0';
	AndiInst <= '0'; OrInst   <= '0'; OriInst  <= '0'; notInst <= '0';
	negInst  <= '0'; SHRInst  <= '0'; SHRAInst <= '0';	SHLInst <= '0';
	SHCInst  <= '0'; BrInst	  <= '0'; BrlInst  <= '0'; ldInst  <= '0';
	ldrInst	<= '0'; stInst	  <= '0'; strInst  <= '0'; laInst  <= '0';
	larInst  <= '1'; stopInst <= '0';
	
	when "01000" =>
	AddInst  <= '0'; AddiInst <= '0'; SubInst  <= '0'; AndInst <= '0';
	AndiInst <= '0'; OrInst   <= '0'; OriInst  <= '0'; notInst <= '0';
	negInst  <= '0'; SHRInst  <= '0'; SHRAInst <= '0';	SHLInst <= '0';
	SHCInst  <= '0'; BrInst	  <= '1'; BrlInst  <= '0'; ldInst  <= '0';
	ldrInst	<= '0'; stInst	  <= '0'; strInst  <= '0'; laInst  <= '0';
	larInst  <= '0'; stopInst <= '0';
		
	when "01001" =>
	AddInst  <= '0'; AddiInst <= '0'; SubInst  <= '0'; AndInst <= '0';
	AndiInst <= '0'; OrInst   <= '0'; OriInst  <= '0'; notInst <= '0';
	negInst  <= '0'; SHRInst  <= '0'; SHRAInst <= '0';	SHLInst <= '0';
	SHCInst  <= '0'; BrInst	  <= '0'; BrlInst  <= '1'; ldInst  <= '0';
	ldrInst	<= '0'; stInst	  <= '0'; strInst  <= '0'; laInst  <= '0';
	larInst  <= '0'; stopInst <= '0';
		
	when "01100" =>
	AddInst  <= '1'; AddiInst <= '0'; SubInst  <= '0'; AndInst <= '0';
	AndiInst <= '0'; OrInst   <= '0'; OriInst  <= '0'; notInst <= '0';
	negInst  <= '0'; SHRInst  <= '0'; SHRAInst <= '0';	SHLInst <= '0';
	SHCInst  <= '0'; BrInst	  <= '0'; BrlInst  <= '0'; ldInst  <= '0';
	ldrInst	<= '0'; stInst	  <= '0'; strInst  <= '0'; laInst  <= '0';
	larInst  <= '0'; stopInst <= '0';
	
	when "01101" =>
	AddInst  <= '0'; AddiInst <= '1'; SubInst  <= '0'; AndInst <= '0';
	AndiInst <= '0'; OrInst   <= '0'; OriInst  <= '0'; notInst <= '0';
	negInst  <= '0'; SHRInst  <= '0'; SHRAInst <= '0';	SHLInst <= '0';
	SHCInst  <= '0'; BrInst	  <= '0'; BrlInst  <= '0'; ldInst  <= '0';
	ldrInst	<= '0'; stInst	  <= '0'; strInst  <= '0'; laInst  <= '0';
	larInst  <= '0'; stopInst <= '0';
	
	when "01110" =>
	AddInst  <= '0'; AddiInst <= '0'; SubInst  <= '1'; AndInst <= '0';
	AndiInst <= '0'; OrInst   <= '0'; OriInst  <= '0'; notInst <= '0';
	negInst  <= '0'; SHRInst  <= '0'; SHRAInst <= '0';	SHLInst <= '0';
	SHCInst  <= '0'; BrInst	  <= '0'; BrlInst  <= '0'; ldInst  <= '0';
	ldrInst	<= '0'; stInst	  <= '0'; strInst  <= '0'; laInst  <= '0'; 
	larInst  <= '0'; stopInst <= '0';
	
	when "01111" =>
	AddInst  <= '0'; AddiInst <= '0'; SubInst  <= '0'; AndInst <= '0';
	AndiInst <= '0'; OrInst   <= '0'; OriInst  <= '0'; notInst <= '0';
	negInst  <= '1'; SHRInst  <= '0'; SHRAInst <= '0';	SHLInst <= '0';
	SHCInst  <= '0'; BrInst	  <= '0'; BrlInst  <= '0'; ldInst  <= '0';
	ldrInst	<= '0'; stInst	  <= '0'; strInst  <= '0'; laInst  <= '0';
	larInst  <= '0'; stopInst <= '0';
	
	when "10100" =>
	AddInst  <= '0'; AddiInst <= '0'; SubInst  <= '0'; AndInst <= '1';
	AndiInst <= '0'; OrInst   <= '0'; OriInst  <= '0'; notInst <= '0';
	negInst  <= '0'; SHRInst  <= '0'; SHRAInst <= '0';	SHLInst <= '0';
	SHCInst  <= '0'; BrInst	  <= '0'; BrlInst  <= '0'; ldInst  <= '0';
	ldrInst	<= '0'; stInst	  <= '0'; strInst  <= '0'; laInst  <= '0';
	larInst  <= '0'; stopInst <= '0';
	
	when "10101" =>
	AddInst  <= '0'; AddiInst <= '0'; SubInst  <= '0'; AndInst <= '0';
	AndiInst <= '1'; OrInst   <= '0'; OriInst  <= '0'; notInst <= '0';
	negInst  <= '0'; SHRInst  <= '0'; SHRAInst <= '0';	SHLInst <= '0';
	SHCInst  <= '0'; BrInst	  <= '0'; BrlInst  <= '0'; ldInst  <= '0';
	ldrInst	<= '0'; stInst	  <= '0'; strInst  <= '0'; laInst  <= '0';
	larInst  <= '0'; stopInst <= '0';
	
	when "10110" =>
	AddInst  <= '0'; AddiInst <= '0'; SubInst  <= '0'; AndInst <= '0';
	AndiInst <= '0'; OrInst   <= '1'; OriInst  <= '0'; notInst <= '0';
	negInst  <= '0'; SHRInst  <= '0'; SHRAInst <= '0';	SHLInst <= '0';
	SHCInst  <= '0'; BrInst	  <= '0'; BrlInst  <= '0'; ldInst  <= '0';
	ldrInst	<= '0'; stInst	  <= '0'; strInst  <= '0'; laInst  <= '0';
	larInst  <= '0'; stopInst <= '0';
	
	when "10111" =>
	AddInst  <= '0'; AddiInst <= '0'; SubInst  <= '0'; AndInst <= '0';
	AndiInst <= '0'; OrInst   <= '0'; OriInst  <= '1'; notInst <= '0';
	negInst  <= '0'; SHRInst  <= '0'; SHRAInst <= '0';	SHLInst <= '0';
	SHCInst  <= '0'; BrInst	  <= '0'; BrlInst  <= '0'; ldInst  <= '0';
	ldrInst	<= '0'; stInst	  <= '0'; strInst  <= '0'; laInst  <= '0';
	larInst  <= '0'; stopInst <= '0';
	
	when "11000" =>
	AddInst  <= '0'; AddiInst <= '0'; SubInst  <= '0'; AndInst <= '0';
	AndiInst <= '0'; OrInst   <= '0'; OriInst  <= '0'; notInst <= '1';
	negInst  <= '0'; SHRInst  <= '0'; SHRAInst <= '0';	SHLInst <= '0';
	SHCInst  <= '0'; BrInst	  <= '0'; BrlInst  <= '0'; ldInst  <= '0';
	ldrInst	<= '0'; stInst	  <= '0'; strInst  <= '0'; laInst  <= '0';
	larInst  <= '0'; stopInst <= '0';
	
	when "11010" =>
	AddInst  <= '0'; AddiInst <= '0'; SubInst  <= '0'; AndInst <= '0';
	AndiInst <= '0'; OrInst   <= '0'; OriInst  <= '0'; notInst <= '0';
	negInst  <= '0'; SHRInst  <= '1'; SHRAInst <= '0';	SHLInst <= '0';
	SHCInst  <= '0'; BrInst	  <= '0'; BrlInst  <= '0'; ldInst  <= '0';
	ldrInst	<= '0'; stInst	  <= '0'; strInst  <= '0'; laInst  <= '0';
	larInst  <= '0'; stopInst <= '0';
	
	when "11011" =>
	AddInst  <= '0'; AddiInst <= '0'; SubInst  <= '0'; AndInst <= '0';
	AndiInst <= '0'; OrInst   <= '0'; OriInst  <= '0'; notInst <= '0';
	negInst  <= '0'; SHRInst  <= '0'; SHRAInst <= '1';	SHLInst <= '0';
	SHCInst  <= '0'; BrInst	  <= '0'; BrlInst  <= '0'; ldInst  <= '0';
	ldrInst	<= '0'; stInst	  <= '0'; strInst  <= '0'; laInst  <= '0';
	larInst  <= '0'; stopInst <= '0';
	
	when "11100" =>
	AddInst  <= '0'; AddiInst <= '0'; SubInst  <= '0'; AndInst <= '0';
	AndiInst <= '0'; OrInst   <= '0'; OriInst  <= '0'; notInst <= '0';
	negInst  <= '0'; SHRInst  <= '0'; SHRAInst <= '0';	SHLInst <= '1';
	SHCInst  <= '0'; BrInst	  <= '0'; BrlInst  <= '0'; ldInst  <= '0';
	ldrInst	<= '0'; stInst	  <= '0'; strInst  <= '0'; laInst  <= '0';
	larInst  <= '0'; stopInst <= '0';
	
	when "11101" =>
	AddInst  <= '0'; AddiInst <= '0'; SubInst  <= '0'; AndInst <= '0';
	AndiInst <= '0'; OrInst   <= '0'; OriInst  <= '0'; notInst <= '0';
	negInst  <= '0'; SHRInst  <= '0'; SHRAInst <= '0';	SHLInst <= '0';
	SHCInst  <= '1'; BrInst	  <= '0'; BrlInst  <= '0'; ldInst  <= '0';
	ldrInst	<= '0'; stInst	  <= '0'; strInst  <= '0'; laInst  <= '0';
	larInst  <= '0'; stopInst <= '0';
	
	when "11111" =>
	AddInst  <= '0'; AddiInst <= '0'; SubInst  <= '0'; AndInst <= '0';
	AndiInst <= '0'; OrInst   <= '0'; OriInst  <= '0'; notInst <= '0';
	negInst  <= '0'; SHRInst  <= '0'; SHRAInst <= '0';	SHLInst <= '0';
	SHCInst  <= '0'; BrInst	  <= '0'; BrlInst  <= '0'; ldInst  <= '0';
	ldrInst	<= '0'; stInst	  <= '0'; strInst  <= '0'; laInst  <= '0';
	larInst  <= '0'; stopInst <= '1';
	
	when others =>
	AddInst  <= '-'; AddiInst <= '-'; SubInst  <= '-'; AndInst <= '-';
	AndiInst <= '-'; OrInst   <= '-'; OriInst  <= '-'; notInst <= '-';
	negInst  <= '-'; SHRInst  <= '-'; SHRAInst <= '-';	SHLInst <= '-';
	SHCInst  <= '-'; BrInst	  <= '-'; BrlInst  <= '-'; ldInst  <= '-';
	ldrInst	<= '-'; stInst	  <= '-'; strInst  <= '-'; laInst  <= '-';
	larInst  <= '-'; stopInst <= '-';
	end case;
end process;

end rtl;