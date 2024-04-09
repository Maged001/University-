library ieee;
use ieee.std_logic_1164.all;

entity register_file is
  port (
    clock      : in    std_logic;          
    reset      : in    std_logic;          
    cpu_bus    : inout std_logic_vector(31 downto 0);  
    ra      	: in    std_logic_vector(4 downto 0);  
    rb      	: in    std_logic_vector(4 downto 0);  
    rc      	: in    std_logic_vector(4 downto 0);  
    g_ra    	: in    std_logic;          
    g_rb    	: in    std_logic;          
    g_rc    	: in    std_logic;          
    r_in    	: in    std_logic;          
    r_out   	: in    std_logic;          
    ba_out  	: in    std_logic           
    );
end register_file;

architecture rtl of register_file is

component D_Flip_Flop_load_32 is
  port (
    clock : in  std_logic;          
    reset : in  std_logic;            
    d     : in  std_logic_vector(31 downto 0); 
    q     : out std_logic_vector(31 downto 0); 
    load  : in  std_logic             
);
end component; 

component decoder_5to32 is
  port (
    input  : in  std_logic_vector(4  downto 0);           
    output : out std_logic_vector(31 downto 0)               
    );
end component;

component Buffer_32 is
  port (
    input  : in  std_logic_vector(31 downto 0);  
    output : out std_logic_vector(31 downto 0); 
    enable : in  std_logic             
    );
end component;

signal ra_out,rb_out,rc_out,select_reg: std_logic_vector(4 downto 0);

signal decoder_out : std_logic_vector(31 downto 0);
signal inbuffRo    : std_logic_vector(31 downto 0);

signal Rout_BAout_sig : std_logic;
signal and_sig_r0 	 : std_logic;
signal notBaout 	    : std_logic;

signal R0_out_buf, R1_out_buf, R2_out_buf, R3_out_buf,
		 R4_out_buf, R5_out_buf, R6_out_buf, R7_out_buf,
		 R8_out_buf, R9_out_buf, R10_out_buf,R11_out_buf,
		 R12_out_buf,R13_out_buf,R14_out_buf,R15_out_buf,
		 R16_out_buf,R17_out_buf,R18_out_buf,R19_out_buf,
		 R20_out_buf,R21_out_buf,R22_out_buf,R23_out_buf,
		 R24_out_buf,R25_out_buf,R26_out_buf,R27_out_buf,
		 R28_out_buf,R29_out_buf,R30_out_buf,R31_out_buf
		 : std_logic_vector(31 downto 0);
		 
signal load: std_logic_vector(31 downto 0);
		 
signal bufE: std_logic_vector(30 downto 0);
	
begin  

ra_out <= ra and ("0000" & g_ra);
rb_out <= rb and ("0000" & g_rb);
rc_out <= rc and ("0000" & g_rc);

select_reg <= ra_out or rb_out or rc_out;

dec: decoder_5to32 port map (select_reg, decoder_out);

process(r_in, decoder_out)
begin 

loop1: for i IN 0 to 31 loop
  load(i) <= r_in and decoder_out(i);
end loop loop1;

end process;

-- for calculate displeasment
R0:  D_Flip_Flop_load_32 port map (clock, reset, cpu_bus, R0_out_buf,  load(0 ));

-- others resgisters
R1:  D_Flip_Flop_load_32 port map (clock, reset, cpu_bus, R1_out_buf,  load(1 ));
R2:  D_Flip_Flop_load_32 port map (clock, reset, cpu_bus, R2_out_buf,  load(2 ));
R3:  D_Flip_Flop_load_32 port map (clock, reset, cpu_bus, R3_out_buf,  load(3 ));
R4:  D_Flip_Flop_load_32 port map (clock, reset, cpu_bus, R4_out_buf,  load(4 ));
R5:  D_Flip_Flop_load_32 port map (clock, reset, cpu_bus, R5_out_buf,  load(5 ));
R6:  D_Flip_Flop_load_32 port map (clock, reset, cpu_bus, R6_out_buf,  load(6 ));
R7:  D_Flip_Flop_load_32 port map (clock, reset, cpu_bus ,R7_out_buf,  load(7 ));
R8:  D_Flip_Flop_load_32 port map (clock, reset, cpu_bus ,R8_out_buf,  load(8 ));
R9:  D_Flip_Flop_load_32 port map (clock, reset, cpu_bus ,R9_out_buf,  load(9 ));
R10: D_Flip_Flop_load_32 port map (clock, reset, cpu_bus ,R10_out_buf, load(10));
R11: D_Flip_Flop_load_32 port map (clock, reset, cpu_bus ,R11_out_buf, load(11));
R12: D_Flip_Flop_load_32 port map (clock, reset, cpu_bus ,R12_out_buf, load(12));
R13: D_Flip_Flop_load_32 port map (clock, reset, cpu_bus ,R13_out_buf, load(13));
R14: D_Flip_Flop_load_32 port map (clock, reset, cpu_bus ,R14_out_buf, load(14));
R15: D_Flip_Flop_load_32 port map (clock, reset, cpu_bus ,R15_out_buf, load(15));
R16: D_Flip_Flop_load_32 port map (clock, reset, cpu_bus ,R16_out_buf, load(16));
R17: D_Flip_Flop_load_32 port map (clock, reset, cpu_bus ,R17_out_buf, load(17));
R18: D_Flip_Flop_load_32 port map (clock, reset, cpu_bus ,R18_out_buf, load(18));
R19: D_Flip_Flop_load_32 port map (clock, reset, cpu_bus ,R19_out_buf, load(19));
R20: D_Flip_Flop_load_32 port map (clock, reset, cpu_bus ,R20_out_buf, load(20));
R21: D_Flip_Flop_load_32 port map (clock, reset, cpu_bus ,R21_out_buf, load(21));
R22: D_Flip_Flop_load_32 port map (clock, reset, cpu_bus ,R22_out_buf, load(22));
R23: D_Flip_Flop_load_32 port map (clock, reset, cpu_bus ,R23_out_buf, load(23));
R24: D_Flip_Flop_load_32 port map (clock, reset, cpu_bus ,R24_out_buf, load(24));
R25: D_Flip_Flop_load_32 port map (clock, reset, cpu_bus ,R25_out_buf, load(25));
R26: D_Flip_Flop_load_32 port map (clock, reset, cpu_bus ,R26_out_buf, load(26));
R27: D_Flip_Flop_load_32 port map (clock, reset, cpu_bus ,R27_out_buf, load(27));
R28: D_Flip_Flop_load_32 port map (clock, reset, cpu_bus ,R28_out_buf, load(28));
R29: D_Flip_Flop_load_32 port map (clock, reset, cpu_bus ,R29_out_buf, load(29));
R30: D_Flip_Flop_load_32 port map (clock, reset, cpu_bus ,R30_out_buf, load(30));
R31: D_Flip_Flop_load_32 port map (clock, reset, cpu_bus ,R31_out_buf, load(31));

