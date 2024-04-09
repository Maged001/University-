-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "12/25/2022 22:13:28"

-- 
-- Device: Altera 10M08DAF484C8G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CPU IS
    PORT (
	master_clock : IN std_logic;
	start : IN std_logic;
	reset : IN std_logic;
	done : IN std_logic;
	md_read : IN std_logic;
	md_write : IN std_logic;
	r : BUFFER std_logic;
	w : BUFFER std_logic;
	ma : BUFFER std_logic_vector(31 DOWNTO 0);
	md : BUFFER std_logic_vector(31 DOWNTO 0)
	);
END CPU;

-- Design Ports Information
-- r	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ma[0]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ma[1]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ma[2]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ma[3]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ma[4]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ma[5]	=>  Location: PIN_M14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ma[6]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ma[7]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ma[8]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ma[9]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ma[10]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ma[11]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ma[12]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ma[13]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ma[14]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ma[15]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ma[16]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ma[17]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ma[18]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ma[19]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ma[20]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ma[21]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ma[22]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ma[23]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ma[24]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ma[25]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ma[26]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ma[27]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ma[28]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ma[29]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ma[30]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ma[31]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- md[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- md[1]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- md[2]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- md[3]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- md[4]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- md[5]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- md[6]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- md[7]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- md[8]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- md[9]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- md[10]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- md[11]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- md[12]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- md[13]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- md[14]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- md[15]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- md[16]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- md[17]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- md[18]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- md[19]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- md[20]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- md[21]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- md[22]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- md[23]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- md[24]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- md[25]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- md[26]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- md[27]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- md[28]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- md[29]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- md[30]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- md[31]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- master_clock	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- done	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- md_read	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- md_write	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CPU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_master_clock : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_done : std_logic;
SIGNAL ww_md_read : std_logic;
SIGNAL ww_md_write : std_logic;
SIGNAL ww_r : std_logic;
SIGNAL ww_w : std_logic;
SIGNAL ww_ma : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_md : std_logic_vector(31 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \master_clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \md[0]~output_o\ : std_logic;
SIGNAL \md[1]~output_o\ : std_logic;
SIGNAL \md[2]~output_o\ : std_logic;
SIGNAL \md[3]~output_o\ : std_logic;
SIGNAL \md[4]~output_o\ : std_logic;
SIGNAL \md[5]~output_o\ : std_logic;
SIGNAL \md[6]~output_o\ : std_logic;
SIGNAL \md[7]~output_o\ : std_logic;
SIGNAL \md[8]~output_o\ : std_logic;
SIGNAL \md[9]~output_o\ : std_logic;
SIGNAL \md[10]~output_o\ : std_logic;
SIGNAL \md[11]~output_o\ : std_logic;
SIGNAL \md[12]~output_o\ : std_logic;
SIGNAL \md[13]~output_o\ : std_logic;
SIGNAL \md[14]~output_o\ : std_logic;
SIGNAL \md[15]~output_o\ : std_logic;
SIGNAL \md[16]~output_o\ : std_logic;
SIGNAL \md[17]~output_o\ : std_logic;
SIGNAL \md[18]~output_o\ : std_logic;
SIGNAL \md[19]~output_o\ : std_logic;
SIGNAL \md[20]~output_o\ : std_logic;
SIGNAL \md[21]~output_o\ : std_logic;
SIGNAL \md[22]~output_o\ : std_logic;
SIGNAL \md[23]~output_o\ : std_logic;
SIGNAL \md[24]~output_o\ : std_logic;
SIGNAL \md[25]~output_o\ : std_logic;
SIGNAL \md[26]~output_o\ : std_logic;
SIGNAL \md[27]~output_o\ : std_logic;
SIGNAL \md[28]~output_o\ : std_logic;
SIGNAL \md[29]~output_o\ : std_logic;
SIGNAL \md[30]~output_o\ : std_logic;
SIGNAL \md[31]~output_o\ : std_logic;
SIGNAL \r~output_o\ : std_logic;
SIGNAL \w~output_o\ : std_logic;
SIGNAL \ma[0]~output_o\ : std_logic;
SIGNAL \ma[1]~output_o\ : std_logic;
SIGNAL \ma[2]~output_o\ : std_logic;
SIGNAL \ma[3]~output_o\ : std_logic;
SIGNAL \ma[4]~output_o\ : std_logic;
SIGNAL \ma[5]~output_o\ : std_logic;
SIGNAL \ma[6]~output_o\ : std_logic;
SIGNAL \ma[7]~output_o\ : std_logic;
SIGNAL \ma[8]~output_o\ : std_logic;
SIGNAL \ma[9]~output_o\ : std_logic;
SIGNAL \ma[10]~output_o\ : std_logic;
SIGNAL \ma[11]~output_o\ : std_logic;
SIGNAL \ma[12]~output_o\ : std_logic;
SIGNAL \ma[13]~output_o\ : std_logic;
SIGNAL \ma[14]~output_o\ : std_logic;
SIGNAL \ma[15]~output_o\ : std_logic;
SIGNAL \ma[16]~output_o\ : std_logic;
SIGNAL \ma[17]~output_o\ : std_logic;
SIGNAL \ma[18]~output_o\ : std_logic;
SIGNAL \ma[19]~output_o\ : std_logic;
SIGNAL \ma[20]~output_o\ : std_logic;
SIGNAL \ma[21]~output_o\ : std_logic;
SIGNAL \ma[22]~output_o\ : std_logic;
SIGNAL \ma[23]~output_o\ : std_logic;
SIGNAL \ma[24]~output_o\ : std_logic;
SIGNAL \ma[25]~output_o\ : std_logic;
SIGNAL \ma[26]~output_o\ : std_logic;
SIGNAL \ma[27]~output_o\ : std_logic;
SIGNAL \ma[28]~output_o\ : std_logic;
SIGNAL \ma[29]~output_o\ : std_logic;
SIGNAL \ma[30]~output_o\ : std_logic;
SIGNAL \ma[31]~output_o\ : std_logic;
SIGNAL \master_clock~input_o\ : std_logic;
SIGNAL \master_clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \cu|st|con|Add0~0_combout\ : std_logic;
SIGNAL \cu|st|con|Equal0~0_combout\ : std_logic;
SIGNAL \cu|st|dec|Mux0~1_combout\ : std_logic;
SIGNAL \cu|st|dec|Mux0~2_combout\ : std_logic;
SIGNAL \cu|st|dec|Mux0~4_combout\ : std_logic;
SIGNAL \cu|control|NOTOP~combout\ : std_logic;
SIGNAL \dp|ALUL|regA|A_R|c:28:dff32|dff0|q~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \cu|control|Ain~combout\ : std_logic;
SIGNAL \dp|ALUL|regA|A_R|c:28:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:28:dff32|d_input~3_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:28:dff32|d_input~20_combout\ : std_logic;
SIGNAL \cu|control|CB~combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:28:dff32|d_input~18_combout\ : std_logic;
SIGNAL \cu|de|Mux9~0_combout\ : std_logic;
SIGNAL \dp|ALUL|r_s|Eout~0_combout\ : std_logic;
SIGNAL \cu|de|Mux12~0_combout\ : std_logic;
SIGNAL \cu|de|Mux11~0_combout\ : std_logic;
SIGNAL \dp|ALUL|l_s|Eout~0_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:28:dff32|d_input~17_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\ : std_logic;
SIGNAL \cu|de|Mux8~0_combout\ : std_logic;
SIGNAL \cu|control|NEG~combout\ : std_logic;
SIGNAL \cu|de|Mux7~0_combout\ : std_logic;
SIGNAL \cu|de|Mux2~0_combout\ : std_logic;
SIGNAL \cu|control|Sub~combout\ : std_logic;
SIGNAL \dp|ALUL|add|b_inv~combout\ : std_logic;
SIGNAL \cu|de|Mux19~0_combout\ : std_logic;
SIGNAL \cu|de|Mux16~0_combout\ : std_logic;
SIGNAL \cu|control|PCout~2_combout\ : std_logic;
SIGNAL \cu|control|PCout~combout\ : std_logic;
SIGNAL \cu|de|Mux17~0_combout\ : std_logic;
SIGNAL \cu|control|MDin~combout\ : std_logic;
SIGNAL \md[27]~input_o\ : std_logic;
SIGNAL \md_read~input_o\ : std_logic;
SIGNAL \dp|MEML|md_in~combout\ : std_logic;
SIGNAL \dp|MEML|md_r|c:27:dff32|dff0|q~q\ : std_logic;
SIGNAL \cu|de|Mux13~0_combout\ : std_logic;
SIGNAL \cu|control|CONin~combout\ : std_logic;
SIGNAL \md[1]~input_o\ : std_logic;
SIGNAL \dp|MEML|md_r|c:1:dff32|dff0|q~q\ : std_logic;
SIGNAL \cu|control|MDout~0_combout\ : std_logic;
SIGNAL \dp|ALUL|regA|A_R|c:1:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:1:dff32|d_input~3_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:1:dff32|d_input~20_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:1:dff32|d_input~17_combout\ : std_logic;
SIGNAL \md[2]~input_o\ : std_logic;
SIGNAL \dp|MEML|md_r|c:2:dff32|dff0|q~feeder_combout\ : std_logic;
SIGNAL \dp|MEML|md_r|c:2:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|MEML|buff1|c:2:buf32|output~0_combout\ : std_logic;
SIGNAL \dp|ALUL|regA|A_R|c:2:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:2:dff32|d_input~3_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:2:dff32|d_input~20_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:2:dff32|d_input~17_combout\ : std_logic;
SIGNAL \cu|control|Rin~0_combout\ : std_logic;
SIGNAL \cu|control|Rin~3_combout\ : std_logic;
SIGNAL \cu|de|Mux18~0_combout\ : std_logic;
SIGNAL \cu|control|Rin~1_combout\ : std_logic;
SIGNAL \cu|de|Mux0~0_combout\ : std_logic;
SIGNAL \cu|control|Rout~0_combout\ : std_logic;
SIGNAL \cu|control|Rout~1_combout\ : std_logic;
SIGNAL \cu|control|Rin~2_combout\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg0|dff|c:3:dff32|dff0|q~q\ : std_logic;
SIGNAL \cu|control|BAout~0_combout\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg1|dffL|c:3:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:3:buf32|output~3_combout\ : std_logic;
SIGNAL \dp|ALUL|regA|A_R|c:3:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:3:dff32|d_input~3_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:3:dff32|d_input~21_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:3:dff32|d_input~18_combout\ : std_logic;
SIGNAL \cu|st|dec|Mux0~6_combout\ : std_logic;
SIGNAL \dp|IRL|ir0|dff0|q~q\ : std_logic;
SIGNAL \dp|PCL|dff|c:0:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:0:buf32|output~3_combout\ : std_logic;
SIGNAL \dp|ALUL|regA|A_R|c:0:dff32|dff0|q~q\ : std_logic;
SIGNAL \cu|st|dec|Mux0~5_combout\ : std_logic;
SIGNAL \cu|control|C1out~0_combout\ : std_logic;
SIGNAL \dp|ALUL|add|add_E~10_combout\ : std_logic;
SIGNAL \dp|ALUL|add|add_E~8_combout\ : std_logic;
SIGNAL \dp|ALUL|add|add_E~9_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:0:dff32|d_input~17_combout\ : std_logic;
SIGNAL \dp|ALUL|add|temp[0]~0_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:0:dff32|d_input~19_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:0:dff32|d_input~20_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:0:dff32|d_input~5_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:0:dff32|d_input~24_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:0:dff32|d_input~18_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:0:dff32|d_input~21_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:0:dff32|d_input~22_combout\ : std_logic;
SIGNAL \cu|control|Cin~0_combout\ : std_logic;
SIGNAL \cu|control|Cin~1_combout\ : std_logic;
SIGNAL \cu|control|Cin~2_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:0:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:0:buf32|output~2_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:0:buf32|output~4_combout\ : std_logic;
SIGNAL \dp|ALUL|add|temp[0]~1\ : std_logic;
SIGNAL \dp|ALUL|add|temp[1]~3\ : std_logic;
SIGNAL \dp|ALUL|add|temp[2]~5\ : std_logic;
SIGNAL \dp|ALUL|add|temp[3]~6_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:3:dff32|d_input~16_combout\ : std_logic;
SIGNAL \dp|PCL|dff|c:4:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|IRL|ir4|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:4:buf32|output~0_combout\ : std_logic;
SIGNAL \md[4]~input_o\ : std_logic;
SIGNAL \dp|MEML|md_r|c:4:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:4:dff32|d_input~16_combout\ : std_logic;
SIGNAL \dp|ALUL|regA|A_R|c:4:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|add|add_32|Y:0:full32|c_out~0_combout\ : std_logic;
SIGNAL \dp|ALUL|add|add_32|Y:1:full32|c_out~0_combout\ : std_logic;
SIGNAL \dp|ALUL|add|add_32|Y:2:full32|c_out~0_combout\ : std_logic;
SIGNAL \dp|ALUL|add|add_32|Y:3:full32|c_out~0_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:4:dff32|d_input~15_combout\ : std_logic;
SIGNAL \dp|ALUL|add|temp[3]~7\ : std_logic;
SIGNAL \dp|ALUL|add|temp[4]~8_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:4:dff32|d_input~18_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:4:dff32|d_input~3_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:4:dff32|d_input~21_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:4:dff32|d_input~19_combout\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg0|dff|c:5:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg1|dffL|c:5:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:5:buf32|output~3_combout\ : std_logic;
SIGNAL \dp|ALUL|regA|A_R|c:5:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:5:dff32|d_input~3_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:5:dff32|d_input~21_combout\ : std_logic;
SIGNAL \dp|ALUL|add|temp[4]~9\ : std_logic;
SIGNAL \dp|ALUL|add|temp[5]~10_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:5:dff32|d_input~18_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:5:dff32|d_input~19_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:5:dff32|d_input~16_combout\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg0|dff|c:6:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg1|dffL|c:6:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:6:buf32|output~3_combout\ : std_logic;
SIGNAL \dp|ALUL|regA|A_R|c:6:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|add|add_32|Y:4:full32|c_out~0_combout\ : std_logic;
SIGNAL \dp|ALUL|add|add_32|Y:5:full32|c_out~0_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:6:dff32|d_input~15_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:6:dff32|d_input~16_combout\ : std_logic;
SIGNAL \dp|ALUL|add|add_32|Y:6:full32|c_out~0_combout\ : std_logic;
SIGNAL \dp|ALUL|regA|A_R|c:7:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|add|add_32|Y:7:full32|second_HA|s~0_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:7:dff32|d_input~15_combout\ : std_logic;
SIGNAL \dp|ALUL|add|temp[5]~11\ : std_logic;
SIGNAL \dp|ALUL|add|temp[6]~13\ : std_logic;
SIGNAL \dp|ALUL|add|temp[7]~14_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:7:dff32|d_input~17_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:7:dff32|d_input~3_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:7:dff32|d_input~20_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:7:dff32|d_input~18_combout\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg0|dff|c:8:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg1|dffL|c:8:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:8:buf32|output~3_combout\ : std_logic;
SIGNAL \dp|ALUL|regA|A_R|c:8:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|add|temp[7]~15\ : std_logic;
SIGNAL \dp|ALUL|add|temp[8]~16_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:8:dff32|d_input~18_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:8:dff32|d_input~3_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:8:dff32|d_input~20_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:8:dff32|d_input~17_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:9:dff32|d_input~16_combout\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg0|dff|c:10:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg1|dffL|c:10:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:10:buf32|output~2_combout\ : std_logic;
SIGNAL \dp|PCL|dff|c:10:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|IRL|ir10|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:10:buf32|output~0_combout\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg0|dff|c:11:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg1|dffL|c:11:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:11:buf32|output~3_combout\ : std_logic;
SIGNAL \md[11]~input_o\ : std_logic;
SIGNAL \dp|MEML|md_r|c:11:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|PCL|dff|c:11:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|IRL|ir11|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:11:buf32|output~0_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:11:buf32|output~1_combout\ : std_logic;
SIGNAL \dp|ALUL|regA|A_R|c:11:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:11:dff32|d_input~3_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:11:dff32|d_input~21_combout\ : std_logic;
SIGNAL \dp|ALUL|add|temp[8]~17\ : std_logic;
SIGNAL \dp|ALUL|add|temp[9]~19\ : std_logic;
SIGNAL \dp|ALUL|add|temp[10]~21\ : std_logic;
SIGNAL \dp|ALUL|add|temp[11]~22_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:11:dff32|d_input~18_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:11:dff32|d_input~19_combout\ : std_logic;
SIGNAL \dp|IRL|ir12|dff0|q~q\ : std_logic;
SIGNAL \dp|PCL|dff|c:12:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:12:buf32|output~0_combout\ : std_logic;
SIGNAL \md[12]~input_o\ : std_logic;
SIGNAL \dp|MEML|md_r|c:12:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regA|A_R|c:12:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|add|temp[11]~23\ : std_logic;
SIGNAL \dp|ALUL|add|temp[12]~24_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:12:dff32|d_input~18_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:12:dff32|d_input~3_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:12:dff32|d_input~21_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:12:dff32|d_input~19_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:12:dff32|d_input~16_combout\ : std_logic;
SIGNAL \dp|PCL|dff|c:13:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|IRL|ir13|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:13:buf32|output~0_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:13:dff32|d_input~16_combout\ : std_logic;
SIGNAL \dp|ALUL|regA|A_R|c:13:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|add|temp[12]~25\ : std_logic;
SIGNAL \dp|ALUL|add|temp[13]~26_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:13:dff32|d_input~18_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:13:dff32|d_input~3_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:13:dff32|d_input~21_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:13:dff32|d_input~19_combout\ : std_logic;
SIGNAL \dp|IRL|ir14|dff0|q~q\ : std_logic;
SIGNAL \dp|PCL|dff|c:14:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:14:buf32|output~0_combout\ : std_logic;
SIGNAL \dp|ALUL|regA|A_R|c:14:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:14:dff32|d_input~3_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:14:dff32|d_input~21_combout\ : std_logic;
SIGNAL \dp|ALUL|add|temp[13]~27\ : std_logic;
SIGNAL \dp|ALUL|add|temp[14]~28_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:14:dff32|d_input~18_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:14:dff32|d_input~19_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:14:dff32|d_input~16_combout\ : std_logic;
SIGNAL \dp|PCL|dff|c:15:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|IRL|ir15|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:15:buf32|output~0_combout\ : std_logic;
SIGNAL \md[15]~input_o\ : std_logic;
SIGNAL \dp|MEML|md_r|c:15:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|add|temp[14]~29\ : std_logic;
SIGNAL \dp|ALUL|add|temp[15]~30_combout\ : std_logic;
SIGNAL \dp|ALUL|regA|A_R|c:15:dff32|dff0|q~feeder_combout\ : std_logic;
SIGNAL \dp|ALUL|regA|A_R|c:15:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:15:dff32|d_input~18_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:15:dff32|d_input~3_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:15:dff32|d_input~21_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:15:dff32|d_input~19_combout\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg0|dff|c:16:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg1|dffL|c:16:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:16:buf32|output~2_combout\ : std_logic;
SIGNAL \md[16]~input_o\ : std_logic;
SIGNAL \dp|MEML|md_r|c:16:dff32|dff0|q~q\ : std_logic;
SIGNAL \cu|control|C1out~1_combout\ : std_logic;
SIGNAL \md[17]~input_o\ : std_logic;
SIGNAL \dp|MEML|md_r|c:17:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|IRL|ir17|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:17:buf32|output~0_combout\ : std_logic;
SIGNAL \dp|PCL|dff|c:17:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|IRL|ir16|dff0|q~q\ : std_logic;
SIGNAL \dp|IRL|buff_c2_17|output~0_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:17:buf32|output~1_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:17:dff32|d_input~16_combout\ : std_logic;
SIGNAL \dp|ALUL|regA|A_R|c:17:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:17:dff32|d_input~3_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:17:dff32|d_input~21_combout\ : std_logic;
SIGNAL \dp|ALUL|add|temp[15]~31\ : std_logic;
SIGNAL \dp|ALUL|add|temp[16]~33\ : std_logic;
SIGNAL \dp|ALUL|add|temp[17]~34_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:17:dff32|d_input~18_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:17:dff32|d_input~19_combout\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg1|dffL|c:18:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg0|dff|c:18:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:18:buf32|output~3_combout\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg0|dff|c:20:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg1|dffL|c:20:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:20:buf32|output~3_combout\ : std_logic;
SIGNAL \dp|PCL|dff|c:20:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:20:buf32|output~0_combout\ : std_logic;
SIGNAL \dp|ALUL|regA|A_R|c:20:dff32|dff0|q~feeder_combout\ : std_logic;
SIGNAL \dp|ALUL|regA|A_R|c:20:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|add|temp[17]~35\ : std_logic;
SIGNAL \dp|ALUL|add|temp[18]~37\ : std_logic;
SIGNAL \dp|ALUL|add|temp[19]~39\ : std_logic;
SIGNAL \dp|ALUL|add|temp[20]~40_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:20:dff32|d_input~15_combout\ : std_logic;
SIGNAL \dp|PCL|dff|c:21:dff32|dff0|q~q\ : std_logic;
SIGNAL \md[21]~input_o\ : std_logic;
SIGNAL \dp|MEML|md_r|c:21:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:21:buf32|output~1_combout\ : std_logic;
SIGNAL \dp|ALUL|regA|A_R|c:21:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:21:dff32|d_input~3_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:21:dff32|d_input~21_combout\ : std_logic;
SIGNAL \dp|ALUL|add|temp[20]~41\ : std_logic;
SIGNAL \dp|ALUL|add|temp[21]~42_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:21:dff32|d_input~18_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:21:dff32|d_input~19_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:21:dff32|d_input~16_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:22:dff32|d_input~16_combout\ : std_logic;
SIGNAL \dp|ALUL|regA|A_R|c:22:dff32|dff0|q~feeder_combout\ : std_logic;
SIGNAL \dp|ALUL|regA|A_R|c:22:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:22:dff32|d_input~3_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:22:dff32|d_input~21_combout\ : std_logic;
SIGNAL \dp|ALUL|add|temp[21]~43\ : std_logic;
SIGNAL \dp|ALUL|add|temp[22]~44_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:22:dff32|d_input~18_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:22:dff32|d_input~19_combout\ : std_logic;
SIGNAL \dp|PCL|dff|c:23:dff32|dff0|q~q\ : std_logic;
SIGNAL \md[23]~input_o\ : std_logic;
SIGNAL \dp|MEML|md_r|c:23:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:23:buf32|output~0_combout\ : std_logic;
SIGNAL \dp|ALUL|regA|A_R|c:24:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:24:dff32|d_input~3_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:24:dff32|d_input~20_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:24:dff32|d_input~17_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:25:dff32|d_input~16_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:25:dff32|d_input~17_combout\ : std_logic;
SIGNAL \dp|ALUL|regA|A_R|c:25:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:25:dff32|d_input~3_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:25:dff32|d_input~21_combout\ : std_logic;
SIGNAL \dp|ALUL|add|temp[22]~45\ : std_logic;
SIGNAL \dp|ALUL|add|temp[23]~47\ : std_logic;
SIGNAL \dp|ALUL|add|temp[24]~49\ : std_logic;
SIGNAL \dp|ALUL|add|temp[25]~50_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:25:dff32|d_input~18_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:25:dff32|d_input~19_combout\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg0|dff|c:25:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg1|dffL|c:25:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:25:buf32|output~2_combout\ : std_logic;
SIGNAL \dp|ALUL|regA|A_R|c:19:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regA|A_R|c:18:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regA|A_R|c:16:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regA|A_R|c:10:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regA|A_R|c:9:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|add|add_32|Y:7:full32|c_out~0_combout\ : std_logic;
SIGNAL \dp|ALUL|add|add_32|Y:8:full32|c_out~0_combout\ : std_logic;
SIGNAL \dp|ALUL|add|add_32|Y:9:full32|c_out~0_combout\ : std_logic;
SIGNAL \dp|ALUL|add|add_32|Y:10:full32|c_out~0_combout\ : std_logic;
SIGNAL \dp|ALUL|add|add_32|Y:11:full32|c_out~0_combout\ : std_logic;
SIGNAL \dp|ALUL|add|add_32|Y:12:full32|c_out~0_combout\ : std_logic;
SIGNAL \dp|ALUL|add|add_32|Y:13:full32|c_out~0_combout\ : std_logic;
SIGNAL \dp|ALUL|add|add_32|Y:14:full32|c_out~0_combout\ : std_logic;
SIGNAL \dp|ALUL|add|add_32|Y:15:full32|c_out~0_combout\ : std_logic;
SIGNAL \dp|ALUL|add|add_32|Y:16:full32|c_out~0_combout\ : std_logic;
SIGNAL \dp|ALUL|add|add_32|Y:17:full32|c_out~0_combout\ : std_logic;
SIGNAL \dp|ALUL|add|add_32|Y:18:full32|c_out~0_combout\ : std_logic;
SIGNAL \dp|ALUL|add|add_32|Y:19:full32|c_out~0_combout\ : std_logic;
SIGNAL \dp|ALUL|add|add_32|Y:20:full32|c_out~0_combout\ : std_logic;
SIGNAL \dp|ALUL|add|add_32|Y:21:full32|c_out~0_combout\ : std_logic;
SIGNAL \dp|ALUL|add|add_32|Y:22:full32|c_out~0_combout\ : std_logic;
SIGNAL \dp|ALUL|regA|A_R|c:23:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|add|add_32|Y:23:full32|c_out~0_combout\ : std_logic;
SIGNAL \dp|ALUL|add|add_32|Y:24:full32|c_out~0_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:25:dff32|d_input~15_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:25:dff32|d_input~20_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:25:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|IRL|ir21|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:21:buf32|output~0_combout\ : std_logic;
SIGNAL \md[25]~input_o\ : std_logic;
SIGNAL \dp|MEML|md_r|c:25:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|PCL|dff|c:25:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:25:buf32|output~0_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:25:buf32|output~1_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:25:buf32|output~3_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:24:dff32|d_input~16_combout\ : std_logic;
SIGNAL \dp|ALUL|add|temp[24]~48_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:24:dff32|d_input~18_combout\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg1|dffL|c:24:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg0|dff|c:24:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:24:buf32|output~2_combout\ : std_logic;
SIGNAL \dp|ALUL|add|add_32|Y:24:full32|second_HA|s~0_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:24:dff32|d_input~15_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:24:dff32|d_input~19_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:24:dff32|dff0|q~q\ : std_logic;
SIGNAL \md[24]~input_o\ : std_logic;
SIGNAL \dp|MEML|md_r|c:24:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|PCL|dff|c:24:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:24:buf32|output~0_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:24:buf32|output~1_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:24:buf32|output~3_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:23:dff32|d_input~17_combout\ : std_logic;
SIGNAL \dp|ALUL|add|temp[23]~46_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:23:dff32|d_input~15_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:23:dff32|d_input~3_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:23:dff32|d_input~20_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:23:dff32|d_input~18_combout\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg0|dff|c:23:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg1|dffL|c:23:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:23:buf32|output~2_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:23:dff32|d_input~16_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:23:dff32|d_input~19_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:23:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:23:buf32|output~1_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:23:buf32|output~3_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:22:dff32|d_input~17_combout\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg0|dff|c:22:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg1|dffL|c:22:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:22:buf32|output~2_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:22:dff32|d_input~15_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:22:dff32|d_input~20_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:22:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|PCL|dff|c:22:dff32|dff0|q~q\ : std_logic;
SIGNAL \md[22]~input_o\ : std_logic;
SIGNAL \dp|MEML|md_r|c:22:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:22:buf32|output~0_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:22:buf32|output~1_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:22:buf32|output~3_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:21:dff32|d_input~17_combout\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg0|dff|c:21:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg1|dffL|c:21:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:21:buf32|output~3_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:21:dff32|d_input~15_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:21:dff32|d_input~20_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:21:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:21:buf32|output~2_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:21:buf32|output~4_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:20:dff32|d_input~17_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:20:dff32|d_input~3_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:20:dff32|d_input~20_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:20:dff32|d_input~18_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:20:dff32|d_input~16_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:20:dff32|d_input~19_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:20:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|IRL|ir20|dff0|q~q\ : std_logic;
SIGNAL \md[20]~input_o\ : std_logic;
SIGNAL \dp|MEML|md_r|c:20:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:20:buf32|output~1_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:20:buf32|output~2_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:20:buf32|output~4_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:19:dff32|d_input~17_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:19:dff32|d_input~16_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:19:dff32|d_input~3_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:19:dff32|d_input~21_combout\ : std_logic;
SIGNAL \dp|ALUL|add|temp[19]~38_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:19:dff32|d_input~18_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:19:dff32|d_input~19_combout\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg0|dff|c:19:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg1|dffL|c:19:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:19:buf32|output~3_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:19:dff32|d_input~15_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:19:dff32|d_input~20_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:19:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|IRL|ir19|dff0|q~q\ : std_logic;
SIGNAL \md[19]~input_o\ : std_logic;
SIGNAL \dp|MEML|md_r|c:19:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:19:buf32|output~1_combout\ : std_logic;
SIGNAL \dp|PCL|dff|c:19:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:19:buf32|output~0_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:19:buf32|output~2_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:19:buf32|output~4_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:18:dff32|d_input~16_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:18:dff32|d_input~3_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:18:dff32|d_input~21_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:18:dff32|d_input~18_combout\ : std_logic;
SIGNAL \dp|ALUL|add|temp[18]~36_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:18:dff32|d_input~17_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:18:dff32|d_input~19_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:18:dff32|d_input~15_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:18:dff32|d_input~20_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:18:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|IRL|ir18|dff0|q~q\ : std_logic;
SIGNAL \md[18]~input_o\ : std_logic;
SIGNAL \dp|MEML|md_r|c:18:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:18:buf32|output~1_combout\ : std_logic;
SIGNAL \dp|PCL|dff|c:18:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:18:buf32|output~0_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:18:buf32|output~2_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:18:buf32|output~4_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:17:dff32|d_input~17_combout\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg1|dffL|c:17:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg0|dff|c:17:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:17:buf32|output~3_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:17:dff32|d_input~15_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:17:dff32|d_input~20_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:17:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:17:buf32|output~2_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:17:buf32|output~4_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:16:dff32|d_input~17_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:16:dff32|d_input~16_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:16:dff32|d_input~3_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:16:dff32|d_input~21_combout\ : std_logic;
SIGNAL \dp|ALUL|add|temp[16]~32_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:16:dff32|d_input~18_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:16:dff32|d_input~19_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:16:dff32|d_input~15_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:16:dff32|d_input~20_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:16:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:16:buf32|output~1_combout\ : std_logic;
SIGNAL \dp|PCL|dff|c:16:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:16:buf32|output~0_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:16:buf32|output~3_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:16:buf32|output~4_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:15:dff32|d_input~17_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:15:dff32|d_input~16_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:15:dff32|d_input~15_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:15:dff32|d_input~20_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:15:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:15:buf32|output~1_combout\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg0|dff|c:15:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg1|dffL|c:15:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:15:buf32|output~2_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:15:buf32|output~3_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:15:buf32|output~4_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:14:dff32|d_input~17_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:14:dff32|d_input~15_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:14:dff32|d_input~20_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:14:dff32|dff0|q~q\ : std_logic;
SIGNAL \md[14]~input_o\ : std_logic;
SIGNAL \dp|MEML|md_r|c:14:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:14:buf32|output~1_combout\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg1|dffL|c:14:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg0|dff|c:14:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:14:buf32|output~2_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:14:buf32|output~3_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:14:buf32|output~4_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:13:dff32|d_input~17_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:13:dff32|d_input~15_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:13:dff32|d_input~20_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:13:dff32|dff0|q~q\ : std_logic;
SIGNAL \md[13]~input_o\ : std_logic;
SIGNAL \dp|MEML|md_r|c:13:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:13:buf32|output~1_combout\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg0|dff|c:13:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg1|dffL|c:13:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:13:buf32|output~2_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:13:buf32|output~3_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:13:buf32|output~4_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:12:dff32|d_input~17_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:12:dff32|d_input~15_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:12:dff32|d_input~20_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:12:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:12:buf32|output~1_combout\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg0|dff|c:12:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg1|dffL|c:12:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:12:buf32|output~2_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:12:buf32|output~3_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:12:buf32|output~4_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:11:dff32|d_input~17_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:11:dff32|d_input~16_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:11:dff32|d_input~15_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:11:dff32|d_input~20_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:11:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:11:buf32|output~2_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:11:buf32|output~4_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:10:dff32|d_input~16_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:10:dff32|d_input~3_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:10:dff32|d_input~20_combout\ : std_logic;
SIGNAL \dp|ALUL|add|temp[10]~20_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:10:dff32|d_input~17_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:10:dff32|d_input~18_combout\ : std_logic;
SIGNAL \dp|ALUL|add|add_32|Y:10:full32|second_HA|s~0_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:10:dff32|d_input~15_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:10:dff32|d_input~19_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:10:dff32|dff0|q~q\ : std_logic;
SIGNAL \md[10]~input_o\ : std_logic;
SIGNAL \dp|MEML|md_r|c:10:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:10:buf32|output~1_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:10:buf32|output~3_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:10:buf32|output~4_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:9:dff32|d_input~17_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:9:dff32|d_input~3_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:9:dff32|d_input~21_combout\ : std_logic;
SIGNAL \dp|ALUL|add|temp[9]~18_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:9:dff32|d_input~18_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:9:dff32|d_input~19_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:9:dff32|d_input~15_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:9:dff32|d_input~20_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:9:dff32|dff0|q~q\ : std_logic;
SIGNAL \md[9]~input_o\ : std_logic;
SIGNAL \dp|MEML|md_r|c:9:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:9:buf32|output~1_combout\ : std_logic;
SIGNAL \dp|PCL|dff|c:9:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|IRL|ir9|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:9:buf32|output~0_combout\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg0|dff|c:9:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg1|dffL|c:9:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:9:buf32|output~2_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:9:buf32|output~3_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:9:buf32|output~4_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:8:dff32|d_input~16_combout\ : std_logic;
SIGNAL \dp|ALUL|add|add_32|Y:8:full32|second_HA|s~0_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:8:dff32|d_input~15_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:8:dff32|d_input~19_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:8:dff32|dff0|q~q\ : std_logic;
SIGNAL \md[8]~input_o\ : std_logic;
SIGNAL \dp|MEML|md_r|c:8:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|PCL|dff|c:8:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|IRL|ir8|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:8:buf32|output~0_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:8:buf32|output~1_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:8:buf32|output~2_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:8:buf32|output~4_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:7:dff32|d_input~16_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:7:dff32|d_input~19_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:7:dff32|dff0|q~q\ : std_logic;
SIGNAL \md[7]~input_o\ : std_logic;
SIGNAL \dp|MEML|md_r|c:7:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:7:buf32|output~1_combout\ : std_logic;
SIGNAL \dp|PCL|dff|c:7:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|IRL|ir7|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:7:buf32|output~0_combout\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg0|dff|c:7:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg1|dffL|c:7:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:7:buf32|output~2_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:7:buf32|output~3_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:7:buf32|output~4_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:6:dff32|d_input~17_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:6:dff32|d_input~3_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:6:dff32|d_input~21_combout\ : std_logic;
SIGNAL \dp|ALUL|add|temp[6]~12_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:6:dff32|d_input~18_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:6:dff32|d_input~19_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:6:dff32|d_input~20_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:6:dff32|dff0|q~q\ : std_logic;
SIGNAL \md[6]~input_o\ : std_logic;
SIGNAL \dp|MEML|md_r|c:6:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|PCL|dff|c:6:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|IRL|ir6|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:6:buf32|output~0_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:6:buf32|output~1_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:6:buf32|output~2_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:6:buf32|output~4_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:5:dff32|d_input~17_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:5:dff32|d_input~15_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:5:dff32|d_input~20_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:5:dff32|dff0|q~q\ : std_logic;
SIGNAL \md[5]~input_o\ : std_logic;
SIGNAL \dp|MEML|md_r|c:5:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|PCL|dff|c:5:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|IRL|ir5|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:5:buf32|output~0_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:5:buf32|output~1_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:5:buf32|output~2_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:5:buf32|output~4_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:4:dff32|d_input~17_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:4:dff32|d_input~20_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:4:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:4:buf32|output~1_combout\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg0|dff|c:4:dff32|dff0|q~feeder_combout\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg0|dff|c:4:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg1|dffL|c:4:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:4:buf32|output~2_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:4:buf32|output~3_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:4:buf32|output~4_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:3:dff32|d_input~17_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:3:dff32|d_input~19_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:3:dff32|d_input~15_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:3:dff32|d_input~20_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:3:dff32|dff0|q~q\ : std_logic;
SIGNAL \md[3]~input_o\ : std_logic;
SIGNAL \dp|MEML|md_r|c:3:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|PCL|dff|c:3:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|IRL|ir3|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:3:buf32|output~0_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:3:buf32|output~1_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:3:buf32|output~2_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:3:buf32|output~4_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:2:dff32|d_input~16_combout\ : std_logic;
SIGNAL \dp|ALUL|add|add_32|Y:2:full32|second_HA|s~0_combout\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg0|dff|c:2:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg1|dffL|c:2:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:2:buf32|output~2_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:2:dff32|d_input~15_combout\ : std_logic;
SIGNAL \dp|ALUL|add|temp[2]~4_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:2:dff32|d_input~18_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:2:dff32|d_input~19_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:2:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|IRL|ir2|dff0|q~q\ : std_logic;
SIGNAL \dp|PCL|dff|c:2:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:2:buf32|output~0_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:2:buf32|output~1_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:2:buf32|output~3_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:1:dff32|d_input~16_combout\ : std_logic;
SIGNAL \dp|ALUL|add|temp[1]~2_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:1:dff32|d_input~18_combout\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg0|dff|c:1:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg1|dffL|c:1:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:1:buf32|output~3_combout\ : std_logic;
SIGNAL \dp|ALUL|add|add_32|Y:1:full32|second_HA|s~combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:1:dff32|d_input~15_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:1:dff32|d_input~19_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:1:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:1:buf32|output~0_combout\ : std_logic;
SIGNAL \dp|PCL|dff|c:1:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:1:buf32|output~1_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:1:buf32|output~2_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:1:buf32|output~4_combout\ : std_logic;
SIGNAL \dp|IRL|ir1|dff0|q~q\ : std_logic;
SIGNAL \dp|CONDL|zero_chack~8_combout\ : std_logic;
SIGNAL \dp|CONDL|zero_chack~6_combout\ : std_logic;
SIGNAL \dp|CONDL|zero_chack~5_combout\ : std_logic;
SIGNAL \dp|CONDL|zero_chack~7_combout\ : std_logic;
SIGNAL \dp|CONDL|zero_chack~3_combout\ : std_logic;
SIGNAL \dp|CONDL|zero_chack~2_combout\ : std_logic;
SIGNAL \dp|CONDL|zero_chack~0_combout\ : std_logic;
SIGNAL \dp|CONDL|zero_chack~1_combout\ : std_logic;
SIGNAL \dp|CONDL|zero_chack~4_combout\ : std_logic;
SIGNAL \dp|CONDL|zero_chack~9_combout\ : std_logic;
SIGNAL \dp|CONDL|zero_chack~10_combout\ : std_logic;
SIGNAL \dp|CONDL|dff_con|dff0|q~1_combout\ : std_logic;
SIGNAL \dp|CONDL|dff_con|dff0|q~0_combout\ : std_logic;
SIGNAL \dp|CONDL|dff_con|dff0|q~2_combout\ : std_logic;
SIGNAL \dp|CONDL|dff_con|dff0|q~3_combout\ : std_logic;
SIGNAL \dp|CONDL|dff_con|dff0|q~q\ : std_logic;
SIGNAL \cu|control|PCin~2_combout\ : std_logic;
SIGNAL \cu|control|PCin~3_combout\ : std_logic;
SIGNAL \dp|PCL|dff|c:27:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:27:buf32|output~0_combout\ : std_logic;
SIGNAL \dp|ALUL|regA|A_R|c:27:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|add|temp[27]~54_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:27:dff32|d_input~18_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:27:dff32|d_input~16_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:27:dff32|d_input~3_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:27:dff32|d_input~20_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:27:dff32|d_input~17_combout\ : std_logic;
SIGNAL \dp|ALUL|regA|A_R|c:26:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|add|add_32|Y:25:full32|c_out~0_combout\ : std_logic;
SIGNAL \dp|ALUL|add|add_32|Y:26:full32|c_out~0_combout\ : std_logic;
SIGNAL \dp|ALUL|add|add_32|Y:27:full32|second_HA|s~combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:27:dff32|d_input~15_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:27:dff32|d_input~19_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:27:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:27:buf32|output~1_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:26:dff32|d_input~16_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:26:dff32|d_input~3_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:26:dff32|d_input~21_combout\ : std_logic;
SIGNAL \dp|ALUL|add|temp[25]~51\ : std_logic;
SIGNAL \dp|ALUL|add|temp[26]~52_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:26:dff32|d_input~17_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:26:dff32|d_input~18_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:26:dff32|d_input~19_combout\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg0|dff|c:26:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg1|dffL|c:26:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:26:buf32|output~2_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:26:dff32|d_input~15_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:26:dff32|d_input~20_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:26:dff32|dff0|q~q\ : std_logic;
SIGNAL \md[26]~input_o\ : std_logic;
SIGNAL \dp|MEML|md_r|c:26:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|PCL|dff|c:26:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:26:buf32|output~0_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:26:buf32|output~1_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:26:buf32|output~3_combout\ : std_logic;
SIGNAL \dp|ALUL|add|temp[26]~53\ : std_logic;
SIGNAL \dp|ALUL|add|temp[27]~55\ : std_logic;
SIGNAL \dp|ALUL|add|temp[28]~56_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:28:dff32|d_input~15_combout\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg1|dffL|c:28:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg0|dff|c:28:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:28:buf32|output~2_combout\ : std_logic;
SIGNAL \dp|ALUL|add|add_32|Y:27:full32|c_out~0_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:28:dff32|d_input~16_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:28:dff32|d_input~19_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:28:dff32|dff0|q~q\ : std_logic;
SIGNAL \md[28]~input_o\ : std_logic;
SIGNAL \dp|MEML|md_r|c:28:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|PCL|dff|c:28:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:28:buf32|output~0_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:28:buf32|output~1_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:28:buf32|output~3_combout\ : std_logic;
SIGNAL \dp|IRL|ir28|dff0|q~q\ : std_logic;
SIGNAL \cu|control|C2out~0_combout\ : std_logic;
SIGNAL \cu|control|C2out~1_combout\ : std_logic;
SIGNAL \cu|control|Cout~1_combout\ : std_logic;
SIGNAL \cu|control|Cout~0_combout\ : std_logic;
SIGNAL \cu|control|Cout~combout\ : std_logic;
SIGNAL \md[31]~input_o\ : std_logic;
SIGNAL \dp|MEML|md_r|c:31:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|PCL|dff|c:31:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:31:buf32|output~0_combout\ : std_logic;
SIGNAL \dp|ALUL|regA|A_R|c:31:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|add|temp[28]~57\ : std_logic;
SIGNAL \dp|ALUL|add|temp[29]~59\ : std_logic;
SIGNAL \dp|ALUL|add|temp[30]~61\ : std_logic;
SIGNAL \dp|ALUL|add|temp[31]~62_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:31:dff32|d_input~16_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:31:dff32|d_input~3_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:31:dff32|d_input~22_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:31:dff32|d_input~17_combout\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg0|dff|c:31:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg1|dffL|c:31:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:31:buf32|output~2_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:31:dff32|d_input~18_combout\ : std_logic;
SIGNAL \dp|ALUL|regA|A_R|c:30:dff32|dff0|q~feeder_combout\ : std_logic;
SIGNAL \dp|ALUL|regA|A_R|c:30:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regA|A_R|c:29:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|add|add_32|Y:28:full32|c_out~0_combout\ : std_logic;
SIGNAL \dp|ALUL|add|add_32|Y:29:full32|c_out~0_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:31:dff32|d_input~19_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:31:dff32|d_input~20_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:30:dff32|d_input~16_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:30:dff32|d_input~17_combout\ : std_logic;
SIGNAL \dp|ALUL|add|temp[30]~60_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:30:dff32|d_input~18_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:30:dff32|d_input~3_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:30:dff32|d_input~21_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:30:dff32|d_input~19_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:30:dff32|d_input~15_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:30:dff32|d_input~20_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:30:dff32|dff0|q~q\ : std_logic;
SIGNAL \md[30]~input_o\ : std_logic;
SIGNAL \dp|MEML|md_r|c:30:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|PCL|dff|c:30:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:30:buf32|output~0_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:30:buf32|output~1_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:31:dff32|d_input~15_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:31:dff32|d_input~21_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:31:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:31:buf32|output~1_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:31:buf32|output~3_combout\ : std_logic;
SIGNAL \dp|IRL|ir31|dff0|q~q\ : std_logic;
SIGNAL \cu|de|Mux14~0_combout\ : std_logic;
SIGNAL \cu|control|PCout~3_combout\ : std_logic;
SIGNAL \dp|RegFIleL|reg|input_decoder[0]~3_combout\ : std_logic;
SIGNAL \cu|control|EndSignal~2_combout\ : std_logic;
SIGNAL \dp|RegFIleL|r_out_OR_ba_out~3_combout\ : std_logic;
SIGNAL \dp|RegFIleL|reg|input_decoder[0]~1_combout\ : std_logic;
SIGNAL \dp|RegFIleL|reg|input_decoder[0]~2_combout\ : std_logic;
SIGNAL \dp|IRL|ir22|dff0|q~q\ : std_logic;
SIGNAL \cu|control|PCin~4_combout\ : std_logic;
SIGNAL \cu|control|Rout~2_combout\ : std_logic;
SIGNAL \dp|RegFIleL|r_out_OR_ba_out~0_combout\ : std_logic;
SIGNAL \dp|RegFIleL|reg|input_decoder[0]~0_combout\ : std_logic;
SIGNAL \dp|RegFIleL|reg|input_decoder[0]~4_combout\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg1|dffL|c:27:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg0|dff|c:27:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:27:buf32|output~2_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:27:buf32|output~3_combout\ : std_logic;
SIGNAL \dp|IRL|ir27|dff0|q~q\ : std_logic;
SIGNAL \cu|de|Mux10~0_combout\ : std_logic;
SIGNAL \cu|control|CB~2_combout\ : std_logic;
SIGNAL \cu|control|load~0_combout\ : std_logic;
SIGNAL \dp|shLable|mux[0]~6_combout\ : std_logic;
SIGNAL \dp|shLable|dff0|q~q\ : std_logic;
SIGNAL \dp|shLable|mux[1]~7_combout\ : std_logic;
SIGNAL \dp|shLable|dff1|q~q\ : std_logic;
SIGNAL \dp|shLable|n_equ_zero~0_combout\ : std_logic;
SIGNAL \dp|shLable|mux[2]~2_combout\ : std_logic;
SIGNAL \dp|shLable|mux[2]~3_combout\ : std_logic;
SIGNAL \dp|shLable|dff2|q~q\ : std_logic;
SIGNAL \dp|shLable|mux[3]~4_combout\ : std_logic;
SIGNAL \dp|shLable|mux[3]~5_combout\ : std_logic;
SIGNAL \dp|shLable|dff3|q~q\ : std_logic;
SIGNAL \dp|shLable|mux[3]~0_combout\ : std_logic;
SIGNAL \dp|shLable|mux[4]~1_combout\ : std_logic;
SIGNAL \dp|shLable|dff4|q~q\ : std_logic;
SIGNAL \dp|shLable|n_equ_zero~1_combout\ : std_logic;
SIGNAL \dp|RegFIleL|r_out_OR_ba_out~4_combout\ : std_logic;
SIGNAL \dp|RegFIleL|r_out_OR_ba_out~1_combout\ : std_logic;
SIGNAL \dp|RegFIleL|r_out_OR_ba_out~2_combout\ : std_logic;
SIGNAL \dp|RegFIleL|r_out_OR_ba_out~5_combout\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg1|dffL|c:30:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg0|dff|c:30:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:30:buf32|output~2_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:30:buf32|output~3_combout\ : std_logic;
SIGNAL \dp|IRL|ir30|dff0|q~q\ : std_logic;
SIGNAL \cu|de|Mux15~0_combout\ : std_logic;
SIGNAL \cu|control|Grb~0_combout\ : std_logic;
SIGNAL \dp|IRL|c1_or_c2~0_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:0:buf32|output~0_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg1|dffL|c:29:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg0|dff|c:29:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:29:buf32|output~2_combout\ : std_logic;
SIGNAL \md[29]~input_o\ : std_logic;
SIGNAL \dp|MEML|md_r|c:29:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|PCL|dff|c:29:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:29:buf32|output~0_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:29:dff32|d_input~16_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:29:dff32|d_input~17_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:29:dff32|d_input~3_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:29:dff32|d_input~21_combout\ : std_logic;
SIGNAL \dp|ALUL|add|temp[29]~58_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:29:dff32|d_input~18_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:29:dff32|d_input~19_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:29:dff32|d_input~15_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:29:dff32|d_input~20_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|DFF1|c:29:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:29:buf32|output~1_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:29:buf32|output~3_combout\ : std_logic;
SIGNAL \dp|IRL|ir29|dff0|q~q\ : std_logic;
SIGNAL \cu|clock_logic|jk1|q~0_combout\ : std_logic;
SIGNAL \cu|control|waitSignal~0_combout\ : std_logic;
SIGNAL \done~input_o\ : std_logic;
SIGNAL \cu|clock_logic|dff0|q~feeder_combout\ : std_logic;
SIGNAL \cu|clock_logic|dff0|q~q\ : std_logic;
SIGNAL \cu|clock_logic|jk1|q~1_combout\ : std_logic;
SIGNAL \cu|clock_logic|jk1|q~q\ : std_logic;
SIGNAL \cu|clock_logic|jk2|q~0_combout\ : std_logic;
SIGNAL \cu|clock_logic|jk2|q~q\ : std_logic;
SIGNAL \cu|st|con|count_i[2]~3_combout\ : std_logic;
SIGNAL \cu|st|con|count_i[2]~4_combout\ : std_logic;
SIGNAL \cu|control|EndSignal~4_combout\ : std_logic;
SIGNAL \cu|control|EndSignal~3_combout\ : std_logic;
SIGNAL \cu|control|EndSignal~6_combout\ : std_logic;
SIGNAL \cu|control|EndSignal~5_combout\ : std_logic;
SIGNAL \cu|st|con|count_i[2]~6_combout\ : std_logic;
SIGNAL \cu|st|con|count_i[3]~13_combout\ : std_logic;
SIGNAL \cu|st|con|count_i[3]~12_combout\ : std_logic;
SIGNAL \cu|st|con|count_i[2]~2_combout\ : std_logic;
SIGNAL \cu|st|con|count_i[2]~7_combout\ : std_logic;
SIGNAL \cu|st|dec|Mux0~0_combout\ : std_logic;
SIGNAL \cu|control|Goto6~combout\ : std_logic;
SIGNAL \cu|st|con|count_i[2]~8_combout\ : std_logic;
SIGNAL \cu|st|con|count_i[1]~9_combout\ : std_logic;
SIGNAL \cu|st|con|count_i[1]~10_combout\ : std_logic;
SIGNAL \cu|clock_logic|jk0|q~0_combout\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \cu|de|Mux11~1_combout\ : std_logic;
SIGNAL \cu|clock_logic|jk0|q~1_combout\ : std_logic;
SIGNAL \cu|clock_logic|jk0|q~q\ : std_logic;
SIGNAL \cu|st|con|count_i[3]~5_combout\ : std_logic;
SIGNAL \cu|st|con|count_i[0]~11_combout\ : std_logic;
SIGNAL \cu|st|dec|Mux0~3_combout\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg0|dff|c:0:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|RegFIleL|gen_reg1|dffL|c:0:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:0:buf32|output~5_combout\ : std_logic;
SIGNAL \dp|ALUL|regC|BF1|c:0:buf32|output~6_combout\ : std_logic;
SIGNAL \md[0]~input_o\ : std_logic;
SIGNAL \dp|MEML|md_r|c:0:dff32|dff0|q~q\ : std_logic;
SIGNAL \md_write~input_o\ : std_logic;
SIGNAL \dp|MEML|ma_r|c:0:dff32|dff0|q~feeder_combout\ : std_logic;
SIGNAL \cu|control|MAin~0_combout\ : std_logic;
SIGNAL \dp|MEML|ma_r|c:0:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|MEML|ma_r|c:1:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|MEML|ma_r|c:2:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|MEML|ma_r|c:3:dff32|dff0|q~feeder_combout\ : std_logic;
SIGNAL \dp|MEML|ma_r|c:3:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|MEML|ma_r|c:4:dff32|dff0|q~feeder_combout\ : std_logic;
SIGNAL \dp|MEML|ma_r|c:4:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|MEML|ma_r|c:5:dff32|dff0|q~feeder_combout\ : std_logic;
SIGNAL \dp|MEML|ma_r|c:5:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|MEML|ma_r|c:6:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|MEML|ma_r|c:7:dff32|dff0|q~feeder_combout\ : std_logic;
SIGNAL \dp|MEML|ma_r|c:7:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|MEML|ma_r|c:8:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|MEML|ma_r|c:9:dff32|dff0|q~feeder_combout\ : std_logic;
SIGNAL \dp|MEML|ma_r|c:9:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|MEML|ma_r|c:10:dff32|dff0|q~feeder_combout\ : std_logic;
SIGNAL \dp|MEML|ma_r|c:10:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|MEML|ma_r|c:11:dff32|dff0|q~feeder_combout\ : std_logic;
SIGNAL \dp|MEML|ma_r|c:11:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|MEML|ma_r|c:12:dff32|dff0|q~feeder_combout\ : std_logic;
SIGNAL \dp|MEML|ma_r|c:12:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|MEML|ma_r|c:13:dff32|dff0|q~feeder_combout\ : std_logic;
SIGNAL \dp|MEML|ma_r|c:13:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|MEML|ma_r|c:14:dff32|dff0|q~feeder_combout\ : std_logic;
SIGNAL \dp|MEML|ma_r|c:14:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|MEML|ma_r|c:15:dff32|dff0|q~feeder_combout\ : std_logic;
SIGNAL \dp|MEML|ma_r|c:15:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|MEML|ma_r|c:16:dff32|dff0|q~feeder_combout\ : std_logic;
SIGNAL \dp|MEML|ma_r|c:16:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|MEML|ma_r|c:17:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|MEML|ma_r|c:18:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|MEML|ma_r|c:19:dff32|dff0|q~feeder_combout\ : std_logic;
SIGNAL \dp|MEML|ma_r|c:19:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|MEML|ma_r|c:20:dff32|dff0|q~feeder_combout\ : std_logic;
SIGNAL \dp|MEML|ma_r|c:20:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|MEML|ma_r|c:21:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|MEML|ma_r|c:22:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|MEML|ma_r|c:23:dff32|dff0|q~feeder_combout\ : std_logic;
SIGNAL \dp|MEML|ma_r|c:23:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|MEML|ma_r|c:24:dff32|dff0|q~feeder_combout\ : std_logic;
SIGNAL \dp|MEML|ma_r|c:24:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|MEML|ma_r|c:25:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|MEML|ma_r|c:26:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|MEML|ma_r|c:27:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|MEML|ma_r|c:28:dff32|dff0|q~feeder_combout\ : std_logic;
SIGNAL \dp|MEML|ma_r|c:28:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|MEML|ma_r|c:29:dff32|dff0|q~feeder_combout\ : std_logic;
SIGNAL \dp|MEML|ma_r|c:29:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|MEML|ma_r|c:30:dff32|dff0|q~feeder_combout\ : std_logic;
SIGNAL \dp|MEML|ma_r|c:30:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|MEML|ma_r|c:31:dff32|dff0|q~q\ : std_logic;
SIGNAL \dp|ALUL|add|a_sig\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \cu|st|con|count_i\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dp|RegFIleL|gen_reg0|BFF_in\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \dp|shLable|mux\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \dp|ALUL|add|b_sig\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \dp|RegFIleL|strop\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \dp|MEML|or_G\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_master_clock <= master_clock;
ww_start <= start;
ww_reset <= reset;
ww_done <= done;
ww_md_read <= md_read;
ww_md_write <= md_write;
r <= ww_r;
w <= ww_w;
ma <= ww_ma;
md <= ww_md;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\master_clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \master_clock~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y12_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X31_Y12_N16
\md[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|md_r|c:0:dff32|dff0|q~q\,
	oe => \md_write~input_o\,
	devoe => ww_devoe,
	o => \md[0]~output_o\);

-- Location: IOOBUF_X10_Y20_N16
\md[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|md_r|c:1:dff32|dff0|q~q\,
	oe => \md_write~input_o\,
	devoe => ww_devoe,
	o => \md[1]~output_o\);

-- Location: IOOBUF_X17_Y0_N23
\md[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|md_r|c:2:dff32|dff0|q~q\,
	oe => \md_write~input_o\,
	devoe => ww_devoe,
	o => \md[2]~output_o\);

-- Location: IOOBUF_X10_Y15_N9
\md[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|md_r|c:3:dff32|dff0|q~q\,
	oe => \md_write~input_o\,
	devoe => ww_devoe,
	o => \md[3]~output_o\);

-- Location: IOOBUF_X10_Y15_N16
\md[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|md_r|c:4:dff32|dff0|q~q\,
	oe => \md_write~input_o\,
	devoe => ww_devoe,
	o => \md[4]~output_o\);

-- Location: IOOBUF_X10_Y20_N23
\md[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|md_r|c:5:dff32|dff0|q~q\,
	oe => \md_write~input_o\,
	devoe => ww_devoe,
	o => \md[5]~output_o\);

-- Location: IOOBUF_X10_Y15_N2
\md[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|md_r|c:6:dff32|dff0|q~q\,
	oe => \md_write~input_o\,
	devoe => ww_devoe,
	o => \md[6]~output_o\);

-- Location: IOOBUF_X31_Y12_N2
\md[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|md_r|c:7:dff32|dff0|q~q\,
	oe => \md_write~input_o\,
	devoe => ww_devoe,
	o => \md[7]~output_o\);

-- Location: IOOBUF_X10_Y20_N9
\md[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|md_r|c:8:dff32|dff0|q~q\,
	oe => \md_write~input_o\,
	devoe => ww_devoe,
	o => \md[8]~output_o\);

-- Location: IOOBUF_X17_Y25_N9
\md[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|md_r|c:9:dff32|dff0|q~q\,
	oe => \md_write~input_o\,
	devoe => ww_devoe,
	o => \md[9]~output_o\);

-- Location: IOOBUF_X17_Y25_N2
\md[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|md_r|c:10:dff32|dff0|q~q\,
	oe => \md_write~input_o\,
	devoe => ww_devoe,
	o => \md[10]~output_o\);

-- Location: IOOBUF_X31_Y12_N9
\md[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|md_r|c:11:dff32|dff0|q~q\,
	oe => \md_write~input_o\,
	devoe => ww_devoe,
	o => \md[11]~output_o\);

-- Location: IOOBUF_X10_Y16_N9
\md[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|md_r|c:12:dff32|dff0|q~q\,
	oe => \md_write~input_o\,
	devoe => ww_devoe,
	o => \md[12]~output_o\);

-- Location: IOOBUF_X10_Y16_N2
\md[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|md_r|c:13:dff32|dff0|q~q\,
	oe => \md_write~input_o\,
	devoe => ww_devoe,
	o => \md[13]~output_o\);

-- Location: IOOBUF_X31_Y13_N2
\md[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|md_r|c:14:dff32|dff0|q~q\,
	oe => \md_write~input_o\,
	devoe => ww_devoe,
	o => \md[14]~output_o\);

-- Location: IOOBUF_X31_Y13_N23
\md[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|md_r|c:15:dff32|dff0|q~q\,
	oe => \md_write~input_o\,
	devoe => ww_devoe,
	o => \md[15]~output_o\);

-- Location: IOOBUF_X19_Y0_N30
\md[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|md_r|c:16:dff32|dff0|q~q\,
	oe => \md_write~input_o\,
	devoe => ww_devoe,
	o => \md[16]~output_o\);

-- Location: IOOBUF_X19_Y0_N9
\md[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|md_r|c:17:dff32|dff0|q~q\,
	oe => \md_write~input_o\,
	devoe => ww_devoe,
	o => \md[17]~output_o\);

-- Location: IOOBUF_X17_Y0_N16
\md[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|md_r|c:18:dff32|dff0|q~q\,
	oe => \md_write~input_o\,
	devoe => ww_devoe,
	o => \md[18]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\md[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|md_r|c:19:dff32|dff0|q~q\,
	oe => \md_write~input_o\,
	devoe => ww_devoe,
	o => \md[19]~output_o\);

-- Location: IOOBUF_X19_Y0_N2
\md[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|md_r|c:20:dff32|dff0|q~q\,
	oe => \md_write~input_o\,
	devoe => ww_devoe,
	o => \md[20]~output_o\);

-- Location: IOOBUF_X19_Y0_N23
\md[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|md_r|c:21:dff32|dff0|q~q\,
	oe => \md_write~input_o\,
	devoe => ww_devoe,
	o => \md[21]~output_o\);

-- Location: IOOBUF_X22_Y0_N23
\md[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|md_r|c:22:dff32|dff0|q~q\,
	oe => \md_write~input_o\,
	devoe => ww_devoe,
	o => \md[22]~output_o\);

-- Location: IOOBUF_X22_Y0_N30
\md[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|md_r|c:23:dff32|dff0|q~q\,
	oe => \md_write~input_o\,
	devoe => ww_devoe,
	o => \md[23]~output_o\);

-- Location: IOOBUF_X10_Y15_N23
\md[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|md_r|c:24:dff32|dff0|q~q\,
	oe => \md_write~input_o\,
	devoe => ww_devoe,
	o => \md[24]~output_o\);

-- Location: IOOBUF_X13_Y0_N9
\md[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|md_r|c:25:dff32|dff0|q~q\,
	oe => \md_write~input_o\,
	devoe => ww_devoe,
	o => \md[25]~output_o\);

-- Location: IOOBUF_X17_Y0_N30
\md[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|md_r|c:26:dff32|dff0|q~q\,
	oe => \md_write~input_o\,
	devoe => ww_devoe,
	o => \md[26]~output_o\);

-- Location: IOOBUF_X13_Y0_N30
\md[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|md_r|c:27:dff32|dff0|q~q\,
	oe => \md_write~input_o\,
	devoe => ww_devoe,
	o => \md[27]~output_o\);

-- Location: IOOBUF_X19_Y0_N16
\md[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|md_r|c:28:dff32|dff0|q~q\,
	oe => \md_write~input_o\,
	devoe => ww_devoe,
	o => \md[28]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\md[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|md_r|c:29:dff32|dff0|q~q\,
	oe => \md_write~input_o\,
	devoe => ww_devoe,
	o => \md[29]~output_o\);

-- Location: IOOBUF_X17_Y0_N2
\md[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|md_r|c:30:dff32|dff0|q~q\,
	oe => \md_write~input_o\,
	devoe => ww_devoe,
	o => \md[30]~output_o\);

-- Location: IOOBUF_X17_Y0_N9
\md[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|md_r|c:31:dff32|dff0|q~q\,
	oe => \md_write~input_o\,
	devoe => ww_devoe,
	o => \md[31]~output_o\);

-- Location: IOOBUF_X6_Y10_N16
\r~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cu|clock_logic|jk1|q~q\,
	devoe => ww_devoe,
	o => \r~output_o\);

-- Location: IOOBUF_X10_Y21_N23
\w~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cu|clock_logic|jk2|q~q\,
	devoe => ww_devoe,
	o => \w~output_o\);

-- Location: IOOBUF_X6_Y10_N9
\ma[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|ma_r|c:0:dff32|dff0|q~q\,
	devoe => ww_devoe,
	o => \ma[0]~output_o\);

-- Location: IOOBUF_X31_Y14_N23
\ma[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|ma_r|c:1:dff32|dff0|q~q\,
	devoe => ww_devoe,
	o => \ma[1]~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\ma[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|ma_r|c:2:dff32|dff0|q~q\,
	devoe => ww_devoe,
	o => \ma[2]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\ma[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|ma_r|c:3:dff32|dff0|q~q\,
	devoe => ww_devoe,
	o => \ma[3]~output_o\);

-- Location: IOOBUF_X6_Y10_N30
\ma[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|ma_r|c:4:dff32|dff0|q~q\,
	devoe => ww_devoe,
	o => \ma[4]~output_o\);

-- Location: IOOBUF_X31_Y13_N16
\ma[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|ma_r|c:5:dff32|dff0|q~q\,
	devoe => ww_devoe,
	o => \ma[5]~output_o\);

-- Location: IOOBUF_X11_Y0_N30
\ma[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|ma_r|c:6:dff32|dff0|q~q\,
	devoe => ww_devoe,
	o => \ma[6]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\ma[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|ma_r|c:7:dff32|dff0|q~q\,
	devoe => ww_devoe,
	o => \ma[7]~output_o\);

-- Location: IOOBUF_X6_Y0_N23
\ma[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|ma_r|c:8:dff32|dff0|q~q\,
	devoe => ww_devoe,
	o => \ma[8]~output_o\);

-- Location: IOOBUF_X31_Y12_N23
\ma[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|ma_r|c:9:dff32|dff0|q~q\,
	devoe => ww_devoe,
	o => \ma[9]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\ma[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|ma_r|c:10:dff32|dff0|q~q\,
	devoe => ww_devoe,
	o => \ma[10]~output_o\);

-- Location: IOOBUF_X31_Y5_N16
\ma[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|ma_r|c:11:dff32|dff0|q~q\,
	devoe => ww_devoe,
	o => \ma[11]~output_o\);

-- Location: IOOBUF_X31_Y11_N9
\ma[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|ma_r|c:12:dff32|dff0|q~q\,
	devoe => ww_devoe,
	o => \ma[12]~output_o\);

-- Location: IOOBUF_X31_Y13_N9
\ma[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|ma_r|c:13:dff32|dff0|q~q\,
	devoe => ww_devoe,
	o => \ma[13]~output_o\);

-- Location: IOOBUF_X31_Y4_N2
\ma[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|ma_r|c:14:dff32|dff0|q~q\,
	devoe => ww_devoe,
	o => \ma[14]~output_o\);

-- Location: IOOBUF_X31_Y11_N16
\ma[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|ma_r|c:15:dff32|dff0|q~q\,
	devoe => ww_devoe,
	o => \ma[15]~output_o\);

-- Location: IOOBUF_X15_Y0_N2
\ma[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|ma_r|c:16:dff32|dff0|q~q\,
	devoe => ww_devoe,
	o => \ma[16]~output_o\);

-- Location: IOOBUF_X15_Y0_N16
\ma[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|ma_r|c:17:dff32|dff0|q~q\,
	devoe => ww_devoe,
	o => \ma[17]~output_o\);

-- Location: IOOBUF_X15_Y0_N23
\ma[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|ma_r|c:18:dff32|dff0|q~q\,
	devoe => ww_devoe,
	o => \ma[18]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\ma[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|ma_r|c:19:dff32|dff0|q~q\,
	devoe => ww_devoe,
	o => \ma[19]~output_o\);

-- Location: IOOBUF_X22_Y0_N16
\ma[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|ma_r|c:20:dff32|dff0|q~q\,
	devoe => ww_devoe,
	o => \ma[20]~output_o\);

-- Location: IOOBUF_X24_Y0_N23
\ma[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|ma_r|c:21:dff32|dff0|q~q\,
	devoe => ww_devoe,
	o => \ma[21]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\ma[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|ma_r|c:22:dff32|dff0|q~q\,
	devoe => ww_devoe,
	o => \ma[22]~output_o\);

-- Location: IOOBUF_X31_Y14_N2
\ma[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|ma_r|c:23:dff32|dff0|q~q\,
	devoe => ww_devoe,
	o => \ma[23]~output_o\);

-- Location: IOOBUF_X15_Y0_N9
\ma[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|ma_r|c:24:dff32|dff0|q~q\,
	devoe => ww_devoe,
	o => \ma[24]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\ma[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|ma_r|c:25:dff32|dff0|q~q\,
	devoe => ww_devoe,
	o => \ma[25]~output_o\);

-- Location: IOOBUF_X15_Y0_N30
\ma[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|ma_r|c:26:dff32|dff0|q~q\,
	devoe => ww_devoe,
	o => \ma[26]~output_o\);

-- Location: IOOBUF_X31_Y9_N16
\ma[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|ma_r|c:27:dff32|dff0|q~q\,
	devoe => ww_devoe,
	o => \ma[27]~output_o\);

-- Location: IOOBUF_X31_Y7_N16
\ma[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|ma_r|c:28:dff32|dff0|q~q\,
	devoe => ww_devoe,
	o => \ma[28]~output_o\);

-- Location: IOOBUF_X13_Y0_N23
\ma[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|ma_r|c:29:dff32|dff0|q~q\,
	devoe => ww_devoe,
	o => \ma[29]~output_o\);

-- Location: IOOBUF_X6_Y10_N2
\ma[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|ma_r|c:30:dff32|dff0|q~q\,
	devoe => ww_devoe,
	o => \ma[30]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\ma[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|MEML|ma_r|c:31:dff32|dff0|q~q\,
	devoe => ww_devoe,
	o => \ma[31]~output_o\);

-- Location: IOIBUF_X0_Y6_N15
\master_clock~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_master_clock,
	o => \master_clock~input_o\);

-- Location: CLKCTRL_G3
\master_clock~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \master_clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \master_clock~inputclkctrl_outclk\);

-- Location: LCCOMB_X15_Y12_N10
\cu|st|con|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|st|con|Add0~0_combout\ = \cu|st|con|count_i\(2) $ (((\cu|st|con|count_i\(1) & \cu|st|con|count_i\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(1),
	datac => \cu|st|con|count_i\(0),
	datad => \cu|st|con|count_i\(2),
	combout => \cu|st|con|Add0~0_combout\);

-- Location: LCCOMB_X15_Y11_N10
\cu|st|con|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|st|con|Equal0~0_combout\ = (\cu|st|con|count_i\(2) & (\cu|st|con|count_i\(1) & \cu|st|con|count_i\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cu|st|con|count_i\(2),
	datac => \cu|st|con|count_i\(1),
	datad => \cu|st|con|count_i\(0),
	combout => \cu|st|con|Equal0~0_combout\);

-- Location: LCCOMB_X15_Y11_N4
\cu|st|dec|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|st|dec|Mux0~1_combout\ = (\cu|st|con|count_i\(0) & (!\cu|st|con|count_i\(2) & !\cu|st|con|count_i\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(0),
	datab => \cu|st|con|count_i\(2),
	datac => \cu|st|con|count_i\(1),
	combout => \cu|st|dec|Mux0~1_combout\);

-- Location: LCCOMB_X15_Y11_N24
\cu|st|dec|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|st|dec|Mux0~2_combout\ = (!\cu|st|con|count_i\(0) & (!\cu|st|con|count_i\(1) & \cu|st|con|count_i\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(0),
	datac => \cu|st|con|count_i\(1),
	datad => \cu|st|con|count_i\(2),
	combout => \cu|st|dec|Mux0~2_combout\);

-- Location: LCCOMB_X15_Y11_N8
\cu|st|dec|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|st|dec|Mux0~4_combout\ = (\cu|st|con|count_i\(0) & (!\cu|st|con|count_i\(1) & \cu|st|con|count_i\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(0),
	datac => \cu|st|con|count_i\(1),
	datad => \cu|st|con|count_i\(2),
	combout => \cu|st|dec|Mux0~4_combout\);

-- Location: LCCOMB_X17_Y10_N14
\cu|control|NOTOP\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|control|NOTOP~combout\ = (\dp|IRL|ir31|dff0|q~q\ & (\cu|st|dec|Mux0~3_combout\ & (!\dp|IRL|ir29|dff0|q~q\ & !\dp|IRL|ir28|dff0|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|IRL|ir31|dff0|q~q\,
	datab => \cu|st|dec|Mux0~3_combout\,
	datac => \dp|IRL|ir29|dff0|q~q\,
	datad => \dp|IRL|ir28|dff0|q~q\,
	combout => \cu|control|NOTOP~combout\);

-- Location: LCCOMB_X23_Y7_N26
\dp|ALUL|regA|A_R|c:28:dff32|dff0|q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regA|A_R|c:28:dff32|dff0|q~feeder_combout\ = \dp|ALUL|regC|BF1|c:28:buf32|output~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|ALUL|regC|BF1|c:28:buf32|output~3_combout\,
	combout => \dp|ALUL|regA|A_R|c:28:dff32|dff0|q~feeder_combout\);

-- Location: IOIBUF_X0_Y6_N22
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G4
\reset~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: LCCOMB_X17_Y10_N4
\cu|control|Ain\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|control|Ain~combout\ = (!\cu|st|con|count_i\(2) & (\cu|st|con|count_i\(0) & (\cu|control|Cout~1_combout\ & \cu|st|con|count_i\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(2),
	datab => \cu|st|con|count_i\(0),
	datac => \cu|control|Cout~1_combout\,
	datad => \cu|st|con|count_i\(1),
	combout => \cu|control|Ain~combout\);

-- Location: FF_X23_Y7_N27
\dp|ALUL|regA|A_R|c:28:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|ALUL|regA|A_R|c:28:dff32|dff0|q~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regA|A_R|c:28:dff32|dff0|q~q\);

-- Location: LCCOMB_X23_Y7_N10
\dp|ALUL|regC|DFF1|c:28:dff32|d_input~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:28:dff32|d_input~3_combout\ = (!\cu|st|con|count_i\(0) & (!\cu|st|con|count_i\(1) & ((\dp|ALUL|regA|A_R|c:28:dff32|dff0|q~q\) # (\dp|IRL|ir28|dff0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regA|A_R|c:28:dff32|dff0|q~q\,
	datab => \dp|IRL|ir28|dff0|q~q\,
	datac => \cu|st|con|count_i\(0),
	datad => \cu|st|con|count_i\(1),
	combout => \dp|ALUL|regC|DFF1|c:28:dff32|d_input~3_combout\);

-- Location: LCCOMB_X23_Y7_N4
\dp|ALUL|regC|DFF1|c:28:dff32|d_input~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:28:dff32|d_input~20_combout\ = (\dp|ALUL|regC|DFF1|c:28:dff32|d_input~3_combout\ & (\dp|IRL|ir31|dff0|q~q\ & (\cu|st|con|count_i\(2) & !\dp|IRL|ir30|dff0|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:28:dff32|d_input~3_combout\,
	datab => \dp|IRL|ir31|dff0|q~q\,
	datac => \cu|st|con|count_i\(2),
	datad => \dp|IRL|ir30|dff0|q~q\,
	combout => \dp|ALUL|regC|DFF1|c:28:dff32|d_input~20_combout\);

-- Location: LCCOMB_X15_Y12_N0
\cu|control|CB\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|control|CB~combout\ = (!\cu|control|CB~2_combout\ & (\cu|st|con|count_i\(0) & (!\cu|st|con|count_i\(1) & \cu|st|con|count_i\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|CB~2_combout\,
	datab => \cu|st|con|count_i\(0),
	datac => \cu|st|con|count_i\(1),
	datad => \cu|st|con|count_i\(2),
	combout => \cu|control|CB~combout\);

-- Location: LCCOMB_X23_Y11_N18
\dp|ALUL|regC|DFF1|c:28:dff32|d_input~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:28:dff32|d_input~18_combout\ = (\dp|ALUL|regC|BF1|c:28:buf32|output~3_combout\ & (((\dp|ALUL|regC|DFF1|c:28:dff32|d_input~20_combout\) # (\cu|control|CB~combout\)))) # (!\dp|ALUL|regC|BF1|c:28:buf32|output~3_combout\ & 
-- (\cu|control|NOTOP~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|NOTOP~combout\,
	datab => \dp|ALUL|regC|DFF1|c:28:dff32|d_input~20_combout\,
	datac => \cu|control|CB~combout\,
	datad => \dp|ALUL|regC|BF1|c:28:buf32|output~3_combout\,
	combout => \dp|ALUL|regC|DFF1|c:28:dff32|d_input~18_combout\);

-- Location: LCCOMB_X17_Y11_N2
\cu|de|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|de|Mux9~0_combout\ = (\dp|IRL|ir27|dff0|q~q\) # ((\dp|IRL|ir30|dff0|q~q\ & ((!\dp|IRL|ir31|dff0|q~q\) # (!\dp|IRL|ir28|dff0|q~q\))) # (!\dp|IRL|ir30|dff0|q~q\ & ((\dp|IRL|ir28|dff0|q~q\) # (\dp|IRL|ir31|dff0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|IRL|ir27|dff0|q~q\,
	datab => \dp|IRL|ir30|dff0|q~q\,
	datac => \dp|IRL|ir28|dff0|q~q\,
	datad => \dp|IRL|ir31|dff0|q~q\,
	combout => \cu|de|Mux9~0_combout\);

-- Location: LCCOMB_X13_Y11_N0
\dp|ALUL|r_s|Eout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|r_s|Eout~0_combout\ = (\cu|st|dec|Mux0~0_combout\ & (\dp|shLable|n_equ_zero~1_combout\ & ((\cu|de|Mux10~0_combout\) # (!\cu|de|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|de|Mux9~0_combout\,
	datab => \cu|st|dec|Mux0~0_combout\,
	datac => \cu|de|Mux10~0_combout\,
	datad => \dp|shLable|n_equ_zero~1_combout\,
	combout => \dp|ALUL|r_s|Eout~0_combout\);

-- Location: LCCOMB_X17_Y11_N18
\cu|de|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|de|Mux12~0_combout\ = (\dp|IRL|ir27|dff0|q~q\ & (\dp|IRL|ir30|dff0|q~q\ & (!\dp|IRL|ir28|dff0|q~q\ & \dp|IRL|ir31|dff0|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|IRL|ir27|dff0|q~q\,
	datab => \dp|IRL|ir30|dff0|q~q\,
	datac => \dp|IRL|ir28|dff0|q~q\,
	datad => \dp|IRL|ir31|dff0|q~q\,
	combout => \cu|de|Mux12~0_combout\);

-- Location: LCCOMB_X17_Y11_N4
\cu|de|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|de|Mux11~0_combout\ = (!\dp|IRL|ir27|dff0|q~q\ & (\dp|IRL|ir29|dff0|q~q\ & (\dp|IRL|ir30|dff0|q~q\ & \dp|IRL|ir31|dff0|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|IRL|ir27|dff0|q~q\,
	datab => \dp|IRL|ir29|dff0|q~q\,
	datac => \dp|IRL|ir30|dff0|q~q\,
	datad => \dp|IRL|ir31|dff0|q~q\,
	combout => \cu|de|Mux11~0_combout\);

-- Location: LCCOMB_X13_Y11_N20
\dp|ALUL|l_s|Eout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|l_s|Eout~0_combout\ = (\dp|shLable|n_equ_zero~1_combout\ & (\cu|st|dec|Mux0~0_combout\ & ((\cu|de|Mux12~0_combout\) # (\cu|de|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|de|Mux12~0_combout\,
	datab => \dp|shLable|n_equ_zero~1_combout\,
	datac => \cu|de|Mux11~0_combout\,
	datad => \cu|st|dec|Mux0~0_combout\,
	combout => \dp|ALUL|l_s|Eout~0_combout\);

-- Location: LCCOMB_X23_Y11_N28
\dp|ALUL|regC|DFF1|c:28:dff32|d_input~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:28:dff32|d_input~17_combout\ = (\dp|ALUL|r_s|Eout~0_combout\ & ((\dp|ALUL|regC|BF1|c:29:buf32|output~3_combout\) # ((\dp|ALUL|l_s|Eout~0_combout\ & \dp|ALUL|regC|BF1|c:27:buf32|output~3_combout\)))) # (!\dp|ALUL|r_s|Eout~0_combout\ & 
-- (\dp|ALUL|l_s|Eout~0_combout\ & (\dp|ALUL|regC|BF1|c:27:buf32|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|r_s|Eout~0_combout\,
	datab => \dp|ALUL|l_s|Eout~0_combout\,
	datac => \dp|ALUL|regC|BF1|c:27:buf32|output~3_combout\,
	datad => \dp|ALUL|regC|BF1|c:29:buf32|output~3_combout\,
	combout => \dp|ALUL|regC|DFF1|c:28:dff32|d_input~17_combout\);

-- Location: LCCOMB_X18_Y9_N26
\dp|ALUL|regC|DFF1|c:0:dff32|d_input~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\ = (\dp|IRL|ir28|dff0|q~q\ & (\dp|IRL|ir31|dff0|q~q\ & (!\dp|IRL|ir30|dff0|q~q\ & \cu|st|dec|Mux0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|IRL|ir28|dff0|q~q\,
	datab => \dp|IRL|ir31|dff0|q~q\,
	datac => \dp|IRL|ir30|dff0|q~q\,
	datad => \cu|st|dec|Mux0~2_combout\,
	combout => \dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\);

-- Location: LCCOMB_X17_Y11_N12
\cu|de|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|de|Mux8~0_combout\ = (\dp|IRL|ir28|dff0|q~q\ & (\dp|IRL|ir30|dff0|q~q\ & (\dp|IRL|ir27|dff0|q~q\ & !\dp|IRL|ir31|dff0|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|IRL|ir28|dff0|q~q\,
	datab => \dp|IRL|ir30|dff0|q~q\,
	datac => \dp|IRL|ir27|dff0|q~q\,
	datad => \dp|IRL|ir31|dff0|q~q\,
	combout => \cu|de|Mux8~0_combout\);

-- Location: LCCOMB_X15_Y12_N14
\cu|control|NEG\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|control|NEG~combout\ = (\cu|st|con|count_i\(1) & (\cu|st|con|count_i\(0) & (\cu|de|Mux8~0_combout\ & !\cu|st|con|count_i\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(1),
	datab => \cu|st|con|count_i\(0),
	datac => \cu|de|Mux8~0_combout\,
	datad => \cu|st|con|count_i\(2),
	combout => \cu|control|NEG~combout\);

-- Location: LCCOMB_X14_Y11_N24
\cu|de|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|de|Mux7~0_combout\ = (!\dp|IRL|ir29|dff0|q~q\ & (!\dp|IRL|ir28|dff0|q~q\ & \dp|IRL|ir31|dff0|q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|IRL|ir29|dff0|q~q\,
	datac => \dp|IRL|ir28|dff0|q~q\,
	datad => \dp|IRL|ir31|dff0|q~q\,
	combout => \cu|de|Mux7~0_combout\);

-- Location: LCCOMB_X17_Y12_N24
\cu|de|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|de|Mux2~0_combout\ = (!\dp|IRL|ir31|dff0|q~q\ & (\dp|IRL|ir30|dff0|q~q\ & (\dp|IRL|ir28|dff0|q~q\ & !\dp|IRL|ir27|dff0|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|IRL|ir31|dff0|q~q\,
	datab => \dp|IRL|ir30|dff0|q~q\,
	datac => \dp|IRL|ir28|dff0|q~q\,
	datad => \dp|IRL|ir27|dff0|q~q\,
	combout => \cu|de|Mux2~0_combout\);

-- Location: LCCOMB_X17_Y12_N30
\cu|control|Sub\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|control|Sub~combout\ = (!\cu|st|con|count_i\(1) & (\cu|st|con|count_i\(2) & (!\cu|st|con|count_i\(0) & \cu|de|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(1),
	datab => \cu|st|con|count_i\(2),
	datac => \cu|st|con|count_i\(0),
	datad => \cu|de|Mux2~0_combout\,
	combout => \cu|control|Sub~combout\);

-- Location: LCCOMB_X19_Y11_N4
\dp|ALUL|add|b_inv\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|b_inv~combout\ = (\cu|control|Sub~combout\) # ((\cu|st|dec|Mux0~3_combout\ & ((\cu|de|Mux7~0_combout\) # (\cu|de|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|de|Mux7~0_combout\,
	datab => \cu|control|Sub~combout\,
	datac => \cu|st|dec|Mux0~3_combout\,
	datad => \cu|de|Mux8~0_combout\,
	combout => \dp|ALUL|add|b_inv~combout\);

-- Location: LCCOMB_X18_Y11_N0
\cu|de|Mux19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|de|Mux19~0_combout\ = (\dp|IRL|ir29|dff0|q~q\ & (!\dp|IRL|ir31|dff0|q~q\ & (!\dp|IRL|ir30|dff0|q~q\ & \dp|IRL|ir28|dff0|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|IRL|ir29|dff0|q~q\,
	datab => \dp|IRL|ir31|dff0|q~q\,
	datac => \dp|IRL|ir30|dff0|q~q\,
	datad => \dp|IRL|ir28|dff0|q~q\,
	combout => \cu|de|Mux19~0_combout\);

-- Location: LCCOMB_X15_Y11_N22
\cu|de|Mux16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|de|Mux16~0_combout\ = (!\dp|IRL|ir27|dff0|q~q\ & (!\dp|IRL|ir30|dff0|q~q\ & !\dp|IRL|ir29|dff0|q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|IRL|ir27|dff0|q~q\,
	datac => \dp|IRL|ir30|dff0|q~q\,
	datad => \dp|IRL|ir29|dff0|q~q\,
	combout => \cu|de|Mux16~0_combout\);

-- Location: LCCOMB_X15_Y11_N28
\cu|control|PCout~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|control|PCout~2_combout\ = (\cu|st|dec|Mux0~3_combout\ & ((\cu|de|Mux19~0_combout\) # ((\cu|de|Mux16~0_combout\) # (\cu|de|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|de|Mux19~0_combout\,
	datab => \cu|st|dec|Mux0~3_combout\,
	datac => \cu|de|Mux16~0_combout\,
	datad => \cu|de|Mux14~0_combout\,
	combout => \cu|control|PCout~2_combout\);

-- Location: LCCOMB_X15_Y11_N30
\cu|control|PCout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|control|PCout~combout\ = (\cu|control|PCout~2_combout\) # ((!\cu|st|con|count_i\(0) & (!\cu|st|con|count_i\(2) & !\cu|st|con|count_i\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(0),
	datab => \cu|st|con|count_i\(2),
	datac => \cu|st|con|count_i\(1),
	datad => \cu|control|PCout~2_combout\,
	combout => \cu|control|PCout~combout\);

-- Location: LCCOMB_X18_Y11_N2
\cu|de|Mux17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|de|Mux17~0_combout\ = (\dp|IRL|ir27|dff0|q~q\ & (!\dp|IRL|ir31|dff0|q~q\ & (!\dp|IRL|ir30|dff0|q~q\ & \dp|IRL|ir28|dff0|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|IRL|ir27|dff0|q~q\,
	datab => \dp|IRL|ir31|dff0|q~q\,
	datac => \dp|IRL|ir30|dff0|q~q\,
	datad => \dp|IRL|ir28|dff0|q~q\,
	combout => \cu|de|Mux17~0_combout\);

-- Location: LCCOMB_X15_Y11_N16
\cu|control|MDin\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|control|MDin~combout\ = (\cu|st|con|count_i\(2) & (\cu|st|con|count_i\(1) & (!\cu|st|con|count_i\(0) & \cu|de|Mux17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(2),
	datab => \cu|st|con|count_i\(1),
	datac => \cu|st|con|count_i\(0),
	datad => \cu|de|Mux17~0_combout\,
	combout => \cu|control|MDin~combout\);

-- Location: IOIBUF_X13_Y0_N29
\md[27]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => md(27),
	o => \md[27]~input_o\);

-- Location: IOIBUF_X31_Y7_N22
\md_read~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_md_read,
	o => \md_read~input_o\);

-- Location: LCCOMB_X17_Y7_N12
\dp|MEML|or_G[27]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|MEML|or_G\(27) = (\dp|ALUL|regC|BF1|c:27:buf32|output~3_combout\ & ((\cu|control|MDin~combout\) # ((\md[27]~input_o\ & \md_read~input_o\)))) # (!\dp|ALUL|regC|BF1|c:27:buf32|output~3_combout\ & (((\md[27]~input_o\ & \md_read~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:27:buf32|output~3_combout\,
	datab => \cu|control|MDin~combout\,
	datac => \md[27]~input_o\,
	datad => \md_read~input_o\,
	combout => \dp|MEML|or_G\(27));

-- Location: LCCOMB_X16_Y12_N28
\dp|MEML|md_in\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|MEML|md_in~combout\ = (\md_read~input_o\) # ((\cu|st|dec|Mux0~0_combout\ & \cu|de|Mux17~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \md_read~input_o\,
	datab => \cu|st|dec|Mux0~0_combout\,
	datad => \cu|de|Mux17~0_combout\,
	combout => \dp|MEML|md_in~combout\);

-- Location: FF_X17_Y7_N13
\dp|MEML|md_r|c:27:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|MEML|or_G\(27),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \dp|MEML|md_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|md_r|c:27:dff32|dff0|q~q\);

-- Location: LCCOMB_X14_Y11_N18
\cu|de|Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|de|Mux13~0_combout\ = (!\dp|IRL|ir29|dff0|q~q\ & (!\dp|IRL|ir31|dff0|q~q\ & (\dp|IRL|ir30|dff0|q~q\ & !\dp|IRL|ir27|dff0|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|IRL|ir29|dff0|q~q\,
	datab => \dp|IRL|ir31|dff0|q~q\,
	datac => \dp|IRL|ir30|dff0|q~q\,
	datad => \dp|IRL|ir27|dff0|q~q\,
	combout => \cu|de|Mux13~0_combout\);

-- Location: LCCOMB_X14_Y11_N30
\cu|control|CONin\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|control|CONin~combout\ = (\cu|de|Mux14~0_combout\ & ((\cu|st|dec|Mux0~2_combout\) # ((\cu|st|dec|Mux0~3_combout\ & \cu|de|Mux13~0_combout\)))) # (!\cu|de|Mux14~0_combout\ & (((\cu|st|dec|Mux0~3_combout\ & \cu|de|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|de|Mux14~0_combout\,
	datab => \cu|st|dec|Mux0~2_combout\,
	datac => \cu|st|dec|Mux0~3_combout\,
	datad => \cu|de|Mux13~0_combout\,
	combout => \cu|control|CONin~combout\);

-- Location: IOIBUF_X10_Y20_N15
\md[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => md(1),
	o => \md[1]~input_o\);

-- Location: LCCOMB_X16_Y12_N18
\dp|MEML|or_G[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|MEML|or_G\(1) = (\md_read~input_o\ & ((\md[1]~input_o\) # ((\dp|ALUL|regC|BF1|c:1:buf32|output~4_combout\ & \cu|control|MDin~combout\)))) # (!\md_read~input_o\ & (\dp|ALUL|regC|BF1|c:1:buf32|output~4_combout\ & ((\cu|control|MDin~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \md_read~input_o\,
	datab => \dp|ALUL|regC|BF1|c:1:buf32|output~4_combout\,
	datac => \md[1]~input_o\,
	datad => \cu|control|MDin~combout\,
	combout => \dp|MEML|or_G\(1));

-- Location: FF_X16_Y12_N19
\dp|MEML|md_r|c:1:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|MEML|or_G\(1),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \dp|MEML|md_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|md_r|c:1:dff32|dff0|q~q\);

-- Location: LCCOMB_X17_Y12_N28
\cu|control|MDout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|control|MDout~0_combout\ = (\cu|st|con|count_i\(1) & ((\cu|st|con|count_i\(2) & (\cu|st|con|count_i\(0) & !\cu|clock_logic|jk1|q~0_combout\)) # (!\cu|st|con|count_i\(2) & (!\cu|st|con|count_i\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(1),
	datab => \cu|st|con|count_i\(2),
	datac => \cu|st|con|count_i\(0),
	datad => \cu|clock_logic|jk1|q~0_combout\,
	combout => \cu|control|MDout~0_combout\);

-- Location: FF_X17_Y13_N15
\dp|ALUL|regA|A_R|c:1:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:1:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|control|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regA|A_R|c:1:dff32|dff0|q~q\);

-- Location: LCCOMB_X18_Y13_N0
\dp|ALUL|regC|DFF1|c:1:dff32|d_input~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:1:dff32|d_input~3_combout\ = (!\cu|st|con|count_i\(0) & (!\cu|st|con|count_i\(1) & ((\dp|IRL|ir28|dff0|q~q\) # (\dp|ALUL|regA|A_R|c:1:dff32|dff0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|IRL|ir28|dff0|q~q\,
	datab => \cu|st|con|count_i\(0),
	datac => \cu|st|con|count_i\(1),
	datad => \dp|ALUL|regA|A_R|c:1:dff32|dff0|q~q\,
	combout => \dp|ALUL|regC|DFF1|c:1:dff32|d_input~3_combout\);

-- Location: LCCOMB_X17_Y13_N26
\dp|ALUL|regC|DFF1|c:1:dff32|d_input~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:1:dff32|d_input~20_combout\ = (!\dp|IRL|ir30|dff0|q~q\ & (\dp|IRL|ir31|dff0|q~q\ & (\dp|ALUL|regC|DFF1|c:1:dff32|d_input~3_combout\ & \cu|st|con|count_i\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|IRL|ir30|dff0|q~q\,
	datab => \dp|IRL|ir31|dff0|q~q\,
	datac => \dp|ALUL|regC|DFF1|c:1:dff32|d_input~3_combout\,
	datad => \cu|st|con|count_i\(2),
	combout => \dp|ALUL|regC|DFF1|c:1:dff32|d_input~20_combout\);

-- Location: LCCOMB_X17_Y13_N18
\dp|ALUL|regC|DFF1|c:1:dff32|d_input~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:1:dff32|d_input~17_combout\ = (\dp|ALUL|regC|BF1|c:1:buf32|output~4_combout\ & ((\dp|ALUL|regC|DFF1|c:1:dff32|d_input~20_combout\) # (\cu|control|CB~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:1:dff32|d_input~20_combout\,
	datab => \dp|ALUL|regC|BF1|c:1:buf32|output~4_combout\,
	datad => \cu|control|CB~combout\,
	combout => \dp|ALUL|regC|DFF1|c:1:dff32|d_input~17_combout\);

-- Location: IOIBUF_X17_Y0_N22
\md[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => md(2),
	o => \md[2]~input_o\);

-- Location: LCCOMB_X19_Y4_N30
\dp|MEML|or_G[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|MEML|or_G\(2) = (\md_read~input_o\ & ((\md[2]~input_o\) # ((\dp|ALUL|regC|BF1|c:2:buf32|output~3_combout\ & \cu|control|MDin~combout\)))) # (!\md_read~input_o\ & (((\dp|ALUL|regC|BF1|c:2:buf32|output~3_combout\ & \cu|control|MDin~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \md_read~input_o\,
	datab => \md[2]~input_o\,
	datac => \dp|ALUL|regC|BF1|c:2:buf32|output~3_combout\,
	datad => \cu|control|MDin~combout\,
	combout => \dp|MEML|or_G\(2));

-- Location: LCCOMB_X17_Y7_N8
\dp|MEML|md_r|c:2:dff32|dff0|q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|MEML|md_r|c:2:dff32|dff0|q~feeder_combout\ = \dp|MEML|or_G\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|MEML|or_G\(2),
	combout => \dp|MEML|md_r|c:2:dff32|dff0|q~feeder_combout\);

-- Location: FF_X17_Y7_N9
\dp|MEML|md_r|c:2:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|MEML|md_r|c:2:dff32|dff0|q~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \dp|MEML|md_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|md_r|c:2:dff32|dff0|q~q\);

-- Location: LCCOMB_X16_Y10_N10
\dp|MEML|buff1|c:2:buf32|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|MEML|buff1|c:2:buf32|output~0_combout\ = (\dp|MEML|md_r|c:2:dff32|dff0|q~q\) # (!\cu|control|MDout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|MEML|md_r|c:2:dff32|dff0|q~q\,
	datad => \cu|control|MDout~0_combout\,
	combout => \dp|MEML|buff1|c:2:buf32|output~0_combout\);

-- Location: FF_X17_Y10_N9
\dp|ALUL|regA|A_R|c:2:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:2:buf32|output~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|control|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regA|A_R|c:2:dff32|dff0|q~q\);

-- Location: LCCOMB_X17_Y10_N18
\dp|ALUL|regC|DFF1|c:2:dff32|d_input~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:2:dff32|d_input~3_combout\ = (!\cu|st|con|count_i\(1) & (!\cu|st|con|count_i\(0) & ((\dp|IRL|ir28|dff0|q~q\) # (\dp|ALUL|regA|A_R|c:2:dff32|dff0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(1),
	datab => \dp|IRL|ir28|dff0|q~q\,
	datac => \dp|ALUL|regA|A_R|c:2:dff32|dff0|q~q\,
	datad => \cu|st|con|count_i\(0),
	combout => \dp|ALUL|regC|DFF1|c:2:dff32|d_input~3_combout\);

-- Location: LCCOMB_X17_Y10_N28
\dp|ALUL|regC|DFF1|c:2:dff32|d_input~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:2:dff32|d_input~20_combout\ = (!\dp|IRL|ir30|dff0|q~q\ & (\dp|IRL|ir31|dff0|q~q\ & (\cu|st|con|count_i\(2) & \dp|ALUL|regC|DFF1|c:2:dff32|d_input~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|IRL|ir30|dff0|q~q\,
	datab => \dp|IRL|ir31|dff0|q~q\,
	datac => \cu|st|con|count_i\(2),
	datad => \dp|ALUL|regC|DFF1|c:2:dff32|d_input~3_combout\,
	combout => \dp|ALUL|regC|DFF1|c:2:dff32|d_input~20_combout\);

-- Location: LCCOMB_X17_Y9_N22
\dp|ALUL|regC|DFF1|c:2:dff32|d_input~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:2:dff32|d_input~17_combout\ = (\dp|ALUL|regC|BF1|c:2:buf32|output~3_combout\ & ((\dp|ALUL|regC|DFF1|c:2:dff32|d_input~20_combout\) # (\cu|control|CB~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:2:dff32|d_input~20_combout\,
	datab => \dp|ALUL|regC|BF1|c:2:buf32|output~3_combout\,
	datad => \cu|control|CB~combout\,
	combout => \dp|ALUL|regC|DFF1|c:2:dff32|d_input~17_combout\);

-- Location: LCCOMB_X17_Y11_N16
\cu|control|Rin~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|control|Rin~0_combout\ = (\cu|st|dec|Mux0~2_combout\ & ((\cu|de|Mux7~0_combout\) # (\cu|de|Mux8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|de|Mux7~0_combout\,
	datac => \cu|de|Mux8~0_combout\,
	datad => \cu|st|dec|Mux0~2_combout\,
	combout => \cu|control|Rin~0_combout\);

-- Location: LCCOMB_X17_Y11_N22
\cu|control|Rin~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|control|Rin~3_combout\ = (!\cu|control|Rin~0_combout\ & (((\cu|clock_logic|jk1|q~0_combout\ & \cu|control|CB~2_combout\)) # (!\cu|st|con|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|clock_logic|jk1|q~0_combout\,
	datab => \cu|st|con|Equal0~0_combout\,
	datac => \cu|control|CB~2_combout\,
	datad => \cu|control|Rin~0_combout\,
	combout => \cu|control|Rin~3_combout\);

-- Location: LCCOMB_X18_Y11_N28
\cu|de|Mux18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|de|Mux18~0_combout\ = (\dp|IRL|ir29|dff0|q~q\ & (!\dp|IRL|ir30|dff0|q~q\ & (!\dp|IRL|ir31|dff0|q~q\ & \dp|IRL|ir27|dff0|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|IRL|ir29|dff0|q~q\,
	datab => \dp|IRL|ir30|dff0|q~q\,
	datac => \dp|IRL|ir31|dff0|q~q\,
	datad => \dp|IRL|ir27|dff0|q~q\,
	combout => \cu|de|Mux18~0_combout\);

-- Location: LCCOMB_X18_Y11_N26
\cu|control|Rin~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|control|Rin~1_combout\ = (!\cu|de|Mux18~0_combout\ & !\cu|de|Mux19~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|de|Mux18~0_combout\,
	datac => \cu|de|Mux19~0_combout\,
	combout => \cu|control|Rin~1_combout\);

-- Location: LCCOMB_X14_Y11_N28
\cu|de|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|de|Mux0~0_combout\ = (!\dp|IRL|ir27|dff0|q~q\ & (!\dp|IRL|ir28|dff0|q~q\ & (\dp|IRL|ir30|dff0|q~q\ & !\dp|IRL|ir31|dff0|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|IRL|ir27|dff0|q~q\,
	datab => \dp|IRL|ir28|dff0|q~q\,
	datac => \dp|IRL|ir30|dff0|q~q\,
	datad => \dp|IRL|ir31|dff0|q~q\,
	combout => \cu|de|Mux0~0_combout\);

-- Location: LCCOMB_X14_Y11_N2
\cu|control|Rout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|control|Rout~0_combout\ = (\dp|IRL|ir27|dff0|q~q\) # ((\dp|IRL|ir30|dff0|q~q\ & ((\dp|IRL|ir31|dff0|q~q\) # (!\dp|IRL|ir28|dff0|q~q\))) # (!\dp|IRL|ir30|dff0|q~q\ & ((!\dp|IRL|ir31|dff0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|IRL|ir27|dff0|q~q\,
	datab => \dp|IRL|ir28|dff0|q~q\,
	datac => \dp|IRL|ir30|dff0|q~q\,
	datad => \dp|IRL|ir31|dff0|q~q\,
	combout => \cu|control|Rout~0_combout\);

-- Location: LCCOMB_X14_Y11_N6
\cu|control|Rout~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|control|Rout~1_combout\ = (\cu|control|Rout~0_combout\ & ((!\cu|de|Mux0~0_combout\) # (!\dp|IRL|ir29|dff0|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|IRL|ir29|dff0|q~q\,
	datab => \cu|de|Mux0~0_combout\,
	datad => \cu|control|Rout~0_combout\,
	combout => \cu|control|Rout~1_combout\);

-- Location: LCCOMB_X18_Y11_N24
\cu|control|Rin~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|control|Rin~2_combout\ = (\cu|st|dec|Mux0~4_combout\ & (((!\cu|control|Rout~1_combout\) # (!\cu|control|Rin~1_combout\)) # (!\cu|control|C2out~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|C2out~1_combout\,
	datab => \cu|st|dec|Mux0~4_combout\,
	datac => \cu|control|Rin~1_combout\,
	datad => \cu|control|Rout~1_combout\,
	combout => \cu|control|Rin~2_combout\);

-- Location: LCCOMB_X17_Y10_N2
\dp|RegFIleL|strop[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|RegFIleL|strop\(0) = (!\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & ((\cu|control|PCout~3_combout\) # ((\cu|control|Rin~2_combout\) # (!\cu|control|Rin~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|PCout~3_combout\,
	datab => \cu|control|Rin~3_combout\,
	datac => \cu|control|Rin~2_combout\,
	datad => \dp|RegFIleL|reg|input_decoder[0]~4_combout\,
	combout => \dp|RegFIleL|strop\(0));

-- Location: FF_X17_Y9_N29
\dp|RegFIleL|gen_reg0|dff|c:3:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:3:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|RegFIleL|strop\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg0|dff|c:3:dff32|dff0|q~q\);

-- Location: LCCOMB_X17_Y12_N10
\cu|control|BAout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|control|BAout~0_combout\ = (\cu|st|dec|Mux0~3_combout\ & ((\cu|de|Mux15~0_combout\) # ((\cu|de|Mux17~0_combout\) # (\cu|de|Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|dec|Mux0~3_combout\,
	datab => \cu|de|Mux15~0_combout\,
	datac => \cu|de|Mux17~0_combout\,
	datad => \cu|de|Mux18~0_combout\,
	combout => \cu|control|BAout~0_combout\);

-- Location: LCCOMB_X17_Y10_N12
\dp|RegFIleL|strop[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|RegFIleL|strop\(1) = (\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & ((\cu|control|PCout~3_combout\) # ((\cu|control|Rin~2_combout\) # (!\cu|control|Rin~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|PCout~3_combout\,
	datab => \cu|control|Rin~3_combout\,
	datac => \cu|control|Rin~2_combout\,
	datad => \dp|RegFIleL|reg|input_decoder[0]~4_combout\,
	combout => \dp|RegFIleL|strop\(1));

-- Location: FF_X17_Y13_N23
\dp|RegFIleL|gen_reg1|dffL|c:3:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:3:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|RegFIleL|strop\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg1|dffL|c:3:dff32|dff0|q~q\);

-- Location: LCCOMB_X17_Y13_N22
\dp|ALUL|regC|BF1|c:3:buf32|output~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:3:buf32|output~3_combout\ = (\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & (((\dp|RegFIleL|gen_reg1|dffL|c:3:dff32|dff0|q~q\)))) # (!\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & (\dp|RegFIleL|gen_reg0|dff|c:3:dff32|dff0|q~q\ & 
-- (!\cu|control|BAout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RegFIleL|gen_reg0|dff|c:3:dff32|dff0|q~q\,
	datab => \cu|control|BAout~0_combout\,
	datac => \dp|RegFIleL|gen_reg1|dffL|c:3:dff32|dff0|q~q\,
	datad => \dp|RegFIleL|reg|input_decoder[0]~4_combout\,
	combout => \dp|ALUL|regC|BF1|c:3:buf32|output~3_combout\);

-- Location: FF_X17_Y13_N19
\dp|ALUL|regA|A_R|c:3:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:3:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|control|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regA|A_R|c:3:dff32|dff0|q~q\);

-- Location: LCCOMB_X18_Y9_N22
\dp|ALUL|regC|DFF1|c:3:dff32|d_input~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:3:dff32|d_input~3_combout\ = (!\cu|st|con|count_i\(1) & (!\cu|st|con|count_i\(0) & ((\dp|IRL|ir28|dff0|q~q\) # (\dp|ALUL|regA|A_R|c:3:dff32|dff0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(1),
	datab => \dp|IRL|ir28|dff0|q~q\,
	datac => \cu|st|con|count_i\(0),
	datad => \dp|ALUL|regA|A_R|c:3:dff32|dff0|q~q\,
	combout => \dp|ALUL|regC|DFF1|c:3:dff32|d_input~3_combout\);

-- Location: LCCOMB_X18_Y9_N24
\dp|ALUL|regC|DFF1|c:3:dff32|d_input~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:3:dff32|d_input~21_combout\ = (\dp|ALUL|regC|DFF1|c:3:dff32|d_input~3_combout\ & (\cu|st|con|count_i\(2) & (!\dp|IRL|ir30|dff0|q~q\ & \dp|IRL|ir31|dff0|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:3:dff32|d_input~3_combout\,
	datab => \cu|st|con|count_i\(2),
	datac => \dp|IRL|ir30|dff0|q~q\,
	datad => \dp|IRL|ir31|dff0|q~q\,
	combout => \dp|ALUL|regC|DFF1|c:3:dff32|d_input~21_combout\);

-- Location: LCCOMB_X17_Y9_N18
\dp|ALUL|regC|DFF1|c:3:dff32|d_input~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:3:dff32|d_input~18_combout\ = (\dp|ALUL|regC|BF1|c:3:buf32|output~4_combout\ & ((\cu|control|CB~combout\) # ((\dp|ALUL|regC|DFF1|c:3:dff32|d_input~21_combout\)))) # (!\dp|ALUL|regC|BF1|c:3:buf32|output~4_combout\ & 
-- (((\cu|control|NOTOP~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|CB~combout\,
	datab => \cu|control|NOTOP~combout\,
	datac => \dp|ALUL|regC|BF1|c:3:buf32|output~4_combout\,
	datad => \dp|ALUL|regC|DFF1|c:3:dff32|d_input~21_combout\,
	combout => \dp|ALUL|regC|DFF1|c:3:dff32|d_input~18_combout\);

-- Location: LCCOMB_X15_Y12_N16
\cu|st|dec|Mux0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|st|dec|Mux0~6_combout\ = (\cu|st|con|count_i\(1) & (!\cu|st|con|count_i\(0) & !\cu|st|con|count_i\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(1),
	datac => \cu|st|con|count_i\(0),
	datad => \cu|st|con|count_i\(2),
	combout => \cu|st|dec|Mux0~6_combout\);

-- Location: FF_X16_Y11_N5
\dp|IRL|ir0|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:0:buf32|output~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|st|dec|Mux0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|IRL|ir0|dff0|q~q\);

-- Location: FF_X16_Y11_N15
\dp|PCL|dff|c:0:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:0:buf32|output~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|control|PCin~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|PCL|dff|c:0:dff32|dff0|q~q\);

-- Location: LCCOMB_X16_Y11_N14
\dp|ALUL|regC|BF1|c:0:buf32|output~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:0:buf32|output~3_combout\ = (\dp|IRL|ir0|dff0|q~q\ & (((\dp|PCL|dff|c:0:dff32|dff0|q~q\)) # (!\cu|control|PCout~combout\))) # (!\dp|IRL|ir0|dff0|q~q\ & (\dp|IRL|c1_or_c2~0_combout\ & ((\dp|PCL|dff|c:0:dff32|dff0|q~q\) # 
-- (!\cu|control|PCout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|IRL|ir0|dff0|q~q\,
	datab => \cu|control|PCout~combout\,
	datac => \dp|PCL|dff|c:0:dff32|dff0|q~q\,
	datad => \dp|IRL|c1_or_c2~0_combout\,
	combout => \dp|ALUL|regC|BF1|c:0:buf32|output~3_combout\);

-- Location: FF_X17_Y12_N27
\dp|ALUL|regA|A_R|c:0:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:0:buf32|output~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|control|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regA|A_R|c:0:dff32|dff0|q~q\);

-- Location: LCCOMB_X17_Y12_N26
\dp|ALUL|add|a_sig[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|a_sig\(0) = (\dp|ALUL|regA|A_R|c:0:dff32|dff0|q~q\ & ((\cu|st|con|count_i\(1)) # ((\cu|st|con|count_i\(0)) # (\cu|st|con|count_i\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(1),
	datab => \cu|st|con|count_i\(0),
	datac => \dp|ALUL|regA|A_R|c:0:dff32|dff0|q~q\,
	datad => \cu|st|con|count_i\(2),
	combout => \dp|ALUL|add|a_sig\(0));

-- Location: LCCOMB_X18_Y10_N4
\cu|st|dec|Mux0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|st|dec|Mux0~5_combout\ = (!\cu|st|con|count_i\(2) & (!\cu|st|con|count_i\(0) & !\cu|st|con|count_i\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(2),
	datac => \cu|st|con|count_i\(0),
	datad => \cu|st|con|count_i\(1),
	combout => \cu|st|dec|Mux0~5_combout\);

-- Location: LCCOMB_X17_Y11_N0
\cu|control|C1out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|control|C1out~0_combout\ = (!\cu|de|Mux19~0_combout\ & ((\dp|IRL|ir30|dff0|q~q\) # ((\dp|IRL|ir29|dff0|q~q\) # (\dp|IRL|ir27|dff0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|de|Mux19~0_combout\,
	datab => \dp|IRL|ir30|dff0|q~q\,
	datac => \dp|IRL|ir29|dff0|q~q\,
	datad => \dp|IRL|ir27|dff0|q~q\,
	combout => \cu|control|C1out~0_combout\);

-- Location: LCCOMB_X17_Y10_N10
\dp|ALUL|add|add_E~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|add_E~10_combout\ = (\dp|IRL|ir30|dff0|q~q\ & (!\dp|IRL|ir31|dff0|q~q\ & (\dp|IRL|ir29|dff0|q~q\ & !\dp|IRL|ir28|dff0|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|IRL|ir30|dff0|q~q\,
	datab => \dp|IRL|ir31|dff0|q~q\,
	datac => \dp|IRL|ir29|dff0|q~q\,
	datad => \dp|IRL|ir28|dff0|q~q\,
	combout => \dp|ALUL|add|add_E~10_combout\);

-- Location: LCCOMB_X17_Y9_N16
\dp|ALUL|add|add_E~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|add_E~8_combout\ = (\cu|st|dec|Mux0~2_combout\ & (((\dp|ALUL|add|add_E~10_combout\) # (!\cu|control|Grb~0_combout\)) # (!\cu|control|C1out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|C1out~0_combout\,
	datab => \dp|ALUL|add|add_E~10_combout\,
	datac => \cu|st|dec|Mux0~2_combout\,
	datad => \cu|control|Grb~0_combout\,
	combout => \dp|ALUL|add|add_E~8_combout\);

-- Location: LCCOMB_X17_Y9_N28
\dp|ALUL|add|add_E~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|add_E~9_combout\ = (\cu|st|dec|Mux0~5_combout\) # ((\cu|control|Sub~combout\) # (\dp|ALUL|add|add_E~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|dec|Mux0~5_combout\,
	datab => \cu|control|Sub~combout\,
	datad => \dp|ALUL|add|add_E~8_combout\,
	combout => \dp|ALUL|add|add_E~9_combout\);

-- Location: LCCOMB_X15_Y9_N18
\dp|ALUL|regC|DFF1|c:0:dff32|d_input~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:0:dff32|d_input~17_combout\ = (\dp|ALUL|add|add_E~9_combout\ & (\dp|ALUL|add|b_sig\(0) $ (\dp|ALUL|add|a_sig\(0) $ (\cu|control|Sub~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|b_sig\(0),
	datab => \dp|ALUL|add|a_sig\(0),
	datac => \cu|control|Sub~combout\,
	datad => \dp|ALUL|add|add_E~9_combout\,
	combout => \dp|ALUL|regC|DFF1|c:0:dff32|d_input~17_combout\);

-- Location: LCCOMB_X22_Y10_N0
\dp|ALUL|add|temp[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|temp[0]~0_combout\ = (\dp|ALUL|add|b_sig\(0) & (\cu|control|NEG~combout\ $ (VCC))) # (!\dp|ALUL|add|b_sig\(0) & (\cu|control|NEG~combout\ & VCC))
-- \dp|ALUL|add|temp[0]~1\ = CARRY((\dp|ALUL|add|b_sig\(0) & \cu|control|NEG~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|b_sig\(0),
	datab => \cu|control|NEG~combout\,
	datad => VCC,
	combout => \dp|ALUL|add|temp[0]~0_combout\,
	cout => \dp|ALUL|add|temp[0]~1\);

-- Location: LCCOMB_X19_Y10_N10
\dp|ALUL|regC|DFF1|c:0:dff32|d_input~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:0:dff32|d_input~19_combout\ = (\dp|ALUL|regA|A_R|c:0:dff32|dff0|q~q\ & ((\dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\) # ((\cu|control|NEG~combout\ & \dp|ALUL|add|temp[0]~0_combout\)))) # (!\dp|ALUL|regA|A_R|c:0:dff32|dff0|q~q\ & 
-- (\cu|control|NEG~combout\ & ((\dp|ALUL|add|temp[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regA|A_R|c:0:dff32|dff0|q~q\,
	datab => \cu|control|NEG~combout\,
	datac => \dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\,
	datad => \dp|ALUL|add|temp[0]~0_combout\,
	combout => \dp|ALUL|regC|DFF1|c:0:dff32|d_input~19_combout\);

-- Location: LCCOMB_X13_Y11_N22
\dp|ALUL|regC|DFF1|c:0:dff32|d_input~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:0:dff32|d_input~20_combout\ = (\dp|ALUL|regC|DFF1|c:0:dff32|d_input~19_combout\) # ((\dp|ALUL|l_s|Eout~0_combout\ & (\cu|de|Mux12~0_combout\ & \dp|ALUL|regC|BF1|c:31:buf32|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|l_s|Eout~0_combout\,
	datab => \dp|ALUL|regC|DFF1|c:0:dff32|d_input~19_combout\,
	datac => \cu|de|Mux12~0_combout\,
	datad => \dp|ALUL|regC|BF1|c:31:buf32|output~3_combout\,
	combout => \dp|ALUL|regC|DFF1|c:0:dff32|d_input~20_combout\);

-- Location: LCCOMB_X15_Y12_N28
\dp|ALUL|regC|DFF1|c:0:dff32|d_input~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:0:dff32|d_input~5_combout\ = (!\cu|st|con|count_i\(1) & (!\cu|st|con|count_i\(0) & ((\dp|ALUL|regA|A_R|c:0:dff32|dff0|q~q\) # (\dp|IRL|ir28|dff0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(1),
	datab => \dp|ALUL|regA|A_R|c:0:dff32|dff0|q~q\,
	datac => \cu|st|con|count_i\(0),
	datad => \dp|IRL|ir28|dff0|q~q\,
	combout => \dp|ALUL|regC|DFF1|c:0:dff32|d_input~5_combout\);

-- Location: LCCOMB_X14_Y12_N4
\dp|ALUL|regC|DFF1|c:0:dff32|d_input~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:0:dff32|d_input~24_combout\ = (!\dp|IRL|ir30|dff0|q~q\ & (\dp|ALUL|regC|DFF1|c:0:dff32|d_input~5_combout\ & (\dp|IRL|ir31|dff0|q~q\ & \cu|st|con|count_i\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|IRL|ir30|dff0|q~q\,
	datab => \dp|ALUL|regC|DFF1|c:0:dff32|d_input~5_combout\,
	datac => \dp|IRL|ir31|dff0|q~q\,
	datad => \cu|st|con|count_i\(2),
	combout => \dp|ALUL|regC|DFF1|c:0:dff32|d_input~24_combout\);

-- Location: LCCOMB_X13_Y11_N2
\dp|ALUL|regC|DFF1|c:0:dff32|d_input~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:0:dff32|d_input~18_combout\ = (\dp|ALUL|regC|BF1|c:0:buf32|output~6_combout\ & ((\cu|control|CB~combout\) # (\dp|ALUL|regC|DFF1|c:0:dff32|d_input~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|CB~combout\,
	datac => \dp|ALUL|regC|DFF1|c:0:dff32|d_input~24_combout\,
	datad => \dp|ALUL|regC|BF1|c:0:buf32|output~6_combout\,
	combout => \dp|ALUL|regC|DFF1|c:0:dff32|d_input~18_combout\);

-- Location: LCCOMB_X13_Y11_N26
\dp|ALUL|regC|DFF1|c:0:dff32|d_input~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:0:dff32|d_input~21_combout\ = (\dp|ALUL|regC|DFF1|c:0:dff32|d_input~20_combout\) # ((\dp|ALUL|regC|DFF1|c:0:dff32|d_input~18_combout\) # ((\dp|ALUL|r_s|Eout~0_combout\ & \dp|ALUL|regC|BF1|c:1:buf32|output~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:0:dff32|d_input~20_combout\,
	datab => \dp|ALUL|r_s|Eout~0_combout\,
	datac => \dp|ALUL|regC|BF1|c:1:buf32|output~4_combout\,
	datad => \dp|ALUL|regC|DFF1|c:0:dff32|d_input~18_combout\,
	combout => \dp|ALUL|regC|DFF1|c:0:dff32|d_input~21_combout\);

-- Location: LCCOMB_X15_Y9_N12
\dp|ALUL|regC|DFF1|c:0:dff32|d_input~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:0:dff32|d_input~22_combout\ = (\dp|ALUL|regC|DFF1|c:0:dff32|d_input~17_combout\) # ((\dp|ALUL|regC|DFF1|c:0:dff32|d_input~21_combout\) # ((\cu|control|NOTOP~combout\ & \dp|ALUL|add|b_sig\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|NOTOP~combout\,
	datab => \dp|ALUL|regC|DFF1|c:0:dff32|d_input~17_combout\,
	datac => \dp|ALUL|regC|DFF1|c:0:dff32|d_input~21_combout\,
	datad => \dp|ALUL|add|b_sig\(0),
	combout => \dp|ALUL|regC|DFF1|c:0:dff32|d_input~22_combout\);

-- Location: LCCOMB_X15_Y12_N4
\cu|control|Cin~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|control|Cin~0_combout\ = (\cu|st|dec|Mux0~3_combout\ & ((\cu|de|Mux8~0_combout\) # (\cu|de|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cu|de|Mux8~0_combout\,
	datac => \cu|de|Mux7~0_combout\,
	datad => \cu|st|dec|Mux0~3_combout\,
	combout => \cu|control|Cin~0_combout\);

-- Location: LCCOMB_X14_Y12_N22
\cu|control|Cin~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|control|Cin~1_combout\ = (\cu|control|Cin~0_combout\) # ((\cu|st|dec|Mux0~5_combout\) # ((!\cu|control|CB~2_combout\ & \cu|st|dec|Mux0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|Cin~0_combout\,
	datab => \cu|st|dec|Mux0~5_combout\,
	datac => \cu|control|CB~2_combout\,
	datad => \cu|st|dec|Mux0~4_combout\,
	combout => \cu|control|Cin~1_combout\);

-- Location: LCCOMB_X15_Y10_N6
\cu|control|Cin~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|control|Cin~2_combout\ = (\cu|control|Goto6~combout\) # ((\cu|control|Cin~1_combout\) # ((\cu|st|dec|Mux0~2_combout\ & \cu|control|Cout~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|dec|Mux0~2_combout\,
	datab => \cu|control|Cout~1_combout\,
	datac => \cu|control|Goto6~combout\,
	datad => \cu|control|Cin~1_combout\,
	combout => \cu|control|Cin~2_combout\);

-- Location: FF_X15_Y9_N13
\dp|ALUL|regC|DFF1|c:0:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|ALUL|regC|DFF1|c:0:dff32|d_input~22_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|Cin~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regC|DFF1|c:0:dff32|dff0|q~q\);

-- Location: LCCOMB_X16_Y11_N0
\dp|ALUL|regC|BF1|c:0:buf32|output~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:0:buf32|output~2_combout\ = (\dp|ALUL|regC|DFF1|c:0:dff32|dff0|q~q\) # (!\cu|control|Cout~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|ALUL|regC|DFF1|c:0:dff32|dff0|q~q\,
	datad => \cu|control|Cout~combout\,
	combout => \dp|ALUL|regC|BF1|c:0:buf32|output~2_combout\);

-- Location: LCCOMB_X16_Y11_N22
\dp|ALUL|regC|BF1|c:0:buf32|output~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:0:buf32|output~4_combout\ = (\dp|ALUL|regC|BF1|c:0:buf32|output~3_combout\ & (\dp|ALUL|regC|BF1|c:0:buf32|output~2_combout\ & ((\dp|MEML|md_r|c:0:dff32|dff0|q~q\) # (!\cu|control|MDout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|MDout~0_combout\,
	datab => \dp|MEML|md_r|c:0:dff32|dff0|q~q\,
	datac => \dp|ALUL|regC|BF1|c:0:buf32|output~3_combout\,
	datad => \dp|ALUL|regC|BF1|c:0:buf32|output~2_combout\,
	combout => \dp|ALUL|regC|BF1|c:0:buf32|output~4_combout\);

-- Location: LCCOMB_X18_Y11_N16
\dp|ALUL|add|b_sig[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|b_sig\(0) = \dp|ALUL|add|b_inv~combout\ $ (((\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\) # ((\dp|ALUL|regC|BF1|c:0:buf32|output~5_combout\ & \dp|ALUL|regC|BF1|c:0:buf32|output~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|b_inv~combout\,
	datab => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	datac => \dp|ALUL|regC|BF1|c:0:buf32|output~5_combout\,
	datad => \dp|ALUL|regC|BF1|c:0:buf32|output~4_combout\,
	combout => \dp|ALUL|add|b_sig\(0));

-- Location: LCCOMB_X22_Y10_N2
\dp|ALUL|add|temp[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|temp[1]~2_combout\ = (\dp|ALUL|add|temp[0]~1\ & (\dp|ALUL|regC|BF1|c:1:buf32|output~4_combout\ $ ((!\dp|ALUL|add|b_inv~combout\)))) # (!\dp|ALUL|add|temp[0]~1\ & ((\dp|ALUL|regC|BF1|c:1:buf32|output~4_combout\ $ (\dp|ALUL|add|b_inv~combout\)) 
-- # (GND)))
-- \dp|ALUL|add|temp[1]~3\ = CARRY((\dp|ALUL|regC|BF1|c:1:buf32|output~4_combout\ $ (!\dp|ALUL|add|b_inv~combout\)) # (!\dp|ALUL|add|temp[0]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:1:buf32|output~4_combout\,
	datab => \dp|ALUL|add|b_inv~combout\,
	datad => VCC,
	cin => \dp|ALUL|add|temp[0]~1\,
	combout => \dp|ALUL|add|temp[1]~2_combout\,
	cout => \dp|ALUL|add|temp[1]~3\);

-- Location: LCCOMB_X22_Y10_N4
\dp|ALUL|add|temp[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|temp[2]~4_combout\ = (\dp|ALUL|add|temp[1]~3\ & ((\dp|ALUL|add|b_inv~combout\ $ (\dp|ALUL|regC|BF1|c:2:buf32|output~3_combout\)))) # (!\dp|ALUL|add|temp[1]~3\ & (\dp|ALUL|add|b_inv~combout\ $ (\dp|ALUL|regC|BF1|c:2:buf32|output~3_combout\ $ 
-- (VCC))))
-- \dp|ALUL|add|temp[2]~5\ = CARRY((!\dp|ALUL|add|temp[1]~3\ & (\dp|ALUL|add|b_inv~combout\ $ (\dp|ALUL|regC|BF1|c:2:buf32|output~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|b_inv~combout\,
	datab => \dp|ALUL|regC|BF1|c:2:buf32|output~3_combout\,
	datad => VCC,
	cin => \dp|ALUL|add|temp[1]~3\,
	combout => \dp|ALUL|add|temp[2]~4_combout\,
	cout => \dp|ALUL|add|temp[2]~5\);

-- Location: LCCOMB_X22_Y10_N6
\dp|ALUL|add|temp[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|temp[3]~6_combout\ = (\dp|ALUL|add|temp[2]~5\ & (\dp|ALUL|add|b_inv~combout\ $ ((!\dp|ALUL|regC|BF1|c:3:buf32|output~4_combout\)))) # (!\dp|ALUL|add|temp[2]~5\ & ((\dp|ALUL|add|b_inv~combout\ $ (\dp|ALUL|regC|BF1|c:3:buf32|output~4_combout\)) 
-- # (GND)))
-- \dp|ALUL|add|temp[3]~7\ = CARRY((\dp|ALUL|add|b_inv~combout\ $ (!\dp|ALUL|regC|BF1|c:3:buf32|output~4_combout\)) # (!\dp|ALUL|add|temp[2]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|b_inv~combout\,
	datab => \dp|ALUL|regC|BF1|c:3:buf32|output~4_combout\,
	datad => VCC,
	cin => \dp|ALUL|add|temp[2]~5\,
	combout => \dp|ALUL|add|temp[3]~6_combout\,
	cout => \dp|ALUL|add|temp[3]~7\);

-- Location: LCCOMB_X18_Y10_N24
\dp|ALUL|regC|DFF1|c:3:dff32|d_input~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:3:dff32|d_input~16_combout\ = (\dp|ALUL|add|temp[3]~6_combout\ & ((\cu|control|NEG~combout\) # ((\dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\ & \dp|ALUL|regA|A_R|c:3:dff32|dff0|q~q\)))) # (!\dp|ALUL|add|temp[3]~6_combout\ & 
-- (\dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\ & ((\dp|ALUL|regA|A_R|c:3:dff32|dff0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|temp[3]~6_combout\,
	datab => \dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\,
	datac => \cu|control|NEG~combout\,
	datad => \dp|ALUL|regA|A_R|c:3:dff32|dff0|q~q\,
	combout => \dp|ALUL|regC|DFF1|c:3:dff32|d_input~16_combout\);

-- Location: FF_X16_Y13_N13
\dp|PCL|dff|c:4:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:4:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|control|PCin~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|PCL|dff|c:4:dff32|dff0|q~q\);

-- Location: FF_X16_Y13_N7
\dp|IRL|ir4|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:4:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|st|dec|Mux0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|IRL|ir4|dff0|q~q\);

-- Location: LCCOMB_X16_Y13_N6
\dp|ALUL|regC|BF1|c:4:buf32|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:4:buf32|output~0_combout\ = (\dp|PCL|dff|c:4:dff32|dff0|q~q\ & (((\dp|IRL|ir4|dff0|q~q\) # (\dp|IRL|c1_or_c2~0_combout\)))) # (!\dp|PCL|dff|c:4:dff32|dff0|q~q\ & (!\cu|control|PCout~combout\ & ((\dp|IRL|ir4|dff0|q~q\) # 
-- (\dp|IRL|c1_or_c2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|PCL|dff|c:4:dff32|dff0|q~q\,
	datab => \cu|control|PCout~combout\,
	datac => \dp|IRL|ir4|dff0|q~q\,
	datad => \dp|IRL|c1_or_c2~0_combout\,
	combout => \dp|ALUL|regC|BF1|c:4:buf32|output~0_combout\);

-- Location: IOIBUF_X10_Y15_N15
\md[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => md(4),
	o => \md[4]~input_o\);

-- Location: LCCOMB_X16_Y12_N10
\dp|MEML|or_G[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|MEML|or_G\(4) = (\md[4]~input_o\ & ((\md_read~input_o\) # ((\dp|ALUL|regC|BF1|c:4:buf32|output~4_combout\ & \cu|control|MDin~combout\)))) # (!\md[4]~input_o\ & (\dp|ALUL|regC|BF1|c:4:buf32|output~4_combout\ & ((\cu|control|MDin~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \md[4]~input_o\,
	datab => \dp|ALUL|regC|BF1|c:4:buf32|output~4_combout\,
	datac => \md_read~input_o\,
	datad => \cu|control|MDin~combout\,
	combout => \dp|MEML|or_G\(4));

-- Location: FF_X16_Y12_N11
\dp|MEML|md_r|c:4:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|MEML|or_G\(4),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \dp|MEML|md_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|md_r|c:4:dff32|dff0|q~q\);

-- Location: LCCOMB_X20_Y12_N10
\dp|ALUL|regC|DFF1|c:4:dff32|d_input~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:4:dff32|d_input~16_combout\ = (\cu|control|NOTOP~combout\ & (\dp|ALUL|add|b_inv~combout\ $ (((\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\) # (\dp|ALUL|regC|BF1|c:4:buf32|output~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|b_inv~combout\,
	datab => \cu|control|NOTOP~combout\,
	datac => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	datad => \dp|ALUL|regC|BF1|c:4:buf32|output~3_combout\,
	combout => \dp|ALUL|regC|DFF1|c:4:dff32|d_input~16_combout\);

-- Location: LCCOMB_X20_Y12_N22
\dp|ALUL|add|b_sig[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|b_sig\(4) = \dp|ALUL|add|b_inv~combout\ $ (((\dp|ALUL|regC|BF1|c:4:buf32|output~3_combout\) # (\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:4:buf32|output~3_combout\,
	datac => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	datad => \dp|ALUL|add|b_inv~combout\,
	combout => \dp|ALUL|add|b_sig\(4));

-- Location: FF_X17_Y12_N17
\dp|ALUL|regA|A_R|c:4:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:4:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|control|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regA|A_R|c:4:dff32|dff0|q~q\);

-- Location: LCCOMB_X17_Y12_N2
\dp|ALUL|add|a_sig[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|a_sig\(4) = (\dp|ALUL|regA|A_R|c:4:dff32|dff0|q~q\ & ((\cu|st|con|count_i\(1)) # ((\cu|st|con|count_i\(2)) # (\cu|st|con|count_i\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(1),
	datab => \cu|st|con|count_i\(2),
	datac => \cu|st|con|count_i\(0),
	datad => \dp|ALUL|regA|A_R|c:4:dff32|dff0|q~q\,
	combout => \dp|ALUL|add|a_sig\(4));

-- Location: LCCOMB_X17_Y13_N28
\dp|ALUL|add|a_sig[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|a_sig\(3) = (\dp|ALUL|regA|A_R|c:3:dff32|dff0|q~q\ & ((\cu|st|con|count_i\(0)) # ((\cu|st|con|count_i\(1)) # (\cu|st|con|count_i\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(0),
	datab => \dp|ALUL|regA|A_R|c:3:dff32|dff0|q~q\,
	datac => \cu|st|con|count_i\(1),
	datad => \cu|st|con|count_i\(2),
	combout => \dp|ALUL|add|a_sig\(3));

-- Location: LCCOMB_X17_Y10_N24
\dp|ALUL|add|a_sig[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|a_sig\(2) = (\dp|ALUL|regA|A_R|c:2:dff32|dff0|q~q\) # ((!\cu|st|con|count_i\(2) & (!\cu|st|con|count_i\(1) & !\cu|st|con|count_i\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(2),
	datab => \cu|st|con|count_i\(1),
	datac => \dp|ALUL|regA|A_R|c:2:dff32|dff0|q~q\,
	datad => \cu|st|con|count_i\(0),
	combout => \dp|ALUL|add|a_sig\(2));

-- Location: LCCOMB_X17_Y13_N24
\dp|ALUL|add|a_sig[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|a_sig\(1) = (\dp|ALUL|regA|A_R|c:1:dff32|dff0|q~q\ & ((\cu|st|con|count_i\(0)) # ((\cu|st|con|count_i\(1)) # (\cu|st|con|count_i\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(0),
	datab => \cu|st|con|count_i\(1),
	datac => \dp|ALUL|regA|A_R|c:1:dff32|dff0|q~q\,
	datad => \cu|st|con|count_i\(2),
	combout => \dp|ALUL|add|a_sig\(1));

-- Location: LCCOMB_X18_Y11_N22
\dp|ALUL|add|add_32|Y:0:full32|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|add_32|Y:0:full32|c_out~0_combout\ = (\dp|ALUL|add|a_sig\(0) & ((\dp|ALUL|add|b_sig\(0)) # ((\cu|de|Mux2~0_combout\ & \cu|st|dec|Mux0~2_combout\)))) # (!\dp|ALUL|add|a_sig\(0) & (\cu|de|Mux2~0_combout\ & (\cu|st|dec|Mux0~2_combout\ & 
-- \dp|ALUL|add|b_sig\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|de|Mux2~0_combout\,
	datab => \dp|ALUL|add|a_sig\(0),
	datac => \cu|st|dec|Mux0~2_combout\,
	datad => \dp|ALUL|add|b_sig\(0),
	combout => \dp|ALUL|add|add_32|Y:0:full32|c_out~0_combout\);

-- Location: LCCOMB_X18_Y11_N12
\dp|ALUL|add|add_32|Y:1:full32|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|add_32|Y:1:full32|c_out~0_combout\ = (\dp|ALUL|add|a_sig\(1) & ((\dp|ALUL|add|add_32|Y:0:full32|c_out~0_combout\) # (\dp|ALUL|add|b_inv~combout\ $ (\dp|ALUL|regC|BF1|c:1:buf32|output~4_combout\)))) # (!\dp|ALUL|add|a_sig\(1) & 
-- (\dp|ALUL|add|add_32|Y:0:full32|c_out~0_combout\ & (\dp|ALUL|add|b_inv~combout\ $ (\dp|ALUL|regC|BF1|c:1:buf32|output~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|a_sig\(1),
	datab => \dp|ALUL|add|b_inv~combout\,
	datac => \dp|ALUL|add|add_32|Y:0:full32|c_out~0_combout\,
	datad => \dp|ALUL|regC|BF1|c:1:buf32|output~4_combout\,
	combout => \dp|ALUL|add|add_32|Y:1:full32|c_out~0_combout\);

-- Location: LCCOMB_X18_Y11_N10
\dp|ALUL|add|add_32|Y:2:full32|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|add_32|Y:2:full32|c_out~0_combout\ = (\dp|ALUL|add|a_sig\(2) & ((\dp|ALUL|add|add_32|Y:1:full32|c_out~0_combout\) # (\dp|ALUL|add|b_inv~combout\ $ (\dp|ALUL|regC|BF1|c:2:buf32|output~3_combout\)))) # (!\dp|ALUL|add|a_sig\(2) & 
-- (\dp|ALUL|add|add_32|Y:1:full32|c_out~0_combout\ & (\dp|ALUL|add|b_inv~combout\ $ (\dp|ALUL|regC|BF1|c:2:buf32|output~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|b_inv~combout\,
	datab => \dp|ALUL|regC|BF1|c:2:buf32|output~3_combout\,
	datac => \dp|ALUL|add|a_sig\(2),
	datad => \dp|ALUL|add|add_32|Y:1:full32|c_out~0_combout\,
	combout => \dp|ALUL|add|add_32|Y:2:full32|c_out~0_combout\);

-- Location: LCCOMB_X18_Y11_N20
\dp|ALUL|add|add_32|Y:3:full32|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|add_32|Y:3:full32|c_out~0_combout\ = (\dp|ALUL|add|a_sig\(3) & ((\dp|ALUL|add|add_32|Y:2:full32|c_out~0_combout\) # (\dp|ALUL|add|b_inv~combout\ $ (\dp|ALUL|regC|BF1|c:3:buf32|output~4_combout\)))) # (!\dp|ALUL|add|a_sig\(3) & 
-- (\dp|ALUL|add|add_32|Y:2:full32|c_out~0_combout\ & (\dp|ALUL|add|b_inv~combout\ $ (\dp|ALUL|regC|BF1|c:3:buf32|output~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|b_inv~combout\,
	datab => \dp|ALUL|add|a_sig\(3),
	datac => \dp|ALUL|regC|BF1|c:3:buf32|output~4_combout\,
	datad => \dp|ALUL|add|add_32|Y:2:full32|c_out~0_combout\,
	combout => \dp|ALUL|add|add_32|Y:3:full32|c_out~0_combout\);

-- Location: LCCOMB_X20_Y12_N28
\dp|ALUL|regC|DFF1|c:4:dff32|d_input~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:4:dff32|d_input~15_combout\ = (\dp|ALUL|add|add_E~9_combout\ & (\dp|ALUL|add|b_sig\(4) $ (\dp|ALUL|add|a_sig\(4) $ (\dp|ALUL|add|add_32|Y:3:full32|c_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|b_sig\(4),
	datab => \dp|ALUL|add|a_sig\(4),
	datac => \dp|ALUL|add|add_E~9_combout\,
	datad => \dp|ALUL|add|add_32|Y:3:full32|c_out~0_combout\,
	combout => \dp|ALUL|regC|DFF1|c:4:dff32|d_input~15_combout\);

-- Location: LCCOMB_X22_Y10_N8
\dp|ALUL|add|temp[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|temp[4]~8_combout\ = (\dp|ALUL|add|temp[3]~7\ & ((\dp|ALUL|add|b_inv~combout\ $ (\dp|ALUL|regC|BF1|c:4:buf32|output~4_combout\)))) # (!\dp|ALUL|add|temp[3]~7\ & (\dp|ALUL|add|b_inv~combout\ $ (\dp|ALUL|regC|BF1|c:4:buf32|output~4_combout\ $ 
-- (VCC))))
-- \dp|ALUL|add|temp[4]~9\ = CARRY((!\dp|ALUL|add|temp[3]~7\ & (\dp|ALUL|add|b_inv~combout\ $ (\dp|ALUL|regC|BF1|c:4:buf32|output~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|b_inv~combout\,
	datab => \dp|ALUL|regC|BF1|c:4:buf32|output~4_combout\,
	datad => VCC,
	cin => \dp|ALUL|add|temp[3]~7\,
	combout => \dp|ALUL|add|temp[4]~8_combout\,
	cout => \dp|ALUL|add|temp[4]~9\);

-- Location: LCCOMB_X17_Y12_N16
\dp|ALUL|regC|DFF1|c:4:dff32|d_input~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:4:dff32|d_input~18_combout\ = (\dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\ & ((\dp|ALUL|regA|A_R|c:4:dff32|dff0|q~q\) # ((\cu|control|NEG~combout\ & \dp|ALUL|add|temp[4]~8_combout\)))) # 
-- (!\dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\ & (\cu|control|NEG~combout\ & ((\dp|ALUL|add|temp[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\,
	datab => \cu|control|NEG~combout\,
	datac => \dp|ALUL|regA|A_R|c:4:dff32|dff0|q~q\,
	datad => \dp|ALUL|add|temp[4]~8_combout\,
	combout => \dp|ALUL|regC|DFF1|c:4:dff32|d_input~18_combout\);

-- Location: LCCOMB_X17_Y12_N14
\dp|ALUL|regC|DFF1|c:4:dff32|d_input~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:4:dff32|d_input~3_combout\ = (!\cu|st|con|count_i\(1) & (!\cu|st|con|count_i\(0) & ((\dp|IRL|ir28|dff0|q~q\) # (\dp|ALUL|regA|A_R|c:4:dff32|dff0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(1),
	datab => \cu|st|con|count_i\(0),
	datac => \dp|IRL|ir28|dff0|q~q\,
	datad => \dp|ALUL|regA|A_R|c:4:dff32|dff0|q~q\,
	combout => \dp|ALUL|regC|DFF1|c:4:dff32|d_input~3_combout\);

-- Location: LCCOMB_X17_Y12_N12
\dp|ALUL|regC|DFF1|c:4:dff32|d_input~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:4:dff32|d_input~21_combout\ = (\dp|IRL|ir31|dff0|q~q\ & (!\dp|IRL|ir30|dff0|q~q\ & (\dp|ALUL|regC|DFF1|c:4:dff32|d_input~3_combout\ & \cu|st|con|count_i\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|IRL|ir31|dff0|q~q\,
	datab => \dp|IRL|ir30|dff0|q~q\,
	datac => \dp|ALUL|regC|DFF1|c:4:dff32|d_input~3_combout\,
	datad => \cu|st|con|count_i\(2),
	combout => \dp|ALUL|regC|DFF1|c:4:dff32|d_input~21_combout\);

-- Location: LCCOMB_X17_Y12_N8
\dp|ALUL|regC|DFF1|c:4:dff32|d_input~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:4:dff32|d_input~19_combout\ = (\dp|ALUL|regC|DFF1|c:4:dff32|d_input~18_combout\) # ((\dp|ALUL|regC|BF1|c:4:buf32|output~4_combout\ & ((\cu|control|CB~combout\) # (\dp|ALUL|regC|DFF1|c:4:dff32|d_input~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:4:buf32|output~4_combout\,
	datab => \cu|control|CB~combout\,
	datac => \dp|ALUL|regC|DFF1|c:4:dff32|d_input~18_combout\,
	datad => \dp|ALUL|regC|DFF1|c:4:dff32|d_input~21_combout\,
	combout => \dp|ALUL|regC|DFF1|c:4:dff32|d_input~19_combout\);

-- Location: FF_X19_Y12_N5
\dp|RegFIleL|gen_reg0|dff|c:5:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:5:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|RegFIleL|strop\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg0|dff|c:5:dff32|dff0|q~q\);

-- Location: FF_X19_Y12_N31
\dp|RegFIleL|gen_reg1|dffL|c:5:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:5:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|RegFIleL|strop\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg1|dffL|c:5:dff32|dff0|q~q\);

-- Location: LCCOMB_X19_Y12_N30
\dp|ALUL|regC|BF1|c:5:buf32|output~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:5:buf32|output~3_combout\ = (\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & (((\dp|RegFIleL|gen_reg1|dffL|c:5:dff32|dff0|q~q\)))) # (!\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & (\dp|RegFIleL|gen_reg0|dff|c:5:dff32|dff0|q~q\ & 
-- ((!\cu|control|BAout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RegFIleL|reg|input_decoder[0]~4_combout\,
	datab => \dp|RegFIleL|gen_reg0|dff|c:5:dff32|dff0|q~q\,
	datac => \dp|RegFIleL|gen_reg1|dffL|c:5:dff32|dff0|q~q\,
	datad => \cu|control|BAout~0_combout\,
	combout => \dp|ALUL|regC|BF1|c:5:buf32|output~3_combout\);

-- Location: FF_X19_Y11_N9
\dp|ALUL|regA|A_R|c:5:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|ALUL|regC|BF1|c:5:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regA|A_R|c:5:dff32|dff0|q~q\);

-- Location: LCCOMB_X17_Y8_N14
\dp|ALUL|regC|DFF1|c:5:dff32|d_input~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:5:dff32|d_input~3_combout\ = (!\cu|st|con|count_i\(1) & (!\cu|st|con|count_i\(0) & ((\dp|IRL|ir28|dff0|q~q\) # (\dp|ALUL|regA|A_R|c:5:dff32|dff0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|IRL|ir28|dff0|q~q\,
	datab => \cu|st|con|count_i\(1),
	datac => \cu|st|con|count_i\(0),
	datad => \dp|ALUL|regA|A_R|c:5:dff32|dff0|q~q\,
	combout => \dp|ALUL|regC|DFF1|c:5:dff32|d_input~3_combout\);

-- Location: LCCOMB_X17_Y8_N4
\dp|ALUL|regC|DFF1|c:5:dff32|d_input~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:5:dff32|d_input~21_combout\ = (!\dp|IRL|ir30|dff0|q~q\ & (\dp|IRL|ir31|dff0|q~q\ & (\dp|ALUL|regC|DFF1|c:5:dff32|d_input~3_combout\ & \cu|st|con|count_i\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|IRL|ir30|dff0|q~q\,
	datab => \dp|IRL|ir31|dff0|q~q\,
	datac => \dp|ALUL|regC|DFF1|c:5:dff32|d_input~3_combout\,
	datad => \cu|st|con|count_i\(2),
	combout => \dp|ALUL|regC|DFF1|c:5:dff32|d_input~21_combout\);

-- Location: LCCOMB_X22_Y10_N10
\dp|ALUL|add|temp[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|temp[5]~10_combout\ = (\dp|ALUL|add|temp[4]~9\ & (\dp|ALUL|add|b_inv~combout\ $ ((!\dp|ALUL|regC|BF1|c:5:buf32|output~4_combout\)))) # (!\dp|ALUL|add|temp[4]~9\ & ((\dp|ALUL|add|b_inv~combout\ $ 
-- (\dp|ALUL|regC|BF1|c:5:buf32|output~4_combout\)) # (GND)))
-- \dp|ALUL|add|temp[5]~11\ = CARRY((\dp|ALUL|add|b_inv~combout\ $ (!\dp|ALUL|regC|BF1|c:5:buf32|output~4_combout\)) # (!\dp|ALUL|add|temp[4]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|b_inv~combout\,
	datab => \dp|ALUL|regC|BF1|c:5:buf32|output~4_combout\,
	datad => VCC,
	cin => \dp|ALUL|add|temp[4]~9\,
	combout => \dp|ALUL|add|temp[5]~10_combout\,
	cout => \dp|ALUL|add|temp[5]~11\);

-- Location: LCCOMB_X17_Y8_N2
\dp|ALUL|regC|DFF1|c:5:dff32|d_input~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:5:dff32|d_input~18_combout\ = (\dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\ & ((\dp|ALUL|regA|A_R|c:5:dff32|dff0|q~q\) # ((\dp|ALUL|add|temp[5]~10_combout\ & \cu|control|NEG~combout\)))) # 
-- (!\dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\ & (\dp|ALUL|add|temp[5]~10_combout\ & (\cu|control|NEG~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\,
	datab => \dp|ALUL|add|temp[5]~10_combout\,
	datac => \cu|control|NEG~combout\,
	datad => \dp|ALUL|regA|A_R|c:5:dff32|dff0|q~q\,
	combout => \dp|ALUL|regC|DFF1|c:5:dff32|d_input~18_combout\);

-- Location: LCCOMB_X17_Y8_N12
\dp|ALUL|regC|DFF1|c:5:dff32|d_input~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:5:dff32|d_input~19_combout\ = (\dp|ALUL|regC|DFF1|c:5:dff32|d_input~18_combout\) # ((\dp|ALUL|regC|BF1|c:5:buf32|output~4_combout\ & ((\dp|ALUL|regC|DFF1|c:5:dff32|d_input~21_combout\) # (\cu|control|CB~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:5:buf32|output~4_combout\,
	datab => \dp|ALUL|regC|DFF1|c:5:dff32|d_input~21_combout\,
	datac => \cu|control|CB~combout\,
	datad => \dp|ALUL|regC|DFF1|c:5:dff32|d_input~18_combout\,
	combout => \dp|ALUL|regC|DFF1|c:5:dff32|d_input~19_combout\);

-- Location: LCCOMB_X17_Y8_N8
\dp|ALUL|regC|DFF1|c:5:dff32|d_input~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:5:dff32|d_input~16_combout\ = (\cu|control|NOTOP~combout\ & (\dp|ALUL|add|b_inv~combout\ $ (\dp|ALUL|regC|BF1|c:5:buf32|output~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|b_inv~combout\,
	datac => \dp|ALUL|regC|BF1|c:5:buf32|output~4_combout\,
	datad => \cu|control|NOTOP~combout\,
	combout => \dp|ALUL|regC|DFF1|c:5:dff32|d_input~16_combout\);

-- Location: FF_X19_Y12_N17
\dp|RegFIleL|gen_reg0|dff|c:6:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:6:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|RegFIleL|strop\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg0|dff|c:6:dff32|dff0|q~q\);

-- Location: FF_X19_Y12_N23
\dp|RegFIleL|gen_reg1|dffL|c:6:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:6:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|RegFIleL|strop\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg1|dffL|c:6:dff32|dff0|q~q\);

-- Location: LCCOMB_X19_Y12_N22
\dp|ALUL|regC|BF1|c:6:buf32|output~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:6:buf32|output~3_combout\ = (\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & (((\dp|RegFIleL|gen_reg1|dffL|c:6:dff32|dff0|q~q\)))) # (!\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & (\dp|RegFIleL|gen_reg0|dff|c:6:dff32|dff0|q~q\ & 
-- ((!\cu|control|BAout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RegFIleL|reg|input_decoder[0]~4_combout\,
	datab => \dp|RegFIleL|gen_reg0|dff|c:6:dff32|dff0|q~q\,
	datac => \dp|RegFIleL|gen_reg1|dffL|c:6:dff32|dff0|q~q\,
	datad => \cu|control|BAout~0_combout\,
	combout => \dp|ALUL|regC|BF1|c:6:buf32|output~3_combout\);

-- Location: LCCOMB_X17_Y8_N10
\dp|ALUL|add|b_sig[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|b_sig\(6) = \dp|ALUL|add|b_inv~combout\ $ (\dp|ALUL|regC|BF1|c:6:buf32|output~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|ALUL|add|b_inv~combout\,
	datad => \dp|ALUL|regC|BF1|c:6:buf32|output~4_combout\,
	combout => \dp|ALUL|add|b_sig\(6));

-- Location: FF_X19_Y11_N27
\dp|ALUL|regA|A_R|c:6:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|ALUL|regC|BF1|c:6:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regA|A_R|c:6:dff32|dff0|q~q\);

-- Location: LCCOMB_X17_Y8_N0
\dp|ALUL|add|a_sig[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|a_sig\(6) = (\dp|ALUL|regA|A_R|c:6:dff32|dff0|q~q\ & ((\cu|st|con|count_i\(1)) # ((\cu|st|con|count_i\(2)) # (\cu|st|con|count_i\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(1),
	datab => \cu|st|con|count_i\(2),
	datac => \cu|st|con|count_i\(0),
	datad => \dp|ALUL|regA|A_R|c:6:dff32|dff0|q~q\,
	combout => \dp|ALUL|add|a_sig\(6));

-- Location: LCCOMB_X18_Y8_N14
\dp|ALUL|add|a_sig[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|a_sig\(5) = (\dp|ALUL|regA|A_R|c:5:dff32|dff0|q~q\ & ((\cu|st|con|count_i\(0)) # ((\cu|st|con|count_i\(2)) # (\cu|st|con|count_i\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(0),
	datab => \dp|ALUL|regA|A_R|c:5:dff32|dff0|q~q\,
	datac => \cu|st|con|count_i\(2),
	datad => \cu|st|con|count_i\(1),
	combout => \dp|ALUL|add|a_sig\(5));

-- Location: LCCOMB_X18_Y11_N18
\dp|ALUL|add|add_32|Y:4:full32|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|add_32|Y:4:full32|c_out~0_combout\ = (\dp|ALUL|add|a_sig\(4) & ((\dp|ALUL|add|add_32|Y:3:full32|c_out~0_combout\) # (\dp|ALUL|add|b_inv~combout\ $ (\dp|ALUL|regC|BF1|c:4:buf32|output~4_combout\)))) # (!\dp|ALUL|add|a_sig\(4) & 
-- (\dp|ALUL|add|add_32|Y:3:full32|c_out~0_combout\ & (\dp|ALUL|add|b_inv~combout\ $ (\dp|ALUL|regC|BF1|c:4:buf32|output~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|a_sig\(4),
	datab => \dp|ALUL|add|b_inv~combout\,
	datac => \dp|ALUL|regC|BF1|c:4:buf32|output~4_combout\,
	datad => \dp|ALUL|add|add_32|Y:3:full32|c_out~0_combout\,
	combout => \dp|ALUL|add|add_32|Y:4:full32|c_out~0_combout\);

-- Location: LCCOMB_X19_Y11_N18
\dp|ALUL|add|add_32|Y:5:full32|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|add_32|Y:5:full32|c_out~0_combout\ = (\dp|ALUL|add|a_sig\(5) & ((\dp|ALUL|add|add_32|Y:4:full32|c_out~0_combout\) # (\dp|ALUL|add|b_inv~combout\ $ (\dp|ALUL|regC|BF1|c:5:buf32|output~4_combout\)))) # (!\dp|ALUL|add|a_sig\(5) & 
-- (\dp|ALUL|add|add_32|Y:4:full32|c_out~0_combout\ & (\dp|ALUL|add|b_inv~combout\ $ (\dp|ALUL|regC|BF1|c:5:buf32|output~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|a_sig\(5),
	datab => \dp|ALUL|add|b_inv~combout\,
	datac => \dp|ALUL|regC|BF1|c:5:buf32|output~4_combout\,
	datad => \dp|ALUL|add|add_32|Y:4:full32|c_out~0_combout\,
	combout => \dp|ALUL|add|add_32|Y:5:full32|c_out~0_combout\);

-- Location: LCCOMB_X17_Y8_N26
\dp|ALUL|regC|DFF1|c:6:dff32|d_input~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:6:dff32|d_input~15_combout\ = (\dp|ALUL|add|add_E~9_combout\ & (\dp|ALUL|add|b_sig\(6) $ (\dp|ALUL|add|a_sig\(6) $ (\dp|ALUL|add|add_32|Y:5:full32|c_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|b_sig\(6),
	datab => \dp|ALUL|add|a_sig\(6),
	datac => \dp|ALUL|add|add_32|Y:5:full32|c_out~0_combout\,
	datad => \dp|ALUL|add|add_E~9_combout\,
	combout => \dp|ALUL|regC|DFF1|c:6:dff32|d_input~15_combout\);

-- Location: LCCOMB_X17_Y8_N24
\dp|ALUL|regC|DFF1|c:6:dff32|d_input~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:6:dff32|d_input~16_combout\ = (\cu|de|Mux7~0_combout\ & (\cu|st|dec|Mux0~3_combout\ & (\dp|ALUL|add|b_inv~combout\ $ (\dp|ALUL|regC|BF1|c:6:buf32|output~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|de|Mux7~0_combout\,
	datab => \cu|st|dec|Mux0~3_combout\,
	datac => \dp|ALUL|add|b_inv~combout\,
	datad => \dp|ALUL|regC|BF1|c:6:buf32|output~4_combout\,
	combout => \dp|ALUL|regC|DFF1|c:6:dff32|d_input~16_combout\);

-- Location: LCCOMB_X19_Y8_N26
\dp|ALUL|add|b_sig[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|b_sig\(7) = \dp|ALUL|add|b_inv~combout\ $ (((\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\) # (\dp|ALUL|regC|BF1|c:7:buf32|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	datac => \dp|ALUL|add|b_inv~combout\,
	datad => \dp|ALUL|regC|BF1|c:7:buf32|output~3_combout\,
	combout => \dp|ALUL|add|b_sig\(7));

-- Location: LCCOMB_X19_Y11_N24
\dp|ALUL|add|add_32|Y:6:full32|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|add_32|Y:6:full32|c_out~0_combout\ = (\dp|ALUL|add|a_sig\(6) & ((\dp|ALUL|add|add_32|Y:5:full32|c_out~0_combout\) # (\dp|ALUL|add|b_inv~combout\ $ (\dp|ALUL|regC|BF1|c:6:buf32|output~4_combout\)))) # (!\dp|ALUL|add|a_sig\(6) & 
-- (\dp|ALUL|add|add_32|Y:5:full32|c_out~0_combout\ & (\dp|ALUL|add|b_inv~combout\ $ (\dp|ALUL|regC|BF1|c:6:buf32|output~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|a_sig\(6),
	datab => \dp|ALUL|add|b_inv~combout\,
	datac => \dp|ALUL|regC|BF1|c:6:buf32|output~4_combout\,
	datad => \dp|ALUL|add|add_32|Y:5:full32|c_out~0_combout\,
	combout => \dp|ALUL|add|add_32|Y:6:full32|c_out~0_combout\);

-- Location: FF_X19_Y10_N17
\dp|ALUL|regA|A_R|c:7:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:7:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|control|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regA|A_R|c:7:dff32|dff0|q~q\);

-- Location: LCCOMB_X19_Y10_N6
\dp|ALUL|add|a_sig[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|a_sig\(7) = (\dp|ALUL|regA|A_R|c:7:dff32|dff0|q~q\ & ((\cu|st|con|count_i\(0)) # ((\cu|st|con|count_i\(1)) # (\cu|st|con|count_i\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(0),
	datab => \cu|st|con|count_i\(1),
	datac => \cu|st|con|count_i\(2),
	datad => \dp|ALUL|regA|A_R|c:7:dff32|dff0|q~q\,
	combout => \dp|ALUL|add|a_sig\(7));

-- Location: LCCOMB_X20_Y10_N18
\dp|ALUL|add|add_32|Y:7:full32|second_HA|s~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|add_32|Y:7:full32|second_HA|s~0_combout\ = \dp|ALUL|add|add_32|Y:6:full32|c_out~0_combout\ $ (\dp|ALUL|add|a_sig\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|add_32|Y:6:full32|c_out~0_combout\,
	datab => \dp|ALUL|add|a_sig\(7),
	combout => \dp|ALUL|add|add_32|Y:7:full32|second_HA|s~0_combout\);

-- Location: LCCOMB_X19_Y10_N4
\dp|ALUL|regC|DFF1|c:7:dff32|d_input~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:7:dff32|d_input~15_combout\ = (\dp|ALUL|add|b_sig\(7) & ((\cu|control|NOTOP~combout\) # ((\dp|ALUL|add|add_E~9_combout\ & !\dp|ALUL|add|add_32|Y:7:full32|second_HA|s~0_combout\)))) # (!\dp|ALUL|add|b_sig\(7) & 
-- (\dp|ALUL|add|add_E~9_combout\ & ((\dp|ALUL|add|add_32|Y:7:full32|second_HA|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|b_sig\(7),
	datab => \dp|ALUL|add|add_E~9_combout\,
	datac => \cu|control|NOTOP~combout\,
	datad => \dp|ALUL|add|add_32|Y:7:full32|second_HA|s~0_combout\,
	combout => \dp|ALUL|regC|DFF1|c:7:dff32|d_input~15_combout\);

-- Location: LCCOMB_X22_Y10_N12
\dp|ALUL|add|temp[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|temp[6]~12_combout\ = (\dp|ALUL|add|temp[5]~11\ & ((\dp|ALUL|regC|BF1|c:6:buf32|output~4_combout\ $ (\dp|ALUL|add|b_inv~combout\)))) # (!\dp|ALUL|add|temp[5]~11\ & (\dp|ALUL|regC|BF1|c:6:buf32|output~4_combout\ $ (\dp|ALUL|add|b_inv~combout\ 
-- $ (VCC))))
-- \dp|ALUL|add|temp[6]~13\ = CARRY((!\dp|ALUL|add|temp[5]~11\ & (\dp|ALUL|regC|BF1|c:6:buf32|output~4_combout\ $ (\dp|ALUL|add|b_inv~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:6:buf32|output~4_combout\,
	datab => \dp|ALUL|add|b_inv~combout\,
	datad => VCC,
	cin => \dp|ALUL|add|temp[5]~11\,
	combout => \dp|ALUL|add|temp[6]~12_combout\,
	cout => \dp|ALUL|add|temp[6]~13\);

-- Location: LCCOMB_X22_Y10_N14
\dp|ALUL|add|temp[7]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|temp[7]~14_combout\ = (\dp|ALUL|add|temp[6]~13\ & (\dp|ALUL|regC|BF1|c:7:buf32|output~4_combout\ $ ((!\dp|ALUL|add|b_inv~combout\)))) # (!\dp|ALUL|add|temp[6]~13\ & ((\dp|ALUL|regC|BF1|c:7:buf32|output~4_combout\ $ 
-- (\dp|ALUL|add|b_inv~combout\)) # (GND)))
-- \dp|ALUL|add|temp[7]~15\ = CARRY((\dp|ALUL|regC|BF1|c:7:buf32|output~4_combout\ $ (!\dp|ALUL|add|b_inv~combout\)) # (!\dp|ALUL|add|temp[6]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:7:buf32|output~4_combout\,
	datab => \dp|ALUL|add|b_inv~combout\,
	datad => VCC,
	cin => \dp|ALUL|add|temp[6]~13\,
	combout => \dp|ALUL|add|temp[7]~14_combout\,
	cout => \dp|ALUL|add|temp[7]~15\);

-- Location: LCCOMB_X20_Y10_N16
\dp|ALUL|regC|DFF1|c:7:dff32|d_input~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:7:dff32|d_input~17_combout\ = (\dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\ & ((\dp|ALUL|regA|A_R|c:7:dff32|dff0|q~q\) # ((\cu|control|NEG~combout\ & \dp|ALUL|add|temp[7]~14_combout\)))) # 
-- (!\dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\ & (\cu|control|NEG~combout\ & ((\dp|ALUL|add|temp[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\,
	datab => \cu|control|NEG~combout\,
	datac => \dp|ALUL|regA|A_R|c:7:dff32|dff0|q~q\,
	datad => \dp|ALUL|add|temp[7]~14_combout\,
	combout => \dp|ALUL|regC|DFF1|c:7:dff32|d_input~17_combout\);

-- Location: LCCOMB_X20_Y10_N14
\dp|ALUL|regC|DFF1|c:7:dff32|d_input~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:7:dff32|d_input~3_combout\ = (!\cu|st|con|count_i\(1) & (!\cu|st|con|count_i\(0) & ((\dp|IRL|ir28|dff0|q~q\) # (\dp|ALUL|regA|A_R|c:7:dff32|dff0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|IRL|ir28|dff0|q~q\,
	datab => \cu|st|con|count_i\(1),
	datac => \dp|ALUL|regA|A_R|c:7:dff32|dff0|q~q\,
	datad => \cu|st|con|count_i\(0),
	combout => \dp|ALUL|regC|DFF1|c:7:dff32|d_input~3_combout\);

-- Location: LCCOMB_X19_Y10_N20
\dp|ALUL|regC|DFF1|c:7:dff32|d_input~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:7:dff32|d_input~20_combout\ = (\cu|st|con|count_i\(2) & (\dp|ALUL|regC|DFF1|c:7:dff32|d_input~3_combout\ & (!\dp|IRL|ir30|dff0|q~q\ & \dp|IRL|ir31|dff0|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(2),
	datab => \dp|ALUL|regC|DFF1|c:7:dff32|d_input~3_combout\,
	datac => \dp|IRL|ir30|dff0|q~q\,
	datad => \dp|IRL|ir31|dff0|q~q\,
	combout => \dp|ALUL|regC|DFF1|c:7:dff32|d_input~20_combout\);

-- Location: LCCOMB_X19_Y10_N30
\dp|ALUL|regC|DFF1|c:7:dff32|d_input~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:7:dff32|d_input~18_combout\ = (\dp|ALUL|regC|DFF1|c:7:dff32|d_input~17_combout\) # ((\dp|ALUL|regC|BF1|c:7:buf32|output~4_combout\ & ((\cu|control|CB~combout\) # (\dp|ALUL|regC|DFF1|c:7:dff32|d_input~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|CB~combout\,
	datab => \dp|ALUL|regC|DFF1|c:7:dff32|d_input~17_combout\,
	datac => \dp|ALUL|regC|BF1|c:7:buf32|output~4_combout\,
	datad => \dp|ALUL|regC|DFF1|c:7:dff32|d_input~20_combout\,
	combout => \dp|ALUL|regC|DFF1|c:7:dff32|d_input~18_combout\);

-- Location: FF_X17_Y9_N23
\dp|RegFIleL|gen_reg0|dff|c:8:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:8:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|RegFIleL|strop\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg0|dff|c:8:dff32|dff0|q~q\);

-- Location: FF_X17_Y10_N31
\dp|RegFIleL|gen_reg1|dffL|c:8:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:8:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|RegFIleL|strop\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg1|dffL|c:8:dff32|dff0|q~q\);

-- Location: LCCOMB_X17_Y10_N30
\dp|ALUL|regC|BF1|c:8:buf32|output~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:8:buf32|output~3_combout\ = (\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & (((\dp|RegFIleL|gen_reg1|dffL|c:8:dff32|dff0|q~q\)))) # (!\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & (!\cu|control|BAout~0_combout\ & 
-- (\dp|RegFIleL|gen_reg0|dff|c:8:dff32|dff0|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|BAout~0_combout\,
	datab => \dp|RegFIleL|gen_reg0|dff|c:8:dff32|dff0|q~q\,
	datac => \dp|RegFIleL|gen_reg1|dffL|c:8:dff32|dff0|q~q\,
	datad => \dp|RegFIleL|reg|input_decoder[0]~4_combout\,
	combout => \dp|ALUL|regC|BF1|c:8:buf32|output~3_combout\);

-- Location: FF_X17_Y10_N1
\dp|ALUL|regA|A_R|c:8:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|ALUL|regC|BF1|c:8:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regA|A_R|c:8:dff32|dff0|q~q\);

-- Location: LCCOMB_X22_Y10_N16
\dp|ALUL|add|temp[8]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|temp[8]~16_combout\ = (\dp|ALUL|add|temp[7]~15\ & ((\dp|ALUL|add|b_inv~combout\ $ (\dp|ALUL|regC|BF1|c:8:buf32|output~4_combout\)))) # (!\dp|ALUL|add|temp[7]~15\ & (\dp|ALUL|add|b_inv~combout\ $ (\dp|ALUL|regC|BF1|c:8:buf32|output~4_combout\ 
-- $ (VCC))))
-- \dp|ALUL|add|temp[8]~17\ = CARRY((!\dp|ALUL|add|temp[7]~15\ & (\dp|ALUL|add|b_inv~combout\ $ (\dp|ALUL|regC|BF1|c:8:buf32|output~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|b_inv~combout\,
	datab => \dp|ALUL|regC|BF1|c:8:buf32|output~4_combout\,
	datad => VCC,
	cin => \dp|ALUL|add|temp[7]~15\,
	combout => \dp|ALUL|add|temp[8]~16_combout\,
	cout => \dp|ALUL|add|temp[8]~17\);

-- Location: LCCOMB_X20_Y13_N10
\dp|ALUL|regC|DFF1|c:8:dff32|d_input~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:8:dff32|d_input~18_combout\ = (\dp|ALUL|regA|A_R|c:8:dff32|dff0|q~q\ & ((\dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\) # ((\cu|control|NEG~combout\ & \dp|ALUL|add|temp[8]~16_combout\)))) # (!\dp|ALUL|regA|A_R|c:8:dff32|dff0|q~q\ & 
-- (\cu|control|NEG~combout\ & ((\dp|ALUL|add|temp[8]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regA|A_R|c:8:dff32|dff0|q~q\,
	datab => \cu|control|NEG~combout\,
	datac => \dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\,
	datad => \dp|ALUL|add|temp[8]~16_combout\,
	combout => \dp|ALUL|regC|DFF1|c:8:dff32|d_input~18_combout\);

-- Location: LCCOMB_X20_Y13_N30
\dp|ALUL|regC|DFF1|c:8:dff32|d_input~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:8:dff32|d_input~3_combout\ = (!\cu|st|con|count_i\(0) & (!\cu|st|con|count_i\(1) & ((\dp|IRL|ir28|dff0|q~q\) # (\dp|ALUL|regA|A_R|c:8:dff32|dff0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(0),
	datab => \dp|IRL|ir28|dff0|q~q\,
	datac => \cu|st|con|count_i\(1),
	datad => \dp|ALUL|regA|A_R|c:8:dff32|dff0|q~q\,
	combout => \dp|ALUL|regC|DFF1|c:8:dff32|d_input~3_combout\);

-- Location: LCCOMB_X20_Y13_N0
\dp|ALUL|regC|DFF1|c:8:dff32|d_input~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:8:dff32|d_input~20_combout\ = (\dp|ALUL|regC|DFF1|c:8:dff32|d_input~3_combout\ & (\dp|IRL|ir31|dff0|q~q\ & (\cu|st|con|count_i\(2) & !\dp|IRL|ir30|dff0|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:8:dff32|d_input~3_combout\,
	datab => \dp|IRL|ir31|dff0|q~q\,
	datac => \cu|st|con|count_i\(2),
	datad => \dp|IRL|ir30|dff0|q~q\,
	combout => \dp|ALUL|regC|DFF1|c:8:dff32|d_input~20_combout\);

-- Location: LCCOMB_X20_Y13_N4
\dp|ALUL|regC|DFF1|c:8:dff32|d_input~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:8:dff32|d_input~17_combout\ = (\dp|ALUL|regC|BF1|c:8:buf32|output~4_combout\ & ((\dp|ALUL|regC|DFF1|c:8:dff32|d_input~20_combout\) # ((\cu|st|dec|Mux0~4_combout\ & !\cu|control|CB~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|dec|Mux0~4_combout\,
	datab => \dp|ALUL|regC|DFF1|c:8:dff32|d_input~20_combout\,
	datac => \cu|control|CB~2_combout\,
	datad => \dp|ALUL|regC|BF1|c:8:buf32|output~4_combout\,
	combout => \dp|ALUL|regC|DFF1|c:8:dff32|d_input~17_combout\);

-- Location: LCCOMB_X20_Y12_N30
\dp|ALUL|regC|DFF1|c:9:dff32|d_input~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:9:dff32|d_input~16_combout\ = (\cu|control|NOTOP~combout\ & (\dp|ALUL|add|b_inv~combout\ $ (((\dp|ALUL|regC|BF1|c:9:buf32|output~3_combout\) # (\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:9:buf32|output~3_combout\,
	datab => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	datac => \cu|control|NOTOP~combout\,
	datad => \dp|ALUL|add|b_inv~combout\,
	combout => \dp|ALUL|regC|DFF1|c:9:dff32|d_input~16_combout\);

-- Location: FF_X19_Y12_N1
\dp|RegFIleL|gen_reg0|dff|c:10:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|ALUL|regC|BF1|c:10:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \dp|RegFIleL|strop\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg0|dff|c:10:dff32|dff0|q~q\);

-- Location: FF_X19_Y12_N7
\dp|RegFIleL|gen_reg1|dffL|c:10:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:10:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|RegFIleL|strop\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg1|dffL|c:10:dff32|dff0|q~q\);

-- Location: LCCOMB_X19_Y12_N6
\dp|ALUL|regC|BF1|c:10:buf32|output~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:10:buf32|output~2_combout\ = (\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & (((\dp|RegFIleL|gen_reg1|dffL|c:10:dff32|dff0|q~q\)))) # (!\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & (\dp|RegFIleL|gen_reg0|dff|c:10:dff32|dff0|q~q\ & 
-- ((!\cu|control|BAout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RegFIleL|reg|input_decoder[0]~4_combout\,
	datab => \dp|RegFIleL|gen_reg0|dff|c:10:dff32|dff0|q~q\,
	datac => \dp|RegFIleL|gen_reg1|dffL|c:10:dff32|dff0|q~q\,
	datad => \cu|control|BAout~0_combout\,
	combout => \dp|ALUL|regC|BF1|c:10:buf32|output~2_combout\);

-- Location: FF_X16_Y13_N21
\dp|PCL|dff|c:10:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:10:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|control|PCin~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|PCL|dff|c:10:dff32|dff0|q~q\);

-- Location: FF_X16_Y13_N15
\dp|IRL|ir10|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:10:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|st|dec|Mux0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|IRL|ir10|dff0|q~q\);

-- Location: LCCOMB_X16_Y13_N14
\dp|ALUL|regC|BF1|c:10:buf32|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:10:buf32|output~0_combout\ = (\dp|PCL|dff|c:10:dff32|dff0|q~q\ & (((\dp|IRL|ir10|dff0|q~q\) # (\dp|IRL|c1_or_c2~0_combout\)))) # (!\dp|PCL|dff|c:10:dff32|dff0|q~q\ & (!\cu|control|PCout~combout\ & ((\dp|IRL|ir10|dff0|q~q\) # 
-- (\dp|IRL|c1_or_c2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|PCL|dff|c:10:dff32|dff0|q~q\,
	datab => \cu|control|PCout~combout\,
	datac => \dp|IRL|ir10|dff0|q~q\,
	datad => \dp|IRL|c1_or_c2~0_combout\,
	combout => \dp|ALUL|regC|BF1|c:10:buf32|output~0_combout\);

-- Location: FF_X19_Y12_N15
\dp|RegFIleL|gen_reg0|dff|c:11:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:11:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|RegFIleL|strop\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg0|dff|c:11:dff32|dff0|q~q\);

-- Location: FF_X19_Y12_N11
\dp|RegFIleL|gen_reg1|dffL|c:11:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:11:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|RegFIleL|strop\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg1|dffL|c:11:dff32|dff0|q~q\);

-- Location: LCCOMB_X19_Y12_N10
\dp|ALUL|regC|BF1|c:11:buf32|output~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:11:buf32|output~3_combout\ = (\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & (((\dp|RegFIleL|gen_reg1|dffL|c:11:dff32|dff0|q~q\)))) # (!\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & (\dp|RegFIleL|gen_reg0|dff|c:11:dff32|dff0|q~q\ & 
-- ((!\cu|control|BAout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RegFIleL|reg|input_decoder[0]~4_combout\,
	datab => \dp|RegFIleL|gen_reg0|dff|c:11:dff32|dff0|q~q\,
	datac => \dp|RegFIleL|gen_reg1|dffL|c:11:dff32|dff0|q~q\,
	datad => \cu|control|BAout~0_combout\,
	combout => \dp|ALUL|regC|BF1|c:11:buf32|output~3_combout\);

-- Location: IOIBUF_X31_Y12_N8
\md[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => md(11),
	o => \md[11]~input_o\);

-- Location: LCCOMB_X16_Y12_N20
\dp|MEML|or_G[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|MEML|or_G\(11) = (\dp|ALUL|regC|BF1|c:11:buf32|output~4_combout\ & ((\cu|control|MDin~combout\) # ((\md[11]~input_o\ & \md_read~input_o\)))) # (!\dp|ALUL|regC|BF1|c:11:buf32|output~4_combout\ & (\md[11]~input_o\ & (\md_read~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:11:buf32|output~4_combout\,
	datab => \md[11]~input_o\,
	datac => \md_read~input_o\,
	datad => \cu|control|MDin~combout\,
	combout => \dp|MEML|or_G\(11));

-- Location: FF_X16_Y12_N21
\dp|MEML|md_r|c:11:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|MEML|or_G\(11),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \dp|MEML|md_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|md_r|c:11:dff32|dff0|q~q\);

-- Location: FF_X18_Y12_N31
\dp|PCL|dff|c:11:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:11:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|control|PCin~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|PCL|dff|c:11:dff32|dff0|q~q\);

-- Location: FF_X18_Y12_N1
\dp|IRL|ir11|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:11:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|st|dec|Mux0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|IRL|ir11|dff0|q~q\);

-- Location: LCCOMB_X18_Y12_N0
\dp|ALUL|regC|BF1|c:11:buf32|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:11:buf32|output~0_combout\ = (\cu|control|PCout~combout\ & (\dp|PCL|dff|c:11:dff32|dff0|q~q\ & ((\dp|IRL|ir11|dff0|q~q\) # (\dp|IRL|c1_or_c2~0_combout\)))) # (!\cu|control|PCout~combout\ & (((\dp|IRL|ir11|dff0|q~q\) # 
-- (\dp|IRL|c1_or_c2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|PCout~combout\,
	datab => \dp|PCL|dff|c:11:dff32|dff0|q~q\,
	datac => \dp|IRL|ir11|dff0|q~q\,
	datad => \dp|IRL|c1_or_c2~0_combout\,
	combout => \dp|ALUL|regC|BF1|c:11:buf32|output~0_combout\);

-- Location: LCCOMB_X18_Y12_N30
\dp|ALUL|regC|BF1|c:11:buf32|output~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:11:buf32|output~1_combout\ = (\dp|ALUL|regC|BF1|c:11:buf32|output~0_combout\ & ((\dp|MEML|md_r|c:11:dff32|dff0|q~q\) # (!\cu|control|MDout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|MEML|md_r|c:11:dff32|dff0|q~q\,
	datab => \cu|control|MDout~0_combout\,
	datad => \dp|ALUL|regC|BF1|c:11:buf32|output~0_combout\,
	combout => \dp|ALUL|regC|BF1|c:11:buf32|output~1_combout\);

-- Location: FF_X15_Y12_N23
\dp|ALUL|regA|A_R|c:11:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:11:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|control|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regA|A_R|c:11:dff32|dff0|q~q\);

-- Location: LCCOMB_X15_Y12_N26
\dp|ALUL|regC|DFF1|c:11:dff32|d_input~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:11:dff32|d_input~3_combout\ = (!\cu|st|con|count_i\(0) & (!\cu|st|con|count_i\(1) & ((\dp|ALUL|regA|A_R|c:11:dff32|dff0|q~q\) # (\dp|IRL|ir28|dff0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regA|A_R|c:11:dff32|dff0|q~q\,
	datab => \cu|st|con|count_i\(0),
	datac => \cu|st|con|count_i\(1),
	datad => \dp|IRL|ir28|dff0|q~q\,
	combout => \dp|ALUL|regC|DFF1|c:11:dff32|d_input~3_combout\);

-- Location: LCCOMB_X14_Y12_N10
\dp|ALUL|regC|DFF1|c:11:dff32|d_input~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:11:dff32|d_input~21_combout\ = (!\dp|IRL|ir30|dff0|q~q\ & (\dp|ALUL|regC|DFF1|c:11:dff32|d_input~3_combout\ & (\dp|IRL|ir31|dff0|q~q\ & \cu|st|con|count_i\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|IRL|ir30|dff0|q~q\,
	datab => \dp|ALUL|regC|DFF1|c:11:dff32|d_input~3_combout\,
	datac => \dp|IRL|ir31|dff0|q~q\,
	datad => \cu|st|con|count_i\(2),
	combout => \dp|ALUL|regC|DFF1|c:11:dff32|d_input~21_combout\);

-- Location: LCCOMB_X22_Y10_N18
\dp|ALUL|add|temp[9]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|temp[9]~18_combout\ = (\dp|ALUL|add|temp[8]~17\ & (\dp|ALUL|regC|BF1|c:9:buf32|output~4_combout\ $ ((!\dp|ALUL|add|b_inv~combout\)))) # (!\dp|ALUL|add|temp[8]~17\ & ((\dp|ALUL|regC|BF1|c:9:buf32|output~4_combout\ $ 
-- (\dp|ALUL|add|b_inv~combout\)) # (GND)))
-- \dp|ALUL|add|temp[9]~19\ = CARRY((\dp|ALUL|regC|BF1|c:9:buf32|output~4_combout\ $ (!\dp|ALUL|add|b_inv~combout\)) # (!\dp|ALUL|add|temp[8]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:9:buf32|output~4_combout\,
	datab => \dp|ALUL|add|b_inv~combout\,
	datad => VCC,
	cin => \dp|ALUL|add|temp[8]~17\,
	combout => \dp|ALUL|add|temp[9]~18_combout\,
	cout => \dp|ALUL|add|temp[9]~19\);

-- Location: LCCOMB_X22_Y10_N20
\dp|ALUL|add|temp[10]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|temp[10]~20_combout\ = (\dp|ALUL|add|temp[9]~19\ & ((\dp|ALUL|regC|BF1|c:10:buf32|output~4_combout\ $ (\dp|ALUL|add|b_inv~combout\)))) # (!\dp|ALUL|add|temp[9]~19\ & (\dp|ALUL|regC|BF1|c:10:buf32|output~4_combout\ $ 
-- (\dp|ALUL|add|b_inv~combout\ $ (VCC))))
-- \dp|ALUL|add|temp[10]~21\ = CARRY((!\dp|ALUL|add|temp[9]~19\ & (\dp|ALUL|regC|BF1|c:10:buf32|output~4_combout\ $ (\dp|ALUL|add|b_inv~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:10:buf32|output~4_combout\,
	datab => \dp|ALUL|add|b_inv~combout\,
	datad => VCC,
	cin => \dp|ALUL|add|temp[9]~19\,
	combout => \dp|ALUL|add|temp[10]~20_combout\,
	cout => \dp|ALUL|add|temp[10]~21\);

-- Location: LCCOMB_X22_Y10_N22
\dp|ALUL|add|temp[11]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|temp[11]~22_combout\ = (\dp|ALUL|add|temp[10]~21\ & (\dp|ALUL|add|b_inv~combout\ $ ((!\dp|ALUL|regC|BF1|c:11:buf32|output~4_combout\)))) # (!\dp|ALUL|add|temp[10]~21\ & ((\dp|ALUL|add|b_inv~combout\ $ 
-- (\dp|ALUL|regC|BF1|c:11:buf32|output~4_combout\)) # (GND)))
-- \dp|ALUL|add|temp[11]~23\ = CARRY((\dp|ALUL|add|b_inv~combout\ $ (!\dp|ALUL|regC|BF1|c:11:buf32|output~4_combout\)) # (!\dp|ALUL|add|temp[10]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|b_inv~combout\,
	datab => \dp|ALUL|regC|BF1|c:11:buf32|output~4_combout\,
	datad => VCC,
	cin => \dp|ALUL|add|temp[10]~21\,
	combout => \dp|ALUL|add|temp[11]~22_combout\,
	cout => \dp|ALUL|add|temp[11]~23\);

-- Location: LCCOMB_X16_Y12_N6
\dp|ALUL|regC|DFF1|c:11:dff32|d_input~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:11:dff32|d_input~18_combout\ = (\dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\ & ((\dp|ALUL|regA|A_R|c:11:dff32|dff0|q~q\) # ((\dp|ALUL|add|temp[11]~22_combout\ & \cu|control|NEG~combout\)))) # 
-- (!\dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\ & (((\dp|ALUL|add|temp[11]~22_combout\ & \cu|control|NEG~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\,
	datab => \dp|ALUL|regA|A_R|c:11:dff32|dff0|q~q\,
	datac => \dp|ALUL|add|temp[11]~22_combout\,
	datad => \cu|control|NEG~combout\,
	combout => \dp|ALUL|regC|DFF1|c:11:dff32|d_input~18_combout\);

-- Location: LCCOMB_X15_Y12_N12
\dp|ALUL|regC|DFF1|c:11:dff32|d_input~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:11:dff32|d_input~19_combout\ = (\dp|ALUL|regC|DFF1|c:11:dff32|d_input~18_combout\) # ((\dp|ALUL|regC|BF1|c:11:buf32|output~4_combout\ & ((\dp|ALUL|regC|DFF1|c:11:dff32|d_input~21_combout\) # (\cu|control|CB~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:11:dff32|d_input~21_combout\,
	datab => \cu|control|CB~combout\,
	datac => \dp|ALUL|regC|BF1|c:11:buf32|output~4_combout\,
	datad => \dp|ALUL|regC|DFF1|c:11:dff32|d_input~18_combout\,
	combout => \dp|ALUL|regC|DFF1|c:11:dff32|d_input~19_combout\);

-- Location: FF_X14_Y11_N11
\dp|IRL|ir12|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:12:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|st|dec|Mux0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|IRL|ir12|dff0|q~q\);

-- Location: FF_X16_Y13_N25
\dp|PCL|dff|c:12:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:12:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|control|PCin~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|PCL|dff|c:12:dff32|dff0|q~q\);

-- Location: LCCOMB_X16_Y13_N24
\dp|ALUL|regC|BF1|c:12:buf32|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:12:buf32|output~0_combout\ = (\dp|IRL|ir12|dff0|q~q\ & (((\dp|PCL|dff|c:12:dff32|dff0|q~q\)) # (!\cu|control|PCout~combout\))) # (!\dp|IRL|ir12|dff0|q~q\ & (\dp|IRL|c1_or_c2~0_combout\ & ((\dp|PCL|dff|c:12:dff32|dff0|q~q\) # 
-- (!\cu|control|PCout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|IRL|ir12|dff0|q~q\,
	datab => \cu|control|PCout~combout\,
	datac => \dp|PCL|dff|c:12:dff32|dff0|q~q\,
	datad => \dp|IRL|c1_or_c2~0_combout\,
	combout => \dp|ALUL|regC|BF1|c:12:buf32|output~0_combout\);

-- Location: IOIBUF_X10_Y16_N8
\md[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => md(12),
	o => \md[12]~input_o\);

-- Location: LCCOMB_X16_Y12_N2
\dp|MEML|or_G[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|MEML|or_G\(12) = (\dp|ALUL|regC|BF1|c:12:buf32|output~4_combout\ & ((\cu|control|MDin~combout\) # ((\md[12]~input_o\ & \md_read~input_o\)))) # (!\dp|ALUL|regC|BF1|c:12:buf32|output~4_combout\ & (\md[12]~input_o\ & (\md_read~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:12:buf32|output~4_combout\,
	datab => \md[12]~input_o\,
	datac => \md_read~input_o\,
	datad => \cu|control|MDin~combout\,
	combout => \dp|MEML|or_G\(12));

-- Location: FF_X16_Y12_N3
\dp|MEML|md_r|c:12:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|MEML|or_G\(12),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \dp|MEML|md_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|md_r|c:12:dff32|dff0|q~q\);

-- Location: FF_X18_Y10_N15
\dp|ALUL|regA|A_R|c:12:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:12:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|control|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regA|A_R|c:12:dff32|dff0|q~q\);

-- Location: LCCOMB_X22_Y10_N24
\dp|ALUL|add|temp[12]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|temp[12]~24_combout\ = (\dp|ALUL|add|temp[11]~23\ & ((\dp|ALUL|regC|BF1|c:12:buf32|output~4_combout\ $ (\dp|ALUL|add|b_inv~combout\)))) # (!\dp|ALUL|add|temp[11]~23\ & (\dp|ALUL|regC|BF1|c:12:buf32|output~4_combout\ $ 
-- (\dp|ALUL|add|b_inv~combout\ $ (VCC))))
-- \dp|ALUL|add|temp[12]~25\ = CARRY((!\dp|ALUL|add|temp[11]~23\ & (\dp|ALUL|regC|BF1|c:12:buf32|output~4_combout\ $ (\dp|ALUL|add|b_inv~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:12:buf32|output~4_combout\,
	datab => \dp|ALUL|add|b_inv~combout\,
	datad => VCC,
	cin => \dp|ALUL|add|temp[11]~23\,
	combout => \dp|ALUL|add|temp[12]~24_combout\,
	cout => \dp|ALUL|add|temp[12]~25\);

-- Location: LCCOMB_X18_Y10_N12
\dp|ALUL|regC|DFF1|c:12:dff32|d_input~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:12:dff32|d_input~18_combout\ = (\cu|control|NEG~combout\ & ((\dp|ALUL|add|temp[12]~24_combout\) # ((\dp|ALUL|regA|A_R|c:12:dff32|dff0|q~q\ & \dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\)))) # (!\cu|control|NEG~combout\ & 
-- (\dp|ALUL|regA|A_R|c:12:dff32|dff0|q~q\ & ((\dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|NEG~combout\,
	datab => \dp|ALUL|regA|A_R|c:12:dff32|dff0|q~q\,
	datac => \dp|ALUL|add|temp[12]~24_combout\,
	datad => \dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\,
	combout => \dp|ALUL|regC|DFF1|c:12:dff32|d_input~18_combout\);

-- Location: LCCOMB_X18_Y10_N10
\dp|ALUL|regC|DFF1|c:12:dff32|d_input~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:12:dff32|d_input~3_combout\ = (!\cu|st|con|count_i\(0) & (!\cu|st|con|count_i\(1) & ((\dp|IRL|ir28|dff0|q~q\) # (\dp|ALUL|regA|A_R|c:12:dff32|dff0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|IRL|ir28|dff0|q~q\,
	datab => \dp|ALUL|regA|A_R|c:12:dff32|dff0|q~q\,
	datac => \cu|st|con|count_i\(0),
	datad => \cu|st|con|count_i\(1),
	combout => \dp|ALUL|regC|DFF1|c:12:dff32|d_input~3_combout\);

-- Location: LCCOMB_X18_Y10_N28
\dp|ALUL|regC|DFF1|c:12:dff32|d_input~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:12:dff32|d_input~21_combout\ = (\dp|ALUL|regC|DFF1|c:12:dff32|d_input~3_combout\ & (!\dp|IRL|ir30|dff0|q~q\ & (\cu|st|con|count_i\(2) & \dp|IRL|ir31|dff0|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:12:dff32|d_input~3_combout\,
	datab => \dp|IRL|ir30|dff0|q~q\,
	datac => \cu|st|con|count_i\(2),
	datad => \dp|IRL|ir31|dff0|q~q\,
	combout => \dp|ALUL|regC|DFF1|c:12:dff32|d_input~21_combout\);

-- Location: LCCOMB_X18_Y10_N6
\dp|ALUL|regC|DFF1|c:12:dff32|d_input~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:12:dff32|d_input~19_combout\ = (\dp|ALUL|regC|DFF1|c:12:dff32|d_input~18_combout\) # ((\dp|ALUL|regC|BF1|c:12:buf32|output~4_combout\ & ((\cu|control|CB~combout\) # (\dp|ALUL|regC|DFF1|c:12:dff32|d_input~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:12:dff32|d_input~18_combout\,
	datab => \cu|control|CB~combout\,
	datac => \dp|ALUL|regC|BF1|c:12:buf32|output~4_combout\,
	datad => \dp|ALUL|regC|DFF1|c:12:dff32|d_input~21_combout\,
	combout => \dp|ALUL|regC|DFF1|c:12:dff32|d_input~19_combout\);

-- Location: LCCOMB_X18_Y10_N16
\dp|ALUL|regC|DFF1|c:12:dff32|d_input~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:12:dff32|d_input~16_combout\ = (\cu|control|NOTOP~combout\ & (\dp|ALUL|add|b_inv~combout\ $ (((\dp|ALUL|regC|BF1|c:12:buf32|output~3_combout\) # (\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:12:buf32|output~3_combout\,
	datab => \cu|control|NOTOP~combout\,
	datac => \dp|ALUL|add|b_inv~combout\,
	datad => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	combout => \dp|ALUL|regC|DFF1|c:12:dff32|d_input~16_combout\);

-- Location: FF_X16_Y13_N23
\dp|PCL|dff|c:13:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:13:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|control|PCin~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|PCL|dff|c:13:dff32|dff0|q~q\);

-- Location: FF_X16_Y13_N29
\dp|IRL|ir13|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:13:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|st|dec|Mux0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|IRL|ir13|dff0|q~q\);

-- Location: LCCOMB_X16_Y13_N28
\dp|ALUL|regC|BF1|c:13:buf32|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:13:buf32|output~0_combout\ = (\dp|PCL|dff|c:13:dff32|dff0|q~q\ & (((\dp|IRL|ir13|dff0|q~q\) # (\dp|IRL|c1_or_c2~0_combout\)))) # (!\dp|PCL|dff|c:13:dff32|dff0|q~q\ & (!\cu|control|PCout~combout\ & ((\dp|IRL|ir13|dff0|q~q\) # 
-- (\dp|IRL|c1_or_c2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|PCL|dff|c:13:dff32|dff0|q~q\,
	datab => \cu|control|PCout~combout\,
	datac => \dp|IRL|ir13|dff0|q~q\,
	datad => \dp|IRL|c1_or_c2~0_combout\,
	combout => \dp|ALUL|regC|BF1|c:13:buf32|output~0_combout\);

-- Location: LCCOMB_X18_Y10_N8
\dp|ALUL|regC|DFF1|c:13:dff32|d_input~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:13:dff32|d_input~16_combout\ = (\cu|control|NOTOP~combout\ & (\dp|ALUL|add|b_inv~combout\ $ (((\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\) # (\dp|ALUL|regC|BF1|c:13:buf32|output~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	datab => \dp|ALUL|regC|BF1|c:13:buf32|output~3_combout\,
	datac => \cu|control|NOTOP~combout\,
	datad => \dp|ALUL|add|b_inv~combout\,
	combout => \dp|ALUL|regC|DFF1|c:13:dff32|d_input~16_combout\);

-- Location: FF_X20_Y10_N19
\dp|ALUL|regA|A_R|c:13:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:13:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|control|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regA|A_R|c:13:dff32|dff0|q~q\);

-- Location: LCCOMB_X22_Y10_N26
\dp|ALUL|add|temp[13]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|temp[13]~26_combout\ = (\dp|ALUL|add|temp[12]~25\ & (\dp|ALUL|regC|BF1|c:13:buf32|output~4_combout\ $ ((!\dp|ALUL|add|b_inv~combout\)))) # (!\dp|ALUL|add|temp[12]~25\ & ((\dp|ALUL|regC|BF1|c:13:buf32|output~4_combout\ $ 
-- (\dp|ALUL|add|b_inv~combout\)) # (GND)))
-- \dp|ALUL|add|temp[13]~27\ = CARRY((\dp|ALUL|regC|BF1|c:13:buf32|output~4_combout\ $ (!\dp|ALUL|add|b_inv~combout\)) # (!\dp|ALUL|add|temp[12]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:13:buf32|output~4_combout\,
	datab => \dp|ALUL|add|b_inv~combout\,
	datad => VCC,
	cin => \dp|ALUL|add|temp[12]~25\,
	combout => \dp|ALUL|add|temp[13]~26_combout\,
	cout => \dp|ALUL|add|temp[13]~27\);

-- Location: LCCOMB_X20_Y10_N22
\dp|ALUL|regC|DFF1|c:13:dff32|d_input~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:13:dff32|d_input~18_combout\ = (\dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\ & ((\dp|ALUL|regA|A_R|c:13:dff32|dff0|q~q\) # ((\cu|control|NEG~combout\ & \dp|ALUL|add|temp[13]~26_combout\)))) # 
-- (!\dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\ & (((\cu|control|NEG~combout\ & \dp|ALUL|add|temp[13]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\,
	datab => \dp|ALUL|regA|A_R|c:13:dff32|dff0|q~q\,
	datac => \cu|control|NEG~combout\,
	datad => \dp|ALUL|add|temp[13]~26_combout\,
	combout => \dp|ALUL|regC|DFF1|c:13:dff32|d_input~18_combout\);

-- Location: LCCOMB_X20_Y13_N26
\dp|ALUL|regC|DFF1|c:13:dff32|d_input~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:13:dff32|d_input~3_combout\ = (!\cu|st|con|count_i\(0) & (!\cu|st|con|count_i\(1) & ((\dp|ALUL|regA|A_R|c:13:dff32|dff0|q~q\) # (\dp|IRL|ir28|dff0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(0),
	datab => \cu|st|con|count_i\(1),
	datac => \dp|ALUL|regA|A_R|c:13:dff32|dff0|q~q\,
	datad => \dp|IRL|ir28|dff0|q~q\,
	combout => \dp|ALUL|regC|DFF1|c:13:dff32|d_input~3_combout\);

-- Location: LCCOMB_X20_Y13_N20
\dp|ALUL|regC|DFF1|c:13:dff32|d_input~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:13:dff32|d_input~21_combout\ = (\dp|ALUL|regC|DFF1|c:13:dff32|d_input~3_combout\ & (!\dp|IRL|ir30|dff0|q~q\ & (\dp|IRL|ir31|dff0|q~q\ & \cu|st|con|count_i\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:13:dff32|d_input~3_combout\,
	datab => \dp|IRL|ir30|dff0|q~q\,
	datac => \dp|IRL|ir31|dff0|q~q\,
	datad => \cu|st|con|count_i\(2),
	combout => \dp|ALUL|regC|DFF1|c:13:dff32|d_input~21_combout\);

-- Location: LCCOMB_X19_Y10_N22
\dp|ALUL|regC|DFF1|c:13:dff32|d_input~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:13:dff32|d_input~19_combout\ = (\dp|ALUL|regC|DFF1|c:13:dff32|d_input~18_combout\) # ((\dp|ALUL|regC|BF1|c:13:buf32|output~4_combout\ & ((\cu|control|CB~combout\) # (\dp|ALUL|regC|DFF1|c:13:dff32|d_input~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|CB~combout\,
	datab => \dp|ALUL|regC|DFF1|c:13:dff32|d_input~18_combout\,
	datac => \dp|ALUL|regC|DFF1|c:13:dff32|d_input~21_combout\,
	datad => \dp|ALUL|regC|BF1|c:13:buf32|output~4_combout\,
	combout => \dp|ALUL|regC|DFF1|c:13:dff32|d_input~19_combout\);

-- Location: FF_X16_Y13_N9
\dp|IRL|ir14|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:14:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|st|dec|Mux0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|IRL|ir14|dff0|q~q\);

-- Location: FF_X16_Y13_N27
\dp|PCL|dff|c:14:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:14:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|control|PCin~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|PCL|dff|c:14:dff32|dff0|q~q\);

-- Location: LCCOMB_X16_Y13_N8
\dp|ALUL|regC|BF1|c:14:buf32|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:14:buf32|output~0_combout\ = (\dp|IRL|c1_or_c2~0_combout\ & (((\dp|PCL|dff|c:14:dff32|dff0|q~q\)) # (!\cu|control|PCout~combout\))) # (!\dp|IRL|c1_or_c2~0_combout\ & (\dp|IRL|ir14|dff0|q~q\ & ((\dp|PCL|dff|c:14:dff32|dff0|q~q\) # 
-- (!\cu|control|PCout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|IRL|c1_or_c2~0_combout\,
	datab => \cu|control|PCout~combout\,
	datac => \dp|IRL|ir14|dff0|q~q\,
	datad => \dp|PCL|dff|c:14:dff32|dff0|q~q\,
	combout => \dp|ALUL|regC|BF1|c:14:buf32|output~0_combout\);

-- Location: FF_X23_Y13_N9
\dp|ALUL|regA|A_R|c:14:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:14:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|control|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regA|A_R|c:14:dff32|dff0|q~q\);

-- Location: LCCOMB_X23_Y13_N16
\dp|ALUL|regC|DFF1|c:14:dff32|d_input~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:14:dff32|d_input~3_combout\ = (!\cu|st|con|count_i\(1) & (!\cu|st|con|count_i\(0) & ((\dp|IRL|ir28|dff0|q~q\) # (\dp|ALUL|regA|A_R|c:14:dff32|dff0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(1),
	datab => \dp|IRL|ir28|dff0|q~q\,
	datac => \dp|ALUL|regA|A_R|c:14:dff32|dff0|q~q\,
	datad => \cu|st|con|count_i\(0),
	combout => \dp|ALUL|regC|DFF1|c:14:dff32|d_input~3_combout\);

-- Location: LCCOMB_X23_Y13_N30
\dp|ALUL|regC|DFF1|c:14:dff32|d_input~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:14:dff32|d_input~21_combout\ = (\dp|IRL|ir31|dff0|q~q\ & (!\dp|IRL|ir30|dff0|q~q\ & (\cu|st|con|count_i\(2) & \dp|ALUL|regC|DFF1|c:14:dff32|d_input~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|IRL|ir31|dff0|q~q\,
	datab => \dp|IRL|ir30|dff0|q~q\,
	datac => \cu|st|con|count_i\(2),
	datad => \dp|ALUL|regC|DFF1|c:14:dff32|d_input~3_combout\,
	combout => \dp|ALUL|regC|DFF1|c:14:dff32|d_input~21_combout\);

-- Location: LCCOMB_X22_Y10_N28
\dp|ALUL|add|temp[14]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|temp[14]~28_combout\ = (\dp|ALUL|add|temp[13]~27\ & ((\dp|ALUL|add|b_inv~combout\ $ (\dp|ALUL|regC|BF1|c:14:buf32|output~4_combout\)))) # (!\dp|ALUL|add|temp[13]~27\ & (\dp|ALUL|add|b_inv~combout\ $ 
-- (\dp|ALUL|regC|BF1|c:14:buf32|output~4_combout\ $ (VCC))))
-- \dp|ALUL|add|temp[14]~29\ = CARRY((!\dp|ALUL|add|temp[13]~27\ & (\dp|ALUL|add|b_inv~combout\ $ (\dp|ALUL|regC|BF1|c:14:buf32|output~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|b_inv~combout\,
	datab => \dp|ALUL|regC|BF1|c:14:buf32|output~4_combout\,
	datad => VCC,
	cin => \dp|ALUL|add|temp[13]~27\,
	combout => \dp|ALUL|add|temp[14]~28_combout\,
	cout => \dp|ALUL|add|temp[14]~29\);

-- Location: LCCOMB_X23_Y13_N20
\dp|ALUL|regC|DFF1|c:14:dff32|d_input~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:14:dff32|d_input~18_combout\ = (\dp|ALUL|add|temp[14]~28_combout\ & ((\cu|control|NEG~combout\) # ((\dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\ & \dp|ALUL|regA|A_R|c:14:dff32|dff0|q~q\)))) # (!\dp|ALUL|add|temp[14]~28_combout\ & 
-- (\dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\ & (\dp|ALUL|regA|A_R|c:14:dff32|dff0|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|temp[14]~28_combout\,
	datab => \dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\,
	datac => \dp|ALUL|regA|A_R|c:14:dff32|dff0|q~q\,
	datad => \cu|control|NEG~combout\,
	combout => \dp|ALUL|regC|DFF1|c:14:dff32|d_input~18_combout\);

-- Location: LCCOMB_X23_Y13_N22
\dp|ALUL|regC|DFF1|c:14:dff32|d_input~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:14:dff32|d_input~19_combout\ = (\dp|ALUL|regC|DFF1|c:14:dff32|d_input~18_combout\) # ((\dp|ALUL|regC|BF1|c:14:buf32|output~4_combout\ & ((\cu|control|CB~combout\) # (\dp|ALUL|regC|DFF1|c:14:dff32|d_input~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:14:buf32|output~4_combout\,
	datab => \cu|control|CB~combout\,
	datac => \dp|ALUL|regC|DFF1|c:14:dff32|d_input~21_combout\,
	datad => \dp|ALUL|regC|DFF1|c:14:dff32|d_input~18_combout\,
	combout => \dp|ALUL|regC|DFF1|c:14:dff32|d_input~19_combout\);

-- Location: LCCOMB_X20_Y13_N28
\dp|ALUL|regC|DFF1|c:14:dff32|d_input~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:14:dff32|d_input~16_combout\ = (\cu|control|NOTOP~combout\ & (\dp|ALUL|add|b_inv~combout\ $ (((\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\) # (\dp|ALUL|regC|BF1|c:14:buf32|output~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	datab => \dp|ALUL|add|b_inv~combout\,
	datac => \dp|ALUL|regC|BF1|c:14:buf32|output~3_combout\,
	datad => \cu|control|NOTOP~combout\,
	combout => \dp|ALUL|regC|DFF1|c:14:dff32|d_input~16_combout\);

-- Location: FF_X16_Y13_N11
\dp|PCL|dff|c:15:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:15:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|control|PCin~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|PCL|dff|c:15:dff32|dff0|q~q\);

-- Location: FF_X16_Y13_N1
\dp|IRL|ir15|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:15:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|st|dec|Mux0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|IRL|ir15|dff0|q~q\);

-- Location: LCCOMB_X16_Y13_N0
\dp|ALUL|regC|BF1|c:15:buf32|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:15:buf32|output~0_combout\ = (\dp|PCL|dff|c:15:dff32|dff0|q~q\ & (((\dp|IRL|ir15|dff0|q~q\) # (\dp|IRL|c1_or_c2~0_combout\)))) # (!\dp|PCL|dff|c:15:dff32|dff0|q~q\ & (!\cu|control|PCout~combout\ & ((\dp|IRL|ir15|dff0|q~q\) # 
-- (\dp|IRL|c1_or_c2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|PCL|dff|c:15:dff32|dff0|q~q\,
	datab => \cu|control|PCout~combout\,
	datac => \dp|IRL|ir15|dff0|q~q\,
	datad => \dp|IRL|c1_or_c2~0_combout\,
	combout => \dp|ALUL|regC|BF1|c:15:buf32|output~0_combout\);

-- Location: IOIBUF_X31_Y13_N22
\md[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => md(15),
	o => \md[15]~input_o\);

-- Location: LCCOMB_X23_Y13_N2
\dp|MEML|or_G[15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|MEML|or_G\(15) = (\cu|control|MDin~combout\ & ((\dp|ALUL|regC|BF1|c:15:buf32|output~4_combout\) # ((\md_read~input_o\ & \md[15]~input_o\)))) # (!\cu|control|MDin~combout\ & (((\md_read~input_o\ & \md[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|MDin~combout\,
	datab => \dp|ALUL|regC|BF1|c:15:buf32|output~4_combout\,
	datac => \md_read~input_o\,
	datad => \md[15]~input_o\,
	combout => \dp|MEML|or_G\(15));

-- Location: FF_X23_Y13_N3
\dp|MEML|md_r|c:15:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|MEML|or_G\(15),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \dp|MEML|md_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|md_r|c:15:dff32|dff0|q~q\);

-- Location: LCCOMB_X22_Y10_N30
\dp|ALUL|add|temp[15]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|temp[15]~30_combout\ = (\dp|ALUL|add|temp[14]~29\ & (\dp|ALUL|regC|BF1|c:15:buf32|output~4_combout\ $ ((!\dp|ALUL|add|b_inv~combout\)))) # (!\dp|ALUL|add|temp[14]~29\ & ((\dp|ALUL|regC|BF1|c:15:buf32|output~4_combout\ $ 
-- (\dp|ALUL|add|b_inv~combout\)) # (GND)))
-- \dp|ALUL|add|temp[15]~31\ = CARRY((\dp|ALUL|regC|BF1|c:15:buf32|output~4_combout\ $ (!\dp|ALUL|add|b_inv~combout\)) # (!\dp|ALUL|add|temp[14]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:15:buf32|output~4_combout\,
	datab => \dp|ALUL|add|b_inv~combout\,
	datad => VCC,
	cin => \dp|ALUL|add|temp[14]~29\,
	combout => \dp|ALUL|add|temp[15]~30_combout\,
	cout => \dp|ALUL|add|temp[15]~31\);

-- Location: LCCOMB_X23_Y13_N26
\dp|ALUL|regA|A_R|c:15:dff32|dff0|q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regA|A_R|c:15:dff32|dff0|q~feeder_combout\ = \dp|ALUL|regC|BF1|c:15:buf32|output~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|ALUL|regC|BF1|c:15:buf32|output~4_combout\,
	combout => \dp|ALUL|regA|A_R|c:15:dff32|dff0|q~feeder_combout\);

-- Location: FF_X23_Y13_N27
\dp|ALUL|regA|A_R|c:15:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|ALUL|regA|A_R|c:15:dff32|dff0|q~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regA|A_R|c:15:dff32|dff0|q~q\);

-- Location: LCCOMB_X23_Y13_N6
\dp|ALUL|regC|DFF1|c:15:dff32|d_input~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:15:dff32|d_input~18_combout\ = (\dp|ALUL|add|temp[15]~30_combout\ & ((\cu|control|NEG~combout\) # ((\dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\ & \dp|ALUL|regA|A_R|c:15:dff32|dff0|q~q\)))) # (!\dp|ALUL|add|temp[15]~30_combout\ & 
-- (\dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\ & (\dp|ALUL|regA|A_R|c:15:dff32|dff0|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|temp[15]~30_combout\,
	datab => \dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\,
	datac => \dp|ALUL|regA|A_R|c:15:dff32|dff0|q~q\,
	datad => \cu|control|NEG~combout\,
	combout => \dp|ALUL|regC|DFF1|c:15:dff32|d_input~18_combout\);

-- Location: LCCOMB_X23_Y13_N12
\dp|ALUL|regC|DFF1|c:15:dff32|d_input~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:15:dff32|d_input~3_combout\ = (!\cu|st|con|count_i\(1) & (!\cu|st|con|count_i\(0) & ((\dp|IRL|ir28|dff0|q~q\) # (\dp|ALUL|regA|A_R|c:15:dff32|dff0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(1),
	datab => \dp|IRL|ir28|dff0|q~q\,
	datac => \dp|ALUL|regA|A_R|c:15:dff32|dff0|q~q\,
	datad => \cu|st|con|count_i\(0),
	combout => \dp|ALUL|regC|DFF1|c:15:dff32|d_input~3_combout\);

-- Location: LCCOMB_X23_Y13_N14
\dp|ALUL|regC|DFF1|c:15:dff32|d_input~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:15:dff32|d_input~21_combout\ = (\dp|IRL|ir31|dff0|q~q\ & (!\dp|IRL|ir30|dff0|q~q\ & (\cu|st|con|count_i\(2) & \dp|ALUL|regC|DFF1|c:15:dff32|d_input~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|IRL|ir31|dff0|q~q\,
	datab => \dp|IRL|ir30|dff0|q~q\,
	datac => \cu|st|con|count_i\(2),
	datad => \dp|ALUL|regC|DFF1|c:15:dff32|d_input~3_combout\,
	combout => \dp|ALUL|regC|DFF1|c:15:dff32|d_input~21_combout\);

-- Location: LCCOMB_X23_Y13_N4
\dp|ALUL|regC|DFF1|c:15:dff32|d_input~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:15:dff32|d_input~19_combout\ = (\dp|ALUL|regC|DFF1|c:15:dff32|d_input~18_combout\) # ((\dp|ALUL|regC|BF1|c:15:buf32|output~4_combout\ & ((\dp|ALUL|regC|DFF1|c:15:dff32|d_input~21_combout\) # (\cu|control|CB~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:15:dff32|d_input~18_combout\,
	datab => \dp|ALUL|regC|BF1|c:15:buf32|output~4_combout\,
	datac => \dp|ALUL|regC|DFF1|c:15:dff32|d_input~21_combout\,
	datad => \cu|control|CB~combout\,
	combout => \dp|ALUL|regC|DFF1|c:15:dff32|d_input~19_combout\);

-- Location: FF_X22_Y8_N29
\dp|RegFIleL|gen_reg0|dff|c:16:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:16:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|RegFIleL|strop\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg0|dff|c:16:dff32|dff0|q~q\);

-- Location: FF_X22_Y8_N15
\dp|RegFIleL|gen_reg1|dffL|c:16:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:16:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|RegFIleL|strop\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg1|dffL|c:16:dff32|dff0|q~q\);

-- Location: LCCOMB_X22_Y8_N14
\dp|ALUL|regC|BF1|c:16:buf32|output~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:16:buf32|output~2_combout\ = (\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & (((\dp|RegFIleL|gen_reg1|dffL|c:16:dff32|dff0|q~q\)))) # (!\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & (!\cu|control|BAout~0_combout\ & 
-- (\dp|RegFIleL|gen_reg0|dff|c:16:dff32|dff0|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|BAout~0_combout\,
	datab => \dp|RegFIleL|gen_reg0|dff|c:16:dff32|dff0|q~q\,
	datac => \dp|RegFIleL|gen_reg1|dffL|c:16:dff32|dff0|q~q\,
	datad => \dp|RegFIleL|reg|input_decoder[0]~4_combout\,
	combout => \dp|ALUL|regC|BF1|c:16:buf32|output~2_combout\);

-- Location: IOIBUF_X19_Y0_N29
\md[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => md(16),
	o => \md[16]~input_o\);

-- Location: LCCOMB_X19_Y4_N10
\dp|MEML|or_G[16]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|MEML|or_G\(16) = (\md_read~input_o\ & ((\md[16]~input_o\) # ((\cu|control|MDin~combout\ & \dp|ALUL|regC|BF1|c:16:buf32|output~4_combout\)))) # (!\md_read~input_o\ & (\cu|control|MDin~combout\ & ((\dp|ALUL|regC|BF1|c:16:buf32|output~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \md_read~input_o\,
	datab => \cu|control|MDin~combout\,
	datac => \md[16]~input_o\,
	datad => \dp|ALUL|regC|BF1|c:16:buf32|output~4_combout\,
	combout => \dp|MEML|or_G\(16));

-- Location: FF_X19_Y4_N11
\dp|MEML|md_r|c:16:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|MEML|or_G\(16),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \dp|MEML|md_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|md_r|c:16:dff32|dff0|q~q\);

-- Location: LCCOMB_X17_Y11_N28
\cu|control|C1out~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|control|C1out~1_combout\ = (\cu|st|dec|Mux0~2_combout\ & (((\cu|st|dec|Mux0~3_combout\ & !\cu|control|CB~2_combout\)) # (!\cu|control|C1out~0_combout\))) # (!\cu|st|dec|Mux0~2_combout\ & (\cu|st|dec|Mux0~3_combout\ & (!\cu|control|CB~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|dec|Mux0~2_combout\,
	datab => \cu|st|dec|Mux0~3_combout\,
	datac => \cu|control|CB~2_combout\,
	datad => \cu|control|C1out~0_combout\,
	combout => \cu|control|C1out~1_combout\);

-- Location: IOIBUF_X19_Y0_N8
\md[17]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => md(17),
	o => \md[17]~input_o\);

-- Location: LCCOMB_X19_Y4_N28
\dp|MEML|or_G[17]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|MEML|or_G\(17) = (\md_read~input_o\ & ((\md[17]~input_o\) # ((\dp|ALUL|regC|BF1|c:17:buf32|output~4_combout\ & \cu|control|MDin~combout\)))) # (!\md_read~input_o\ & (((\dp|ALUL|regC|BF1|c:17:buf32|output~4_combout\ & \cu|control|MDin~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \md_read~input_o\,
	datab => \md[17]~input_o\,
	datac => \dp|ALUL|regC|BF1|c:17:buf32|output~4_combout\,
	datad => \cu|control|MDin~combout\,
	combout => \dp|MEML|or_G\(17));

-- Location: FF_X19_Y4_N29
\dp|MEML|md_r|c:17:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|MEML|or_G\(17),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \dp|MEML|md_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|md_r|c:17:dff32|dff0|q~q\);

-- Location: FF_X16_Y11_N25
\dp|IRL|ir17|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:17:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|st|dec|Mux0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|IRL|ir17|dff0|q~q\);

-- Location: LCCOMB_X18_Y7_N4
\dp|ALUL|regC|BF1|c:17:buf32|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:17:buf32|output~0_combout\ = (\cu|control|C1out~1_combout\ & (\dp|IRL|ir17|dff0|q~q\ & ((\dp|MEML|md_r|c:17:dff32|dff0|q~q\) # (!\cu|control|MDout~0_combout\)))) # (!\cu|control|C1out~1_combout\ & ((\dp|MEML|md_r|c:17:dff32|dff0|q~q\) 
-- # ((!\cu|control|MDout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|C1out~1_combout\,
	datab => \dp|MEML|md_r|c:17:dff32|dff0|q~q\,
	datac => \cu|control|MDout~0_combout\,
	datad => \dp|IRL|ir17|dff0|q~q\,
	combout => \dp|ALUL|regC|BF1|c:17:buf32|output~0_combout\);

-- Location: FF_X18_Y7_N19
\dp|PCL|dff|c:17:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:17:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|control|PCin~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|PCL|dff|c:17:dff32|dff0|q~q\);

-- Location: FF_X18_Y7_N11
\dp|IRL|ir16|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:16:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|st|dec|Mux0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|IRL|ir16|dff0|q~q\);

-- Location: LCCOMB_X18_Y7_N10
\dp|IRL|buff_c2_17|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|IRL|buff_c2_17|output~0_combout\ = ((\dp|IRL|ir16|dff0|q~q\) # ((\cu|control|C2out~1_combout\ & \cu|control|Grb~0_combout\))) # (!\cu|st|dec|Mux0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|dec|Mux0~2_combout\,
	datab => \cu|control|C2out~1_combout\,
	datac => \dp|IRL|ir16|dff0|q~q\,
	datad => \cu|control|Grb~0_combout\,
	combout => \dp|IRL|buff_c2_17|output~0_combout\);

-- Location: LCCOMB_X18_Y7_N18
\dp|ALUL|regC|BF1|c:17:buf32|output~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:17:buf32|output~1_combout\ = (\dp|ALUL|regC|BF1|c:17:buf32|output~0_combout\ & (\dp|IRL|buff_c2_17|output~0_combout\ & ((\dp|PCL|dff|c:17:dff32|dff0|q~q\) # (!\cu|control|PCout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|PCout~combout\,
	datab => \dp|ALUL|regC|BF1|c:17:buf32|output~0_combout\,
	datac => \dp|PCL|dff|c:17:dff32|dff0|q~q\,
	datad => \dp|IRL|buff_c2_17|output~0_combout\,
	combout => \dp|ALUL|regC|BF1|c:17:buf32|output~1_combout\);

-- Location: LCCOMB_X19_Y9_N30
\dp|ALUL|regC|DFF1|c:17:dff32|d_input~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:17:dff32|d_input~16_combout\ = (\cu|de|Mux7~0_combout\ & (\cu|st|dec|Mux0~3_combout\ & (\dp|ALUL|add|b_inv~combout\ $ (\dp|ALUL|regC|BF1|c:17:buf32|output~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|b_inv~combout\,
	datab => \cu|de|Mux7~0_combout\,
	datac => \dp|ALUL|regC|BF1|c:17:buf32|output~4_combout\,
	datad => \cu|st|dec|Mux0~3_combout\,
	combout => \dp|ALUL|regC|DFF1|c:17:dff32|d_input~16_combout\);

-- Location: FF_X18_Y9_N17
\dp|ALUL|regA|A_R|c:17:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|ALUL|regC|BF1|c:17:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regA|A_R|c:17:dff32|dff0|q~q\);

-- Location: LCCOMB_X18_Y9_N6
\dp|ALUL|regC|DFF1|c:17:dff32|d_input~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:17:dff32|d_input~3_combout\ = (!\cu|st|con|count_i\(1) & (!\cu|st|con|count_i\(0) & ((\dp|IRL|ir28|dff0|q~q\) # (\dp|ALUL|regA|A_R|c:17:dff32|dff0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(1),
	datab => \dp|IRL|ir28|dff0|q~q\,
	datac => \cu|st|con|count_i\(0),
	datad => \dp|ALUL|regA|A_R|c:17:dff32|dff0|q~q\,
	combout => \dp|ALUL|regC|DFF1|c:17:dff32|d_input~3_combout\);

-- Location: LCCOMB_X18_Y9_N0
\dp|ALUL|regC|DFF1|c:17:dff32|d_input~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:17:dff32|d_input~21_combout\ = (\dp|ALUL|regC|DFF1|c:17:dff32|d_input~3_combout\ & (\cu|st|con|count_i\(2) & (!\dp|IRL|ir30|dff0|q~q\ & \dp|IRL|ir31|dff0|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:17:dff32|d_input~3_combout\,
	datab => \cu|st|con|count_i\(2),
	datac => \dp|IRL|ir30|dff0|q~q\,
	datad => \dp|IRL|ir31|dff0|q~q\,
	combout => \dp|ALUL|regC|DFF1|c:17:dff32|d_input~21_combout\);

-- Location: LCCOMB_X22_Y9_N0
\dp|ALUL|add|temp[16]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|temp[16]~32_combout\ = (\dp|ALUL|add|temp[15]~31\ & ((\dp|ALUL|regC|BF1|c:16:buf32|output~4_combout\ $ (\dp|ALUL|add|b_inv~combout\)))) # (!\dp|ALUL|add|temp[15]~31\ & (\dp|ALUL|regC|BF1|c:16:buf32|output~4_combout\ $ 
-- (\dp|ALUL|add|b_inv~combout\ $ (VCC))))
-- \dp|ALUL|add|temp[16]~33\ = CARRY((!\dp|ALUL|add|temp[15]~31\ & (\dp|ALUL|regC|BF1|c:16:buf32|output~4_combout\ $ (\dp|ALUL|add|b_inv~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:16:buf32|output~4_combout\,
	datab => \dp|ALUL|add|b_inv~combout\,
	datad => VCC,
	cin => \dp|ALUL|add|temp[15]~31\,
	combout => \dp|ALUL|add|temp[16]~32_combout\,
	cout => \dp|ALUL|add|temp[16]~33\);

-- Location: LCCOMB_X22_Y9_N2
\dp|ALUL|add|temp[17]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|temp[17]~34_combout\ = (\dp|ALUL|add|temp[16]~33\ & (\dp|ALUL|add|b_inv~combout\ $ ((!\dp|ALUL|regC|BF1|c:17:buf32|output~4_combout\)))) # (!\dp|ALUL|add|temp[16]~33\ & ((\dp|ALUL|add|b_inv~combout\ $ 
-- (\dp|ALUL|regC|BF1|c:17:buf32|output~4_combout\)) # (GND)))
-- \dp|ALUL|add|temp[17]~35\ = CARRY((\dp|ALUL|add|b_inv~combout\ $ (!\dp|ALUL|regC|BF1|c:17:buf32|output~4_combout\)) # (!\dp|ALUL|add|temp[16]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|b_inv~combout\,
	datab => \dp|ALUL|regC|BF1|c:17:buf32|output~4_combout\,
	datad => VCC,
	cin => \dp|ALUL|add|temp[16]~33\,
	combout => \dp|ALUL|add|temp[17]~34_combout\,
	cout => \dp|ALUL|add|temp[17]~35\);

-- Location: LCCOMB_X19_Y9_N6
\dp|ALUL|regC|DFF1|c:17:dff32|d_input~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:17:dff32|d_input~18_combout\ = (\cu|control|NEG~combout\ & ((\dp|ALUL|add|temp[17]~34_combout\) # ((\dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\ & \dp|ALUL|regA|A_R|c:17:dff32|dff0|q~q\)))) # (!\cu|control|NEG~combout\ & 
-- (\dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\ & (\dp|ALUL|regA|A_R|c:17:dff32|dff0|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|NEG~combout\,
	datab => \dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\,
	datac => \dp|ALUL|regA|A_R|c:17:dff32|dff0|q~q\,
	datad => \dp|ALUL|add|temp[17]~34_combout\,
	combout => \dp|ALUL|regC|DFF1|c:17:dff32|d_input~18_combout\);

-- Location: LCCOMB_X18_Y9_N8
\dp|ALUL|regC|DFF1|c:17:dff32|d_input~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:17:dff32|d_input~19_combout\ = (\dp|ALUL|regC|DFF1|c:17:dff32|d_input~18_combout\) # ((\dp|ALUL|regC|BF1|c:17:buf32|output~4_combout\ & ((\dp|ALUL|regC|DFF1|c:17:dff32|d_input~21_combout\) # (\cu|control|CB~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:17:dff32|d_input~21_combout\,
	datab => \cu|control|CB~combout\,
	datac => \dp|ALUL|regC|BF1|c:17:buf32|output~4_combout\,
	datad => \dp|ALUL|regC|DFF1|c:17:dff32|d_input~18_combout\,
	combout => \dp|ALUL|regC|DFF1|c:17:dff32|d_input~19_combout\);

-- Location: FF_X22_Y8_N1
\dp|RegFIleL|gen_reg1|dffL|c:18:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:18:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|RegFIleL|strop\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg1|dffL|c:18:dff32|dff0|q~q\);

-- Location: FF_X22_Y8_N3
\dp|RegFIleL|gen_reg0|dff|c:18:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:18:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|RegFIleL|strop\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg0|dff|c:18:dff32|dff0|q~q\);

-- Location: LCCOMB_X22_Y8_N2
\dp|RegFIleL|gen_reg0|BFF_in[18]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|RegFIleL|gen_reg0|BFF_in\(18) = (\dp|RegFIleL|gen_reg0|dff|c:18:dff32|dff0|q~q\ & !\cu|control|BAout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|RegFIleL|gen_reg0|dff|c:18:dff32|dff0|q~q\,
	datad => \cu|control|BAout~0_combout\,
	combout => \dp|RegFIleL|gen_reg0|BFF_in\(18));

-- Location: LCCOMB_X22_Y8_N0
\dp|ALUL|regC|BF1|c:18:buf32|output~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:18:buf32|output~3_combout\ = ((\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & (\dp|RegFIleL|gen_reg1|dffL|c:18:dff32|dff0|q~q\)) # (!\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & ((\dp|RegFIleL|gen_reg0|BFF_in\(18))))) # 
-- (!\dp|RegFIleL|r_out_OR_ba_out~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RegFIleL|r_out_OR_ba_out~5_combout\,
	datab => \dp|RegFIleL|reg|input_decoder[0]~4_combout\,
	datac => \dp|RegFIleL|gen_reg1|dffL|c:18:dff32|dff0|q~q\,
	datad => \dp|RegFIleL|gen_reg0|BFF_in\(18),
	combout => \dp|ALUL|regC|BF1|c:18:buf32|output~3_combout\);

-- Location: LCCOMB_X19_Y9_N12
\dp|ALUL|add|b_sig[18]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|b_sig\(18) = \dp|ALUL|add|b_inv~combout\ $ (((\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\) # ((\dp|ALUL|regC|BF1|c:18:buf32|output~2_combout\ & \dp|ALUL|regC|BF1|c:18:buf32|output~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|b_inv~combout\,
	datab => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	datac => \dp|ALUL|regC|BF1|c:18:buf32|output~2_combout\,
	datad => \dp|ALUL|regC|BF1|c:18:buf32|output~3_combout\,
	combout => \dp|ALUL|add|b_sig\(18));

-- Location: FF_X22_Y8_N23
\dp|RegFIleL|gen_reg0|dff|c:20:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:20:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|RegFIleL|strop\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg0|dff|c:20:dff32|dff0|q~q\);

-- Location: LCCOMB_X22_Y8_N22
\dp|RegFIleL|gen_reg0|BFF_in[20]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|RegFIleL|gen_reg0|BFF_in\(20) = (\dp|RegFIleL|gen_reg0|dff|c:20:dff32|dff0|q~q\ & !\cu|control|BAout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|RegFIleL|gen_reg0|dff|c:20:dff32|dff0|q~q\,
	datad => \cu|control|BAout~0_combout\,
	combout => \dp|RegFIleL|gen_reg0|BFF_in\(20));

-- Location: FF_X22_Y8_N21
\dp|RegFIleL|gen_reg1|dffL|c:20:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:20:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|RegFIleL|strop\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg1|dffL|c:20:dff32|dff0|q~q\);

-- Location: LCCOMB_X22_Y8_N20
\dp|ALUL|regC|BF1|c:20:buf32|output~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:20:buf32|output~3_combout\ = ((\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & ((\dp|RegFIleL|gen_reg1|dffL|c:20:dff32|dff0|q~q\))) # (!\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & (\dp|RegFIleL|gen_reg0|BFF_in\(20)))) # 
-- (!\dp|RegFIleL|r_out_OR_ba_out~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RegFIleL|r_out_OR_ba_out~5_combout\,
	datab => \dp|RegFIleL|gen_reg0|BFF_in\(20),
	datac => \dp|RegFIleL|gen_reg1|dffL|c:20:dff32|dff0|q~q\,
	datad => \dp|RegFIleL|reg|input_decoder[0]~4_combout\,
	combout => \dp|ALUL|regC|BF1|c:20:buf32|output~3_combout\);

-- Location: FF_X18_Y7_N23
\dp|PCL|dff|c:20:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:20:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|control|PCin~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|PCL|dff|c:20:dff32|dff0|q~q\);

-- Location: LCCOMB_X18_Y7_N22
\dp|ALUL|regC|BF1|c:20:buf32|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:20:buf32|output~0_combout\ = (\dp|IRL|buff_c2_17|output~0_combout\ & ((\dp|PCL|dff|c:20:dff32|dff0|q~q\) # (!\cu|control|PCout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cu|control|PCout~combout\,
	datac => \dp|PCL|dff|c:20:dff32|dff0|q~q\,
	datad => \dp|IRL|buff_c2_17|output~0_combout\,
	combout => \dp|ALUL|regC|BF1|c:20:buf32|output~0_combout\);

-- Location: LCCOMB_X19_Y7_N22
\dp|ALUL|regA|A_R|c:20:dff32|dff0|q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regA|A_R|c:20:dff32|dff0|q~feeder_combout\ = \dp|ALUL|regC|BF1|c:20:buf32|output~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|ALUL|regC|BF1|c:20:buf32|output~4_combout\,
	combout => \dp|ALUL|regA|A_R|c:20:dff32|dff0|q~feeder_combout\);

-- Location: FF_X19_Y7_N23
\dp|ALUL|regA|A_R|c:20:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|ALUL|regA|A_R|c:20:dff32|dff0|q~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regA|A_R|c:20:dff32|dff0|q~q\);

-- Location: LCCOMB_X22_Y9_N4
\dp|ALUL|add|temp[18]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|temp[18]~36_combout\ = (\dp|ALUL|add|temp[17]~35\ & ((\dp|ALUL|add|b_inv~combout\ $ (\dp|ALUL|regC|BF1|c:18:buf32|output~4_combout\)))) # (!\dp|ALUL|add|temp[17]~35\ & (\dp|ALUL|add|b_inv~combout\ $ 
-- (\dp|ALUL|regC|BF1|c:18:buf32|output~4_combout\ $ (VCC))))
-- \dp|ALUL|add|temp[18]~37\ = CARRY((!\dp|ALUL|add|temp[17]~35\ & (\dp|ALUL|add|b_inv~combout\ $ (\dp|ALUL|regC|BF1|c:18:buf32|output~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|b_inv~combout\,
	datab => \dp|ALUL|regC|BF1|c:18:buf32|output~4_combout\,
	datad => VCC,
	cin => \dp|ALUL|add|temp[17]~35\,
	combout => \dp|ALUL|add|temp[18]~36_combout\,
	cout => \dp|ALUL|add|temp[18]~37\);

-- Location: LCCOMB_X22_Y9_N6
\dp|ALUL|add|temp[19]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|temp[19]~38_combout\ = (\dp|ALUL|add|temp[18]~37\ & (\dp|ALUL|add|b_inv~combout\ $ ((!\dp|ALUL|regC|BF1|c:19:buf32|output~4_combout\)))) # (!\dp|ALUL|add|temp[18]~37\ & ((\dp|ALUL|add|b_inv~combout\ $ 
-- (\dp|ALUL|regC|BF1|c:19:buf32|output~4_combout\)) # (GND)))
-- \dp|ALUL|add|temp[19]~39\ = CARRY((\dp|ALUL|add|b_inv~combout\ $ (!\dp|ALUL|regC|BF1|c:19:buf32|output~4_combout\)) # (!\dp|ALUL|add|temp[18]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|b_inv~combout\,
	datab => \dp|ALUL|regC|BF1|c:19:buf32|output~4_combout\,
	datad => VCC,
	cin => \dp|ALUL|add|temp[18]~37\,
	combout => \dp|ALUL|add|temp[19]~38_combout\,
	cout => \dp|ALUL|add|temp[19]~39\);

-- Location: LCCOMB_X22_Y9_N8
\dp|ALUL|add|temp[20]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|temp[20]~40_combout\ = (\dp|ALUL|add|temp[19]~39\ & ((\dp|ALUL|regC|BF1|c:20:buf32|output~4_combout\ $ (\dp|ALUL|add|b_inv~combout\)))) # (!\dp|ALUL|add|temp[19]~39\ & (\dp|ALUL|regC|BF1|c:20:buf32|output~4_combout\ $ 
-- (\dp|ALUL|add|b_inv~combout\ $ (VCC))))
-- \dp|ALUL|add|temp[20]~41\ = CARRY((!\dp|ALUL|add|temp[19]~39\ & (\dp|ALUL|regC|BF1|c:20:buf32|output~4_combout\ $ (\dp|ALUL|add|b_inv~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:20:buf32|output~4_combout\,
	datab => \dp|ALUL|add|b_inv~combout\,
	datad => VCC,
	cin => \dp|ALUL|add|temp[19]~39\,
	combout => \dp|ALUL|add|temp[20]~40_combout\,
	cout => \dp|ALUL|add|temp[20]~41\);

-- Location: LCCOMB_X19_Y7_N12
\dp|ALUL|regC|DFF1|c:20:dff32|d_input~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:20:dff32|d_input~15_combout\ = (\dp|ALUL|regA|A_R|c:20:dff32|dff0|q~q\ & ((\dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\) # ((\cu|control|NEG~combout\ & \dp|ALUL|add|temp[20]~40_combout\)))) # 
-- (!\dp|ALUL|regA|A_R|c:20:dff32|dff0|q~q\ & (\cu|control|NEG~combout\ & ((\dp|ALUL|add|temp[20]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regA|A_R|c:20:dff32|dff0|q~q\,
	datab => \cu|control|NEG~combout\,
	datac => \dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\,
	datad => \dp|ALUL|add|temp[20]~40_combout\,
	combout => \dp|ALUL|regC|DFF1|c:20:dff32|d_input~15_combout\);

-- Location: FF_X18_Y7_N3
\dp|PCL|dff|c:21:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:21:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|control|PCin~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|PCL|dff|c:21:dff32|dff0|q~q\);

-- Location: IOIBUF_X19_Y0_N22
\md[21]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => md(21),
	o => \md[21]~input_o\);

-- Location: LCCOMB_X19_Y4_N4
\dp|MEML|or_G[21]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|MEML|or_G\(21) = (\md[21]~input_o\ & ((\md_read~input_o\) # ((\cu|control|MDin~combout\ & \dp|ALUL|regC|BF1|c:21:buf32|output~4_combout\)))) # (!\md[21]~input_o\ & (\cu|control|MDin~combout\ & (\dp|ALUL|regC|BF1|c:21:buf32|output~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \md[21]~input_o\,
	datab => \cu|control|MDin~combout\,
	datac => \dp|ALUL|regC|BF1|c:21:buf32|output~4_combout\,
	datad => \md_read~input_o\,
	combout => \dp|MEML|or_G\(21));

-- Location: FF_X19_Y4_N5
\dp|MEML|md_r|c:21:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|MEML|or_G\(21),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \dp|MEML|md_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|md_r|c:21:dff32|dff0|q~q\);

-- Location: LCCOMB_X18_Y7_N2
\dp|ALUL|regC|BF1|c:21:buf32|output~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:21:buf32|output~1_combout\ = (\cu|control|PCout~combout\ & (\dp|PCL|dff|c:21:dff32|dff0|q~q\ & ((\dp|MEML|md_r|c:21:dff32|dff0|q~q\) # (!\cu|control|MDout~0_combout\)))) # (!\cu|control|PCout~combout\ & 
-- (((\dp|MEML|md_r|c:21:dff32|dff0|q~q\)) # (!\cu|control|MDout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|PCout~combout\,
	datab => \cu|control|MDout~0_combout\,
	datac => \dp|PCL|dff|c:21:dff32|dff0|q~q\,
	datad => \dp|MEML|md_r|c:21:dff32|dff0|q~q\,
	combout => \dp|ALUL|regC|BF1|c:21:buf32|output~1_combout\);

-- Location: FF_X19_Y8_N15
\dp|ALUL|regA|A_R|c:21:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:21:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|control|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regA|A_R|c:21:dff32|dff0|q~q\);

-- Location: LCCOMB_X20_Y8_N2
\dp|ALUL|regC|DFF1|c:21:dff32|d_input~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:21:dff32|d_input~3_combout\ = (!\cu|st|con|count_i\(1) & (!\cu|st|con|count_i\(0) & ((\dp|ALUL|regA|A_R|c:21:dff32|dff0|q~q\) # (\dp|IRL|ir28|dff0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regA|A_R|c:21:dff32|dff0|q~q\,
	datab => \dp|IRL|ir28|dff0|q~q\,
	datac => \cu|st|con|count_i\(1),
	datad => \cu|st|con|count_i\(0),
	combout => \dp|ALUL|regC|DFF1|c:21:dff32|d_input~3_combout\);

-- Location: LCCOMB_X20_Y8_N0
\dp|ALUL|regC|DFF1|c:21:dff32|d_input~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:21:dff32|d_input~21_combout\ = (!\dp|IRL|ir30|dff0|q~q\ & (\dp|IRL|ir31|dff0|q~q\ & (\cu|st|con|count_i\(2) & \dp|ALUL|regC|DFF1|c:21:dff32|d_input~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|IRL|ir30|dff0|q~q\,
	datab => \dp|IRL|ir31|dff0|q~q\,
	datac => \cu|st|con|count_i\(2),
	datad => \dp|ALUL|regC|DFF1|c:21:dff32|d_input~3_combout\,
	combout => \dp|ALUL|regC|DFF1|c:21:dff32|d_input~21_combout\);

-- Location: LCCOMB_X22_Y9_N10
\dp|ALUL|add|temp[21]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|temp[21]~42_combout\ = (\dp|ALUL|add|temp[20]~41\ & (\dp|ALUL|add|b_inv~combout\ $ ((!\dp|ALUL|regC|BF1|c:21:buf32|output~4_combout\)))) # (!\dp|ALUL|add|temp[20]~41\ & ((\dp|ALUL|add|b_inv~combout\ $ 
-- (\dp|ALUL|regC|BF1|c:21:buf32|output~4_combout\)) # (GND)))
-- \dp|ALUL|add|temp[21]~43\ = CARRY((\dp|ALUL|add|b_inv~combout\ $ (!\dp|ALUL|regC|BF1|c:21:buf32|output~4_combout\)) # (!\dp|ALUL|add|temp[20]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|b_inv~combout\,
	datab => \dp|ALUL|regC|BF1|c:21:buf32|output~4_combout\,
	datad => VCC,
	cin => \dp|ALUL|add|temp[20]~41\,
	combout => \dp|ALUL|add|temp[21]~42_combout\,
	cout => \dp|ALUL|add|temp[21]~43\);

-- Location: LCCOMB_X20_Y8_N28
\dp|ALUL|regC|DFF1|c:21:dff32|d_input~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:21:dff32|d_input~18_combout\ = (\cu|control|NEG~combout\ & ((\dp|ALUL|add|temp[21]~42_combout\) # ((\dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\ & \dp|ALUL|regA|A_R|c:21:dff32|dff0|q~q\)))) # (!\cu|control|NEG~combout\ & 
-- (\dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\ & ((\dp|ALUL|regA|A_R|c:21:dff32|dff0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|NEG~combout\,
	datab => \dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\,
	datac => \dp|ALUL|add|temp[21]~42_combout\,
	datad => \dp|ALUL|regA|A_R|c:21:dff32|dff0|q~q\,
	combout => \dp|ALUL|regC|DFF1|c:21:dff32|d_input~18_combout\);

-- Location: LCCOMB_X19_Y8_N16
\dp|ALUL|regC|DFF1|c:21:dff32|d_input~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:21:dff32|d_input~19_combout\ = (\dp|ALUL|regC|DFF1|c:21:dff32|d_input~18_combout\) # ((\dp|ALUL|regC|BF1|c:21:buf32|output~4_combout\ & ((\cu|control|CB~combout\) # (\dp|ALUL|regC|DFF1|c:21:dff32|d_input~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|CB~combout\,
	datab => \dp|ALUL|regC|BF1|c:21:buf32|output~4_combout\,
	datac => \dp|ALUL|regC|DFF1|c:21:dff32|d_input~21_combout\,
	datad => \dp|ALUL|regC|DFF1|c:21:dff32|d_input~18_combout\,
	combout => \dp|ALUL|regC|DFF1|c:21:dff32|d_input~19_combout\);

-- Location: LCCOMB_X19_Y8_N20
\dp|ALUL|regC|DFF1|c:21:dff32|d_input~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:21:dff32|d_input~16_combout\ = (\cu|de|Mux7~0_combout\ & (\cu|st|dec|Mux0~3_combout\ & (\dp|ALUL|add|b_inv~combout\ $ (\dp|ALUL|regC|BF1|c:21:buf32|output~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|de|Mux7~0_combout\,
	datab => \dp|ALUL|add|b_inv~combout\,
	datac => \dp|ALUL|regC|BF1|c:21:buf32|output~4_combout\,
	datad => \cu|st|dec|Mux0~3_combout\,
	combout => \dp|ALUL|regC|DFF1|c:21:dff32|d_input~16_combout\);

-- Location: LCCOMB_X19_Y8_N22
\dp|ALUL|regC|DFF1|c:22:dff32|d_input~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:22:dff32|d_input~16_combout\ = (\cu|de|Mux7~0_combout\ & (\cu|st|dec|Mux0~3_combout\ & (\dp|ALUL|add|b_inv~combout\ $ (\dp|ALUL|regC|BF1|c:22:buf32|output~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|de|Mux7~0_combout\,
	datab => \cu|st|dec|Mux0~3_combout\,
	datac => \dp|ALUL|add|b_inv~combout\,
	datad => \dp|ALUL|regC|BF1|c:22:buf32|output~3_combout\,
	combout => \dp|ALUL|regC|DFF1|c:22:dff32|d_input~16_combout\);

-- Location: LCCOMB_X19_Y8_N0
\dp|ALUL|regA|A_R|c:22:dff32|dff0|q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regA|A_R|c:22:dff32|dff0|q~feeder_combout\ = \dp|ALUL|regC|BF1|c:22:buf32|output~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|ALUL|regC|BF1|c:22:buf32|output~3_combout\,
	combout => \dp|ALUL|regA|A_R|c:22:dff32|dff0|q~feeder_combout\);

-- Location: FF_X19_Y8_N1
\dp|ALUL|regA|A_R|c:22:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|ALUL|regA|A_R|c:22:dff32|dff0|q~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regA|A_R|c:22:dff32|dff0|q~q\);

-- Location: LCCOMB_X20_Y8_N26
\dp|ALUL|regC|DFF1|c:22:dff32|d_input~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:22:dff32|d_input~3_combout\ = (!\cu|st|con|count_i\(0) & (!\cu|st|con|count_i\(1) & ((\dp|IRL|ir28|dff0|q~q\) # (\dp|ALUL|regA|A_R|c:22:dff32|dff0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(0),
	datab => \dp|IRL|ir28|dff0|q~q\,
	datac => \dp|ALUL|regA|A_R|c:22:dff32|dff0|q~q\,
	datad => \cu|st|con|count_i\(1),
	combout => \dp|ALUL|regC|DFF1|c:22:dff32|d_input~3_combout\);

-- Location: LCCOMB_X20_Y8_N12
\dp|ALUL|regC|DFF1|c:22:dff32|d_input~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:22:dff32|d_input~21_combout\ = (\dp|ALUL|regC|DFF1|c:22:dff32|d_input~3_combout\ & (\dp|IRL|ir31|dff0|q~q\ & (\cu|st|con|count_i\(2) & !\dp|IRL|ir30|dff0|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:22:dff32|d_input~3_combout\,
	datab => \dp|IRL|ir31|dff0|q~q\,
	datac => \cu|st|con|count_i\(2),
	datad => \dp|IRL|ir30|dff0|q~q\,
	combout => \dp|ALUL|regC|DFF1|c:22:dff32|d_input~21_combout\);

-- Location: LCCOMB_X22_Y9_N12
\dp|ALUL|add|temp[22]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|temp[22]~44_combout\ = (\dp|ALUL|add|temp[21]~43\ & ((\dp|ALUL|regC|BF1|c:22:buf32|output~3_combout\ $ (\dp|ALUL|add|b_inv~combout\)))) # (!\dp|ALUL|add|temp[21]~43\ & (\dp|ALUL|regC|BF1|c:22:buf32|output~3_combout\ $ 
-- (\dp|ALUL|add|b_inv~combout\ $ (VCC))))
-- \dp|ALUL|add|temp[22]~45\ = CARRY((!\dp|ALUL|add|temp[21]~43\ & (\dp|ALUL|regC|BF1|c:22:buf32|output~3_combout\ $ (\dp|ALUL|add|b_inv~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:22:buf32|output~3_combout\,
	datab => \dp|ALUL|add|b_inv~combout\,
	datad => VCC,
	cin => \dp|ALUL|add|temp[21]~43\,
	combout => \dp|ALUL|add|temp[22]~44_combout\,
	cout => \dp|ALUL|add|temp[22]~45\);

-- Location: LCCOMB_X23_Y8_N24
\dp|ALUL|regC|DFF1|c:22:dff32|d_input~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:22:dff32|d_input~18_combout\ = (\dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\ & ((\dp|ALUL|regA|A_R|c:22:dff32|dff0|q~q\) # ((\cu|control|NEG~combout\ & \dp|ALUL|add|temp[22]~44_combout\)))) # 
-- (!\dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\ & (((\cu|control|NEG~combout\ & \dp|ALUL|add|temp[22]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\,
	datab => \dp|ALUL|regA|A_R|c:22:dff32|dff0|q~q\,
	datac => \cu|control|NEG~combout\,
	datad => \dp|ALUL|add|temp[22]~44_combout\,
	combout => \dp|ALUL|regC|DFF1|c:22:dff32|d_input~18_combout\);

-- Location: LCCOMB_X19_Y8_N2
\dp|ALUL|regC|DFF1|c:22:dff32|d_input~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:22:dff32|d_input~19_combout\ = (\dp|ALUL|regC|DFF1|c:22:dff32|d_input~18_combout\) # ((\dp|ALUL|regC|BF1|c:22:buf32|output~3_combout\ & ((\dp|ALUL|regC|DFF1|c:22:dff32|d_input~21_combout\) # (\cu|control|CB~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:22:buf32|output~3_combout\,
	datab => \dp|ALUL|regC|DFF1|c:22:dff32|d_input~21_combout\,
	datac => \cu|control|CB~combout\,
	datad => \dp|ALUL|regC|DFF1|c:22:dff32|d_input~18_combout\,
	combout => \dp|ALUL|regC|DFF1|c:22:dff32|d_input~19_combout\);

-- Location: FF_X18_Y7_N7
\dp|PCL|dff|c:23:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:23:buf32|output~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|control|PCin~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|PCL|dff|c:23:dff32|dff0|q~q\);

-- Location: IOIBUF_X22_Y0_N29
\md[23]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => md(23),
	o => \md[23]~input_o\);

-- Location: LCCOMB_X19_Y4_N20
\dp|MEML|or_G[23]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|MEML|or_G\(23) = (\md_read~input_o\ & ((\md[23]~input_o\) # ((\dp|ALUL|regC|BF1|c:23:buf32|output~3_combout\ & \cu|control|MDin~combout\)))) # (!\md_read~input_o\ & (\dp|ALUL|regC|BF1|c:23:buf32|output~3_combout\ & ((\cu|control|MDin~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \md_read~input_o\,
	datab => \dp|ALUL|regC|BF1|c:23:buf32|output~3_combout\,
	datac => \md[23]~input_o\,
	datad => \cu|control|MDin~combout\,
	combout => \dp|MEML|or_G\(23));

-- Location: FF_X19_Y4_N21
\dp|MEML|md_r|c:23:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|MEML|or_G\(23),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \dp|MEML|md_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|md_r|c:23:dff32|dff0|q~q\);

-- Location: LCCOMB_X18_Y7_N6
\dp|ALUL|regC|BF1|c:23:buf32|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:23:buf32|output~0_combout\ = (\cu|control|PCout~combout\ & (\dp|PCL|dff|c:23:dff32|dff0|q~q\ & ((\dp|MEML|md_r|c:23:dff32|dff0|q~q\) # (!\cu|control|MDout~0_combout\)))) # (!\cu|control|PCout~combout\ & 
-- (((\dp|MEML|md_r|c:23:dff32|dff0|q~q\)) # (!\cu|control|MDout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|PCout~combout\,
	datab => \cu|control|MDout~0_combout\,
	datac => \dp|PCL|dff|c:23:dff32|dff0|q~q\,
	datad => \dp|MEML|md_r|c:23:dff32|dff0|q~q\,
	combout => \dp|ALUL|regC|BF1|c:23:buf32|output~0_combout\);

-- Location: FF_X22_Y11_N19
\dp|ALUL|regA|A_R|c:24:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|ALUL|regC|BF1|c:24:buf32|output~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regA|A_R|c:24:dff32|dff0|q~q\);

-- Location: LCCOMB_X22_Y11_N22
\dp|ALUL|regC|DFF1|c:24:dff32|d_input~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:24:dff32|d_input~3_combout\ = (!\cu|st|con|count_i\(1) & (!\cu|st|con|count_i\(0) & ((\dp|IRL|ir28|dff0|q~q\) # (\dp|ALUL|regA|A_R|c:24:dff32|dff0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|IRL|ir28|dff0|q~q\,
	datab => \cu|st|con|count_i\(1),
	datac => \cu|st|con|count_i\(0),
	datad => \dp|ALUL|regA|A_R|c:24:dff32|dff0|q~q\,
	combout => \dp|ALUL|regC|DFF1|c:24:dff32|d_input~3_combout\);

-- Location: LCCOMB_X23_Y11_N22
\dp|ALUL|regC|DFF1|c:24:dff32|d_input~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:24:dff32|d_input~20_combout\ = (\dp|ALUL|regC|DFF1|c:24:dff32|d_input~3_combout\ & (\dp|IRL|ir31|dff0|q~q\ & (\cu|st|con|count_i\(2) & !\dp|IRL|ir30|dff0|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:24:dff32|d_input~3_combout\,
	datab => \dp|IRL|ir31|dff0|q~q\,
	datac => \cu|st|con|count_i\(2),
	datad => \dp|IRL|ir30|dff0|q~q\,
	combout => \dp|ALUL|regC|DFF1|c:24:dff32|d_input~20_combout\);

-- Location: LCCOMB_X22_Y11_N30
\dp|ALUL|regC|DFF1|c:24:dff32|d_input~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:24:dff32|d_input~17_combout\ = (\dp|ALUL|regC|BF1|c:24:buf32|output~3_combout\ & ((\dp|ALUL|regC|DFF1|c:24:dff32|d_input~20_combout\) # ((\cu|st|dec|Mux0~4_combout\ & !\cu|control|CB~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|dec|Mux0~4_combout\,
	datab => \dp|ALUL|regC|DFF1|c:24:dff32|d_input~20_combout\,
	datac => \dp|ALUL|regC|BF1|c:24:buf32|output~3_combout\,
	datad => \cu|control|CB~2_combout\,
	combout => \dp|ALUL|regC|DFF1|c:24:dff32|d_input~17_combout\);

-- Location: LCCOMB_X20_Y10_N30
\dp|ALUL|regC|DFF1|c:25:dff32|d_input~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:25:dff32|d_input~16_combout\ = (\cu|control|NOTOP~combout\ & (\dp|ALUL|regC|BF1|c:25:buf32|output~3_combout\ $ (\dp|ALUL|add|b_inv~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|NOTOP~combout\,
	datac => \dp|ALUL|regC|BF1|c:25:buf32|output~3_combout\,
	datad => \dp|ALUL|add|b_inv~combout\,
	combout => \dp|ALUL|regC|DFF1|c:25:dff32|d_input~16_combout\);

-- Location: LCCOMB_X20_Y10_N24
\dp|ALUL|regC|DFF1|c:25:dff32|d_input~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:25:dff32|d_input~17_combout\ = (\dp|ALUL|regC|BF1|c:26:buf32|output~3_combout\ & ((\dp|ALUL|r_s|Eout~0_combout\) # ((\dp|ALUL|regC|BF1|c:24:buf32|output~3_combout\ & \dp|ALUL|l_s|Eout~0_combout\)))) # 
-- (!\dp|ALUL|regC|BF1|c:26:buf32|output~3_combout\ & (((\dp|ALUL|regC|BF1|c:24:buf32|output~3_combout\ & \dp|ALUL|l_s|Eout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:26:buf32|output~3_combout\,
	datab => \dp|ALUL|r_s|Eout~0_combout\,
	datac => \dp|ALUL|regC|BF1|c:24:buf32|output~3_combout\,
	datad => \dp|ALUL|l_s|Eout~0_combout\,
	combout => \dp|ALUL|regC|DFF1|c:25:dff32|d_input~17_combout\);

-- Location: FF_X20_Y10_N21
\dp|ALUL|regA|A_R|c:25:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|ALUL|regC|BF1|c:25:buf32|output~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regA|A_R|c:25:dff32|dff0|q~q\);

-- Location: LCCOMB_X20_Y10_N10
\dp|ALUL|regC|DFF1|c:25:dff32|d_input~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:25:dff32|d_input~3_combout\ = (!\cu|st|con|count_i\(1) & (!\cu|st|con|count_i\(0) & ((\dp|IRL|ir28|dff0|q~q\) # (\dp|ALUL|regA|A_R|c:25:dff32|dff0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|IRL|ir28|dff0|q~q\,
	datab => \cu|st|con|count_i\(1),
	datac => \cu|st|con|count_i\(0),
	datad => \dp|ALUL|regA|A_R|c:25:dff32|dff0|q~q\,
	combout => \dp|ALUL|regC|DFF1|c:25:dff32|d_input~3_combout\);

-- Location: LCCOMB_X20_Y10_N8
\dp|ALUL|regC|DFF1|c:25:dff32|d_input~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:25:dff32|d_input~21_combout\ = (!\dp|IRL|ir30|dff0|q~q\ & (\cu|st|con|count_i\(2) & (\dp|IRL|ir31|dff0|q~q\ & \dp|ALUL|regC|DFF1|c:25:dff32|d_input~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|IRL|ir30|dff0|q~q\,
	datab => \cu|st|con|count_i\(2),
	datac => \dp|IRL|ir31|dff0|q~q\,
	datad => \dp|ALUL|regC|DFF1|c:25:dff32|d_input~3_combout\,
	combout => \dp|ALUL|regC|DFF1|c:25:dff32|d_input~21_combout\);

-- Location: LCCOMB_X22_Y9_N14
\dp|ALUL|add|temp[23]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|temp[23]~46_combout\ = (\dp|ALUL|add|temp[22]~45\ & (\dp|ALUL|add|b_inv~combout\ $ ((!\dp|ALUL|regC|BF1|c:23:buf32|output~3_combout\)))) # (!\dp|ALUL|add|temp[22]~45\ & ((\dp|ALUL|add|b_inv~combout\ $ 
-- (\dp|ALUL|regC|BF1|c:23:buf32|output~3_combout\)) # (GND)))
-- \dp|ALUL|add|temp[23]~47\ = CARRY((\dp|ALUL|add|b_inv~combout\ $ (!\dp|ALUL|regC|BF1|c:23:buf32|output~3_combout\)) # (!\dp|ALUL|add|temp[22]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|b_inv~combout\,
	datab => \dp|ALUL|regC|BF1|c:23:buf32|output~3_combout\,
	datad => VCC,
	cin => \dp|ALUL|add|temp[22]~45\,
	combout => \dp|ALUL|add|temp[23]~46_combout\,
	cout => \dp|ALUL|add|temp[23]~47\);

-- Location: LCCOMB_X22_Y9_N16
\dp|ALUL|add|temp[24]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|temp[24]~48_combout\ = (\dp|ALUL|add|temp[23]~47\ & ((\dp|ALUL|regC|BF1|c:24:buf32|output~3_combout\ $ (\dp|ALUL|add|b_inv~combout\)))) # (!\dp|ALUL|add|temp[23]~47\ & (\dp|ALUL|regC|BF1|c:24:buf32|output~3_combout\ $ 
-- (\dp|ALUL|add|b_inv~combout\ $ (VCC))))
-- \dp|ALUL|add|temp[24]~49\ = CARRY((!\dp|ALUL|add|temp[23]~47\ & (\dp|ALUL|regC|BF1|c:24:buf32|output~3_combout\ $ (\dp|ALUL|add|b_inv~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:24:buf32|output~3_combout\,
	datab => \dp|ALUL|add|b_inv~combout\,
	datad => VCC,
	cin => \dp|ALUL|add|temp[23]~47\,
	combout => \dp|ALUL|add|temp[24]~48_combout\,
	cout => \dp|ALUL|add|temp[24]~49\);

-- Location: LCCOMB_X22_Y9_N18
\dp|ALUL|add|temp[25]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|temp[25]~50_combout\ = (\dp|ALUL|add|temp[24]~49\ & (\dp|ALUL|add|b_inv~combout\ $ ((!\dp|ALUL|regC|BF1|c:25:buf32|output~3_combout\)))) # (!\dp|ALUL|add|temp[24]~49\ & ((\dp|ALUL|add|b_inv~combout\ $ 
-- (\dp|ALUL|regC|BF1|c:25:buf32|output~3_combout\)) # (GND)))
-- \dp|ALUL|add|temp[25]~51\ = CARRY((\dp|ALUL|add|b_inv~combout\ $ (!\dp|ALUL|regC|BF1|c:25:buf32|output~3_combout\)) # (!\dp|ALUL|add|temp[24]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|b_inv~combout\,
	datab => \dp|ALUL|regC|BF1|c:25:buf32|output~3_combout\,
	datad => VCC,
	cin => \dp|ALUL|add|temp[24]~49\,
	combout => \dp|ALUL|add|temp[25]~50_combout\,
	cout => \dp|ALUL|add|temp[25]~51\);

-- Location: LCCOMB_X20_Y10_N2
\dp|ALUL|regC|DFF1|c:25:dff32|d_input~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:25:dff32|d_input~18_combout\ = (\dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\ & ((\dp|ALUL|regA|A_R|c:25:dff32|dff0|q~q\) # ((\dp|ALUL|add|temp[25]~50_combout\ & \cu|control|NEG~combout\)))) # 
-- (!\dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\ & (((\dp|ALUL|add|temp[25]~50_combout\ & \cu|control|NEG~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\,
	datab => \dp|ALUL|regA|A_R|c:25:dff32|dff0|q~q\,
	datac => \dp|ALUL|add|temp[25]~50_combout\,
	datad => \cu|control|NEG~combout\,
	combout => \dp|ALUL|regC|DFF1|c:25:dff32|d_input~18_combout\);

-- Location: LCCOMB_X20_Y10_N4
\dp|ALUL|regC|DFF1|c:25:dff32|d_input~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:25:dff32|d_input~19_combout\ = (\dp|ALUL|regC|DFF1|c:25:dff32|d_input~18_combout\) # ((\dp|ALUL|regC|BF1|c:25:buf32|output~3_combout\ & ((\cu|control|CB~combout\) # (\dp|ALUL|regC|DFF1|c:25:dff32|d_input~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|CB~combout\,
	datab => \dp|ALUL|regC|DFF1|c:25:dff32|d_input~21_combout\,
	datac => \dp|ALUL|regC|BF1|c:25:buf32|output~3_combout\,
	datad => \dp|ALUL|regC|DFF1|c:25:dff32|d_input~18_combout\,
	combout => \dp|ALUL|regC|DFF1|c:25:dff32|d_input~19_combout\);

-- Location: LCCOMB_X20_Y10_N26
\dp|ALUL|add|a_sig[25]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|a_sig\(25) = (\dp|ALUL|regA|A_R|c:25:dff32|dff0|q~q\ & ((\cu|st|con|count_i\(0)) # ((\cu|st|con|count_i\(2)) # (\cu|st|con|count_i\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(0),
	datab => \cu|st|con|count_i\(2),
	datac => \cu|st|con|count_i\(1),
	datad => \dp|ALUL|regA|A_R|c:25:dff32|dff0|q~q\,
	combout => \dp|ALUL|add|a_sig\(25));

-- Location: FF_X23_Y9_N15
\dp|RegFIleL|gen_reg0|dff|c:25:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:25:buf32|output~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|RegFIleL|strop\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg0|dff|c:25:dff32|dff0|q~q\);

-- Location: LCCOMB_X23_Y9_N14
\dp|RegFIleL|gen_reg0|BFF_in[25]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|RegFIleL|gen_reg0|BFF_in\(25) = (\dp|RegFIleL|gen_reg0|dff|c:25:dff32|dff0|q~q\ & !\cu|control|BAout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|RegFIleL|gen_reg0|dff|c:25:dff32|dff0|q~q\,
	datad => \cu|control|BAout~0_combout\,
	combout => \dp|RegFIleL|gen_reg0|BFF_in\(25));

-- Location: FF_X23_Y9_N21
\dp|RegFIleL|gen_reg1|dffL|c:25:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:25:buf32|output~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|RegFIleL|strop\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg1|dffL|c:25:dff32|dff0|q~q\);

-- Location: LCCOMB_X23_Y9_N20
\dp|ALUL|regC|BF1|c:25:buf32|output~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:25:buf32|output~2_combout\ = ((\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & ((\dp|RegFIleL|gen_reg1|dffL|c:25:dff32|dff0|q~q\))) # (!\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & (\dp|RegFIleL|gen_reg0|BFF_in\(25)))) # 
-- (!\dp|RegFIleL|r_out_OR_ba_out~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RegFIleL|r_out_OR_ba_out~5_combout\,
	datab => \dp|RegFIleL|gen_reg0|BFF_in\(25),
	datac => \dp|RegFIleL|gen_reg1|dffL|c:25:dff32|dff0|q~q\,
	datad => \dp|RegFIleL|reg|input_decoder[0]~4_combout\,
	combout => \dp|ALUL|regC|BF1|c:25:buf32|output~2_combout\);

-- Location: LCCOMB_X20_Y10_N0
\dp|ALUL|add|b_sig[25]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|b_sig\(25) = \dp|ALUL|add|b_inv~combout\ $ (((\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\) # ((\dp|ALUL|regC|BF1|c:25:buf32|output~2_combout\ & \dp|ALUL|regC|BF1|c:25:buf32|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:25:buf32|output~2_combout\,
	datab => \dp|ALUL|add|b_inv~combout\,
	datac => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	datad => \dp|ALUL|regC|BF1|c:25:buf32|output~1_combout\,
	combout => \dp|ALUL|add|b_sig\(25));

-- Location: LCCOMB_X22_Y11_N6
\dp|ALUL|add|a_sig[24]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|a_sig\(24) = (\dp|ALUL|regA|A_R|c:24:dff32|dff0|q~q\ & ((\cu|st|con|count_i\(0)) # ((\cu|st|con|count_i\(2)) # (\cu|st|con|count_i\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(0),
	datab => \cu|st|con|count_i\(2),
	datac => \cu|st|con|count_i\(1),
	datad => \dp|ALUL|regA|A_R|c:24:dff32|dff0|q~q\,
	combout => \dp|ALUL|add|a_sig\(24));

-- Location: LCCOMB_X19_Y8_N18
\dp|ALUL|add|a_sig[22]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|a_sig\(22) = (\dp|ALUL|regA|A_R|c:22:dff32|dff0|q~q\ & ((\cu|st|con|count_i\(2)) # ((\cu|st|con|count_i\(1)) # (\cu|st|con|count_i\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(2),
	datab => \dp|ALUL|regA|A_R|c:22:dff32|dff0|q~q\,
	datac => \cu|st|con|count_i\(1),
	datad => \cu|st|con|count_i\(0),
	combout => \dp|ALUL|add|a_sig\(22));

-- Location: LCCOMB_X20_Y8_N20
\dp|ALUL|add|a_sig[21]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|a_sig\(21) = (\dp|ALUL|regA|A_R|c:21:dff32|dff0|q~q\ & ((\cu|st|con|count_i\(1)) # ((\cu|st|con|count_i\(2)) # (\cu|st|con|count_i\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regA|A_R|c:21:dff32|dff0|q~q\,
	datab => \cu|st|con|count_i\(1),
	datac => \cu|st|con|count_i\(2),
	datad => \cu|st|con|count_i\(0),
	combout => \dp|ALUL|add|a_sig\(21));

-- Location: LCCOMB_X19_Y7_N24
\dp|ALUL|add|a_sig[20]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|a_sig\(20) = (\dp|ALUL|regA|A_R|c:20:dff32|dff0|q~q\ & ((\cu|st|con|count_i\(2)) # ((\cu|st|con|count_i\(1)) # (\cu|st|con|count_i\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(2),
	datab => \cu|st|con|count_i\(1),
	datac => \dp|ALUL|regA|A_R|c:20:dff32|dff0|q~q\,
	datad => \cu|st|con|count_i\(0),
	combout => \dp|ALUL|add|a_sig\(20));

-- Location: FF_X18_Y8_N1
\dp|ALUL|regA|A_R|c:19:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|ALUL|regC|BF1|c:19:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regA|A_R|c:19:dff32|dff0|q~q\);

-- Location: LCCOMB_X18_Y8_N22
\dp|ALUL|add|a_sig[19]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|a_sig\(19) = (\dp|ALUL|regA|A_R|c:19:dff32|dff0|q~q\ & ((\cu|st|con|count_i\(0)) # ((\cu|st|con|count_i\(2)) # (\cu|st|con|count_i\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(0),
	datab => \dp|ALUL|regA|A_R|c:19:dff32|dff0|q~q\,
	datac => \cu|st|con|count_i\(2),
	datad => \cu|st|con|count_i\(1),
	combout => \dp|ALUL|add|a_sig\(19));

-- Location: FF_X19_Y9_N29
\dp|ALUL|regA|A_R|c:18:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|ALUL|regC|BF1|c:18:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regA|A_R|c:18:dff32|dff0|q~q\);

-- Location: LCCOMB_X19_Y9_N14
\dp|ALUL|add|a_sig[18]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|a_sig\(18) = (\dp|ALUL|regA|A_R|c:18:dff32|dff0|q~q\ & ((\cu|st|con|count_i\(1)) # ((\cu|st|con|count_i\(0)) # (\cu|st|con|count_i\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regA|A_R|c:18:dff32|dff0|q~q\,
	datab => \cu|st|con|count_i\(1),
	datac => \cu|st|con|count_i\(0),
	datad => \cu|st|con|count_i\(2),
	combout => \dp|ALUL|add|a_sig\(18));

-- Location: LCCOMB_X18_Y9_N4
\dp|ALUL|add|a_sig[17]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|a_sig\(17) = (\dp|ALUL|regA|A_R|c:17:dff32|dff0|q~q\ & ((\cu|st|con|count_i\(1)) # ((\cu|st|con|count_i\(2)) # (\cu|st|con|count_i\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(1),
	datab => \cu|st|con|count_i\(2),
	datac => \cu|st|con|count_i\(0),
	datad => \dp|ALUL|regA|A_R|c:17:dff32|dff0|q~q\,
	combout => \dp|ALUL|add|a_sig\(17));

-- Location: FF_X18_Y8_N27
\dp|ALUL|regA|A_R|c:16:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|ALUL|regC|BF1|c:16:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regA|A_R|c:16:dff32|dff0|q~q\);

-- Location: LCCOMB_X18_Y8_N12
\dp|ALUL|add|a_sig[16]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|a_sig\(16) = (\dp|ALUL|regA|A_R|c:16:dff32|dff0|q~q\ & ((\cu|st|con|count_i\(1)) # ((\cu|st|con|count_i\(2)) # (\cu|st|con|count_i\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(1),
	datab => \cu|st|con|count_i\(2),
	datac => \dp|ALUL|regA|A_R|c:16:dff32|dff0|q~q\,
	datad => \cu|st|con|count_i\(0),
	combout => \dp|ALUL|add|a_sig\(16));

-- Location: LCCOMB_X22_Y13_N0
\dp|ALUL|add|a_sig[15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|a_sig\(15) = (\dp|ALUL|regA|A_R|c:15:dff32|dff0|q~q\ & ((\cu|st|con|count_i\(2)) # ((\cu|st|con|count_i\(0)) # (\cu|st|con|count_i\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(2),
	datab => \cu|st|con|count_i\(0),
	datac => \cu|st|con|count_i\(1),
	datad => \dp|ALUL|regA|A_R|c:15:dff32|dff0|q~q\,
	combout => \dp|ALUL|add|a_sig\(15));

-- Location: LCCOMB_X23_Y13_N10
\dp|ALUL|add|a_sig[14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|a_sig\(14) = (\dp|ALUL|regA|A_R|c:14:dff32|dff0|q~q\ & ((\cu|st|con|count_i\(1)) # ((\cu|st|con|count_i\(2)) # (\cu|st|con|count_i\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(1),
	datab => \dp|ALUL|regA|A_R|c:14:dff32|dff0|q~q\,
	datac => \cu|st|con|count_i\(2),
	datad => \cu|st|con|count_i\(0),
	combout => \dp|ALUL|add|a_sig\(14));

-- Location: LCCOMB_X20_Y13_N6
\dp|ALUL|add|a_sig[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|a_sig\(13) = (\dp|ALUL|regA|A_R|c:13:dff32|dff0|q~q\ & ((\cu|st|con|count_i\(0)) # ((\cu|st|con|count_i\(1)) # (\cu|st|con|count_i\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(0),
	datab => \cu|st|con|count_i\(1),
	datac => \dp|ALUL|regA|A_R|c:13:dff32|dff0|q~q\,
	datad => \cu|st|con|count_i\(2),
	combout => \dp|ALUL|add|a_sig\(13));

-- Location: LCCOMB_X18_Y10_N0
\dp|ALUL|add|a_sig[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|a_sig\(12) = (\dp|ALUL|regA|A_R|c:12:dff32|dff0|q~q\ & ((\cu|st|con|count_i\(0)) # ((\cu|st|con|count_i\(2)) # (\cu|st|con|count_i\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(0),
	datab => \dp|ALUL|regA|A_R|c:12:dff32|dff0|q~q\,
	datac => \cu|st|con|count_i\(2),
	datad => \cu|st|con|count_i\(1),
	combout => \dp|ALUL|add|a_sig\(12));

-- Location: LCCOMB_X15_Y12_N24
\dp|ALUL|add|a_sig[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|a_sig\(11) = (\dp|ALUL|regA|A_R|c:11:dff32|dff0|q~q\ & ((\cu|st|con|count_i\(1)) # ((\cu|st|con|count_i\(2)) # (\cu|st|con|count_i\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(1),
	datab => \cu|st|con|count_i\(2),
	datac => \cu|st|con|count_i\(0),
	datad => \dp|ALUL|regA|A_R|c:11:dff32|dff0|q~q\,
	combout => \dp|ALUL|add|a_sig\(11));

-- Location: FF_X18_Y13_N23
\dp|ALUL|regA|A_R|c:10:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:10:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|control|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regA|A_R|c:10:dff32|dff0|q~q\);

-- Location: LCCOMB_X18_Y13_N28
\dp|ALUL|add|a_sig[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|a_sig\(10) = (\dp|ALUL|regA|A_R|c:10:dff32|dff0|q~q\ & ((\cu|st|con|count_i\(0)) # ((\cu|st|con|count_i\(1)) # (\cu|st|con|count_i\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regA|A_R|c:10:dff32|dff0|q~q\,
	datab => \cu|st|con|count_i\(0),
	datac => \cu|st|con|count_i\(1),
	datad => \cu|st|con|count_i\(2),
	combout => \dp|ALUL|add|a_sig\(10));

-- Location: FF_X19_Y10_N13
\dp|ALUL|regA|A_R|c:9:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:9:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|control|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regA|A_R|c:9:dff32|dff0|q~q\);

-- Location: LCCOMB_X19_Y10_N26
\dp|ALUL|add|a_sig[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|a_sig\(9) = (\dp|ALUL|regA|A_R|c:9:dff32|dff0|q~q\ & ((\cu|st|con|count_i\(0)) # ((\cu|st|con|count_i\(1)) # (\cu|st|con|count_i\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(0),
	datab => \cu|st|con|count_i\(1),
	datac => \cu|st|con|count_i\(2),
	datad => \dp|ALUL|regA|A_R|c:9:dff32|dff0|q~q\,
	combout => \dp|ALUL|add|a_sig\(9));

-- Location: LCCOMB_X20_Y13_N12
\dp|ALUL|add|a_sig[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|a_sig\(8) = (\dp|ALUL|regA|A_R|c:8:dff32|dff0|q~q\ & ((\cu|st|con|count_i\(0)) # ((\cu|st|con|count_i\(2)) # (\cu|st|con|count_i\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(0),
	datab => \cu|st|con|count_i\(2),
	datac => \cu|st|con|count_i\(1),
	datad => \dp|ALUL|regA|A_R|c:8:dff32|dff0|q~q\,
	combout => \dp|ALUL|add|a_sig\(8));

-- Location: LCCOMB_X19_Y11_N10
\dp|ALUL|add|add_32|Y:7:full32|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|add_32|Y:7:full32|c_out~0_combout\ = (\dp|ALUL|add|a_sig\(7) & ((\dp|ALUL|add|add_32|Y:6:full32|c_out~0_combout\) # (\dp|ALUL|regC|BF1|c:7:buf32|output~4_combout\ $ (\dp|ALUL|add|b_inv~combout\)))) # (!\dp|ALUL|add|a_sig\(7) & 
-- (\dp|ALUL|add|add_32|Y:6:full32|c_out~0_combout\ & (\dp|ALUL|regC|BF1|c:7:buf32|output~4_combout\ $ (\dp|ALUL|add|b_inv~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:7:buf32|output~4_combout\,
	datab => \dp|ALUL|add|a_sig\(7),
	datac => \dp|ALUL|add|b_inv~combout\,
	datad => \dp|ALUL|add|add_32|Y:6:full32|c_out~0_combout\,
	combout => \dp|ALUL|add|add_32|Y:7:full32|c_out~0_combout\);

-- Location: LCCOMB_X19_Y11_N28
\dp|ALUL|add|add_32|Y:8:full32|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|add_32|Y:8:full32|c_out~0_combout\ = (\dp|ALUL|add|a_sig\(8) & ((\dp|ALUL|add|add_32|Y:7:full32|c_out~0_combout\) # (\dp|ALUL|regC|BF1|c:8:buf32|output~4_combout\ $ (\dp|ALUL|add|b_inv~combout\)))) # (!\dp|ALUL|add|a_sig\(8) & 
-- (\dp|ALUL|add|add_32|Y:7:full32|c_out~0_combout\ & (\dp|ALUL|regC|BF1|c:8:buf32|output~4_combout\ $ (\dp|ALUL|add|b_inv~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|a_sig\(8),
	datab => \dp|ALUL|regC|BF1|c:8:buf32|output~4_combout\,
	datac => \dp|ALUL|add|b_inv~combout\,
	datad => \dp|ALUL|add|add_32|Y:7:full32|c_out~0_combout\,
	combout => \dp|ALUL|add|add_32|Y:8:full32|c_out~0_combout\);

-- Location: LCCOMB_X19_Y11_N22
\dp|ALUL|add|add_32|Y:9:full32|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|add_32|Y:9:full32|c_out~0_combout\ = (\dp|ALUL|add|a_sig\(9) & ((\dp|ALUL|add|add_32|Y:8:full32|c_out~0_combout\) # (\dp|ALUL|regC|BF1|c:9:buf32|output~4_combout\ $ (\dp|ALUL|add|b_inv~combout\)))) # (!\dp|ALUL|add|a_sig\(9) & 
-- (\dp|ALUL|add|add_32|Y:8:full32|c_out~0_combout\ & (\dp|ALUL|regC|BF1|c:9:buf32|output~4_combout\ $ (\dp|ALUL|add|b_inv~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|a_sig\(9),
	datab => \dp|ALUL|regC|BF1|c:9:buf32|output~4_combout\,
	datac => \dp|ALUL|add|b_inv~combout\,
	datad => \dp|ALUL|add|add_32|Y:8:full32|c_out~0_combout\,
	combout => \dp|ALUL|add|add_32|Y:9:full32|c_out~0_combout\);

-- Location: LCCOMB_X19_Y11_N0
\dp|ALUL|add|add_32|Y:10:full32|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|add_32|Y:10:full32|c_out~0_combout\ = (\dp|ALUL|add|a_sig\(10) & ((\dp|ALUL|add|add_32|Y:9:full32|c_out~0_combout\) # (\dp|ALUL|regC|BF1|c:10:buf32|output~4_combout\ $ (\dp|ALUL|add|b_inv~combout\)))) # (!\dp|ALUL|add|a_sig\(10) & 
-- (\dp|ALUL|add|add_32|Y:9:full32|c_out~0_combout\ & (\dp|ALUL|regC|BF1|c:10:buf32|output~4_combout\ $ (\dp|ALUL|add|b_inv~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|a_sig\(10),
	datab => \dp|ALUL|regC|BF1|c:10:buf32|output~4_combout\,
	datac => \dp|ALUL|add|add_32|Y:9:full32|c_out~0_combout\,
	datad => \dp|ALUL|add|b_inv~combout\,
	combout => \dp|ALUL|add|add_32|Y:10:full32|c_out~0_combout\);

-- Location: LCCOMB_X19_Y11_N30
\dp|ALUL|add|add_32|Y:11:full32|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|add_32|Y:11:full32|c_out~0_combout\ = (\dp|ALUL|add|a_sig\(11) & ((\dp|ALUL|add|add_32|Y:10:full32|c_out~0_combout\) # (\dp|ALUL|regC|BF1|c:11:buf32|output~4_combout\ $ (\dp|ALUL|add|b_inv~combout\)))) # (!\dp|ALUL|add|a_sig\(11) & 
-- (\dp|ALUL|add|add_32|Y:10:full32|c_out~0_combout\ & (\dp|ALUL|regC|BF1|c:11:buf32|output~4_combout\ $ (\dp|ALUL|add|b_inv~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:11:buf32|output~4_combout\,
	datab => \dp|ALUL|add|b_inv~combout\,
	datac => \dp|ALUL|add|a_sig\(11),
	datad => \dp|ALUL|add|add_32|Y:10:full32|c_out~0_combout\,
	combout => \dp|ALUL|add|add_32|Y:11:full32|c_out~0_combout\);

-- Location: LCCOMB_X19_Y11_N12
\dp|ALUL|add|add_32|Y:12:full32|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|add_32|Y:12:full32|c_out~0_combout\ = (\dp|ALUL|add|a_sig\(12) & ((\dp|ALUL|add|add_32|Y:11:full32|c_out~0_combout\) # (\dp|ALUL|add|b_inv~combout\ $ (\dp|ALUL|regC|BF1|c:12:buf32|output~4_combout\)))) # (!\dp|ALUL|add|a_sig\(12) & 
-- (\dp|ALUL|add|add_32|Y:11:full32|c_out~0_combout\ & (\dp|ALUL|add|b_inv~combout\ $ (\dp|ALUL|regC|BF1|c:12:buf32|output~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|a_sig\(12),
	datab => \dp|ALUL|add|b_inv~combout\,
	datac => \dp|ALUL|add|add_32|Y:11:full32|c_out~0_combout\,
	datad => \dp|ALUL|regC|BF1|c:12:buf32|output~4_combout\,
	combout => \dp|ALUL|add|add_32|Y:12:full32|c_out~0_combout\);

-- Location: LCCOMB_X19_Y11_N2
\dp|ALUL|add|add_32|Y:13:full32|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|add_32|Y:13:full32|c_out~0_combout\ = (\dp|ALUL|add|a_sig\(13) & ((\dp|ALUL|add|add_32|Y:12:full32|c_out~0_combout\) # (\dp|ALUL|regC|BF1|c:13:buf32|output~4_combout\ $ (\dp|ALUL|add|b_inv~combout\)))) # (!\dp|ALUL|add|a_sig\(13) & 
-- (\dp|ALUL|add|add_32|Y:12:full32|c_out~0_combout\ & (\dp|ALUL|regC|BF1|c:13:buf32|output~4_combout\ $ (\dp|ALUL|add|b_inv~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|a_sig\(13),
	datab => \dp|ALUL|regC|BF1|c:13:buf32|output~4_combout\,
	datac => \dp|ALUL|add|b_inv~combout\,
	datad => \dp|ALUL|add|add_32|Y:12:full32|c_out~0_combout\,
	combout => \dp|ALUL|add|add_32|Y:13:full32|c_out~0_combout\);

-- Location: LCCOMB_X19_Y11_N20
\dp|ALUL|add|add_32|Y:14:full32|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|add_32|Y:14:full32|c_out~0_combout\ = (\dp|ALUL|add|a_sig\(14) & ((\dp|ALUL|add|add_32|Y:13:full32|c_out~0_combout\) # (\dp|ALUL|add|b_inv~combout\ $ (\dp|ALUL|regC|BF1|c:14:buf32|output~4_combout\)))) # (!\dp|ALUL|add|a_sig\(14) & 
-- (\dp|ALUL|add|add_32|Y:13:full32|c_out~0_combout\ & (\dp|ALUL|add|b_inv~combout\ $ (\dp|ALUL|regC|BF1|c:14:buf32|output~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|a_sig\(14),
	datab => \dp|ALUL|add|b_inv~combout\,
	datac => \dp|ALUL|regC|BF1|c:14:buf32|output~4_combout\,
	datad => \dp|ALUL|add|add_32|Y:13:full32|c_out~0_combout\,
	combout => \dp|ALUL|add|add_32|Y:14:full32|c_out~0_combout\);

-- Location: LCCOMB_X19_Y11_N6
\dp|ALUL|add|add_32|Y:15:full32|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|add_32|Y:15:full32|c_out~0_combout\ = (\dp|ALUL|add|a_sig\(15) & ((\dp|ALUL|add|add_32|Y:14:full32|c_out~0_combout\) # (\dp|ALUL|regC|BF1|c:15:buf32|output~4_combout\ $ (\dp|ALUL|add|b_inv~combout\)))) # (!\dp|ALUL|add|a_sig\(15) & 
-- (\dp|ALUL|add|add_32|Y:14:full32|c_out~0_combout\ & (\dp|ALUL|regC|BF1|c:15:buf32|output~4_combout\ $ (\dp|ALUL|add|b_inv~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:15:buf32|output~4_combout\,
	datab => \dp|ALUL|add|a_sig\(15),
	datac => \dp|ALUL|add|b_inv~combout\,
	datad => \dp|ALUL|add|add_32|Y:14:full32|c_out~0_combout\,
	combout => \dp|ALUL|add|add_32|Y:15:full32|c_out~0_combout\);

-- Location: LCCOMB_X19_Y11_N16
\dp|ALUL|add|add_32|Y:16:full32|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|add_32|Y:16:full32|c_out~0_combout\ = (\dp|ALUL|add|a_sig\(16) & ((\dp|ALUL|add|add_32|Y:15:full32|c_out~0_combout\) # (\dp|ALUL|regC|BF1|c:16:buf32|output~4_combout\ $ (\dp|ALUL|add|b_inv~combout\)))) # (!\dp|ALUL|add|a_sig\(16) & 
-- (\dp|ALUL|add|add_32|Y:15:full32|c_out~0_combout\ & (\dp|ALUL|regC|BF1|c:16:buf32|output~4_combout\ $ (\dp|ALUL|add|b_inv~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:16:buf32|output~4_combout\,
	datab => \dp|ALUL|add|b_inv~combout\,
	datac => \dp|ALUL|add|a_sig\(16),
	datad => \dp|ALUL|add|add_32|Y:15:full32|c_out~0_combout\,
	combout => \dp|ALUL|add|add_32|Y:16:full32|c_out~0_combout\);

-- Location: LCCOMB_X19_Y11_N14
\dp|ALUL|add|add_32|Y:17:full32|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|add_32|Y:17:full32|c_out~0_combout\ = (\dp|ALUL|add|a_sig\(17) & ((\dp|ALUL|add|add_32|Y:16:full32|c_out~0_combout\) # (\dp|ALUL|add|b_inv~combout\ $ (\dp|ALUL|regC|BF1|c:17:buf32|output~4_combout\)))) # (!\dp|ALUL|add|a_sig\(17) & 
-- (\dp|ALUL|add|add_32|Y:16:full32|c_out~0_combout\ & (\dp|ALUL|add|b_inv~combout\ $ (\dp|ALUL|regC|BF1|c:17:buf32|output~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|a_sig\(17),
	datab => \dp|ALUL|add|b_inv~combout\,
	datac => \dp|ALUL|regC|BF1|c:17:buf32|output~4_combout\,
	datad => \dp|ALUL|add|add_32|Y:16:full32|c_out~0_combout\,
	combout => \dp|ALUL|add|add_32|Y:17:full32|c_out~0_combout\);

-- Location: LCCOMB_X20_Y11_N6
\dp|ALUL|add|add_32|Y:18:full32|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|add_32|Y:18:full32|c_out~0_combout\ = (\dp|ALUL|add|a_sig\(18) & ((\dp|ALUL|add|add_32|Y:17:full32|c_out~0_combout\) # (\dp|ALUL|add|b_inv~combout\ $ (\dp|ALUL|regC|BF1|c:18:buf32|output~4_combout\)))) # (!\dp|ALUL|add|a_sig\(18) & 
-- (\dp|ALUL|add|add_32|Y:17:full32|c_out~0_combout\ & (\dp|ALUL|add|b_inv~combout\ $ (\dp|ALUL|regC|BF1|c:18:buf32|output~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|b_inv~combout\,
	datab => \dp|ALUL|regC|BF1|c:18:buf32|output~4_combout\,
	datac => \dp|ALUL|add|a_sig\(18),
	datad => \dp|ALUL|add|add_32|Y:17:full32|c_out~0_combout\,
	combout => \dp|ALUL|add|add_32|Y:18:full32|c_out~0_combout\);

-- Location: LCCOMB_X20_Y11_N20
\dp|ALUL|add|add_32|Y:19:full32|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|add_32|Y:19:full32|c_out~0_combout\ = (\dp|ALUL|add|a_sig\(19) & ((\dp|ALUL|add|add_32|Y:18:full32|c_out~0_combout\) # (\dp|ALUL|add|b_inv~combout\ $ (\dp|ALUL|regC|BF1|c:19:buf32|output~4_combout\)))) # (!\dp|ALUL|add|a_sig\(19) & 
-- (\dp|ALUL|add|add_32|Y:18:full32|c_out~0_combout\ & (\dp|ALUL|add|b_inv~combout\ $ (\dp|ALUL|regC|BF1|c:19:buf32|output~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|b_inv~combout\,
	datab => \dp|ALUL|add|a_sig\(19),
	datac => \dp|ALUL|regC|BF1|c:19:buf32|output~4_combout\,
	datad => \dp|ALUL|add|add_32|Y:18:full32|c_out~0_combout\,
	combout => \dp|ALUL|add|add_32|Y:19:full32|c_out~0_combout\);

-- Location: LCCOMB_X20_Y11_N10
\dp|ALUL|add|add_32|Y:20:full32|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|add_32|Y:20:full32|c_out~0_combout\ = (\dp|ALUL|add|a_sig\(20) & ((\dp|ALUL|add|add_32|Y:19:full32|c_out~0_combout\) # (\dp|ALUL|regC|BF1|c:20:buf32|output~4_combout\ $ (\dp|ALUL|add|b_inv~combout\)))) # (!\dp|ALUL|add|a_sig\(20) & 
-- (\dp|ALUL|add|add_32|Y:19:full32|c_out~0_combout\ & (\dp|ALUL|regC|BF1|c:20:buf32|output~4_combout\ $ (\dp|ALUL|add|b_inv~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:20:buf32|output~4_combout\,
	datab => \dp|ALUL|add|a_sig\(20),
	datac => \dp|ALUL|add|b_inv~combout\,
	datad => \dp|ALUL|add|add_32|Y:19:full32|c_out~0_combout\,
	combout => \dp|ALUL|add|add_32|Y:20:full32|c_out~0_combout\);

-- Location: LCCOMB_X20_Y11_N12
\dp|ALUL|add|add_32|Y:21:full32|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|add_32|Y:21:full32|c_out~0_combout\ = (\dp|ALUL|add|a_sig\(21) & ((\dp|ALUL|add|add_32|Y:20:full32|c_out~0_combout\) # (\dp|ALUL|add|b_inv~combout\ $ (\dp|ALUL|regC|BF1|c:21:buf32|output~4_combout\)))) # (!\dp|ALUL|add|a_sig\(21) & 
-- (\dp|ALUL|add|add_32|Y:20:full32|c_out~0_combout\ & (\dp|ALUL|add|b_inv~combout\ $ (\dp|ALUL|regC|BF1|c:21:buf32|output~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|a_sig\(21),
	datab => \dp|ALUL|add|b_inv~combout\,
	datac => \dp|ALUL|regC|BF1|c:21:buf32|output~4_combout\,
	datad => \dp|ALUL|add|add_32|Y:20:full32|c_out~0_combout\,
	combout => \dp|ALUL|add|add_32|Y:21:full32|c_out~0_combout\);

-- Location: LCCOMB_X20_Y11_N14
\dp|ALUL|add|add_32|Y:22:full32|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|add_32|Y:22:full32|c_out~0_combout\ = (\dp|ALUL|add|a_sig\(22) & ((\dp|ALUL|add|add_32|Y:21:full32|c_out~0_combout\) # (\dp|ALUL|regC|BF1|c:22:buf32|output~3_combout\ $ (\dp|ALUL|add|b_inv~combout\)))) # (!\dp|ALUL|add|a_sig\(22) & 
-- (\dp|ALUL|add|add_32|Y:21:full32|c_out~0_combout\ & (\dp|ALUL|regC|BF1|c:22:buf32|output~3_combout\ $ (\dp|ALUL|add|b_inv~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:22:buf32|output~3_combout\,
	datab => \dp|ALUL|add|a_sig\(22),
	datac => \dp|ALUL|add|b_inv~combout\,
	datad => \dp|ALUL|add|add_32|Y:21:full32|c_out~0_combout\,
	combout => \dp|ALUL|add|add_32|Y:22:full32|c_out~0_combout\);

-- Location: FF_X20_Y8_N7
\dp|ALUL|regA|A_R|c:23:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:23:buf32|output~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|control|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regA|A_R|c:23:dff32|dff0|q~q\);

-- Location: LCCOMB_X20_Y8_N22
\dp|ALUL|add|a_sig[23]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|a_sig\(23) = (\dp|ALUL|regA|A_R|c:23:dff32|dff0|q~q\ & ((\cu|st|con|count_i\(1)) # ((\cu|st|con|count_i\(2)) # (\cu|st|con|count_i\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regA|A_R|c:23:dff32|dff0|q~q\,
	datab => \cu|st|con|count_i\(1),
	datac => \cu|st|con|count_i\(2),
	datad => \cu|st|con|count_i\(0),
	combout => \dp|ALUL|add|a_sig\(23));

-- Location: LCCOMB_X20_Y11_N16
\dp|ALUL|add|add_32|Y:23:full32|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|add_32|Y:23:full32|c_out~0_combout\ = (\dp|ALUL|add|add_32|Y:22:full32|c_out~0_combout\ & ((\dp|ALUL|add|a_sig\(23)) # (\dp|ALUL|add|b_inv~combout\ $ (\dp|ALUL|regC|BF1|c:23:buf32|output~3_combout\)))) # 
-- (!\dp|ALUL|add|add_32|Y:22:full32|c_out~0_combout\ & (\dp|ALUL|add|a_sig\(23) & (\dp|ALUL|add|b_inv~combout\ $ (\dp|ALUL|regC|BF1|c:23:buf32|output~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|b_inv~combout\,
	datab => \dp|ALUL|regC|BF1|c:23:buf32|output~3_combout\,
	datac => \dp|ALUL|add|add_32|Y:22:full32|c_out~0_combout\,
	datad => \dp|ALUL|add|a_sig\(23),
	combout => \dp|ALUL|add|add_32|Y:23:full32|c_out~0_combout\);

-- Location: LCCOMB_X20_Y11_N18
\dp|ALUL|add|add_32|Y:24:full32|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|add_32|Y:24:full32|c_out~0_combout\ = (\dp|ALUL|add|a_sig\(24) & ((\dp|ALUL|add|add_32|Y:23:full32|c_out~0_combout\) # (\dp|ALUL|regC|BF1|c:24:buf32|output~3_combout\ $ (\dp|ALUL|add|b_inv~combout\)))) # (!\dp|ALUL|add|a_sig\(24) & 
-- (\dp|ALUL|add|add_32|Y:23:full32|c_out~0_combout\ & (\dp|ALUL|regC|BF1|c:24:buf32|output~3_combout\ $ (\dp|ALUL|add|b_inv~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|a_sig\(24),
	datab => \dp|ALUL|regC|BF1|c:24:buf32|output~3_combout\,
	datac => \dp|ALUL|add|b_inv~combout\,
	datad => \dp|ALUL|add|add_32|Y:23:full32|c_out~0_combout\,
	combout => \dp|ALUL|add|add_32|Y:24:full32|c_out~0_combout\);

-- Location: LCCOMB_X20_Y10_N28
\dp|ALUL|regC|DFF1|c:25:dff32|d_input~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:25:dff32|d_input~15_combout\ = (\dp|ALUL|add|add_E~9_combout\ & (\dp|ALUL|add|a_sig\(25) $ (\dp|ALUL|add|b_sig\(25) $ (\dp|ALUL|add|add_32|Y:24:full32|c_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|a_sig\(25),
	datab => \dp|ALUL|add|b_sig\(25),
	datac => \dp|ALUL|add|add_E~9_combout\,
	datad => \dp|ALUL|add|add_32|Y:24:full32|c_out~0_combout\,
	combout => \dp|ALUL|regC|DFF1|c:25:dff32|d_input~15_combout\);

-- Location: LCCOMB_X20_Y10_N12
\dp|ALUL|regC|DFF1|c:25:dff32|d_input~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:25:dff32|d_input~20_combout\ = (\dp|ALUL|regC|DFF1|c:25:dff32|d_input~16_combout\) # ((\dp|ALUL|regC|DFF1|c:25:dff32|d_input~17_combout\) # ((\dp|ALUL|regC|DFF1|c:25:dff32|d_input~19_combout\) # 
-- (\dp|ALUL|regC|DFF1|c:25:dff32|d_input~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:25:dff32|d_input~16_combout\,
	datab => \dp|ALUL|regC|DFF1|c:25:dff32|d_input~17_combout\,
	datac => \dp|ALUL|regC|DFF1|c:25:dff32|d_input~19_combout\,
	datad => \dp|ALUL|regC|DFF1|c:25:dff32|d_input~15_combout\,
	combout => \dp|ALUL|regC|DFF1|c:25:dff32|d_input~20_combout\);

-- Location: FF_X20_Y10_N13
\dp|ALUL|regC|DFF1|c:25:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|ALUL|regC|DFF1|c:25:dff32|d_input~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|Cin~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regC|DFF1|c:25:dff32|dff0|q~q\);

-- Location: FF_X18_Y7_N17
\dp|IRL|ir21|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:21:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|st|dec|Mux0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|IRL|ir21|dff0|q~q\);

-- Location: LCCOMB_X18_Y7_N16
\dp|ALUL|regC|BF1|c:21:buf32|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:21:buf32|output~0_combout\ = (\dp|IRL|buff_c2_17|output~0_combout\ & ((\dp|IRL|ir21|dff0|q~q\) # (!\cu|control|C1out~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|C1out~1_combout\,
	datac => \dp|IRL|ir21|dff0|q~q\,
	datad => \dp|IRL|buff_c2_17|output~0_combout\,
	combout => \dp|ALUL|regC|BF1|c:21:buf32|output~0_combout\);

-- Location: IOIBUF_X13_Y0_N8
\md[25]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => md(25),
	o => \md[25]~input_o\);

-- Location: LCCOMB_X17_Y7_N20
\dp|MEML|or_G[25]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|MEML|or_G\(25) = (\md_read~input_o\ & ((\md[25]~input_o\) # ((\dp|ALUL|regC|BF1|c:25:buf32|output~3_combout\ & \cu|control|MDin~combout\)))) # (!\md_read~input_o\ & (((\dp|ALUL|regC|BF1|c:25:buf32|output~3_combout\ & \cu|control|MDin~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \md_read~input_o\,
	datab => \md[25]~input_o\,
	datac => \dp|ALUL|regC|BF1|c:25:buf32|output~3_combout\,
	datad => \cu|control|MDin~combout\,
	combout => \dp|MEML|or_G\(25));

-- Location: FF_X17_Y7_N21
\dp|MEML|md_r|c:25:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|MEML|or_G\(25),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \dp|MEML|md_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|md_r|c:25:dff32|dff0|q~q\);

-- Location: FF_X17_Y7_N27
\dp|PCL|dff|c:25:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:25:buf32|output~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|control|PCin~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|PCL|dff|c:25:dff32|dff0|q~q\);

-- Location: LCCOMB_X17_Y7_N26
\dp|ALUL|regC|BF1|c:25:buf32|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:25:buf32|output~0_combout\ = (\cu|control|PCout~combout\ & (\dp|PCL|dff|c:25:dff32|dff0|q~q\ & ((\dp|MEML|md_r|c:25:dff32|dff0|q~q\) # (!\cu|control|MDout~0_combout\)))) # (!\cu|control|PCout~combout\ & 
-- ((\dp|MEML|md_r|c:25:dff32|dff0|q~q\) # ((!\cu|control|MDout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|PCout~combout\,
	datab => \dp|MEML|md_r|c:25:dff32|dff0|q~q\,
	datac => \dp|PCL|dff|c:25:dff32|dff0|q~q\,
	datad => \cu|control|MDout~0_combout\,
	combout => \dp|ALUL|regC|BF1|c:25:buf32|output~0_combout\);

-- Location: LCCOMB_X20_Y10_N6
\dp|ALUL|regC|BF1|c:25:buf32|output~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:25:buf32|output~1_combout\ = (\dp|ALUL|regC|BF1|c:21:buf32|output~0_combout\ & (\dp|ALUL|regC|BF1|c:25:buf32|output~0_combout\ & ((\dp|ALUL|regC|DFF1|c:25:dff32|dff0|q~q\) # (!\cu|control|Cout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:25:dff32|dff0|q~q\,
	datab => \cu|control|Cout~combout\,
	datac => \dp|ALUL|regC|BF1|c:21:buf32|output~0_combout\,
	datad => \dp|ALUL|regC|BF1|c:25:buf32|output~0_combout\,
	combout => \dp|ALUL|regC|BF1|c:25:buf32|output~1_combout\);

-- Location: LCCOMB_X20_Y10_N20
\dp|ALUL|regC|BF1|c:25:buf32|output~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:25:buf32|output~3_combout\ = (\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\) # ((\dp|ALUL|regC|BF1|c:25:buf32|output~1_combout\ & \dp|ALUL|regC|BF1|c:25:buf32|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:25:buf32|output~1_combout\,
	datac => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	datad => \dp|ALUL|regC|BF1|c:25:buf32|output~2_combout\,
	combout => \dp|ALUL|regC|BF1|c:25:buf32|output~3_combout\);

-- Location: LCCOMB_X22_Y11_N16
\dp|ALUL|regC|DFF1|c:24:dff32|d_input~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:24:dff32|d_input~16_combout\ = (\dp|ALUL|regC|BF1|c:25:buf32|output~3_combout\ & ((\dp|ALUL|r_s|Eout~0_combout\) # ((\dp|ALUL|l_s|Eout~0_combout\ & \dp|ALUL|regC|BF1|c:23:buf32|output~3_combout\)))) # 
-- (!\dp|ALUL|regC|BF1|c:25:buf32|output~3_combout\ & (((\dp|ALUL|l_s|Eout~0_combout\ & \dp|ALUL|regC|BF1|c:23:buf32|output~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:25:buf32|output~3_combout\,
	datab => \dp|ALUL|r_s|Eout~0_combout\,
	datac => \dp|ALUL|l_s|Eout~0_combout\,
	datad => \dp|ALUL|regC|BF1|c:23:buf32|output~3_combout\,
	combout => \dp|ALUL|regC|DFF1|c:24:dff32|d_input~16_combout\);

-- Location: LCCOMB_X22_Y11_N8
\dp|ALUL|regC|DFF1|c:24:dff32|d_input~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:24:dff32|d_input~18_combout\ = (\cu|control|NEG~combout\ & ((\dp|ALUL|add|temp[24]~48_combout\) # ((\dp|ALUL|regA|A_R|c:24:dff32|dff0|q~q\ & \dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\)))) # (!\cu|control|NEG~combout\ & 
-- (\dp|ALUL|regA|A_R|c:24:dff32|dff0|q~q\ & (\dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|NEG~combout\,
	datab => \dp|ALUL|regA|A_R|c:24:dff32|dff0|q~q\,
	datac => \dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\,
	datad => \dp|ALUL|add|temp[24]~48_combout\,
	combout => \dp|ALUL|regC|DFF1|c:24:dff32|d_input~18_combout\);

-- Location: FF_X23_Y9_N5
\dp|RegFIleL|gen_reg1|dffL|c:24:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:24:buf32|output~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|RegFIleL|strop\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg1|dffL|c:24:dff32|dff0|q~q\);

-- Location: FF_X23_Y9_N19
\dp|RegFIleL|gen_reg0|dff|c:24:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:24:buf32|output~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|RegFIleL|strop\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg0|dff|c:24:dff32|dff0|q~q\);

-- Location: LCCOMB_X23_Y9_N18
\dp|RegFIleL|gen_reg0|BFF_in[24]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|RegFIleL|gen_reg0|BFF_in\(24) = (\dp|RegFIleL|gen_reg0|dff|c:24:dff32|dff0|q~q\ & !\cu|control|BAout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|RegFIleL|gen_reg0|dff|c:24:dff32|dff0|q~q\,
	datad => \cu|control|BAout~0_combout\,
	combout => \dp|RegFIleL|gen_reg0|BFF_in\(24));

-- Location: LCCOMB_X23_Y9_N4
\dp|ALUL|regC|BF1|c:24:buf32|output~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:24:buf32|output~2_combout\ = ((\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & (\dp|RegFIleL|gen_reg1|dffL|c:24:dff32|dff0|q~q\)) # (!\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & ((\dp|RegFIleL|gen_reg0|BFF_in\(24))))) # 
-- (!\dp|RegFIleL|r_out_OR_ba_out~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RegFIleL|r_out_OR_ba_out~5_combout\,
	datab => \dp|RegFIleL|reg|input_decoder[0]~4_combout\,
	datac => \dp|RegFIleL|gen_reg1|dffL|c:24:dff32|dff0|q~q\,
	datad => \dp|RegFIleL|gen_reg0|BFF_in\(24),
	combout => \dp|ALUL|regC|BF1|c:24:buf32|output~2_combout\);

-- Location: LCCOMB_X22_Y11_N4
\dp|ALUL|add|b_sig[24]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|b_sig\(24) = \dp|ALUL|add|b_inv~combout\ $ (((\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\) # ((\dp|ALUL|regC|BF1|c:24:buf32|output~1_combout\ & \dp|ALUL|regC|BF1|c:24:buf32|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|b_inv~combout\,
	datab => \dp|ALUL|regC|BF1|c:24:buf32|output~1_combout\,
	datac => \dp|ALUL|regC|BF1|c:24:buf32|output~2_combout\,
	datad => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	combout => \dp|ALUL|add|b_sig\(24));

-- Location: LCCOMB_X22_Y11_N20
\dp|ALUL|add|add_32|Y:24:full32|second_HA|s~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|add_32|Y:24:full32|second_HA|s~0_combout\ = \dp|ALUL|add|a_sig\(24) $ (\dp|ALUL|add|add_32|Y:23:full32|c_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|a_sig\(24),
	datad => \dp|ALUL|add|add_32|Y:23:full32|c_out~0_combout\,
	combout => \dp|ALUL|add|add_32|Y:24:full32|second_HA|s~0_combout\);

-- Location: LCCOMB_X22_Y11_N10
\dp|ALUL|regC|DFF1|c:24:dff32|d_input~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:24:dff32|d_input~15_combout\ = (\dp|ALUL|add|b_sig\(24) & ((\cu|control|NOTOP~combout\) # ((\dp|ALUL|add|add_E~9_combout\ & !\dp|ALUL|add|add_32|Y:24:full32|second_HA|s~0_combout\)))) # (!\dp|ALUL|add|b_sig\(24) & 
-- (\dp|ALUL|add|add_E~9_combout\ & ((\dp|ALUL|add|add_32|Y:24:full32|second_HA|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|add_E~9_combout\,
	datab => \cu|control|NOTOP~combout\,
	datac => \dp|ALUL|add|b_sig\(24),
	datad => \dp|ALUL|add|add_32|Y:24:full32|second_HA|s~0_combout\,
	combout => \dp|ALUL|regC|DFF1|c:24:dff32|d_input~15_combout\);

-- Location: LCCOMB_X22_Y11_N26
\dp|ALUL|regC|DFF1|c:24:dff32|d_input~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:24:dff32|d_input~19_combout\ = (\dp|ALUL|regC|DFF1|c:24:dff32|d_input~17_combout\) # ((\dp|ALUL|regC|DFF1|c:24:dff32|d_input~16_combout\) # ((\dp|ALUL|regC|DFF1|c:24:dff32|d_input~18_combout\) # 
-- (\dp|ALUL|regC|DFF1|c:24:dff32|d_input~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:24:dff32|d_input~17_combout\,
	datab => \dp|ALUL|regC|DFF1|c:24:dff32|d_input~16_combout\,
	datac => \dp|ALUL|regC|DFF1|c:24:dff32|d_input~18_combout\,
	datad => \dp|ALUL|regC|DFF1|c:24:dff32|d_input~15_combout\,
	combout => \dp|ALUL|regC|DFF1|c:24:dff32|d_input~19_combout\);

-- Location: FF_X22_Y11_N27
\dp|ALUL|regC|DFF1|c:24:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|ALUL|regC|DFF1|c:24:dff32|d_input~19_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|Cin~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regC|DFF1|c:24:dff32|dff0|q~q\);

-- Location: IOIBUF_X10_Y15_N22
\md[24]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => md(24),
	o => \md[24]~input_o\);

-- Location: LCCOMB_X16_Y12_N30
\dp|MEML|or_G[24]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|MEML|or_G\(24) = (\cu|control|MDin~combout\ & ((\dp|ALUL|regC|BF1|c:24:buf32|output~3_combout\) # ((\md[24]~input_o\ & \md_read~input_o\)))) # (!\cu|control|MDin~combout\ & (\md[24]~input_o\ & (\md_read~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|MDin~combout\,
	datab => \md[24]~input_o\,
	datac => \md_read~input_o\,
	datad => \dp|ALUL|regC|BF1|c:24:buf32|output~3_combout\,
	combout => \dp|MEML|or_G\(24));

-- Location: FF_X16_Y12_N31
\dp|MEML|md_r|c:24:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|MEML|or_G\(24),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \dp|MEML|md_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|md_r|c:24:dff32|dff0|q~q\);

-- Location: FF_X16_Y10_N19
\dp|PCL|dff|c:24:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:24:buf32|output~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|control|PCin~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|PCL|dff|c:24:dff32|dff0|q~q\);

-- Location: LCCOMB_X16_Y10_N18
\dp|ALUL|regC|BF1|c:24:buf32|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:24:buf32|output~0_combout\ = (\cu|control|MDout~0_combout\ & (\dp|MEML|md_r|c:24:dff32|dff0|q~q\ & ((\dp|PCL|dff|c:24:dff32|dff0|q~q\) # (!\cu|control|PCout~combout\)))) # (!\cu|control|MDout~0_combout\ & 
-- (((\dp|PCL|dff|c:24:dff32|dff0|q~q\) # (!\cu|control|PCout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|MDout~0_combout\,
	datab => \dp|MEML|md_r|c:24:dff32|dff0|q~q\,
	datac => \dp|PCL|dff|c:24:dff32|dff0|q~q\,
	datad => \cu|control|PCout~combout\,
	combout => \dp|ALUL|regC|BF1|c:24:buf32|output~0_combout\);

-- Location: LCCOMB_X22_Y11_N28
\dp|ALUL|regC|BF1|c:24:buf32|output~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:24:buf32|output~1_combout\ = (\dp|ALUL|regC|BF1|c:21:buf32|output~0_combout\ & (\dp|ALUL|regC|BF1|c:24:buf32|output~0_combout\ & ((\dp|ALUL|regC|DFF1|c:24:dff32|dff0|q~q\) # (!\cu|control|Cout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:24:dff32|dff0|q~q\,
	datab => \cu|control|Cout~combout\,
	datac => \dp|ALUL|regC|BF1|c:21:buf32|output~0_combout\,
	datad => \dp|ALUL|regC|BF1|c:24:buf32|output~0_combout\,
	combout => \dp|ALUL|regC|BF1|c:24:buf32|output~1_combout\);

-- Location: LCCOMB_X22_Y11_N18
\dp|ALUL|regC|BF1|c:24:buf32|output~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:24:buf32|output~3_combout\ = (\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\) # ((\dp|ALUL|regC|BF1|c:24:buf32|output~1_combout\ & \dp|ALUL|regC|BF1|c:24:buf32|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	datab => \dp|ALUL|regC|BF1|c:24:buf32|output~1_combout\,
	datac => \dp|ALUL|regC|BF1|c:24:buf32|output~2_combout\,
	combout => \dp|ALUL|regC|BF1|c:24:buf32|output~3_combout\);

-- Location: LCCOMB_X22_Y11_N12
\dp|ALUL|regC|DFF1|c:23:dff32|d_input~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:23:dff32|d_input~17_combout\ = (\dp|ALUL|regC|BF1|c:24:buf32|output~3_combout\ & ((\dp|ALUL|r_s|Eout~0_combout\) # ((\dp|ALUL|regC|BF1|c:22:buf32|output~3_combout\ & \dp|ALUL|l_s|Eout~0_combout\)))) # 
-- (!\dp|ALUL|regC|BF1|c:24:buf32|output~3_combout\ & (\dp|ALUL|regC|BF1|c:22:buf32|output~3_combout\ & (\dp|ALUL|l_s|Eout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:24:buf32|output~3_combout\,
	datab => \dp|ALUL|regC|BF1|c:22:buf32|output~3_combout\,
	datac => \dp|ALUL|l_s|Eout~0_combout\,
	datad => \dp|ALUL|r_s|Eout~0_combout\,
	combout => \dp|ALUL|regC|DFF1|c:23:dff32|d_input~17_combout\);

-- Location: LCCOMB_X23_Y8_N10
\dp|ALUL|regC|DFF1|c:23:dff32|d_input~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:23:dff32|d_input~15_combout\ = (\dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\ & ((\dp|ALUL|regA|A_R|c:23:dff32|dff0|q~q\) # ((\cu|control|NEG~combout\ & \dp|ALUL|add|temp[23]~46_combout\)))) # 
-- (!\dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\ & (((\cu|control|NEG~combout\ & \dp|ALUL|add|temp[23]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\,
	datab => \dp|ALUL|regA|A_R|c:23:dff32|dff0|q~q\,
	datac => \cu|control|NEG~combout\,
	datad => \dp|ALUL|add|temp[23]~46_combout\,
	combout => \dp|ALUL|regC|DFF1|c:23:dff32|d_input~15_combout\);

-- Location: LCCOMB_X20_Y8_N10
\dp|ALUL|regC|DFF1|c:23:dff32|d_input~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:23:dff32|d_input~3_combout\ = (!\cu|st|con|count_i\(1) & (!\cu|st|con|count_i\(0) & ((\dp|ALUL|regA|A_R|c:23:dff32|dff0|q~q\) # (\dp|IRL|ir28|dff0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regA|A_R|c:23:dff32|dff0|q~q\,
	datab => \dp|IRL|ir28|dff0|q~q\,
	datac => \cu|st|con|count_i\(1),
	datad => \cu|st|con|count_i\(0),
	combout => \dp|ALUL|regC|DFF1|c:23:dff32|d_input~3_combout\);

-- Location: LCCOMB_X20_Y8_N4
\dp|ALUL|regC|DFF1|c:23:dff32|d_input~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:23:dff32|d_input~20_combout\ = (\dp|ALUL|regC|DFF1|c:23:dff32|d_input~3_combout\ & (\dp|IRL|ir31|dff0|q~q\ & (\cu|st|con|count_i\(2) & !\dp|IRL|ir30|dff0|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:23:dff32|d_input~3_combout\,
	datab => \dp|IRL|ir31|dff0|q~q\,
	datac => \cu|st|con|count_i\(2),
	datad => \dp|IRL|ir30|dff0|q~q\,
	combout => \dp|ALUL|regC|DFF1|c:23:dff32|d_input~20_combout\);

-- Location: LCCOMB_X22_Y11_N14
\dp|ALUL|regC|DFF1|c:23:dff32|d_input~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:23:dff32|d_input~18_combout\ = (\dp|ALUL|regC|BF1|c:23:buf32|output~3_combout\ & ((\dp|ALUL|regC|DFF1|c:23:dff32|d_input~20_combout\) # ((\cu|control|CB~combout\)))) # (!\dp|ALUL|regC|BF1|c:23:buf32|output~3_combout\ & 
-- (((\cu|control|NOTOP~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:23:dff32|d_input~20_combout\,
	datab => \cu|control|NOTOP~combout\,
	datac => \cu|control|CB~combout\,
	datad => \dp|ALUL|regC|BF1|c:23:buf32|output~3_combout\,
	combout => \dp|ALUL|regC|DFF1|c:23:dff32|d_input~18_combout\);

-- Location: FF_X22_Y8_N11
\dp|RegFIleL|gen_reg0|dff|c:23:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:23:buf32|output~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|RegFIleL|strop\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg0|dff|c:23:dff32|dff0|q~q\);

-- Location: LCCOMB_X22_Y8_N10
\dp|RegFIleL|gen_reg0|BFF_in[23]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|RegFIleL|gen_reg0|BFF_in\(23) = (\dp|RegFIleL|gen_reg0|dff|c:23:dff32|dff0|q~q\ & !\cu|control|BAout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|RegFIleL|gen_reg0|dff|c:23:dff32|dff0|q~q\,
	datad => \cu|control|BAout~0_combout\,
	combout => \dp|RegFIleL|gen_reg0|BFF_in\(23));

-- Location: FF_X22_Y8_N9
\dp|RegFIleL|gen_reg1|dffL|c:23:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:23:buf32|output~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|RegFIleL|strop\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg1|dffL|c:23:dff32|dff0|q~q\);

-- Location: LCCOMB_X22_Y8_N8
\dp|ALUL|regC|BF1|c:23:buf32|output~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:23:buf32|output~2_combout\ = ((\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & ((\dp|RegFIleL|gen_reg1|dffL|c:23:dff32|dff0|q~q\))) # (!\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & (\dp|RegFIleL|gen_reg0|BFF_in\(23)))) # 
-- (!\dp|RegFIleL|r_out_OR_ba_out~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RegFIleL|r_out_OR_ba_out~5_combout\,
	datab => \dp|RegFIleL|gen_reg0|BFF_in\(23),
	datac => \dp|RegFIleL|gen_reg1|dffL|c:23:dff32|dff0|q~q\,
	datad => \dp|RegFIleL|reg|input_decoder[0]~4_combout\,
	combout => \dp|ALUL|regC|BF1|c:23:buf32|output~2_combout\);

-- Location: LCCOMB_X20_Y8_N16
\dp|ALUL|add|b_sig[23]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|b_sig\(23) = \dp|ALUL|add|b_inv~combout\ $ (((\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\) # ((\dp|ALUL|regC|BF1|c:23:buf32|output~1_combout\ & \dp|ALUL|regC|BF1|c:23:buf32|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	datab => \dp|ALUL|regC|BF1|c:23:buf32|output~1_combout\,
	datac => \dp|ALUL|add|b_inv~combout\,
	datad => \dp|ALUL|regC|BF1|c:23:buf32|output~2_combout\,
	combout => \dp|ALUL|add|b_sig\(23));

-- Location: LCCOMB_X22_Y11_N2
\dp|ALUL|regC|DFF1|c:23:dff32|d_input~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:23:dff32|d_input~16_combout\ = (\dp|ALUL|add|add_E~9_combout\ & (\dp|ALUL|add|b_sig\(23) $ (\dp|ALUL|add|a_sig\(23) $ (\dp|ALUL|add|add_32|Y:22:full32|c_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|b_sig\(23),
	datab => \dp|ALUL|add|a_sig\(23),
	datac => \dp|ALUL|add|add_E~9_combout\,
	datad => \dp|ALUL|add|add_32|Y:22:full32|c_out~0_combout\,
	combout => \dp|ALUL|regC|DFF1|c:23:dff32|d_input~16_combout\);

-- Location: LCCOMB_X22_Y11_N0
\dp|ALUL|regC|DFF1|c:23:dff32|d_input~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:23:dff32|d_input~19_combout\ = (\dp|ALUL|regC|DFF1|c:23:dff32|d_input~17_combout\) # ((\dp|ALUL|regC|DFF1|c:23:dff32|d_input~15_combout\) # ((\dp|ALUL|regC|DFF1|c:23:dff32|d_input~18_combout\) # 
-- (\dp|ALUL|regC|DFF1|c:23:dff32|d_input~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:23:dff32|d_input~17_combout\,
	datab => \dp|ALUL|regC|DFF1|c:23:dff32|d_input~15_combout\,
	datac => \dp|ALUL|regC|DFF1|c:23:dff32|d_input~18_combout\,
	datad => \dp|ALUL|regC|DFF1|c:23:dff32|d_input~16_combout\,
	combout => \dp|ALUL|regC|DFF1|c:23:dff32|d_input~19_combout\);

-- Location: FF_X22_Y11_N1
\dp|ALUL|regC|DFF1|c:23:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|ALUL|regC|DFF1|c:23:dff32|d_input~19_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|Cin~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regC|DFF1|c:23:dff32|dff0|q~q\);

-- Location: LCCOMB_X20_Y8_N8
\dp|ALUL|regC|BF1|c:23:buf32|output~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:23:buf32|output~1_combout\ = (\dp|ALUL|regC|BF1|c:23:buf32|output~0_combout\ & (\dp|ALUL|regC|BF1|c:21:buf32|output~0_combout\ & ((\dp|ALUL|regC|DFF1|c:23:dff32|dff0|q~q\) # (!\cu|control|Cout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:23:buf32|output~0_combout\,
	datab => \dp|ALUL|regC|DFF1|c:23:dff32|dff0|q~q\,
	datac => \cu|control|Cout~combout\,
	datad => \dp|ALUL|regC|BF1|c:21:buf32|output~0_combout\,
	combout => \dp|ALUL|regC|BF1|c:23:buf32|output~1_combout\);

-- Location: LCCOMB_X20_Y8_N30
\dp|ALUL|regC|BF1|c:23:buf32|output~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:23:buf32|output~3_combout\ = (\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\) # ((\dp|ALUL|regC|BF1|c:23:buf32|output~1_combout\ & \dp|ALUL|regC|BF1|c:23:buf32|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	datab => \dp|ALUL|regC|BF1|c:23:buf32|output~1_combout\,
	datad => \dp|ALUL|regC|BF1|c:23:buf32|output~2_combout\,
	combout => \dp|ALUL|regC|BF1|c:23:buf32|output~3_combout\);

-- Location: LCCOMB_X19_Y8_N4
\dp|ALUL|regC|DFF1|c:22:dff32|d_input~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:22:dff32|d_input~17_combout\ = (\dp|ALUL|regC|BF1|c:23:buf32|output~3_combout\ & ((\dp|ALUL|r_s|Eout~0_combout\) # ((\dp|ALUL|regC|BF1|c:21:buf32|output~4_combout\ & \dp|ALUL|l_s|Eout~0_combout\)))) # 
-- (!\dp|ALUL|regC|BF1|c:23:buf32|output~3_combout\ & (\dp|ALUL|regC|BF1|c:21:buf32|output~4_combout\ & ((\dp|ALUL|l_s|Eout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:23:buf32|output~3_combout\,
	datab => \dp|ALUL|regC|BF1|c:21:buf32|output~4_combout\,
	datac => \dp|ALUL|r_s|Eout~0_combout\,
	datad => \dp|ALUL|l_s|Eout~0_combout\,
	combout => \dp|ALUL|regC|DFF1|c:22:dff32|d_input~17_combout\);

-- Location: FF_X22_Y8_N7
\dp|RegFIleL|gen_reg0|dff|c:22:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:22:buf32|output~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|RegFIleL|strop\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg0|dff|c:22:dff32|dff0|q~q\);

-- Location: LCCOMB_X22_Y8_N6
\dp|RegFIleL|gen_reg0|BFF_in[22]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|RegFIleL|gen_reg0|BFF_in\(22) = (\dp|RegFIleL|gen_reg0|dff|c:22:dff32|dff0|q~q\ & !\cu|control|BAout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|RegFIleL|gen_reg0|dff|c:22:dff32|dff0|q~q\,
	datad => \cu|control|BAout~0_combout\,
	combout => \dp|RegFIleL|gen_reg0|BFF_in\(22));

-- Location: FF_X22_Y8_N25
\dp|RegFIleL|gen_reg1|dffL|c:22:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:22:buf32|output~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|RegFIleL|strop\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg1|dffL|c:22:dff32|dff0|q~q\);

-- Location: LCCOMB_X22_Y8_N24
\dp|ALUL|regC|BF1|c:22:buf32|output~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:22:buf32|output~2_combout\ = ((\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & ((\dp|RegFIleL|gen_reg1|dffL|c:22:dff32|dff0|q~q\))) # (!\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & (\dp|RegFIleL|gen_reg0|BFF_in\(22)))) # 
-- (!\dp|RegFIleL|r_out_OR_ba_out~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RegFIleL|r_out_OR_ba_out~5_combout\,
	datab => \dp|RegFIleL|gen_reg0|BFF_in\(22),
	datac => \dp|RegFIleL|gen_reg1|dffL|c:22:dff32|dff0|q~q\,
	datad => \dp|RegFIleL|reg|input_decoder[0]~4_combout\,
	combout => \dp|ALUL|regC|BF1|c:22:buf32|output~2_combout\);

-- Location: LCCOMB_X19_Y8_N30
\dp|ALUL|add|b_sig[22]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|b_sig\(22) = \dp|ALUL|add|b_inv~combout\ $ (((\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\) # ((\dp|ALUL|regC|BF1|c:22:buf32|output~1_combout\ & \dp|ALUL|regC|BF1|c:22:buf32|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	datab => \dp|ALUL|regC|BF1|c:22:buf32|output~1_combout\,
	datac => \dp|ALUL|add|b_inv~combout\,
	datad => \dp|ALUL|regC|BF1|c:22:buf32|output~2_combout\,
	combout => \dp|ALUL|add|b_sig\(22));

-- Location: LCCOMB_X19_Y8_N28
\dp|ALUL|regC|DFF1|c:22:dff32|d_input~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:22:dff32|d_input~15_combout\ = (\dp|ALUL|add|add_E~9_combout\ & (\dp|ALUL|add|b_sig\(22) $ (\dp|ALUL|add|a_sig\(22) $ (\dp|ALUL|add|add_32|Y:21:full32|c_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|b_sig\(22),
	datab => \dp|ALUL|add|a_sig\(22),
	datac => \dp|ALUL|add|add_32|Y:21:full32|c_out~0_combout\,
	datad => \dp|ALUL|add|add_E~9_combout\,
	combout => \dp|ALUL|regC|DFF1|c:22:dff32|d_input~15_combout\);

-- Location: LCCOMB_X19_Y8_N6
\dp|ALUL|regC|DFF1|c:22:dff32|d_input~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:22:dff32|d_input~20_combout\ = (\dp|ALUL|regC|DFF1|c:22:dff32|d_input~16_combout\) # ((\dp|ALUL|regC|DFF1|c:22:dff32|d_input~19_combout\) # ((\dp|ALUL|regC|DFF1|c:22:dff32|d_input~17_combout\) # 
-- (\dp|ALUL|regC|DFF1|c:22:dff32|d_input~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:22:dff32|d_input~16_combout\,
	datab => \dp|ALUL|regC|DFF1|c:22:dff32|d_input~19_combout\,
	datac => \dp|ALUL|regC|DFF1|c:22:dff32|d_input~17_combout\,
	datad => \dp|ALUL|regC|DFF1|c:22:dff32|d_input~15_combout\,
	combout => \dp|ALUL|regC|DFF1|c:22:dff32|d_input~20_combout\);

-- Location: FF_X19_Y8_N7
\dp|ALUL|regC|DFF1|c:22:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|ALUL|regC|DFF1|c:22:dff32|d_input~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|Cin~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regC|DFF1|c:22:dff32|dff0|q~q\);

-- Location: FF_X18_Y7_N25
\dp|PCL|dff|c:22:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:22:buf32|output~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|control|PCin~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|PCL|dff|c:22:dff32|dff0|q~q\);

-- Location: IOIBUF_X22_Y0_N22
\md[22]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => md(22),
	o => \md[22]~input_o\);

-- Location: LCCOMB_X19_Y4_N2
\dp|MEML|or_G[22]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|MEML|or_G\(22) = (\md_read~input_o\ & ((\md[22]~input_o\) # ((\dp|ALUL|regC|BF1|c:22:buf32|output~3_combout\ & \cu|control|MDin~combout\)))) # (!\md_read~input_o\ & (\dp|ALUL|regC|BF1|c:22:buf32|output~3_combout\ & ((\cu|control|MDin~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \md_read~input_o\,
	datab => \dp|ALUL|regC|BF1|c:22:buf32|output~3_combout\,
	datac => \md[22]~input_o\,
	datad => \cu|control|MDin~combout\,
	combout => \dp|MEML|or_G\(22));

-- Location: FF_X19_Y4_N3
\dp|MEML|md_r|c:22:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|MEML|or_G\(22),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \dp|MEML|md_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|md_r|c:22:dff32|dff0|q~q\);

-- Location: LCCOMB_X18_Y7_N24
\dp|ALUL|regC|BF1|c:22:buf32|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:22:buf32|output~0_combout\ = (\cu|control|PCout~combout\ & (\dp|PCL|dff|c:22:dff32|dff0|q~q\ & ((\dp|MEML|md_r|c:22:dff32|dff0|q~q\) # (!\cu|control|MDout~0_combout\)))) # (!\cu|control|PCout~combout\ & 
-- (((\dp|MEML|md_r|c:22:dff32|dff0|q~q\)) # (!\cu|control|MDout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|PCout~combout\,
	datab => \cu|control|MDout~0_combout\,
	datac => \dp|PCL|dff|c:22:dff32|dff0|q~q\,
	datad => \dp|MEML|md_r|c:22:dff32|dff0|q~q\,
	combout => \dp|ALUL|regC|BF1|c:22:buf32|output~0_combout\);

-- Location: LCCOMB_X18_Y8_N6
\dp|ALUL|regC|BF1|c:22:buf32|output~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:22:buf32|output~1_combout\ = (\dp|ALUL|regC|BF1|c:22:buf32|output~0_combout\ & (\dp|ALUL|regC|BF1|c:21:buf32|output~0_combout\ & ((\dp|ALUL|regC|DFF1|c:22:dff32|dff0|q~q\) # (!\cu|control|Cout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:22:dff32|dff0|q~q\,
	datab => \cu|control|Cout~combout\,
	datac => \dp|ALUL|regC|BF1|c:22:buf32|output~0_combout\,
	datad => \dp|ALUL|regC|BF1|c:21:buf32|output~0_combout\,
	combout => \dp|ALUL|regC|BF1|c:22:buf32|output~1_combout\);

-- Location: LCCOMB_X19_Y8_N12
\dp|ALUL|regC|BF1|c:22:buf32|output~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:22:buf32|output~3_combout\ = (\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\) # ((\dp|ALUL|regC|BF1|c:22:buf32|output~1_combout\ & \dp|ALUL|regC|BF1|c:22:buf32|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	datac => \dp|ALUL|regC|BF1|c:22:buf32|output~1_combout\,
	datad => \dp|ALUL|regC|BF1|c:22:buf32|output~2_combout\,
	combout => \dp|ALUL|regC|BF1|c:22:buf32|output~3_combout\);

-- Location: LCCOMB_X19_Y8_N10
\dp|ALUL|regC|DFF1|c:21:dff32|d_input~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:21:dff32|d_input~17_combout\ = (\dp|ALUL|regC|BF1|c:20:buf32|output~4_combout\ & ((\dp|ALUL|l_s|Eout~0_combout\) # ((\dp|ALUL|r_s|Eout~0_combout\ & \dp|ALUL|regC|BF1|c:22:buf32|output~3_combout\)))) # 
-- (!\dp|ALUL|regC|BF1|c:20:buf32|output~4_combout\ & (((\dp|ALUL|r_s|Eout~0_combout\ & \dp|ALUL|regC|BF1|c:22:buf32|output~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:20:buf32|output~4_combout\,
	datab => \dp|ALUL|l_s|Eout~0_combout\,
	datac => \dp|ALUL|r_s|Eout~0_combout\,
	datad => \dp|ALUL|regC|BF1|c:22:buf32|output~3_combout\,
	combout => \dp|ALUL|regC|DFF1|c:21:dff32|d_input~17_combout\);

-- Location: FF_X22_Y8_N31
\dp|RegFIleL|gen_reg0|dff|c:21:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:21:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|RegFIleL|strop\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg0|dff|c:21:dff32|dff0|q~q\);

-- Location: LCCOMB_X22_Y8_N30
\dp|RegFIleL|gen_reg0|BFF_in[21]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|RegFIleL|gen_reg0|BFF_in\(21) = (\dp|RegFIleL|gen_reg0|dff|c:21:dff32|dff0|q~q\ & !\cu|control|BAout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|RegFIleL|gen_reg0|dff|c:21:dff32|dff0|q~q\,
	datad => \cu|control|BAout~0_combout\,
	combout => \dp|RegFIleL|gen_reg0|BFF_in\(21));

-- Location: FF_X22_Y8_N17
\dp|RegFIleL|gen_reg1|dffL|c:21:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:21:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|RegFIleL|strop\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg1|dffL|c:21:dff32|dff0|q~q\);

-- Location: LCCOMB_X22_Y8_N16
\dp|ALUL|regC|BF1|c:21:buf32|output~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:21:buf32|output~3_combout\ = ((\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & ((\dp|RegFIleL|gen_reg1|dffL|c:21:dff32|dff0|q~q\))) # (!\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & (\dp|RegFIleL|gen_reg0|BFF_in\(21)))) # 
-- (!\dp|RegFIleL|r_out_OR_ba_out~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RegFIleL|r_out_OR_ba_out~5_combout\,
	datab => \dp|RegFIleL|gen_reg0|BFF_in\(21),
	datac => \dp|RegFIleL|gen_reg1|dffL|c:21:dff32|dff0|q~q\,
	datad => \dp|RegFIleL|reg|input_decoder[0]~4_combout\,
	combout => \dp|ALUL|regC|BF1|c:21:buf32|output~3_combout\);

-- Location: LCCOMB_X19_Y8_N24
\dp|ALUL|add|b_sig[21]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|b_sig\(21) = \dp|ALUL|add|b_inv~combout\ $ (((\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\) # ((\dp|ALUL|regC|BF1|c:21:buf32|output~2_combout\ & \dp|ALUL|regC|BF1|c:21:buf32|output~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	datab => \dp|ALUL|add|b_inv~combout\,
	datac => \dp|ALUL|regC|BF1|c:21:buf32|output~2_combout\,
	datad => \dp|ALUL|regC|BF1|c:21:buf32|output~3_combout\,
	combout => \dp|ALUL|add|b_sig\(21));

-- Location: LCCOMB_X20_Y8_N18
\dp|ALUL|regC|DFF1|c:21:dff32|d_input~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:21:dff32|d_input~15_combout\ = (\dp|ALUL|add|add_E~9_combout\ & (\dp|ALUL|add|a_sig\(21) $ (\dp|ALUL|add|add_32|Y:20:full32|c_out~0_combout\ $ (\dp|ALUL|add|b_sig\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|add_E~9_combout\,
	datab => \dp|ALUL|add|a_sig\(21),
	datac => \dp|ALUL|add|add_32|Y:20:full32|c_out~0_combout\,
	datad => \dp|ALUL|add|b_sig\(21),
	combout => \dp|ALUL|regC|DFF1|c:21:dff32|d_input~15_combout\);

-- Location: LCCOMB_X20_Y8_N24
\dp|ALUL|regC|DFF1|c:21:dff32|d_input~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:21:dff32|d_input~20_combout\ = (\dp|ALUL|regC|DFF1|c:21:dff32|d_input~19_combout\) # ((\dp|ALUL|regC|DFF1|c:21:dff32|d_input~16_combout\) # ((\dp|ALUL|regC|DFF1|c:21:dff32|d_input~17_combout\) # 
-- (\dp|ALUL|regC|DFF1|c:21:dff32|d_input~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:21:dff32|d_input~19_combout\,
	datab => \dp|ALUL|regC|DFF1|c:21:dff32|d_input~16_combout\,
	datac => \dp|ALUL|regC|DFF1|c:21:dff32|d_input~17_combout\,
	datad => \dp|ALUL|regC|DFF1|c:21:dff32|d_input~15_combout\,
	combout => \dp|ALUL|regC|DFF1|c:21:dff32|d_input~20_combout\);

-- Location: FF_X20_Y8_N25
\dp|ALUL|regC|DFF1|c:21:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|ALUL|regC|DFF1|c:21:dff32|d_input~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|Cin~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regC|DFF1|c:21:dff32|dff0|q~q\);

-- Location: LCCOMB_X20_Y8_N14
\dp|ALUL|regC|BF1|c:21:buf32|output~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:21:buf32|output~2_combout\ = (\dp|ALUL|regC|BF1|c:21:buf32|output~1_combout\ & (\dp|ALUL|regC|BF1|c:21:buf32|output~0_combout\ & ((\dp|ALUL|regC|DFF1|c:21:dff32|dff0|q~q\) # (!\cu|control|Cout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:21:buf32|output~1_combout\,
	datab => \dp|ALUL|regC|DFF1|c:21:dff32|dff0|q~q\,
	datac => \cu|control|Cout~combout\,
	datad => \dp|ALUL|regC|BF1|c:21:buf32|output~0_combout\,
	combout => \dp|ALUL|regC|BF1|c:21:buf32|output~2_combout\);

-- Location: LCCOMB_X19_Y8_N8
\dp|ALUL|regC|BF1|c:21:buf32|output~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:21:buf32|output~4_combout\ = (\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\) # ((\dp|ALUL|regC|BF1|c:21:buf32|output~2_combout\ & \dp|ALUL|regC|BF1|c:21:buf32|output~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	datac => \dp|ALUL|regC|BF1|c:21:buf32|output~2_combout\,
	datad => \dp|ALUL|regC|BF1|c:21:buf32|output~3_combout\,
	combout => \dp|ALUL|regC|BF1|c:21:buf32|output~4_combout\);

-- Location: LCCOMB_X19_Y7_N28
\dp|ALUL|regC|DFF1|c:20:dff32|d_input~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:20:dff32|d_input~17_combout\ = (\dp|ALUL|r_s|Eout~0_combout\ & ((\dp|ALUL|regC|BF1|c:21:buf32|output~4_combout\) # ((\dp|ALUL|regC|BF1|c:19:buf32|output~4_combout\ & \dp|ALUL|l_s|Eout~0_combout\)))) # (!\dp|ALUL|r_s|Eout~0_combout\ & 
-- (\dp|ALUL|regC|BF1|c:19:buf32|output~4_combout\ & (\dp|ALUL|l_s|Eout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|r_s|Eout~0_combout\,
	datab => \dp|ALUL|regC|BF1|c:19:buf32|output~4_combout\,
	datac => \dp|ALUL|l_s|Eout~0_combout\,
	datad => \dp|ALUL|regC|BF1|c:21:buf32|output~4_combout\,
	combout => \dp|ALUL|regC|DFF1|c:20:dff32|d_input~17_combout\);

-- Location: LCCOMB_X19_Y7_N14
\dp|ALUL|regC|DFF1|c:20:dff32|d_input~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:20:dff32|d_input~3_combout\ = (!\cu|st|con|count_i\(1) & (!\cu|st|con|count_i\(0) & ((\dp|IRL|ir28|dff0|q~q\) # (\dp|ALUL|regA|A_R|c:20:dff32|dff0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|IRL|ir28|dff0|q~q\,
	datab => \cu|st|con|count_i\(1),
	datac => \dp|ALUL|regA|A_R|c:20:dff32|dff0|q~q\,
	datad => \cu|st|con|count_i\(0),
	combout => \dp|ALUL|regC|DFF1|c:20:dff32|d_input~3_combout\);

-- Location: LCCOMB_X19_Y7_N20
\dp|ALUL|regC|DFF1|c:20:dff32|d_input~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:20:dff32|d_input~20_combout\ = (\dp|IRL|ir31|dff0|q~q\ & (!\dp|IRL|ir30|dff0|q~q\ & (\dp|ALUL|regC|DFF1|c:20:dff32|d_input~3_combout\ & \cu|st|con|count_i\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|IRL|ir31|dff0|q~q\,
	datab => \dp|IRL|ir30|dff0|q~q\,
	datac => \dp|ALUL|regC|DFF1|c:20:dff32|d_input~3_combout\,
	datad => \cu|st|con|count_i\(2),
	combout => \dp|ALUL|regC|DFF1|c:20:dff32|d_input~20_combout\);

-- Location: LCCOMB_X19_Y7_N30
\dp|ALUL|regC|DFF1|c:20:dff32|d_input~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:20:dff32|d_input~18_combout\ = (\dp|ALUL|regC|BF1|c:20:buf32|output~4_combout\ & (((\dp|ALUL|regC|DFF1|c:20:dff32|d_input~20_combout\) # (\cu|control|CB~combout\)))) # (!\dp|ALUL|regC|BF1|c:20:buf32|output~4_combout\ & 
-- (\cu|control|NOTOP~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|NOTOP~combout\,
	datab => \dp|ALUL|regC|DFF1|c:20:dff32|d_input~20_combout\,
	datac => \dp|ALUL|regC|BF1|c:20:buf32|output~4_combout\,
	datad => \cu|control|CB~combout\,
	combout => \dp|ALUL|regC|DFF1|c:20:dff32|d_input~18_combout\);

-- Location: LCCOMB_X19_Y7_N6
\dp|ALUL|add|b_sig[20]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|b_sig\(20) = \dp|ALUL|add|b_inv~combout\ $ (((\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\) # ((\dp|ALUL|regC|BF1|c:20:buf32|output~3_combout\ & \dp|ALUL|regC|BF1|c:20:buf32|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	datab => \dp|ALUL|add|b_inv~combout\,
	datac => \dp|ALUL|regC|BF1|c:20:buf32|output~3_combout\,
	datad => \dp|ALUL|regC|BF1|c:20:buf32|output~2_combout\,
	combout => \dp|ALUL|add|b_sig\(20));

-- Location: LCCOMB_X19_Y7_N2
\dp|ALUL|regC|DFF1|c:20:dff32|d_input~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:20:dff32|d_input~16_combout\ = (\dp|ALUL|add|add_E~9_combout\ & (\dp|ALUL|add|b_sig\(20) $ (\dp|ALUL|add|a_sig\(20) $ (\dp|ALUL|add|add_32|Y:19:full32|c_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|b_sig\(20),
	datab => \dp|ALUL|add|a_sig\(20),
	datac => \dp|ALUL|add|add_E~9_combout\,
	datad => \dp|ALUL|add|add_32|Y:19:full32|c_out~0_combout\,
	combout => \dp|ALUL|regC|DFF1|c:20:dff32|d_input~16_combout\);

-- Location: LCCOMB_X19_Y7_N26
\dp|ALUL|regC|DFF1|c:20:dff32|d_input~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:20:dff32|d_input~19_combout\ = (\dp|ALUL|regC|DFF1|c:20:dff32|d_input~15_combout\) # ((\dp|ALUL|regC|DFF1|c:20:dff32|d_input~17_combout\) # ((\dp|ALUL|regC|DFF1|c:20:dff32|d_input~18_combout\) # 
-- (\dp|ALUL|regC|DFF1|c:20:dff32|d_input~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:20:dff32|d_input~15_combout\,
	datab => \dp|ALUL|regC|DFF1|c:20:dff32|d_input~17_combout\,
	datac => \dp|ALUL|regC|DFF1|c:20:dff32|d_input~18_combout\,
	datad => \dp|ALUL|regC|DFF1|c:20:dff32|d_input~16_combout\,
	combout => \dp|ALUL|regC|DFF1|c:20:dff32|d_input~19_combout\);

-- Location: FF_X19_Y7_N27
\dp|ALUL|regC|DFF1|c:20:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|ALUL|regC|DFF1|c:20:dff32|d_input~19_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|Cin~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regC|DFF1|c:20:dff32|dff0|q~q\);

-- Location: FF_X18_Y7_N9
\dp|IRL|ir20|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:20:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|st|dec|Mux0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|IRL|ir20|dff0|q~q\);

-- Location: IOIBUF_X19_Y0_N1
\md[20]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => md(20),
	o => \md[20]~input_o\);

-- Location: LCCOMB_X19_Y4_N22
\dp|MEML|or_G[20]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|MEML|or_G\(20) = (\md_read~input_o\ & ((\md[20]~input_o\) # ((\dp|ALUL|regC|BF1|c:20:buf32|output~4_combout\ & \cu|control|MDin~combout\)))) # (!\md_read~input_o\ & (\dp|ALUL|regC|BF1|c:20:buf32|output~4_combout\ & ((\cu|control|MDin~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \md_read~input_o\,
	datab => \dp|ALUL|regC|BF1|c:20:buf32|output~4_combout\,
	datac => \md[20]~input_o\,
	datad => \cu|control|MDin~combout\,
	combout => \dp|MEML|or_G\(20));

-- Location: FF_X19_Y4_N23
\dp|MEML|md_r|c:20:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|MEML|or_G\(20),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \dp|MEML|md_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|md_r|c:20:dff32|dff0|q~q\);

-- Location: LCCOMB_X18_Y7_N8
\dp|ALUL|regC|BF1|c:20:buf32|output~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:20:buf32|output~1_combout\ = (\cu|control|C1out~1_combout\ & (\dp|IRL|ir20|dff0|q~q\ & ((\dp|MEML|md_r|c:20:dff32|dff0|q~q\) # (!\cu|control|MDout~0_combout\)))) # (!\cu|control|C1out~1_combout\ & 
-- (((\dp|MEML|md_r|c:20:dff32|dff0|q~q\)) # (!\cu|control|MDout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|C1out~1_combout\,
	datab => \cu|control|MDout~0_combout\,
	datac => \dp|IRL|ir20|dff0|q~q\,
	datad => \dp|MEML|md_r|c:20:dff32|dff0|q~q\,
	combout => \dp|ALUL|regC|BF1|c:20:buf32|output~1_combout\);

-- Location: LCCOMB_X18_Y7_N14
\dp|ALUL|regC|BF1|c:20:buf32|output~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:20:buf32|output~2_combout\ = (\dp|ALUL|regC|BF1|c:20:buf32|output~0_combout\ & (\dp|ALUL|regC|BF1|c:20:buf32|output~1_combout\ & ((\dp|ALUL|regC|DFF1|c:20:dff32|dff0|q~q\) # (!\cu|control|Cout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:20:buf32|output~0_combout\,
	datab => \dp|ALUL|regC|DFF1|c:20:dff32|dff0|q~q\,
	datac => \dp|ALUL|regC|BF1|c:20:buf32|output~1_combout\,
	datad => \cu|control|Cout~combout\,
	combout => \dp|ALUL|regC|BF1|c:20:buf32|output~2_combout\);

-- Location: LCCOMB_X19_Y7_N16
\dp|ALUL|regC|BF1|c:20:buf32|output~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:20:buf32|output~4_combout\ = (\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\) # ((\dp|ALUL|regC|BF1|c:20:buf32|output~3_combout\ & \dp|ALUL|regC|BF1|c:20:buf32|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	datac => \dp|ALUL|regC|BF1|c:20:buf32|output~3_combout\,
	datad => \dp|ALUL|regC|BF1|c:20:buf32|output~2_combout\,
	combout => \dp|ALUL|regC|BF1|c:20:buf32|output~4_combout\);

-- Location: LCCOMB_X19_Y7_N10
\dp|ALUL|regC|DFF1|c:19:dff32|d_input~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:19:dff32|d_input~17_combout\ = (\dp|ALUL|r_s|Eout~0_combout\ & ((\dp|ALUL|regC|BF1|c:20:buf32|output~4_combout\) # ((\dp|ALUL|l_s|Eout~0_combout\ & \dp|ALUL|regC|BF1|c:18:buf32|output~4_combout\)))) # (!\dp|ALUL|r_s|Eout~0_combout\ & 
-- (((\dp|ALUL|l_s|Eout~0_combout\ & \dp|ALUL|regC|BF1|c:18:buf32|output~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|r_s|Eout~0_combout\,
	datab => \dp|ALUL|regC|BF1|c:20:buf32|output~4_combout\,
	datac => \dp|ALUL|l_s|Eout~0_combout\,
	datad => \dp|ALUL|regC|BF1|c:18:buf32|output~4_combout\,
	combout => \dp|ALUL|regC|DFF1|c:19:dff32|d_input~17_combout\);

-- Location: LCCOMB_X19_Y7_N0
\dp|ALUL|regC|DFF1|c:19:dff32|d_input~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:19:dff32|d_input~16_combout\ = (\cu|st|dec|Mux0~3_combout\ & (\cu|de|Mux7~0_combout\ & (\dp|ALUL|add|b_inv~combout\ $ (\dp|ALUL|regC|BF1|c:19:buf32|output~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|dec|Mux0~3_combout\,
	datab => \cu|de|Mux7~0_combout\,
	datac => \dp|ALUL|add|b_inv~combout\,
	datad => \dp|ALUL|regC|BF1|c:19:buf32|output~4_combout\,
	combout => \dp|ALUL|regC|DFF1|c:19:dff32|d_input~16_combout\);

-- Location: LCCOMB_X23_Y7_N2
\dp|ALUL|regC|DFF1|c:19:dff32|d_input~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:19:dff32|d_input~3_combout\ = (!\cu|st|con|count_i\(1) & (!\cu|st|con|count_i\(0) & ((\dp|IRL|ir28|dff0|q~q\) # (\dp|ALUL|regA|A_R|c:19:dff32|dff0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(1),
	datab => \dp|IRL|ir28|dff0|q~q\,
	datac => \cu|st|con|count_i\(0),
	datad => \dp|ALUL|regA|A_R|c:19:dff32|dff0|q~q\,
	combout => \dp|ALUL|regC|DFF1|c:19:dff32|d_input~3_combout\);

-- Location: LCCOMB_X23_Y7_N8
\dp|ALUL|regC|DFF1|c:19:dff32|d_input~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:19:dff32|d_input~21_combout\ = (\cu|st|con|count_i\(2) & (\dp|ALUL|regC|DFF1|c:19:dff32|d_input~3_combout\ & (\dp|IRL|ir31|dff0|q~q\ & !\dp|IRL|ir30|dff0|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(2),
	datab => \dp|ALUL|regC|DFF1|c:19:dff32|d_input~3_combout\,
	datac => \dp|IRL|ir31|dff0|q~q\,
	datad => \dp|IRL|ir30|dff0|q~q\,
	combout => \dp|ALUL|regC|DFF1|c:19:dff32|d_input~21_combout\);

-- Location: LCCOMB_X22_Y7_N28
\dp|ALUL|regC|DFF1|c:19:dff32|d_input~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:19:dff32|d_input~18_combout\ = (\dp|ALUL|regA|A_R|c:19:dff32|dff0|q~q\ & ((\dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\) # ((\cu|control|NEG~combout\ & \dp|ALUL|add|temp[19]~38_combout\)))) # 
-- (!\dp|ALUL|regA|A_R|c:19:dff32|dff0|q~q\ & (((\cu|control|NEG~combout\ & \dp|ALUL|add|temp[19]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regA|A_R|c:19:dff32|dff0|q~q\,
	datab => \dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\,
	datac => \cu|control|NEG~combout\,
	datad => \dp|ALUL|add|temp[19]~38_combout\,
	combout => \dp|ALUL|regC|DFF1|c:19:dff32|d_input~18_combout\);

-- Location: LCCOMB_X19_Y7_N8
\dp|ALUL|regC|DFF1|c:19:dff32|d_input~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:19:dff32|d_input~19_combout\ = (\dp|ALUL|regC|DFF1|c:19:dff32|d_input~18_combout\) # ((\dp|ALUL|regC|BF1|c:19:buf32|output~4_combout\ & ((\dp|ALUL|regC|DFF1|c:19:dff32|d_input~21_combout\) # (\cu|control|CB~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:19:dff32|d_input~21_combout\,
	datab => \dp|ALUL|regC|BF1|c:19:buf32|output~4_combout\,
	datac => \dp|ALUL|regC|DFF1|c:19:dff32|d_input~18_combout\,
	datad => \cu|control|CB~combout\,
	combout => \dp|ALUL|regC|DFF1|c:19:dff32|d_input~19_combout\);

-- Location: FF_X22_Y8_N27
\dp|RegFIleL|gen_reg0|dff|c:19:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:19:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|RegFIleL|strop\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg0|dff|c:19:dff32|dff0|q~q\);

-- Location: LCCOMB_X22_Y8_N26
\dp|RegFIleL|gen_reg0|BFF_in[19]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|RegFIleL|gen_reg0|BFF_in\(19) = (\dp|RegFIleL|gen_reg0|dff|c:19:dff32|dff0|q~q\ & !\cu|control|BAout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|RegFIleL|gen_reg0|dff|c:19:dff32|dff0|q~q\,
	datad => \cu|control|BAout~0_combout\,
	combout => \dp|RegFIleL|gen_reg0|BFF_in\(19));

-- Location: FF_X22_Y8_N13
\dp|RegFIleL|gen_reg1|dffL|c:19:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:19:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|RegFIleL|strop\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg1|dffL|c:19:dff32|dff0|q~q\);

-- Location: LCCOMB_X22_Y8_N12
\dp|ALUL|regC|BF1|c:19:buf32|output~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:19:buf32|output~3_combout\ = ((\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & ((\dp|RegFIleL|gen_reg1|dffL|c:19:dff32|dff0|q~q\))) # (!\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & (\dp|RegFIleL|gen_reg0|BFF_in\(19)))) # 
-- (!\dp|RegFIleL|r_out_OR_ba_out~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RegFIleL|r_out_OR_ba_out~5_combout\,
	datab => \dp|RegFIleL|gen_reg0|BFF_in\(19),
	datac => \dp|RegFIleL|gen_reg1|dffL|c:19:dff32|dff0|q~q\,
	datad => \dp|RegFIleL|reg|input_decoder[0]~4_combout\,
	combout => \dp|ALUL|regC|BF1|c:19:buf32|output~3_combout\);

-- Location: LCCOMB_X18_Y8_N20
\dp|ALUL|add|b_sig[19]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|b_sig\(19) = \dp|ALUL|add|b_inv~combout\ $ (((\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\) # ((\dp|ALUL|regC|BF1|c:19:buf32|output~2_combout\ & \dp|ALUL|regC|BF1|c:19:buf32|output~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|b_inv~combout\,
	datab => \dp|ALUL|regC|BF1|c:19:buf32|output~2_combout\,
	datac => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	datad => \dp|ALUL|regC|BF1|c:19:buf32|output~3_combout\,
	combout => \dp|ALUL|add|b_sig\(19));

-- Location: LCCOMB_X19_Y7_N18
\dp|ALUL|regC|DFF1|c:19:dff32|d_input~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:19:dff32|d_input~15_combout\ = (\dp|ALUL|add|add_E~9_combout\ & (\dp|ALUL|add|b_sig\(19) $ (\dp|ALUL|add|a_sig\(19) $ (\dp|ALUL|add|add_32|Y:18:full32|c_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|b_sig\(19),
	datab => \dp|ALUL|add|a_sig\(19),
	datac => \dp|ALUL|add|add_E~9_combout\,
	datad => \dp|ALUL|add|add_32|Y:18:full32|c_out~0_combout\,
	combout => \dp|ALUL|regC|DFF1|c:19:dff32|d_input~15_combout\);

-- Location: LCCOMB_X19_Y7_N4
\dp|ALUL|regC|DFF1|c:19:dff32|d_input~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:19:dff32|d_input~20_combout\ = (\dp|ALUL|regC|DFF1|c:19:dff32|d_input~17_combout\) # ((\dp|ALUL|regC|DFF1|c:19:dff32|d_input~16_combout\) # ((\dp|ALUL|regC|DFF1|c:19:dff32|d_input~19_combout\) # 
-- (\dp|ALUL|regC|DFF1|c:19:dff32|d_input~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:19:dff32|d_input~17_combout\,
	datab => \dp|ALUL|regC|DFF1|c:19:dff32|d_input~16_combout\,
	datac => \dp|ALUL|regC|DFF1|c:19:dff32|d_input~19_combout\,
	datad => \dp|ALUL|regC|DFF1|c:19:dff32|d_input~15_combout\,
	combout => \dp|ALUL|regC|DFF1|c:19:dff32|d_input~20_combout\);

-- Location: FF_X19_Y7_N5
\dp|ALUL|regC|DFF1|c:19:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|ALUL|regC|DFF1|c:19:dff32|d_input~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|Cin~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regC|DFF1|c:19:dff32|dff0|q~q\);

-- Location: FF_X18_Y7_N27
\dp|IRL|ir19|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:19:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|st|dec|Mux0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|IRL|ir19|dff0|q~q\);

-- Location: IOIBUF_X22_Y0_N1
\md[19]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => md(19),
	o => \md[19]~input_o\);

-- Location: LCCOMB_X19_Y4_N12
\dp|MEML|or_G[19]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|MEML|or_G\(19) = (\md_read~input_o\ & ((\md[19]~input_o\) # ((\dp|ALUL|regC|BF1|c:19:buf32|output~4_combout\ & \cu|control|MDin~combout\)))) # (!\md_read~input_o\ & (\dp|ALUL|regC|BF1|c:19:buf32|output~4_combout\ & ((\cu|control|MDin~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \md_read~input_o\,
	datab => \dp|ALUL|regC|BF1|c:19:buf32|output~4_combout\,
	datac => \md[19]~input_o\,
	datad => \cu|control|MDin~combout\,
	combout => \dp|MEML|or_G\(19));

-- Location: FF_X19_Y4_N13
\dp|MEML|md_r|c:19:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|MEML|or_G\(19),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \dp|MEML|md_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|md_r|c:19:dff32|dff0|q~q\);

-- Location: LCCOMB_X18_Y7_N26
\dp|ALUL|regC|BF1|c:19:buf32|output~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:19:buf32|output~1_combout\ = (\cu|control|C1out~1_combout\ & (\dp|IRL|ir19|dff0|q~q\ & ((\dp|MEML|md_r|c:19:dff32|dff0|q~q\) # (!\cu|control|MDout~0_combout\)))) # (!\cu|control|C1out~1_combout\ & 
-- (((\dp|MEML|md_r|c:19:dff32|dff0|q~q\)) # (!\cu|control|MDout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|C1out~1_combout\,
	datab => \cu|control|MDout~0_combout\,
	datac => \dp|IRL|ir19|dff0|q~q\,
	datad => \dp|MEML|md_r|c:19:dff32|dff0|q~q\,
	combout => \dp|ALUL|regC|BF1|c:19:buf32|output~1_combout\);

-- Location: FF_X18_Y7_N21
\dp|PCL|dff|c:19:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:19:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|control|PCin~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|PCL|dff|c:19:dff32|dff0|q~q\);

-- Location: LCCOMB_X18_Y7_N20
\dp|ALUL|regC|BF1|c:19:buf32|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:19:buf32|output~0_combout\ = (\dp|IRL|buff_c2_17|output~0_combout\ & ((\dp|PCL|dff|c:19:dff32|dff0|q~q\) # (!\cu|control|PCout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cu|control|PCout~combout\,
	datac => \dp|PCL|dff|c:19:dff32|dff0|q~q\,
	datad => \dp|IRL|buff_c2_17|output~0_combout\,
	combout => \dp|ALUL|regC|BF1|c:19:buf32|output~0_combout\);

-- Location: LCCOMB_X18_Y7_N28
\dp|ALUL|regC|BF1|c:19:buf32|output~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:19:buf32|output~2_combout\ = (\dp|ALUL|regC|BF1|c:19:buf32|output~1_combout\ & (\dp|ALUL|regC|BF1|c:19:buf32|output~0_combout\ & ((\dp|ALUL|regC|DFF1|c:19:dff32|dff0|q~q\) # (!\cu|control|Cout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:19:dff32|dff0|q~q\,
	datab => \cu|control|Cout~combout\,
	datac => \dp|ALUL|regC|BF1|c:19:buf32|output~1_combout\,
	datad => \dp|ALUL|regC|BF1|c:19:buf32|output~0_combout\,
	combout => \dp|ALUL|regC|BF1|c:19:buf32|output~2_combout\);

-- Location: LCCOMB_X18_Y8_N0
\dp|ALUL|regC|BF1|c:19:buf32|output~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:19:buf32|output~4_combout\ = (\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\) # ((\dp|ALUL|regC|BF1|c:19:buf32|output~2_combout\ & \dp|ALUL|regC|BF1|c:19:buf32|output~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	datac => \dp|ALUL|regC|BF1|c:19:buf32|output~2_combout\,
	datad => \dp|ALUL|regC|BF1|c:19:buf32|output~3_combout\,
	combout => \dp|ALUL|regC|BF1|c:19:buf32|output~4_combout\);

-- Location: LCCOMB_X19_Y9_N10
\dp|ALUL|regC|DFF1|c:18:dff32|d_input~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:18:dff32|d_input~16_combout\ = (\dp|ALUL|regC|BF1|c:19:buf32|output~4_combout\ & ((\dp|ALUL|r_s|Eout~0_combout\) # ((\dp|ALUL|l_s|Eout~0_combout\ & \dp|ALUL|regC|BF1|c:17:buf32|output~4_combout\)))) # 
-- (!\dp|ALUL|regC|BF1|c:19:buf32|output~4_combout\ & (\dp|ALUL|l_s|Eout~0_combout\ & (\dp|ALUL|regC|BF1|c:17:buf32|output~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:19:buf32|output~4_combout\,
	datab => \dp|ALUL|l_s|Eout~0_combout\,
	datac => \dp|ALUL|regC|BF1|c:17:buf32|output~4_combout\,
	datad => \dp|ALUL|r_s|Eout~0_combout\,
	combout => \dp|ALUL|regC|DFF1|c:18:dff32|d_input~16_combout\);

-- Location: LCCOMB_X19_Y9_N2
\dp|ALUL|regC|DFF1|c:18:dff32|d_input~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:18:dff32|d_input~3_combout\ = (!\cu|st|con|count_i\(1) & (!\cu|st|con|count_i\(0) & ((\dp|ALUL|regA|A_R|c:18:dff32|dff0|q~q\) # (\dp|IRL|ir28|dff0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regA|A_R|c:18:dff32|dff0|q~q\,
	datab => \cu|st|con|count_i\(1),
	datac => \cu|st|con|count_i\(0),
	datad => \dp|IRL|ir28|dff0|q~q\,
	combout => \dp|ALUL|regC|DFF1|c:18:dff32|d_input~3_combout\);

-- Location: LCCOMB_X19_Y9_N16
\dp|ALUL|regC|DFF1|c:18:dff32|d_input~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:18:dff32|d_input~21_combout\ = (!\dp|IRL|ir30|dff0|q~q\ & (\dp|ALUL|regC|DFF1|c:18:dff32|d_input~3_combout\ & (\dp|IRL|ir31|dff0|q~q\ & \cu|st|con|count_i\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|IRL|ir30|dff0|q~q\,
	datab => \dp|ALUL|regC|DFF1|c:18:dff32|d_input~3_combout\,
	datac => \dp|IRL|ir31|dff0|q~q\,
	datad => \cu|st|con|count_i\(2),
	combout => \dp|ALUL|regC|DFF1|c:18:dff32|d_input~21_combout\);

-- Location: LCCOMB_X19_Y9_N22
\dp|ALUL|regC|DFF1|c:18:dff32|d_input~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:18:dff32|d_input~18_combout\ = (\dp|ALUL|regC|DFF1|c:18:dff32|d_input~21_combout\) # ((\cu|st|dec|Mux0~4_combout\ & !\cu|control|CB~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|dec|Mux0~4_combout\,
	datab => \cu|control|CB~2_combout\,
	datad => \dp|ALUL|regC|DFF1|c:18:dff32|d_input~21_combout\,
	combout => \dp|ALUL|regC|DFF1|c:18:dff32|d_input~18_combout\);

-- Location: LCCOMB_X19_Y9_N0
\dp|ALUL|regC|DFF1|c:18:dff32|d_input~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:18:dff32|d_input~17_combout\ = (\dp|ALUL|regA|A_R|c:18:dff32|dff0|q~q\ & ((\dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\) # ((\dp|ALUL|add|temp[18]~36_combout\ & \cu|control|NEG~combout\)))) # 
-- (!\dp|ALUL|regA|A_R|c:18:dff32|dff0|q~q\ & (((\dp|ALUL|add|temp[18]~36_combout\ & \cu|control|NEG~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regA|A_R|c:18:dff32|dff0|q~q\,
	datab => \dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\,
	datac => \dp|ALUL|add|temp[18]~36_combout\,
	datad => \cu|control|NEG~combout\,
	combout => \dp|ALUL|regC|DFF1|c:18:dff32|d_input~17_combout\);

-- Location: LCCOMB_X19_Y9_N4
\dp|ALUL|regC|DFF1|c:18:dff32|d_input~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:18:dff32|d_input~19_combout\ = (\dp|ALUL|regC|DFF1|c:18:dff32|d_input~16_combout\) # ((\dp|ALUL|regC|DFF1|c:18:dff32|d_input~17_combout\) # ((\dp|ALUL|regC|BF1|c:18:buf32|output~4_combout\ & 
-- \dp|ALUL|regC|DFF1|c:18:dff32|d_input~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:18:dff32|d_input~16_combout\,
	datab => \dp|ALUL|regC|BF1|c:18:buf32|output~4_combout\,
	datac => \dp|ALUL|regC|DFF1|c:18:dff32|d_input~18_combout\,
	datad => \dp|ALUL|regC|DFF1|c:18:dff32|d_input~17_combout\,
	combout => \dp|ALUL|regC|DFF1|c:18:dff32|d_input~19_combout\);

-- Location: LCCOMB_X19_Y9_N24
\dp|ALUL|regC|DFF1|c:18:dff32|d_input~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:18:dff32|d_input~15_combout\ = (\dp|ALUL|add|add_E~9_combout\ & (\dp|ALUL|add|b_sig\(18) $ (\dp|ALUL|add|a_sig\(18) $ (\dp|ALUL|add|add_32|Y:17:full32|c_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|b_sig\(18),
	datab => \dp|ALUL|add|add_E~9_combout\,
	datac => \dp|ALUL|add|a_sig\(18),
	datad => \dp|ALUL|add|add_32|Y:17:full32|c_out~0_combout\,
	combout => \dp|ALUL|regC|DFF1|c:18:dff32|d_input~15_combout\);

-- Location: LCCOMB_X19_Y9_N20
\dp|ALUL|regC|DFF1|c:18:dff32|d_input~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:18:dff32|d_input~20_combout\ = (\dp|ALUL|regC|DFF1|c:18:dff32|d_input~19_combout\) # ((\dp|ALUL|regC|DFF1|c:18:dff32|d_input~15_combout\) # ((\dp|ALUL|add|b_sig\(18) & \cu|control|NOTOP~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|b_sig\(18),
	datab => \dp|ALUL|regC|DFF1|c:18:dff32|d_input~19_combout\,
	datac => \cu|control|NOTOP~combout\,
	datad => \dp|ALUL|regC|DFF1|c:18:dff32|d_input~15_combout\,
	combout => \dp|ALUL|regC|DFF1|c:18:dff32|d_input~20_combout\);

-- Location: FF_X19_Y9_N21
\dp|ALUL|regC|DFF1|c:18:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|ALUL|regC|DFF1|c:18:dff32|d_input~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|Cin~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regC|DFF1|c:18:dff32|dff0|q~q\);

-- Location: FF_X18_Y7_N31
\dp|IRL|ir18|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:18:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|st|dec|Mux0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|IRL|ir18|dff0|q~q\);

-- Location: IOIBUF_X17_Y0_N15
\md[18]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => md(18),
	o => \md[18]~input_o\);

-- Location: LCCOMB_X19_Y4_N14
\dp|MEML|or_G[18]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|MEML|or_G\(18) = (\md[18]~input_o\ & ((\md_read~input_o\) # ((\cu|control|MDin~combout\ & \dp|ALUL|regC|BF1|c:18:buf32|output~4_combout\)))) # (!\md[18]~input_o\ & (\cu|control|MDin~combout\ & (\dp|ALUL|regC|BF1|c:18:buf32|output~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \md[18]~input_o\,
	datab => \cu|control|MDin~combout\,
	datac => \dp|ALUL|regC|BF1|c:18:buf32|output~4_combout\,
	datad => \md_read~input_o\,
	combout => \dp|MEML|or_G\(18));

-- Location: FF_X19_Y4_N15
\dp|MEML|md_r|c:18:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|MEML|or_G\(18),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \dp|MEML|md_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|md_r|c:18:dff32|dff0|q~q\);

-- Location: LCCOMB_X18_Y7_N30
\dp|ALUL|regC|BF1|c:18:buf32|output~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:18:buf32|output~1_combout\ = (\cu|control|C1out~1_combout\ & (\dp|IRL|ir18|dff0|q~q\ & ((\dp|MEML|md_r|c:18:dff32|dff0|q~q\) # (!\cu|control|MDout~0_combout\)))) # (!\cu|control|C1out~1_combout\ & 
-- (((\dp|MEML|md_r|c:18:dff32|dff0|q~q\)) # (!\cu|control|MDout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|C1out~1_combout\,
	datab => \cu|control|MDout~0_combout\,
	datac => \dp|IRL|ir18|dff0|q~q\,
	datad => \dp|MEML|md_r|c:18:dff32|dff0|q~q\,
	combout => \dp|ALUL|regC|BF1|c:18:buf32|output~1_combout\);

-- Location: FF_X18_Y7_N13
\dp|PCL|dff|c:18:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:18:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|control|PCin~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|PCL|dff|c:18:dff32|dff0|q~q\);

-- Location: LCCOMB_X18_Y7_N12
\dp|ALUL|regC|BF1|c:18:buf32|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:18:buf32|output~0_combout\ = (\dp|IRL|buff_c2_17|output~0_combout\ & ((\dp|PCL|dff|c:18:dff32|dff0|q~q\) # (!\cu|control|PCout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cu|control|PCout~combout\,
	datac => \dp|PCL|dff|c:18:dff32|dff0|q~q\,
	datad => \dp|IRL|buff_c2_17|output~0_combout\,
	combout => \dp|ALUL|regC|BF1|c:18:buf32|output~0_combout\);

-- Location: LCCOMB_X19_Y9_N26
\dp|ALUL|regC|BF1|c:18:buf32|output~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:18:buf32|output~2_combout\ = (\dp|ALUL|regC|BF1|c:18:buf32|output~1_combout\ & (\dp|ALUL|regC|BF1|c:18:buf32|output~0_combout\ & ((\dp|ALUL|regC|DFF1|c:18:dff32|dff0|q~q\) # (!\cu|control|Cout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|Cout~combout\,
	datab => \dp|ALUL|regC|DFF1|c:18:dff32|dff0|q~q\,
	datac => \dp|ALUL|regC|BF1|c:18:buf32|output~1_combout\,
	datad => \dp|ALUL|regC|BF1|c:18:buf32|output~0_combout\,
	combout => \dp|ALUL|regC|BF1|c:18:buf32|output~2_combout\);

-- Location: LCCOMB_X19_Y9_N28
\dp|ALUL|regC|BF1|c:18:buf32|output~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:18:buf32|output~4_combout\ = (\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\) # ((\dp|ALUL|regC|BF1|c:18:buf32|output~2_combout\ & \dp|ALUL|regC|BF1|c:18:buf32|output~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	datac => \dp|ALUL|regC|BF1|c:18:buf32|output~2_combout\,
	datad => \dp|ALUL|regC|BF1|c:18:buf32|output~3_combout\,
	combout => \dp|ALUL|regC|BF1|c:18:buf32|output~4_combout\);

-- Location: LCCOMB_X19_Y9_N8
\dp|ALUL|regC|DFF1|c:17:dff32|d_input~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:17:dff32|d_input~17_combout\ = (\dp|ALUL|r_s|Eout~0_combout\ & ((\dp|ALUL|regC|BF1|c:18:buf32|output~4_combout\) # ((\dp|ALUL|l_s|Eout~0_combout\ & \dp|ALUL|regC|BF1|c:16:buf32|output~4_combout\)))) # (!\dp|ALUL|r_s|Eout~0_combout\ & 
-- (\dp|ALUL|l_s|Eout~0_combout\ & (\dp|ALUL|regC|BF1|c:16:buf32|output~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|r_s|Eout~0_combout\,
	datab => \dp|ALUL|l_s|Eout~0_combout\,
	datac => \dp|ALUL|regC|BF1|c:16:buf32|output~4_combout\,
	datad => \dp|ALUL|regC|BF1|c:18:buf32|output~4_combout\,
	combout => \dp|ALUL|regC|DFF1|c:17:dff32|d_input~17_combout\);

-- Location: FF_X22_Y8_N5
\dp|RegFIleL|gen_reg1|dffL|c:17:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:17:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|RegFIleL|strop\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg1|dffL|c:17:dff32|dff0|q~q\);

-- Location: FF_X22_Y8_N19
\dp|RegFIleL|gen_reg0|dff|c:17:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:17:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|RegFIleL|strop\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg0|dff|c:17:dff32|dff0|q~q\);

-- Location: LCCOMB_X22_Y8_N18
\dp|RegFIleL|gen_reg0|BFF_in[17]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|RegFIleL|gen_reg0|BFF_in\(17) = (\dp|RegFIleL|gen_reg0|dff|c:17:dff32|dff0|q~q\ & !\cu|control|BAout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|RegFIleL|gen_reg0|dff|c:17:dff32|dff0|q~q\,
	datad => \cu|control|BAout~0_combout\,
	combout => \dp|RegFIleL|gen_reg0|BFF_in\(17));

-- Location: LCCOMB_X22_Y8_N4
\dp|ALUL|regC|BF1|c:17:buf32|output~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:17:buf32|output~3_combout\ = ((\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & (\dp|RegFIleL|gen_reg1|dffL|c:17:dff32|dff0|q~q\)) # (!\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & ((\dp|RegFIleL|gen_reg0|BFF_in\(17))))) # 
-- (!\dp|RegFIleL|r_out_OR_ba_out~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RegFIleL|r_out_OR_ba_out~5_combout\,
	datab => \dp|RegFIleL|reg|input_decoder[0]~4_combout\,
	datac => \dp|RegFIleL|gen_reg1|dffL|c:17:dff32|dff0|q~q\,
	datad => \dp|RegFIleL|gen_reg0|BFF_in\(17),
	combout => \dp|ALUL|regC|BF1|c:17:buf32|output~3_combout\);

-- Location: LCCOMB_X18_Y9_N14
\dp|ALUL|add|b_sig[17]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|b_sig\(17) = \dp|ALUL|add|b_inv~combout\ $ (((\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\) # ((\dp|ALUL|regC|BF1|c:17:buf32|output~3_combout\ & \dp|ALUL|regC|BF1|c:17:buf32|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	datab => \dp|ALUL|regC|BF1|c:17:buf32|output~3_combout\,
	datac => \dp|ALUL|add|b_inv~combout\,
	datad => \dp|ALUL|regC|BF1|c:17:buf32|output~2_combout\,
	combout => \dp|ALUL|add|b_sig\(17));

-- Location: LCCOMB_X18_Y9_N18
\dp|ALUL|regC|DFF1|c:17:dff32|d_input~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:17:dff32|d_input~15_combout\ = (\dp|ALUL|add|add_E~9_combout\ & (\dp|ALUL|add|a_sig\(17) $ (\dp|ALUL|add|b_sig\(17) $ (\dp|ALUL|add|add_32|Y:16:full32|c_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|add_E~9_combout\,
	datab => \dp|ALUL|add|a_sig\(17),
	datac => \dp|ALUL|add|b_sig\(17),
	datad => \dp|ALUL|add|add_32|Y:16:full32|c_out~0_combout\,
	combout => \dp|ALUL|regC|DFF1|c:17:dff32|d_input~15_combout\);

-- Location: LCCOMB_X18_Y9_N20
\dp|ALUL|regC|DFF1|c:17:dff32|d_input~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:17:dff32|d_input~20_combout\ = (\dp|ALUL|regC|DFF1|c:17:dff32|d_input~16_combout\) # ((\dp|ALUL|regC|DFF1|c:17:dff32|d_input~19_combout\) # ((\dp|ALUL|regC|DFF1|c:17:dff32|d_input~17_combout\) # 
-- (\dp|ALUL|regC|DFF1|c:17:dff32|d_input~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:17:dff32|d_input~16_combout\,
	datab => \dp|ALUL|regC|DFF1|c:17:dff32|d_input~19_combout\,
	datac => \dp|ALUL|regC|DFF1|c:17:dff32|d_input~17_combout\,
	datad => \dp|ALUL|regC|DFF1|c:17:dff32|d_input~15_combout\,
	combout => \dp|ALUL|regC|DFF1|c:17:dff32|d_input~20_combout\);

-- Location: FF_X18_Y9_N21
\dp|ALUL|regC|DFF1|c:17:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|ALUL|regC|DFF1|c:17:dff32|d_input~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|Cin~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regC|DFF1|c:17:dff32|dff0|q~q\);

-- Location: LCCOMB_X18_Y9_N10
\dp|ALUL|regC|BF1|c:17:buf32|output~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:17:buf32|output~2_combout\ = (\dp|ALUL|regC|BF1|c:17:buf32|output~1_combout\ & ((\dp|ALUL|regC|DFF1|c:17:dff32|dff0|q~q\) # (!\cu|control|Cout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:17:buf32|output~1_combout\,
	datab => \dp|ALUL|regC|DFF1|c:17:dff32|dff0|q~q\,
	datad => \cu|control|Cout~combout\,
	combout => \dp|ALUL|regC|BF1|c:17:buf32|output~2_combout\);

-- Location: LCCOMB_X18_Y9_N16
\dp|ALUL|regC|BF1|c:17:buf32|output~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:17:buf32|output~4_combout\ = (\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\) # ((\dp|ALUL|regC|BF1|c:17:buf32|output~2_combout\ & \dp|ALUL|regC|BF1|c:17:buf32|output~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:17:buf32|output~2_combout\,
	datac => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	datad => \dp|ALUL|regC|BF1|c:17:buf32|output~3_combout\,
	combout => \dp|ALUL|regC|BF1|c:17:buf32|output~4_combout\);

-- Location: LCCOMB_X18_Y8_N30
\dp|ALUL|regC|DFF1|c:16:dff32|d_input~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:16:dff32|d_input~17_combout\ = (\dp|ALUL|l_s|Eout~0_combout\ & ((\dp|ALUL|regC|BF1|c:15:buf32|output~4_combout\) # ((\dp|ALUL|regC|BF1|c:17:buf32|output~4_combout\ & \dp|ALUL|r_s|Eout~0_combout\)))) # (!\dp|ALUL|l_s|Eout~0_combout\ & 
-- (\dp|ALUL|regC|BF1|c:17:buf32|output~4_combout\ & (\dp|ALUL|r_s|Eout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|l_s|Eout~0_combout\,
	datab => \dp|ALUL|regC|BF1|c:17:buf32|output~4_combout\,
	datac => \dp|ALUL|r_s|Eout~0_combout\,
	datad => \dp|ALUL|regC|BF1|c:15:buf32|output~4_combout\,
	combout => \dp|ALUL|regC|DFF1|c:16:dff32|d_input~17_combout\);

-- Location: LCCOMB_X18_Y8_N16
\dp|ALUL|regC|DFF1|c:16:dff32|d_input~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:16:dff32|d_input~16_combout\ = (\cu|control|NOTOP~combout\ & (\dp|ALUL|add|b_inv~combout\ $ (((\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\) # (\dp|ALUL|regC|BF1|c:16:buf32|output~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|b_inv~combout\,
	datab => \cu|control|NOTOP~combout\,
	datac => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	datad => \dp|ALUL|regC|BF1|c:16:buf32|output~3_combout\,
	combout => \dp|ALUL|regC|DFF1|c:16:dff32|d_input~16_combout\);

-- Location: LCCOMB_X18_Y9_N30
\dp|ALUL|regC|DFF1|c:16:dff32|d_input~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:16:dff32|d_input~3_combout\ = (!\cu|st|con|count_i\(1) & (!\cu|st|con|count_i\(0) & ((\dp|IRL|ir28|dff0|q~q\) # (\dp|ALUL|regA|A_R|c:16:dff32|dff0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(1),
	datab => \dp|IRL|ir28|dff0|q~q\,
	datac => \cu|st|con|count_i\(0),
	datad => \dp|ALUL|regA|A_R|c:16:dff32|dff0|q~q\,
	combout => \dp|ALUL|regC|DFF1|c:16:dff32|d_input~3_combout\);

-- Location: LCCOMB_X18_Y9_N12
\dp|ALUL|regC|DFF1|c:16:dff32|d_input~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:16:dff32|d_input~21_combout\ = (\dp|ALUL|regC|DFF1|c:16:dff32|d_input~3_combout\ & (\cu|st|con|count_i\(2) & (!\dp|IRL|ir30|dff0|q~q\ & \dp|IRL|ir31|dff0|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:16:dff32|d_input~3_combout\,
	datab => \cu|st|con|count_i\(2),
	datac => \dp|IRL|ir30|dff0|q~q\,
	datad => \dp|IRL|ir31|dff0|q~q\,
	combout => \dp|ALUL|regC|DFF1|c:16:dff32|d_input~21_combout\);

-- Location: LCCOMB_X18_Y9_N2
\dp|ALUL|regC|DFF1|c:16:dff32|d_input~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:16:dff32|d_input~18_combout\ = (\dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\ & ((\dp|ALUL|regA|A_R|c:16:dff32|dff0|q~q\) # ((\cu|control|NEG~combout\ & \dp|ALUL|add|temp[16]~32_combout\)))) # 
-- (!\dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\ & (\cu|control|NEG~combout\ & (\dp|ALUL|add|temp[16]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\,
	datab => \cu|control|NEG~combout\,
	datac => \dp|ALUL|add|temp[16]~32_combout\,
	datad => \dp|ALUL|regA|A_R|c:16:dff32|dff0|q~q\,
	combout => \dp|ALUL|regC|DFF1|c:16:dff32|d_input~18_combout\);

-- Location: LCCOMB_X18_Y9_N28
\dp|ALUL|regC|DFF1|c:16:dff32|d_input~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:16:dff32|d_input~19_combout\ = (\dp|ALUL|regC|DFF1|c:16:dff32|d_input~18_combout\) # ((\dp|ALUL|regC|BF1|c:16:buf32|output~4_combout\ & ((\dp|ALUL|regC|DFF1|c:16:dff32|d_input~21_combout\) # (\cu|control|CB~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:16:dff32|d_input~21_combout\,
	datab => \cu|control|CB~combout\,
	datac => \dp|ALUL|regC|BF1|c:16:buf32|output~4_combout\,
	datad => \dp|ALUL|regC|DFF1|c:16:dff32|d_input~18_combout\,
	combout => \dp|ALUL|regC|DFF1|c:16:dff32|d_input~19_combout\);

-- Location: LCCOMB_X18_Y8_N2
\dp|ALUL|add|b_sig[16]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|b_sig\(16) = \dp|ALUL|add|b_inv~combout\ $ (((\dp|ALUL|regC|BF1|c:16:buf32|output~3_combout\) # (\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|b_inv~combout\,
	datab => \dp|ALUL|regC|BF1|c:16:buf32|output~3_combout\,
	datac => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	combout => \dp|ALUL|add|b_sig\(16));

-- Location: LCCOMB_X18_Y8_N10
\dp|ALUL|regC|DFF1|c:16:dff32|d_input~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:16:dff32|d_input~15_combout\ = (\dp|ALUL|add|add_E~9_combout\ & (\dp|ALUL|add|a_sig\(16) $ (\dp|ALUL|add|b_sig\(16) $ (\dp|ALUL|add|add_32|Y:15:full32|c_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|a_sig\(16),
	datab => \dp|ALUL|add|b_sig\(16),
	datac => \dp|ALUL|add|add_E~9_combout\,
	datad => \dp|ALUL|add|add_32|Y:15:full32|c_out~0_combout\,
	combout => \dp|ALUL|regC|DFF1|c:16:dff32|d_input~15_combout\);

-- Location: LCCOMB_X18_Y8_N4
\dp|ALUL|regC|DFF1|c:16:dff32|d_input~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:16:dff32|d_input~20_combout\ = (\dp|ALUL|regC|DFF1|c:16:dff32|d_input~17_combout\) # ((\dp|ALUL|regC|DFF1|c:16:dff32|d_input~16_combout\) # ((\dp|ALUL|regC|DFF1|c:16:dff32|d_input~19_combout\) # 
-- (\dp|ALUL|regC|DFF1|c:16:dff32|d_input~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:16:dff32|d_input~17_combout\,
	datab => \dp|ALUL|regC|DFF1|c:16:dff32|d_input~16_combout\,
	datac => \dp|ALUL|regC|DFF1|c:16:dff32|d_input~19_combout\,
	datad => \dp|ALUL|regC|DFF1|c:16:dff32|d_input~15_combout\,
	combout => \dp|ALUL|regC|DFF1|c:16:dff32|d_input~20_combout\);

-- Location: FF_X18_Y8_N5
\dp|ALUL|regC|DFF1|c:16:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|ALUL|regC|DFF1|c:16:dff32|d_input~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|Cin~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regC|DFF1|c:16:dff32|dff0|q~q\);

-- Location: LCCOMB_X18_Y8_N18
\dp|ALUL|regC|BF1|c:16:buf32|output~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:16:buf32|output~1_combout\ = (\cu|control|MDout~0_combout\ & (((\cu|control|Cout~combout\ & !\dp|ALUL|regC|DFF1|c:16:dff32|dff0|q~q\)) # (!\dp|MEML|md_r|c:16:dff32|dff0|q~q\))) # (!\cu|control|MDout~0_combout\ & 
-- (\cu|control|Cout~combout\ & ((!\dp|ALUL|regC|DFF1|c:16:dff32|dff0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|MDout~0_combout\,
	datab => \cu|control|Cout~combout\,
	datac => \dp|MEML|md_r|c:16:dff32|dff0|q~q\,
	datad => \dp|ALUL|regC|DFF1|c:16:dff32|dff0|q~q\,
	combout => \dp|ALUL|regC|BF1|c:16:buf32|output~1_combout\);

-- Location: FF_X18_Y7_N1
\dp|PCL|dff|c:16:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:16:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|control|PCin~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|PCL|dff|c:16:dff32|dff0|q~q\);

-- Location: LCCOMB_X18_Y7_N0
\dp|ALUL|regC|BF1|c:16:buf32|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:16:buf32|output~0_combout\ = (\dp|IRL|ir16|dff0|q~q\ & (((\dp|PCL|dff|c:16:dff32|dff0|q~q\)) # (!\cu|control|PCout~combout\))) # (!\dp|IRL|ir16|dff0|q~q\ & (\dp|IRL|c1_or_c2~0_combout\ & ((\dp|PCL|dff|c:16:dff32|dff0|q~q\) # 
-- (!\cu|control|PCout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|IRL|ir16|dff0|q~q\,
	datab => \cu|control|PCout~combout\,
	datac => \dp|PCL|dff|c:16:dff32|dff0|q~q\,
	datad => \dp|IRL|c1_or_c2~0_combout\,
	combout => \dp|ALUL|regC|BF1|c:16:buf32|output~0_combout\);

-- Location: LCCOMB_X18_Y8_N28
\dp|ALUL|regC|BF1|c:16:buf32|output~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:16:buf32|output~3_combout\ = (!\dp|ALUL|regC|BF1|c:16:buf32|output~1_combout\ & (\dp|ALUL|regC|BF1|c:16:buf32|output~0_combout\ & ((\dp|ALUL|regC|BF1|c:16:buf32|output~2_combout\) # (!\dp|RegFIleL|r_out_OR_ba_out~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:16:buf32|output~2_combout\,
	datab => \dp|ALUL|regC|BF1|c:16:buf32|output~1_combout\,
	datac => \dp|RegFIleL|r_out_OR_ba_out~5_combout\,
	datad => \dp|ALUL|regC|BF1|c:16:buf32|output~0_combout\,
	combout => \dp|ALUL|regC|BF1|c:16:buf32|output~3_combout\);

-- Location: LCCOMB_X18_Y8_N26
\dp|ALUL|regC|BF1|c:16:buf32|output~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:16:buf32|output~4_combout\ = (\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\) # (\dp|ALUL|regC|BF1|c:16:buf32|output~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	datad => \dp|ALUL|regC|BF1|c:16:buf32|output~3_combout\,
	combout => \dp|ALUL|regC|BF1|c:16:buf32|output~4_combout\);

-- Location: LCCOMB_X22_Y13_N28
\dp|ALUL|regC|DFF1|c:15:dff32|d_input~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:15:dff32|d_input~17_combout\ = (\dp|ALUL|l_s|Eout~0_combout\ & ((\dp|ALUL|regC|BF1|c:14:buf32|output~4_combout\) # ((\dp|ALUL|regC|BF1|c:16:buf32|output~4_combout\ & \dp|ALUL|r_s|Eout~0_combout\)))) # (!\dp|ALUL|l_s|Eout~0_combout\ & 
-- (((\dp|ALUL|regC|BF1|c:16:buf32|output~4_combout\ & \dp|ALUL|r_s|Eout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|l_s|Eout~0_combout\,
	datab => \dp|ALUL|regC|BF1|c:14:buf32|output~4_combout\,
	datac => \dp|ALUL|regC|BF1|c:16:buf32|output~4_combout\,
	datad => \dp|ALUL|r_s|Eout~0_combout\,
	combout => \dp|ALUL|regC|DFF1|c:15:dff32|d_input~17_combout\);

-- Location: LCCOMB_X23_Y13_N0
\dp|ALUL|regC|DFF1|c:15:dff32|d_input~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:15:dff32|d_input~16_combout\ = (\cu|control|NOTOP~combout\ & (\dp|ALUL|add|b_inv~combout\ $ (((\dp|ALUL|regC|BF1|c:15:buf32|output~3_combout\) # (\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|b_inv~combout\,
	datab => \cu|control|NOTOP~combout\,
	datac => \dp|ALUL|regC|BF1|c:15:buf32|output~3_combout\,
	datad => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	combout => \dp|ALUL|regC|DFF1|c:15:dff32|d_input~16_combout\);

-- Location: LCCOMB_X23_Y13_N28
\dp|ALUL|add|b_sig[15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|b_sig\(15) = \dp|ALUL|add|b_inv~combout\ $ (((\dp|ALUL|regC|BF1|c:15:buf32|output~3_combout\) # (\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|b_inv~combout\,
	datac => \dp|ALUL|regC|BF1|c:15:buf32|output~3_combout\,
	datad => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	combout => \dp|ALUL|add|b_sig\(15));

-- Location: LCCOMB_X22_Y13_N18
\dp|ALUL|regC|DFF1|c:15:dff32|d_input~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:15:dff32|d_input~15_combout\ = (\dp|ALUL|add|add_E~9_combout\ & (\dp|ALUL|add|a_sig\(15) $ (\dp|ALUL|add|b_sig\(15) $ (\dp|ALUL|add|add_32|Y:14:full32|c_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|a_sig\(15),
	datab => \dp|ALUL|add|b_sig\(15),
	datac => \dp|ALUL|add|add_E~9_combout\,
	datad => \dp|ALUL|add|add_32|Y:14:full32|c_out~0_combout\,
	combout => \dp|ALUL|regC|DFF1|c:15:dff32|d_input~15_combout\);

-- Location: LCCOMB_X22_Y13_N24
\dp|ALUL|regC|DFF1|c:15:dff32|d_input~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:15:dff32|d_input~20_combout\ = (\dp|ALUL|regC|DFF1|c:15:dff32|d_input~19_combout\) # ((\dp|ALUL|regC|DFF1|c:15:dff32|d_input~17_combout\) # ((\dp|ALUL|regC|DFF1|c:15:dff32|d_input~16_combout\) # 
-- (\dp|ALUL|regC|DFF1|c:15:dff32|d_input~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:15:dff32|d_input~19_combout\,
	datab => \dp|ALUL|regC|DFF1|c:15:dff32|d_input~17_combout\,
	datac => \dp|ALUL|regC|DFF1|c:15:dff32|d_input~16_combout\,
	datad => \dp|ALUL|regC|DFF1|c:15:dff32|d_input~15_combout\,
	combout => \dp|ALUL|regC|DFF1|c:15:dff32|d_input~20_combout\);

-- Location: FF_X22_Y13_N25
\dp|ALUL|regC|DFF1|c:15:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|ALUL|regC|DFF1|c:15:dff32|d_input~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|Cin~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regC|DFF1|c:15:dff32|dff0|q~q\);

-- Location: LCCOMB_X22_Y13_N22
\dp|ALUL|regC|BF1|c:15:buf32|output~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:15:buf32|output~1_combout\ = (\dp|MEML|md_r|c:15:dff32|dff0|q~q\ & (!\dp|ALUL|regC|DFF1|c:15:dff32|dff0|q~q\ & ((\cu|control|Cout~combout\)))) # (!\dp|MEML|md_r|c:15:dff32|dff0|q~q\ & ((\cu|control|MDout~0_combout\) # 
-- ((!\dp|ALUL|regC|DFF1|c:15:dff32|dff0|q~q\ & \cu|control|Cout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|MEML|md_r|c:15:dff32|dff0|q~q\,
	datab => \dp|ALUL|regC|DFF1|c:15:dff32|dff0|q~q\,
	datac => \cu|control|MDout~0_combout\,
	datad => \cu|control|Cout~combout\,
	combout => \dp|ALUL|regC|BF1|c:15:buf32|output~1_combout\);

-- Location: FF_X19_Y13_N23
\dp|RegFIleL|gen_reg0|dff|c:15:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:15:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|RegFIleL|strop\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg0|dff|c:15:dff32|dff0|q~q\);

-- Location: FF_X19_Y13_N1
\dp|RegFIleL|gen_reg1|dffL|c:15:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:15:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|RegFIleL|strop\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg1|dffL|c:15:dff32|dff0|q~q\);

-- Location: LCCOMB_X19_Y13_N0
\dp|ALUL|regC|BF1|c:15:buf32|output~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:15:buf32|output~2_combout\ = (\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & (((\dp|RegFIleL|gen_reg1|dffL|c:15:dff32|dff0|q~q\)))) # (!\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & (\dp|RegFIleL|gen_reg0|dff|c:15:dff32|dff0|q~q\ & 
-- ((!\cu|control|BAout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RegFIleL|reg|input_decoder[0]~4_combout\,
	datab => \dp|RegFIleL|gen_reg0|dff|c:15:dff32|dff0|q~q\,
	datac => \dp|RegFIleL|gen_reg1|dffL|c:15:dff32|dff0|q~q\,
	datad => \cu|control|BAout~0_combout\,
	combout => \dp|ALUL|regC|BF1|c:15:buf32|output~2_combout\);

-- Location: LCCOMB_X19_Y13_N6
\dp|ALUL|regC|BF1|c:15:buf32|output~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:15:buf32|output~3_combout\ = (\dp|ALUL|regC|BF1|c:15:buf32|output~0_combout\ & (!\dp|ALUL|regC|BF1|c:15:buf32|output~1_combout\ & ((\dp|ALUL|regC|BF1|c:15:buf32|output~2_combout\) # (!\dp|RegFIleL|r_out_OR_ba_out~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:15:buf32|output~0_combout\,
	datab => \dp|RegFIleL|r_out_OR_ba_out~5_combout\,
	datac => \dp|ALUL|regC|BF1|c:15:buf32|output~1_combout\,
	datad => \dp|ALUL|regC|BF1|c:15:buf32|output~2_combout\,
	combout => \dp|ALUL|regC|BF1|c:15:buf32|output~3_combout\);

-- Location: LCCOMB_X20_Y13_N24
\dp|ALUL|regC|BF1|c:15:buf32|output~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:15:buf32|output~4_combout\ = (\dp|ALUL|regC|BF1|c:15:buf32|output~3_combout\) # (\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|ALUL|regC|BF1|c:15:buf32|output~3_combout\,
	datad => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	combout => \dp|ALUL|regC|BF1|c:15:buf32|output~4_combout\);

-- Location: LCCOMB_X20_Y13_N22
\dp|ALUL|regC|DFF1|c:14:dff32|d_input~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:14:dff32|d_input~17_combout\ = (\dp|ALUL|regC|BF1|c:13:buf32|output~4_combout\ & ((\dp|ALUL|l_s|Eout~0_combout\) # ((\dp|ALUL|regC|BF1|c:15:buf32|output~4_combout\ & \dp|ALUL|r_s|Eout~0_combout\)))) # 
-- (!\dp|ALUL|regC|BF1|c:13:buf32|output~4_combout\ & (\dp|ALUL|regC|BF1|c:15:buf32|output~4_combout\ & (\dp|ALUL|r_s|Eout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:13:buf32|output~4_combout\,
	datab => \dp|ALUL|regC|BF1|c:15:buf32|output~4_combout\,
	datac => \dp|ALUL|r_s|Eout~0_combout\,
	datad => \dp|ALUL|l_s|Eout~0_combout\,
	combout => \dp|ALUL|regC|DFF1|c:14:dff32|d_input~17_combout\);

-- Location: LCCOMB_X20_Y13_N8
\dp|ALUL|add|b_sig[14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|b_sig\(14) = \dp|ALUL|add|b_inv~combout\ $ (((\dp|ALUL|regC|BF1|c:14:buf32|output~3_combout\) # (\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|ALUL|regC|BF1|c:14:buf32|output~3_combout\,
	datac => \dp|ALUL|add|b_inv~combout\,
	datad => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	combout => \dp|ALUL|add|b_sig\(14));

-- Location: LCCOMB_X20_Y13_N18
\dp|ALUL|regC|DFF1|c:14:dff32|d_input~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:14:dff32|d_input~15_combout\ = (\dp|ALUL|add|add_E~9_combout\ & (\dp|ALUL|add|a_sig\(14) $ (\dp|ALUL|add|b_sig\(14) $ (\dp|ALUL|add|add_32|Y:13:full32|c_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|a_sig\(14),
	datab => \dp|ALUL|add|add_E~9_combout\,
	datac => \dp|ALUL|add|b_sig\(14),
	datad => \dp|ALUL|add|add_32|Y:13:full32|c_out~0_combout\,
	combout => \dp|ALUL|regC|DFF1|c:14:dff32|d_input~15_combout\);

-- Location: LCCOMB_X20_Y13_N2
\dp|ALUL|regC|DFF1|c:14:dff32|d_input~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:14:dff32|d_input~20_combout\ = (\dp|ALUL|regC|DFF1|c:14:dff32|d_input~19_combout\) # ((\dp|ALUL|regC|DFF1|c:14:dff32|d_input~16_combout\) # ((\dp|ALUL|regC|DFF1|c:14:dff32|d_input~17_combout\) # 
-- (\dp|ALUL|regC|DFF1|c:14:dff32|d_input~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:14:dff32|d_input~19_combout\,
	datab => \dp|ALUL|regC|DFF1|c:14:dff32|d_input~16_combout\,
	datac => \dp|ALUL|regC|DFF1|c:14:dff32|d_input~17_combout\,
	datad => \dp|ALUL|regC|DFF1|c:14:dff32|d_input~15_combout\,
	combout => \dp|ALUL|regC|DFF1|c:14:dff32|d_input~20_combout\);

-- Location: FF_X20_Y13_N3
\dp|ALUL|regC|DFF1|c:14:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|ALUL|regC|DFF1|c:14:dff32|d_input~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|Cin~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regC|DFF1|c:14:dff32|dff0|q~q\);

-- Location: IOIBUF_X31_Y13_N1
\md[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => md(14),
	o => \md[14]~input_o\);

-- Location: LCCOMB_X23_Y13_N24
\dp|MEML|or_G[14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|MEML|or_G\(14) = (\cu|control|MDin~combout\ & ((\dp|ALUL|regC|BF1|c:14:buf32|output~4_combout\) # ((\md_read~input_o\ & \md[14]~input_o\)))) # (!\cu|control|MDin~combout\ & (\md_read~input_o\ & ((\md[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|MDin~combout\,
	datab => \md_read~input_o\,
	datac => \dp|ALUL|regC|BF1|c:14:buf32|output~4_combout\,
	datad => \md[14]~input_o\,
	combout => \dp|MEML|or_G\(14));

-- Location: FF_X23_Y13_N25
\dp|MEML|md_r|c:14:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|MEML|or_G\(14),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \dp|MEML|md_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|md_r|c:14:dff32|dff0|q~q\);

-- Location: LCCOMB_X19_Y13_N14
\dp|ALUL|regC|BF1|c:14:buf32|output~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:14:buf32|output~1_combout\ = (\dp|ALUL|regC|DFF1|c:14:dff32|dff0|q~q\ & (!\dp|MEML|md_r|c:14:dff32|dff0|q~q\ & (\cu|control|MDout~0_combout\))) # (!\dp|ALUL|regC|DFF1|c:14:dff32|dff0|q~q\ & ((\cu|control|Cout~combout\) # 
-- ((!\dp|MEML|md_r|c:14:dff32|dff0|q~q\ & \cu|control|MDout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:14:dff32|dff0|q~q\,
	datab => \dp|MEML|md_r|c:14:dff32|dff0|q~q\,
	datac => \cu|control|MDout~0_combout\,
	datad => \cu|control|Cout~combout\,
	combout => \dp|ALUL|regC|BF1|c:14:buf32|output~1_combout\);

-- Location: FF_X19_Y13_N3
\dp|RegFIleL|gen_reg1|dffL|c:14:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:14:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|RegFIleL|strop\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg1|dffL|c:14:dff32|dff0|q~q\);

-- Location: FF_X19_Y13_N17
\dp|RegFIleL|gen_reg0|dff|c:14:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|ALUL|regC|BF1|c:14:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \dp|RegFIleL|strop\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg0|dff|c:14:dff32|dff0|q~q\);

-- Location: LCCOMB_X19_Y13_N2
\dp|ALUL|regC|BF1|c:14:buf32|output~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:14:buf32|output~2_combout\ = (\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & (((\dp|RegFIleL|gen_reg1|dffL|c:14:dff32|dff0|q~q\)))) # (!\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & (!\cu|control|BAout~0_combout\ & 
-- ((\dp|RegFIleL|gen_reg0|dff|c:14:dff32|dff0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RegFIleL|reg|input_decoder[0]~4_combout\,
	datab => \cu|control|BAout~0_combout\,
	datac => \dp|RegFIleL|gen_reg1|dffL|c:14:dff32|dff0|q~q\,
	datad => \dp|RegFIleL|gen_reg0|dff|c:14:dff32|dff0|q~q\,
	combout => \dp|ALUL|regC|BF1|c:14:buf32|output~2_combout\);

-- Location: LCCOMB_X19_Y13_N12
\dp|ALUL|regC|BF1|c:14:buf32|output~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:14:buf32|output~3_combout\ = (\dp|ALUL|regC|BF1|c:14:buf32|output~0_combout\ & (!\dp|ALUL|regC|BF1|c:14:buf32|output~1_combout\ & ((\dp|ALUL|regC|BF1|c:14:buf32|output~2_combout\) # (!\dp|RegFIleL|r_out_OR_ba_out~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:14:buf32|output~0_combout\,
	datab => \dp|RegFIleL|r_out_OR_ba_out~5_combout\,
	datac => \dp|ALUL|regC|BF1|c:14:buf32|output~1_combout\,
	datad => \dp|ALUL|regC|BF1|c:14:buf32|output~2_combout\,
	combout => \dp|ALUL|regC|BF1|c:14:buf32|output~3_combout\);

-- Location: LCCOMB_X19_Y13_N16
\dp|ALUL|regC|BF1|c:14:buf32|output~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:14:buf32|output~4_combout\ = (\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\) # (\dp|ALUL|regC|BF1|c:14:buf32|output~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	datad => \dp|ALUL|regC|BF1|c:14:buf32|output~3_combout\,
	combout => \dp|ALUL|regC|BF1|c:14:buf32|output~4_combout\);

-- Location: LCCOMB_X18_Y10_N26
\dp|ALUL|regC|DFF1|c:13:dff32|d_input~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:13:dff32|d_input~17_combout\ = (\dp|ALUL|r_s|Eout~0_combout\ & ((\dp|ALUL|regC|BF1|c:14:buf32|output~4_combout\) # ((\dp|ALUL|l_s|Eout~0_combout\ & \dp|ALUL|regC|BF1|c:12:buf32|output~4_combout\)))) # (!\dp|ALUL|r_s|Eout~0_combout\ & 
-- (\dp|ALUL|l_s|Eout~0_combout\ & (\dp|ALUL|regC|BF1|c:12:buf32|output~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|r_s|Eout~0_combout\,
	datab => \dp|ALUL|l_s|Eout~0_combout\,
	datac => \dp|ALUL|regC|BF1|c:12:buf32|output~4_combout\,
	datad => \dp|ALUL|regC|BF1|c:14:buf32|output~4_combout\,
	combout => \dp|ALUL|regC|DFF1|c:13:dff32|d_input~17_combout\);

-- Location: LCCOMB_X19_Y10_N16
\dp|ALUL|add|b_sig[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|b_sig\(13) = \dp|ALUL|add|b_inv~combout\ $ (((\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\) # (\dp|ALUL|regC|BF1|c:13:buf32|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	datab => \dp|ALUL|add|b_inv~combout\,
	datad => \dp|ALUL|regC|BF1|c:13:buf32|output~3_combout\,
	combout => \dp|ALUL|add|b_sig\(13));

-- Location: LCCOMB_X19_Y10_N24
\dp|ALUL|regC|DFF1|c:13:dff32|d_input~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:13:dff32|d_input~15_combout\ = (\dp|ALUL|add|add_E~9_combout\ & (\dp|ALUL|add|a_sig\(13) $ (\dp|ALUL|add|b_sig\(13) $ (\dp|ALUL|add|add_32|Y:12:full32|c_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|a_sig\(13),
	datab => \dp|ALUL|add|add_E~9_combout\,
	datac => \dp|ALUL|add|b_sig\(13),
	datad => \dp|ALUL|add|add_32|Y:12:full32|c_out~0_combout\,
	combout => \dp|ALUL|regC|DFF1|c:13:dff32|d_input~15_combout\);

-- Location: LCCOMB_X19_Y10_N14
\dp|ALUL|regC|DFF1|c:13:dff32|d_input~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:13:dff32|d_input~20_combout\ = (\dp|ALUL|regC|DFF1|c:13:dff32|d_input~16_combout\) # ((\dp|ALUL|regC|DFF1|c:13:dff32|d_input~19_combout\) # ((\dp|ALUL|regC|DFF1|c:13:dff32|d_input~17_combout\) # 
-- (\dp|ALUL|regC|DFF1|c:13:dff32|d_input~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:13:dff32|d_input~16_combout\,
	datab => \dp|ALUL|regC|DFF1|c:13:dff32|d_input~19_combout\,
	datac => \dp|ALUL|regC|DFF1|c:13:dff32|d_input~17_combout\,
	datad => \dp|ALUL|regC|DFF1|c:13:dff32|d_input~15_combout\,
	combout => \dp|ALUL|regC|DFF1|c:13:dff32|d_input~20_combout\);

-- Location: FF_X19_Y10_N15
\dp|ALUL|regC|DFF1|c:13:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|ALUL|regC|DFF1|c:13:dff32|d_input~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|Cin~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regC|DFF1|c:13:dff32|dff0|q~q\);

-- Location: IOIBUF_X10_Y16_N1
\md[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => md(13),
	o => \md[13]~input_o\);

-- Location: LCCOMB_X16_Y12_N0
\dp|MEML|or_G[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|MEML|or_G\(13) = (\md_read~input_o\ & ((\md[13]~input_o\) # ((\dp|ALUL|regC|BF1|c:13:buf32|output~4_combout\ & \cu|control|MDin~combout\)))) # (!\md_read~input_o\ & (((\dp|ALUL|regC|BF1|c:13:buf32|output~4_combout\ & \cu|control|MDin~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \md_read~input_o\,
	datab => \md[13]~input_o\,
	datac => \dp|ALUL|regC|BF1|c:13:buf32|output~4_combout\,
	datad => \cu|control|MDin~combout\,
	combout => \dp|MEML|or_G\(13));

-- Location: FF_X16_Y12_N1
\dp|MEML|md_r|c:13:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|MEML|or_G\(13),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \dp|MEML|md_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|md_r|c:13:dff32|dff0|q~q\);

-- Location: LCCOMB_X19_Y13_N26
\dp|ALUL|regC|BF1|c:13:buf32|output~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:13:buf32|output~1_combout\ = (\cu|control|Cout~combout\ & (((\cu|control|MDout~0_combout\ & !\dp|MEML|md_r|c:13:dff32|dff0|q~q\)) # (!\dp|ALUL|regC|DFF1|c:13:dff32|dff0|q~q\))) # (!\cu|control|Cout~combout\ & 
-- (((\cu|control|MDout~0_combout\ & !\dp|MEML|md_r|c:13:dff32|dff0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|Cout~combout\,
	datab => \dp|ALUL|regC|DFF1|c:13:dff32|dff0|q~q\,
	datac => \cu|control|MDout~0_combout\,
	datad => \dp|MEML|md_r|c:13:dff32|dff0|q~q\,
	combout => \dp|ALUL|regC|BF1|c:13:buf32|output~1_combout\);

-- Location: FF_X19_Y13_N21
\dp|RegFIleL|gen_reg0|dff|c:13:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:13:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|RegFIleL|strop\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg0|dff|c:13:dff32|dff0|q~q\);

-- Location: FF_X19_Y13_N11
\dp|RegFIleL|gen_reg1|dffL|c:13:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:13:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|RegFIleL|strop\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg1|dffL|c:13:dff32|dff0|q~q\);

-- Location: LCCOMB_X19_Y13_N10
\dp|ALUL|regC|BF1|c:13:buf32|output~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:13:buf32|output~2_combout\ = (\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & (((\dp|RegFIleL|gen_reg1|dffL|c:13:dff32|dff0|q~q\)))) # (!\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & (\dp|RegFIleL|gen_reg0|dff|c:13:dff32|dff0|q~q\ & 
-- ((!\cu|control|BAout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RegFIleL|reg|input_decoder[0]~4_combout\,
	datab => \dp|RegFIleL|gen_reg0|dff|c:13:dff32|dff0|q~q\,
	datac => \dp|RegFIleL|gen_reg1|dffL|c:13:dff32|dff0|q~q\,
	datad => \cu|control|BAout~0_combout\,
	combout => \dp|ALUL|regC|BF1|c:13:buf32|output~2_combout\);

-- Location: LCCOMB_X19_Y13_N28
\dp|ALUL|regC|BF1|c:13:buf32|output~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:13:buf32|output~3_combout\ = (\dp|ALUL|regC|BF1|c:13:buf32|output~0_combout\ & (!\dp|ALUL|regC|BF1|c:13:buf32|output~1_combout\ & ((\dp|ALUL|regC|BF1|c:13:buf32|output~2_combout\) # (!\dp|RegFIleL|r_out_OR_ba_out~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:13:buf32|output~0_combout\,
	datab => \dp|RegFIleL|r_out_OR_ba_out~5_combout\,
	datac => \dp|ALUL|regC|BF1|c:13:buf32|output~1_combout\,
	datad => \dp|ALUL|regC|BF1|c:13:buf32|output~2_combout\,
	combout => \dp|ALUL|regC|BF1|c:13:buf32|output~3_combout\);

-- Location: LCCOMB_X19_Y10_N0
\dp|ALUL|regC|BF1|c:13:buf32|output~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:13:buf32|output~4_combout\ = (\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\) # (\dp|ALUL|regC|BF1|c:13:buf32|output~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	datad => \dp|ALUL|regC|BF1|c:13:buf32|output~3_combout\,
	combout => \dp|ALUL|regC|BF1|c:13:buf32|output~4_combout\);

-- Location: LCCOMB_X18_Y10_N30
\dp|ALUL|regC|DFF1|c:12:dff32|d_input~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:12:dff32|d_input~17_combout\ = (\dp|ALUL|r_s|Eout~0_combout\ & ((\dp|ALUL|regC|BF1|c:13:buf32|output~4_combout\) # ((\dp|ALUL|l_s|Eout~0_combout\ & \dp|ALUL|regC|BF1|c:11:buf32|output~4_combout\)))) # (!\dp|ALUL|r_s|Eout~0_combout\ & 
-- (\dp|ALUL|l_s|Eout~0_combout\ & ((\dp|ALUL|regC|BF1|c:11:buf32|output~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|r_s|Eout~0_combout\,
	datab => \dp|ALUL|l_s|Eout~0_combout\,
	datac => \dp|ALUL|regC|BF1|c:13:buf32|output~4_combout\,
	datad => \dp|ALUL|regC|BF1|c:11:buf32|output~4_combout\,
	combout => \dp|ALUL|regC|DFF1|c:12:dff32|d_input~17_combout\);

-- Location: LCCOMB_X18_Y10_N14
\dp|ALUL|add|b_sig[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|b_sig\(12) = \dp|ALUL|add|b_inv~combout\ $ (((\dp|ALUL|regC|BF1|c:12:buf32|output~3_combout\) # (\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:12:buf32|output~3_combout\,
	datab => \dp|ALUL|add|b_inv~combout\,
	datad => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	combout => \dp|ALUL|add|b_sig\(12));

-- Location: LCCOMB_X18_Y10_N18
\dp|ALUL|regC|DFF1|c:12:dff32|d_input~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:12:dff32|d_input~15_combout\ = (\dp|ALUL|add|add_E~9_combout\ & (\dp|ALUL|add|b_sig\(12) $ (\dp|ALUL|add|a_sig\(12) $ (\dp|ALUL|add|add_32|Y:11:full32|c_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|b_sig\(12),
	datab => \dp|ALUL|add|a_sig\(12),
	datac => \dp|ALUL|add|add_E~9_combout\,
	datad => \dp|ALUL|add|add_32|Y:11:full32|c_out~0_combout\,
	combout => \dp|ALUL|regC|DFF1|c:12:dff32|d_input~15_combout\);

-- Location: LCCOMB_X18_Y10_N22
\dp|ALUL|regC|DFF1|c:12:dff32|d_input~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:12:dff32|d_input~20_combout\ = (\dp|ALUL|regC|DFF1|c:12:dff32|d_input~19_combout\) # ((\dp|ALUL|regC|DFF1|c:12:dff32|d_input~16_combout\) # ((\dp|ALUL|regC|DFF1|c:12:dff32|d_input~17_combout\) # 
-- (\dp|ALUL|regC|DFF1|c:12:dff32|d_input~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:12:dff32|d_input~19_combout\,
	datab => \dp|ALUL|regC|DFF1|c:12:dff32|d_input~16_combout\,
	datac => \dp|ALUL|regC|DFF1|c:12:dff32|d_input~17_combout\,
	datad => \dp|ALUL|regC|DFF1|c:12:dff32|d_input~15_combout\,
	combout => \dp|ALUL|regC|DFF1|c:12:dff32|d_input~20_combout\);

-- Location: FF_X18_Y10_N23
\dp|ALUL|regC|DFF1|c:12:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|ALUL|regC|DFF1|c:12:dff32|d_input~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|Cin~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regC|DFF1|c:12:dff32|dff0|q~q\);

-- Location: LCCOMB_X19_Y13_N24
\dp|ALUL|regC|BF1|c:12:buf32|output~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:12:buf32|output~1_combout\ = (\dp|MEML|md_r|c:12:dff32|dff0|q~q\ & (!\dp|ALUL|regC|DFF1|c:12:dff32|dff0|q~q\ & ((\cu|control|Cout~combout\)))) # (!\dp|MEML|md_r|c:12:dff32|dff0|q~q\ & ((\cu|control|MDout~0_combout\) # 
-- ((!\dp|ALUL|regC|DFF1|c:12:dff32|dff0|q~q\ & \cu|control|Cout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|MEML|md_r|c:12:dff32|dff0|q~q\,
	datab => \dp|ALUL|regC|DFF1|c:12:dff32|dff0|q~q\,
	datac => \cu|control|MDout~0_combout\,
	datad => \cu|control|Cout~combout\,
	combout => \dp|ALUL|regC|BF1|c:12:buf32|output~1_combout\);

-- Location: FF_X19_Y13_N31
\dp|RegFIleL|gen_reg0|dff|c:12:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:12:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|RegFIleL|strop\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg0|dff|c:12:dff32|dff0|q~q\);

-- Location: FF_X19_Y13_N5
\dp|RegFIleL|gen_reg1|dffL|c:12:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:12:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|RegFIleL|strop\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg1|dffL|c:12:dff32|dff0|q~q\);

-- Location: LCCOMB_X19_Y13_N4
\dp|ALUL|regC|BF1|c:12:buf32|output~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:12:buf32|output~2_combout\ = (\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & (((\dp|RegFIleL|gen_reg1|dffL|c:12:dff32|dff0|q~q\)))) # (!\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & (\dp|RegFIleL|gen_reg0|dff|c:12:dff32|dff0|q~q\ & 
-- ((!\cu|control|BAout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RegFIleL|reg|input_decoder[0]~4_combout\,
	datab => \dp|RegFIleL|gen_reg0|dff|c:12:dff32|dff0|q~q\,
	datac => \dp|RegFIleL|gen_reg1|dffL|c:12:dff32|dff0|q~q\,
	datad => \cu|control|BAout~0_combout\,
	combout => \dp|ALUL|regC|BF1|c:12:buf32|output~2_combout\);

-- Location: LCCOMB_X19_Y13_N18
\dp|ALUL|regC|BF1|c:12:buf32|output~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:12:buf32|output~3_combout\ = (\dp|ALUL|regC|BF1|c:12:buf32|output~0_combout\ & (!\dp|ALUL|regC|BF1|c:12:buf32|output~1_combout\ & ((\dp|ALUL|regC|BF1|c:12:buf32|output~2_combout\) # (!\dp|RegFIleL|r_out_OR_ba_out~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:12:buf32|output~0_combout\,
	datab => \dp|ALUL|regC|BF1|c:12:buf32|output~1_combout\,
	datac => \dp|ALUL|regC|BF1|c:12:buf32|output~2_combout\,
	datad => \dp|RegFIleL|r_out_OR_ba_out~5_combout\,
	combout => \dp|ALUL|regC|BF1|c:12:buf32|output~3_combout\);

-- Location: LCCOMB_X19_Y13_N8
\dp|ALUL|regC|BF1|c:12:buf32|output~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:12:buf32|output~4_combout\ = (\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\) # (\dp|ALUL|regC|BF1|c:12:buf32|output~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	datad => \dp|ALUL|regC|BF1|c:12:buf32|output~3_combout\,
	combout => \dp|ALUL|regC|BF1|c:12:buf32|output~4_combout\);

-- Location: LCCOMB_X18_Y13_N24
\dp|ALUL|regC|DFF1|c:11:dff32|d_input~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:11:dff32|d_input~17_combout\ = (\dp|ALUL|regC|BF1|c:12:buf32|output~4_combout\ & ((\dp|ALUL|r_s|Eout~0_combout\) # ((\dp|ALUL|regC|BF1|c:10:buf32|output~4_combout\ & \dp|ALUL|l_s|Eout~0_combout\)))) # 
-- (!\dp|ALUL|regC|BF1|c:12:buf32|output~4_combout\ & (((\dp|ALUL|regC|BF1|c:10:buf32|output~4_combout\ & \dp|ALUL|l_s|Eout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:12:buf32|output~4_combout\,
	datab => \dp|ALUL|r_s|Eout~0_combout\,
	datac => \dp|ALUL|regC|BF1|c:10:buf32|output~4_combout\,
	datad => \dp|ALUL|l_s|Eout~0_combout\,
	combout => \dp|ALUL|regC|DFF1|c:11:dff32|d_input~17_combout\);

-- Location: LCCOMB_X16_Y8_N20
\dp|ALUL|regC|DFF1|c:11:dff32|d_input~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:11:dff32|d_input~16_combout\ = (\cu|st|dec|Mux0~3_combout\ & (\cu|de|Mux7~0_combout\ & (\dp|ALUL|add|b_inv~combout\ $ (\dp|ALUL|regC|BF1|c:11:buf32|output~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|dec|Mux0~3_combout\,
	datab => \cu|de|Mux7~0_combout\,
	datac => \dp|ALUL|add|b_inv~combout\,
	datad => \dp|ALUL|regC|BF1|c:11:buf32|output~4_combout\,
	combout => \dp|ALUL|regC|DFF1|c:11:dff32|d_input~16_combout\);

-- Location: LCCOMB_X15_Y12_N22
\dp|ALUL|add|b_sig[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|b_sig\(11) = \dp|ALUL|add|b_inv~combout\ $ (\dp|ALUL|regC|BF1|c:11:buf32|output~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|b_inv~combout\,
	datac => \dp|ALUL|regC|BF1|c:11:buf32|output~4_combout\,
	combout => \dp|ALUL|add|b_sig\(11));

-- Location: LCCOMB_X15_Y12_N2
\dp|ALUL|regC|DFF1|c:11:dff32|d_input~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:11:dff32|d_input~15_combout\ = (\dp|ALUL|add|add_E~9_combout\ & (\dp|ALUL|add|b_sig\(11) $ (\dp|ALUL|add|a_sig\(11) $ (\dp|ALUL|add|add_32|Y:10:full32|c_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|b_sig\(11),
	datab => \dp|ALUL|add|a_sig\(11),
	datac => \dp|ALUL|add|add_E~9_combout\,
	datad => \dp|ALUL|add|add_32|Y:10:full32|c_out~0_combout\,
	combout => \dp|ALUL|regC|DFF1|c:11:dff32|d_input~15_combout\);

-- Location: LCCOMB_X15_Y12_N18
\dp|ALUL|regC|DFF1|c:11:dff32|d_input~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:11:dff32|d_input~20_combout\ = (\dp|ALUL|regC|DFF1|c:11:dff32|d_input~19_combout\) # ((\dp|ALUL|regC|DFF1|c:11:dff32|d_input~17_combout\) # ((\dp|ALUL|regC|DFF1|c:11:dff32|d_input~16_combout\) # 
-- (\dp|ALUL|regC|DFF1|c:11:dff32|d_input~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:11:dff32|d_input~19_combout\,
	datab => \dp|ALUL|regC|DFF1|c:11:dff32|d_input~17_combout\,
	datac => \dp|ALUL|regC|DFF1|c:11:dff32|d_input~16_combout\,
	datad => \dp|ALUL|regC|DFF1|c:11:dff32|d_input~15_combout\,
	combout => \dp|ALUL|regC|DFF1|c:11:dff32|d_input~20_combout\);

-- Location: FF_X15_Y12_N19
\dp|ALUL|regC|DFF1|c:11:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|ALUL|regC|DFF1|c:11:dff32|d_input~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|Cin~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regC|DFF1|c:11:dff32|dff0|q~q\);

-- Location: LCCOMB_X18_Y12_N26
\dp|ALUL|regC|BF1|c:11:buf32|output~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:11:buf32|output~2_combout\ = (\dp|ALUL|regC|BF1|c:11:buf32|output~1_combout\ & ((\dp|ALUL|regC|DFF1|c:11:dff32|dff0|q~q\) # (!\cu|control|Cout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cu|control|Cout~combout\,
	datac => \dp|ALUL|regC|BF1|c:11:buf32|output~1_combout\,
	datad => \dp|ALUL|regC|DFF1|c:11:dff32|dff0|q~q\,
	combout => \dp|ALUL|regC|BF1|c:11:buf32|output~2_combout\);

-- Location: LCCOMB_X17_Y12_N18
\dp|ALUL|regC|BF1|c:11:buf32|output~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:11:buf32|output~4_combout\ = (\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\) # ((\dp|ALUL|regC|BF1|c:11:buf32|output~2_combout\ & ((\dp|ALUL|regC|BF1|c:11:buf32|output~3_combout\) # (!\dp|RegFIleL|r_out_OR_ba_out~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RegFIleL|r_out_OR_ba_out~5_combout\,
	datab => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	datac => \dp|ALUL|regC|BF1|c:11:buf32|output~3_combout\,
	datad => \dp|ALUL|regC|BF1|c:11:buf32|output~2_combout\,
	combout => \dp|ALUL|regC|BF1|c:11:buf32|output~4_combout\);

-- Location: LCCOMB_X18_Y13_N6
\dp|ALUL|regC|DFF1|c:10:dff32|d_input~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:10:dff32|d_input~16_combout\ = (\dp|ALUL|regC|BF1|c:9:buf32|output~4_combout\ & ((\dp|ALUL|l_s|Eout~0_combout\) # ((\dp|ALUL|r_s|Eout~0_combout\ & \dp|ALUL|regC|BF1|c:11:buf32|output~4_combout\)))) # 
-- (!\dp|ALUL|regC|BF1|c:9:buf32|output~4_combout\ & (\dp|ALUL|r_s|Eout~0_combout\ & (\dp|ALUL|regC|BF1|c:11:buf32|output~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:9:buf32|output~4_combout\,
	datab => \dp|ALUL|r_s|Eout~0_combout\,
	datac => \dp|ALUL|regC|BF1|c:11:buf32|output~4_combout\,
	datad => \dp|ALUL|l_s|Eout~0_combout\,
	combout => \dp|ALUL|regC|DFF1|c:10:dff32|d_input~16_combout\);

-- Location: LCCOMB_X18_Y13_N30
\dp|ALUL|regC|DFF1|c:10:dff32|d_input~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:10:dff32|d_input~3_combout\ = (!\cu|st|con|count_i\(0) & (!\cu|st|con|count_i\(1) & ((\dp|ALUL|regA|A_R|c:10:dff32|dff0|q~q\) # (\dp|IRL|ir28|dff0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regA|A_R|c:10:dff32|dff0|q~q\,
	datab => \cu|st|con|count_i\(0),
	datac => \cu|st|con|count_i\(1),
	datad => \dp|IRL|ir28|dff0|q~q\,
	combout => \dp|ALUL|regC|DFF1|c:10:dff32|d_input~3_combout\);

-- Location: LCCOMB_X17_Y13_N16
\dp|ALUL|regC|DFF1|c:10:dff32|d_input~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:10:dff32|d_input~20_combout\ = (\cu|st|con|count_i\(2) & (\dp|ALUL|regC|DFF1|c:10:dff32|d_input~3_combout\ & (!\dp|IRL|ir30|dff0|q~q\ & \dp|IRL|ir31|dff0|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(2),
	datab => \dp|ALUL|regC|DFF1|c:10:dff32|d_input~3_combout\,
	datac => \dp|IRL|ir30|dff0|q~q\,
	datad => \dp|IRL|ir31|dff0|q~q\,
	combout => \dp|ALUL|regC|DFF1|c:10:dff32|d_input~20_combout\);

-- Location: LCCOMB_X18_Y13_N12
\dp|ALUL|regC|DFF1|c:10:dff32|d_input~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:10:dff32|d_input~17_combout\ = (\dp|ALUL|regA|A_R|c:10:dff32|dff0|q~q\ & ((\dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\) # ((\cu|control|NEG~combout\ & \dp|ALUL|add|temp[10]~20_combout\)))) # 
-- (!\dp|ALUL|regA|A_R|c:10:dff32|dff0|q~q\ & (\cu|control|NEG~combout\ & ((\dp|ALUL|add|temp[10]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regA|A_R|c:10:dff32|dff0|q~q\,
	datab => \cu|control|NEG~combout\,
	datac => \dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\,
	datad => \dp|ALUL|add|temp[10]~20_combout\,
	combout => \dp|ALUL|regC|DFF1|c:10:dff32|d_input~17_combout\);

-- Location: LCCOMB_X18_Y13_N18
\dp|ALUL|regC|DFF1|c:10:dff32|d_input~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:10:dff32|d_input~18_combout\ = (\dp|ALUL|regC|DFF1|c:10:dff32|d_input~17_combout\) # ((\dp|ALUL|regC|BF1|c:10:buf32|output~4_combout\ & ((\dp|ALUL|regC|DFF1|c:10:dff32|d_input~20_combout\) # (\cu|control|CB~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:10:dff32|d_input~20_combout\,
	datab => \dp|ALUL|regC|BF1|c:10:buf32|output~4_combout\,
	datac => \cu|control|CB~combout\,
	datad => \dp|ALUL|regC|DFF1|c:10:dff32|d_input~17_combout\,
	combout => \dp|ALUL|regC|DFF1|c:10:dff32|d_input~18_combout\);

-- Location: LCCOMB_X18_Y13_N26
\dp|ALUL|add|add_32|Y:10:full32|second_HA|s~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|add_32|Y:10:full32|second_HA|s~0_combout\ = \dp|ALUL|add|a_sig\(10) $ (\dp|ALUL|add|add_32|Y:9:full32|c_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|ALUL|add|a_sig\(10),
	datac => \dp|ALUL|add|add_32|Y:9:full32|c_out~0_combout\,
	combout => \dp|ALUL|add|add_32|Y:10:full32|second_HA|s~0_combout\);

-- Location: LCCOMB_X18_Y13_N22
\dp|ALUL|add|b_sig[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|b_sig\(10) = \dp|ALUL|add|b_inv~combout\ $ (((\dp|ALUL|regC|BF1|c:10:buf32|output~3_combout\) # (\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|b_inv~combout\,
	datab => \dp|ALUL|regC|BF1|c:10:buf32|output~3_combout\,
	datad => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	combout => \dp|ALUL|add|b_sig\(10));

-- Location: LCCOMB_X18_Y13_N16
\dp|ALUL|regC|DFF1|c:10:dff32|d_input~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:10:dff32|d_input~15_combout\ = (\dp|ALUL|add|b_sig\(10) & ((\cu|control|NOTOP~combout\) # ((\dp|ALUL|add|add_E~9_combout\ & !\dp|ALUL|add|add_32|Y:10:full32|second_HA|s~0_combout\)))) # (!\dp|ALUL|add|b_sig\(10) & 
-- (((\dp|ALUL|add|add_E~9_combout\ & \dp|ALUL|add|add_32|Y:10:full32|second_HA|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|NOTOP~combout\,
	datab => \dp|ALUL|add|add_E~9_combout\,
	datac => \dp|ALUL|add|add_32|Y:10:full32|second_HA|s~0_combout\,
	datad => \dp|ALUL|add|b_sig\(10),
	combout => \dp|ALUL|regC|DFF1|c:10:dff32|d_input~15_combout\);

-- Location: LCCOMB_X18_Y13_N8
\dp|ALUL|regC|DFF1|c:10:dff32|d_input~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:10:dff32|d_input~19_combout\ = (\dp|ALUL|regC|DFF1|c:10:dff32|d_input~16_combout\) # ((\dp|ALUL|regC|DFF1|c:10:dff32|d_input~18_combout\) # (\dp|ALUL|regC|DFF1|c:10:dff32|d_input~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:10:dff32|d_input~16_combout\,
	datab => \dp|ALUL|regC|DFF1|c:10:dff32|d_input~18_combout\,
	datad => \dp|ALUL|regC|DFF1|c:10:dff32|d_input~15_combout\,
	combout => \dp|ALUL|regC|DFF1|c:10:dff32|d_input~19_combout\);

-- Location: FF_X18_Y13_N9
\dp|ALUL|regC|DFF1|c:10:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|ALUL|regC|DFF1|c:10:dff32|d_input~19_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|Cin~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regC|DFF1|c:10:dff32|dff0|q~q\);

-- Location: IOIBUF_X17_Y25_N1
\md[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => md(10),
	o => \md[10]~input_o\);

-- Location: LCCOMB_X16_Y12_N26
\dp|MEML|or_G[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|MEML|or_G\(10) = (\dp|ALUL|regC|BF1|c:10:buf32|output~4_combout\ & ((\cu|control|MDin~combout\) # ((\md[10]~input_o\ & \md_read~input_o\)))) # (!\dp|ALUL|regC|BF1|c:10:buf32|output~4_combout\ & (\md[10]~input_o\ & (\md_read~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:10:buf32|output~4_combout\,
	datab => \md[10]~input_o\,
	datac => \md_read~input_o\,
	datad => \cu|control|MDin~combout\,
	combout => \dp|MEML|or_G\(10));

-- Location: FF_X16_Y12_N27
\dp|MEML|md_r|c:10:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|MEML|or_G\(10),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \dp|MEML|md_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|md_r|c:10:dff32|dff0|q~q\);

-- Location: LCCOMB_X18_Y12_N24
\dp|ALUL|regC|BF1|c:10:buf32|output~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:10:buf32|output~1_combout\ = (\cu|control|Cout~combout\ & (((!\dp|MEML|md_r|c:10:dff32|dff0|q~q\ & \cu|control|MDout~0_combout\)) # (!\dp|ALUL|regC|DFF1|c:10:dff32|dff0|q~q\))) # (!\cu|control|Cout~combout\ & 
-- (((!\dp|MEML|md_r|c:10:dff32|dff0|q~q\ & \cu|control|MDout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|Cout~combout\,
	datab => \dp|ALUL|regC|DFF1|c:10:dff32|dff0|q~q\,
	datac => \dp|MEML|md_r|c:10:dff32|dff0|q~q\,
	datad => \cu|control|MDout~0_combout\,
	combout => \dp|ALUL|regC|BF1|c:10:buf32|output~1_combout\);

-- Location: LCCOMB_X19_Y12_N24
\dp|ALUL|regC|BF1|c:10:buf32|output~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:10:buf32|output~3_combout\ = (\dp|ALUL|regC|BF1|c:10:buf32|output~0_combout\ & (!\dp|ALUL|regC|BF1|c:10:buf32|output~1_combout\ & ((\dp|ALUL|regC|BF1|c:10:buf32|output~2_combout\) # (!\dp|RegFIleL|r_out_OR_ba_out~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:10:buf32|output~2_combout\,
	datab => \dp|RegFIleL|r_out_OR_ba_out~5_combout\,
	datac => \dp|ALUL|regC|BF1|c:10:buf32|output~0_combout\,
	datad => \dp|ALUL|regC|BF1|c:10:buf32|output~1_combout\,
	combout => \dp|ALUL|regC|BF1|c:10:buf32|output~3_combout\);

-- Location: LCCOMB_X19_Y12_N0
\dp|ALUL|regC|BF1|c:10:buf32|output~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:10:buf32|output~4_combout\ = (\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\) # (\dp|ALUL|regC|BF1|c:10:buf32|output~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	datad => \dp|ALUL|regC|BF1|c:10:buf32|output~3_combout\,
	combout => \dp|ALUL|regC|BF1|c:10:buf32|output~4_combout\);

-- Location: LCCOMB_X18_Y13_N20
\dp|ALUL|regC|DFF1|c:9:dff32|d_input~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:9:dff32|d_input~17_combout\ = (\dp|ALUL|regC|BF1|c:10:buf32|output~4_combout\ & ((\dp|ALUL|r_s|Eout~0_combout\) # ((\dp|ALUL|regC|BF1|c:8:buf32|output~4_combout\ & \dp|ALUL|l_s|Eout~0_combout\)))) # 
-- (!\dp|ALUL|regC|BF1|c:10:buf32|output~4_combout\ & (((\dp|ALUL|regC|BF1|c:8:buf32|output~4_combout\ & \dp|ALUL|l_s|Eout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:10:buf32|output~4_combout\,
	datab => \dp|ALUL|r_s|Eout~0_combout\,
	datac => \dp|ALUL|regC|BF1|c:8:buf32|output~4_combout\,
	datad => \dp|ALUL|l_s|Eout~0_combout\,
	combout => \dp|ALUL|regC|DFF1|c:9:dff32|d_input~17_combout\);

-- Location: LCCOMB_X19_Y10_N12
\dp|ALUL|regC|DFF1|c:9:dff32|d_input~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:9:dff32|d_input~3_combout\ = (!\cu|st|con|count_i\(0) & (!\cu|st|con|count_i\(1) & ((\dp|ALUL|regA|A_R|c:9:dff32|dff0|q~q\) # (\dp|IRL|ir28|dff0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(0),
	datab => \cu|st|con|count_i\(1),
	datac => \dp|ALUL|regA|A_R|c:9:dff32|dff0|q~q\,
	datad => \dp|IRL|ir28|dff0|q~q\,
	combout => \dp|ALUL|regC|DFF1|c:9:dff32|d_input~3_combout\);

-- Location: LCCOMB_X19_Y10_N2
\dp|ALUL|regC|DFF1|c:9:dff32|d_input~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:9:dff32|d_input~21_combout\ = (\dp|ALUL|regC|DFF1|c:9:dff32|d_input~3_combout\ & (!\dp|IRL|ir30|dff0|q~q\ & (\cu|st|con|count_i\(2) & \dp|IRL|ir31|dff0|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:9:dff32|d_input~3_combout\,
	datab => \dp|IRL|ir30|dff0|q~q\,
	datac => \cu|st|con|count_i\(2),
	datad => \dp|IRL|ir31|dff0|q~q\,
	combout => \dp|ALUL|regC|DFF1|c:9:dff32|d_input~21_combout\);

-- Location: LCCOMB_X19_Y10_N28
\dp|ALUL|regC|DFF1|c:9:dff32|d_input~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:9:dff32|d_input~18_combout\ = (\dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\ & ((\dp|ALUL|regA|A_R|c:9:dff32|dff0|q~q\) # ((\cu|control|NEG~combout\ & \dp|ALUL|add|temp[9]~18_combout\)))) # 
-- (!\dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\ & (\cu|control|NEG~combout\ & (\dp|ALUL|add|temp[9]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\,
	datab => \cu|control|NEG~combout\,
	datac => \dp|ALUL|add|temp[9]~18_combout\,
	datad => \dp|ALUL|regA|A_R|c:9:dff32|dff0|q~q\,
	combout => \dp|ALUL|regC|DFF1|c:9:dff32|d_input~18_combout\);

-- Location: LCCOMB_X19_Y10_N18
\dp|ALUL|regC|DFF1|c:9:dff32|d_input~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:9:dff32|d_input~19_combout\ = (\dp|ALUL|regC|DFF1|c:9:dff32|d_input~18_combout\) # ((\dp|ALUL|regC|BF1|c:9:buf32|output~4_combout\ & ((\cu|control|CB~combout\) # (\dp|ALUL|regC|DFF1|c:9:dff32|d_input~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|CB~combout\,
	datab => \dp|ALUL|regC|DFF1|c:9:dff32|d_input~21_combout\,
	datac => \dp|ALUL|regC|BF1|c:9:buf32|output~4_combout\,
	datad => \dp|ALUL|regC|DFF1|c:9:dff32|d_input~18_combout\,
	combout => \dp|ALUL|regC|DFF1|c:9:dff32|d_input~19_combout\);

-- Location: LCCOMB_X20_Y12_N14
\dp|ALUL|add|b_sig[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|b_sig\(9) = \dp|ALUL|add|b_inv~combout\ $ (((\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\) # (\dp|ALUL|regC|BF1|c:9:buf32|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|b_inv~combout\,
	datab => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	datac => \dp|ALUL|regC|BF1|c:9:buf32|output~3_combout\,
	combout => \dp|ALUL|add|b_sig\(9));

-- Location: LCCOMB_X20_Y12_N20
\dp|ALUL|regC|DFF1|c:9:dff32|d_input~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:9:dff32|d_input~15_combout\ = (\dp|ALUL|add|add_E~9_combout\ & (\dp|ALUL|add|a_sig\(9) $ (\dp|ALUL|add|add_32|Y:8:full32|c_out~0_combout\ $ (\dp|ALUL|add|b_sig\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|a_sig\(9),
	datab => \dp|ALUL|add|add_32|Y:8:full32|c_out~0_combout\,
	datac => \dp|ALUL|add|b_sig\(9),
	datad => \dp|ALUL|add|add_E~9_combout\,
	combout => \dp|ALUL|regC|DFF1|c:9:dff32|d_input~15_combout\);

-- Location: LCCOMB_X20_Y12_N2
\dp|ALUL|regC|DFF1|c:9:dff32|d_input~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:9:dff32|d_input~20_combout\ = (\dp|ALUL|regC|DFF1|c:9:dff32|d_input~16_combout\) # ((\dp|ALUL|regC|DFF1|c:9:dff32|d_input~17_combout\) # ((\dp|ALUL|regC|DFF1|c:9:dff32|d_input~19_combout\) # 
-- (\dp|ALUL|regC|DFF1|c:9:dff32|d_input~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:9:dff32|d_input~16_combout\,
	datab => \dp|ALUL|regC|DFF1|c:9:dff32|d_input~17_combout\,
	datac => \dp|ALUL|regC|DFF1|c:9:dff32|d_input~19_combout\,
	datad => \dp|ALUL|regC|DFF1|c:9:dff32|d_input~15_combout\,
	combout => \dp|ALUL|regC|DFF1|c:9:dff32|d_input~20_combout\);

-- Location: FF_X20_Y12_N3
\dp|ALUL|regC|DFF1|c:9:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|ALUL|regC|DFF1|c:9:dff32|d_input~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|Cin~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regC|DFF1|c:9:dff32|dff0|q~q\);

-- Location: IOIBUF_X17_Y25_N8
\md[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => md(9),
	o => \md[9]~input_o\);

-- Location: LCCOMB_X16_Y12_N16
\dp|MEML|or_G[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|MEML|or_G\(9) = (\md_read~input_o\ & ((\md[9]~input_o\) # ((\dp|ALUL|regC|BF1|c:9:buf32|output~4_combout\ & \cu|control|MDin~combout\)))) # (!\md_read~input_o\ & (((\dp|ALUL|regC|BF1|c:9:buf32|output~4_combout\ & \cu|control|MDin~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \md_read~input_o\,
	datab => \md[9]~input_o\,
	datac => \dp|ALUL|regC|BF1|c:9:buf32|output~4_combout\,
	datad => \cu|control|MDin~combout\,
	combout => \dp|MEML|or_G\(9));

-- Location: FF_X16_Y12_N17
\dp|MEML|md_r|c:9:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|MEML|or_G\(9),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \dp|MEML|md_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|md_r|c:9:dff32|dff0|q~q\);

-- Location: LCCOMB_X19_Y12_N12
\dp|ALUL|regC|BF1|c:9:buf32|output~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:9:buf32|output~1_combout\ = (\dp|ALUL|regC|DFF1|c:9:dff32|dff0|q~q\ & (!\dp|MEML|md_r|c:9:dff32|dff0|q~q\ & ((\cu|control|MDout~0_combout\)))) # (!\dp|ALUL|regC|DFF1|c:9:dff32|dff0|q~q\ & ((\cu|control|Cout~combout\) # 
-- ((!\dp|MEML|md_r|c:9:dff32|dff0|q~q\ & \cu|control|MDout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:9:dff32|dff0|q~q\,
	datab => \dp|MEML|md_r|c:9:dff32|dff0|q~q\,
	datac => \cu|control|Cout~combout\,
	datad => \cu|control|MDout~0_combout\,
	combout => \dp|ALUL|regC|BF1|c:9:buf32|output~1_combout\);

-- Location: FF_X16_Y13_N5
\dp|PCL|dff|c:9:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:9:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|control|PCin~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|PCL|dff|c:9:dff32|dff0|q~q\);

-- Location: FF_X16_Y13_N31
\dp|IRL|ir9|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:9:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|st|dec|Mux0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|IRL|ir9|dff0|q~q\);

-- Location: LCCOMB_X16_Y13_N30
\dp|ALUL|regC|BF1|c:9:buf32|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:9:buf32|output~0_combout\ = (\dp|PCL|dff|c:9:dff32|dff0|q~q\ & (((\dp|IRL|ir9|dff0|q~q\) # (\dp|IRL|c1_or_c2~0_combout\)))) # (!\dp|PCL|dff|c:9:dff32|dff0|q~q\ & (!\cu|control|PCout~combout\ & ((\dp|IRL|ir9|dff0|q~q\) # 
-- (\dp|IRL|c1_or_c2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|PCL|dff|c:9:dff32|dff0|q~q\,
	datab => \cu|control|PCout~combout\,
	datac => \dp|IRL|ir9|dff0|q~q\,
	datad => \dp|IRL|c1_or_c2~0_combout\,
	combout => \dp|ALUL|regC|BF1|c:9:buf32|output~0_combout\);

-- Location: FF_X19_Y12_N19
\dp|RegFIleL|gen_reg0|dff|c:9:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|ALUL|regC|BF1|c:9:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \dp|RegFIleL|strop\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg0|dff|c:9:dff32|dff0|q~q\);

-- Location: FF_X19_Y12_N21
\dp|RegFIleL|gen_reg1|dffL|c:9:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:9:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|RegFIleL|strop\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg1|dffL|c:9:dff32|dff0|q~q\);

-- Location: LCCOMB_X19_Y12_N20
\dp|ALUL|regC|BF1|c:9:buf32|output~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:9:buf32|output~2_combout\ = (\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & (((\dp|RegFIleL|gen_reg1|dffL|c:9:dff32|dff0|q~q\)))) # (!\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & (\dp|RegFIleL|gen_reg0|dff|c:9:dff32|dff0|q~q\ & 
-- ((!\cu|control|BAout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RegFIleL|reg|input_decoder[0]~4_combout\,
	datab => \dp|RegFIleL|gen_reg0|dff|c:9:dff32|dff0|q~q\,
	datac => \dp|RegFIleL|gen_reg1|dffL|c:9:dff32|dff0|q~q\,
	datad => \cu|control|BAout~0_combout\,
	combout => \dp|ALUL|regC|BF1|c:9:buf32|output~2_combout\);

-- Location: LCCOMB_X19_Y12_N26
\dp|ALUL|regC|BF1|c:9:buf32|output~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:9:buf32|output~3_combout\ = (!\dp|ALUL|regC|BF1|c:9:buf32|output~1_combout\ & (\dp|ALUL|regC|BF1|c:9:buf32|output~0_combout\ & ((\dp|ALUL|regC|BF1|c:9:buf32|output~2_combout\) # (!\dp|RegFIleL|r_out_OR_ba_out~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:9:buf32|output~1_combout\,
	datab => \dp|RegFIleL|r_out_OR_ba_out~5_combout\,
	datac => \dp|ALUL|regC|BF1|c:9:buf32|output~0_combout\,
	datad => \dp|ALUL|regC|BF1|c:9:buf32|output~2_combout\,
	combout => \dp|ALUL|regC|BF1|c:9:buf32|output~3_combout\);

-- Location: LCCOMB_X19_Y12_N18
\dp|ALUL|regC|BF1|c:9:buf32|output~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:9:buf32|output~4_combout\ = (\dp|ALUL|regC|BF1|c:9:buf32|output~3_combout\) # (\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|ALUL|regC|BF1|c:9:buf32|output~3_combout\,
	datad => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	combout => \dp|ALUL|regC|BF1|c:9:buf32|output~4_combout\);

-- Location: LCCOMB_X20_Y13_N14
\dp|ALUL|regC|DFF1|c:8:dff32|d_input~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:8:dff32|d_input~16_combout\ = (\dp|ALUL|regC|BF1|c:7:buf32|output~4_combout\ & ((\dp|ALUL|l_s|Eout~0_combout\) # ((\dp|ALUL|regC|BF1|c:9:buf32|output~4_combout\ & \dp|ALUL|r_s|Eout~0_combout\)))) # 
-- (!\dp|ALUL|regC|BF1|c:7:buf32|output~4_combout\ & (\dp|ALUL|regC|BF1|c:9:buf32|output~4_combout\ & (\dp|ALUL|r_s|Eout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:7:buf32|output~4_combout\,
	datab => \dp|ALUL|regC|BF1|c:9:buf32|output~4_combout\,
	datac => \dp|ALUL|r_s|Eout~0_combout\,
	datad => \dp|ALUL|l_s|Eout~0_combout\,
	combout => \dp|ALUL|regC|DFF1|c:8:dff32|d_input~16_combout\);

-- Location: LCCOMB_X17_Y9_N10
\dp|ALUL|add|b_sig[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|b_sig\(8) = \dp|ALUL|regC|BF1|c:8:buf32|output~4_combout\ $ (\dp|ALUL|add|b_inv~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|ALUL|regC|BF1|c:8:buf32|output~4_combout\,
	datad => \dp|ALUL|add|b_inv~combout\,
	combout => \dp|ALUL|add|b_sig\(8));

-- Location: LCCOMB_X17_Y9_N4
\dp|ALUL|add|add_32|Y:8:full32|second_HA|s~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|add_32|Y:8:full32|second_HA|s~0_combout\ = \dp|ALUL|add|add_32|Y:7:full32|c_out~0_combout\ $ (((!\cu|st|dec|Mux0~5_combout\ & \dp|ALUL|regA|A_R|c:8:dff32|dff0|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|dec|Mux0~5_combout\,
	datac => \dp|ALUL|regA|A_R|c:8:dff32|dff0|q~q\,
	datad => \dp|ALUL|add|add_32|Y:7:full32|c_out~0_combout\,
	combout => \dp|ALUL|add|add_32|Y:8:full32|second_HA|s~0_combout\);

-- Location: LCCOMB_X17_Y9_N14
\dp|ALUL|regC|DFF1|c:8:dff32|d_input~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:8:dff32|d_input~15_combout\ = (\dp|ALUL|add|b_sig\(8) & ((\cu|control|NOTOP~combout\) # ((!\dp|ALUL|add|add_32|Y:8:full32|second_HA|s~0_combout\ & \dp|ALUL|add|add_E~9_combout\)))) # (!\dp|ALUL|add|b_sig\(8) & 
-- (((\dp|ALUL|add|add_32|Y:8:full32|second_HA|s~0_combout\ & \dp|ALUL|add|add_E~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|b_sig\(8),
	datab => \cu|control|NOTOP~combout\,
	datac => \dp|ALUL|add|add_32|Y:8:full32|second_HA|s~0_combout\,
	datad => \dp|ALUL|add|add_E~9_combout\,
	combout => \dp|ALUL|regC|DFF1|c:8:dff32|d_input~15_combout\);

-- Location: LCCOMB_X20_Y13_N16
\dp|ALUL|regC|DFF1|c:8:dff32|d_input~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:8:dff32|d_input~19_combout\ = (\dp|ALUL|regC|DFF1|c:8:dff32|d_input~18_combout\) # ((\dp|ALUL|regC|DFF1|c:8:dff32|d_input~17_combout\) # ((\dp|ALUL|regC|DFF1|c:8:dff32|d_input~16_combout\) # 
-- (\dp|ALUL|regC|DFF1|c:8:dff32|d_input~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:8:dff32|d_input~18_combout\,
	datab => \dp|ALUL|regC|DFF1|c:8:dff32|d_input~17_combout\,
	datac => \dp|ALUL|regC|DFF1|c:8:dff32|d_input~16_combout\,
	datad => \dp|ALUL|regC|DFF1|c:8:dff32|d_input~15_combout\,
	combout => \dp|ALUL|regC|DFF1|c:8:dff32|d_input~19_combout\);

-- Location: FF_X20_Y13_N17
\dp|ALUL|regC|DFF1|c:8:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|ALUL|regC|DFF1|c:8:dff32|d_input~19_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|Cin~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regC|DFF1|c:8:dff32|dff0|q~q\);

-- Location: IOIBUF_X10_Y20_N8
\md[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => md(8),
	o => \md[8]~input_o\);

-- Location: LCCOMB_X16_Y12_N14
\dp|MEML|or_G[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|MEML|or_G\(8) = (\cu|control|MDin~combout\ & ((\dp|ALUL|regC|BF1|c:8:buf32|output~4_combout\) # ((\md_read~input_o\ & \md[8]~input_o\)))) # (!\cu|control|MDin~combout\ & (((\md_read~input_o\ & \md[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|MDin~combout\,
	datab => \dp|ALUL|regC|BF1|c:8:buf32|output~4_combout\,
	datac => \md_read~input_o\,
	datad => \md[8]~input_o\,
	combout => \dp|MEML|or_G\(8));

-- Location: FF_X16_Y12_N15
\dp|MEML|md_r|c:8:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|MEML|or_G\(8),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \dp|MEML|md_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|md_r|c:8:dff32|dff0|q~q\);

-- Location: FF_X18_Y12_N21
\dp|PCL|dff|c:8:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:8:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|control|PCin~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|PCL|dff|c:8:dff32|dff0|q~q\);

-- Location: FF_X18_Y12_N23
\dp|IRL|ir8|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:8:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|st|dec|Mux0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|IRL|ir8|dff0|q~q\);

-- Location: LCCOMB_X18_Y12_N22
\dp|ALUL|regC|BF1|c:8:buf32|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:8:buf32|output~0_combout\ = (\cu|control|PCout~combout\ & (\dp|PCL|dff|c:8:dff32|dff0|q~q\ & ((\dp|IRL|ir8|dff0|q~q\) # (\dp|IRL|c1_or_c2~0_combout\)))) # (!\cu|control|PCout~combout\ & (((\dp|IRL|ir8|dff0|q~q\) # 
-- (\dp|IRL|c1_or_c2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|PCout~combout\,
	datab => \dp|PCL|dff|c:8:dff32|dff0|q~q\,
	datac => \dp|IRL|ir8|dff0|q~q\,
	datad => \dp|IRL|c1_or_c2~0_combout\,
	combout => \dp|ALUL|regC|BF1|c:8:buf32|output~0_combout\);

-- Location: LCCOMB_X17_Y12_N20
\dp|ALUL|regC|BF1|c:8:buf32|output~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:8:buf32|output~1_combout\ = (\dp|ALUL|regC|BF1|c:8:buf32|output~0_combout\ & ((\dp|MEML|md_r|c:8:dff32|dff0|q~q\) # (!\cu|control|MDout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cu|control|MDout~0_combout\,
	datac => \dp|MEML|md_r|c:8:dff32|dff0|q~q\,
	datad => \dp|ALUL|regC|BF1|c:8:buf32|output~0_combout\,
	combout => \dp|ALUL|regC|BF1|c:8:buf32|output~1_combout\);

-- Location: LCCOMB_X17_Y10_N20
\dp|ALUL|regC|BF1|c:8:buf32|output~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:8:buf32|output~2_combout\ = (\dp|ALUL|regC|BF1|c:8:buf32|output~1_combout\ & ((\dp|ALUL|regC|DFF1|c:8:dff32|dff0|q~q\) # (!\cu|control|Cout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|Cout~combout\,
	datac => \dp|ALUL|regC|DFF1|c:8:dff32|dff0|q~q\,
	datad => \dp|ALUL|regC|BF1|c:8:buf32|output~1_combout\,
	combout => \dp|ALUL|regC|BF1|c:8:buf32|output~2_combout\);

-- Location: LCCOMB_X17_Y10_N0
\dp|ALUL|regC|BF1|c:8:buf32|output~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:8:buf32|output~4_combout\ = (\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\) # ((\dp|ALUL|regC|BF1|c:8:buf32|output~2_combout\ & ((\dp|ALUL|regC|BF1|c:8:buf32|output~3_combout\) # (!\dp|RegFIleL|r_out_OR_ba_out~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	datab => \dp|RegFIleL|r_out_OR_ba_out~5_combout\,
	datac => \dp|ALUL|regC|BF1|c:8:buf32|output~3_combout\,
	datad => \dp|ALUL|regC|BF1|c:8:buf32|output~2_combout\,
	combout => \dp|ALUL|regC|BF1|c:8:buf32|output~4_combout\);

-- Location: LCCOMB_X23_Y10_N28
\dp|ALUL|regC|DFF1|c:7:dff32|d_input~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:7:dff32|d_input~16_combout\ = (\dp|ALUL|regC|BF1|c:8:buf32|output~4_combout\ & ((\dp|ALUL|r_s|Eout~0_combout\) # ((\dp|ALUL|l_s|Eout~0_combout\ & \dp|ALUL|regC|BF1|c:6:buf32|output~4_combout\)))) # 
-- (!\dp|ALUL|regC|BF1|c:8:buf32|output~4_combout\ & (((\dp|ALUL|l_s|Eout~0_combout\ & \dp|ALUL|regC|BF1|c:6:buf32|output~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:8:buf32|output~4_combout\,
	datab => \dp|ALUL|r_s|Eout~0_combout\,
	datac => \dp|ALUL|l_s|Eout~0_combout\,
	datad => \dp|ALUL|regC|BF1|c:6:buf32|output~4_combout\,
	combout => \dp|ALUL|regC|DFF1|c:7:dff32|d_input~16_combout\);

-- Location: LCCOMB_X19_Y10_N8
\dp|ALUL|regC|DFF1|c:7:dff32|d_input~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:7:dff32|d_input~19_combout\ = (\dp|ALUL|regC|DFF1|c:7:dff32|d_input~15_combout\) # ((\dp|ALUL|regC|DFF1|c:7:dff32|d_input~18_combout\) # (\dp|ALUL|regC|DFF1|c:7:dff32|d_input~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|ALUL|regC|DFF1|c:7:dff32|d_input~15_combout\,
	datac => \dp|ALUL|regC|DFF1|c:7:dff32|d_input~18_combout\,
	datad => \dp|ALUL|regC|DFF1|c:7:dff32|d_input~16_combout\,
	combout => \dp|ALUL|regC|DFF1|c:7:dff32|d_input~19_combout\);

-- Location: FF_X19_Y10_N9
\dp|ALUL|regC|DFF1|c:7:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|ALUL|regC|DFF1|c:7:dff32|d_input~19_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|Cin~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regC|DFF1|c:7:dff32|dff0|q~q\);

-- Location: IOIBUF_X31_Y12_N1
\md[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => md(7),
	o => \md[7]~input_o\);

-- Location: LCCOMB_X16_Y12_N4
\dp|MEML|or_G[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|MEML|or_G\(7) = (\md_read~input_o\ & ((\md[7]~input_o\) # ((\dp|ALUL|regC|BF1|c:7:buf32|output~4_combout\ & \cu|control|MDin~combout\)))) # (!\md_read~input_o\ & (((\dp|ALUL|regC|BF1|c:7:buf32|output~4_combout\ & \cu|control|MDin~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \md_read~input_o\,
	datab => \md[7]~input_o\,
	datac => \dp|ALUL|regC|BF1|c:7:buf32|output~4_combout\,
	datad => \cu|control|MDin~combout\,
	combout => \dp|MEML|or_G\(7));

-- Location: FF_X16_Y12_N5
\dp|MEML|md_r|c:7:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|MEML|or_G\(7),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \dp|MEML|md_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|md_r|c:7:dff32|dff0|q~q\);

-- Location: LCCOMB_X18_Y12_N14
\dp|ALUL|regC|BF1|c:7:buf32|output~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:7:buf32|output~1_combout\ = (\dp|ALUL|regC|DFF1|c:7:dff32|dff0|q~q\ & (\cu|control|MDout~0_combout\ & ((!\dp|MEML|md_r|c:7:dff32|dff0|q~q\)))) # (!\dp|ALUL|regC|DFF1|c:7:dff32|dff0|q~q\ & ((\cu|control|Cout~combout\) # 
-- ((\cu|control|MDout~0_combout\ & !\dp|MEML|md_r|c:7:dff32|dff0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:7:dff32|dff0|q~q\,
	datab => \cu|control|MDout~0_combout\,
	datac => \cu|control|Cout~combout\,
	datad => \dp|MEML|md_r|c:7:dff32|dff0|q~q\,
	combout => \dp|ALUL|regC|BF1|c:7:buf32|output~1_combout\);

-- Location: FF_X18_Y12_N9
\dp|PCL|dff|c:7:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:7:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|control|PCin~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|PCL|dff|c:7:dff32|dff0|q~q\);

-- Location: FF_X18_Y12_N17
\dp|IRL|ir7|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:7:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|st|dec|Mux0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|IRL|ir7|dff0|q~q\);

-- Location: LCCOMB_X18_Y12_N16
\dp|ALUL|regC|BF1|c:7:buf32|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:7:buf32|output~0_combout\ = (\dp|PCL|dff|c:7:dff32|dff0|q~q\ & (((\dp|IRL|ir7|dff0|q~q\) # (\dp|IRL|c1_or_c2~0_combout\)))) # (!\dp|PCL|dff|c:7:dff32|dff0|q~q\ & (!\cu|control|PCout~combout\ & ((\dp|IRL|ir7|dff0|q~q\) # 
-- (\dp|IRL|c1_or_c2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|PCL|dff|c:7:dff32|dff0|q~q\,
	datab => \cu|control|PCout~combout\,
	datac => \dp|IRL|ir7|dff0|q~q\,
	datad => \dp|IRL|c1_or_c2~0_combout\,
	combout => \dp|ALUL|regC|BF1|c:7:buf32|output~0_combout\);

-- Location: FF_X19_Y12_N9
\dp|RegFIleL|gen_reg0|dff|c:7:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:7:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|RegFIleL|strop\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg0|dff|c:7:dff32|dff0|q~q\);

-- Location: FF_X19_Y12_N3
\dp|RegFIleL|gen_reg1|dffL|c:7:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:7:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|RegFIleL|strop\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg1|dffL|c:7:dff32|dff0|q~q\);

-- Location: LCCOMB_X19_Y12_N2
\dp|ALUL|regC|BF1|c:7:buf32|output~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:7:buf32|output~2_combout\ = (\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & (((\dp|RegFIleL|gen_reg1|dffL|c:7:dff32|dff0|q~q\)))) # (!\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & (\dp|RegFIleL|gen_reg0|dff|c:7:dff32|dff0|q~q\ & 
-- ((!\cu|control|BAout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RegFIleL|reg|input_decoder[0]~4_combout\,
	datab => \dp|RegFIleL|gen_reg0|dff|c:7:dff32|dff0|q~q\,
	datac => \dp|RegFIleL|gen_reg1|dffL|c:7:dff32|dff0|q~q\,
	datad => \cu|control|BAout~0_combout\,
	combout => \dp|ALUL|regC|BF1|c:7:buf32|output~2_combout\);

-- Location: LCCOMB_X19_Y12_N28
\dp|ALUL|regC|BF1|c:7:buf32|output~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:7:buf32|output~3_combout\ = (!\dp|ALUL|regC|BF1|c:7:buf32|output~1_combout\ & (\dp|ALUL|regC|BF1|c:7:buf32|output~0_combout\ & ((\dp|ALUL|regC|BF1|c:7:buf32|output~2_combout\) # (!\dp|RegFIleL|r_out_OR_ba_out~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:7:buf32|output~1_combout\,
	datab => \dp|RegFIleL|r_out_OR_ba_out~5_combout\,
	datac => \dp|ALUL|regC|BF1|c:7:buf32|output~0_combout\,
	datad => \dp|ALUL|regC|BF1|c:7:buf32|output~2_combout\,
	combout => \dp|ALUL|regC|BF1|c:7:buf32|output~3_combout\);

-- Location: LCCOMB_X19_Y12_N14
\dp|ALUL|regC|BF1|c:7:buf32|output~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:7:buf32|output~4_combout\ = (\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\) # (\dp|ALUL|regC|BF1|c:7:buf32|output~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	datad => \dp|ALUL|regC|BF1|c:7:buf32|output~3_combout\,
	combout => \dp|ALUL|regC|BF1|c:7:buf32|output~4_combout\);

-- Location: LCCOMB_X17_Y8_N22
\dp|ALUL|regC|DFF1|c:6:dff32|d_input~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:6:dff32|d_input~17_combout\ = (\dp|ALUL|regC|BF1|c:5:buf32|output~4_combout\ & ((\dp|ALUL|l_s|Eout~0_combout\) # ((\dp|ALUL|regC|BF1|c:7:buf32|output~4_combout\ & \dp|ALUL|r_s|Eout~0_combout\)))) # 
-- (!\dp|ALUL|regC|BF1|c:5:buf32|output~4_combout\ & (\dp|ALUL|regC|BF1|c:7:buf32|output~4_combout\ & ((\dp|ALUL|r_s|Eout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:5:buf32|output~4_combout\,
	datab => \dp|ALUL|regC|BF1|c:7:buf32|output~4_combout\,
	datac => \dp|ALUL|l_s|Eout~0_combout\,
	datad => \dp|ALUL|r_s|Eout~0_combout\,
	combout => \dp|ALUL|regC|DFF1|c:6:dff32|d_input~17_combout\);

-- Location: LCCOMB_X17_Y8_N6
\dp|ALUL|regC|DFF1|c:6:dff32|d_input~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:6:dff32|d_input~3_combout\ = (!\cu|st|con|count_i\(0) & (!\cu|st|con|count_i\(1) & ((\dp|IRL|ir28|dff0|q~q\) # (\dp|ALUL|regA|A_R|c:6:dff32|dff0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|IRL|ir28|dff0|q~q\,
	datab => \dp|ALUL|regA|A_R|c:6:dff32|dff0|q~q\,
	datac => \cu|st|con|count_i\(0),
	datad => \cu|st|con|count_i\(1),
	combout => \dp|ALUL|regC|DFF1|c:6:dff32|d_input~3_combout\);

-- Location: LCCOMB_X17_Y8_N28
\dp|ALUL|regC|DFF1|c:6:dff32|d_input~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:6:dff32|d_input~21_combout\ = (\dp|ALUL|regC|DFF1|c:6:dff32|d_input~3_combout\ & (\dp|IRL|ir31|dff0|q~q\ & (!\dp|IRL|ir30|dff0|q~q\ & \cu|st|con|count_i\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:6:dff32|d_input~3_combout\,
	datab => \dp|IRL|ir31|dff0|q~q\,
	datac => \dp|IRL|ir30|dff0|q~q\,
	datad => \cu|st|con|count_i\(2),
	combout => \dp|ALUL|regC|DFF1|c:6:dff32|d_input~21_combout\);

-- Location: LCCOMB_X17_Y8_N20
\dp|ALUL|regC|DFF1|c:6:dff32|d_input~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:6:dff32|d_input~18_combout\ = (\dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\ & ((\dp|ALUL|regA|A_R|c:6:dff32|dff0|q~q\) # ((\cu|control|NEG~combout\ & \dp|ALUL|add|temp[6]~12_combout\)))) # 
-- (!\dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\ & (\cu|control|NEG~combout\ & (\dp|ALUL|add|temp[6]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\,
	datab => \cu|control|NEG~combout\,
	datac => \dp|ALUL|add|temp[6]~12_combout\,
	datad => \dp|ALUL|regA|A_R|c:6:dff32|dff0|q~q\,
	combout => \dp|ALUL|regC|DFF1|c:6:dff32|d_input~18_combout\);

-- Location: LCCOMB_X17_Y8_N18
\dp|ALUL|regC|DFF1|c:6:dff32|d_input~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:6:dff32|d_input~19_combout\ = (\dp|ALUL|regC|DFF1|c:6:dff32|d_input~18_combout\) # ((\dp|ALUL|regC|BF1|c:6:buf32|output~4_combout\ & ((\dp|ALUL|regC|DFF1|c:6:dff32|d_input~21_combout\) # (\cu|control|CB~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:6:dff32|d_input~21_combout\,
	datab => \dp|ALUL|regC|BF1|c:6:buf32|output~4_combout\,
	datac => \cu|control|CB~combout\,
	datad => \dp|ALUL|regC|DFF1|c:6:dff32|d_input~18_combout\,
	combout => \dp|ALUL|regC|DFF1|c:6:dff32|d_input~19_combout\);

-- Location: LCCOMB_X17_Y8_N30
\dp|ALUL|regC|DFF1|c:6:dff32|d_input~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:6:dff32|d_input~20_combout\ = (\dp|ALUL|regC|DFF1|c:6:dff32|d_input~15_combout\) # ((\dp|ALUL|regC|DFF1|c:6:dff32|d_input~16_combout\) # ((\dp|ALUL|regC|DFF1|c:6:dff32|d_input~17_combout\) # 
-- (\dp|ALUL|regC|DFF1|c:6:dff32|d_input~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:6:dff32|d_input~15_combout\,
	datab => \dp|ALUL|regC|DFF1|c:6:dff32|d_input~16_combout\,
	datac => \dp|ALUL|regC|DFF1|c:6:dff32|d_input~17_combout\,
	datad => \dp|ALUL|regC|DFF1|c:6:dff32|d_input~19_combout\,
	combout => \dp|ALUL|regC|DFF1|c:6:dff32|d_input~20_combout\);

-- Location: FF_X17_Y8_N31
\dp|ALUL|regC|DFF1|c:6:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|ALUL|regC|DFF1|c:6:dff32|d_input~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|Cin~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regC|DFF1|c:6:dff32|dff0|q~q\);

-- Location: IOIBUF_X10_Y15_N1
\md[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => md(6),
	o => \md[6]~input_o\);

-- Location: LCCOMB_X16_Y12_N22
\dp|MEML|or_G[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|MEML|or_G\(6) = (\cu|control|MDin~combout\ & ((\dp|ALUL|regC|BF1|c:6:buf32|output~4_combout\) # ((\md_read~input_o\ & \md[6]~input_o\)))) # (!\cu|control|MDin~combout\ & (((\md_read~input_o\ & \md[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|MDin~combout\,
	datab => \dp|ALUL|regC|BF1|c:6:buf32|output~4_combout\,
	datac => \md_read~input_o\,
	datad => \md[6]~input_o\,
	combout => \dp|MEML|or_G\(6));

-- Location: FF_X16_Y12_N23
\dp|MEML|md_r|c:6:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|MEML|or_G\(6),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \dp|MEML|md_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|md_r|c:6:dff32|dff0|q~q\);

-- Location: FF_X18_Y12_N13
\dp|PCL|dff|c:6:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:6:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|control|PCin~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|PCL|dff|c:6:dff32|dff0|q~q\);

-- Location: FF_X18_Y12_N11
\dp|IRL|ir6|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:6:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|st|dec|Mux0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|IRL|ir6|dff0|q~q\);

-- Location: LCCOMB_X18_Y12_N10
\dp|ALUL|regC|BF1|c:6:buf32|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:6:buf32|output~0_combout\ = (\dp|PCL|dff|c:6:dff32|dff0|q~q\ & ((\dp|IRL|c1_or_c2~0_combout\) # ((\dp|IRL|ir6|dff0|q~q\)))) # (!\dp|PCL|dff|c:6:dff32|dff0|q~q\ & (!\cu|control|PCout~combout\ & ((\dp|IRL|c1_or_c2~0_combout\) # 
-- (\dp|IRL|ir6|dff0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|PCL|dff|c:6:dff32|dff0|q~q\,
	datab => \dp|IRL|c1_or_c2~0_combout\,
	datac => \dp|IRL|ir6|dff0|q~q\,
	datad => \cu|control|PCout~combout\,
	combout => \dp|ALUL|regC|BF1|c:6:buf32|output~0_combout\);

-- Location: LCCOMB_X18_Y12_N8
\dp|ALUL|regC|BF1|c:6:buf32|output~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:6:buf32|output~1_combout\ = (\dp|ALUL|regC|BF1|c:6:buf32|output~0_combout\ & ((\dp|MEML|md_r|c:6:dff32|dff0|q~q\) # (!\cu|control|MDout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|MEML|md_r|c:6:dff32|dff0|q~q\,
	datab => \cu|control|MDout~0_combout\,
	datad => \dp|ALUL|regC|BF1|c:6:buf32|output~0_combout\,
	combout => \dp|ALUL|regC|BF1|c:6:buf32|output~1_combout\);

-- Location: LCCOMB_X18_Y12_N6
\dp|ALUL|regC|BF1|c:6:buf32|output~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:6:buf32|output~2_combout\ = (\dp|ALUL|regC|BF1|c:6:buf32|output~1_combout\ & ((\dp|ALUL|regC|DFF1|c:6:dff32|dff0|q~q\) # (!\cu|control|Cout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:6:dff32|dff0|q~q\,
	datab => \cu|control|Cout~combout\,
	datac => \dp|ALUL|regC|BF1|c:6:buf32|output~1_combout\,
	combout => \dp|ALUL|regC|BF1|c:6:buf32|output~2_combout\);

-- Location: LCCOMB_X19_Y11_N26
\dp|ALUL|regC|BF1|c:6:buf32|output~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:6:buf32|output~4_combout\ = (\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\) # ((\dp|ALUL|regC|BF1|c:6:buf32|output~2_combout\ & ((\dp|ALUL|regC|BF1|c:6:buf32|output~3_combout\) # (!\dp|RegFIleL|r_out_OR_ba_out~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:6:buf32|output~3_combout\,
	datab => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	datac => \dp|RegFIleL|r_out_OR_ba_out~5_combout\,
	datad => \dp|ALUL|regC|BF1|c:6:buf32|output~2_combout\,
	combout => \dp|ALUL|regC|BF1|c:6:buf32|output~4_combout\);

-- Location: LCCOMB_X16_Y8_N10
\dp|ALUL|regC|DFF1|c:5:dff32|d_input~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:5:dff32|d_input~17_combout\ = (\dp|ALUL|l_s|Eout~0_combout\ & ((\dp|ALUL|regC|BF1|c:4:buf32|output~4_combout\) # ((\dp|ALUL|regC|BF1|c:6:buf32|output~4_combout\ & \dp|ALUL|r_s|Eout~0_combout\)))) # (!\dp|ALUL|l_s|Eout~0_combout\ & 
-- (((\dp|ALUL|regC|BF1|c:6:buf32|output~4_combout\ & \dp|ALUL|r_s|Eout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|l_s|Eout~0_combout\,
	datab => \dp|ALUL|regC|BF1|c:4:buf32|output~4_combout\,
	datac => \dp|ALUL|regC|BF1|c:6:buf32|output~4_combout\,
	datad => \dp|ALUL|r_s|Eout~0_combout\,
	combout => \dp|ALUL|regC|DFF1|c:5:dff32|d_input~17_combout\);

-- Location: LCCOMB_X18_Y8_N24
\dp|ALUL|add|b_sig[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|b_sig\(5) = \dp|ALUL|add|b_inv~combout\ $ (\dp|ALUL|regC|BF1|c:5:buf32|output~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|ALUL|add|b_inv~combout\,
	datad => \dp|ALUL|regC|BF1|c:5:buf32|output~4_combout\,
	combout => \dp|ALUL|add|b_sig\(5));

-- Location: LCCOMB_X18_Y8_N8
\dp|ALUL|regC|DFF1|c:5:dff32|d_input~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:5:dff32|d_input~15_combout\ = (\dp|ALUL|add|add_E~9_combout\ & (\dp|ALUL|add|a_sig\(5) $ (\dp|ALUL|add|add_32|Y:4:full32|c_out~0_combout\ $ (\dp|ALUL|add|b_sig\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|add_E~9_combout\,
	datab => \dp|ALUL|add|a_sig\(5),
	datac => \dp|ALUL|add|add_32|Y:4:full32|c_out~0_combout\,
	datad => \dp|ALUL|add|b_sig\(5),
	combout => \dp|ALUL|regC|DFF1|c:5:dff32|d_input~15_combout\);

-- Location: LCCOMB_X17_Y8_N16
\dp|ALUL|regC|DFF1|c:5:dff32|d_input~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:5:dff32|d_input~20_combout\ = (\dp|ALUL|regC|DFF1|c:5:dff32|d_input~19_combout\) # ((\dp|ALUL|regC|DFF1|c:5:dff32|d_input~16_combout\) # ((\dp|ALUL|regC|DFF1|c:5:dff32|d_input~17_combout\) # 
-- (\dp|ALUL|regC|DFF1|c:5:dff32|d_input~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:5:dff32|d_input~19_combout\,
	datab => \dp|ALUL|regC|DFF1|c:5:dff32|d_input~16_combout\,
	datac => \dp|ALUL|regC|DFF1|c:5:dff32|d_input~17_combout\,
	datad => \dp|ALUL|regC|DFF1|c:5:dff32|d_input~15_combout\,
	combout => \dp|ALUL|regC|DFF1|c:5:dff32|d_input~20_combout\);

-- Location: FF_X17_Y8_N17
\dp|ALUL|regC|DFF1|c:5:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|ALUL|regC|DFF1|c:5:dff32|d_input~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|Cin~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regC|DFF1|c:5:dff32|dff0|q~q\);

-- Location: IOIBUF_X10_Y20_N22
\md[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => md(5),
	o => \md[5]~input_o\);

-- Location: LCCOMB_X16_Y12_N8
\dp|MEML|or_G[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|MEML|or_G\(5) = (\md[5]~input_o\ & ((\md_read~input_o\) # ((\dp|ALUL|regC|BF1|c:5:buf32|output~4_combout\ & \cu|control|MDin~combout\)))) # (!\md[5]~input_o\ & (\dp|ALUL|regC|BF1|c:5:buf32|output~4_combout\ & ((\cu|control|MDin~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \md[5]~input_o\,
	datab => \dp|ALUL|regC|BF1|c:5:buf32|output~4_combout\,
	datac => \md_read~input_o\,
	datad => \cu|control|MDin~combout\,
	combout => \dp|MEML|or_G\(5));

-- Location: FF_X16_Y12_N9
\dp|MEML|md_r|c:5:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|MEML|or_G\(5),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \dp|MEML|md_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|md_r|c:5:dff32|dff0|q~q\);

-- Location: FF_X18_Y12_N5
\dp|PCL|dff|c:5:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:5:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|control|PCin~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|PCL|dff|c:5:dff32|dff0|q~q\);

-- Location: FF_X18_Y12_N19
\dp|IRL|ir5|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:5:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|st|dec|Mux0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|IRL|ir5|dff0|q~q\);

-- Location: LCCOMB_X18_Y12_N18
\dp|ALUL|regC|BF1|c:5:buf32|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:5:buf32|output~0_combout\ = (\cu|control|PCout~combout\ & (\dp|PCL|dff|c:5:dff32|dff0|q~q\ & ((\dp|IRL|ir5|dff0|q~q\) # (\dp|IRL|c1_or_c2~0_combout\)))) # (!\cu|control|PCout~combout\ & (((\dp|IRL|ir5|dff0|q~q\) # 
-- (\dp|IRL|c1_or_c2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|PCout~combout\,
	datab => \dp|PCL|dff|c:5:dff32|dff0|q~q\,
	datac => \dp|IRL|ir5|dff0|q~q\,
	datad => \dp|IRL|c1_or_c2~0_combout\,
	combout => \dp|ALUL|regC|BF1|c:5:buf32|output~0_combout\);

-- Location: LCCOMB_X18_Y12_N28
\dp|ALUL|regC|BF1|c:5:buf32|output~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:5:buf32|output~1_combout\ = (\dp|ALUL|regC|BF1|c:5:buf32|output~0_combout\ & ((\dp|MEML|md_r|c:5:dff32|dff0|q~q\) # (!\cu|control|MDout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cu|control|MDout~0_combout\,
	datac => \dp|MEML|md_r|c:5:dff32|dff0|q~q\,
	datad => \dp|ALUL|regC|BF1|c:5:buf32|output~0_combout\,
	combout => \dp|ALUL|regC|BF1|c:5:buf32|output~1_combout\);

-- Location: LCCOMB_X18_Y12_N2
\dp|ALUL|regC|BF1|c:5:buf32|output~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:5:buf32|output~2_combout\ = (\dp|ALUL|regC|BF1|c:5:buf32|output~1_combout\ & ((\dp|ALUL|regC|DFF1|c:5:dff32|dff0|q~q\) # (!\cu|control|Cout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|ALUL|regC|DFF1|c:5:dff32|dff0|q~q\,
	datac => \cu|control|Cout~combout\,
	datad => \dp|ALUL|regC|BF1|c:5:buf32|output~1_combout\,
	combout => \dp|ALUL|regC|BF1|c:5:buf32|output~2_combout\);

-- Location: LCCOMB_X19_Y11_N8
\dp|ALUL|regC|BF1|c:5:buf32|output~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:5:buf32|output~4_combout\ = (\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\) # ((\dp|ALUL|regC|BF1|c:5:buf32|output~2_combout\ & ((\dp|ALUL|regC|BF1|c:5:buf32|output~3_combout\) # (!\dp|RegFIleL|r_out_OR_ba_out~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:5:buf32|output~3_combout\,
	datab => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	datac => \dp|RegFIleL|r_out_OR_ba_out~5_combout\,
	datad => \dp|ALUL|regC|BF1|c:5:buf32|output~2_combout\,
	combout => \dp|ALUL|regC|BF1|c:5:buf32|output~4_combout\);

-- Location: LCCOMB_X20_Y12_N16
\dp|ALUL|regC|DFF1|c:4:dff32|d_input~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:4:dff32|d_input~17_combout\ = (\dp|ALUL|r_s|Eout~0_combout\ & ((\dp|ALUL|regC|BF1|c:5:buf32|output~4_combout\) # ((\dp|ALUL|l_s|Eout~0_combout\ & \dp|ALUL|regC|BF1|c:3:buf32|output~4_combout\)))) # (!\dp|ALUL|r_s|Eout~0_combout\ & 
-- (\dp|ALUL|l_s|Eout~0_combout\ & (\dp|ALUL|regC|BF1|c:3:buf32|output~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|r_s|Eout~0_combout\,
	datab => \dp|ALUL|l_s|Eout~0_combout\,
	datac => \dp|ALUL|regC|BF1|c:3:buf32|output~4_combout\,
	datad => \dp|ALUL|regC|BF1|c:5:buf32|output~4_combout\,
	combout => \dp|ALUL|regC|DFF1|c:4:dff32|d_input~17_combout\);

-- Location: LCCOMB_X20_Y12_N4
\dp|ALUL|regC|DFF1|c:4:dff32|d_input~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:4:dff32|d_input~20_combout\ = (\dp|ALUL|regC|DFF1|c:4:dff32|d_input~16_combout\) # ((\dp|ALUL|regC|DFF1|c:4:dff32|d_input~15_combout\) # ((\dp|ALUL|regC|DFF1|c:4:dff32|d_input~19_combout\) # 
-- (\dp|ALUL|regC|DFF1|c:4:dff32|d_input~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:4:dff32|d_input~16_combout\,
	datab => \dp|ALUL|regC|DFF1|c:4:dff32|d_input~15_combout\,
	datac => \dp|ALUL|regC|DFF1|c:4:dff32|d_input~19_combout\,
	datad => \dp|ALUL|regC|DFF1|c:4:dff32|d_input~17_combout\,
	combout => \dp|ALUL|regC|DFF1|c:4:dff32|d_input~20_combout\);

-- Location: FF_X20_Y12_N5
\dp|ALUL|regC|DFF1|c:4:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|ALUL|regC|DFF1|c:4:dff32|d_input~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|Cin~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regC|DFF1|c:4:dff32|dff0|q~q\);

-- Location: LCCOMB_X17_Y12_N4
\dp|ALUL|regC|BF1|c:4:buf32|output~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:4:buf32|output~1_combout\ = (\cu|control|Cout~combout\ & (((!\dp|MEML|md_r|c:4:dff32|dff0|q~q\ & \cu|control|MDout~0_combout\)) # (!\dp|ALUL|regC|DFF1|c:4:dff32|dff0|q~q\))) # (!\cu|control|Cout~combout\ & 
-- (!\dp|MEML|md_r|c:4:dff32|dff0|q~q\ & ((\cu|control|MDout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|Cout~combout\,
	datab => \dp|MEML|md_r|c:4:dff32|dff0|q~q\,
	datac => \dp|ALUL|regC|DFF1|c:4:dff32|dff0|q~q\,
	datad => \cu|control|MDout~0_combout\,
	combout => \dp|ALUL|regC|BF1|c:4:buf32|output~1_combout\);

-- Location: LCCOMB_X17_Y14_N20
\dp|RegFIleL|gen_reg0|dff|c:4:dff32|dff0|q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|RegFIleL|gen_reg0|dff|c:4:dff32|dff0|q~feeder_combout\ = \dp|ALUL|regC|BF1|c:4:buf32|output~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|ALUL|regC|BF1|c:4:buf32|output~4_combout\,
	combout => \dp|RegFIleL|gen_reg0|dff|c:4:dff32|dff0|q~feeder_combout\);

-- Location: FF_X17_Y14_N21
\dp|RegFIleL|gen_reg0|dff|c:4:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|RegFIleL|gen_reg0|dff|c:4:dff32|dff0|q~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \dp|RegFIleL|strop\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg0|dff|c:4:dff32|dff0|q~q\);

-- Location: FF_X17_Y12_N7
\dp|RegFIleL|gen_reg1|dffL|c:4:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:4:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|RegFIleL|strop\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg1|dffL|c:4:dff32|dff0|q~q\);

-- Location: LCCOMB_X17_Y12_N6
\dp|ALUL|regC|BF1|c:4:buf32|output~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:4:buf32|output~2_combout\ = (\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & (((\dp|RegFIleL|gen_reg1|dffL|c:4:dff32|dff0|q~q\)))) # (!\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & (!\cu|control|BAout~0_combout\ & 
-- (\dp|RegFIleL|gen_reg0|dff|c:4:dff32|dff0|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|BAout~0_combout\,
	datab => \dp|RegFIleL|gen_reg0|dff|c:4:dff32|dff0|q~q\,
	datac => \dp|RegFIleL|gen_reg1|dffL|c:4:dff32|dff0|q~q\,
	datad => \dp|RegFIleL|reg|input_decoder[0]~4_combout\,
	combout => \dp|ALUL|regC|BF1|c:4:buf32|output~2_combout\);

-- Location: LCCOMB_X17_Y12_N0
\dp|ALUL|regC|BF1|c:4:buf32|output~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:4:buf32|output~3_combout\ = (\dp|ALUL|regC|BF1|c:4:buf32|output~0_combout\ & (!\dp|ALUL|regC|BF1|c:4:buf32|output~1_combout\ & ((\dp|ALUL|regC|BF1|c:4:buf32|output~2_combout\) # (!\dp|RegFIleL|r_out_OR_ba_out~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:4:buf32|output~0_combout\,
	datab => \dp|RegFIleL|r_out_OR_ba_out~5_combout\,
	datac => \dp|ALUL|regC|BF1|c:4:buf32|output~1_combout\,
	datad => \dp|ALUL|regC|BF1|c:4:buf32|output~2_combout\,
	combout => \dp|ALUL|regC|BF1|c:4:buf32|output~3_combout\);

-- Location: LCCOMB_X17_Y12_N22
\dp|ALUL|regC|BF1|c:4:buf32|output~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:4:buf32|output~4_combout\ = (\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\) # (\dp|ALUL|regC|BF1|c:4:buf32|output~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	datad => \dp|ALUL|regC|BF1|c:4:buf32|output~3_combout\,
	combout => \dp|ALUL|regC|BF1|c:4:buf32|output~4_combout\);

-- Location: LCCOMB_X17_Y9_N8
\dp|ALUL|regC|DFF1|c:3:dff32|d_input~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:3:dff32|d_input~17_combout\ = (\dp|ALUL|regC|BF1|c:4:buf32|output~4_combout\ & ((\dp|ALUL|r_s|Eout~0_combout\) # ((\dp|ALUL|regC|BF1|c:2:buf32|output~3_combout\ & \dp|ALUL|l_s|Eout~0_combout\)))) # 
-- (!\dp|ALUL|regC|BF1|c:4:buf32|output~4_combout\ & (\dp|ALUL|regC|BF1|c:2:buf32|output~3_combout\ & ((\dp|ALUL|l_s|Eout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:4:buf32|output~4_combout\,
	datab => \dp|ALUL|regC|BF1|c:2:buf32|output~3_combout\,
	datac => \dp|ALUL|r_s|Eout~0_combout\,
	datad => \dp|ALUL|l_s|Eout~0_combout\,
	combout => \dp|ALUL|regC|DFF1|c:3:dff32|d_input~17_combout\);

-- Location: LCCOMB_X17_Y9_N12
\dp|ALUL|regC|DFF1|c:3:dff32|d_input~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:3:dff32|d_input~19_combout\ = (\dp|ALUL|regC|DFF1|c:3:dff32|d_input~18_combout\) # ((\dp|ALUL|regC|DFF1|c:3:dff32|d_input~16_combout\) # (\dp|ALUL|regC|DFF1|c:3:dff32|d_input~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|ALUL|regC|DFF1|c:3:dff32|d_input~18_combout\,
	datac => \dp|ALUL|regC|DFF1|c:3:dff32|d_input~16_combout\,
	datad => \dp|ALUL|regC|DFF1|c:3:dff32|d_input~17_combout\,
	combout => \dp|ALUL|regC|DFF1|c:3:dff32|d_input~19_combout\);

-- Location: LCCOMB_X17_Y9_N6
\dp|ALUL|regC|DFF1|c:3:dff32|d_input~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:3:dff32|d_input~15_combout\ = \dp|ALUL|add|b_inv~combout\ $ (\dp|ALUL|add|add_32|Y:2:full32|c_out~0_combout\ $ (\dp|ALUL|add|a_sig\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|b_inv~combout\,
	datab => \dp|ALUL|add|add_32|Y:2:full32|c_out~0_combout\,
	datad => \dp|ALUL|add|a_sig\(3),
	combout => \dp|ALUL|regC|DFF1|c:3:dff32|d_input~15_combout\);

-- Location: LCCOMB_X17_Y9_N2
\dp|ALUL|regC|DFF1|c:3:dff32|d_input~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:3:dff32|d_input~20_combout\ = (\dp|ALUL|regC|DFF1|c:3:dff32|d_input~19_combout\) # ((\dp|ALUL|add|add_E~9_combout\ & (\dp|ALUL|regC|BF1|c:3:buf32|output~4_combout\ $ (\dp|ALUL|regC|DFF1|c:3:dff32|d_input~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:3:dff32|d_input~19_combout\,
	datab => \dp|ALUL|add|add_E~9_combout\,
	datac => \dp|ALUL|regC|BF1|c:3:buf32|output~4_combout\,
	datad => \dp|ALUL|regC|DFF1|c:3:dff32|d_input~15_combout\,
	combout => \dp|ALUL|regC|DFF1|c:3:dff32|d_input~20_combout\);

-- Location: FF_X17_Y9_N3
\dp|ALUL|regC|DFF1|c:3:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|ALUL|regC|DFF1|c:3:dff32|d_input~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|Cin~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regC|DFF1|c:3:dff32|dff0|q~q\);

-- Location: IOIBUF_X10_Y15_N8
\md[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => md(3),
	o => \md[3]~input_o\);

-- Location: LCCOMB_X16_Y12_N24
\dp|MEML|or_G[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|MEML|or_G\(3) = (\md[3]~input_o\ & ((\md_read~input_o\) # ((\dp|ALUL|regC|BF1|c:3:buf32|output~4_combout\ & \cu|control|MDin~combout\)))) # (!\md[3]~input_o\ & (\dp|ALUL|regC|BF1|c:3:buf32|output~4_combout\ & ((\cu|control|MDin~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \md[3]~input_o\,
	datab => \dp|ALUL|regC|BF1|c:3:buf32|output~4_combout\,
	datac => \md_read~input_o\,
	datad => \cu|control|MDin~combout\,
	combout => \dp|MEML|or_G\(3));

-- Location: FF_X16_Y12_N25
\dp|MEML|md_r|c:3:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|MEML|or_G\(3),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \dp|MEML|md_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|md_r|c:3:dff32|dff0|q~q\);

-- Location: FF_X16_Y13_N17
\dp|PCL|dff|c:3:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:3:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|control|PCin~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|PCL|dff|c:3:dff32|dff0|q~q\);

-- Location: FF_X16_Y13_N19
\dp|IRL|ir3|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:3:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|st|dec|Mux0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|IRL|ir3|dff0|q~q\);

-- Location: LCCOMB_X16_Y13_N18
\dp|ALUL|regC|BF1|c:3:buf32|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:3:buf32|output~0_combout\ = (\dp|PCL|dff|c:3:dff32|dff0|q~q\ & (((\dp|IRL|ir3|dff0|q~q\) # (\dp|IRL|c1_or_c2~0_combout\)))) # (!\dp|PCL|dff|c:3:dff32|dff0|q~q\ & (!\cu|control|PCout~combout\ & ((\dp|IRL|ir3|dff0|q~q\) # 
-- (\dp|IRL|c1_or_c2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|PCL|dff|c:3:dff32|dff0|q~q\,
	datab => \cu|control|PCout~combout\,
	datac => \dp|IRL|ir3|dff0|q~q\,
	datad => \dp|IRL|c1_or_c2~0_combout\,
	combout => \dp|ALUL|regC|BF1|c:3:buf32|output~0_combout\);

-- Location: LCCOMB_X17_Y13_N6
\dp|ALUL|regC|BF1|c:3:buf32|output~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:3:buf32|output~1_combout\ = (\dp|ALUL|regC|BF1|c:3:buf32|output~0_combout\ & ((\dp|MEML|md_r|c:3:dff32|dff0|q~q\) # (!\cu|control|MDout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cu|control|MDout~0_combout\,
	datac => \dp|MEML|md_r|c:3:dff32|dff0|q~q\,
	datad => \dp|ALUL|regC|BF1|c:3:buf32|output~0_combout\,
	combout => \dp|ALUL|regC|BF1|c:3:buf32|output~1_combout\);

-- Location: LCCOMB_X17_Y13_N0
\dp|ALUL|regC|BF1|c:3:buf32|output~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:3:buf32|output~2_combout\ = (\dp|ALUL|regC|BF1|c:3:buf32|output~1_combout\ & ((\dp|ALUL|regC|DFF1|c:3:dff32|dff0|q~q\) # (!\cu|control|Cout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|Cout~combout\,
	datac => \dp|ALUL|regC|DFF1|c:3:dff32|dff0|q~q\,
	datad => \dp|ALUL|regC|BF1|c:3:buf32|output~1_combout\,
	combout => \dp|ALUL|regC|BF1|c:3:buf32|output~2_combout\);

-- Location: LCCOMB_X17_Y13_N4
\dp|ALUL|regC|BF1|c:3:buf32|output~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:3:buf32|output~4_combout\ = (\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\) # ((\dp|ALUL|regC|BF1|c:3:buf32|output~2_combout\ & ((\dp|ALUL|regC|BF1|c:3:buf32|output~3_combout\) # (!\dp|RegFIleL|r_out_OR_ba_out~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RegFIleL|r_out_OR_ba_out~5_combout\,
	datab => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	datac => \dp|ALUL|regC|BF1|c:3:buf32|output~3_combout\,
	datad => \dp|ALUL|regC|BF1|c:3:buf32|output~2_combout\,
	combout => \dp|ALUL|regC|BF1|c:3:buf32|output~4_combout\);

-- Location: LCCOMB_X17_Y9_N0
\dp|ALUL|regC|DFF1|c:2:dff32|d_input~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:2:dff32|d_input~16_combout\ = (\dp|ALUL|regC|BF1|c:1:buf32|output~4_combout\ & ((\dp|ALUL|l_s|Eout~0_combout\) # ((\dp|ALUL|regC|BF1|c:3:buf32|output~4_combout\ & \dp|ALUL|r_s|Eout~0_combout\)))) # 
-- (!\dp|ALUL|regC|BF1|c:1:buf32|output~4_combout\ & (\dp|ALUL|regC|BF1|c:3:buf32|output~4_combout\ & (\dp|ALUL|r_s|Eout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:1:buf32|output~4_combout\,
	datab => \dp|ALUL|regC|BF1|c:3:buf32|output~4_combout\,
	datac => \dp|ALUL|r_s|Eout~0_combout\,
	datad => \dp|ALUL|l_s|Eout~0_combout\,
	combout => \dp|ALUL|regC|DFF1|c:2:dff32|d_input~16_combout\);

-- Location: LCCOMB_X17_Y10_N8
\dp|ALUL|add|add_32|Y:2:full32|second_HA|s~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|add_32|Y:2:full32|second_HA|s~0_combout\ = \dp|ALUL|add|add_32|Y:1:full32|c_out~0_combout\ $ (((\cu|st|dec|Mux0~5_combout\) # (\dp|ALUL|regA|A_R|c:2:dff32|dff0|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|dec|Mux0~5_combout\,
	datac => \dp|ALUL|regA|A_R|c:2:dff32|dff0|q~q\,
	datad => \dp|ALUL|add|add_32|Y:1:full32|c_out~0_combout\,
	combout => \dp|ALUL|add|add_32|Y:2:full32|second_HA|s~0_combout\);

-- Location: FF_X17_Y9_N25
\dp|RegFIleL|gen_reg0|dff|c:2:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:2:buf32|output~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|RegFIleL|strop\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg0|dff|c:2:dff32|dff0|q~q\);

-- Location: LCCOMB_X17_Y9_N24
\dp|RegFIleL|gen_reg0|BFF_in[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|RegFIleL|gen_reg0|BFF_in\(2) = (\dp|RegFIleL|gen_reg0|dff|c:2:dff32|dff0|q~q\ & ((\cu|control|Grb~0_combout\) # (!\cu|st|dec|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|Grb~0_combout\,
	datac => \dp|RegFIleL|gen_reg0|dff|c:2:dff32|dff0|q~q\,
	datad => \cu|st|dec|Mux0~3_combout\,
	combout => \dp|RegFIleL|gen_reg0|BFF_in\(2));

-- Location: FF_X17_Y10_N17
\dp|RegFIleL|gen_reg1|dffL|c:2:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:2:buf32|output~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|RegFIleL|strop\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg1|dffL|c:2:dff32|dff0|q~q\);

-- Location: LCCOMB_X17_Y10_N16
\dp|ALUL|regC|BF1|c:2:buf32|output~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:2:buf32|output~2_combout\ = ((\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & ((\dp|RegFIleL|gen_reg1|dffL|c:2:dff32|dff0|q~q\))) # (!\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & (\dp|RegFIleL|gen_reg0|BFF_in\(2)))) # 
-- (!\dp|RegFIleL|r_out_OR_ba_out~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RegFIleL|gen_reg0|BFF_in\(2),
	datab => \dp|RegFIleL|r_out_OR_ba_out~5_combout\,
	datac => \dp|RegFIleL|gen_reg1|dffL|c:2:dff32|dff0|q~q\,
	datad => \dp|RegFIleL|reg|input_decoder[0]~4_combout\,
	combout => \dp|ALUL|regC|BF1|c:2:buf32|output~2_combout\);

-- Location: LCCOMB_X17_Y10_N26
\dp|ALUL|add|b_sig[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|b_sig\(2) = \dp|ALUL|add|b_inv~combout\ $ (((\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\) # ((\dp|ALUL|regC|BF1|c:2:buf32|output~1_combout\ & \dp|ALUL|regC|BF1|c:2:buf32|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	datab => \dp|ALUL|add|b_inv~combout\,
	datac => \dp|ALUL|regC|BF1|c:2:buf32|output~1_combout\,
	datad => \dp|ALUL|regC|BF1|c:2:buf32|output~2_combout\,
	combout => \dp|ALUL|add|b_sig\(2));

-- Location: LCCOMB_X17_Y9_N26
\dp|ALUL|regC|DFF1|c:2:dff32|d_input~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:2:dff32|d_input~15_combout\ = (\dp|ALUL|add|b_sig\(2) & ((\cu|control|NOTOP~combout\) # ((!\dp|ALUL|add|add_32|Y:2:full32|second_HA|s~0_combout\ & \dp|ALUL|add|add_E~9_combout\)))) # (!\dp|ALUL|add|b_sig\(2) & 
-- (\dp|ALUL|add|add_32|Y:2:full32|second_HA|s~0_combout\ & (\dp|ALUL|add|add_E~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|add_32|Y:2:full32|second_HA|s~0_combout\,
	datab => \dp|ALUL|add|b_sig\(2),
	datac => \dp|ALUL|add|add_E~9_combout\,
	datad => \cu|control|NOTOP~combout\,
	combout => \dp|ALUL|regC|DFF1|c:2:dff32|d_input~15_combout\);

-- Location: LCCOMB_X17_Y10_N6
\dp|ALUL|regC|DFF1|c:2:dff32|d_input~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:2:dff32|d_input~18_combout\ = (\dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\ & ((\dp|ALUL|regA|A_R|c:2:dff32|dff0|q~q\) # ((\dp|ALUL|add|temp[2]~4_combout\ & \cu|control|NEG~combout\)))) # 
-- (!\dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\ & (((\dp|ALUL|add|temp[2]~4_combout\ & \cu|control|NEG~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\,
	datab => \dp|ALUL|regA|A_R|c:2:dff32|dff0|q~q\,
	datac => \dp|ALUL|add|temp[2]~4_combout\,
	datad => \cu|control|NEG~combout\,
	combout => \dp|ALUL|regC|DFF1|c:2:dff32|d_input~18_combout\);

-- Location: LCCOMB_X17_Y9_N30
\dp|ALUL|regC|DFF1|c:2:dff32|d_input~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:2:dff32|d_input~19_combout\ = (\dp|ALUL|regC|DFF1|c:2:dff32|d_input~17_combout\) # ((\dp|ALUL|regC|DFF1|c:2:dff32|d_input~16_combout\) # ((\dp|ALUL|regC|DFF1|c:2:dff32|d_input~15_combout\) # 
-- (\dp|ALUL|regC|DFF1|c:2:dff32|d_input~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:2:dff32|d_input~17_combout\,
	datab => \dp|ALUL|regC|DFF1|c:2:dff32|d_input~16_combout\,
	datac => \dp|ALUL|regC|DFF1|c:2:dff32|d_input~15_combout\,
	datad => \dp|ALUL|regC|DFF1|c:2:dff32|d_input~18_combout\,
	combout => \dp|ALUL|regC|DFF1|c:2:dff32|d_input~19_combout\);

-- Location: FF_X17_Y9_N31
\dp|ALUL|regC|DFF1|c:2:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|ALUL|regC|DFF1|c:2:dff32|d_input~19_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|Cin~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regC|DFF1|c:2:dff32|dff0|q~q\);

-- Location: FF_X16_Y10_N23
\dp|IRL|ir2|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:2:buf32|output~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|st|dec|Mux0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|IRL|ir2|dff0|q~q\);

-- Location: FF_X16_Y10_N5
\dp|PCL|dff|c:2:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:2:buf32|output~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|control|PCin~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|PCL|dff|c:2:dff32|dff0|q~q\);

-- Location: LCCOMB_X16_Y10_N4
\dp|ALUL|regC|BF1|c:2:buf32|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:2:buf32|output~0_combout\ = (\cu|control|PCout~combout\ & (\dp|PCL|dff|c:2:dff32|dff0|q~q\ & ((\dp|IRL|ir2|dff0|q~q\) # (\dp|IRL|c1_or_c2~0_combout\)))) # (!\cu|control|PCout~combout\ & ((\dp|IRL|ir2|dff0|q~q\) # 
-- ((\dp|IRL|c1_or_c2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|PCout~combout\,
	datab => \dp|IRL|ir2|dff0|q~q\,
	datac => \dp|PCL|dff|c:2:dff32|dff0|q~q\,
	datad => \dp|IRL|c1_or_c2~0_combout\,
	combout => \dp|ALUL|regC|BF1|c:2:buf32|output~0_combout\);

-- Location: LCCOMB_X16_Y10_N16
\dp|ALUL|regC|BF1|c:2:buf32|output~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:2:buf32|output~1_combout\ = (\dp|MEML|buff1|c:2:buf32|output~0_combout\ & (\dp|ALUL|regC|BF1|c:2:buf32|output~0_combout\ & ((\dp|ALUL|regC|DFF1|c:2:dff32|dff0|q~q\) # (!\cu|control|Cout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|MEML|buff1|c:2:buf32|output~0_combout\,
	datab => \dp|ALUL|regC|DFF1|c:2:dff32|dff0|q~q\,
	datac => \dp|ALUL|regC|BF1|c:2:buf32|output~0_combout\,
	datad => \cu|control|Cout~combout\,
	combout => \dp|ALUL|regC|BF1|c:2:buf32|output~1_combout\);

-- Location: LCCOMB_X17_Y10_N22
\dp|ALUL|regC|BF1|c:2:buf32|output~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:2:buf32|output~3_combout\ = (\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\) # ((\dp|ALUL|regC|BF1|c:2:buf32|output~1_combout\ & \dp|ALUL|regC|BF1|c:2:buf32|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	datac => \dp|ALUL|regC|BF1|c:2:buf32|output~1_combout\,
	datad => \dp|ALUL|regC|BF1|c:2:buf32|output~2_combout\,
	combout => \dp|ALUL|regC|BF1|c:2:buf32|output~3_combout\);

-- Location: LCCOMB_X15_Y10_N28
\dp|ALUL|regC|DFF1|c:1:dff32|d_input~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:1:dff32|d_input~16_combout\ = (\dp|ALUL|r_s|Eout~0_combout\ & ((\dp|ALUL|regC|BF1|c:2:buf32|output~3_combout\) # ((\dp|ALUL|l_s|Eout~0_combout\ & \dp|ALUL|regC|BF1|c:0:buf32|output~6_combout\)))) # (!\dp|ALUL|r_s|Eout~0_combout\ & 
-- (((\dp|ALUL|l_s|Eout~0_combout\ & \dp|ALUL|regC|BF1|c:0:buf32|output~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|r_s|Eout~0_combout\,
	datab => \dp|ALUL|regC|BF1|c:2:buf32|output~3_combout\,
	datac => \dp|ALUL|l_s|Eout~0_combout\,
	datad => \dp|ALUL|regC|BF1|c:0:buf32|output~6_combout\,
	combout => \dp|ALUL|regC|DFF1|c:1:dff32|d_input~16_combout\);

-- Location: LCCOMB_X18_Y13_N10
\dp|ALUL|regC|DFF1|c:1:dff32|d_input~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:1:dff32|d_input~18_combout\ = (\dp|ALUL|regA|A_R|c:1:dff32|dff0|q~q\ & ((\dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\) # ((\cu|control|NEG~combout\ & \dp|ALUL|add|temp[1]~2_combout\)))) # (!\dp|ALUL|regA|A_R|c:1:dff32|dff0|q~q\ & 
-- (\cu|control|NEG~combout\ & ((\dp|ALUL|add|temp[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regA|A_R|c:1:dff32|dff0|q~q\,
	datab => \cu|control|NEG~combout\,
	datac => \dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\,
	datad => \dp|ALUL|add|temp[1]~2_combout\,
	combout => \dp|ALUL|regC|DFF1|c:1:dff32|d_input~18_combout\);

-- Location: FF_X17_Y9_N21
\dp|RegFIleL|gen_reg0|dff|c:1:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:1:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|RegFIleL|strop\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg0|dff|c:1:dff32|dff0|q~q\);

-- Location: LCCOMB_X17_Y9_N20
\dp|RegFIleL|gen_reg0|BFF_in[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|RegFIleL|gen_reg0|BFF_in\(1) = (\dp|RegFIleL|gen_reg0|dff|c:1:dff32|dff0|q~q\ & ((\cu|control|Grb~0_combout\) # (!\cu|st|dec|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|Grb~0_combout\,
	datac => \dp|RegFIleL|gen_reg0|dff|c:1:dff32|dff0|q~q\,
	datad => \cu|st|dec|Mux0~3_combout\,
	combout => \dp|RegFIleL|gen_reg0|BFF_in\(1));

-- Location: FF_X17_Y13_N3
\dp|RegFIleL|gen_reg1|dffL|c:1:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:1:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|RegFIleL|strop\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg1|dffL|c:1:dff32|dff0|q~q\);

-- Location: LCCOMB_X17_Y13_N2
\dp|ALUL|regC|BF1|c:1:buf32|output~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:1:buf32|output~3_combout\ = ((\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & ((\dp|RegFIleL|gen_reg1|dffL|c:1:dff32|dff0|q~q\))) # (!\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & (\dp|RegFIleL|gen_reg0|BFF_in\(1)))) # 
-- (!\dp|RegFIleL|r_out_OR_ba_out~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RegFIleL|r_out_OR_ba_out~5_combout\,
	datab => \dp|RegFIleL|gen_reg0|BFF_in\(1),
	datac => \dp|RegFIleL|gen_reg1|dffL|c:1:dff32|dff0|q~q\,
	datad => \dp|RegFIleL|reg|input_decoder[0]~4_combout\,
	combout => \dp|ALUL|regC|BF1|c:1:buf32|output~3_combout\);

-- Location: LCCOMB_X17_Y13_N30
\dp|ALUL|add|b_sig[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|b_sig\(1) = \dp|ALUL|add|b_inv~combout\ $ (((\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\) # ((\dp|ALUL|regC|BF1|c:1:buf32|output~3_combout\ & \dp|ALUL|regC|BF1|c:1:buf32|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:1:buf32|output~3_combout\,
	datab => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	datac => \dp|ALUL|add|b_inv~combout\,
	datad => \dp|ALUL|regC|BF1|c:1:buf32|output~2_combout\,
	combout => \dp|ALUL|add|b_sig\(1));

-- Location: LCCOMB_X17_Y13_N14
\dp|ALUL|add|add_32|Y:1:full32|second_HA|s\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|add_32|Y:1:full32|second_HA|s~combout\ = \dp|ALUL|add|b_inv~combout\ $ (\dp|ALUL|add|a_sig\(1) $ (\dp|ALUL|regC|BF1|c:1:buf32|output~4_combout\ $ (\dp|ALUL|add|add_32|Y:0:full32|c_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|b_inv~combout\,
	datab => \dp|ALUL|add|a_sig\(1),
	datac => \dp|ALUL|regC|BF1|c:1:buf32|output~4_combout\,
	datad => \dp|ALUL|add|add_32|Y:0:full32|c_out~0_combout\,
	combout => \dp|ALUL|add|add_32|Y:1:full32|second_HA|s~combout\);

-- Location: LCCOMB_X17_Y13_N12
\dp|ALUL|regC|DFF1|c:1:dff32|d_input~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:1:dff32|d_input~15_combout\ = (\dp|ALUL|add|b_sig\(1) & ((\cu|control|NOTOP~combout\) # ((\dp|ALUL|add|add_E~9_combout\ & \dp|ALUL|add|add_32|Y:1:full32|second_HA|s~combout\)))) # (!\dp|ALUL|add|b_sig\(1) & 
-- (((\dp|ALUL|add|add_E~9_combout\ & \dp|ALUL|add|add_32|Y:1:full32|second_HA|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|b_sig\(1),
	datab => \cu|control|NOTOP~combout\,
	datac => \dp|ALUL|add|add_E~9_combout\,
	datad => \dp|ALUL|add|add_32|Y:1:full32|second_HA|s~combout\,
	combout => \dp|ALUL|regC|DFF1|c:1:dff32|d_input~15_combout\);

-- Location: LCCOMB_X15_Y10_N24
\dp|ALUL|regC|DFF1|c:1:dff32|d_input~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:1:dff32|d_input~19_combout\ = (\dp|ALUL|regC|DFF1|c:1:dff32|d_input~17_combout\) # ((\dp|ALUL|regC|DFF1|c:1:dff32|d_input~16_combout\) # ((\dp|ALUL|regC|DFF1|c:1:dff32|d_input~18_combout\) # 
-- (\dp|ALUL|regC|DFF1|c:1:dff32|d_input~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:1:dff32|d_input~17_combout\,
	datab => \dp|ALUL|regC|DFF1|c:1:dff32|d_input~16_combout\,
	datac => \dp|ALUL|regC|DFF1|c:1:dff32|d_input~18_combout\,
	datad => \dp|ALUL|regC|DFF1|c:1:dff32|d_input~15_combout\,
	combout => \dp|ALUL|regC|DFF1|c:1:dff32|d_input~19_combout\);

-- Location: FF_X15_Y10_N25
\dp|ALUL|regC|DFF1|c:1:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|ALUL|regC|DFF1|c:1:dff32|d_input~19_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|Cin~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regC|DFF1|c:1:dff32|dff0|q~q\);

-- Location: LCCOMB_X16_Y11_N4
\dp|ALUL|regC|BF1|c:1:buf32|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:1:buf32|output~0_combout\ = (\dp|ALUL|regC|DFF1|c:1:dff32|dff0|q~q\) # (!\cu|control|Cout~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:1:dff32|dff0|q~q\,
	datad => \cu|control|Cout~combout\,
	combout => \dp|ALUL|regC|BF1|c:1:buf32|output~0_combout\);

-- Location: FF_X16_Y10_N15
\dp|PCL|dff|c:1:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:1:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|control|PCin~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|PCL|dff|c:1:dff32|dff0|q~q\);

-- Location: LCCOMB_X16_Y10_N14
\dp|ALUL|regC|BF1|c:1:buf32|output~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:1:buf32|output~1_combout\ = (\cu|control|PCout~combout\ & (\dp|PCL|dff|c:1:dff32|dff0|q~q\ & ((\dp|IRL|ir1|dff0|q~q\) # (\dp|IRL|c1_or_c2~0_combout\)))) # (!\cu|control|PCout~combout\ & ((\dp|IRL|ir1|dff0|q~q\) # 
-- ((\dp|IRL|c1_or_c2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|PCout~combout\,
	datab => \dp|IRL|ir1|dff0|q~q\,
	datac => \dp|PCL|dff|c:1:dff32|dff0|q~q\,
	datad => \dp|IRL|c1_or_c2~0_combout\,
	combout => \dp|ALUL|regC|BF1|c:1:buf32|output~1_combout\);

-- Location: LCCOMB_X17_Y13_N8
\dp|ALUL|regC|BF1|c:1:buf32|output~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:1:buf32|output~2_combout\ = (\dp|ALUL|regC|BF1|c:1:buf32|output~0_combout\ & (\dp|ALUL|regC|BF1|c:1:buf32|output~1_combout\ & ((\dp|MEML|md_r|c:1:dff32|dff0|q~q\) # (!\cu|control|MDout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|MEML|md_r|c:1:dff32|dff0|q~q\,
	datab => \cu|control|MDout~0_combout\,
	datac => \dp|ALUL|regC|BF1|c:1:buf32|output~0_combout\,
	datad => \dp|ALUL|regC|BF1|c:1:buf32|output~1_combout\,
	combout => \dp|ALUL|regC|BF1|c:1:buf32|output~2_combout\);

-- Location: LCCOMB_X17_Y13_N20
\dp|ALUL|regC|BF1|c:1:buf32|output~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:1:buf32|output~4_combout\ = (\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\) # ((\dp|ALUL|regC|BF1|c:1:buf32|output~2_combout\ & \dp|ALUL|regC|BF1|c:1:buf32|output~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	datac => \dp|ALUL|regC|BF1|c:1:buf32|output~2_combout\,
	datad => \dp|ALUL|regC|BF1|c:1:buf32|output~3_combout\,
	combout => \dp|ALUL|regC|BF1|c:1:buf32|output~4_combout\);

-- Location: FF_X16_Y10_N13
\dp|IRL|ir1|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:1:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|st|dec|Mux0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|IRL|ir1|dff0|q~q\);

-- Location: LCCOMB_X16_Y10_N30
\dp|CONDL|zero_chack~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|CONDL|zero_chack~8_combout\ = (\dp|ALUL|regC|BF1|c:25:buf32|output~3_combout\) # ((\dp|ALUL|regC|BF1|c:26:buf32|output~3_combout\) # ((\dp|ALUL|regC|BF1|c:27:buf32|output~3_combout\) # (\dp|ALUL|regC|BF1|c:24:buf32|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:25:buf32|output~3_combout\,
	datab => \dp|ALUL|regC|BF1|c:26:buf32|output~3_combout\,
	datac => \dp|ALUL|regC|BF1|c:27:buf32|output~3_combout\,
	datad => \dp|ALUL|regC|BF1|c:24:buf32|output~3_combout\,
	combout => \dp|CONDL|zero_chack~8_combout\);

-- Location: LCCOMB_X19_Y4_N8
\dp|CONDL|zero_chack~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|CONDL|zero_chack~6_combout\ = (\dp|ALUL|regC|BF1|c:22:buf32|output~3_combout\) # ((\dp|ALUL|regC|BF1|c:23:buf32|output~3_combout\) # ((\dp|ALUL|regC|BF1|c:21:buf32|output~4_combout\) # (\dp|ALUL|regC|BF1|c:20:buf32|output~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:22:buf32|output~3_combout\,
	datab => \dp|ALUL|regC|BF1|c:23:buf32|output~3_combout\,
	datac => \dp|ALUL|regC|BF1|c:21:buf32|output~4_combout\,
	datad => \dp|ALUL|regC|BF1|c:20:buf32|output~4_combout\,
	combout => \dp|CONDL|zero_chack~6_combout\);

-- Location: LCCOMB_X19_Y9_N18
\dp|CONDL|zero_chack~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|CONDL|zero_chack~5_combout\ = (\dp|ALUL|regC|BF1|c:19:buf32|output~4_combout\) # ((\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\) # ((\dp|ALUL|regC|BF1|c:18:buf32|output~2_combout\ & \dp|ALUL|regC|BF1|c:18:buf32|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:19:buf32|output~4_combout\,
	datab => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	datac => \dp|ALUL|regC|BF1|c:18:buf32|output~2_combout\,
	datad => \dp|ALUL|regC|BF1|c:18:buf32|output~3_combout\,
	combout => \dp|CONDL|zero_chack~5_combout\);

-- Location: LCCOMB_X18_Y6_N24
\dp|CONDL|zero_chack~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|CONDL|zero_chack~7_combout\ = (\dp|ALUL|regC|BF1|c:16:buf32|output~4_combout\) # ((\dp|ALUL|regC|BF1|c:17:buf32|output~4_combout\) # ((\dp|CONDL|zero_chack~6_combout\) # (\dp|CONDL|zero_chack~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:16:buf32|output~4_combout\,
	datab => \dp|ALUL|regC|BF1|c:17:buf32|output~4_combout\,
	datac => \dp|CONDL|zero_chack~6_combout\,
	datad => \dp|CONDL|zero_chack~5_combout\,
	combout => \dp|CONDL|zero_chack~7_combout\);

-- Location: LCCOMB_X16_Y10_N6
\dp|CONDL|zero_chack~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|CONDL|zero_chack~3_combout\ = (\dp|ALUL|regC|BF1|c:14:buf32|output~4_combout\) # ((\dp|ALUL|regC|BF1|c:13:buf32|output~4_combout\) # ((\dp|ALUL|regC|BF1|c:15:buf32|output~4_combout\) # (\dp|ALUL|regC|BF1|c:12:buf32|output~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:14:buf32|output~4_combout\,
	datab => \dp|ALUL|regC|BF1|c:13:buf32|output~4_combout\,
	datac => \dp|ALUL|regC|BF1|c:15:buf32|output~4_combout\,
	datad => \dp|ALUL|regC|BF1|c:12:buf32|output~4_combout\,
	combout => \dp|CONDL|zero_chack~3_combout\);

-- Location: LCCOMB_X18_Y13_N14
\dp|CONDL|zero_chack~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|CONDL|zero_chack~2_combout\ = (\dp|ALUL|regC|BF1|c:10:buf32|output~4_combout\) # ((\dp|ALUL|regC|BF1|c:11:buf32|output~4_combout\) # ((\dp|ALUL|regC|BF1|c:8:buf32|output~4_combout\) # (\dp|ALUL|regC|BF1|c:9:buf32|output~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:10:buf32|output~4_combout\,
	datab => \dp|ALUL|regC|BF1|c:11:buf32|output~4_combout\,
	datac => \dp|ALUL|regC|BF1|c:8:buf32|output~4_combout\,
	datad => \dp|ALUL|regC|BF1|c:9:buf32|output~4_combout\,
	combout => \dp|CONDL|zero_chack~2_combout\);

-- Location: LCCOMB_X16_Y10_N22
\dp|CONDL|zero_chack~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|CONDL|zero_chack~0_combout\ = (\dp|ALUL|regC|BF1|c:3:buf32|output~4_combout\) # ((\dp|ALUL|regC|BF1|c:0:buf32|output~6_combout\) # ((\dp|ALUL|regC|BF1|c:2:buf32|output~3_combout\) # (\dp|ALUL|regC|BF1|c:1:buf32|output~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:3:buf32|output~4_combout\,
	datab => \dp|ALUL|regC|BF1|c:0:buf32|output~6_combout\,
	datac => \dp|ALUL|regC|BF1|c:2:buf32|output~3_combout\,
	datad => \dp|ALUL|regC|BF1|c:1:buf32|output~4_combout\,
	combout => \dp|CONDL|zero_chack~0_combout\);

-- Location: LCCOMB_X16_Y10_N0
\dp|CONDL|zero_chack~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|CONDL|zero_chack~1_combout\ = (\dp|ALUL|regC|BF1|c:6:buf32|output~4_combout\) # ((\dp|ALUL|regC|BF1|c:7:buf32|output~4_combout\) # ((\dp|ALUL|regC|BF1|c:4:buf32|output~4_combout\) # (\dp|ALUL|regC|BF1|c:5:buf32|output~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:6:buf32|output~4_combout\,
	datab => \dp|ALUL|regC|BF1|c:7:buf32|output~4_combout\,
	datac => \dp|ALUL|regC|BF1|c:4:buf32|output~4_combout\,
	datad => \dp|ALUL|regC|BF1|c:5:buf32|output~4_combout\,
	combout => \dp|CONDL|zero_chack~1_combout\);

-- Location: LCCOMB_X16_Y10_N8
\dp|CONDL|zero_chack~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|CONDL|zero_chack~4_combout\ = (\dp|CONDL|zero_chack~3_combout\) # ((\dp|CONDL|zero_chack~2_combout\) # ((\dp|CONDL|zero_chack~0_combout\) # (\dp|CONDL|zero_chack~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|CONDL|zero_chack~3_combout\,
	datab => \dp|CONDL|zero_chack~2_combout\,
	datac => \dp|CONDL|zero_chack~0_combout\,
	datad => \dp|CONDL|zero_chack~1_combout\,
	combout => \dp|CONDL|zero_chack~4_combout\);

-- Location: LCCOMB_X16_Y10_N20
\dp|CONDL|zero_chack~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|CONDL|zero_chack~9_combout\ = (\dp|ALUL|regC|BF1|c:30:buf32|output~3_combout\) # ((\dp|ALUL|regC|BF1|c:31:buf32|output~3_combout\) # ((\dp|ALUL|regC|BF1|c:28:buf32|output~3_combout\) # (\dp|ALUL|regC|BF1|c:29:buf32|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:30:buf32|output~3_combout\,
	datab => \dp|ALUL|regC|BF1|c:31:buf32|output~3_combout\,
	datac => \dp|ALUL|regC|BF1|c:28:buf32|output~3_combout\,
	datad => \dp|ALUL|regC|BF1|c:29:buf32|output~3_combout\,
	combout => \dp|CONDL|zero_chack~9_combout\);

-- Location: LCCOMB_X16_Y10_N26
\dp|CONDL|zero_chack~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|CONDL|zero_chack~10_combout\ = (\dp|CONDL|zero_chack~8_combout\) # ((\dp|CONDL|zero_chack~7_combout\) # ((\dp|CONDL|zero_chack~4_combout\) # (\dp|CONDL|zero_chack~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|CONDL|zero_chack~8_combout\,
	datab => \dp|CONDL|zero_chack~7_combout\,
	datac => \dp|CONDL|zero_chack~4_combout\,
	datad => \dp|CONDL|zero_chack~9_combout\,
	combout => \dp|CONDL|zero_chack~10_combout\);

-- Location: LCCOMB_X16_Y10_N2
\dp|CONDL|dff_con|dff0|q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|CONDL|dff_con|dff0|q~1_combout\ = (\dp|IRL|ir1|dff0|q~q\ & (((!\dp|ALUL|regC|BF1|c:31:buf32|output~3_combout\ & \dp|IRL|ir2|dff0|q~q\)) # (!\dp|CONDL|zero_chack~10_combout\))) # (!\dp|IRL|ir1|dff0|q~q\ & 
-- (!\dp|ALUL|regC|BF1|c:31:buf32|output~3_combout\ & ((\dp|IRL|ir2|dff0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|IRL|ir1|dff0|q~q\,
	datab => \dp|ALUL|regC|BF1|c:31:buf32|output~3_combout\,
	datac => \dp|CONDL|zero_chack~10_combout\,
	datad => \dp|IRL|ir2|dff0|q~q\,
	combout => \dp|CONDL|dff_con|dff0|q~1_combout\);

-- Location: LCCOMB_X16_Y10_N28
\dp|CONDL|dff_con|dff0|q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|CONDL|dff_con|dff0|q~0_combout\ = (\dp|IRL|ir1|dff0|q~q\ & ((\dp|CONDL|zero_chack~10_combout\) # ((\dp|ALUL|regC|BF1|c:31:buf32|output~3_combout\ & \dp|IRL|ir2|dff0|q~q\)))) # (!\dp|IRL|ir1|dff0|q~q\ & ((\dp|ALUL|regC|BF1|c:31:buf32|output~3_combout\) 
-- # ((!\dp|IRL|ir2|dff0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|IRL|ir1|dff0|q~q\,
	datab => \dp|ALUL|regC|BF1|c:31:buf32|output~3_combout\,
	datac => \dp|CONDL|zero_chack~10_combout\,
	datad => \dp|IRL|ir2|dff0|q~q\,
	combout => \dp|CONDL|dff_con|dff0|q~0_combout\);

-- Location: LCCOMB_X15_Y10_N26
\dp|CONDL|dff_con|dff0|q~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|CONDL|dff_con|dff0|q~2_combout\ = (\cu|control|CONin~combout\ & ((\dp|IRL|ir0|dff0|q~q\ & ((\dp|CONDL|dff_con|dff0|q~0_combout\))) # (!\dp|IRL|ir0|dff0|q~q\ & (\dp|CONDL|dff_con|dff0|q~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|CONDL|dff_con|dff0|q~1_combout\,
	datab => \cu|control|CONin~combout\,
	datac => \dp|IRL|ir0|dff0|q~q\,
	datad => \dp|CONDL|dff_con|dff0|q~0_combout\,
	combout => \dp|CONDL|dff_con|dff0|q~2_combout\);

-- Location: LCCOMB_X14_Y10_N28
\dp|CONDL|dff_con|dff0|q~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|CONDL|dff_con|dff0|q~3_combout\ = (\dp|CONDL|dff_con|dff0|q~2_combout\) # ((!\cu|control|CONin~combout\ & \dp|CONDL|dff_con|dff0|q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|CONin~combout\,
	datac => \dp|CONDL|dff_con|dff0|q~q\,
	datad => \dp|CONDL|dff_con|dff0|q~2_combout\,
	combout => \dp|CONDL|dff_con|dff0|q~3_combout\);

-- Location: FF_X14_Y10_N29
\dp|CONDL|dff_con|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|CONDL|dff_con|dff0|q~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|CONDL|dff_con|dff0|q~q\);

-- Location: LCCOMB_X14_Y11_N8
\cu|control|PCin~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|control|PCin~2_combout\ = (\cu|st|dec|Mux0~2_combout\ & ((\cu|de|Mux13~0_combout\) # ((\cu|st|dec|Mux0~4_combout\ & \cu|de|Mux14~0_combout\)))) # (!\cu|st|dec|Mux0~2_combout\ & (\cu|st|dec|Mux0~4_combout\ & (\cu|de|Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|dec|Mux0~2_combout\,
	datab => \cu|st|dec|Mux0~4_combout\,
	datac => \cu|de|Mux14~0_combout\,
	datad => \cu|de|Mux13~0_combout\,
	combout => \cu|control|PCin~2_combout\);

-- Location: LCCOMB_X14_Y10_N6
\cu|control|PCin~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|control|PCin~3_combout\ = (\cu|st|dec|Mux0~1_combout\) # ((\dp|CONDL|dff_con|dff0|q~q\ & \cu|control|PCin~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|CONDL|dff_con|dff0|q~q\,
	datac => \cu|st|dec|Mux0~1_combout\,
	datad => \cu|control|PCin~2_combout\,
	combout => \cu|control|PCin~3_combout\);

-- Location: FF_X17_Y7_N11
\dp|PCL|dff|c:27:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:27:buf32|output~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|control|PCin~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|PCL|dff|c:27:dff32|dff0|q~q\);

-- Location: LCCOMB_X17_Y7_N10
\dp|ALUL|regC|BF1|c:27:buf32|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:27:buf32|output~0_combout\ = (\cu|control|PCout~combout\ & (\dp|PCL|dff|c:27:dff32|dff0|q~q\ & ((\dp|MEML|md_r|c:27:dff32|dff0|q~q\) # (!\cu|control|MDout~0_combout\)))) # (!\cu|control|PCout~combout\ & 
-- ((\dp|MEML|md_r|c:27:dff32|dff0|q~q\) # ((!\cu|control|MDout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|PCout~combout\,
	datab => \dp|MEML|md_r|c:27:dff32|dff0|q~q\,
	datac => \dp|PCL|dff|c:27:dff32|dff0|q~q\,
	datad => \cu|control|MDout~0_combout\,
	combout => \dp|ALUL|regC|BF1|c:27:buf32|output~0_combout\);

-- Location: FF_X20_Y9_N21
\dp|ALUL|regA|A_R|c:27:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|ALUL|regC|BF1|c:27:buf32|output~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regA|A_R|c:27:dff32|dff0|q~q\);

-- Location: LCCOMB_X22_Y9_N22
\dp|ALUL|add|temp[27]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|temp[27]~54_combout\ = (\dp|ALUL|add|temp[26]~53\ & (\dp|ALUL|regC|BF1|c:27:buf32|output~3_combout\ $ ((!\dp|ALUL|add|b_inv~combout\)))) # (!\dp|ALUL|add|temp[26]~53\ & ((\dp|ALUL|regC|BF1|c:27:buf32|output~3_combout\ $ 
-- (\dp|ALUL|add|b_inv~combout\)) # (GND)))
-- \dp|ALUL|add|temp[27]~55\ = CARRY((\dp|ALUL|regC|BF1|c:27:buf32|output~3_combout\ $ (!\dp|ALUL|add|b_inv~combout\)) # (!\dp|ALUL|add|temp[26]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:27:buf32|output~3_combout\,
	datab => \dp|ALUL|add|b_inv~combout\,
	datad => VCC,
	cin => \dp|ALUL|add|temp[26]~53\,
	combout => \dp|ALUL|add|temp[27]~54_combout\,
	cout => \dp|ALUL|add|temp[27]~55\);

-- Location: LCCOMB_X20_Y9_N12
\dp|ALUL|regC|DFF1|c:27:dff32|d_input~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:27:dff32|d_input~18_combout\ = (\cu|control|NEG~combout\ & ((\dp|ALUL|add|temp[27]~54_combout\) # ((\dp|ALUL|regA|A_R|c:27:dff32|dff0|q~q\ & \dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\)))) # (!\cu|control|NEG~combout\ & 
-- (\dp|ALUL|regA|A_R|c:27:dff32|dff0|q~q\ & (\dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|NEG~combout\,
	datab => \dp|ALUL|regA|A_R|c:27:dff32|dff0|q~q\,
	datac => \dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\,
	datad => \dp|ALUL|add|temp[27]~54_combout\,
	combout => \dp|ALUL|regC|DFF1|c:27:dff32|d_input~18_combout\);

-- Location: LCCOMB_X20_Y9_N0
\dp|ALUL|regC|DFF1|c:27:dff32|d_input~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:27:dff32|d_input~16_combout\ = (\dp|ALUL|l_s|Eout~0_combout\ & ((\dp|ALUL|regC|BF1|c:26:buf32|output~3_combout\) # ((\dp|ALUL|r_s|Eout~0_combout\ & \dp|ALUL|regC|BF1|c:28:buf32|output~3_combout\)))) # (!\dp|ALUL|l_s|Eout~0_combout\ & 
-- (\dp|ALUL|r_s|Eout~0_combout\ & ((\dp|ALUL|regC|BF1|c:28:buf32|output~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|l_s|Eout~0_combout\,
	datab => \dp|ALUL|r_s|Eout~0_combout\,
	datac => \dp|ALUL|regC|BF1|c:26:buf32|output~3_combout\,
	datad => \dp|ALUL|regC|BF1|c:28:buf32|output~3_combout\,
	combout => \dp|ALUL|regC|DFF1|c:27:dff32|d_input~16_combout\);

-- Location: LCCOMB_X20_Y9_N6
\dp|ALUL|regC|DFF1|c:27:dff32|d_input~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:27:dff32|d_input~3_combout\ = (!\cu|st|con|count_i\(1) & (!\cu|st|con|count_i\(0) & ((\dp|IRL|ir28|dff0|q~q\) # (\dp|ALUL|regA|A_R|c:27:dff32|dff0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|IRL|ir28|dff0|q~q\,
	datab => \cu|st|con|count_i\(1),
	datac => \cu|st|con|count_i\(0),
	datad => \dp|ALUL|regA|A_R|c:27:dff32|dff0|q~q\,
	combout => \dp|ALUL|regC|DFF1|c:27:dff32|d_input~3_combout\);

-- Location: LCCOMB_X20_Y9_N4
\dp|ALUL|regC|DFF1|c:27:dff32|d_input~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:27:dff32|d_input~20_combout\ = (\dp|ALUL|regC|DFF1|c:27:dff32|d_input~3_combout\ & (!\dp|IRL|ir30|dff0|q~q\ & (\cu|st|con|count_i\(2) & \dp|IRL|ir31|dff0|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:27:dff32|d_input~3_combout\,
	datab => \dp|IRL|ir30|dff0|q~q\,
	datac => \cu|st|con|count_i\(2),
	datad => \dp|IRL|ir31|dff0|q~q\,
	combout => \dp|ALUL|regC|DFF1|c:27:dff32|d_input~20_combout\);

-- Location: LCCOMB_X20_Y9_N26
\dp|ALUL|regC|DFF1|c:27:dff32|d_input~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:27:dff32|d_input~17_combout\ = (\dp|ALUL|regC|BF1|c:27:buf32|output~3_combout\ & ((\dp|ALUL|regC|DFF1|c:27:dff32|d_input~20_combout\) # ((\cu|st|dec|Mux0~4_combout\ & !\cu|control|CB~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|dec|Mux0~4_combout\,
	datab => \dp|ALUL|regC|BF1|c:27:buf32|output~3_combout\,
	datac => \dp|ALUL|regC|DFF1|c:27:dff32|d_input~20_combout\,
	datad => \cu|control|CB~2_combout\,
	combout => \dp|ALUL|regC|DFF1|c:27:dff32|d_input~17_combout\);

-- Location: LCCOMB_X20_Y9_N8
\dp|ALUL|add|b_sig[27]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|b_sig\(27) = \dp|ALUL|add|b_inv~combout\ $ (((\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\) # ((\dp|ALUL|regC|BF1|c:27:buf32|output~1_combout\ & \dp|ALUL|regC|BF1|c:27:buf32|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|b_inv~combout\,
	datab => \dp|ALUL|regC|BF1|c:27:buf32|output~1_combout\,
	datac => \dp|ALUL|regC|BF1|c:27:buf32|output~2_combout\,
	datad => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	combout => \dp|ALUL|add|b_sig\(27));

-- Location: LCCOMB_X20_Y9_N2
\dp|ALUL|add|a_sig[27]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|a_sig\(27) = (\dp|ALUL|regA|A_R|c:27:dff32|dff0|q~q\ & ((\cu|st|con|count_i\(0)) # ((\cu|st|con|count_i\(1)) # (\cu|st|con|count_i\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(0),
	datab => \cu|st|con|count_i\(1),
	datac => \cu|st|con|count_i\(2),
	datad => \dp|ALUL|regA|A_R|c:27:dff32|dff0|q~q\,
	combout => \dp|ALUL|add|a_sig\(27));

-- Location: FF_X20_Y12_N19
\dp|ALUL|regA|A_R|c:26:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:26:buf32|output~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|control|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regA|A_R|c:26:dff32|dff0|q~q\);

-- Location: LCCOMB_X20_Y12_N12
\dp|ALUL|add|a_sig[26]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|a_sig\(26) = (\dp|ALUL|regA|A_R|c:26:dff32|dff0|q~q\ & ((\cu|st|con|count_i\(2)) # ((\cu|st|con|count_i\(1)) # (\cu|st|con|count_i\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(2),
	datab => \cu|st|con|count_i\(1),
	datac => \cu|st|con|count_i\(0),
	datad => \dp|ALUL|regA|A_R|c:26:dff32|dff0|q~q\,
	combout => \dp|ALUL|add|a_sig\(26));

-- Location: LCCOMB_X20_Y11_N0
\dp|ALUL|add|add_32|Y:25:full32|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|add_32|Y:25:full32|c_out~0_combout\ = (\dp|ALUL|add|a_sig\(25) & ((\dp|ALUL|add|add_32|Y:24:full32|c_out~0_combout\) # (\dp|ALUL|regC|BF1|c:25:buf32|output~3_combout\ $ (\dp|ALUL|add|b_inv~combout\)))) # (!\dp|ALUL|add|a_sig\(25) & 
-- (\dp|ALUL|add|add_32|Y:24:full32|c_out~0_combout\ & (\dp|ALUL|regC|BF1|c:25:buf32|output~3_combout\ $ (\dp|ALUL|add|b_inv~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:25:buf32|output~3_combout\,
	datab => \dp|ALUL|add|b_inv~combout\,
	datac => \dp|ALUL|add|a_sig\(25),
	datad => \dp|ALUL|add|add_32|Y:24:full32|c_out~0_combout\,
	combout => \dp|ALUL|add|add_32|Y:25:full32|c_out~0_combout\);

-- Location: LCCOMB_X20_Y11_N2
\dp|ALUL|add|add_32|Y:26:full32|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|add_32|Y:26:full32|c_out~0_combout\ = (\dp|ALUL|add|a_sig\(26) & ((\dp|ALUL|add|add_32|Y:25:full32|c_out~0_combout\) # (\dp|ALUL|regC|BF1|c:26:buf32|output~3_combout\ $ (\dp|ALUL|add|b_inv~combout\)))) # (!\dp|ALUL|add|a_sig\(26) & 
-- (\dp|ALUL|add|add_32|Y:25:full32|c_out~0_combout\ & (\dp|ALUL|regC|BF1|c:26:buf32|output~3_combout\ $ (\dp|ALUL|add|b_inv~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|a_sig\(26),
	datab => \dp|ALUL|regC|BF1|c:26:buf32|output~3_combout\,
	datac => \dp|ALUL|add|b_inv~combout\,
	datad => \dp|ALUL|add|add_32|Y:25:full32|c_out~0_combout\,
	combout => \dp|ALUL|add|add_32|Y:26:full32|c_out~0_combout\);

-- Location: LCCOMB_X20_Y11_N4
\dp|ALUL|add|add_32|Y:27:full32|second_HA|s\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|add_32|Y:27:full32|second_HA|s~combout\ = \dp|ALUL|add|a_sig\(27) $ (\dp|ALUL|regC|BF1|c:27:buf32|output~3_combout\ $ (\dp|ALUL|add|b_inv~combout\ $ (\dp|ALUL|add|add_32|Y:26:full32|c_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|a_sig\(27),
	datab => \dp|ALUL|regC|BF1|c:27:buf32|output~3_combout\,
	datac => \dp|ALUL|add|b_inv~combout\,
	datad => \dp|ALUL|add|add_32|Y:26:full32|c_out~0_combout\,
	combout => \dp|ALUL|add|add_32|Y:27:full32|second_HA|s~combout\);

-- Location: LCCOMB_X20_Y9_N10
\dp|ALUL|regC|DFF1|c:27:dff32|d_input~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:27:dff32|d_input~15_combout\ = (\dp|ALUL|add|add_E~9_combout\ & ((\dp|ALUL|add|add_32|Y:27:full32|second_HA|s~combout\) # ((\cu|control|NOTOP~combout\ & \dp|ALUL|add|b_sig\(27))))) # (!\dp|ALUL|add|add_E~9_combout\ & 
-- (\cu|control|NOTOP~combout\ & (\dp|ALUL|add|b_sig\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|add_E~9_combout\,
	datab => \cu|control|NOTOP~combout\,
	datac => \dp|ALUL|add|b_sig\(27),
	datad => \dp|ALUL|add|add_32|Y:27:full32|second_HA|s~combout\,
	combout => \dp|ALUL|regC|DFF1|c:27:dff32|d_input~15_combout\);

-- Location: LCCOMB_X20_Y9_N28
\dp|ALUL|regC|DFF1|c:27:dff32|d_input~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:27:dff32|d_input~19_combout\ = (\dp|ALUL|regC|DFF1|c:27:dff32|d_input~18_combout\) # ((\dp|ALUL|regC|DFF1|c:27:dff32|d_input~16_combout\) # ((\dp|ALUL|regC|DFF1|c:27:dff32|d_input~17_combout\) # 
-- (\dp|ALUL|regC|DFF1|c:27:dff32|d_input~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:27:dff32|d_input~18_combout\,
	datab => \dp|ALUL|regC|DFF1|c:27:dff32|d_input~16_combout\,
	datac => \dp|ALUL|regC|DFF1|c:27:dff32|d_input~17_combout\,
	datad => \dp|ALUL|regC|DFF1|c:27:dff32|d_input~15_combout\,
	combout => \dp|ALUL|regC|DFF1|c:27:dff32|d_input~19_combout\);

-- Location: FF_X20_Y9_N29
\dp|ALUL|regC|DFF1|c:27:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|ALUL|regC|DFF1|c:27:dff32|d_input~19_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|Cin~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regC|DFF1|c:27:dff32|dff0|q~q\);

-- Location: LCCOMB_X20_Y9_N18
\dp|ALUL|regC|BF1|c:27:buf32|output~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:27:buf32|output~1_combout\ = (\dp|ALUL|regC|BF1|c:27:buf32|output~0_combout\ & (\dp|ALUL|regC|BF1|c:21:buf32|output~0_combout\ & ((\dp|ALUL|regC|DFF1|c:27:dff32|dff0|q~q\) # (!\cu|control|Cout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:27:buf32|output~0_combout\,
	datab => \dp|ALUL|regC|DFF1|c:27:dff32|dff0|q~q\,
	datac => \cu|control|Cout~combout\,
	datad => \dp|ALUL|regC|BF1|c:21:buf32|output~0_combout\,
	combout => \dp|ALUL|regC|BF1|c:27:buf32|output~1_combout\);

-- Location: LCCOMB_X20_Y9_N14
\dp|ALUL|regC|DFF1|c:26:dff32|d_input~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:26:dff32|d_input~16_combout\ = (\dp|ALUL|r_s|Eout~0_combout\ & ((\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\) # ((\dp|ALUL|regC|BF1|c:27:buf32|output~2_combout\ & \dp|ALUL|regC|BF1|c:27:buf32|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:27:buf32|output~2_combout\,
	datab => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	datac => \dp|ALUL|r_s|Eout~0_combout\,
	datad => \dp|ALUL|regC|BF1|c:27:buf32|output~1_combout\,
	combout => \dp|ALUL|regC|DFF1|c:26:dff32|d_input~16_combout\);

-- Location: LCCOMB_X20_Y12_N18
\dp|ALUL|regC|DFF1|c:26:dff32|d_input~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:26:dff32|d_input~3_combout\ = (!\cu|st|con|count_i\(0) & (!\cu|st|con|count_i\(1) & ((\dp|IRL|ir28|dff0|q~q\) # (\dp|ALUL|regA|A_R|c:26:dff32|dff0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(0),
	datab => \dp|IRL|ir28|dff0|q~q\,
	datac => \dp|ALUL|regA|A_R|c:26:dff32|dff0|q~q\,
	datad => \cu|st|con|count_i\(1),
	combout => \dp|ALUL|regC|DFF1|c:26:dff32|d_input~3_combout\);

-- Location: LCCOMB_X20_Y9_N30
\dp|ALUL|regC|DFF1|c:26:dff32|d_input~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:26:dff32|d_input~21_combout\ = (\dp|ALUL|regC|DFF1|c:26:dff32|d_input~3_combout\ & (!\dp|IRL|ir30|dff0|q~q\ & (\cu|st|con|count_i\(2) & \dp|IRL|ir31|dff0|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:26:dff32|d_input~3_combout\,
	datab => \dp|IRL|ir30|dff0|q~q\,
	datac => \cu|st|con|count_i\(2),
	datad => \dp|IRL|ir31|dff0|q~q\,
	combout => \dp|ALUL|regC|DFF1|c:26:dff32|d_input~21_combout\);

-- Location: LCCOMB_X22_Y9_N20
\dp|ALUL|add|temp[26]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|temp[26]~52_combout\ = (\dp|ALUL|add|temp[25]~51\ & ((\dp|ALUL|add|b_inv~combout\ $ (\dp|ALUL|regC|BF1|c:26:buf32|output~3_combout\)))) # (!\dp|ALUL|add|temp[25]~51\ & (\dp|ALUL|add|b_inv~combout\ $ 
-- (\dp|ALUL|regC|BF1|c:26:buf32|output~3_combout\ $ (VCC))))
-- \dp|ALUL|add|temp[26]~53\ = CARRY((!\dp|ALUL|add|temp[25]~51\ & (\dp|ALUL|add|b_inv~combout\ $ (\dp|ALUL|regC|BF1|c:26:buf32|output~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|b_inv~combout\,
	datab => \dp|ALUL|regC|BF1|c:26:buf32|output~3_combout\,
	datad => VCC,
	cin => \dp|ALUL|add|temp[25]~51\,
	combout => \dp|ALUL|add|temp[26]~52_combout\,
	cout => \dp|ALUL|add|temp[26]~53\);

-- Location: LCCOMB_X20_Y9_N24
\dp|ALUL|regC|DFF1|c:26:dff32|d_input~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:26:dff32|d_input~17_combout\ = (\dp|ALUL|regA|A_R|c:26:dff32|dff0|q~q\ & ((\dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\) # ((\cu|control|NEG~combout\ & \dp|ALUL|add|temp[26]~52_combout\)))) # 
-- (!\dp|ALUL|regA|A_R|c:26:dff32|dff0|q~q\ & (\cu|control|NEG~combout\ & ((\dp|ALUL|add|temp[26]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regA|A_R|c:26:dff32|dff0|q~q\,
	datab => \cu|control|NEG~combout\,
	datac => \dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\,
	datad => \dp|ALUL|add|temp[26]~52_combout\,
	combout => \dp|ALUL|regC|DFF1|c:26:dff32|d_input~17_combout\);

-- Location: LCCOMB_X20_Y9_N22
\dp|ALUL|regC|DFF1|c:26:dff32|d_input~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:26:dff32|d_input~18_combout\ = (\dp|ALUL|regC|DFF1|c:26:dff32|d_input~17_combout\) # ((\dp|ALUL|regC|BF1|c:26:buf32|output~3_combout\ & ((\cu|control|CB~combout\) # (\dp|ALUL|regC|DFF1|c:26:dff32|d_input~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|CB~combout\,
	datab => \dp|ALUL|regC|BF1|c:26:buf32|output~3_combout\,
	datac => \dp|ALUL|regC|DFF1|c:26:dff32|d_input~21_combout\,
	datad => \dp|ALUL|regC|DFF1|c:26:dff32|d_input~17_combout\,
	combout => \dp|ALUL|regC|DFF1|c:26:dff32|d_input~18_combout\);

-- Location: LCCOMB_X20_Y9_N16
\dp|ALUL|regC|DFF1|c:26:dff32|d_input~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:26:dff32|d_input~19_combout\ = (\dp|ALUL|regC|DFF1|c:26:dff32|d_input~16_combout\) # ((\dp|ALUL|regC|DFF1|c:26:dff32|d_input~18_combout\) # ((\dp|ALUL|l_s|Eout~0_combout\ & \dp|ALUL|regC|BF1|c:25:buf32|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|l_s|Eout~0_combout\,
	datab => \dp|ALUL|regC|DFF1|c:26:dff32|d_input~16_combout\,
	datac => \dp|ALUL|regC|DFF1|c:26:dff32|d_input~18_combout\,
	datad => \dp|ALUL|regC|BF1|c:25:buf32|output~3_combout\,
	combout => \dp|ALUL|regC|DFF1|c:26:dff32|d_input~19_combout\);

-- Location: FF_X23_Y9_N27
\dp|RegFIleL|gen_reg0|dff|c:26:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:26:buf32|output~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|RegFIleL|strop\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg0|dff|c:26:dff32|dff0|q~q\);

-- Location: LCCOMB_X23_Y9_N26
\dp|RegFIleL|gen_reg0|BFF_in[26]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|RegFIleL|gen_reg0|BFF_in\(26) = (\dp|RegFIleL|gen_reg0|dff|c:26:dff32|dff0|q~q\ & !\cu|control|BAout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|RegFIleL|gen_reg0|dff|c:26:dff32|dff0|q~q\,
	datad => \cu|control|BAout~0_combout\,
	combout => \dp|RegFIleL|gen_reg0|BFF_in\(26));

-- Location: FF_X23_Y9_N13
\dp|RegFIleL|gen_reg1|dffL|c:26:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:26:buf32|output~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|RegFIleL|strop\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg1|dffL|c:26:dff32|dff0|q~q\);

-- Location: LCCOMB_X23_Y9_N12
\dp|ALUL|regC|BF1|c:26:buf32|output~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:26:buf32|output~2_combout\ = ((\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & ((\dp|RegFIleL|gen_reg1|dffL|c:26:dff32|dff0|q~q\))) # (!\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & (\dp|RegFIleL|gen_reg0|BFF_in\(26)))) # 
-- (!\dp|RegFIleL|r_out_OR_ba_out~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RegFIleL|gen_reg0|BFF_in\(26),
	datab => \dp|RegFIleL|reg|input_decoder[0]~4_combout\,
	datac => \dp|RegFIleL|gen_reg1|dffL|c:26:dff32|dff0|q~q\,
	datad => \dp|RegFIleL|r_out_OR_ba_out~5_combout\,
	combout => \dp|ALUL|regC|BF1|c:26:buf32|output~2_combout\);

-- Location: LCCOMB_X20_Y12_N0
\dp|ALUL|add|b_sig[26]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|b_sig\(26) = \dp|ALUL|add|b_inv~combout\ $ (((\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\) # ((\dp|ALUL|regC|BF1|c:26:buf32|output~2_combout\ & \dp|ALUL|regC|BF1|c:26:buf32|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:26:buf32|output~2_combout\,
	datab => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	datac => \dp|ALUL|regC|BF1|c:26:buf32|output~1_combout\,
	datad => \dp|ALUL|add|b_inv~combout\,
	combout => \dp|ALUL|add|b_sig\(26));

-- Location: LCCOMB_X20_Y12_N6
\dp|ALUL|regC|DFF1|c:26:dff32|d_input~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:26:dff32|d_input~15_combout\ = (\dp|ALUL|add|add_E~9_combout\ & (\dp|ALUL|add|a_sig\(26) $ (\dp|ALUL|add|b_sig\(26) $ (\dp|ALUL|add|add_32|Y:25:full32|c_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|a_sig\(26),
	datab => \dp|ALUL|add|b_sig\(26),
	datac => \dp|ALUL|add|add_E~9_combout\,
	datad => \dp|ALUL|add|add_32|Y:25:full32|c_out~0_combout\,
	combout => \dp|ALUL|regC|DFF1|c:26:dff32|d_input~15_combout\);

-- Location: LCCOMB_X20_Y12_N24
\dp|ALUL|regC|DFF1|c:26:dff32|d_input~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:26:dff32|d_input~20_combout\ = (\dp|ALUL|regC|DFF1|c:26:dff32|d_input~19_combout\) # ((\dp|ALUL|regC|DFF1|c:26:dff32|d_input~15_combout\) # ((\dp|ALUL|add|b_sig\(26) & \cu|control|NOTOP~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:26:dff32|d_input~19_combout\,
	datab => \dp|ALUL|add|b_sig\(26),
	datac => \cu|control|NOTOP~combout\,
	datad => \dp|ALUL|regC|DFF1|c:26:dff32|d_input~15_combout\,
	combout => \dp|ALUL|regC|DFF1|c:26:dff32|d_input~20_combout\);

-- Location: FF_X20_Y12_N25
\dp|ALUL|regC|DFF1|c:26:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|ALUL|regC|DFF1|c:26:dff32|d_input~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|Cin~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regC|DFF1|c:26:dff32|dff0|q~q\);

-- Location: IOIBUF_X17_Y0_N29
\md[26]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => md(26),
	o => \md[26]~input_o\);

-- Location: LCCOMB_X17_Y7_N4
\dp|MEML|or_G[26]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|MEML|or_G\(26) = (\md_read~input_o\ & ((\md[26]~input_o\) # ((\dp|ALUL|regC|BF1|c:26:buf32|output~3_combout\ & \cu|control|MDin~combout\)))) # (!\md_read~input_o\ & (((\dp|ALUL|regC|BF1|c:26:buf32|output~3_combout\ & \cu|control|MDin~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \md_read~input_o\,
	datab => \md[26]~input_o\,
	datac => \dp|ALUL|regC|BF1|c:26:buf32|output~3_combout\,
	datad => \cu|control|MDin~combout\,
	combout => \dp|MEML|or_G\(26));

-- Location: FF_X17_Y7_N5
\dp|MEML|md_r|c:26:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|MEML|or_G\(26),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \dp|MEML|md_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|md_r|c:26:dff32|dff0|q~q\);

-- Location: FF_X17_Y7_N31
\dp|PCL|dff|c:26:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:26:buf32|output~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|control|PCin~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|PCL|dff|c:26:dff32|dff0|q~q\);

-- Location: LCCOMB_X17_Y7_N30
\dp|ALUL|regC|BF1|c:26:buf32|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:26:buf32|output~0_combout\ = (\cu|control|PCout~combout\ & (\dp|PCL|dff|c:26:dff32|dff0|q~q\ & ((\dp|MEML|md_r|c:26:dff32|dff0|q~q\) # (!\cu|control|MDout~0_combout\)))) # (!\cu|control|PCout~combout\ & 
-- ((\dp|MEML|md_r|c:26:dff32|dff0|q~q\) # ((!\cu|control|MDout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|PCout~combout\,
	datab => \dp|MEML|md_r|c:26:dff32|dff0|q~q\,
	datac => \dp|PCL|dff|c:26:dff32|dff0|q~q\,
	datad => \cu|control|MDout~0_combout\,
	combout => \dp|ALUL|regC|BF1|c:26:buf32|output~0_combout\);

-- Location: LCCOMB_X20_Y12_N26
\dp|ALUL|regC|BF1|c:26:buf32|output~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:26:buf32|output~1_combout\ = (\dp|ALUL|regC|BF1|c:26:buf32|output~0_combout\ & (\dp|ALUL|regC|BF1|c:21:buf32|output~0_combout\ & ((\dp|ALUL|regC|DFF1|c:26:dff32|dff0|q~q\) # (!\cu|control|Cout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|Cout~combout\,
	datab => \dp|ALUL|regC|DFF1|c:26:dff32|dff0|q~q\,
	datac => \dp|ALUL|regC|BF1|c:26:buf32|output~0_combout\,
	datad => \dp|ALUL|regC|BF1|c:21:buf32|output~0_combout\,
	combout => \dp|ALUL|regC|BF1|c:26:buf32|output~1_combout\);

-- Location: LCCOMB_X20_Y12_N8
\dp|ALUL|regC|BF1|c:26:buf32|output~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:26:buf32|output~3_combout\ = (\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\) # ((\dp|ALUL|regC|BF1|c:26:buf32|output~1_combout\ & \dp|ALUL|regC|BF1|c:26:buf32|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	datac => \dp|ALUL|regC|BF1|c:26:buf32|output~1_combout\,
	datad => \dp|ALUL|regC|BF1|c:26:buf32|output~2_combout\,
	combout => \dp|ALUL|regC|BF1|c:26:buf32|output~3_combout\);

-- Location: LCCOMB_X22_Y9_N24
\dp|ALUL|add|temp[28]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|temp[28]~56_combout\ = (\dp|ALUL|add|temp[27]~55\ & ((\dp|ALUL|regC|BF1|c:28:buf32|output~3_combout\ $ (\dp|ALUL|add|b_inv~combout\)))) # (!\dp|ALUL|add|temp[27]~55\ & (\dp|ALUL|regC|BF1|c:28:buf32|output~3_combout\ $ 
-- (\dp|ALUL|add|b_inv~combout\ $ (VCC))))
-- \dp|ALUL|add|temp[28]~57\ = CARRY((!\dp|ALUL|add|temp[27]~55\ & (\dp|ALUL|regC|BF1|c:28:buf32|output~3_combout\ $ (\dp|ALUL|add|b_inv~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:28:buf32|output~3_combout\,
	datab => \dp|ALUL|add|b_inv~combout\,
	datad => VCC,
	cin => \dp|ALUL|add|temp[27]~55\,
	combout => \dp|ALUL|add|temp[28]~56_combout\,
	cout => \dp|ALUL|add|temp[28]~57\);

-- Location: LCCOMB_X23_Y7_N16
\dp|ALUL|regC|DFF1|c:28:dff32|d_input~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:28:dff32|d_input~15_combout\ = (\dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\ & ((\dp|ALUL|regA|A_R|c:28:dff32|dff0|q~q\) # ((\cu|control|NEG~combout\ & \dp|ALUL|add|temp[28]~56_combout\)))) # 
-- (!\dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\ & (\cu|control|NEG~combout\ & (\dp|ALUL|add|temp[28]~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\,
	datab => \cu|control|NEG~combout\,
	datac => \dp|ALUL|add|temp[28]~56_combout\,
	datad => \dp|ALUL|regA|A_R|c:28:dff32|dff0|q~q\,
	combout => \dp|ALUL|regC|DFF1|c:28:dff32|d_input~15_combout\);

-- Location: FF_X23_Y9_N1
\dp|RegFIleL|gen_reg1|dffL|c:28:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:28:buf32|output~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|RegFIleL|strop\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg1|dffL|c:28:dff32|dff0|q~q\);

-- Location: FF_X23_Y9_N23
\dp|RegFIleL|gen_reg0|dff|c:28:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:28:buf32|output~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|RegFIleL|strop\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg0|dff|c:28:dff32|dff0|q~q\);

-- Location: LCCOMB_X23_Y9_N22
\dp|RegFIleL|gen_reg0|BFF_in[28]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|RegFIleL|gen_reg0|BFF_in\(28) = (\dp|RegFIleL|gen_reg0|dff|c:28:dff32|dff0|q~q\ & !\cu|control|BAout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|RegFIleL|gen_reg0|dff|c:28:dff32|dff0|q~q\,
	datad => \cu|control|BAout~0_combout\,
	combout => \dp|RegFIleL|gen_reg0|BFF_in\(28));

-- Location: LCCOMB_X23_Y9_N0
\dp|ALUL|regC|BF1|c:28:buf32|output~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:28:buf32|output~2_combout\ = ((\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & (\dp|RegFIleL|gen_reg1|dffL|c:28:dff32|dff0|q~q\)) # (!\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & ((\dp|RegFIleL|gen_reg0|BFF_in\(28))))) # 
-- (!\dp|RegFIleL|r_out_OR_ba_out~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RegFIleL|r_out_OR_ba_out~5_combout\,
	datab => \dp|RegFIleL|reg|input_decoder[0]~4_combout\,
	datac => \dp|RegFIleL|gen_reg1|dffL|c:28:dff32|dff0|q~q\,
	datad => \dp|RegFIleL|gen_reg0|BFF_in\(28),
	combout => \dp|ALUL|regC|BF1|c:28:buf32|output~2_combout\);

-- Location: LCCOMB_X23_Y7_N6
\dp|ALUL|add|b_sig[28]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|b_sig\(28) = \dp|ALUL|add|b_inv~combout\ $ (((\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\) # ((\dp|ALUL|regC|BF1|c:28:buf32|output~2_combout\ & \dp|ALUL|regC|BF1|c:28:buf32|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	datab => \dp|ALUL|regC|BF1|c:28:buf32|output~2_combout\,
	datac => \dp|ALUL|add|b_inv~combout\,
	datad => \dp|ALUL|regC|BF1|c:28:buf32|output~1_combout\,
	combout => \dp|ALUL|add|b_sig\(28));

-- Location: LCCOMB_X23_Y7_N0
\dp|ALUL|add|a_sig[28]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|a_sig\(28) = (\dp|ALUL|regA|A_R|c:28:dff32|dff0|q~q\ & ((\cu|st|con|count_i\(0)) # ((\cu|st|con|count_i\(2)) # (\cu|st|con|count_i\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regA|A_R|c:28:dff32|dff0|q~q\,
	datab => \cu|st|con|count_i\(0),
	datac => \cu|st|con|count_i\(2),
	datad => \cu|st|con|count_i\(1),
	combout => \dp|ALUL|add|a_sig\(28));

-- Location: LCCOMB_X20_Y11_N30
\dp|ALUL|add|add_32|Y:27:full32|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|add_32|Y:27:full32|c_out~0_combout\ = (\dp|ALUL|add|a_sig\(27) & ((\dp|ALUL|add|add_32|Y:26:full32|c_out~0_combout\) # (\dp|ALUL|regC|BF1|c:27:buf32|output~3_combout\ $ (\dp|ALUL|add|b_inv~combout\)))) # (!\dp|ALUL|add|a_sig\(27) & 
-- (\dp|ALUL|add|add_32|Y:26:full32|c_out~0_combout\ & (\dp|ALUL|regC|BF1|c:27:buf32|output~3_combout\ $ (\dp|ALUL|add|b_inv~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|a_sig\(27),
	datab => \dp|ALUL|regC|BF1|c:27:buf32|output~3_combout\,
	datac => \dp|ALUL|add|b_inv~combout\,
	datad => \dp|ALUL|add|add_32|Y:26:full32|c_out~0_combout\,
	combout => \dp|ALUL|add|add_32|Y:27:full32|c_out~0_combout\);

-- Location: LCCOMB_X23_Y11_N6
\dp|ALUL|regC|DFF1|c:28:dff32|d_input~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:28:dff32|d_input~16_combout\ = (\dp|ALUL|add|add_E~9_combout\ & (\dp|ALUL|add|b_sig\(28) $ (\dp|ALUL|add|a_sig\(28) $ (\dp|ALUL|add|add_32|Y:27:full32|c_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|b_sig\(28),
	datab => \dp|ALUL|add|a_sig\(28),
	datac => \dp|ALUL|add|add_E~9_combout\,
	datad => \dp|ALUL|add|add_32|Y:27:full32|c_out~0_combout\,
	combout => \dp|ALUL|regC|DFF1|c:28:dff32|d_input~16_combout\);

-- Location: LCCOMB_X23_Y11_N24
\dp|ALUL|regC|DFF1|c:28:dff32|d_input~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:28:dff32|d_input~19_combout\ = (\dp|ALUL|regC|DFF1|c:28:dff32|d_input~18_combout\) # ((\dp|ALUL|regC|DFF1|c:28:dff32|d_input~17_combout\) # ((\dp|ALUL|regC|DFF1|c:28:dff32|d_input~15_combout\) # 
-- (\dp|ALUL|regC|DFF1|c:28:dff32|d_input~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:28:dff32|d_input~18_combout\,
	datab => \dp|ALUL|regC|DFF1|c:28:dff32|d_input~17_combout\,
	datac => \dp|ALUL|regC|DFF1|c:28:dff32|d_input~15_combout\,
	datad => \dp|ALUL|regC|DFF1|c:28:dff32|d_input~16_combout\,
	combout => \dp|ALUL|regC|DFF1|c:28:dff32|d_input~19_combout\);

-- Location: FF_X23_Y11_N25
\dp|ALUL|regC|DFF1|c:28:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|ALUL|regC|DFF1|c:28:dff32|d_input~19_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|Cin~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regC|DFF1|c:28:dff32|dff0|q~q\);

-- Location: IOIBUF_X19_Y0_N15
\md[28]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => md(28),
	o => \md[28]~input_o\);

-- Location: LCCOMB_X17_Y7_N16
\dp|MEML|or_G[28]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|MEML|or_G\(28) = (\md[28]~input_o\ & ((\md_read~input_o\) # ((\cu|control|MDin~combout\ & \dp|ALUL|regC|BF1|c:28:buf32|output~3_combout\)))) # (!\md[28]~input_o\ & (\cu|control|MDin~combout\ & (\dp|ALUL|regC|BF1|c:28:buf32|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \md[28]~input_o\,
	datab => \cu|control|MDin~combout\,
	datac => \dp|ALUL|regC|BF1|c:28:buf32|output~3_combout\,
	datad => \md_read~input_o\,
	combout => \dp|MEML|or_G\(28));

-- Location: FF_X17_Y7_N17
\dp|MEML|md_r|c:28:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|MEML|or_G\(28),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \dp|MEML|md_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|md_r|c:28:dff32|dff0|q~q\);

-- Location: FF_X17_Y7_N3
\dp|PCL|dff|c:28:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:28:buf32|output~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|control|PCin~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|PCL|dff|c:28:dff32|dff0|q~q\);

-- Location: LCCOMB_X17_Y7_N2
\dp|ALUL|regC|BF1|c:28:buf32|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:28:buf32|output~0_combout\ = (\cu|control|PCout~combout\ & (\dp|PCL|dff|c:28:dff32|dff0|q~q\ & ((\dp|MEML|md_r|c:28:dff32|dff0|q~q\) # (!\cu|control|MDout~0_combout\)))) # (!\cu|control|PCout~combout\ & 
-- ((\dp|MEML|md_r|c:28:dff32|dff0|q~q\) # ((!\cu|control|MDout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|PCout~combout\,
	datab => \dp|MEML|md_r|c:28:dff32|dff0|q~q\,
	datac => \dp|PCL|dff|c:28:dff32|dff0|q~q\,
	datad => \cu|control|MDout~0_combout\,
	combout => \dp|ALUL|regC|BF1|c:28:buf32|output~0_combout\);

-- Location: LCCOMB_X22_Y7_N24
\dp|ALUL|regC|BF1|c:28:buf32|output~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:28:buf32|output~1_combout\ = (\dp|ALUL|regC|BF1|c:21:buf32|output~0_combout\ & (\dp|ALUL|regC|BF1|c:28:buf32|output~0_combout\ & ((\dp|ALUL|regC|DFF1|c:28:dff32|dff0|q~q\) # (!\cu|control|Cout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|Cout~combout\,
	datab => \dp|ALUL|regC|DFF1|c:28:dff32|dff0|q~q\,
	datac => \dp|ALUL|regC|BF1|c:21:buf32|output~0_combout\,
	datad => \dp|ALUL|regC|BF1|c:28:buf32|output~0_combout\,
	combout => \dp|ALUL|regC|BF1|c:28:buf32|output~1_combout\);

-- Location: LCCOMB_X23_Y7_N30
\dp|ALUL|regC|BF1|c:28:buf32|output~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:28:buf32|output~3_combout\ = (\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\) # ((\dp|ALUL|regC|BF1|c:28:buf32|output~1_combout\ & \dp|ALUL|regC|BF1|c:28:buf32|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|ALUL|regC|BF1|c:28:buf32|output~1_combout\,
	datac => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	datad => \dp|ALUL|regC|BF1|c:28:buf32|output~2_combout\,
	combout => \dp|ALUL|regC|BF1|c:28:buf32|output~3_combout\);

-- Location: FF_X14_Y11_N25
\dp|IRL|ir28|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:28:buf32|output~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|st|dec|Mux0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|IRL|ir28|dff0|q~q\);

-- Location: LCCOMB_X17_Y11_N24
\cu|control|C2out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|control|C2out~0_combout\ = (\dp|IRL|ir30|dff0|q~q\ & ((\dp|IRL|ir31|dff0|q~q\) # (!\dp|IRL|ir29|dff0|q~q\))) # (!\dp|IRL|ir30|dff0|q~q\ & ((!\dp|IRL|ir31|dff0|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|IRL|ir29|dff0|q~q\,
	datac => \dp|IRL|ir30|dff0|q~q\,
	datad => \dp|IRL|ir31|dff0|q~q\,
	combout => \cu|control|C2out~0_combout\);

-- Location: LCCOMB_X17_Y11_N14
\cu|control|C2out~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|control|C2out~1_combout\ = ((\cu|control|C2out~0_combout\) # ((!\dp|IRL|ir31|dff0|q~q\ & \dp|IRL|ir28|dff0|q~q\))) # (!\dp|IRL|ir27|dff0|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|IRL|ir31|dff0|q~q\,
	datab => \dp|IRL|ir27|dff0|q~q\,
	datac => \dp|IRL|ir28|dff0|q~q\,
	datad => \cu|control|C2out~0_combout\,
	combout => \cu|control|C2out~1_combout\);

-- Location: LCCOMB_X17_Y11_N10
\cu|control|Cout~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|control|Cout~1_combout\ = (((!\cu|control|C1out~0_combout\) # (!\cu|control|Rout~1_combout\)) # (!\cu|control|C2out~1_combout\)) # (!\cu|control|Grb~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|Grb~0_combout\,
	datab => \cu|control|C2out~1_combout\,
	datac => \cu|control|Rout~1_combout\,
	datad => \cu|control|C1out~0_combout\,
	combout => \cu|control|Cout~1_combout\);

-- Location: LCCOMB_X16_Y11_N6
\cu|control|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|control|Cout~0_combout\ = (\cu|st|dec|Mux0~1_combout\) # ((\cu|control|Rin~0_combout\) # ((!\dp|shLable|n_equ_zero~1_combout\ & \cu|st|dec|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|dec|Mux0~1_combout\,
	datab => \dp|shLable|n_equ_zero~1_combout\,
	datac => \cu|st|dec|Mux0~0_combout\,
	datad => \cu|control|Rin~0_combout\,
	combout => \cu|control|Cout~0_combout\);

-- Location: LCCOMB_X16_Y11_N20
\cu|control|Cout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|control|Cout~combout\ = (\cu|control|Goto6~combout\) # ((\cu|control|Cout~0_combout\) # ((\cu|st|dec|Mux0~4_combout\ & \cu|control|Cout~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|dec|Mux0~4_combout\,
	datab => \cu|control|Goto6~combout\,
	datac => \cu|control|Cout~1_combout\,
	datad => \cu|control|Cout~0_combout\,
	combout => \cu|control|Cout~combout\);

-- Location: IOIBUF_X17_Y0_N8
\md[31]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => md(31),
	o => \md[31]~input_o\);

-- Location: LCCOMB_X17_Y7_N0
\dp|MEML|or_G[31]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|MEML|or_G\(31) = (\md_read~input_o\ & ((\md[31]~input_o\) # ((\dp|ALUL|regC|BF1|c:31:buf32|output~3_combout\ & \cu|control|MDin~combout\)))) # (!\md_read~input_o\ & (\dp|ALUL|regC|BF1|c:31:buf32|output~3_combout\ & ((\cu|control|MDin~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \md_read~input_o\,
	datab => \dp|ALUL|regC|BF1|c:31:buf32|output~3_combout\,
	datac => \md[31]~input_o\,
	datad => \cu|control|MDin~combout\,
	combout => \dp|MEML|or_G\(31));

-- Location: FF_X17_Y7_N1
\dp|MEML|md_r|c:31:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|MEML|or_G\(31),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \dp|MEML|md_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|md_r|c:31:dff32|dff0|q~q\);

-- Location: FF_X17_Y7_N23
\dp|PCL|dff|c:31:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:31:buf32|output~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|control|PCin~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|PCL|dff|c:31:dff32|dff0|q~q\);

-- Location: LCCOMB_X17_Y7_N22
\dp|ALUL|regC|BF1|c:31:buf32|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:31:buf32|output~0_combout\ = (\cu|control|PCout~combout\ & (\dp|PCL|dff|c:31:dff32|dff0|q~q\ & ((\dp|MEML|md_r|c:31:dff32|dff0|q~q\) # (!\cu|control|MDout~0_combout\)))) # (!\cu|control|PCout~combout\ & 
-- ((\dp|MEML|md_r|c:31:dff32|dff0|q~q\) # ((!\cu|control|MDout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|PCout~combout\,
	datab => \dp|MEML|md_r|c:31:dff32|dff0|q~q\,
	datac => \dp|PCL|dff|c:31:dff32|dff0|q~q\,
	datad => \cu|control|MDout~0_combout\,
	combout => \dp|ALUL|regC|BF1|c:31:buf32|output~0_combout\);

-- Location: FF_X23_Y7_N19
\dp|ALUL|regA|A_R|c:31:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:31:buf32|output~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|control|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regA|A_R|c:31:dff32|dff0|q~q\);

-- Location: LCCOMB_X22_Y9_N26
\dp|ALUL|add|temp[29]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|temp[29]~58_combout\ = (\dp|ALUL|add|temp[28]~57\ & (\dp|ALUL|add|b_inv~combout\ $ ((!\dp|ALUL|regC|BF1|c:29:buf32|output~3_combout\)))) # (!\dp|ALUL|add|temp[28]~57\ & ((\dp|ALUL|add|b_inv~combout\ $ 
-- (\dp|ALUL|regC|BF1|c:29:buf32|output~3_combout\)) # (GND)))
-- \dp|ALUL|add|temp[29]~59\ = CARRY((\dp|ALUL|add|b_inv~combout\ $ (!\dp|ALUL|regC|BF1|c:29:buf32|output~3_combout\)) # (!\dp|ALUL|add|temp[28]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|b_inv~combout\,
	datab => \dp|ALUL|regC|BF1|c:29:buf32|output~3_combout\,
	datad => VCC,
	cin => \dp|ALUL|add|temp[28]~57\,
	combout => \dp|ALUL|add|temp[29]~58_combout\,
	cout => \dp|ALUL|add|temp[29]~59\);

-- Location: LCCOMB_X22_Y9_N28
\dp|ALUL|add|temp[30]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|temp[30]~60_combout\ = (\dp|ALUL|add|temp[29]~59\ & ((\dp|ALUL|regC|BF1|c:30:buf32|output~3_combout\ $ (\dp|ALUL|add|b_inv~combout\)))) # (!\dp|ALUL|add|temp[29]~59\ & (\dp|ALUL|regC|BF1|c:30:buf32|output~3_combout\ $ 
-- (\dp|ALUL|add|b_inv~combout\ $ (VCC))))
-- \dp|ALUL|add|temp[30]~61\ = CARRY((!\dp|ALUL|add|temp[29]~59\ & (\dp|ALUL|regC|BF1|c:30:buf32|output~3_combout\ $ (\dp|ALUL|add|b_inv~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:30:buf32|output~3_combout\,
	datab => \dp|ALUL|add|b_inv~combout\,
	datad => VCC,
	cin => \dp|ALUL|add|temp[29]~59\,
	combout => \dp|ALUL|add|temp[30]~60_combout\,
	cout => \dp|ALUL|add|temp[30]~61\);

-- Location: LCCOMB_X22_Y9_N30
\dp|ALUL|add|temp[31]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|temp[31]~62_combout\ = \dp|ALUL|regC|BF1|c:31:buf32|output~3_combout\ $ (\dp|ALUL|add|temp[30]~61\ $ (\dp|ALUL|add|b_inv~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dp|ALUL|regC|BF1|c:31:buf32|output~3_combout\,
	datad => \dp|ALUL|add|b_inv~combout\,
	cin => \dp|ALUL|add|temp[30]~61\,
	combout => \dp|ALUL|add|temp[31]~62_combout\);

-- Location: LCCOMB_X23_Y7_N18
\dp|ALUL|regC|DFF1|c:31:dff32|d_input~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:31:dff32|d_input~16_combout\ = (\dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\ & ((\dp|ALUL|regA|A_R|c:31:dff32|dff0|q~q\) # ((\cu|control|NEG~combout\ & \dp|ALUL|add|temp[31]~62_combout\)))) # 
-- (!\dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\ & (\cu|control|NEG~combout\ & ((\dp|ALUL|add|temp[31]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\,
	datab => \cu|control|NEG~combout\,
	datac => \dp|ALUL|regA|A_R|c:31:dff32|dff0|q~q\,
	datad => \dp|ALUL|add|temp[31]~62_combout\,
	combout => \dp|ALUL|regC|DFF1|c:31:dff32|d_input~16_combout\);

-- Location: LCCOMB_X23_Y7_N22
\dp|ALUL|regC|DFF1|c:31:dff32|d_input~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:31:dff32|d_input~3_combout\ = (!\cu|st|con|count_i\(1) & (!\cu|st|con|count_i\(0) & ((\dp|IRL|ir28|dff0|q~q\) # (\dp|ALUL|regA|A_R|c:31:dff32|dff0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(1),
	datab => \dp|IRL|ir28|dff0|q~q\,
	datac => \cu|st|con|count_i\(0),
	datad => \dp|ALUL|regA|A_R|c:31:dff32|dff0|q~q\,
	combout => \dp|ALUL|regC|DFF1|c:31:dff32|d_input~3_combout\);

-- Location: LCCOMB_X23_Y7_N28
\dp|ALUL|regC|DFF1|c:31:dff32|d_input~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:31:dff32|d_input~22_combout\ = (\dp|ALUL|regC|DFF1|c:31:dff32|d_input~3_combout\ & (\dp|IRL|ir31|dff0|q~q\ & (\cu|st|con|count_i\(2) & !\dp|IRL|ir30|dff0|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:31:dff32|d_input~3_combout\,
	datab => \dp|IRL|ir31|dff0|q~q\,
	datac => \cu|st|con|count_i\(2),
	datad => \dp|IRL|ir30|dff0|q~q\,
	combout => \dp|ALUL|regC|DFF1|c:31:dff32|d_input~22_combout\);

-- Location: LCCOMB_X20_Y7_N4
\dp|ALUL|regC|DFF1|c:31:dff32|d_input~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:31:dff32|d_input~17_combout\ = (\cu|control|CB~combout\) # ((\dp|ALUL|regC|DFF1|c:31:dff32|d_input~22_combout\) # ((\dp|ALUL|r_s|Eout~0_combout\ & \cu|de|Mux10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|r_s|Eout~0_combout\,
	datab => \cu|control|CB~combout\,
	datac => \cu|de|Mux10~0_combout\,
	datad => \dp|ALUL|regC|DFF1|c:31:dff32|d_input~22_combout\,
	combout => \dp|ALUL|regC|DFF1|c:31:dff32|d_input~17_combout\);

-- Location: FF_X23_Y9_N3
\dp|RegFIleL|gen_reg0|dff|c:31:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:31:buf32|output~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|RegFIleL|strop\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg0|dff|c:31:dff32|dff0|q~q\);

-- Location: LCCOMB_X23_Y9_N2
\dp|RegFIleL|gen_reg0|BFF_in[31]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|RegFIleL|gen_reg0|BFF_in\(31) = (\dp|RegFIleL|gen_reg0|dff|c:31:dff32|dff0|q~q\ & !\cu|control|BAout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|RegFIleL|gen_reg0|dff|c:31:dff32|dff0|q~q\,
	datad => \cu|control|BAout~0_combout\,
	combout => \dp|RegFIleL|gen_reg0|BFF_in\(31));

-- Location: FF_X23_Y9_N29
\dp|RegFIleL|gen_reg1|dffL|c:31:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:31:buf32|output~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|RegFIleL|strop\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg1|dffL|c:31:dff32|dff0|q~q\);

-- Location: LCCOMB_X23_Y9_N28
\dp|ALUL|regC|BF1|c:31:buf32|output~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:31:buf32|output~2_combout\ = ((\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & ((\dp|RegFIleL|gen_reg1|dffL|c:31:dff32|dff0|q~q\))) # (!\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & (\dp|RegFIleL|gen_reg0|BFF_in\(31)))) # 
-- (!\dp|RegFIleL|r_out_OR_ba_out~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RegFIleL|r_out_OR_ba_out~5_combout\,
	datab => \dp|RegFIleL|gen_reg0|BFF_in\(31),
	datac => \dp|RegFIleL|gen_reg1|dffL|c:31:dff32|dff0|q~q\,
	datad => \dp|RegFIleL|reg|input_decoder[0]~4_combout\,
	combout => \dp|ALUL|regC|BF1|c:31:buf32|output~2_combout\);

-- Location: LCCOMB_X23_Y7_N24
\dp|ALUL|add|b_sig[31]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|b_sig\(31) = \dp|ALUL|add|b_inv~combout\ $ (((\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\) # ((\dp|ALUL|regC|BF1|c:31:buf32|output~1_combout\ & \dp|ALUL|regC|BF1|c:31:buf32|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:31:buf32|output~1_combout\,
	datab => \dp|ALUL|add|b_inv~combout\,
	datac => \dp|ALUL|regC|BF1|c:31:buf32|output~2_combout\,
	datad => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	combout => \dp|ALUL|add|b_sig\(31));

-- Location: LCCOMB_X20_Y7_N18
\dp|ALUL|regC|DFF1|c:31:dff32|d_input~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:31:dff32|d_input~18_combout\ = (\dp|ALUL|regC|BF1|c:31:buf32|output~3_combout\ & ((\dp|ALUL|regC|DFF1|c:31:dff32|d_input~17_combout\) # ((\cu|control|NOTOP~combout\ & \dp|ALUL|add|b_sig\(31))))) # 
-- (!\dp|ALUL|regC|BF1|c:31:buf32|output~3_combout\ & (\cu|control|NOTOP~combout\ & ((\dp|ALUL|add|b_sig\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:31:buf32|output~3_combout\,
	datab => \cu|control|NOTOP~combout\,
	datac => \dp|ALUL|regC|DFF1|c:31:dff32|d_input~17_combout\,
	datad => \dp|ALUL|add|b_sig\(31),
	combout => \dp|ALUL|regC|DFF1|c:31:dff32|d_input~18_combout\);

-- Location: LCCOMB_X23_Y7_N14
\dp|ALUL|add|a_sig[31]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|a_sig\(31) = (\dp|ALUL|regA|A_R|c:31:dff32|dff0|q~q\ & ((\cu|st|con|count_i\(1)) # ((\cu|st|con|count_i\(0)) # (\cu|st|con|count_i\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(1),
	datab => \cu|st|con|count_i\(0),
	datac => \cu|st|con|count_i\(2),
	datad => \dp|ALUL|regA|A_R|c:31:dff32|dff0|q~q\,
	combout => \dp|ALUL|add|a_sig\(31));

-- Location: LCCOMB_X20_Y7_N24
\dp|ALUL|regA|A_R|c:30:dff32|dff0|q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regA|A_R|c:30:dff32|dff0|q~feeder_combout\ = \dp|ALUL|regC|BF1|c:30:buf32|output~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|ALUL|regC|BF1|c:30:buf32|output~3_combout\,
	combout => \dp|ALUL|regA|A_R|c:30:dff32|dff0|q~feeder_combout\);

-- Location: FF_X20_Y7_N25
\dp|ALUL|regA|A_R|c:30:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|ALUL|regA|A_R|c:30:dff32|dff0|q~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regA|A_R|c:30:dff32|dff0|q~q\);

-- Location: LCCOMB_X20_Y7_N26
\dp|ALUL|add|a_sig[30]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|a_sig\(30) = (\dp|ALUL|regA|A_R|c:30:dff32|dff0|q~q\ & ((\cu|st|con|count_i\(1)) # ((\cu|st|con|count_i\(0)) # (\cu|st|con|count_i\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(1),
	datab => \dp|ALUL|regA|A_R|c:30:dff32|dff0|q~q\,
	datac => \cu|st|con|count_i\(0),
	datad => \cu|st|con|count_i\(2),
	combout => \dp|ALUL|add|a_sig\(30));

-- Location: FF_X23_Y11_N9
\dp|ALUL|regA|A_R|c:29:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|ALUL|regC|BF1|c:29:buf32|output~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regA|A_R|c:29:dff32|dff0|q~q\);

-- Location: LCCOMB_X23_Y11_N14
\dp|ALUL|add|a_sig[29]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|a_sig\(29) = (\dp|ALUL|regA|A_R|c:29:dff32|dff0|q~q\ & ((\cu|st|con|count_i\(1)) # ((\cu|st|con|count_i\(2)) # (\cu|st|con|count_i\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(1),
	datab => \cu|st|con|count_i\(2),
	datac => \dp|ALUL|regA|A_R|c:29:dff32|dff0|q~q\,
	datad => \cu|st|con|count_i\(0),
	combout => \dp|ALUL|add|a_sig\(29));

-- Location: LCCOMB_X20_Y11_N24
\dp|ALUL|add|add_32|Y:28:full32|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|add_32|Y:28:full32|c_out~0_combout\ = (\dp|ALUL|add|add_32|Y:27:full32|c_out~0_combout\ & ((\dp|ALUL|add|a_sig\(28)) # (\dp|ALUL|regC|BF1|c:28:buf32|output~3_combout\ $ (\dp|ALUL|add|b_inv~combout\)))) # 
-- (!\dp|ALUL|add|add_32|Y:27:full32|c_out~0_combout\ & (\dp|ALUL|add|a_sig\(28) & (\dp|ALUL|regC|BF1|c:28:buf32|output~3_combout\ $ (\dp|ALUL|add|b_inv~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:28:buf32|output~3_combout\,
	datab => \dp|ALUL|add|b_inv~combout\,
	datac => \dp|ALUL|add|add_32|Y:27:full32|c_out~0_combout\,
	datad => \dp|ALUL|add|a_sig\(28),
	combout => \dp|ALUL|add|add_32|Y:28:full32|c_out~0_combout\);

-- Location: LCCOMB_X20_Y11_N22
\dp|ALUL|add|add_32|Y:29:full32|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|add_32|Y:29:full32|c_out~0_combout\ = (\dp|ALUL|add|a_sig\(29) & ((\dp|ALUL|add|add_32|Y:28:full32|c_out~0_combout\) # (\dp|ALUL|add|b_inv~combout\ $ (\dp|ALUL|regC|BF1|c:29:buf32|output~3_combout\)))) # (!\dp|ALUL|add|a_sig\(29) & 
-- (\dp|ALUL|add|add_32|Y:28:full32|c_out~0_combout\ & (\dp|ALUL|add|b_inv~combout\ $ (\dp|ALUL|regC|BF1|c:29:buf32|output~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|a_sig\(29),
	datab => \dp|ALUL|add|b_inv~combout\,
	datac => \dp|ALUL|regC|BF1|c:29:buf32|output~3_combout\,
	datad => \dp|ALUL|add|add_32|Y:28:full32|c_out~0_combout\,
	combout => \dp|ALUL|add|add_32|Y:29:full32|c_out~0_combout\);

-- Location: LCCOMB_X20_Y11_N28
\dp|ALUL|regC|DFF1|c:31:dff32|d_input~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:31:dff32|d_input~19_combout\ = (\dp|ALUL|add|a_sig\(30) & ((\dp|ALUL|add|add_32|Y:29:full32|c_out~0_combout\) # (\dp|ALUL|add|b_inv~combout\ $ (\dp|ALUL|regC|BF1|c:30:buf32|output~3_combout\)))) # (!\dp|ALUL|add|a_sig\(30) & 
-- (\dp|ALUL|add|add_32|Y:29:full32|c_out~0_combout\ & (\dp|ALUL|add|b_inv~combout\ $ (\dp|ALUL|regC|BF1|c:30:buf32|output~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|a_sig\(30),
	datab => \dp|ALUL|add|b_inv~combout\,
	datac => \dp|ALUL|add|add_32|Y:29:full32|c_out~0_combout\,
	datad => \dp|ALUL|regC|BF1|c:30:buf32|output~3_combout\,
	combout => \dp|ALUL|regC|DFF1|c:31:dff32|d_input~19_combout\);

-- Location: LCCOMB_X20_Y11_N26
\dp|ALUL|regC|DFF1|c:31:dff32|d_input~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:31:dff32|d_input~20_combout\ = (\dp|ALUL|add|add_E~9_combout\ & (\dp|ALUL|add|b_sig\(31) $ (\dp|ALUL|add|a_sig\(31) $ (\dp|ALUL|regC|DFF1|c:31:dff32|d_input~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|b_sig\(31),
	datab => \dp|ALUL|add|a_sig\(31),
	datac => \dp|ALUL|add|add_E~9_combout\,
	datad => \dp|ALUL|regC|DFF1|c:31:dff32|d_input~19_combout\,
	combout => \dp|ALUL|regC|DFF1|c:31:dff32|d_input~20_combout\);

-- Location: LCCOMB_X20_Y7_N22
\dp|ALUL|regC|DFF1|c:30:dff32|d_input~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:30:dff32|d_input~16_combout\ = (\cu|control|NOTOP~combout\ & (\dp|ALUL|add|b_inv~combout\ $ (\dp|ALUL|regC|BF1|c:30:buf32|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|b_inv~combout\,
	datac => \cu|control|NOTOP~combout\,
	datad => \dp|ALUL|regC|BF1|c:30:buf32|output~3_combout\,
	combout => \dp|ALUL|regC|DFF1|c:30:dff32|d_input~16_combout\);

-- Location: LCCOMB_X20_Y7_N28
\dp|ALUL|regC|DFF1|c:30:dff32|d_input~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:30:dff32|d_input~17_combout\ = (\dp|ALUL|regC|BF1|c:31:buf32|output~3_combout\ & ((\dp|ALUL|r_s|Eout~0_combout\) # ((\dp|ALUL|regC|BF1|c:29:buf32|output~3_combout\ & \dp|ALUL|l_s|Eout~0_combout\)))) # 
-- (!\dp|ALUL|regC|BF1|c:31:buf32|output~3_combout\ & (\dp|ALUL|regC|BF1|c:29:buf32|output~3_combout\ & ((\dp|ALUL|l_s|Eout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:31:buf32|output~3_combout\,
	datab => \dp|ALUL|regC|BF1|c:29:buf32|output~3_combout\,
	datac => \dp|ALUL|r_s|Eout~0_combout\,
	datad => \dp|ALUL|l_s|Eout~0_combout\,
	combout => \dp|ALUL|regC|DFF1|c:30:dff32|d_input~17_combout\);

-- Location: LCCOMB_X20_Y7_N14
\dp|ALUL|regC|DFF1|c:30:dff32|d_input~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:30:dff32|d_input~18_combout\ = (\cu|control|NEG~combout\ & ((\dp|ALUL|add|temp[30]~60_combout\) # ((\dp|ALUL|regA|A_R|c:30:dff32|dff0|q~q\ & \dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\)))) # (!\cu|control|NEG~combout\ & 
-- (\dp|ALUL|regA|A_R|c:30:dff32|dff0|q~q\ & (\dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|NEG~combout\,
	datab => \dp|ALUL|regA|A_R|c:30:dff32|dff0|q~q\,
	datac => \dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\,
	datad => \dp|ALUL|add|temp[30]~60_combout\,
	combout => \dp|ALUL|regC|DFF1|c:30:dff32|d_input~18_combout\);

-- Location: LCCOMB_X20_Y7_N2
\dp|ALUL|regC|DFF1|c:30:dff32|d_input~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:30:dff32|d_input~3_combout\ = (!\cu|st|con|count_i\(0) & (!\cu|st|con|count_i\(1) & ((\dp|IRL|ir28|dff0|q~q\) # (\dp|ALUL|regA|A_R|c:30:dff32|dff0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|IRL|ir28|dff0|q~q\,
	datab => \cu|st|con|count_i\(0),
	datac => \cu|st|con|count_i\(1),
	datad => \dp|ALUL|regA|A_R|c:30:dff32|dff0|q~q\,
	combout => \dp|ALUL|regC|DFF1|c:30:dff32|d_input~3_combout\);

-- Location: LCCOMB_X20_Y7_N16
\dp|ALUL|regC|DFF1|c:30:dff32|d_input~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:30:dff32|d_input~21_combout\ = (\cu|st|con|count_i\(2) & (!\dp|IRL|ir30|dff0|q~q\ & (\dp|IRL|ir31|dff0|q~q\ & \dp|ALUL|regC|DFF1|c:30:dff32|d_input~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(2),
	datab => \dp|IRL|ir30|dff0|q~q\,
	datac => \dp|IRL|ir31|dff0|q~q\,
	datad => \dp|ALUL|regC|DFF1|c:30:dff32|d_input~3_combout\,
	combout => \dp|ALUL|regC|DFF1|c:30:dff32|d_input~21_combout\);

-- Location: LCCOMB_X20_Y7_N8
\dp|ALUL|regC|DFF1|c:30:dff32|d_input~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:30:dff32|d_input~19_combout\ = (\dp|ALUL|regC|DFF1|c:30:dff32|d_input~18_combout\) # ((\dp|ALUL|regC|BF1|c:30:buf32|output~3_combout\ & ((\cu|control|CB~combout\) # (\dp|ALUL|regC|DFF1|c:30:dff32|d_input~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|CB~combout\,
	datab => \dp|ALUL|regC|BF1|c:30:buf32|output~3_combout\,
	datac => \dp|ALUL|regC|DFF1|c:30:dff32|d_input~18_combout\,
	datad => \dp|ALUL|regC|DFF1|c:30:dff32|d_input~21_combout\,
	combout => \dp|ALUL|regC|DFF1|c:30:dff32|d_input~19_combout\);

-- Location: LCCOMB_X20_Y7_N30
\dp|ALUL|add|b_sig[30]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|b_sig\(30) = \dp|ALUL|add|b_inv~combout\ $ (((\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\) # ((\dp|ALUL|regC|BF1|c:30:buf32|output~2_combout\ & \dp|ALUL|regC|BF1|c:30:buf32|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|b_inv~combout\,
	datab => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	datac => \dp|ALUL|regC|BF1|c:30:buf32|output~2_combout\,
	datad => \dp|ALUL|regC|BF1|c:30:buf32|output~1_combout\,
	combout => \dp|ALUL|add|b_sig\(30));

-- Location: LCCOMB_X20_Y7_N20
\dp|ALUL|regC|DFF1|c:30:dff32|d_input~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:30:dff32|d_input~15_combout\ = (\dp|ALUL|add|add_E~9_combout\ & (\dp|ALUL|add|a_sig\(30) $ (\dp|ALUL|add|b_sig\(30) $ (\dp|ALUL|add|add_32|Y:29:full32|c_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|a_sig\(30),
	datab => \dp|ALUL|add|add_E~9_combout\,
	datac => \dp|ALUL|add|b_sig\(30),
	datad => \dp|ALUL|add|add_32|Y:29:full32|c_out~0_combout\,
	combout => \dp|ALUL|regC|DFF1|c:30:dff32|d_input~15_combout\);

-- Location: LCCOMB_X20_Y7_N12
\dp|ALUL|regC|DFF1|c:30:dff32|d_input~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:30:dff32|d_input~20_combout\ = (\dp|ALUL|regC|DFF1|c:30:dff32|d_input~16_combout\) # ((\dp|ALUL|regC|DFF1|c:30:dff32|d_input~17_combout\) # ((\dp|ALUL|regC|DFF1|c:30:dff32|d_input~19_combout\) # 
-- (\dp|ALUL|regC|DFF1|c:30:dff32|d_input~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:30:dff32|d_input~16_combout\,
	datab => \dp|ALUL|regC|DFF1|c:30:dff32|d_input~17_combout\,
	datac => \dp|ALUL|regC|DFF1|c:30:dff32|d_input~19_combout\,
	datad => \dp|ALUL|regC|DFF1|c:30:dff32|d_input~15_combout\,
	combout => \dp|ALUL|regC|DFF1|c:30:dff32|d_input~20_combout\);

-- Location: FF_X20_Y7_N13
\dp|ALUL|regC|DFF1|c:30:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|ALUL|regC|DFF1|c:30:dff32|d_input~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|Cin~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regC|DFF1|c:30:dff32|dff0|q~q\);

-- Location: IOIBUF_X17_Y0_N1
\md[30]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => md(30),
	o => \md[30]~input_o\);

-- Location: LCCOMB_X17_Y7_N24
\dp|MEML|or_G[30]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|MEML|or_G\(30) = (\md_read~input_o\ & ((\md[30]~input_o\) # ((\dp|ALUL|regC|BF1|c:30:buf32|output~3_combout\ & \cu|control|MDin~combout\)))) # (!\md_read~input_o\ & (\dp|ALUL|regC|BF1|c:30:buf32|output~3_combout\ & ((\cu|control|MDin~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \md_read~input_o\,
	datab => \dp|ALUL|regC|BF1|c:30:buf32|output~3_combout\,
	datac => \md[30]~input_o\,
	datad => \cu|control|MDin~combout\,
	combout => \dp|MEML|or_G\(30));

-- Location: FF_X17_Y7_N25
\dp|MEML|md_r|c:30:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|MEML|or_G\(30),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \dp|MEML|md_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|md_r|c:30:dff32|dff0|q~q\);

-- Location: FF_X17_Y7_N19
\dp|PCL|dff|c:30:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:30:buf32|output~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|control|PCin~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|PCL|dff|c:30:dff32|dff0|q~q\);

-- Location: LCCOMB_X17_Y7_N18
\dp|ALUL|regC|BF1|c:30:buf32|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:30:buf32|output~0_combout\ = (\cu|control|PCout~combout\ & (\dp|PCL|dff|c:30:dff32|dff0|q~q\ & ((\dp|MEML|md_r|c:30:dff32|dff0|q~q\) # (!\cu|control|MDout~0_combout\)))) # (!\cu|control|PCout~combout\ & 
-- ((\dp|MEML|md_r|c:30:dff32|dff0|q~q\) # ((!\cu|control|MDout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|PCout~combout\,
	datab => \dp|MEML|md_r|c:30:dff32|dff0|q~q\,
	datac => \dp|PCL|dff|c:30:dff32|dff0|q~q\,
	datad => \cu|control|MDout~0_combout\,
	combout => \dp|ALUL|regC|BF1|c:30:buf32|output~0_combout\);

-- Location: LCCOMB_X20_Y7_N6
\dp|ALUL|regC|BF1|c:30:buf32|output~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:30:buf32|output~1_combout\ = (\dp|ALUL|regC|BF1|c:30:buf32|output~0_combout\ & (\dp|ALUL|regC|BF1|c:21:buf32|output~0_combout\ & ((\dp|ALUL|regC|DFF1|c:30:dff32|dff0|q~q\) # (!\cu|control|Cout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:30:dff32|dff0|q~q\,
	datab => \dp|ALUL|regC|BF1|c:30:buf32|output~0_combout\,
	datac => \dp|ALUL|regC|BF1|c:21:buf32|output~0_combout\,
	datad => \cu|control|Cout~combout\,
	combout => \dp|ALUL|regC|BF1|c:30:buf32|output~1_combout\);

-- Location: LCCOMB_X20_Y7_N10
\dp|ALUL|regC|DFF1|c:31:dff32|d_input~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:31:dff32|d_input~15_combout\ = (\dp|ALUL|l_s|Eout~0_combout\ & ((\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\) # ((\dp|ALUL|regC|BF1|c:30:buf32|output~1_combout\ & \dp|ALUL|regC|BF1|c:30:buf32|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:30:buf32|output~1_combout\,
	datab => \dp|ALUL|l_s|Eout~0_combout\,
	datac => \dp|ALUL|regC|BF1|c:30:buf32|output~2_combout\,
	datad => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	combout => \dp|ALUL|regC|DFF1|c:31:dff32|d_input~15_combout\);

-- Location: LCCOMB_X20_Y11_N8
\dp|ALUL|regC|DFF1|c:31:dff32|d_input~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:31:dff32|d_input~21_combout\ = (\dp|ALUL|regC|DFF1|c:31:dff32|d_input~16_combout\) # ((\dp|ALUL|regC|DFF1|c:31:dff32|d_input~18_combout\) # ((\dp|ALUL|regC|DFF1|c:31:dff32|d_input~20_combout\) # 
-- (\dp|ALUL|regC|DFF1|c:31:dff32|d_input~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:31:dff32|d_input~16_combout\,
	datab => \dp|ALUL|regC|DFF1|c:31:dff32|d_input~18_combout\,
	datac => \dp|ALUL|regC|DFF1|c:31:dff32|d_input~20_combout\,
	datad => \dp|ALUL|regC|DFF1|c:31:dff32|d_input~15_combout\,
	combout => \dp|ALUL|regC|DFF1|c:31:dff32|d_input~21_combout\);

-- Location: FF_X20_Y11_N9
\dp|ALUL|regC|DFF1|c:31:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|ALUL|regC|DFF1|c:31:dff32|d_input~21_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|Cin~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regC|DFF1|c:31:dff32|dff0|q~q\);

-- Location: LCCOMB_X22_Y7_N14
\dp|ALUL|regC|BF1|c:31:buf32|output~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:31:buf32|output~1_combout\ = (\dp|ALUL|regC|BF1|c:31:buf32|output~0_combout\ & (\dp|ALUL|regC|BF1|c:21:buf32|output~0_combout\ & ((\dp|ALUL|regC|DFF1|c:31:dff32|dff0|q~q\) # (!\cu|control|Cout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|Cout~combout\,
	datab => \dp|ALUL|regC|BF1|c:31:buf32|output~0_combout\,
	datac => \dp|ALUL|regC|DFF1|c:31:dff32|dff0|q~q\,
	datad => \dp|ALUL|regC|BF1|c:21:buf32|output~0_combout\,
	combout => \dp|ALUL|regC|BF1|c:31:buf32|output~1_combout\);

-- Location: LCCOMB_X23_Y7_N20
\dp|ALUL|regC|BF1|c:31:buf32|output~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:31:buf32|output~3_combout\ = (\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\) # ((\dp|ALUL|regC|BF1|c:31:buf32|output~1_combout\ & \dp|ALUL|regC|BF1|c:31:buf32|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:31:buf32|output~1_combout\,
	datac => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	datad => \dp|ALUL|regC|BF1|c:31:buf32|output~2_combout\,
	combout => \dp|ALUL|regC|BF1|c:31:buf32|output~3_combout\);

-- Location: FF_X18_Y11_N29
\dp|IRL|ir31|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:31:buf32|output~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|st|dec|Mux0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|IRL|ir31|dff0|q~q\);

-- Location: LCCOMB_X14_Y11_N16
\cu|de|Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|de|Mux14~0_combout\ = (!\dp|IRL|ir29|dff0|q~q\ & (\dp|IRL|ir30|dff0|q~q\ & (!\dp|IRL|ir31|dff0|q~q\ & \dp|IRL|ir27|dff0|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|IRL|ir29|dff0|q~q\,
	datab => \dp|IRL|ir30|dff0|q~q\,
	datac => \dp|IRL|ir31|dff0|q~q\,
	datad => \dp|IRL|ir27|dff0|q~q\,
	combout => \cu|de|Mux14~0_combout\);

-- Location: LCCOMB_X15_Y11_N20
\cu|control|PCout~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|control|PCout~3_combout\ = (!\cu|st|con|count_i\(2) & (\cu|st|con|count_i\(1) & (\cu|st|con|count_i\(0) & \cu|de|Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(2),
	datab => \cu|st|con|count_i\(1),
	datac => \cu|st|con|count_i\(0),
	datad => \cu|de|Mux14~0_combout\,
	combout => \cu|control|PCout~3_combout\);

-- Location: LCCOMB_X18_Y11_N30
\dp|RegFIleL|reg|input_decoder[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|RegFIleL|reg|input_decoder[0]~3_combout\ = (\cu|control|PCout~3_combout\) # ((\cu|control|Rin~2_combout\) # ((\cu|control|MDin~combout\) # (!\cu|control|Rin~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|PCout~3_combout\,
	datab => \cu|control|Rin~2_combout\,
	datac => \cu|control|MDin~combout\,
	datad => \cu|control|Rin~3_combout\,
	combout => \dp|RegFIleL|reg|input_decoder[0]~3_combout\);

-- Location: LCCOMB_X14_Y11_N22
\cu|control|EndSignal~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|control|EndSignal~2_combout\ = (\cu|de|Mux7~0_combout\) # ((\cu|de|Mux8~0_combout\) # (\cu|de|Mux13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|de|Mux7~0_combout\,
	datac => \cu|de|Mux8~0_combout\,
	datad => \cu|de|Mux13~0_combout\,
	combout => \cu|control|EndSignal~2_combout\);

-- Location: LCCOMB_X14_Y11_N4
\dp|RegFIleL|r_out_OR_ba_out~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|RegFIleL|r_out_OR_ba_out~3_combout\ = (\cu|control|Rout~0_combout\ & (!\cu|de|Mux14~0_combout\ & ((!\cu|de|Mux0~0_combout\) # (!\dp|IRL|ir29|dff0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|IRL|ir29|dff0|q~q\,
	datab => \cu|de|Mux0~0_combout\,
	datac => \cu|control|Rout~0_combout\,
	datad => \cu|de|Mux14~0_combout\,
	combout => \dp|RegFIleL|r_out_OR_ba_out~3_combout\);

-- Location: LCCOMB_X14_Y11_N12
\dp|RegFIleL|reg|input_decoder[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|RegFIleL|reg|input_decoder[0]~1_combout\ = (\cu|st|dec|Mux0~2_combout\ & (((!\dp|shLable|n_equ_zero~1_combout\ & !\cu|control|CB~2_combout\)) # (!\dp|RegFIleL|r_out_OR_ba_out~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|shLable|n_equ_zero~1_combout\,
	datab => \cu|st|dec|Mux0~2_combout\,
	datac => \dp|RegFIleL|r_out_OR_ba_out~3_combout\,
	datad => \cu|control|CB~2_combout\,
	combout => \dp|RegFIleL|reg|input_decoder[0]~1_combout\);

-- Location: LCCOMB_X14_Y11_N10
\dp|RegFIleL|reg|input_decoder[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|RegFIleL|reg|input_decoder[0]~2_combout\ = (\dp|IRL|ir12|dff0|q~q\ & ((\dp|RegFIleL|reg|input_decoder[0]~1_combout\) # ((\cu|control|EndSignal~2_combout\ & \cu|st|dec|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|EndSignal~2_combout\,
	datab => \cu|st|dec|Mux0~3_combout\,
	datac => \dp|IRL|ir12|dff0|q~q\,
	datad => \dp|RegFIleL|reg|input_decoder[0]~1_combout\,
	combout => \dp|RegFIleL|reg|input_decoder[0]~2_combout\);

-- Location: FF_X18_Y11_N9
\dp|IRL|ir22|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:22:buf32|output~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|st|dec|Mux0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|IRL|ir22|dff0|q~q\);

-- Location: LCCOMB_X15_Y11_N6
\cu|control|PCin~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|control|PCin~4_combout\ = (!\cu|st|con|count_i\(0) & (\cu|st|con|count_i\(2) & (!\cu|st|con|count_i\(1) & \cu|de|Mux13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(0),
	datab => \cu|st|con|count_i\(2),
	datac => \cu|st|con|count_i\(1),
	datad => \cu|de|Mux13~0_combout\,
	combout => \cu|control|PCin~4_combout\);

-- Location: LCCOMB_X16_Y11_N16
\cu|control|Rout~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|control|Rout~2_combout\ = (\cu|st|dec|Mux0~4_combout\ & ((\cu|de|Mux14~0_combout\) # (!\cu|control|CB~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|dec|Mux0~4_combout\,
	datac => \cu|de|Mux14~0_combout\,
	datad => \cu|control|CB~2_combout\,
	combout => \cu|control|Rout~2_combout\);

-- Location: LCCOMB_X16_Y11_N2
\dp|RegFIleL|r_out_OR_ba_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|RegFIleL|r_out_OR_ba_out~0_combout\ = (\cu|st|dec|Mux0~3_combout\ & (((!\cu|control|Rout~1_combout\) # (!\cu|control|Grb~0_combout\)) # (!\cu|control|C2out~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|dec|Mux0~3_combout\,
	datab => \cu|control|C2out~1_combout\,
	datac => \cu|control|Grb~0_combout\,
	datad => \cu|control|Rout~1_combout\,
	combout => \dp|RegFIleL|r_out_OR_ba_out~0_combout\);

-- Location: LCCOMB_X16_Y11_N24
\dp|RegFIleL|reg|input_decoder[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|RegFIleL|reg|input_decoder[0]~0_combout\ = (\dp|IRL|ir17|dff0|q~q\ & ((\cu|control|PCin~4_combout\) # ((\cu|control|Rout~2_combout\) # (\dp|RegFIleL|r_out_OR_ba_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|PCin~4_combout\,
	datab => \cu|control|Rout~2_combout\,
	datac => \dp|IRL|ir17|dff0|q~q\,
	datad => \dp|RegFIleL|r_out_OR_ba_out~0_combout\,
	combout => \dp|RegFIleL|reg|input_decoder[0]~0_combout\);

-- Location: LCCOMB_X18_Y11_N8
\dp|RegFIleL|reg|input_decoder[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|RegFIleL|reg|input_decoder[0]~4_combout\ = (\dp|RegFIleL|reg|input_decoder[0]~2_combout\) # ((\dp|RegFIleL|reg|input_decoder[0]~0_combout\) # ((\dp|RegFIleL|reg|input_decoder[0]~3_combout\ & \dp|IRL|ir22|dff0|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RegFIleL|reg|input_decoder[0]~3_combout\,
	datab => \dp|RegFIleL|reg|input_decoder[0]~2_combout\,
	datac => \dp|IRL|ir22|dff0|q~q\,
	datad => \dp|RegFIleL|reg|input_decoder[0]~0_combout\,
	combout => \dp|RegFIleL|reg|input_decoder[0]~4_combout\);

-- Location: FF_X23_Y9_N25
\dp|RegFIleL|gen_reg1|dffL|c:27:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:27:buf32|output~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|RegFIleL|strop\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg1|dffL|c:27:dff32|dff0|q~q\);

-- Location: FF_X23_Y9_N7
\dp|RegFIleL|gen_reg0|dff|c:27:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:27:buf32|output~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|RegFIleL|strop\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg0|dff|c:27:dff32|dff0|q~q\);

-- Location: LCCOMB_X23_Y9_N6
\dp|RegFIleL|gen_reg0|BFF_in[27]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|RegFIleL|gen_reg0|BFF_in\(27) = (\dp|RegFIleL|gen_reg0|dff|c:27:dff32|dff0|q~q\ & !\cu|control|BAout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|RegFIleL|gen_reg0|dff|c:27:dff32|dff0|q~q\,
	datad => \cu|control|BAout~0_combout\,
	combout => \dp|RegFIleL|gen_reg0|BFF_in\(27));

-- Location: LCCOMB_X23_Y9_N24
\dp|ALUL|regC|BF1|c:27:buf32|output~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:27:buf32|output~2_combout\ = ((\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & (\dp|RegFIleL|gen_reg1|dffL|c:27:dff32|dff0|q~q\)) # (!\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & ((\dp|RegFIleL|gen_reg0|BFF_in\(27))))) # 
-- (!\dp|RegFIleL|r_out_OR_ba_out~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RegFIleL|r_out_OR_ba_out~5_combout\,
	datab => \dp|RegFIleL|reg|input_decoder[0]~4_combout\,
	datac => \dp|RegFIleL|gen_reg1|dffL|c:27:dff32|dff0|q~q\,
	datad => \dp|RegFIleL|gen_reg0|BFF_in\(27),
	combout => \dp|ALUL|regC|BF1|c:27:buf32|output~2_combout\);

-- Location: LCCOMB_X20_Y9_N20
\dp|ALUL|regC|BF1|c:27:buf32|output~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:27:buf32|output~3_combout\ = (\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\) # ((\dp|ALUL|regC|BF1|c:27:buf32|output~2_combout\ & \dp|ALUL|regC|BF1|c:27:buf32|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	datac => \dp|ALUL|regC|BF1|c:27:buf32|output~2_combout\,
	datad => \dp|ALUL|regC|BF1|c:27:buf32|output~1_combout\,
	combout => \dp|ALUL|regC|BF1|c:27:buf32|output~3_combout\);

-- Location: FF_X17_Y11_N13
\dp|IRL|ir27|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:27:buf32|output~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|st|dec|Mux0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|IRL|ir27|dff0|q~q\);

-- Location: LCCOMB_X17_Y11_N8
\cu|de|Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|de|Mux10~0_combout\ = (\dp|IRL|ir27|dff0|q~q\ & (!\dp|IRL|ir29|dff0|q~q\ & \dp|IRL|ir31|dff0|q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|IRL|ir27|dff0|q~q\,
	datac => \dp|IRL|ir29|dff0|q~q\,
	datad => \dp|IRL|ir31|dff0|q~q\,
	combout => \cu|de|Mux10~0_combout\);

-- Location: LCCOMB_X17_Y11_N26
\cu|control|CB~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|control|CB~2_combout\ = (!\cu|de|Mux10~0_combout\ & (\cu|de|Mux9~0_combout\ & (!\cu|de|Mux11~0_combout\ & !\cu|de|Mux12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|de|Mux10~0_combout\,
	datab => \cu|de|Mux9~0_combout\,
	datac => \cu|de|Mux11~0_combout\,
	datad => \cu|de|Mux12~0_combout\,
	combout => \cu|control|CB~2_combout\);

-- Location: LCCOMB_X14_Y11_N26
\cu|control|load~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|control|load~0_combout\ = (!\cu|control|CB~2_combout\ & ((\cu|st|dec|Mux0~3_combout\) # ((!\dp|shLable|n_equ_zero~1_combout\ & \cu|st|dec|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|shLable|n_equ_zero~1_combout\,
	datab => \cu|control|CB~2_combout\,
	datac => \cu|st|dec|Mux0~2_combout\,
	datad => \cu|st|dec|Mux0~3_combout\,
	combout => \cu|control|load~0_combout\);

-- Location: LCCOMB_X13_Y11_N30
\dp|shLable|mux[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|shLable|mux[0]~6_combout\ = (\cu|control|load~0_combout\ & (\dp|ALUL|regC|BF1|c:0:buf32|output~6_combout\)) # (!\cu|control|load~0_combout\ & ((\cu|control|Goto6~combout\ $ (\dp|shLable|dff0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:0:buf32|output~6_combout\,
	datab => \cu|control|Goto6~combout\,
	datac => \dp|shLable|dff0|q~q\,
	datad => \cu|control|load~0_combout\,
	combout => \dp|shLable|mux[0]~6_combout\);

-- Location: FF_X13_Y11_N31
\dp|shLable|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|shLable|mux[0]~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|shLable|dff0|q~q\);

-- Location: LCCOMB_X13_Y11_N4
\dp|shLable|mux[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|shLable|mux[1]~7_combout\ = (\cu|control|Goto6~combout\ & (\dp|shLable|dff0|q~q\ $ ((!\dp|shLable|dff1|q~q\)))) # (!\cu|control|Goto6~combout\ & (((\dp|shLable|dff1|q~q\ & !\cu|control|load~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|shLable|dff0|q~q\,
	datab => \cu|control|Goto6~combout\,
	datac => \dp|shLable|dff1|q~q\,
	datad => \cu|control|load~0_combout\,
	combout => \dp|shLable|mux[1]~7_combout\);

-- Location: LCCOMB_X13_Y11_N28
\dp|shLable|mux[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|shLable|mux\(1) = (\dp|shLable|mux[1]~7_combout\) # ((\dp|ALUL|regC|BF1|c:1:buf32|output~4_combout\ & \cu|control|load~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|shLable|mux[1]~7_combout\,
	datac => \dp|ALUL|regC|BF1|c:1:buf32|output~4_combout\,
	datad => \cu|control|load~0_combout\,
	combout => \dp|shLable|mux\(1));

-- Location: FF_X13_Y11_N29
\dp|shLable|dff1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|shLable|mux\(1),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|shLable|dff1|q~q\);

-- Location: LCCOMB_X13_Y11_N18
\dp|shLable|n_equ_zero~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|shLable|n_equ_zero~0_combout\ = (!\dp|shLable|dff0|q~q\ & !\dp|shLable|dff1|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|shLable|dff0|q~q\,
	datad => \dp|shLable|dff1|q~q\,
	combout => \dp|shLable|n_equ_zero~0_combout\);

-- Location: LCCOMB_X13_Y11_N12
\dp|shLable|mux[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|shLable|mux[2]~2_combout\ = (!\cu|control|load~0_combout\ & (\dp|shLable|dff2|q~q\ $ (((\dp|shLable|n_equ_zero~0_combout\ & \cu|control|Goto6~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|shLable|n_equ_zero~0_combout\,
	datab => \cu|control|load~0_combout\,
	datac => \dp|shLable|dff2|q~q\,
	datad => \cu|control|Goto6~combout\,
	combout => \dp|shLable|mux[2]~2_combout\);

-- Location: LCCOMB_X13_Y11_N6
\dp|shLable|mux[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|shLable|mux[2]~3_combout\ = (\dp|shLable|mux[2]~2_combout\) # ((\dp|ALUL|regC|BF1|c:2:buf32|output~3_combout\ & \cu|control|load~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|shLable|mux[2]~2_combout\,
	datac => \dp|ALUL|regC|BF1|c:2:buf32|output~3_combout\,
	datad => \cu|control|load~0_combout\,
	combout => \dp|shLable|mux[2]~3_combout\);

-- Location: FF_X13_Y11_N7
\dp|shLable|dff2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|shLable|mux[2]~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|shLable|dff2|q~q\);

-- Location: LCCOMB_X13_Y11_N10
\dp|shLable|mux[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|shLable|mux[3]~4_combout\ = \dp|shLable|dff3|q~q\ $ (((\dp|shLable|n_equ_zero~0_combout\ & (\cu|control|Goto6~combout\ & !\dp|shLable|dff2|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|shLable|n_equ_zero~0_combout\,
	datab => \cu|control|Goto6~combout\,
	datac => \dp|shLable|dff2|q~q\,
	datad => \dp|shLable|dff3|q~q\,
	combout => \dp|shLable|mux[3]~4_combout\);

-- Location: LCCOMB_X13_Y11_N8
\dp|shLable|mux[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|shLable|mux[3]~5_combout\ = (\cu|control|load~0_combout\ & ((\dp|ALUL|regC|BF1|c:3:buf32|output~4_combout\))) # (!\cu|control|load~0_combout\ & (\dp|shLable|mux[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|shLable|mux[3]~4_combout\,
	datab => \dp|ALUL|regC|BF1|c:3:buf32|output~4_combout\,
	datad => \cu|control|load~0_combout\,
	combout => \dp|shLable|mux[3]~5_combout\);

-- Location: FF_X13_Y11_N9
\dp|shLable|dff3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|shLable|mux[3]~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|shLable|dff3|q~q\);

-- Location: LCCOMB_X13_Y11_N14
\dp|shLable|mux[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|shLable|mux[3]~0_combout\ = (\dp|shLable|n_equ_zero~0_combout\ & (\cu|control|Goto6~combout\ & (!\dp|shLable|dff2|q~q\ & !\dp|shLable|dff3|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|shLable|n_equ_zero~0_combout\,
	datab => \cu|control|Goto6~combout\,
	datac => \dp|shLable|dff2|q~q\,
	datad => \dp|shLable|dff3|q~q\,
	combout => \dp|shLable|mux[3]~0_combout\);

-- Location: LCCOMB_X13_Y11_N24
\dp|shLable|mux[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|shLable|mux[4]~1_combout\ = (\cu|control|load~0_combout\ & (\dp|ALUL|regC|BF1|c:4:buf32|output~4_combout\)) # (!\cu|control|load~0_combout\ & (((!\dp|shLable|mux[3]~0_combout\ & \dp|shLable|dff4|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:4:buf32|output~4_combout\,
	datab => \dp|shLable|mux[3]~0_combout\,
	datac => \dp|shLable|dff4|q~q\,
	datad => \cu|control|load~0_combout\,
	combout => \dp|shLable|mux[4]~1_combout\);

-- Location: FF_X13_Y11_N25
\dp|shLable|dff4|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|shLable|mux[4]~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|shLable|dff4|q~q\);

-- Location: LCCOMB_X13_Y11_N16
\dp|shLable|n_equ_zero~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|shLable|n_equ_zero~1_combout\ = (\dp|shLable|dff2|q~q\) # ((\dp|shLable|dff4|q~q\) # ((\dp|shLable|dff3|q~q\) # (!\dp|shLable|n_equ_zero~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|shLable|dff2|q~q\,
	datab => \dp|shLable|dff4|q~q\,
	datac => \dp|shLable|dff3|q~q\,
	datad => \dp|shLable|n_equ_zero~0_combout\,
	combout => \dp|shLable|n_equ_zero~1_combout\);

-- Location: LCCOMB_X16_Y11_N30
\dp|RegFIleL|r_out_OR_ba_out~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|RegFIleL|r_out_OR_ba_out~4_combout\ = (\cu|de|Mux13~0_combout\) # (((!\dp|shLable|n_equ_zero~1_combout\ & !\cu|control|CB~2_combout\)) # (!\dp|RegFIleL|r_out_OR_ba_out~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|shLable|n_equ_zero~1_combout\,
	datab => \cu|de|Mux13~0_combout\,
	datac => \dp|RegFIleL|r_out_OR_ba_out~3_combout\,
	datad => \cu|control|CB~2_combout\,
	combout => \dp|RegFIleL|r_out_OR_ba_out~4_combout\);

-- Location: LCCOMB_X16_Y11_N10
\dp|RegFIleL|r_out_OR_ba_out~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|RegFIleL|r_out_OR_ba_out~1_combout\ = (\cu|st|dec|Mux0~3_combout\ & ((\cu|de|Mux7~0_combout\) # ((\cu|de|Mux8~0_combout\) # (\cu|de|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|dec|Mux0~3_combout\,
	datab => \cu|de|Mux7~0_combout\,
	datac => \cu|de|Mux8~0_combout\,
	datad => \cu|de|Mux13~0_combout\,
	combout => \dp|RegFIleL|r_out_OR_ba_out~1_combout\);

-- Location: LCCOMB_X16_Y11_N28
\dp|RegFIleL|r_out_OR_ba_out~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|RegFIleL|r_out_OR_ba_out~2_combout\ = (\dp|RegFIleL|r_out_OR_ba_out~1_combout\) # ((\cu|control|Rout~2_combout\) # ((\cu|control|MDin~combout\) # (\dp|RegFIleL|r_out_OR_ba_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RegFIleL|r_out_OR_ba_out~1_combout\,
	datab => \cu|control|Rout~2_combout\,
	datac => \cu|control|MDin~combout\,
	datad => \dp|RegFIleL|r_out_OR_ba_out~0_combout\,
	combout => \dp|RegFIleL|r_out_OR_ba_out~2_combout\);

-- Location: LCCOMB_X16_Y11_N18
\dp|RegFIleL|r_out_OR_ba_out~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|RegFIleL|r_out_OR_ba_out~5_combout\ = (\dp|RegFIleL|r_out_OR_ba_out~2_combout\) # ((\cu|st|dec|Mux0~2_combout\ & \dp|RegFIleL|r_out_OR_ba_out~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cu|st|dec|Mux0~2_combout\,
	datac => \dp|RegFIleL|r_out_OR_ba_out~4_combout\,
	datad => \dp|RegFIleL|r_out_OR_ba_out~2_combout\,
	combout => \dp|RegFIleL|r_out_OR_ba_out~5_combout\);

-- Location: FF_X23_Y9_N9
\dp|RegFIleL|gen_reg1|dffL|c:30:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:30:buf32|output~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|RegFIleL|strop\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg1|dffL|c:30:dff32|dff0|q~q\);

-- Location: FF_X23_Y9_N11
\dp|RegFIleL|gen_reg0|dff|c:30:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:30:buf32|output~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|RegFIleL|strop\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg0|dff|c:30:dff32|dff0|q~q\);

-- Location: LCCOMB_X23_Y9_N10
\dp|RegFIleL|gen_reg0|BFF_in[30]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|RegFIleL|gen_reg0|BFF_in\(30) = (\dp|RegFIleL|gen_reg0|dff|c:30:dff32|dff0|q~q\ & !\cu|control|BAout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|RegFIleL|gen_reg0|dff|c:30:dff32|dff0|q~q\,
	datad => \cu|control|BAout~0_combout\,
	combout => \dp|RegFIleL|gen_reg0|BFF_in\(30));

-- Location: LCCOMB_X23_Y9_N8
\dp|ALUL|regC|BF1|c:30:buf32|output~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:30:buf32|output~2_combout\ = ((\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & (\dp|RegFIleL|gen_reg1|dffL|c:30:dff32|dff0|q~q\)) # (!\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & ((\dp|RegFIleL|gen_reg0|BFF_in\(30))))) # 
-- (!\dp|RegFIleL|r_out_OR_ba_out~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RegFIleL|r_out_OR_ba_out~5_combout\,
	datab => \dp|RegFIleL|reg|input_decoder[0]~4_combout\,
	datac => \dp|RegFIleL|gen_reg1|dffL|c:30:dff32|dff0|q~q\,
	datad => \dp|RegFIleL|gen_reg0|BFF_in\(30),
	combout => \dp|ALUL|regC|BF1|c:30:buf32|output~2_combout\);

-- Location: LCCOMB_X20_Y7_N0
\dp|ALUL|regC|BF1|c:30:buf32|output~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:30:buf32|output~3_combout\ = (\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\) # ((\dp|ALUL|regC|BF1|c:30:buf32|output~2_combout\ & \dp|ALUL|regC|BF1|c:30:buf32|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	datac => \dp|ALUL|regC|BF1|c:30:buf32|output~2_combout\,
	datad => \dp|ALUL|regC|BF1|c:30:buf32|output~1_combout\,
	combout => \dp|ALUL|regC|BF1|c:30:buf32|output~3_combout\);

-- Location: FF_X18_Y11_N1
\dp|IRL|ir30|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:30:buf32|output~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|st|dec|Mux0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|IRL|ir30|dff0|q~q\);

-- Location: LCCOMB_X18_Y11_N6
\cu|de|Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|de|Mux15~0_combout\ = (!\dp|IRL|ir30|dff0|q~q\ & (!\dp|IRL|ir29|dff0|q~q\ & !\dp|IRL|ir28|dff0|q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|IRL|ir30|dff0|q~q\,
	datac => \dp|IRL|ir29|dff0|q~q\,
	datad => \dp|IRL|ir28|dff0|q~q\,
	combout => \cu|de|Mux15~0_combout\);

-- Location: LCCOMB_X18_Y11_N4
\cu|control|Grb~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|control|Grb~0_combout\ = (!\cu|de|Mux15~0_combout\ & (!\cu|de|Mux18~0_combout\ & !\cu|de|Mux17~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cu|de|Mux15~0_combout\,
	datac => \cu|de|Mux18~0_combout\,
	datad => \cu|de|Mux17~0_combout\,
	combout => \cu|control|Grb~0_combout\);

-- Location: LCCOMB_X17_Y11_N30
\dp|IRL|c1_or_c2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|IRL|c1_or_c2~0_combout\ = (!\cu|control|C1out~1_combout\ & (((\cu|control|Grb~0_combout\ & \cu|control|C2out~1_combout\)) # (!\cu|st|dec|Mux0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|Grb~0_combout\,
	datab => \cu|control|C2out~1_combout\,
	datac => \cu|st|dec|Mux0~2_combout\,
	datad => \cu|control|C1out~1_combout\,
	combout => \dp|IRL|c1_or_c2~0_combout\);

-- Location: LCCOMB_X16_Y11_N12
\dp|ALUL|regC|BF1|c:0:buf32|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:0:buf32|output~0_combout\ = (!\cu|control|MDout~0_combout\ & (!\cu|control|PCout~combout\ & ((!\cu|st|dec|Mux0~2_combout\) # (!\dp|RegFIleL|r_out_OR_ba_out~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RegFIleL|r_out_OR_ba_out~4_combout\,
	datab => \cu|st|dec|Mux0~2_combout\,
	datac => \cu|control|MDout~0_combout\,
	datad => \cu|control|PCout~combout\,
	combout => \dp|ALUL|regC|BF1|c:0:buf32|output~0_combout\);

-- Location: LCCOMB_X16_Y11_N26
\dp|ALUL|regC|BF1|c:0:buf32|output~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\ = (\dp|IRL|c1_or_c2~0_combout\ & (!\dp|RegFIleL|r_out_OR_ba_out~2_combout\ & (!\cu|control|Cout~combout\ & \dp|ALUL|regC|BF1|c:0:buf32|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|IRL|c1_or_c2~0_combout\,
	datab => \dp|RegFIleL|r_out_OR_ba_out~2_combout\,
	datac => \cu|control|Cout~combout\,
	datad => \dp|ALUL|regC|BF1|c:0:buf32|output~0_combout\,
	combout => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\);

-- Location: FF_X23_Y9_N17
\dp|RegFIleL|gen_reg1|dffL|c:29:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:29:buf32|output~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|RegFIleL|strop\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg1|dffL|c:29:dff32|dff0|q~q\);

-- Location: FF_X23_Y9_N31
\dp|RegFIleL|gen_reg0|dff|c:29:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:29:buf32|output~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|RegFIleL|strop\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg0|dff|c:29:dff32|dff0|q~q\);

-- Location: LCCOMB_X23_Y9_N30
\dp|RegFIleL|gen_reg0|BFF_in[29]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|RegFIleL|gen_reg0|BFF_in\(29) = (\dp|RegFIleL|gen_reg0|dff|c:29:dff32|dff0|q~q\ & !\cu|control|BAout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|RegFIleL|gen_reg0|dff|c:29:dff32|dff0|q~q\,
	datad => \cu|control|BAout~0_combout\,
	combout => \dp|RegFIleL|gen_reg0|BFF_in\(29));

-- Location: LCCOMB_X23_Y9_N16
\dp|ALUL|regC|BF1|c:29:buf32|output~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:29:buf32|output~2_combout\ = ((\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & (\dp|RegFIleL|gen_reg1|dffL|c:29:dff32|dff0|q~q\)) # (!\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & ((\dp|RegFIleL|gen_reg0|BFF_in\(29))))) # 
-- (!\dp|RegFIleL|r_out_OR_ba_out~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RegFIleL|r_out_OR_ba_out~5_combout\,
	datab => \dp|RegFIleL|reg|input_decoder[0]~4_combout\,
	datac => \dp|RegFIleL|gen_reg1|dffL|c:29:dff32|dff0|q~q\,
	datad => \dp|RegFIleL|gen_reg0|BFF_in\(29),
	combout => \dp|ALUL|regC|BF1|c:29:buf32|output~2_combout\);

-- Location: IOIBUF_X13_Y0_N15
\md[29]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => md(29),
	o => \md[29]~input_o\);

-- Location: LCCOMB_X17_Y7_N28
\dp|MEML|or_G[29]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|MEML|or_G\(29) = (\md_read~input_o\ & ((\md[29]~input_o\) # ((\dp|ALUL|regC|BF1|c:29:buf32|output~3_combout\ & \cu|control|MDin~combout\)))) # (!\md_read~input_o\ & (\dp|ALUL|regC|BF1|c:29:buf32|output~3_combout\ & ((\cu|control|MDin~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \md_read~input_o\,
	datab => \dp|ALUL|regC|BF1|c:29:buf32|output~3_combout\,
	datac => \md[29]~input_o\,
	datad => \cu|control|MDin~combout\,
	combout => \dp|MEML|or_G\(29));

-- Location: FF_X17_Y7_N29
\dp|MEML|md_r|c:29:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|MEML|or_G\(29),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \dp|MEML|md_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|md_r|c:29:dff32|dff0|q~q\);

-- Location: FF_X17_Y7_N15
\dp|PCL|dff|c:29:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:29:buf32|output~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|control|PCin~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|PCL|dff|c:29:dff32|dff0|q~q\);

-- Location: LCCOMB_X17_Y7_N14
\dp|ALUL|regC|BF1|c:29:buf32|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:29:buf32|output~0_combout\ = (\cu|control|PCout~combout\ & (\dp|PCL|dff|c:29:dff32|dff0|q~q\ & ((\dp|MEML|md_r|c:29:dff32|dff0|q~q\) # (!\cu|control|MDout~0_combout\)))) # (!\cu|control|PCout~combout\ & 
-- ((\dp|MEML|md_r|c:29:dff32|dff0|q~q\) # ((!\cu|control|MDout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|PCout~combout\,
	datab => \dp|MEML|md_r|c:29:dff32|dff0|q~q\,
	datac => \dp|PCL|dff|c:29:dff32|dff0|q~q\,
	datad => \cu|control|MDout~0_combout\,
	combout => \dp|ALUL|regC|BF1|c:29:buf32|output~0_combout\);

-- Location: LCCOMB_X23_Y11_N10
\dp|ALUL|regC|DFF1|c:29:dff32|d_input~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:29:dff32|d_input~16_combout\ = (\cu|control|NOTOP~combout\ & (\dp|ALUL|add|b_inv~combout\ $ (\dp|ALUL|regC|BF1|c:29:buf32|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|NOTOP~combout\,
	datac => \dp|ALUL|add|b_inv~combout\,
	datad => \dp|ALUL|regC|BF1|c:29:buf32|output~3_combout\,
	combout => \dp|ALUL|regC|DFF1|c:29:dff32|d_input~16_combout\);

-- Location: LCCOMB_X23_Y11_N0
\dp|ALUL|regC|DFF1|c:29:dff32|d_input~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:29:dff32|d_input~17_combout\ = (\dp|ALUL|regC|BF1|c:30:buf32|output~3_combout\ & ((\dp|ALUL|r_s|Eout~0_combout\) # ((\dp|ALUL|l_s|Eout~0_combout\ & \dp|ALUL|regC|BF1|c:28:buf32|output~3_combout\)))) # 
-- (!\dp|ALUL|regC|BF1|c:30:buf32|output~3_combout\ & (\dp|ALUL|l_s|Eout~0_combout\ & ((\dp|ALUL|regC|BF1|c:28:buf32|output~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:30:buf32|output~3_combout\,
	datab => \dp|ALUL|l_s|Eout~0_combout\,
	datac => \dp|ALUL|r_s|Eout~0_combout\,
	datad => \dp|ALUL|regC|BF1|c:28:buf32|output~3_combout\,
	combout => \dp|ALUL|regC|DFF1|c:29:dff32|d_input~17_combout\);

-- Location: LCCOMB_X23_Y11_N2
\dp|ALUL|regC|DFF1|c:29:dff32|d_input~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:29:dff32|d_input~3_combout\ = (!\cu|st|con|count_i\(1) & (!\cu|st|con|count_i\(0) & ((\dp|ALUL|regA|A_R|c:29:dff32|dff0|q~q\) # (\dp|IRL|ir28|dff0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(1),
	datab => \cu|st|con|count_i\(0),
	datac => \dp|ALUL|regA|A_R|c:29:dff32|dff0|q~q\,
	datad => \dp|IRL|ir28|dff0|q~q\,
	combout => \dp|ALUL|regC|DFF1|c:29:dff32|d_input~3_combout\);

-- Location: LCCOMB_X23_Y11_N12
\dp|ALUL|regC|DFF1|c:29:dff32|d_input~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:29:dff32|d_input~21_combout\ = (\dp|ALUL|regC|DFF1|c:29:dff32|d_input~3_combout\ & (\cu|st|con|count_i\(2) & (\dp|IRL|ir31|dff0|q~q\ & !\dp|IRL|ir30|dff0|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:29:dff32|d_input~3_combout\,
	datab => \cu|st|con|count_i\(2),
	datac => \dp|IRL|ir31|dff0|q~q\,
	datad => \dp|IRL|ir30|dff0|q~q\,
	combout => \dp|ALUL|regC|DFF1|c:29:dff32|d_input~21_combout\);

-- Location: LCCOMB_X23_Y11_N30
\dp|ALUL|regC|DFF1|c:29:dff32|d_input~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:29:dff32|d_input~18_combout\ = (\dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\ & ((\dp|ALUL|regA|A_R|c:29:dff32|dff0|q~q\) # ((\cu|control|NEG~combout\ & \dp|ALUL|add|temp[29]~58_combout\)))) # 
-- (!\dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\ & (\cu|control|NEG~combout\ & ((\dp|ALUL|add|temp[29]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:0:dff32|d_input~23_combout\,
	datab => \cu|control|NEG~combout\,
	datac => \dp|ALUL|regA|A_R|c:29:dff32|dff0|q~q\,
	datad => \dp|ALUL|add|temp[29]~58_combout\,
	combout => \dp|ALUL|regC|DFF1|c:29:dff32|d_input~18_combout\);

-- Location: LCCOMB_X23_Y11_N4
\dp|ALUL|regC|DFF1|c:29:dff32|d_input~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:29:dff32|d_input~19_combout\ = (\dp|ALUL|regC|DFF1|c:29:dff32|d_input~18_combout\) # ((\dp|ALUL|regC|BF1|c:29:buf32|output~3_combout\ & ((\dp|ALUL|regC|DFF1|c:29:dff32|d_input~21_combout\) # (\cu|control|CB~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:29:dff32|d_input~21_combout\,
	datab => \cu|control|CB~combout\,
	datac => \dp|ALUL|regC|DFF1|c:29:dff32|d_input~18_combout\,
	datad => \dp|ALUL|regC|BF1|c:29:buf32|output~3_combout\,
	combout => \dp|ALUL|regC|DFF1|c:29:dff32|d_input~19_combout\);

-- Location: LCCOMB_X23_Y11_N20
\dp|ALUL|add|b_sig[29]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|add|b_sig\(29) = \dp|ALUL|add|b_inv~combout\ $ (((\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\) # ((\dp|ALUL|regC|BF1|c:29:buf32|output~1_combout\ & \dp|ALUL|regC|BF1|c:29:buf32|output~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|b_inv~combout\,
	datab => \dp|ALUL|regC|BF1|c:29:buf32|output~1_combout\,
	datac => \dp|ALUL|regC|BF1|c:29:buf32|output~2_combout\,
	datad => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	combout => \dp|ALUL|add|b_sig\(29));

-- Location: LCCOMB_X23_Y11_N16
\dp|ALUL|regC|DFF1|c:29:dff32|d_input~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:29:dff32|d_input~15_combout\ = (\dp|ALUL|add|add_E~9_combout\ & (\dp|ALUL|add|b_sig\(29) $ (\dp|ALUL|add|a_sig\(29) $ (\dp|ALUL|add|add_32|Y:28:full32|c_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|add|add_E~9_combout\,
	datab => \dp|ALUL|add|b_sig\(29),
	datac => \dp|ALUL|add|a_sig\(29),
	datad => \dp|ALUL|add|add_32|Y:28:full32|c_out~0_combout\,
	combout => \dp|ALUL|regC|DFF1|c:29:dff32|d_input~15_combout\);

-- Location: LCCOMB_X23_Y11_N26
\dp|ALUL|regC|DFF1|c:29:dff32|d_input~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|DFF1|c:29:dff32|d_input~20_combout\ = (\dp|ALUL|regC|DFF1|c:29:dff32|d_input~16_combout\) # ((\dp|ALUL|regC|DFF1|c:29:dff32|d_input~17_combout\) # ((\dp|ALUL|regC|DFF1|c:29:dff32|d_input~19_combout\) # 
-- (\dp|ALUL|regC|DFF1|c:29:dff32|d_input~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|DFF1|c:29:dff32|d_input~16_combout\,
	datab => \dp|ALUL|regC|DFF1|c:29:dff32|d_input~17_combout\,
	datac => \dp|ALUL|regC|DFF1|c:29:dff32|d_input~19_combout\,
	datad => \dp|ALUL|regC|DFF1|c:29:dff32|d_input~15_combout\,
	combout => \dp|ALUL|regC|DFF1|c:29:dff32|d_input~20_combout\);

-- Location: FF_X23_Y11_N27
\dp|ALUL|regC|DFF1|c:29:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|ALUL|regC|DFF1|c:29:dff32|d_input~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|Cin~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ALUL|regC|DFF1|c:29:dff32|dff0|q~q\);

-- Location: LCCOMB_X22_Y11_N24
\dp|ALUL|regC|BF1|c:29:buf32|output~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:29:buf32|output~1_combout\ = (\dp|ALUL|regC|BF1|c:21:buf32|output~0_combout\ & (\dp|ALUL|regC|BF1|c:29:buf32|output~0_combout\ & ((\dp|ALUL|regC|DFF1|c:29:dff32|dff0|q~q\) # (!\cu|control|Cout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:21:buf32|output~0_combout\,
	datab => \cu|control|Cout~combout\,
	datac => \dp|ALUL|regC|BF1|c:29:buf32|output~0_combout\,
	datad => \dp|ALUL|regC|DFF1|c:29:dff32|dff0|q~q\,
	combout => \dp|ALUL|regC|BF1|c:29:buf32|output~1_combout\);

-- Location: LCCOMB_X23_Y11_N8
\dp|ALUL|regC|BF1|c:29:buf32|output~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:29:buf32|output~3_combout\ = (\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\) # ((\dp|ALUL|regC|BF1|c:29:buf32|output~2_combout\ & \dp|ALUL|regC|BF1|c:29:buf32|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	datac => \dp|ALUL|regC|BF1|c:29:buf32|output~2_combout\,
	datad => \dp|ALUL|regC|BF1|c:29:buf32|output~1_combout\,
	combout => \dp|ALUL|regC|BF1|c:29:buf32|output~3_combout\);

-- Location: FF_X18_Y11_N7
\dp|IRL|ir29|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:29:buf32|output~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|st|dec|Mux0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|IRL|ir29|dff0|q~q\);

-- Location: LCCOMB_X17_Y11_N6
\cu|clock_logic|jk1|q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|clock_logic|jk1|q~0_combout\ = (\dp|IRL|ir29|dff0|q~q\) # ((\dp|IRL|ir30|dff0|q~q\) # ((\dp|IRL|ir28|dff0|q~q\ & \dp|IRL|ir27|dff0|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|IRL|ir29|dff0|q~q\,
	datab => \dp|IRL|ir30|dff0|q~q\,
	datac => \dp|IRL|ir28|dff0|q~q\,
	datad => \dp|IRL|ir27|dff0|q~q\,
	combout => \cu|clock_logic|jk1|q~0_combout\);

-- Location: LCCOMB_X14_Y12_N12
\cu|control|waitSignal~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|control|waitSignal~0_combout\ = (!\cu|st|dec|Mux0~1_combout\ & ((\cu|clock_logic|jk1|q~0_combout\) # (!\cu|st|dec|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cu|st|dec|Mux0~1_combout\,
	datac => \cu|clock_logic|jk1|q~0_combout\,
	datad => \cu|st|dec|Mux0~0_combout\,
	combout => \cu|control|waitSignal~0_combout\);

-- Location: IOIBUF_X10_Y17_N1
\done~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_done,
	o => \done~input_o\);

-- Location: LCCOMB_X14_Y12_N6
\cu|clock_logic|dff0|q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|clock_logic|dff0|q~feeder_combout\ = \done~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \done~input_o\,
	combout => \cu|clock_logic|dff0|q~feeder_combout\);

-- Location: FF_X14_Y12_N7
\cu|clock_logic|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \cu|clock_logic|dff0|q~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cu|clock_logic|dff0|q~q\);

-- Location: LCCOMB_X14_Y12_N20
\cu|clock_logic|jk1|q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|clock_logic|jk1|q~1_combout\ = (\cu|clock_logic|jk1|q~q\ & (!\cu|clock_logic|dff0|q~q\)) # (!\cu|clock_logic|jk1|q~q\ & ((!\cu|control|waitSignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|clock_logic|dff0|q~q\,
	datac => \cu|clock_logic|jk1|q~q\,
	datad => \cu|control|waitSignal~0_combout\,
	combout => \cu|clock_logic|jk1|q~1_combout\);

-- Location: FF_X14_Y12_N21
\cu|clock_logic|jk1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \cu|clock_logic|jk1|q~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cu|clock_logic|jk1|q~q\);

-- Location: LCCOMB_X14_Y12_N2
\cu|clock_logic|jk2|q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|clock_logic|jk2|q~0_combout\ = (\cu|clock_logic|jk2|q~q\ & (((!\cu|clock_logic|dff0|q~q\)))) # (!\cu|clock_logic|jk2|q~q\ & (\cu|st|con|Equal0~0_combout\ & (\cu|de|Mux17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|Equal0~0_combout\,
	datab => \cu|de|Mux17~0_combout\,
	datac => \cu|clock_logic|jk2|q~q\,
	datad => \cu|clock_logic|dff0|q~q\,
	combout => \cu|clock_logic|jk2|q~0_combout\);

-- Location: FF_X14_Y12_N3
\cu|clock_logic|jk2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \cu|clock_logic|jk2|q~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cu|clock_logic|jk2|q~q\);

-- Location: LCCOMB_X14_Y12_N0
\cu|st|con|count_i[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|st|con|count_i[2]~3_combout\ = (!\cu|clock_logic|dff0|q~q\ & ((\cu|clock_logic|jk1|q~q\) # (\cu|clock_logic|jk2|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|clock_logic|dff0|q~q\,
	datab => \cu|clock_logic|jk1|q~q\,
	datad => \cu|clock_logic|jk2|q~q\,
	combout => \cu|st|con|count_i[2]~3_combout\);

-- Location: LCCOMB_X14_Y12_N14
\cu|st|con|count_i[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|st|con|count_i[2]~4_combout\ = (\cu|st|con|count_i[2]~3_combout\ & (((\cu|de|Mux17~0_combout\ & \cu|st|con|Equal0~0_combout\)) # (!\cu|control|waitSignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|waitSignal~0_combout\,
	datab => \cu|st|con|count_i[2]~3_combout\,
	datac => \cu|de|Mux17~0_combout\,
	datad => \cu|st|con|Equal0~0_combout\,
	combout => \cu|st|con|count_i[2]~4_combout\);

-- Location: LCCOMB_X14_Y11_N14
\cu|control|EndSignal~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|control|EndSignal~4_combout\ = (\cu|st|con|Equal0~0_combout\ & (((\cu|de|Mux17~0_combout\) # (!\cu|control|CB~2_combout\)) # (!\cu|clock_logic|jk1|q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|clock_logic|jk1|q~0_combout\,
	datab => \cu|st|con|Equal0~0_combout\,
	datac => \cu|de|Mux17~0_combout\,
	datad => \cu|control|CB~2_combout\,
	combout => \cu|control|EndSignal~4_combout\);

-- Location: LCCOMB_X14_Y11_N20
\cu|control|EndSignal~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|control|EndSignal~3_combout\ = (((\cu|de|Mux14~0_combout\) # (!\cu|control|Rin~1_combout\)) # (!\cu|control|C2out~1_combout\)) # (!\cu|control|Rout~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|Rout~1_combout\,
	datab => \cu|control|C2out~1_combout\,
	datac => \cu|de|Mux14~0_combout\,
	datad => \cu|control|Rin~1_combout\,
	combout => \cu|control|EndSignal~3_combout\);

-- Location: LCCOMB_X15_Y11_N18
\cu|control|EndSignal~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|control|EndSignal~6_combout\ = (\cu|st|con|count_i\(0) & (\cu|control|EndSignal~3_combout\ & (!\cu|st|con|count_i\(1) & \cu|st|con|count_i\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(0),
	datab => \cu|control|EndSignal~3_combout\,
	datac => \cu|st|con|count_i\(1),
	datad => \cu|st|con|count_i\(2),
	combout => \cu|control|EndSignal~6_combout\);

-- Location: LCCOMB_X14_Y11_N0
\cu|control|EndSignal~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|control|EndSignal~5_combout\ = (\cu|control|EndSignal~4_combout\) # ((\cu|control|EndSignal~6_combout\) # ((\cu|control|EndSignal~2_combout\ & \cu|st|dec|Mux0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|control|EndSignal~4_combout\,
	datab => \cu|control|EndSignal~2_combout\,
	datac => \cu|st|dec|Mux0~2_combout\,
	datad => \cu|control|EndSignal~6_combout\,
	combout => \cu|control|EndSignal~5_combout\);

-- Location: LCCOMB_X14_Y12_N30
\cu|st|con|count_i[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|st|con|count_i[2]~6_combout\ = (!\cu|control|Goto6~combout\ & (!\cu|control|EndSignal~5_combout\ & ((\cu|st|con|count_i[2]~4_combout\) # (!\cu|clock_logic|jk0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|clock_logic|jk0|q~q\,
	datab => \cu|st|con|count_i[2]~4_combout\,
	datac => \cu|control|Goto6~combout\,
	datad => \cu|control|EndSignal~5_combout\,
	combout => \cu|st|con|count_i[2]~6_combout\);

-- Location: LCCOMB_X14_Y12_N18
\cu|st|con|count_i[3]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|st|con|count_i[3]~13_combout\ = (\cu|st|con|count_i[3]~5_combout\ & (\cu|control|Goto6~combout\ $ (((!\cu|st|con|count_i\(3)) # (!\cu|st|con|Equal0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|Equal0~0_combout\,
	datab => \cu|st|con|count_i\(3),
	datac => \cu|control|Goto6~combout\,
	datad => \cu|st|con|count_i[3]~5_combout\,
	combout => \cu|st|con|count_i[3]~13_combout\);

-- Location: LCCOMB_X14_Y12_N24
\cu|st|con|count_i[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|st|con|count_i[3]~12_combout\ = (\cu|st|con|count_i\(3) & ((\cu|st|con|count_i[2]~6_combout\) # ((\cu|st|con|count_i[3]~13_combout\ & !\cu|st|con|Equal0~0_combout\)))) # (!\cu|st|con|count_i\(3) & (((\cu|st|con|count_i[3]~13_combout\ & 
-- \cu|st|con|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i[2]~6_combout\,
	datab => \cu|st|con|count_i[3]~13_combout\,
	datac => \cu|st|con|count_i\(3),
	datad => \cu|st|con|Equal0~0_combout\,
	combout => \cu|st|con|count_i[3]~12_combout\);

-- Location: FF_X14_Y12_N25
\cu|st|con|count_i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \cu|st|con|count_i[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cu|st|con|count_i\(3));

-- Location: LCCOMB_X15_Y12_N20
\cu|st|con|count_i[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|st|con|count_i[2]~2_combout\ = (\cu|st|con|Add0~0_combout\ & ((\cu|control|Goto6~combout\) # ((!\cu|st|con|count_i\(3)) # (!\cu|st|con|Equal0~0_combout\)))) # (!\cu|st|con|Add0~0_combout\ & (\cu|control|Goto6~combout\ & ((!\cu|st|con|count_i\(3)) # 
-- (!\cu|st|con|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|Add0~0_combout\,
	datab => \cu|control|Goto6~combout\,
	datac => \cu|st|con|Equal0~0_combout\,
	datad => \cu|st|con|count_i\(3),
	combout => \cu|st|con|count_i[2]~2_combout\);

-- Location: LCCOMB_X15_Y11_N0
\cu|st|con|count_i[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|st|con|count_i[2]~7_combout\ = (\cu|st|con|count_i[3]~5_combout\ & ((\cu|st|con|count_i[2]~2_combout\) # ((\cu|st|con|count_i\(2) & \cu|st|con|count_i[2]~6_combout\)))) # (!\cu|st|con|count_i[3]~5_combout\ & (((\cu|st|con|count_i\(2) & 
-- \cu|st|con|count_i[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i[3]~5_combout\,
	datab => \cu|st|con|count_i[2]~2_combout\,
	datac => \cu|st|con|count_i\(2),
	datad => \cu|st|con|count_i[2]~6_combout\,
	combout => \cu|st|con|count_i[2]~7_combout\);

-- Location: FF_X15_Y11_N1
\cu|st|con|count_i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \cu|st|con|count_i[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cu|st|con|count_i\(2));

-- Location: LCCOMB_X15_Y11_N26
\cu|st|dec|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|st|dec|Mux0~0_combout\ = (!\cu|st|con|count_i\(0) & (\cu|st|con|count_i\(2) & \cu|st|con|count_i\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(0),
	datab => \cu|st|con|count_i\(2),
	datac => \cu|st|con|count_i\(1),
	combout => \cu|st|dec|Mux0~0_combout\);

-- Location: LCCOMB_X16_Y11_N8
\cu|control|Goto6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|control|Goto6~combout\ = (\cu|st|dec|Mux0~0_combout\ & (\dp|shLable|n_equ_zero~1_combout\ & !\cu|control|CB~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|dec|Mux0~0_combout\,
	datab => \dp|shLable|n_equ_zero~1_combout\,
	datad => \cu|control|CB~2_combout\,
	combout => \cu|control|Goto6~combout\);

-- Location: LCCOMB_X14_Y12_N8
\cu|st|con|count_i[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|st|con|count_i[2]~8_combout\ = \cu|control|Goto6~combout\ $ (((\cu|st|con|Equal0~0_combout\ & \cu|st|con|count_i\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|Equal0~0_combout\,
	datab => \cu|control|Goto6~combout\,
	datad => \cu|st|con|count_i\(3),
	combout => \cu|st|con|count_i[2]~8_combout\);

-- Location: LCCOMB_X15_Y12_N30
\cu|st|con|count_i[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|st|con|count_i[1]~9_combout\ = (\cu|st|con|count_i[2]~8_combout\ & (((\cu|control|Goto6~combout\)))) # (!\cu|st|con|count_i[2]~8_combout\ & (\cu|st|con|count_i\(1) $ (((\cu|st|con|count_i\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(1),
	datab => \cu|control|Goto6~combout\,
	datac => \cu|st|con|count_i\(0),
	datad => \cu|st|con|count_i[2]~8_combout\,
	combout => \cu|st|con|count_i[1]~9_combout\);

-- Location: LCCOMB_X15_Y11_N14
\cu|st|con|count_i[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|st|con|count_i[1]~10_combout\ = (\cu|st|con|count_i[3]~5_combout\ & ((\cu|st|con|count_i[1]~9_combout\) # ((\cu|st|con|count_i\(1) & \cu|st|con|count_i[2]~6_combout\)))) # (!\cu|st|con|count_i[3]~5_combout\ & (((\cu|st|con|count_i\(1) & 
-- \cu|st|con|count_i[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i[3]~5_combout\,
	datab => \cu|st|con|count_i[1]~9_combout\,
	datac => \cu|st|con|count_i\(1),
	datad => \cu|st|con|count_i[2]~6_combout\,
	combout => \cu|st|con|count_i[1]~10_combout\);

-- Location: FF_X15_Y11_N15
\cu|st|con|count_i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \cu|st|con|count_i[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cu|st|con|count_i\(1));

-- Location: LCCOMB_X15_Y12_N6
\cu|clock_logic|jk0|q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|clock_logic|jk0|q~0_combout\ = ((\cu|st|con|count_i\(2)) # ((!\dp|IRL|ir28|dff0|q~q\) # (!\cu|st|con|count_i\(0)))) # (!\cu|st|con|count_i\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(1),
	datab => \cu|st|con|count_i\(2),
	datac => \cu|st|con|count_i\(0),
	datad => \dp|IRL|ir28|dff0|q~q\,
	combout => \cu|clock_logic|jk0|q~0_combout\);

-- Location: IOIBUF_X6_Y10_N22
\start~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: LCCOMB_X14_Y12_N16
\cu|de|Mux11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|de|Mux11~1_combout\ = (\dp|IRL|ir30|dff0|q~q\ & (\dp|IRL|ir31|dff0|q~q\ & \dp|IRL|ir29|dff0|q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|IRL|ir30|dff0|q~q\,
	datac => \dp|IRL|ir31|dff0|q~q\,
	datad => \dp|IRL|ir29|dff0|q~q\,
	combout => \cu|de|Mux11~1_combout\);

-- Location: LCCOMB_X14_Y12_N26
\cu|clock_logic|jk0|q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|clock_logic|jk0|q~1_combout\ = (\cu|clock_logic|jk0|q~q\ & ((\cu|clock_logic|jk0|q~0_combout\) # ((!\cu|de|Mux11~1_combout\)))) # (!\cu|clock_logic|jk0|q~q\ & (((\start~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|clock_logic|jk0|q~0_combout\,
	datab => \start~input_o\,
	datac => \cu|clock_logic|jk0|q~q\,
	datad => \cu|de|Mux11~1_combout\,
	combout => \cu|clock_logic|jk0|q~1_combout\);

-- Location: FF_X14_Y12_N27
\cu|clock_logic|jk0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \cu|clock_logic|jk0|q~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cu|clock_logic|jk0|q~q\);

-- Location: LCCOMB_X14_Y12_N28
\cu|st|con|count_i[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|st|con|count_i[3]~5_combout\ = (!\cu|control|EndSignal~5_combout\ & ((\cu|control|Goto6~combout\) # ((\cu|clock_logic|jk0|q~q\ & !\cu|st|con|count_i[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|clock_logic|jk0|q~q\,
	datab => \cu|st|con|count_i[2]~4_combout\,
	datac => \cu|control|Goto6~combout\,
	datad => \cu|control|EndSignal~5_combout\,
	combout => \cu|st|con|count_i[3]~5_combout\);

-- Location: LCCOMB_X15_Y11_N12
\cu|st|con|count_i[0]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|st|con|count_i[0]~11_combout\ = (\cu|st|con|count_i\(0) & (((\cu|st|con|count_i[2]~6_combout\)))) # (!\cu|st|con|count_i\(0) & (\cu|st|con|count_i[3]~5_combout\ & (!\cu|st|con|count_i[2]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i[3]~5_combout\,
	datab => \cu|st|con|count_i[2]~8_combout\,
	datac => \cu|st|con|count_i\(0),
	datad => \cu|st|con|count_i[2]~6_combout\,
	combout => \cu|st|con|count_i[0]~11_combout\);

-- Location: FF_X15_Y11_N13
\cu|st|con|count_i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \cu|st|con|count_i[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cu|st|con|count_i\(0));

-- Location: LCCOMB_X15_Y11_N2
\cu|st|dec|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|st|dec|Mux0~3_combout\ = (\cu|st|con|count_i\(0) & (\cu|st|con|count_i\(1) & !\cu|st|con|count_i\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|con|count_i\(0),
	datac => \cu|st|con|count_i\(1),
	datad => \cu|st|con|count_i\(2),
	combout => \cu|st|dec|Mux0~3_combout\);

-- Location: FF_X17_Y11_N21
\dp|RegFIleL|gen_reg0|dff|c:0:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:0:buf32|output~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|RegFIleL|strop\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg0|dff|c:0:dff32|dff0|q~q\);

-- Location: LCCOMB_X17_Y11_N20
\dp|RegFIleL|gen_reg0|BFF_in[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|RegFIleL|gen_reg0|BFF_in\(0) = (\dp|RegFIleL|gen_reg0|dff|c:0:dff32|dff0|q~q\ & ((\cu|control|Grb~0_combout\) # (!\cu|st|dec|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|dec|Mux0~3_combout\,
	datac => \dp|RegFIleL|gen_reg0|dff|c:0:dff32|dff0|q~q\,
	datad => \cu|control|Grb~0_combout\,
	combout => \dp|RegFIleL|gen_reg0|BFF_in\(0));

-- Location: FF_X18_Y11_N15
\dp|RegFIleL|gen_reg1|dffL|c:0:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:0:buf32|output~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|RegFIleL|strop\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RegFIleL|gen_reg1|dffL|c:0:dff32|dff0|q~q\);

-- Location: LCCOMB_X18_Y11_N14
\dp|ALUL|regC|BF1|c:0:buf32|output~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:0:buf32|output~5_combout\ = ((\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & ((\dp|RegFIleL|gen_reg1|dffL|c:0:dff32|dff0|q~q\))) # (!\dp|RegFIleL|reg|input_decoder[0]~4_combout\ & (\dp|RegFIleL|gen_reg0|BFF_in\(0)))) # 
-- (!\dp|RegFIleL|r_out_OR_ba_out~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RegFIleL|gen_reg0|BFF_in\(0),
	datab => \dp|RegFIleL|reg|input_decoder[0]~4_combout\,
	datac => \dp|RegFIleL|gen_reg1|dffL|c:0:dff32|dff0|q~q\,
	datad => \dp|RegFIleL|r_out_OR_ba_out~5_combout\,
	combout => \dp|ALUL|regC|BF1|c:0:buf32|output~5_combout\);

-- Location: LCCOMB_X16_Y10_N24
\dp|ALUL|regC|BF1|c:0:buf32|output~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|ALUL|regC|BF1|c:0:buf32|output~6_combout\ = (\dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\) # ((\dp|ALUL|regC|BF1|c:0:buf32|output~5_combout\ & \dp|ALUL|regC|BF1|c:0:buf32|output~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|ALUL|regC|BF1|c:0:buf32|output~5_combout\,
	datac => \dp|ALUL|regC|BF1|c:0:buf32|output~1_combout\,
	datad => \dp|ALUL|regC|BF1|c:0:buf32|output~4_combout\,
	combout => \dp|ALUL|regC|BF1|c:0:buf32|output~6_combout\);

-- Location: IOIBUF_X31_Y12_N15
\md[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => md(0),
	o => \md[0]~input_o\);

-- Location: LCCOMB_X16_Y12_N12
\dp|MEML|or_G[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|MEML|or_G\(0) = (\dp|ALUL|regC|BF1|c:0:buf32|output~6_combout\ & ((\cu|control|MDin~combout\) # ((\md[0]~input_o\ & \md_read~input_o\)))) # (!\dp|ALUL|regC|BF1|c:0:buf32|output~6_combout\ & (\md[0]~input_o\ & (\md_read~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ALUL|regC|BF1|c:0:buf32|output~6_combout\,
	datab => \md[0]~input_o\,
	datac => \md_read~input_o\,
	datad => \cu|control|MDin~combout\,
	combout => \dp|MEML|or_G\(0));

-- Location: FF_X16_Y12_N13
\dp|MEML|md_r|c:0:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|MEML|or_G\(0),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \dp|MEML|md_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|md_r|c:0:dff32|dff0|q~q\);

-- Location: IOIBUF_X29_Y0_N29
\md_write~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_md_write,
	o => \md_write~input_o\);

-- Location: LCCOMB_X15_Y10_N8
\dp|MEML|ma_r|c:0:dff32|dff0|q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|MEML|ma_r|c:0:dff32|dff0|q~feeder_combout\ = \dp|ALUL|regC|BF1|c:0:buf32|output~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|ALUL|regC|BF1|c:0:buf32|output~6_combout\,
	combout => \dp|MEML|ma_r|c:0:dff32|dff0|q~feeder_combout\);

-- Location: LCCOMB_X15_Y12_N8
\cu|control|MAin~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cu|control|MAin~0_combout\ = (\cu|st|dec|Mux0~5_combout\) # ((\cu|st|dec|Mux0~4_combout\ & ((\cu|de|Mux17~0_combout\) # (!\cu|clock_logic|jk1|q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|st|dec|Mux0~4_combout\,
	datab => \cu|st|dec|Mux0~5_combout\,
	datac => \cu|de|Mux17~0_combout\,
	datad => \cu|clock_logic|jk1|q~0_combout\,
	combout => \cu|control|MAin~0_combout\);

-- Location: FF_X15_Y10_N9
\dp|MEML|ma_r|c:0:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|MEML|ma_r|c:0:dff32|dff0|q~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|MAin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|ma_r|c:0:dff32|dff0|q~q\);

-- Location: FF_X23_Y12_N13
\dp|MEML|ma_r|c:1:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:1:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|control|MAin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|ma_r|c:1:dff32|dff0|q~q\);

-- Location: FF_X19_Y4_N1
\dp|MEML|ma_r|c:2:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:2:buf32|output~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|control|MAin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|ma_r|c:2:dff32|dff0|q~q\);

-- Location: LCCOMB_X16_Y8_N4
\dp|MEML|ma_r|c:3:dff32|dff0|q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|MEML|ma_r|c:3:dff32|dff0|q~feeder_combout\ = \dp|ALUL|regC|BF1|c:3:buf32|output~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|ALUL|regC|BF1|c:3:buf32|output~4_combout\,
	combout => \dp|MEML|ma_r|c:3:dff32|dff0|q~feeder_combout\);

-- Location: FF_X16_Y8_N5
\dp|MEML|ma_r|c:3:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|MEML|ma_r|c:3:dff32|dff0|q~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|MAin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|ma_r|c:3:dff32|dff0|q~q\);

-- Location: LCCOMB_X15_Y10_N30
\dp|MEML|ma_r|c:4:dff32|dff0|q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|MEML|ma_r|c:4:dff32|dff0|q~feeder_combout\ = \dp|ALUL|regC|BF1|c:4:buf32|output~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|ALUL|regC|BF1|c:4:buf32|output~4_combout\,
	combout => \dp|MEML|ma_r|c:4:dff32|dff0|q~feeder_combout\);

-- Location: FF_X15_Y10_N31
\dp|MEML|ma_r|c:4:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|MEML|ma_r|c:4:dff32|dff0|q~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|MAin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|ma_r|c:4:dff32|dff0|q~q\);

-- Location: LCCOMB_X23_Y12_N2
\dp|MEML|ma_r|c:5:dff32|dff0|q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|MEML|ma_r|c:5:dff32|dff0|q~feeder_combout\ = \dp|ALUL|regC|BF1|c:5:buf32|output~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|ALUL|regC|BF1|c:5:buf32|output~4_combout\,
	combout => \dp|MEML|ma_r|c:5:dff32|dff0|q~feeder_combout\);

-- Location: FF_X23_Y12_N3
\dp|MEML|ma_r|c:5:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|MEML|ma_r|c:5:dff32|dff0|q~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|MAin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|ma_r|c:5:dff32|dff0|q~q\);

-- Location: FF_X16_Y8_N23
\dp|MEML|ma_r|c:6:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:6:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|control|MAin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|ma_r|c:6:dff32|dff0|q~q\);

-- Location: LCCOMB_X16_Y8_N8
\dp|MEML|ma_r|c:7:dff32|dff0|q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|MEML|ma_r|c:7:dff32|dff0|q~feeder_combout\ = \dp|ALUL|regC|BF1|c:7:buf32|output~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|ALUL|regC|BF1|c:7:buf32|output~4_combout\,
	combout => \dp|MEML|ma_r|c:7:dff32|dff0|q~feeder_combout\);

-- Location: FF_X16_Y8_N9
\dp|MEML|ma_r|c:7:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|MEML|ma_r|c:7:dff32|dff0|q~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|MAin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|ma_r|c:7:dff32|dff0|q~q\);

-- Location: FF_X16_Y8_N15
\dp|MEML|ma_r|c:8:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:8:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|control|MAin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|ma_r|c:8:dff32|dff0|q~q\);

-- Location: LCCOMB_X23_Y12_N20
\dp|MEML|ma_r|c:9:dff32|dff0|q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|MEML|ma_r|c:9:dff32|dff0|q~feeder_combout\ = \dp|ALUL|regC|BF1|c:9:buf32|output~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|ALUL|regC|BF1|c:9:buf32|output~4_combout\,
	combout => \dp|MEML|ma_r|c:9:dff32|dff0|q~feeder_combout\);

-- Location: FF_X23_Y12_N21
\dp|MEML|ma_r|c:9:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|MEML|ma_r|c:9:dff32|dff0|q~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|MAin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|ma_r|c:9:dff32|dff0|q~q\);

-- Location: LCCOMB_X16_Y8_N24
\dp|MEML|ma_r|c:10:dff32|dff0|q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|MEML|ma_r|c:10:dff32|dff0|q~feeder_combout\ = \dp|ALUL|regC|BF1|c:10:buf32|output~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|ALUL|regC|BF1|c:10:buf32|output~4_combout\,
	combout => \dp|MEML|ma_r|c:10:dff32|dff0|q~feeder_combout\);

-- Location: FF_X16_Y8_N25
\dp|MEML|ma_r|c:10:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|MEML|ma_r|c:10:dff32|dff0|q~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|MAin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|ma_r|c:10:dff32|dff0|q~q\);

-- Location: LCCOMB_X16_Y8_N2
\dp|MEML|ma_r|c:11:dff32|dff0|q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|MEML|ma_r|c:11:dff32|dff0|q~feeder_combout\ = \dp|ALUL|regC|BF1|c:11:buf32|output~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|ALUL|regC|BF1|c:11:buf32|output~4_combout\,
	combout => \dp|MEML|ma_r|c:11:dff32|dff0|q~feeder_combout\);

-- Location: FF_X16_Y8_N3
\dp|MEML|ma_r|c:11:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|MEML|ma_r|c:11:dff32|dff0|q~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|MAin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|ma_r|c:11:dff32|dff0|q~q\);

-- Location: LCCOMB_X30_Y11_N16
\dp|MEML|ma_r|c:12:dff32|dff0|q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|MEML|ma_r|c:12:dff32|dff0|q~feeder_combout\ = \dp|ALUL|regC|BF1|c:12:buf32|output~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|ALUL|regC|BF1|c:12:buf32|output~4_combout\,
	combout => \dp|MEML|ma_r|c:12:dff32|dff0|q~feeder_combout\);

-- Location: FF_X30_Y11_N17
\dp|MEML|ma_r|c:12:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|MEML|ma_r|c:12:dff32|dff0|q~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|MAin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|ma_r|c:12:dff32|dff0|q~q\);

-- Location: LCCOMB_X23_Y12_N10
\dp|MEML|ma_r|c:13:dff32|dff0|q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|MEML|ma_r|c:13:dff32|dff0|q~feeder_combout\ = \dp|ALUL|regC|BF1|c:13:buf32|output~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|ALUL|regC|BF1|c:13:buf32|output~4_combout\,
	combout => \dp|MEML|ma_r|c:13:dff32|dff0|q~feeder_combout\);

-- Location: FF_X23_Y12_N11
\dp|MEML|ma_r|c:13:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|MEML|ma_r|c:13:dff32|dff0|q~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|MAin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|ma_r|c:13:dff32|dff0|q~q\);

-- Location: LCCOMB_X30_Y4_N16
\dp|MEML|ma_r|c:14:dff32|dff0|q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|MEML|ma_r|c:14:dff32|dff0|q~feeder_combout\ = \dp|ALUL|regC|BF1|c:14:buf32|output~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|ALUL|regC|BF1|c:14:buf32|output~4_combout\,
	combout => \dp|MEML|ma_r|c:14:dff32|dff0|q~feeder_combout\);

-- Location: FF_X30_Y4_N17
\dp|MEML|ma_r|c:14:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|MEML|ma_r|c:14:dff32|dff0|q~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|MAin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|ma_r|c:14:dff32|dff0|q~q\);

-- Location: LCCOMB_X30_Y11_N14
\dp|MEML|ma_r|c:15:dff32|dff0|q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|MEML|ma_r|c:15:dff32|dff0|q~feeder_combout\ = \dp|ALUL|regC|BF1|c:15:buf32|output~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|ALUL|regC|BF1|c:15:buf32|output~4_combout\,
	combout => \dp|MEML|ma_r|c:15:dff32|dff0|q~feeder_combout\);

-- Location: FF_X30_Y11_N15
\dp|MEML|ma_r|c:15:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|MEML|ma_r|c:15:dff32|dff0|q~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|MAin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|ma_r|c:15:dff32|dff0|q~q\);

-- Location: LCCOMB_X19_Y4_N6
\dp|MEML|ma_r|c:16:dff32|dff0|q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|MEML|ma_r|c:16:dff32|dff0|q~feeder_combout\ = \dp|ALUL|regC|BF1|c:16:buf32|output~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|ALUL|regC|BF1|c:16:buf32|output~4_combout\,
	combout => \dp|MEML|ma_r|c:16:dff32|dff0|q~feeder_combout\);

-- Location: FF_X19_Y4_N7
\dp|MEML|ma_r|c:16:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|MEML|ma_r|c:16:dff32|dff0|q~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|MAin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|ma_r|c:16:dff32|dff0|q~q\);

-- Location: FF_X19_Y4_N17
\dp|MEML|ma_r|c:17:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:17:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|control|MAin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|ma_r|c:17:dff32|dff0|q~q\);

-- Location: FF_X19_Y4_N27
\dp|MEML|ma_r|c:18:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:18:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|control|MAin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|ma_r|c:18:dff32|dff0|q~q\);

-- Location: LCCOMB_X19_Y4_N24
\dp|MEML|ma_r|c:19:dff32|dff0|q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|MEML|ma_r|c:19:dff32|dff0|q~feeder_combout\ = \dp|ALUL|regC|BF1|c:19:buf32|output~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|ALUL|regC|BF1|c:19:buf32|output~4_combout\,
	combout => \dp|MEML|ma_r|c:19:dff32|dff0|q~feeder_combout\);

-- Location: FF_X19_Y4_N25
\dp|MEML|ma_r|c:19:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|MEML|ma_r|c:19:dff32|dff0|q~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|MAin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|ma_r|c:19:dff32|dff0|q~q\);

-- Location: LCCOMB_X19_Y4_N18
\dp|MEML|ma_r|c:20:dff32|dff0|q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|MEML|ma_r|c:20:dff32|dff0|q~feeder_combout\ = \dp|ALUL|regC|BF1|c:20:buf32|output~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|ALUL|regC|BF1|c:20:buf32|output~4_combout\,
	combout => \dp|MEML|ma_r|c:20:dff32|dff0|q~feeder_combout\);

-- Location: FF_X19_Y4_N19
\dp|MEML|ma_r|c:20:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|MEML|ma_r|c:20:dff32|dff0|q~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|MAin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|ma_r|c:20:dff32|dff0|q~q\);

-- Location: FF_X19_Y4_N9
\dp|MEML|ma_r|c:21:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:21:buf32|output~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|control|MAin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|ma_r|c:21:dff32|dff0|q~q\);

-- Location: FF_X16_Y8_N29
\dp|MEML|ma_r|c:22:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:22:buf32|output~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|control|MAin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|ma_r|c:22:dff32|dff0|q~q\);

-- Location: LCCOMB_X24_Y10_N28
\dp|MEML|ma_r|c:23:dff32|dff0|q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|MEML|ma_r|c:23:dff32|dff0|q~feeder_combout\ = \dp|ALUL|regC|BF1|c:23:buf32|output~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|ALUL|regC|BF1|c:23:buf32|output~3_combout\,
	combout => \dp|MEML|ma_r|c:23:dff32|dff0|q~feeder_combout\);

-- Location: FF_X24_Y10_N29
\dp|MEML|ma_r|c:23:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|MEML|ma_r|c:23:dff32|dff0|q~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|MAin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|ma_r|c:23:dff32|dff0|q~q\);

-- Location: LCCOMB_X16_Y8_N18
\dp|MEML|ma_r|c:24:dff32|dff0|q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|MEML|ma_r|c:24:dff32|dff0|q~feeder_combout\ = \dp|ALUL|regC|BF1|c:24:buf32|output~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|ALUL|regC|BF1|c:24:buf32|output~3_combout\,
	combout => \dp|MEML|ma_r|c:24:dff32|dff0|q~feeder_combout\);

-- Location: FF_X16_Y8_N19
\dp|MEML|ma_r|c:24:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|MEML|ma_r|c:24:dff32|dff0|q~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|MAin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|ma_r|c:24:dff32|dff0|q~q\);

-- Location: FF_X16_Y8_N1
\dp|MEML|ma_r|c:25:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:25:buf32|output~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|control|MAin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|ma_r|c:25:dff32|dff0|q~q\);

-- Location: FF_X16_Y8_N31
\dp|MEML|ma_r|c:26:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:26:buf32|output~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|control|MAin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|ma_r|c:26:dff32|dff0|q~q\);

-- Location: FF_X22_Y9_N21
\dp|MEML|ma_r|c:27:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:27:buf32|output~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|control|MAin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|ma_r|c:27:dff32|dff0|q~q\);

-- Location: LCCOMB_X23_Y7_N12
\dp|MEML|ma_r|c:28:dff32|dff0|q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|MEML|ma_r|c:28:dff32|dff0|q~feeder_combout\ = \dp|ALUL|regC|BF1|c:28:buf32|output~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|ALUL|regC|BF1|c:28:buf32|output~3_combout\,
	combout => \dp|MEML|ma_r|c:28:dff32|dff0|q~feeder_combout\);

-- Location: FF_X23_Y7_N13
\dp|MEML|ma_r|c:28:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|MEML|ma_r|c:28:dff32|dff0|q~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|MAin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|ma_r|c:28:dff32|dff0|q~q\);

-- Location: LCCOMB_X16_Y8_N16
\dp|MEML|ma_r|c:29:dff32|dff0|q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|MEML|ma_r|c:29:dff32|dff0|q~feeder_combout\ = \dp|ALUL|regC|BF1|c:29:buf32|output~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|ALUL|regC|BF1|c:29:buf32|output~3_combout\,
	combout => \dp|MEML|ma_r|c:29:dff32|dff0|q~feeder_combout\);

-- Location: FF_X16_Y8_N17
\dp|MEML|ma_r|c:29:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|MEML|ma_r|c:29:dff32|dff0|q~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|MAin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|ma_r|c:29:dff32|dff0|q~q\);

-- Location: LCCOMB_X16_Y8_N26
\dp|MEML|ma_r|c:30:dff32|dff0|q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dp|MEML|ma_r|c:30:dff32|dff0|q~feeder_combout\ = \dp|ALUL|regC|BF1|c:30:buf32|output~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|ALUL|regC|BF1|c:30:buf32|output~3_combout\,
	combout => \dp|MEML|ma_r|c:30:dff32|dff0|q~feeder_combout\);

-- Location: FF_X16_Y8_N27
\dp|MEML|ma_r|c:30:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	d => \dp|MEML|ma_r|c:30:dff32|dff0|q~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cu|control|MAin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|ma_r|c:30:dff32|dff0|q~q\);

-- Location: FF_X16_Y8_N13
\dp|MEML|ma_r|c:31:dff32|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clock~inputclkctrl_outclk\,
	asdata => \dp|ALUL|regC|BF1|c:31:buf32|output~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|control|MAin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|MEML|ma_r|c:31:dff32|dff0|q~q\);

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X10_Y24_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

ww_r <= \r~output_o\;

ww_w <= \w~output_o\;

ww_ma(0) <= \ma[0]~output_o\;

ww_ma(1) <= \ma[1]~output_o\;

ww_ma(2) <= \ma[2]~output_o\;

ww_ma(3) <= \ma[3]~output_o\;

ww_ma(4) <= \ma[4]~output_o\;

ww_ma(5) <= \ma[5]~output_o\;

ww_ma(6) <= \ma[6]~output_o\;

ww_ma(7) <= \ma[7]~output_o\;

ww_ma(8) <= \ma[8]~output_o\;

ww_ma(9) <= \ma[9]~output_o\;

ww_ma(10) <= \ma[10]~output_o\;

ww_ma(11) <= \ma[11]~output_o\;

ww_ma(12) <= \ma[12]~output_o\;

ww_ma(13) <= \ma[13]~output_o\;

ww_ma(14) <= \ma[14]~output_o\;

ww_ma(15) <= \ma[15]~output_o\;

ww_ma(16) <= \ma[16]~output_o\;

ww_ma(17) <= \ma[17]~output_o\;

ww_ma(18) <= \ma[18]~output_o\;

ww_ma(19) <= \ma[19]~output_o\;

ww_ma(20) <= \ma[20]~output_o\;

ww_ma(21) <= \ma[21]~output_o\;

ww_ma(22) <= \ma[22]~output_o\;

ww_ma(23) <= \ma[23]~output_o\;

ww_ma(24) <= \ma[24]~output_o\;

ww_ma(25) <= \ma[25]~output_o\;

ww_ma(26) <= \ma[26]~output_o\;

ww_ma(27) <= \ma[27]~output_o\;

ww_ma(28) <= \ma[28]~output_o\;

ww_ma(29) <= \ma[29]~output_o\;

ww_ma(30) <= \ma[30]~output_o\;

ww_ma(31) <= \ma[31]~output_o\;

md(0) <= \md[0]~output_o\;

md(1) <= \md[1]~output_o\;

md(2) <= \md[2]~output_o\;

md(3) <= \md[3]~output_o\;

md(4) <= \md[4]~output_o\;

md(5) <= \md[5]~output_o\;

md(6) <= \md[6]~output_o\;

md(7) <= \md[7]~output_o\;

md(8) <= \md[8]~output_o\;

md(9) <= \md[9]~output_o\;

md(10) <= \md[10]~output_o\;

md(11) <= \md[11]~output_o\;

md(12) <= \md[12]~output_o\;

md(13) <= \md[13]~output_o\;

md(14) <= \md[14]~output_o\;

md(15) <= \md[15]~output_o\;

md(16) <= \md[16]~output_o\;

md(17) <= \md[17]~output_o\;

md(18) <= \md[18]~output_o\;

md(19) <= \md[19]~output_o\;

md(20) <= \md[20]~output_o\;

md(21) <= \md[21]~output_o\;

md(22) <= \md[22]~output_o\;

md(23) <= \md[23]~output_o\;

md(24) <= \md[24]~output_o\;

md(25) <= \md[25]~output_o\;

md(26) <= \md[26]~output_o\;

md(27) <= \md[27]~output_o\;

md(28) <= \md[28]~output_o\;

md(29) <= \md[29]~output_o\;

md(30) <= \md[30]~output_o\;

md(31) <= \md[31]~output_o\;
END structure;


