library ieee;
use ieee.std_logic_1164.all;

entity instruction_register is
  port (
    clock   : in    std_logic;         
    reset   : in    std_logic;          
    cpu_bus : inout std_logic_vector(31 downto 0); 
    c1_out  : in    std_logic;          
    c2_out  : in    std_logic;        
    ir_in   : in    std_logic;          
    opcode  : out   std_logic_vector(4 downto 0);  
    c3      : inout std_logic_vector(2 downto 0);  
    ra      : inout std_logic_vector(4 downto 0);  
    rb      : inout std_logic_vector(4 downto 0);  
    rc      : inout std_logic_vector(4 downto 0)   
    );
end instruction_register;

architecture instruction_register_arch of instruction_register is

  component D_Flip_Flop_Load
    port (
      clock : in  std_logic;
      reset : in  std_logic;
      d     : in  std_logic;
      q     : out std_logic;
      load  : in  std_logic
      );
  end component;

  component Buffer_C
    port (
      input  : in  std_logic;
      output : out std_logic;
      enable : in  std_logic
      );
  end component;
  
  signal ir : std_logic_vector(11 downto 3);
  signal c1_or_c2 : std_logic;
  
begin  

  c1_or_c2 <= c1_out or c2_out;

-- Common output buffers for c1 and c2 output.
  buff0  : Buffer_C port map ( c3(0),  cpu_bus(0),  c1_or_c2 );
  buff1  : Buffer_C port map ( c3(1),  cpu_bus(1),  c1_or_c2 );
  buff2  : Buffer_C port map ( c3(2),  cpu_bus(2),  c1_or_c2 );
  buff3  : Buffer_C port map ( ir(3),  cpu_bus(3),  c1_or_c2 );
  buff4  : Buffer_C port map ( ir(4),  cpu_bus(4),  c1_or_c2 );
  buff5  : Buffer_C port map ( ir(5),  cpu_bus(5),  c1_or_c2 );
  buff6  : Buffer_C port map ( ir(6),  cpu_bus(6),  c1_or_c2 );
  buff7  : Buffer_C port map ( ir(7),  cpu_bus(7),  c1_or_c2 );
  buff8  : Buffer_C port map ( ir(8),  cpu_bus(8),  c1_or_c2 );
  buff9  : Buffer_C port map ( ir(9),  cpu_bus(9),  c1_or_c2 );
  buff10 : Buffer_C port map ( ir(10), cpu_bus(10), c1_or_c2 );
  buff11 : Buffer_C port map ( ir(11), cpu_bus(11), c1_or_c2 );
  buff12 : Buffer_C port map ( rc(0),  cpu_bus(12), c1_or_c2 );
  buff13 : Buffer_C port map ( rc(1),  cpu_bus(13), c1_or_c2 );
  buff14 : Buffer_C port map ( rc(2),  cpu_bus(14), c1_or_c2 );
  buff15 : Buffer_C port map ( rc(3),  cpu_bus(15), c1_or_c2 );
  buff16 : Buffer_C port map ( rc(4),  cpu_bus(16), c1_or_c2 );

-- Output buffers for c1.
  buff_c1_17 : Buffer_C port map ( rb(0), cpu_bus(17), c1_out );
  buff_c1_18 : Buffer_C port map ( rb(1), cpu_bus(18), c1_out );
  buff_c1_19 : Buffer_C port map ( rb(2), cpu_bus(19), c1_out );
  buff_c1_20 : Buffer_C port map ( rb(3), cpu_bus(20), c1_out );
  buff_c1_21 : Buffer_C port map ( rb(4), cpu_bus(21), c1_out );
  buff_c1_22 : Buffer_C port map ( rb(4), cpu_bus(22), c1_out );
  buff_c1_23 : Buffer_C port map ( rb(4), cpu_bus(23), c1_out );
  buff_c1_24 : Buffer_C port map ( rb(4), cpu_bus(24), c1_out );
  buff_c1_25 : Buffer_C port map ( rb(4), cpu_bus(25), c1_out );
  buff_c1_26 : Buffer_C port map ( rb(4), cpu_bus(26), c1_out );
  buff_c1_27 : Buffer_C port map ( rb(4), cpu_bus(27), c1_out );
  buff_c1_28 : Buffer_C port map ( rb(4), cpu_bus(28), c1_out );
  buff_c1_29 : Buffer_C port map ( rb(4), cpu_bus(29), c1_out );
  buff_c1_30 : Buffer_C port map ( rb(4), cpu_bus(30), c1_out );
  buff_c1_31 : Buffer_C port map ( rb(4), cpu_bus(31), c1_out );