Rout_BAout_sig <= r_out or ba_out;
and_sig_r0     <= Rout_BAout_sig and decoder_out(0);

notBaout 		<= not ba_out;
inbuffRo 		<= ("0000000000000000000000000000000" & notBaout) and R0_out_buf;

process(decoder_out, Rout_BAout_sig)
begin 

loop2: for i IN 0 to 30 loop
  bufE(i) <= decoder_out(i+1) and Rout_BAout_sig;
end loop loop2;

end process;

buf0:  Buffer_32 port map (inbuffRo,cpu_bus,and_sig_r0);
buf1:  Buffer_32 port map (R1_out_buf,  cpu_bus, bufE(0));
buf2:  Buffer_32 port map (R2_out_buf,  cpu_bus, bufE(1));
buf3:  Buffer_32 port map (R3_out_buf,  cpu_bus, bufE(2));
buf4:  Buffer_32 port map (R4_out_buf,  cpu_bus, bufE(3));
buf5:  Buffer_32 port map (R5_out_buf,  cpu_bus, bufE(4));
buf6:  Buffer_32 port map (R6_out_buf,  cpu_bus, bufE(5));
buf7:  Buffer_32 port map (R7_out_buf,  cpu_bus, bufE(6));
buf8:  Buffer_32 port map (R8_out_buf,  cpu_bus, bufE(7));
buf9:  Buffer_32 port map (R9_out_buf,  cpu_bus, bufE(8));
buf10: Buffer_32 port map (R10_out_buf, cpu_bus, bufE(9));
buf11: Buffer_32 port map (R11_out_buf, cpu_bus, bufE(10));
buf12: Buffer_32 port map (R12_out_buf, cpu_bus, bufE(11));
buf13: Buffer_32 port map (R13_out_buf, cpu_bus, bufE(12));
buf14: Buffer_32 port map (R14_out_buf, cpu_bus, bufE(13));
buf15: Buffer_32 port map (R15_out_buf, cpu_bus, bufE(14));
buf16: Buffer_32 port map (R16_out_buf, cpu_bus, bufE(15));
buf17: Buffer_32 port map (R17_out_buf, cpu_bus, bufE(16));
buf18: Buffer_32 port map (R18_out_buf, cpu_bus, bufE(17));
buf19: Buffer_32 port map (R19_out_buf, cpu_bus, bufE(18));
buf20: Buffer_32 port map (R20_out_buf, cpu_bus, bufE(19));
buf21: Buffer_32 port map (R21_out_buf, cpu_bus, bufE(20));
buf22: Buffer_32 port map (R22_out_buf, cpu_bus, bufE(21));
buf23: Buffer_32 port map (R23_out_buf, cpu_bus, bufE(22));
buf24: Buffer_32 port map (R24_out_buf, cpu_bus, bufE(23));
buf25: Buffer_32 port map (R25_out_buf, cpu_bus, bufE(24));
buf26: Buffer_32 port map (R26_out_buf, cpu_bus, bufE(25));
buf27: Buffer_32 port map (R27_out_buf, cpu_bus, bufE(26));
buf28: Buffer_32 port map (R28_out_buf, cpu_bus, bufE(27));
buf29: Buffer_32 port map (R29_out_buf, cpu_bus, bufE(28));
buf30: Buffer_32 port map (R30_out_buf, cpu_bus, bufE(29));
buf31: Buffer_32 port map (R31_out_buf, cpu_bus, bufE(30));
  
end rtl;