-- Output buffers for c2.
  buff_c2_17 : Buffer_C port map ( rc(4), cpu_bus(17), c2_out );
  buff_c2_18 : Buffer_C port map ( rc(4), cpu_bus(18), c2_out );
  buff_c2_19 : Buffer_C port map ( rc(4), cpu_bus(19), c2_out );
  buff_c2_20 : Buffer_C port map ( rc(4), cpu_bus(20), c2_out );
  buff_c2_21 : Buffer_C port map ( rc(4), cpu_bus(21), c2_out );
  buff_c2_22 : Buffer_C port map ( rc(4), cpu_bus(22), c2_out );
  buff_c2_23 : Buffer_C port map ( rc(4), cpu_bus(23), c2_out );
  buff_c2_24 : Buffer_C port map ( rc(4), cpu_bus(24), c2_out );
  buff_c2_25 : Buffer_C port map ( rc(4), cpu_bus(25), c2_out );
  buff_c2_26 : Buffer_C port map ( rc(4), cpu_bus(26), c2_out );
  buff_c2_27 : Buffer_C port map ( rc(4), cpu_bus(27), c2_out );
  buff_c2_28 : Buffer_C port map ( rc(4), cpu_bus(28), c2_out );
  buff_c2_29 : Buffer_C port map ( rc(4), cpu_bus(29), c2_out );
  buff_c2_30 : Buffer_C port map ( rc(4), cpu_bus(30), c2_out );
  buff_c2_31 : Buffer_C port map ( rc(4), cpu_bus(31), c2_out );

-- Instruction register flip-flops.
  ir0  : D_Flip_Flop_Load port map ( clock, reset, cpu_bus(0),  c3(0),     ir_in );
  ir1  : D_Flip_Flop_Load port map ( clock, reset, cpu_bus(1),  c3(1),     ir_in );
  ir2  : D_Flip_Flop_Load port map ( clock, reset, cpu_bus(2),  c3(2),     ir_in );
  ir3  : D_Flip_Flop_Load port map ( clock, reset, cpu_bus(3),  ir(3),     ir_in );
  ir4  : D_Flip_Flop_Load port map ( clock, reset, cpu_bus(4),  ir(4),     ir_in );
  ir5  : D_Flip_Flop_Load port map ( clock, reset, cpu_bus(5),  ir(5),     ir_in );
  ir6  : D_Flip_Flop_Load port map ( clock, reset, cpu_bus(6),  ir(6),     ir_in );
  ir7  : D_Flip_Flop_Load port map ( clock, reset, cpu_bus(7),  ir(7),     ir_in );
  ir8  : D_Flip_Flop_Load port map ( clock, reset, cpu_bus(8),  ir(8),     ir_in );
  ir9  : D_Flip_Flop_Load port map ( clock, reset, cpu_bus(9),  ir(9),     ir_in );
  ir10 : D_Flip_Flop_Load port map ( clock, reset, cpu_bus(10), ir(10),    ir_in );
  ir11 : D_Flip_Flop_Load port map ( clock, reset, cpu_bus(11), ir(11),    ir_in );
  ir12 : D_Flip_Flop_Load port map ( clock, reset, cpu_bus(12), rc(0),     ir_in );
  ir13 : D_Flip_Flop_Load port map ( clock, reset, cpu_bus(13), rc(1),     ir_in );
  ir14 : D_Flip_Flop_Load port map ( clock, reset, cpu_bus(14), rc(2),     ir_in );
  ir15 : D_Flip_Flop_Load port map ( clock, reset, cpu_bus(15), rc(3),     ir_in );
  ir16 : D_Flip_Flop_Load port map ( clock, reset, cpu_bus(16), rc(4),     ir_in );
  ir17 : D_Flip_Flop_Load port map ( clock, reset, cpu_bus(17), rb(0),     ir_in );
  ir18 : D_Flip_Flop_Load port map ( clock, reset, cpu_bus(18), rb(1),     ir_in );
  ir19 : D_Flip_Flop_Load port map ( clock, reset, cpu_bus(19), rb(2),     ir_in );
  ir20 : D_Flip_Flop_Load port map ( clock, reset, cpu_bus(20), rb(3),     ir_in );
  ir21 : D_Flip_Flop_Load port map ( clock, reset, cpu_bus(21), rb(4),     ir_in );
  ir22 : D_Flip_Flop_Load port map ( clock, reset, cpu_bus(22), ra(0),     ir_in );
  ir23 : D_Flip_Flop_Load port map ( clock, reset, cpu_bus(23), ra(1),     ir_in );
  ir24 : D_Flip_Flop_Load port map ( clock, reset, cpu_bus(24), ra(2),     ir_in );
  ir25 : D_Flip_Flop_Load port map ( clock, reset, cpu_bus(25), ra(3),     ir_in );
  ir26 : D_Flip_Flop_Load port map ( clock, reset, cpu_bus(26), ra(4),     ir_in );
  ir27 : D_Flip_Flop_Load port map ( clock, reset, cpu_bus(27), opcode(0), ir_in );
  ir28 : D_Flip_Flop_Load port map ( clock, reset, cpu_bus(28), opcode(1), ir_in );
  ir29 : D_Flip_Flop_Load port map ( clock, reset, cpu_bus(29), opcode(2), ir_in );
  ir30 : D_Flip_Flop_Load port map ( clock, reset, cpu_bus(30), opcode(3), ir_in );
  ir31 : D_Flip_Flop_Load port map ( clock, reset, cpu_bus(31), opcode(4), ir_in );

end instruction_register_arch;
