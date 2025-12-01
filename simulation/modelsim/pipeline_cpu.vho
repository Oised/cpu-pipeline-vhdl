-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "12/01/2025 14:37:55"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	pipeline_cpu IS
    PORT (
	CLOCK_50 : IN std_logic;
	sw : IN std_logic_vector(3 DOWNTO 0);
	hex0 : BUFFER std_logic_vector(0 TO 6);
	hex2 : BUFFER std_logic_vector(0 TO 6);
	hex3 : BUFFER std_logic_vector(0 TO 6);
	hex4 : BUFFER std_logic_vector(0 TO 6);
	hex5 : BUFFER std_logic_vector(0 TO 6)
	);
END pipeline_cpu;

-- Design Ports Information
-- hex0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex5[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex5[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex5[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex5[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex5[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex5[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex5[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF pipeline_cpu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_sw : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_hex0 : std_logic_vector(0 TO 6);
SIGNAL ww_hex2 : std_logic_vector(0 TO 6);
SIGNAL ww_hex3 : std_logic_vector(0 TO 6);
SIGNAL ww_hex4 : std_logic_vector(0 TO 6);
SIGNAL ww_hex5 : std_logic_vector(0 TO 6);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \hex0[6]~output_o\ : std_logic;
SIGNAL \hex0[5]~output_o\ : std_logic;
SIGNAL \hex0[4]~output_o\ : std_logic;
SIGNAL \hex0[3]~output_o\ : std_logic;
SIGNAL \hex0[2]~output_o\ : std_logic;
SIGNAL \hex0[1]~output_o\ : std_logic;
SIGNAL \hex0[0]~output_o\ : std_logic;
SIGNAL \hex2[6]~output_o\ : std_logic;
SIGNAL \hex2[5]~output_o\ : std_logic;
SIGNAL \hex2[4]~output_o\ : std_logic;
SIGNAL \hex2[3]~output_o\ : std_logic;
SIGNAL \hex2[2]~output_o\ : std_logic;
SIGNAL \hex2[1]~output_o\ : std_logic;
SIGNAL \hex2[0]~output_o\ : std_logic;
SIGNAL \hex3[6]~output_o\ : std_logic;
SIGNAL \hex3[5]~output_o\ : std_logic;
SIGNAL \hex3[4]~output_o\ : std_logic;
SIGNAL \hex3[3]~output_o\ : std_logic;
SIGNAL \hex3[2]~output_o\ : std_logic;
SIGNAL \hex3[1]~output_o\ : std_logic;
SIGNAL \hex3[0]~output_o\ : std_logic;
SIGNAL \hex4[6]~output_o\ : std_logic;
SIGNAL \hex4[5]~output_o\ : std_logic;
SIGNAL \hex4[4]~output_o\ : std_logic;
SIGNAL \hex4[3]~output_o\ : std_logic;
SIGNAL \hex4[2]~output_o\ : std_logic;
SIGNAL \hex4[1]~output_o\ : std_logic;
SIGNAL \hex4[0]~output_o\ : std_logic;
SIGNAL \hex5[6]~output_o\ : std_logic;
SIGNAL \hex5[5]~output_o\ : std_logic;
SIGNAL \hex5[4]~output_o\ : std_logic;
SIGNAL \hex5[3]~output_o\ : std_logic;
SIGNAL \hex5[2]~output_o\ : std_logic;
SIGNAL \hex5[1]~output_o\ : std_logic;
SIGNAL \hex5[0]~output_o\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \Led_Reg_n|Mux6~0_combout\ : std_logic;
SIGNAL \Led_Reg_n|Mux5~0_combout\ : std_logic;
SIGNAL \Led_Reg_n|Mux4~0_combout\ : std_logic;
SIGNAL \Led_Reg_n|Mux3~0_combout\ : std_logic;
SIGNAL \Led_Reg_n|Mux2~0_combout\ : std_logic;
SIGNAL \Led_Reg_n|Mux1~0_combout\ : std_logic;
SIGNAL \Led_Reg_n|Mux0~0_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \clockticks[0]~13_combout\ : std_logic;
SIGNAL \clockticks[11]~36\ : std_logic;
SIGNAL \clockticks[12]~37_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \clockticks[0]~14\ : std_logic;
SIGNAL \clockticks[1]~15_combout\ : std_logic;
SIGNAL \clockticks[1]~16\ : std_logic;
SIGNAL \clockticks[2]~17_combout\ : std_logic;
SIGNAL \clockticks[2]~18\ : std_logic;
SIGNAL \clockticks[3]~19_combout\ : std_logic;
SIGNAL \clockticks[3]~20\ : std_logic;
SIGNAL \clockticks[4]~21_combout\ : std_logic;
SIGNAL \clockticks[4]~22\ : std_logic;
SIGNAL \clockticks[5]~23_combout\ : std_logic;
SIGNAL \clockticks[5]~24\ : std_logic;
SIGNAL \clockticks[6]~25_combout\ : std_logic;
SIGNAL \clockticks[6]~26\ : std_logic;
SIGNAL \clockticks[7]~27_combout\ : std_logic;
SIGNAL \clockticks[7]~28\ : std_logic;
SIGNAL \clockticks[8]~29_combout\ : std_logic;
SIGNAL \clockticks[8]~30\ : std_logic;
SIGNAL \clockticks[9]~31_combout\ : std_logic;
SIGNAL \clockticks[9]~32\ : std_logic;
SIGNAL \clockticks[10]~33_combout\ : std_logic;
SIGNAL \clockticks[10]~34\ : std_logic;
SIGNAL \clockticks[11]~35_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \clock~q\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \S_ID_EX|R_WB_in|R[1]~feeder_combout\ : std_logic;
SIGNAL \phase_cnt[0]~3_combout\ : std_logic;
SIGNAL \phase_cnt[1]~2_combout\ : std_logic;
SIGNAL \phase_cnt[2]~1_combout\ : std_logic;
SIGNAL \phase_cnt[3]~0_combout\ : std_logic;
SIGNAL \Global_In~combout\ : std_logic;
SIGNAL \S_ID_EX|WB_out_reg[1]~feeder_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \S_EX_MEM|R_WB_in|R[1]~feeder_combout\ : std_logic;
SIGNAL \S_EX_MEM|WB_out_reg[1]~feeder_combout\ : std_logic;
SIGNAL \S_MEM_WB|R_WB_in|R[1]~feeder_combout\ : std_logic;
SIGNAL \S_MEM_WB|WB_out_reg[1]~feeder_combout\ : std_logic;
SIGNAL \PC_IF|R_PC_in|R[1]~0_combout\ : std_logic;
SIGNAL \PC_IF|PC_out_reg[1]~feeder_combout\ : std_logic;
SIGNAL \PC_IF|PC_out_reg[2]~feeder_combout\ : std_logic;
SIGNAL \PC_IF|PC_out_reg[3]~feeder_combout\ : std_logic;
SIGNAL \PC_mais_2|carry_v~0_combout\ : std_logic;
SIGNAL \PC_IF|PC_out_reg[5]~feeder_combout\ : std_logic;
SIGNAL \PC_mais_2|carry_v~1_combout\ : std_logic;
SIGNAL \PC_IF|PC_out_reg[10]~feeder_combout\ : std_logic;
SIGNAL \Instruc_M|Add0~1_cout\ : std_logic;
SIGNAL \Instruc_M|Add0~3\ : std_logic;
SIGNAL \Instruc_M|Add0~5\ : std_logic;
SIGNAL \Instruc_M|Add0~7\ : std_logic;
SIGNAL \Instruc_M|Add0~8_combout\ : std_logic;
SIGNAL \PC_mais_2|carry_v~2_combout\ : std_logic;
SIGNAL \PC_IF|PC_out_reg[12]~feeder_combout\ : std_logic;
SIGNAL \Instruc_M|Add0~9\ : std_logic;
SIGNAL \Instruc_M|Add0~11\ : std_logic;
SIGNAL \Instruc_M|Add0~12_combout\ : std_logic;
SIGNAL \Instruc_M|Add0~10_combout\ : std_logic;
SIGNAL \Instruc_M|Add0~6_combout\ : std_logic;
SIGNAL \Instruc_M|Inst_Out[0]~1_combout\ : std_logic;
SIGNAL \Instruc_M|Add0~4_combout\ : std_logic;
SIGNAL \Instruc_M|Add0~2_combout\ : std_logic;
SIGNAL \Instruc_M|Inst_Out[0]~0_combout\ : std_logic;
SIGNAL \PC_mais_2|carry_v~3_combout\ : std_logic;
SIGNAL \Instruc_M|Add0~13\ : std_logic;
SIGNAL \Instruc_M|Add0~15\ : std_logic;
SIGNAL \Instruc_M|Add0~16_combout\ : std_logic;
SIGNAL \Instruc_M|Add0~17\ : std_logic;
SIGNAL \Instruc_M|Add0~19\ : std_logic;
SIGNAL \Instruc_M|Add0~20_combout\ : std_logic;
SIGNAL \Instruc_M|Add0~18_combout\ : std_logic;
SIGNAL \Instruc_M|Add0~14_combout\ : std_logic;
SIGNAL \Instruc_M|Inst_Out[0]~2_combout\ : std_logic;
SIGNAL \Instruc_M|Inst_Out[2]~5_combout\ : std_logic;
SIGNAL \Instruc_M|Inst_Out[2]~7_combout\ : std_logic;
SIGNAL \S_IF_ID|Inst_ID_reg[2]~feeder_combout\ : std_logic;
SIGNAL \Instruc_M|Mux15~0_combout\ : std_logic;
SIGNAL \Instruc_M|Inst_Out[0]~4_combout\ : std_logic;
SIGNAL \Instruc_M|Mux2~0_combout\ : std_logic;
SIGNAL \Instruc_M|Inst_Out[13]~3_combout\ : std_logic;
SIGNAL \S_IF_ID|Inst_ID_reg[13]~feeder_combout\ : std_logic;
SIGNAL \S_ID_EX|R_EX_in|R[0]~feeder_combout\ : std_logic;
SIGNAL \S_ID_EX|EX_out_reg[0]~feeder_combout\ : std_logic;
SIGNAL \S_EX_MEM|R_M_in|R[1]~feeder_combout\ : std_logic;
SIGNAL \S_MEM_WB|R_WB_in|R[0]~feeder_combout\ : std_logic;
SIGNAL \S_MEM_WB|WB_out_reg[0]~feeder_combout\ : std_logic;
SIGNAL \S_ID_EX|R_RD_ID|R[1]~feeder_combout\ : std_logic;
SIGNAL \S_ID_EX|RD_EX_reg[1]~feeder_combout\ : std_logic;
SIGNAL \Mux_2_1_EX_2|Y[2]~2_combout\ : std_logic;
SIGNAL \S_MEM_WB|R_RW|R[2]~feeder_combout\ : std_logic;
SIGNAL \S_MEM_WB|RW_WB_reg[2]~feeder_combout\ : std_logic;
SIGNAL \Instruc_M|Inst_Out[1]~6_combout\ : std_logic;
SIGNAL \S_IF_ID|Inst_ID_reg[1]~feeder_combout\ : std_logic;
SIGNAL \S_ID_EX|R_RD_ID|R[0]~feeder_combout\ : std_logic;
SIGNAL \S_ID_EX|RD_EX_reg[0]~feeder_combout\ : std_logic;
SIGNAL \S_ID_EX|R_RT_ID|R[0]~feeder_combout\ : std_logic;
SIGNAL \Mux_2_1_EX_2|Y[0]~0_combout\ : std_logic;
SIGNAL \S_EX_MEM|R_RW|R[0]~feeder_combout\ : std_logic;
SIGNAL \S_EX_MEM|RW_MEM_reg[0]~feeder_combout\ : std_logic;
SIGNAL \S_MEM_WB|R_RW|R[0]~feeder_combout\ : std_logic;
SIGNAL \S_MEM_WB|RW_WB_reg[0]~feeder_combout\ : std_logic;
SIGNAL \Mux_2_1_EX_2|Y[1]~1_combout\ : std_logic;
SIGNAL \S_EX_MEM|RW_MEM_reg[1]~feeder_combout\ : std_logic;
SIGNAL \S_MEM_WB|R_RW|R[1]~feeder_combout\ : std_logic;
SIGNAL \S_MEM_WB|RW_WB_reg[1]~feeder_combout\ : std_logic;
SIGNAL \S_Registers|Decoder0~0_combout\ : std_logic;
SIGNAL \S_Registers|regs[5][2]~q\ : std_logic;
SIGNAL \S_Registers|Decoder0~3_combout\ : std_logic;
SIGNAL \S_Registers|regs[7][2]~q\ : std_logic;
SIGNAL \S_Registers|Decoder0~2_combout\ : std_logic;
SIGNAL \S_Registers|regs[4][2]~q\ : std_logic;
SIGNAL \S_Registers|Decoder0~1_combout\ : std_logic;
SIGNAL \S_Registers|regs[6][2]~q\ : std_logic;
SIGNAL \S_Registers|Mux13~0_combout\ : std_logic;
SIGNAL \S_Registers|Mux13~1_combout\ : std_logic;
SIGNAL \S_Registers|Decoder0~4_combout\ : std_logic;
SIGNAL \S_Registers|regs[2][2]~q\ : std_logic;
SIGNAL \S_Registers|Decoder0~6_combout\ : std_logic;
SIGNAL \S_Registers|regs[0][2]~q\ : std_logic;
SIGNAL \S_Registers|Decoder0~5_combout\ : std_logic;
SIGNAL \S_Registers|regs[1][2]~q\ : std_logic;
SIGNAL \S_Registers|Mux13~2_combout\ : std_logic;
SIGNAL \S_Registers|Mux13~3_combout\ : std_logic;
SIGNAL \S_Registers|Mux13~4_combout\ : std_logic;
SIGNAL \S_ID_EX|R_RT|R[2]~feeder_combout\ : std_logic;
SIGNAL \S_ID_EX|R_EX_in|R[1]~0_combout\ : std_logic;
SIGNAL \Mux_2_1_EX_1|Y[2]~1_combout\ : std_logic;
SIGNAL \ALUControl|Add_Sub~combout\ : std_logic;
SIGNAL \S_MEM_WB|R_ALU_R|R[4]~feeder_combout\ : std_logic;
SIGNAL \S_Registers|regs[3][0]~feeder_combout\ : std_logic;
SIGNAL \S_Registers|Decoder0~7_combout\ : std_logic;
SIGNAL \S_Registers|regs[3][0]~q\ : std_logic;
SIGNAL \S_Registers|regs[2][0]~q\ : std_logic;
SIGNAL \S_Registers|regs[1][0]~q\ : std_logic;
SIGNAL \S_Registers|Mux15~2_combout\ : std_logic;
SIGNAL \S_Registers|Mux15~3_combout\ : std_logic;
SIGNAL \S_Registers|regs[5][0]~q\ : std_logic;
SIGNAL \S_Registers|regs[7][0]~q\ : std_logic;
SIGNAL \S_Registers|regs[6][0]~q\ : std_logic;
SIGNAL \S_Registers|regs[4][0]~q\ : std_logic;
SIGNAL \S_Registers|Mux15~0_combout\ : std_logic;
SIGNAL \S_Registers|Mux15~1_combout\ : std_logic;
SIGNAL \S_Registers|Mux15~4_combout\ : std_logic;
SIGNAL \ALU|R[0]~0_combout\ : std_logic;
SIGNAL \Data_Mem|mem~22_combout\ : std_logic;
SIGNAL \Data_Mem|read_reg~0_combout\ : std_logic;
SIGNAL \S_MEM_WB|R_ReadData|R[0]~feeder_combout\ : std_logic;
SIGNAL \S_MEM_WB|R_ALU_R|R[0]~feeder_combout\ : std_logic;
SIGNAL \Mux_2_1_WB|Y[0]~0_combout\ : std_logic;
SIGNAL \S_Registers|regs[0][0]~q\ : std_logic;
SIGNAL \S_ID_EX|RT_Data_EX_reg[0]~feeder_combout\ : std_logic;
SIGNAL \ALU|carry_v[1]~0_combout\ : std_logic;
SIGNAL \S_Registers|regs[5][1]~q\ : std_logic;
SIGNAL \S_Registers|regs[7][1]~q\ : std_logic;
SIGNAL \S_Registers|regs[6][1]~q\ : std_logic;
SIGNAL \S_Registers|regs[4][1]~q\ : std_logic;
SIGNAL \S_Registers|Mux14~0_combout\ : std_logic;
SIGNAL \S_Registers|Mux14~1_combout\ : std_logic;
SIGNAL \S_Registers|regs[3][1]~feeder_combout\ : std_logic;
SIGNAL \S_Registers|regs[3][1]~q\ : std_logic;
SIGNAL \S_Registers|regs[2][1]~q\ : std_logic;
SIGNAL \S_Registers|regs[1][1]~q\ : std_logic;
SIGNAL \S_Registers|Mux14~2_combout\ : std_logic;
SIGNAL \S_Registers|Mux14~3_combout\ : std_logic;
SIGNAL \S_Registers|Mux14~4_combout\ : std_logic;
SIGNAL \Data_Mem|mem~25_combout\ : std_logic;
SIGNAL \Data_Mem|read_reg~3_combout\ : std_logic;
SIGNAL \S_MEM_WB|R_ALU_R|R[3]~feeder_combout\ : std_logic;
SIGNAL \S_MEM_WB|ALU_R_WB_reg[3]~feeder_combout\ : std_logic;
SIGNAL \Mux_2_1_WB|Y[3]~3_combout\ : std_logic;
SIGNAL \S_Registers|regs[0][3]~q\ : std_logic;
SIGNAL \Mux_2_1_EX_1|Y[3]~2_combout\ : std_logic;
SIGNAL \S_Registers|regs[1][3]~q\ : std_logic;
SIGNAL \S_Registers|Mux12~2_combout\ : std_logic;
SIGNAL \S_Registers|regs[2][3]~q\ : std_logic;
SIGNAL \S_Registers|regs[3][3]~feeder_combout\ : std_logic;
SIGNAL \S_Registers|regs[3][3]~q\ : std_logic;
SIGNAL \S_Registers|Mux12~3_combout\ : std_logic;
SIGNAL \S_Registers|regs[5][3]~q\ : std_logic;
SIGNAL \S_Registers|regs[7][3]~q\ : std_logic;
SIGNAL \S_Registers|regs[6][3]~q\ : std_logic;
SIGNAL \S_Registers|regs[4][3]~q\ : std_logic;
SIGNAL \S_Registers|Mux12~0_combout\ : std_logic;
SIGNAL \S_Registers|Mux12~1_combout\ : std_logic;
SIGNAL \S_Registers|Mux12~4_combout\ : std_logic;
SIGNAL \ALU|carry_v[3]~2_combout\ : std_logic;
SIGNAL \Data_Mem|read_reg~4_combout\ : std_logic;
SIGNAL \Data_Mem|read_reg~5_combout\ : std_logic;
SIGNAL \S_MEM_WB|R_ReadData|R[4]~feeder_combout\ : std_logic;
SIGNAL \Mux_2_1_WB|Y[4]~4_combout\ : std_logic;
SIGNAL \S_Registers|regs[5][4]~q\ : std_logic;
SIGNAL \S_Registers|regs[7][4]~q\ : std_logic;
SIGNAL \S_Registers|regs[4][4]~q\ : std_logic;
SIGNAL \S_Registers|regs[6][4]~q\ : std_logic;
SIGNAL \S_Registers|Mux11~0_combout\ : std_logic;
SIGNAL \S_Registers|Mux11~1_combout\ : std_logic;
SIGNAL \S_Registers|regs[3][4]~feeder_combout\ : std_logic;
SIGNAL \S_Registers|regs[3][4]~q\ : std_logic;
SIGNAL \S_Registers|regs[2][4]~q\ : std_logic;
SIGNAL \S_Registers|regs[0][4]~q\ : std_logic;
SIGNAL \S_Registers|regs[1][4]~q\ : std_logic;
SIGNAL \S_Registers|Mux11~2_combout\ : std_logic;
SIGNAL \S_Registers|Mux11~3_combout\ : std_logic;
SIGNAL \S_Registers|Mux11~4_combout\ : std_logic;
SIGNAL \ALU|carry_v[4]~3_combout\ : std_logic;
SIGNAL \Mux_2_1_EX_1|Y[4]~3_combout\ : std_logic;
SIGNAL \S_EX_MEM|ALU_R_MEM_reg[4]~feeder_combout\ : std_logic;
SIGNAL \Data_Mem|mem~23_combout\ : std_logic;
SIGNAL \Data_Mem|read_reg~1_combout\ : std_logic;
SIGNAL \S_MEM_WB|R_ReadData|R[1]~feeder_combout\ : std_logic;
SIGNAL \S_MEM_WB|R_ALU_R|R[1]~feeder_combout\ : std_logic;
SIGNAL \S_MEM_WB|ALU_R_WB_reg[1]~feeder_combout\ : std_logic;
SIGNAL \Mux_2_1_WB|Y[1]~1_combout\ : std_logic;
SIGNAL \S_Registers|regs[0][1]~q\ : std_logic;
SIGNAL \Mux_2_1_EX_1|Y[1]~0_combout\ : std_logic;
SIGNAL \ALU|carry_v[2]~1_combout\ : std_logic;
SIGNAL \S_MEM_WB|R_ALU_R|R[2]~feeder_combout\ : std_logic;
SIGNAL \Data_Mem|mem~24_combout\ : std_logic;
SIGNAL \Data_Mem|read_reg~2_combout\ : std_logic;
SIGNAL \S_MEM_WB|R_ReadData|R[2]~feeder_combout\ : std_logic;
SIGNAL \S_MEM_WB|Read_Data_WB_reg[2]~feeder_combout\ : std_logic;
SIGNAL \Mux_2_1_WB|Y[2]~2_combout\ : std_logic;
SIGNAL \S_Registers|regs[3][2]~feeder_combout\ : std_logic;
SIGNAL \S_Registers|regs[3][2]~q\ : std_logic;
SIGNAL \S_Registers|Mux45~2_combout\ : std_logic;
SIGNAL \S_Registers|Mux45~3_combout\ : std_logic;
SIGNAL \S_Registers|Mux45~0_combout\ : std_logic;
SIGNAL \S_Registers|Mux45~1_combout\ : std_logic;
SIGNAL \S_Registers|Mux45~4_combout\ : std_logic;
SIGNAL \S_Registers|Mux46~0_combout\ : std_logic;
SIGNAL \S_Registers|Mux46~1_combout\ : std_logic;
SIGNAL \S_Registers|Mux46~2_combout\ : std_logic;
SIGNAL \S_Registers|Mux46~3_combout\ : std_logic;
SIGNAL \S_Registers|Mux46~4_combout\ : std_logic;
SIGNAL \S_Registers|Mux44~2_combout\ : std_logic;
SIGNAL \S_Registers|Mux44~3_combout\ : std_logic;
SIGNAL \S_Registers|Mux44~0_combout\ : std_logic;
SIGNAL \S_Registers|Mux44~1_combout\ : std_logic;
SIGNAL \S_Registers|Mux44~4_combout\ : std_logic;
SIGNAL \S_Registers|Mux47~2_combout\ : std_logic;
SIGNAL \S_Registers|Mux47~3_combout\ : std_logic;
SIGNAL \S_Registers|Mux47~0_combout\ : std_logic;
SIGNAL \S_Registers|Mux47~1_combout\ : std_logic;
SIGNAL \S_Registers|Mux47~4_combout\ : std_logic;
SIGNAL \Led_1_de_4|Mux6~0_combout\ : std_logic;
SIGNAL \Led_1_de_4|Mux5~0_combout\ : std_logic;
SIGNAL \Led_1_de_4|Mux4~0_combout\ : std_logic;
SIGNAL \Led_1_de_4|Mux3~0_combout\ : std_logic;
SIGNAL \Led_1_de_4|Mux2~0_combout\ : std_logic;
SIGNAL \Led_1_de_4|Mux1~0_combout\ : std_logic;
SIGNAL \Led_1_de_4|Mux0~0_combout\ : std_logic;
SIGNAL \S_Registers|regs[3][6]~feeder_combout\ : std_logic;
SIGNAL \S_Registers|regs[3][6]~q\ : std_logic;
SIGNAL \S_Registers|regs[2][6]~q\ : std_logic;
SIGNAL \S_Registers|regs[0][6]~q\ : std_logic;
SIGNAL \S_Registers|regs[1][6]~q\ : std_logic;
SIGNAL \S_Registers|Mux9~2_combout\ : std_logic;
SIGNAL \S_Registers|Mux9~3_combout\ : std_logic;
SIGNAL \S_Registers|regs[4][6]~q\ : std_logic;
SIGNAL \S_Registers|regs[6][6]~q\ : std_logic;
SIGNAL \S_Registers|Mux9~0_combout\ : std_logic;
SIGNAL \S_Registers|regs[5][6]~q\ : std_logic;
SIGNAL \S_Registers|Mux9~1_combout\ : std_logic;
SIGNAL \S_Registers|Mux9~4_combout\ : std_logic;
SIGNAL \S_ID_EX|R_RT|R[6]~feeder_combout\ : std_logic;
SIGNAL \Mux_2_1_EX_1|Y[6]~5_combout\ : std_logic;
SIGNAL \S_Registers|regs[4][5]~q\ : std_logic;
SIGNAL \S_Registers|regs[6][5]~q\ : std_logic;
SIGNAL \S_Registers|Mux10~0_combout\ : std_logic;
SIGNAL \S_Registers|regs[7][5]~q\ : std_logic;
SIGNAL \S_Registers|regs[5][5]~q\ : std_logic;
SIGNAL \S_Registers|Mux10~1_combout\ : std_logic;
SIGNAL \S_Registers|regs[3][5]~feeder_combout\ : std_logic;
SIGNAL \S_Registers|regs[3][5]~q\ : std_logic;
SIGNAL \S_Registers|regs[2][5]~q\ : std_logic;
SIGNAL \S_Registers|regs[1][5]~q\ : std_logic;
SIGNAL \S_Registers|Mux10~2_combout\ : std_logic;
SIGNAL \S_Registers|Mux10~3_combout\ : std_logic;
SIGNAL \S_Registers|Mux10~4_combout\ : std_logic;
SIGNAL \ALU|carry_v[5]~4_combout\ : std_logic;
SIGNAL \S_EX_MEM|ALU_R_MEM_reg[5]~feeder_combout\ : std_logic;
SIGNAL \S_MEM_WB|R_ALU_R|R[5]~feeder_combout\ : std_logic;
SIGNAL \S_MEM_WB|ALU_R_WB_reg[5]~feeder_combout\ : std_logic;
SIGNAL \Mux_2_1_WB|Y[5]~5_combout\ : std_logic;
SIGNAL \S_Registers|regs[0][5]~q\ : std_logic;
SIGNAL \S_ID_EX|R_RT|R[5]~feeder_combout\ : std_logic;
SIGNAL \Mux_2_1_EX_1|Y[5]~4_combout\ : std_logic;
SIGNAL \ALU|carry_v[6]~5_combout\ : std_logic;
SIGNAL \S_MEM_WB|R_ALU_R|R[6]~feeder_combout\ : std_logic;
SIGNAL \S_MEM_WB|ALU_R_WB_reg[6]~feeder_combout\ : std_logic;
SIGNAL \Mux_2_1_WB|Y[6]~6_combout\ : std_logic;
SIGNAL \S_Registers|regs[7][6]~q\ : std_logic;
SIGNAL \S_Registers|Mux41~0_combout\ : std_logic;
SIGNAL \S_Registers|Mux41~1_combout\ : std_logic;
SIGNAL \S_Registers|Mux41~2_combout\ : std_logic;
SIGNAL \S_Registers|Mux41~3_combout\ : std_logic;
SIGNAL \S_Registers|Mux41~4_combout\ : std_logic;
SIGNAL \S_Registers|regs[0][7]~q\ : std_logic;
SIGNAL \S_ID_EX|R_RT|R[7]~feeder_combout\ : std_logic;
SIGNAL \Mux_2_1_EX_1|Y[7]~6_combout\ : std_logic;
SIGNAL \S_Registers|regs[5][7]~q\ : std_logic;
SIGNAL \S_Registers|regs[7][7]~q\ : std_logic;
SIGNAL \S_Registers|regs[4][7]~q\ : std_logic;
SIGNAL \S_Registers|Mux8~0_combout\ : std_logic;
SIGNAL \S_Registers|Mux8~1_combout\ : std_logic;
SIGNAL \S_Registers|regs[3][7]~q\ : std_logic;
SIGNAL \S_Registers|regs[2][7]~q\ : std_logic;
SIGNAL \S_Registers|regs[1][7]~q\ : std_logic;
SIGNAL \S_Registers|Mux8~2_combout\ : std_logic;
SIGNAL \S_Registers|Mux8~3_combout\ : std_logic;
SIGNAL \S_Registers|Mux8~4_combout\ : std_logic;
SIGNAL \ALU|carry_v[7]~6_combout\ : std_logic;
SIGNAL \S_MEM_WB|R_ALU_R|R[7]~feeder_combout\ : std_logic;
SIGNAL \Mux_2_1_WB|Y[7]~7_combout\ : std_logic;
SIGNAL \S_Registers|regs[6][7]~q\ : std_logic;
SIGNAL \S_Registers|Mux40~0_combout\ : std_logic;
SIGNAL \S_Registers|Mux40~1_combout\ : std_logic;
SIGNAL \S_Registers|Mux40~2_combout\ : std_logic;
SIGNAL \S_Registers|Mux40~3_combout\ : std_logic;
SIGNAL \S_Registers|Mux40~4_combout\ : std_logic;
SIGNAL \S_Registers|Mux42~2_combout\ : std_logic;
SIGNAL \S_Registers|Mux42~3_combout\ : std_logic;
SIGNAL \S_Registers|Mux42~0_combout\ : std_logic;
SIGNAL \S_Registers|Mux42~1_combout\ : std_logic;
SIGNAL \S_Registers|Mux42~4_combout\ : std_logic;
SIGNAL \S_Registers|Mux43~0_combout\ : std_logic;
SIGNAL \S_Registers|Mux43~1_combout\ : std_logic;
SIGNAL \S_Registers|Mux43~2_combout\ : std_logic;
SIGNAL \S_Registers|Mux43~3_combout\ : std_logic;
SIGNAL \S_Registers|Mux43~4_combout\ : std_logic;
SIGNAL \Led_2_de_4|Mux6~0_combout\ : std_logic;
SIGNAL \Led_2_de_4|Mux5~0_combout\ : std_logic;
SIGNAL \Led_2_de_4|Mux4~0_combout\ : std_logic;
SIGNAL \Led_2_de_4|Mux3~0_combout\ : std_logic;
SIGNAL \Led_2_de_4|Mux2~0_combout\ : std_logic;
SIGNAL \Led_2_de_4|Mux1~0_combout\ : std_logic;
SIGNAL \Led_2_de_4|Mux0~0_combout\ : std_logic;
SIGNAL \S_Registers|regs[0][9]~q\ : std_logic;
SIGNAL \S_ID_EX|R_RT|R[9]~feeder_combout\ : std_logic;
SIGNAL \Mux_2_1_EX_1|Y[9]~8_combout\ : std_logic;
SIGNAL \S_Registers|regs[6][9]~q\ : std_logic;
SIGNAL \S_Registers|regs[4][9]~q\ : std_logic;
SIGNAL \S_Registers|Mux6~0_combout\ : std_logic;
SIGNAL \S_Registers|regs[7][9]~q\ : std_logic;
SIGNAL \S_Registers|regs[5][9]~q\ : std_logic;
SIGNAL \S_Registers|Mux6~1_combout\ : std_logic;
SIGNAL \S_Registers|regs[2][9]~q\ : std_logic;
SIGNAL \S_Registers|regs[1][9]~q\ : std_logic;
SIGNAL \S_Registers|Mux6~2_combout\ : std_logic;
SIGNAL \S_Registers|Mux6~3_combout\ : std_logic;
SIGNAL \S_Registers|Mux6~4_combout\ : std_logic;
SIGNAL \S_Registers|regs[1][8]~q\ : std_logic;
SIGNAL \S_Registers|Mux7~2_combout\ : std_logic;
SIGNAL \S_Registers|regs[2][8]~q\ : std_logic;
SIGNAL \S_Registers|regs[3][8]~feeder_combout\ : std_logic;
SIGNAL \S_Registers|regs[3][8]~q\ : std_logic;
SIGNAL \S_Registers|Mux7~3_combout\ : std_logic;
SIGNAL \S_Registers|regs[5][8]~q\ : std_logic;
SIGNAL \S_Registers|regs[7][8]~q\ : std_logic;
SIGNAL \S_Registers|regs[6][8]~q\ : std_logic;
SIGNAL \S_Registers|regs[4][8]~q\ : std_logic;
SIGNAL \S_Registers|Mux7~0_combout\ : std_logic;
SIGNAL \S_Registers|Mux7~1_combout\ : std_logic;
SIGNAL \S_Registers|Mux7~4_combout\ : std_logic;
SIGNAL \ALU|carry_v[8]~7_combout\ : std_logic;
SIGNAL \S_EX_MEM|ALU_R_MEM_reg[8]~feeder_combout\ : std_logic;
SIGNAL \S_MEM_WB|R_ALU_R|R[8]~feeder_combout\ : std_logic;
SIGNAL \S_MEM_WB|ALU_R_WB_reg[8]~feeder_combout\ : std_logic;
SIGNAL \Mux_2_1_WB|Y[8]~8_combout\ : std_logic;
SIGNAL \S_Registers|regs[0][8]~feeder_combout\ : std_logic;
SIGNAL \S_Registers|regs[0][8]~q\ : std_logic;
SIGNAL \S_ID_EX|R_RT|R[8]~feeder_combout\ : std_logic;
SIGNAL \Mux_2_1_EX_1|Y[8]~7_combout\ : std_logic;
SIGNAL \ALU|carry_v[9]~8_combout\ : std_logic;
SIGNAL \S_EX_MEM|ALU_R_MEM_reg[9]~feeder_combout\ : std_logic;
SIGNAL \S_MEM_WB|R_ALU_R|R[9]~feeder_combout\ : std_logic;
SIGNAL \S_MEM_WB|ALU_R_WB_reg[9]~feeder_combout\ : std_logic;
SIGNAL \Mux_2_1_WB|Y[9]~9_combout\ : std_logic;
SIGNAL \S_Registers|regs[3][9]~q\ : std_logic;
SIGNAL \S_Registers|Mux38~2_combout\ : std_logic;
SIGNAL \S_Registers|Mux38~3_combout\ : std_logic;
SIGNAL \S_Registers|Mux38~0_combout\ : std_logic;
SIGNAL \S_Registers|Mux38~1_combout\ : std_logic;
SIGNAL \S_Registers|Mux38~4_combout\ : std_logic;
SIGNAL \S_ID_EX|R_RT|R[10]~feeder_combout\ : std_logic;
SIGNAL \S_ID_EX|RT_Data_EX_reg[10]~feeder_combout\ : std_logic;
SIGNAL \Mux_2_1_EX_1|Y[10]~9_combout\ : std_logic;
SIGNAL \ALU|carry_v[10]~9_combout\ : std_logic;
SIGNAL \S_Registers|regs[6][10]~q\ : std_logic;
SIGNAL \S_Registers|regs[4][10]~q\ : std_logic;
SIGNAL \S_Registers|Mux5~0_combout\ : std_logic;
SIGNAL \S_Registers|regs[7][10]~q\ : std_logic;
SIGNAL \S_Registers|regs[5][10]~q\ : std_logic;
SIGNAL \S_Registers|Mux5~1_combout\ : std_logic;
SIGNAL \S_Registers|regs[1][10]~q\ : std_logic;
SIGNAL \S_Registers|Mux5~2_combout\ : std_logic;
SIGNAL \S_Registers|regs[2][10]~q\ : std_logic;
SIGNAL \S_Registers|regs[3][10]~q\ : std_logic;
SIGNAL \S_Registers|Mux5~3_combout\ : std_logic;
SIGNAL \S_Registers|Mux5~4_combout\ : std_logic;
SIGNAL \S_EX_MEM|ALU_R_MEM_reg[10]~feeder_combout\ : std_logic;
SIGNAL \S_MEM_WB|ALU_R_WB_reg[10]~feeder_combout\ : std_logic;
SIGNAL \Mux_2_1_WB|Y[10]~10_combout\ : std_logic;
SIGNAL \S_Registers|regs[0][10]~q\ : std_logic;
SIGNAL \S_Registers|Mux37~2_combout\ : std_logic;
SIGNAL \S_Registers|Mux37~3_combout\ : std_logic;
SIGNAL \S_Registers|Mux37~0_combout\ : std_logic;
SIGNAL \S_Registers|Mux37~1_combout\ : std_logic;
SIGNAL \S_Registers|Mux37~4_combout\ : std_logic;
SIGNAL \S_Registers|regs[3][11]~q\ : std_logic;
SIGNAL \S_Registers|regs[1][11]~q\ : std_logic;
SIGNAL \S_Registers|regs[0][11]~q\ : std_logic;
SIGNAL \S_Registers|Mux4~2_combout\ : std_logic;
SIGNAL \S_Registers|Mux4~3_combout\ : std_logic;
SIGNAL \S_Registers|regs[5][11]~q\ : std_logic;
SIGNAL \S_Registers|regs[7][11]~q\ : std_logic;
SIGNAL \S_Registers|regs[4][11]~q\ : std_logic;
SIGNAL \S_Registers|regs[6][11]~q\ : std_logic;
SIGNAL \S_Registers|Mux4~0_combout\ : std_logic;
SIGNAL \S_Registers|Mux4~1_combout\ : std_logic;
SIGNAL \S_Registers|Mux4~4_combout\ : std_logic;
SIGNAL \ALU|carry_v[11]~10_combout\ : std_logic;
SIGNAL \S_ID_EX|R_RT|R[11]~feeder_combout\ : std_logic;
SIGNAL \S_ID_EX|RT_Data_EX_reg[11]~feeder_combout\ : std_logic;
SIGNAL \Mux_2_1_EX_1|Y[11]~10_combout\ : std_logic;
SIGNAL \S_EX_MEM|ALU_R_MEM_reg[11]~feeder_combout\ : std_logic;
SIGNAL \Mux_2_1_WB|Y[11]~11_combout\ : std_logic;
SIGNAL \S_Registers|regs[2][11]~q\ : std_logic;
SIGNAL \S_Registers|Mux36~2_combout\ : std_logic;
SIGNAL \S_Registers|Mux36~3_combout\ : std_logic;
SIGNAL \S_Registers|Mux36~0_combout\ : std_logic;
SIGNAL \S_Registers|Mux36~1_combout\ : std_logic;
SIGNAL \S_Registers|Mux36~4_combout\ : std_logic;
SIGNAL \S_Registers|Mux39~2_combout\ : std_logic;
SIGNAL \S_Registers|Mux39~3_combout\ : std_logic;
SIGNAL \S_Registers|Mux39~0_combout\ : std_logic;
SIGNAL \S_Registers|Mux39~1_combout\ : std_logic;
SIGNAL \S_Registers|Mux39~4_combout\ : std_logic;
SIGNAL \Led_3_de_4|Mux6~0_combout\ : std_logic;
SIGNAL \Led_3_de_4|Mux5~0_combout\ : std_logic;
SIGNAL \Led_3_de_4|Mux4~0_combout\ : std_logic;
SIGNAL \Led_3_de_4|Mux3~0_combout\ : std_logic;
SIGNAL \Led_3_de_4|Mux2~0_combout\ : std_logic;
SIGNAL \Led_3_de_4|Mux1~0_combout\ : std_logic;
SIGNAL \Led_3_de_4|Mux0~0_combout\ : std_logic;
SIGNAL \S_Registers|regs[0][15]~q\ : std_logic;
SIGNAL \S_Registers|Mux0~2_combout\ : std_logic;
SIGNAL \S_Registers|regs[2][15]~q\ : std_logic;
SIGNAL \S_Registers|regs[3][15]~q\ : std_logic;
SIGNAL \S_Registers|Mux0~3_combout\ : std_logic;
SIGNAL \S_Registers|regs[4][15]~q\ : std_logic;
SIGNAL \S_Registers|regs[6][15]~feeder_combout\ : std_logic;
SIGNAL \S_Registers|regs[6][15]~q\ : std_logic;
SIGNAL \S_Registers|Mux0~0_combout\ : std_logic;
SIGNAL \S_Registers|regs[5][15]~q\ : std_logic;
SIGNAL \S_Registers|regs[7][15]~q\ : std_logic;
SIGNAL \S_Registers|Mux0~1_combout\ : std_logic;
SIGNAL \S_Registers|Mux0~4_combout\ : std_logic;
SIGNAL \S_ID_EX|Src_A_reg[15]~feeder_combout\ : std_logic;
SIGNAL \S_Registers|regs[5][14]~q\ : std_logic;
SIGNAL \S_Registers|regs[6][14]~q\ : std_logic;
SIGNAL \S_Registers|regs[4][14]~q\ : std_logic;
SIGNAL \S_Registers|Mux1~0_combout\ : std_logic;
SIGNAL \S_Registers|regs[7][14]~q\ : std_logic;
SIGNAL \S_Registers|Mux1~1_combout\ : std_logic;
SIGNAL \S_Registers|regs[3][14]~q\ : std_logic;
SIGNAL \S_Registers|regs[2][14]~q\ : std_logic;
SIGNAL \S_Registers|regs[1][14]~q\ : std_logic;
SIGNAL \S_Registers|Mux1~2_combout\ : std_logic;
SIGNAL \S_Registers|Mux1~3_combout\ : std_logic;
SIGNAL \S_Registers|Mux1~4_combout\ : std_logic;
SIGNAL \S_Registers|regs[5][13]~q\ : std_logic;
SIGNAL \S_Registers|regs[6][13]~q\ : std_logic;
SIGNAL \S_Registers|regs[4][13]~q\ : std_logic;
SIGNAL \S_Registers|Mux2~0_combout\ : std_logic;
SIGNAL \S_Registers|regs[7][13]~q\ : std_logic;
SIGNAL \S_Registers|Mux2~1_combout\ : std_logic;
SIGNAL \S_Registers|regs[1][13]~q\ : std_logic;
SIGNAL \S_Registers|Mux2~2_combout\ : std_logic;
SIGNAL \S_Registers|regs[3][13]~q\ : std_logic;
SIGNAL \S_Registers|regs[2][13]~q\ : std_logic;
SIGNAL \S_Registers|Mux2~3_combout\ : std_logic;
SIGNAL \S_Registers|Mux2~4_combout\ : std_logic;
SIGNAL \ALU|carry_v[12]~11_combout\ : std_logic;
SIGNAL \S_Registers|regs[0][12]~q\ : std_logic;
SIGNAL \S_ID_EX|R_RT|R[12]~feeder_combout\ : std_logic;
SIGNAL \Mux_2_1_EX_1|Y[12]~11_combout\ : std_logic;
SIGNAL \S_MEM_WB|ALU_R_WB_reg[12]~feeder_combout\ : std_logic;
SIGNAL \Mux_2_1_WB|Y[12]~12_combout\ : std_logic;
SIGNAL \S_Registers|regs[3][12]~q\ : std_logic;
SIGNAL \S_Registers|regs[1][12]~q\ : std_logic;
SIGNAL \S_Registers|Mux3~2_combout\ : std_logic;
SIGNAL \S_Registers|regs[2][12]~q\ : std_logic;
SIGNAL \S_Registers|Mux3~3_combout\ : std_logic;
SIGNAL \S_Registers|regs[6][12]~q\ : std_logic;
SIGNAL \S_Registers|regs[4][12]~q\ : std_logic;
SIGNAL \S_Registers|Mux3~0_combout\ : std_logic;
SIGNAL \S_Registers|regs[7][12]~q\ : std_logic;
SIGNAL \S_Registers|regs[5][12]~q\ : std_logic;
SIGNAL \S_Registers|Mux3~1_combout\ : std_logic;
SIGNAL \S_Registers|Mux3~4_combout\ : std_logic;
SIGNAL \ALU|carry_v[13]~12_combout\ : std_logic;
SIGNAL \S_EX_MEM|ALU_R_MEM_reg[13]~feeder_combout\ : std_logic;
SIGNAL \S_MEM_WB|R_ALU_R|R[13]~feeder_combout\ : std_logic;
SIGNAL \S_MEM_WB|ALU_R_WB_reg[13]~feeder_combout\ : std_logic;
SIGNAL \Mux_2_1_WB|Y[13]~13_combout\ : std_logic;
SIGNAL \S_Registers|regs[0][13]~q\ : std_logic;
SIGNAL \S_ID_EX|R_RT|R[13]~feeder_combout\ : std_logic;
SIGNAL \Mux_2_1_EX_1|Y[13]~12_combout\ : std_logic;
SIGNAL \ALU|carry_v[14]~13_combout\ : std_logic;
SIGNAL \S_EX_MEM|ALU_R_MEM_reg[14]~feeder_combout\ : std_logic;
SIGNAL \S_MEM_WB|R_ALU_R|R[14]~feeder_combout\ : std_logic;
SIGNAL \Mux_2_1_WB|Y[14]~14_combout\ : std_logic;
SIGNAL \S_Registers|regs[0][14]~q\ : std_logic;
SIGNAL \S_ID_EX|R_RT|R[14]~feeder_combout\ : std_logic;
SIGNAL \Mux_2_1_EX_1|Y[14]~13_combout\ : std_logic;
SIGNAL \ALU|R[15]~2_combout\ : std_logic;
SIGNAL \ALU|R[15]~1_combout\ : std_logic;
SIGNAL \ALU|R[15]~3_combout\ : std_logic;
SIGNAL \S_EX_MEM|ALU_R_MEM_reg[15]~feeder_combout\ : std_logic;
SIGNAL \S_MEM_WB|R_ALU_R|R[15]~feeder_combout\ : std_logic;
SIGNAL \Mux_2_1_WB|Y[15]~15_combout\ : std_logic;
SIGNAL \S_Registers|regs[1][15]~q\ : std_logic;
SIGNAL \S_Registers|Mux32~2_combout\ : std_logic;
SIGNAL \S_Registers|Mux32~3_combout\ : std_logic;
SIGNAL \S_Registers|Mux32~0_combout\ : std_logic;
SIGNAL \S_Registers|Mux32~1_combout\ : std_logic;
SIGNAL \S_Registers|Mux32~4_combout\ : std_logic;
SIGNAL \S_Registers|Mux33~0_combout\ : std_logic;
SIGNAL \S_Registers|Mux33~1_combout\ : std_logic;
SIGNAL \S_Registers|Mux33~2_combout\ : std_logic;
SIGNAL \S_Registers|Mux33~3_combout\ : std_logic;
SIGNAL \S_Registers|Mux33~4_combout\ : std_logic;
SIGNAL \S_Registers|Mux35~2_combout\ : std_logic;
SIGNAL \S_Registers|Mux35~3_combout\ : std_logic;
SIGNAL \S_Registers|Mux35~0_combout\ : std_logic;
SIGNAL \S_Registers|Mux35~1_combout\ : std_logic;
SIGNAL \S_Registers|Mux35~4_combout\ : std_logic;
SIGNAL \S_Registers|Mux34~0_combout\ : std_logic;
SIGNAL \S_Registers|Mux34~1_combout\ : std_logic;
SIGNAL \S_Registers|Mux34~2_combout\ : std_logic;
SIGNAL \S_Registers|Mux34~3_combout\ : std_logic;
SIGNAL \S_Registers|Mux34~4_combout\ : std_logic;
SIGNAL \Led_4_de_4|Mux6~0_combout\ : std_logic;
SIGNAL \Led_4_de_4|Mux5~0_combout\ : std_logic;
SIGNAL \Led_4_de_4|Mux4~0_combout\ : std_logic;
SIGNAL \Led_4_de_4|Mux3~0_combout\ : std_logic;
SIGNAL \Led_4_de_4|Mux2~0_combout\ : std_logic;
SIGNAL \Led_4_de_4|Mux1~0_combout\ : std_logic;
SIGNAL \Led_4_de_4|Mux0~0_combout\ : std_logic;
SIGNAL \PC_IF|R_PC_in|R\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \S_MEM_WB|R_WB_in|R\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \S_MEM_WB|ALU_R_WB_reg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL clockticks : std_logic_vector(12 DOWNTO 0);
SIGNAL \S_MEM_WB|R_ReadData|R\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \S_MEM_WB|Read_Data_WB_reg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \S_ID_EX|R_RD_ID|R\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \S_ID_EX|R_WB_in|R\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \S_MEM_WB|WB_out_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \S_MEM_WB|R_ALU_R|R\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \S_ID_EX|R_RS|R\ : std_logic_vector(15 DOWNTO 0);
SIGNAL phase_cnt : std_logic_vector(3 DOWNTO 0);
SIGNAL \S_MEM_WB|RW_WB_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \S_MEM_WB|R_RW|R\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Data_Mem|read_reg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \S_EX_MEM|ALU_R_MEM_reg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PC_mais_2|R\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \S_EX_MEM|WB_out_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \S_EX_MEM|RW_MEM_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \S_EX_MEM|M_out_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \S_EX_MEM|R_ALU_R|R\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \S_EX_MEM|R_WB_in|R\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \S_EX_MEM|R_RW|R\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \S_EX_MEM|R_M_in|R\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \S_ID_EX|EX_out_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \S_ID_EX|RT_Data_EX_reg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PC_IF|PC_out_reg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \S_ID_EX|R_RT|R\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \S_ID_EX|RT_EX_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \S_ID_EX|Src_A_reg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \S_ID_EX|WB_out_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \S_ID_EX|R_RT_ID|R\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \S_ID_EX|RD_EX_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALU|R\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \S_ID_EX|R_EX_in|R\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \S_IF_ID|Inst_ID_reg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \S_IF_ID|R_Inst_IF|R\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Led_4_de_4|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \Led_3_de_4|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \Led_2_de_4|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \Led_1_de_4|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \Led_Reg_n|ALT_INV_Mux6~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_sw <= sw;
hex0 <= ww_hex0;
hex2 <= ww_hex2;
hex3 <= ww_hex3;
hex4 <= ww_hex4;
hex5 <= ww_hex5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\clock~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~q\);
\Led_4_de_4|ALT_INV_Mux6~0_combout\ <= NOT \Led_4_de_4|Mux6~0_combout\;
\Led_3_de_4|ALT_INV_Mux6~0_combout\ <= NOT \Led_3_de_4|Mux6~0_combout\;
\Led_2_de_4|ALT_INV_Mux6~0_combout\ <= NOT \Led_2_de_4|Mux6~0_combout\;
\Led_1_de_4|ALT_INV_Mux6~0_combout\ <= NOT \Led_1_de_4|Mux6~0_combout\;
\Led_Reg_n|ALT_INV_Mux6~0_combout\ <= NOT \Led_Reg_n|Mux6~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y69_N2
\hex0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Led_Reg_n|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \hex0[6]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\hex0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Led_Reg_n|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \hex0[5]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\hex0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Led_Reg_n|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \hex0[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\hex0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Led_Reg_n|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \hex0[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\hex0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Led_Reg_n|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \hex0[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\hex0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Led_Reg_n|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \hex0[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\hex0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Led_Reg_n|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \hex0[0]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\hex2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Led_1_de_4|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \hex2[6]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\hex2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Led_1_de_4|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \hex2[5]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\hex2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Led_1_de_4|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \hex2[4]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\hex2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Led_1_de_4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \hex2[3]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\hex2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Led_1_de_4|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \hex2[2]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\hex2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Led_1_de_4|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \hex2[1]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\hex2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Led_1_de_4|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \hex2[0]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\hex3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Led_2_de_4|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \hex3[6]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\hex3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Led_2_de_4|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \hex3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\hex3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Led_2_de_4|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \hex3[4]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\hex3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Led_2_de_4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \hex3[3]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\hex3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Led_2_de_4|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \hex3[2]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\hex3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Led_2_de_4|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \hex3[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\hex3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Led_2_de_4|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \hex3[0]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\hex4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Led_3_de_4|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \hex4[6]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\hex4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Led_3_de_4|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \hex4[5]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\hex4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Led_3_de_4|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \hex4[4]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\hex4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Led_3_de_4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \hex4[3]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\hex4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Led_3_de_4|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \hex4[2]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\hex4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Led_3_de_4|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \hex4[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\hex4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Led_3_de_4|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \hex4[0]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\hex5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Led_4_de_4|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \hex5[6]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\hex5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Led_4_de_4|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \hex5[5]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\hex5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Led_4_de_4|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \hex5[4]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\hex5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Led_4_de_4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \hex5[3]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\hex5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Led_4_de_4|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \hex5[2]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\hex5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Led_4_de_4|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \hex5[1]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\hex5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Led_4_de_4|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \hex5[0]~output_o\);

-- Location: IOIBUF_X115_Y14_N1
\sw[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\sw[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\sw[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\sw[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: LCCOMB_X107_Y11_N0
\Led_Reg_n|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Led_Reg_n|Mux6~0_combout\ = (\sw[0]~input_o\ & ((\sw[3]~input_o\) # (\sw[1]~input_o\ $ (\sw[2]~input_o\)))) # (!\sw[0]~input_o\ & ((\sw[1]~input_o\) # (\sw[2]~input_o\ $ (\sw[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[2]~input_o\,
	datac => \sw[3]~input_o\,
	datad => \sw[0]~input_o\,
	combout => \Led_Reg_n|Mux6~0_combout\);

-- Location: LCCOMB_X111_Y12_N24
\Led_Reg_n|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Led_Reg_n|Mux5~0_combout\ = (\sw[1]~input_o\ & (!\sw[3]~input_o\ & ((\sw[0]~input_o\) # (!\sw[2]~input_o\)))) # (!\sw[1]~input_o\ & (\sw[0]~input_o\ & (\sw[2]~input_o\ $ (!\sw[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[2]~input_o\,
	datac => \sw[3]~input_o\,
	datad => \sw[0]~input_o\,
	combout => \Led_Reg_n|Mux5~0_combout\);

-- Location: LCCOMB_X111_Y12_N6
\Led_Reg_n|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Led_Reg_n|Mux4~0_combout\ = (\sw[1]~input_o\ & (((!\sw[3]~input_o\ & \sw[0]~input_o\)))) # (!\sw[1]~input_o\ & ((\sw[2]~input_o\ & (!\sw[3]~input_o\)) # (!\sw[2]~input_o\ & ((\sw[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[2]~input_o\,
	datac => \sw[3]~input_o\,
	datad => \sw[0]~input_o\,
	combout => \Led_Reg_n|Mux4~0_combout\);

-- Location: LCCOMB_X107_Y11_N26
\Led_Reg_n|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Led_Reg_n|Mux3~0_combout\ = (\sw[0]~input_o\ & (\sw[1]~input_o\ $ ((!\sw[2]~input_o\)))) # (!\sw[0]~input_o\ & ((\sw[1]~input_o\ & (!\sw[2]~input_o\ & \sw[3]~input_o\)) # (!\sw[1]~input_o\ & (\sw[2]~input_o\ & !\sw[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[2]~input_o\,
	datac => \sw[3]~input_o\,
	datad => \sw[0]~input_o\,
	combout => \Led_Reg_n|Mux3~0_combout\);

-- Location: LCCOMB_X107_Y11_N8
\Led_Reg_n|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Led_Reg_n|Mux2~0_combout\ = (\sw[2]~input_o\ & (\sw[3]~input_o\ & ((\sw[1]~input_o\) # (!\sw[0]~input_o\)))) # (!\sw[2]~input_o\ & (\sw[1]~input_o\ & (!\sw[3]~input_o\ & !\sw[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[2]~input_o\,
	datac => \sw[3]~input_o\,
	datad => \sw[0]~input_o\,
	combout => \Led_Reg_n|Mux2~0_combout\);

-- Location: LCCOMB_X107_Y11_N14
\Led_Reg_n|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Led_Reg_n|Mux1~0_combout\ = (\sw[1]~input_o\ & ((\sw[0]~input_o\ & ((\sw[3]~input_o\))) # (!\sw[0]~input_o\ & (\sw[2]~input_o\)))) # (!\sw[1]~input_o\ & (\sw[2]~input_o\ & (\sw[3]~input_o\ $ (\sw[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[2]~input_o\,
	datac => \sw[3]~input_o\,
	datad => \sw[0]~input_o\,
	combout => \Led_Reg_n|Mux1~0_combout\);

-- Location: LCCOMB_X107_Y11_N12
\Led_Reg_n|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Led_Reg_n|Mux0~0_combout\ = (\sw[2]~input_o\ & (!\sw[1]~input_o\ & (\sw[3]~input_o\ $ (!\sw[0]~input_o\)))) # (!\sw[2]~input_o\ & (\sw[0]~input_o\ & (\sw[1]~input_o\ $ (!\sw[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[2]~input_o\,
	datac => \sw[3]~input_o\,
	datad => \sw[0]~input_o\,
	combout => \Led_Reg_n|Mux0~0_combout\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X60_Y1_N4
\clockticks[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockticks[0]~13_combout\ = clockticks(0) $ (VCC)
-- \clockticks[0]~14\ = CARRY(clockticks(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clockticks(0),
	datad => VCC,
	combout => \clockticks[0]~13_combout\,
	cout => \clockticks[0]~14\);

-- Location: LCCOMB_X60_Y1_N26
\clockticks[11]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockticks[11]~35_combout\ = (clockticks(11) & (!\clockticks[10]~34\)) # (!clockticks(11) & ((\clockticks[10]~34\) # (GND)))
-- \clockticks[11]~36\ = CARRY((!\clockticks[10]~34\) # (!clockticks(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clockticks(11),
	datad => VCC,
	cin => \clockticks[10]~34\,
	combout => \clockticks[11]~35_combout\,
	cout => \clockticks[11]~36\);

-- Location: LCCOMB_X60_Y1_N28
\clockticks[12]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockticks[12]~37_combout\ = \clockticks[11]~36\ $ (!clockticks(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => clockticks(12),
	cin => \clockticks[11]~36\,
	combout => \clockticks[12]~37_combout\);

-- Location: FF_X60_Y1_N29
\clockticks[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockticks[12]~37_combout\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockticks(12));

-- Location: LCCOMB_X60_Y1_N0
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!clockticks(4) & (!clockticks(6) & (!clockticks(5) & !clockticks(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clockticks(4),
	datab => clockticks(6),
	datac => clockticks(5),
	datad => clockticks(3),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X60_Y1_N2
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (((\LessThan0~0_combout\) # (!clockticks(8))) # (!clockticks(7))) # (!clockticks(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clockticks(9),
	datab => clockticks(7),
	datac => clockticks(8),
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X60_Y1_N30
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (clockticks(12) & ((clockticks(10)) # ((clockticks(11)) # (!\LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clockticks(12),
	datab => clockticks(10),
	datac => clockticks(11),
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~2_combout\);

-- Location: FF_X60_Y1_N5
\clockticks[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockticks[0]~13_combout\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockticks(0));

-- Location: LCCOMB_X60_Y1_N6
\clockticks[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockticks[1]~15_combout\ = (clockticks(1) & (!\clockticks[0]~14\)) # (!clockticks(1) & ((\clockticks[0]~14\) # (GND)))
-- \clockticks[1]~16\ = CARRY((!\clockticks[0]~14\) # (!clockticks(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clockticks(1),
	datad => VCC,
	cin => \clockticks[0]~14\,
	combout => \clockticks[1]~15_combout\,
	cout => \clockticks[1]~16\);

-- Location: FF_X60_Y1_N7
\clockticks[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockticks[1]~15_combout\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockticks(1));

-- Location: LCCOMB_X60_Y1_N8
\clockticks[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockticks[2]~17_combout\ = (clockticks(2) & (\clockticks[1]~16\ $ (GND))) # (!clockticks(2) & (!\clockticks[1]~16\ & VCC))
-- \clockticks[2]~18\ = CARRY((clockticks(2) & !\clockticks[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clockticks(2),
	datad => VCC,
	cin => \clockticks[1]~16\,
	combout => \clockticks[2]~17_combout\,
	cout => \clockticks[2]~18\);

-- Location: FF_X60_Y1_N9
\clockticks[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockticks[2]~17_combout\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockticks(2));

-- Location: LCCOMB_X60_Y1_N10
\clockticks[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockticks[3]~19_combout\ = (clockticks(3) & (!\clockticks[2]~18\)) # (!clockticks(3) & ((\clockticks[2]~18\) # (GND)))
-- \clockticks[3]~20\ = CARRY((!\clockticks[2]~18\) # (!clockticks(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clockticks(3),
	datad => VCC,
	cin => \clockticks[2]~18\,
	combout => \clockticks[3]~19_combout\,
	cout => \clockticks[3]~20\);

-- Location: FF_X60_Y1_N11
\clockticks[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockticks[3]~19_combout\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockticks(3));

-- Location: LCCOMB_X60_Y1_N12
\clockticks[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockticks[4]~21_combout\ = (clockticks(4) & (\clockticks[3]~20\ $ (GND))) # (!clockticks(4) & (!\clockticks[3]~20\ & VCC))
-- \clockticks[4]~22\ = CARRY((clockticks(4) & !\clockticks[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clockticks(4),
	datad => VCC,
	cin => \clockticks[3]~20\,
	combout => \clockticks[4]~21_combout\,
	cout => \clockticks[4]~22\);

-- Location: FF_X60_Y1_N13
\clockticks[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockticks[4]~21_combout\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockticks(4));

-- Location: LCCOMB_X60_Y1_N14
\clockticks[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockticks[5]~23_combout\ = (clockticks(5) & (!\clockticks[4]~22\)) # (!clockticks(5) & ((\clockticks[4]~22\) # (GND)))
-- \clockticks[5]~24\ = CARRY((!\clockticks[4]~22\) # (!clockticks(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clockticks(5),
	datad => VCC,
	cin => \clockticks[4]~22\,
	combout => \clockticks[5]~23_combout\,
	cout => \clockticks[5]~24\);

-- Location: FF_X60_Y1_N15
\clockticks[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockticks[5]~23_combout\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockticks(5));

-- Location: LCCOMB_X60_Y1_N16
\clockticks[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockticks[6]~25_combout\ = (clockticks(6) & (\clockticks[5]~24\ $ (GND))) # (!clockticks(6) & (!\clockticks[5]~24\ & VCC))
-- \clockticks[6]~26\ = CARRY((clockticks(6) & !\clockticks[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clockticks(6),
	datad => VCC,
	cin => \clockticks[5]~24\,
	combout => \clockticks[6]~25_combout\,
	cout => \clockticks[6]~26\);

-- Location: FF_X60_Y1_N17
\clockticks[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockticks[6]~25_combout\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockticks(6));

-- Location: LCCOMB_X60_Y1_N18
\clockticks[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockticks[7]~27_combout\ = (clockticks(7) & (!\clockticks[6]~26\)) # (!clockticks(7) & ((\clockticks[6]~26\) # (GND)))
-- \clockticks[7]~28\ = CARRY((!\clockticks[6]~26\) # (!clockticks(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clockticks(7),
	datad => VCC,
	cin => \clockticks[6]~26\,
	combout => \clockticks[7]~27_combout\,
	cout => \clockticks[7]~28\);

-- Location: FF_X60_Y1_N19
\clockticks[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockticks[7]~27_combout\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockticks(7));

-- Location: LCCOMB_X60_Y1_N20
\clockticks[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockticks[8]~29_combout\ = (clockticks(8) & (\clockticks[7]~28\ $ (GND))) # (!clockticks(8) & (!\clockticks[7]~28\ & VCC))
-- \clockticks[8]~30\ = CARRY((clockticks(8) & !\clockticks[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clockticks(8),
	datad => VCC,
	cin => \clockticks[7]~28\,
	combout => \clockticks[8]~29_combout\,
	cout => \clockticks[8]~30\);

-- Location: FF_X60_Y1_N21
\clockticks[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockticks[8]~29_combout\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockticks(8));

-- Location: LCCOMB_X60_Y1_N22
\clockticks[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockticks[9]~31_combout\ = (clockticks(9) & (!\clockticks[8]~30\)) # (!clockticks(9) & ((\clockticks[8]~30\) # (GND)))
-- \clockticks[9]~32\ = CARRY((!\clockticks[8]~30\) # (!clockticks(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clockticks(9),
	datad => VCC,
	cin => \clockticks[8]~30\,
	combout => \clockticks[9]~31_combout\,
	cout => \clockticks[9]~32\);

-- Location: FF_X60_Y1_N23
\clockticks[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockticks[9]~31_combout\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockticks(9));

-- Location: LCCOMB_X60_Y1_N24
\clockticks[10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockticks[10]~33_combout\ = (clockticks(10) & (\clockticks[9]~32\ $ (GND))) # (!clockticks(10) & (!\clockticks[9]~32\ & VCC))
-- \clockticks[10]~34\ = CARRY((clockticks(10) & !\clockticks[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clockticks(10),
	datad => VCC,
	cin => \clockticks[9]~32\,
	combout => \clockticks[10]~33_combout\,
	cout => \clockticks[10]~34\);

-- Location: FF_X60_Y1_N25
\clockticks[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockticks[10]~33_combout\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockticks(10));

-- Location: FF_X60_Y1_N27
\clockticks[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockticks[11]~35_combout\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockticks(11));

-- Location: LCCOMB_X59_Y1_N4
\LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (!clockticks(10) & !clockticks(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => clockticks(10),
	datad => clockticks(9),
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X59_Y1_N18
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!clockticks(4) & (!clockticks(2) & (!clockticks(3) & !clockticks(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clockticks(4),
	datab => clockticks(2),
	datac => clockticks(3),
	datad => clockticks(5),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X59_Y1_N10
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (((\LessThan1~0_combout\) # (!clockticks(8))) # (!clockticks(7))) # (!clockticks(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clockticks(6),
	datab => clockticks(7),
	datac => clockticks(8),
	datad => \LessThan1~0_combout\,
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X59_Y1_N24
\LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (clockticks(12)) # ((clockticks(11) & ((!\LessThan1~1_combout\) # (!\LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clockticks(11),
	datab => clockticks(12),
	datac => \LessThan1~2_combout\,
	datad => \LessThan1~1_combout\,
	combout => \LessThan1~3_combout\);

-- Location: FF_X59_Y1_N25
clock : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock~q\);

-- Location: CLKCTRL_G19
\clock~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~clkctrl_outclk\);

-- Location: LCCOMB_X103_Y15_N12
\S_ID_EX|R_WB_in|R[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_ID_EX|R_WB_in|R[1]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \S_ID_EX|R_WB_in|R[1]~feeder_combout\);

-- Location: LCCOMB_X103_Y12_N12
\phase_cnt[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \phase_cnt[0]~3_combout\ = !phase_cnt(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => phase_cnt(0),
	combout => \phase_cnt[0]~3_combout\);

-- Location: FF_X103_Y12_N13
\phase_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \phase_cnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => phase_cnt(0));

-- Location: LCCOMB_X103_Y12_N10
\phase_cnt[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \phase_cnt[1]~2_combout\ = phase_cnt(1) $ (phase_cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => phase_cnt(1),
	datad => phase_cnt(0),
	combout => \phase_cnt[1]~2_combout\);

-- Location: FF_X103_Y12_N11
\phase_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \phase_cnt[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => phase_cnt(1));

-- Location: LCCOMB_X103_Y12_N8
\phase_cnt[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \phase_cnt[2]~1_combout\ = phase_cnt(2) $ (((phase_cnt(1) & phase_cnt(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_cnt(1),
	datac => phase_cnt(2),
	datad => phase_cnt(0),
	combout => \phase_cnt[2]~1_combout\);

-- Location: FF_X103_Y12_N9
\phase_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \phase_cnt[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => phase_cnt(2));

-- Location: LCCOMB_X103_Y12_N18
\phase_cnt[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \phase_cnt[3]~0_combout\ = phase_cnt(3) $ (((phase_cnt(1) & (phase_cnt(2) & phase_cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_cnt(1),
	datab => phase_cnt(2),
	datac => phase_cnt(3),
	datad => phase_cnt(0),
	combout => \phase_cnt[3]~0_combout\);

-- Location: FF_X103_Y12_N19
\phase_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \phase_cnt[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => phase_cnt(3));

-- Location: LCCOMB_X103_Y12_N0
Global_In : cycloneive_lcell_comb
-- Equation(s):
-- \Global_In~combout\ = (phase_cnt(2) & !phase_cnt(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => phase_cnt(2),
	datad => phase_cnt(3),
	combout => \Global_In~combout\);

-- Location: FF_X103_Y15_N13
\S_ID_EX|R_WB_in|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_ID_EX|R_WB_in|R[1]~feeder_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|R_WB_in|R\(1));

-- Location: LCCOMB_X103_Y15_N18
\S_ID_EX|WB_out_reg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_ID_EX|WB_out_reg[1]~feeder_combout\ = \S_ID_EX|R_WB_in|R\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_ID_EX|R_WB_in|R\(1),
	combout => \S_ID_EX|WB_out_reg[1]~feeder_combout\);

-- Location: LCCOMB_X103_Y12_N26
\LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = (phase_cnt(2) & phase_cnt(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => phase_cnt(2),
	datad => phase_cnt(3),
	combout => \LessThan4~0_combout\);

-- Location: FF_X103_Y15_N19
\S_ID_EX|WB_out_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_ID_EX|WB_out_reg[1]~feeder_combout\,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|WB_out_reg\(1));

-- Location: LCCOMB_X103_Y15_N28
\S_EX_MEM|R_WB_in|R[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_EX_MEM|R_WB_in|R[1]~feeder_combout\ = \S_ID_EX|WB_out_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_ID_EX|WB_out_reg\(1),
	combout => \S_EX_MEM|R_WB_in|R[1]~feeder_combout\);

-- Location: FF_X103_Y15_N29
\S_EX_MEM|R_WB_in|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_EX_MEM|R_WB_in|R[1]~feeder_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_EX_MEM|R_WB_in|R\(1));

-- Location: LCCOMB_X103_Y15_N10
\S_EX_MEM|WB_out_reg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_EX_MEM|WB_out_reg[1]~feeder_combout\ = \S_EX_MEM|R_WB_in|R\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_EX_MEM|R_WB_in|R\(1),
	combout => \S_EX_MEM|WB_out_reg[1]~feeder_combout\);

-- Location: FF_X103_Y15_N11
\S_EX_MEM|WB_out_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_EX_MEM|WB_out_reg[1]~feeder_combout\,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_EX_MEM|WB_out_reg\(1));

-- Location: LCCOMB_X103_Y15_N20
\S_MEM_WB|R_WB_in|R[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_MEM_WB|R_WB_in|R[1]~feeder_combout\ = \S_EX_MEM|WB_out_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_EX_MEM|WB_out_reg\(1),
	combout => \S_MEM_WB|R_WB_in|R[1]~feeder_combout\);

-- Location: FF_X103_Y15_N21
\S_MEM_WB|R_WB_in|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_MEM_WB|R_WB_in|R[1]~feeder_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_MEM_WB|R_WB_in|R\(1));

-- Location: LCCOMB_X103_Y12_N24
\S_MEM_WB|WB_out_reg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_MEM_WB|WB_out_reg[1]~feeder_combout\ = \S_MEM_WB|R_WB_in|R\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_MEM_WB|R_WB_in|R\(1),
	combout => \S_MEM_WB|WB_out_reg[1]~feeder_combout\);

-- Location: FF_X103_Y12_N25
\S_MEM_WB|WB_out_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_MEM_WB|WB_out_reg[1]~feeder_combout\,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_MEM_WB|WB_out_reg\(1));

-- Location: LCCOMB_X107_Y13_N26
\PC_IF|R_PC_in|R[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_IF|R_PC_in|R[1]~0_combout\ = !\PC_IF|PC_out_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC_IF|PC_out_reg\(1),
	combout => \PC_IF|R_PC_in|R[1]~0_combout\);

-- Location: FF_X107_Y13_N27
\PC_IF|R_PC_in|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \PC_IF|R_PC_in|R[1]~0_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_IF|R_PC_in|R\(1));

-- Location: LCCOMB_X107_Y13_N4
\PC_IF|PC_out_reg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_IF|PC_out_reg[1]~feeder_combout\ = \PC_IF|R_PC_in|R\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC_IF|R_PC_in|R\(1),
	combout => \PC_IF|PC_out_reg[1]~feeder_combout\);

-- Location: FF_X107_Y13_N5
\PC_IF|PC_out_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \PC_IF|PC_out_reg[1]~feeder_combout\,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_IF|PC_out_reg\(1));

-- Location: LCCOMB_X107_Y13_N6
\PC_mais_2|R[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_mais_2|R\(2) = \PC_IF|PC_out_reg\(2) $ (\PC_IF|PC_out_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_IF|PC_out_reg\(2),
	datac => \PC_IF|PC_out_reg\(1),
	combout => \PC_mais_2|R\(2));

-- Location: FF_X107_Y13_N7
\PC_IF|R_PC_in|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \PC_mais_2|R\(2),
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_IF|R_PC_in|R\(2));

-- Location: LCCOMB_X107_Y13_N22
\PC_IF|PC_out_reg[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_IF|PC_out_reg[2]~feeder_combout\ = \PC_IF|R_PC_in|R\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC_IF|R_PC_in|R\(2),
	combout => \PC_IF|PC_out_reg[2]~feeder_combout\);

-- Location: FF_X107_Y13_N23
\PC_IF|PC_out_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \PC_IF|PC_out_reg[2]~feeder_combout\,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_IF|PC_out_reg\(2));

-- Location: LCCOMB_X107_Y13_N12
\PC_mais_2|R[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_mais_2|R\(3) = \PC_IF|PC_out_reg\(3) $ (((\PC_IF|PC_out_reg\(2) & \PC_IF|PC_out_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_IF|PC_out_reg\(2),
	datab => \PC_IF|PC_out_reg\(1),
	datac => \PC_IF|PC_out_reg\(3),
	combout => \PC_mais_2|R\(3));

-- Location: FF_X107_Y13_N13
\PC_IF|R_PC_in|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \PC_mais_2|R\(3),
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_IF|R_PC_in|R\(3));

-- Location: LCCOMB_X107_Y13_N8
\PC_IF|PC_out_reg[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_IF|PC_out_reg[3]~feeder_combout\ = \PC_IF|R_PC_in|R\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC_IF|R_PC_in|R\(3),
	combout => \PC_IF|PC_out_reg[3]~feeder_combout\);

-- Location: FF_X107_Y13_N9
\PC_IF|PC_out_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \PC_IF|PC_out_reg[3]~feeder_combout\,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_IF|PC_out_reg\(3));

-- Location: LCCOMB_X107_Y13_N18
\PC_mais_2|R[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_mais_2|R\(4) = \PC_IF|PC_out_reg\(4) $ (((\PC_IF|PC_out_reg\(2) & (\PC_IF|PC_out_reg\(1) & \PC_IF|PC_out_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_IF|PC_out_reg\(2),
	datab => \PC_IF|PC_out_reg\(1),
	datac => \PC_IF|PC_out_reg\(3),
	datad => \PC_IF|PC_out_reg\(4),
	combout => \PC_mais_2|R\(4));

-- Location: FF_X107_Y13_N19
\PC_IF|R_PC_in|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \PC_mais_2|R\(4),
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_IF|R_PC_in|R\(4));

-- Location: FF_X107_Y13_N21
\PC_IF|PC_out_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \PC_IF|R_PC_in|R\(4),
	sload => VCC,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_IF|PC_out_reg\(4));

-- Location: LCCOMB_X107_Y13_N14
\PC_mais_2|carry_v~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_mais_2|carry_v~0_combout\ = (\PC_IF|PC_out_reg\(2) & (\PC_IF|PC_out_reg\(1) & (\PC_IF|PC_out_reg\(3) & \PC_IF|PC_out_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_IF|PC_out_reg\(2),
	datab => \PC_IF|PC_out_reg\(1),
	datac => \PC_IF|PC_out_reg\(3),
	datad => \PC_IF|PC_out_reg\(4),
	combout => \PC_mais_2|carry_v~0_combout\);

-- Location: LCCOMB_X105_Y13_N6
\PC_mais_2|R[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_mais_2|R\(5) = \PC_IF|PC_out_reg\(5) $ (\PC_mais_2|carry_v~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC_IF|PC_out_reg\(5),
	datad => \PC_mais_2|carry_v~0_combout\,
	combout => \PC_mais_2|R\(5));

-- Location: FF_X105_Y13_N7
\PC_IF|R_PC_in|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \PC_mais_2|R\(5),
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_IF|R_PC_in|R\(5));

-- Location: LCCOMB_X105_Y13_N4
\PC_IF|PC_out_reg[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_IF|PC_out_reg[5]~feeder_combout\ = \PC_IF|R_PC_in|R\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC_IF|R_PC_in|R\(5),
	combout => \PC_IF|PC_out_reg[5]~feeder_combout\);

-- Location: FF_X105_Y13_N5
\PC_IF|PC_out_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \PC_IF|PC_out_reg[5]~feeder_combout\,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_IF|PC_out_reg\(5));

-- Location: LCCOMB_X105_Y13_N16
\PC_mais_2|R[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_mais_2|R\(6) = \PC_IF|PC_out_reg\(6) $ (((\PC_IF|PC_out_reg\(5) & \PC_mais_2|carry_v~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_IF|PC_out_reg\(6),
	datac => \PC_IF|PC_out_reg\(5),
	datad => \PC_mais_2|carry_v~0_combout\,
	combout => \PC_mais_2|R\(6));

-- Location: FF_X105_Y13_N17
\PC_IF|R_PC_in|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \PC_mais_2|R\(6),
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_IF|R_PC_in|R\(6));

-- Location: FF_X106_Y13_N29
\PC_IF|PC_out_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \PC_IF|R_PC_in|R\(6),
	sload => VCC,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_IF|PC_out_reg\(6));

-- Location: LCCOMB_X105_Y13_N26
\PC_mais_2|R[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_mais_2|R\(7) = \PC_IF|PC_out_reg\(7) $ (((\PC_IF|PC_out_reg\(6) & (\PC_IF|PC_out_reg\(5) & \PC_mais_2|carry_v~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_IF|PC_out_reg\(7),
	datab => \PC_IF|PC_out_reg\(6),
	datac => \PC_IF|PC_out_reg\(5),
	datad => \PC_mais_2|carry_v~0_combout\,
	combout => \PC_mais_2|R\(7));

-- Location: FF_X105_Y13_N27
\PC_IF|R_PC_in|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \PC_mais_2|R\(7),
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_IF|R_PC_in|R\(7));

-- Location: FF_X106_Y13_N7
\PC_IF|PC_out_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \PC_IF|R_PC_in|R\(7),
	sload => VCC,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_IF|PC_out_reg\(7));

-- Location: LCCOMB_X105_Y13_N24
\PC_mais_2|carry_v~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_mais_2|carry_v~1_combout\ = (\PC_IF|PC_out_reg\(7) & (\PC_IF|PC_out_reg\(6) & (\PC_IF|PC_out_reg\(5) & \PC_mais_2|carry_v~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_IF|PC_out_reg\(7),
	datab => \PC_IF|PC_out_reg\(6),
	datac => \PC_IF|PC_out_reg\(5),
	datad => \PC_mais_2|carry_v~0_combout\,
	combout => \PC_mais_2|carry_v~1_combout\);

-- Location: LCCOMB_X105_Y13_N28
\PC_mais_2|R[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_mais_2|R\(8) = \PC_IF|PC_out_reg\(8) $ (\PC_mais_2|carry_v~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC_IF|PC_out_reg\(8),
	datad => \PC_mais_2|carry_v~1_combout\,
	combout => \PC_mais_2|R\(8));

-- Location: FF_X105_Y13_N29
\PC_IF|R_PC_in|R[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \PC_mais_2|R\(8),
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_IF|R_PC_in|R\(8));

-- Location: FF_X106_Y13_N9
\PC_IF|PC_out_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \PC_IF|R_PC_in|R\(8),
	sload => VCC,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_IF|PC_out_reg\(8));

-- Location: LCCOMB_X105_Y13_N22
\PC_mais_2|R[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_mais_2|R\(9) = \PC_IF|PC_out_reg\(9) $ (((\PC_mais_2|carry_v~1_combout\ & \PC_IF|PC_out_reg\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_IF|PC_out_reg\(9),
	datab => \PC_mais_2|carry_v~1_combout\,
	datac => \PC_IF|PC_out_reg\(8),
	combout => \PC_mais_2|R\(9));

-- Location: FF_X105_Y13_N23
\PC_IF|R_PC_in|R[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \PC_mais_2|R\(9),
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_IF|R_PC_in|R\(9));

-- Location: FF_X105_Y13_N19
\PC_IF|PC_out_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \PC_IF|R_PC_in|R\(9),
	sload => VCC,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_IF|PC_out_reg\(9));

-- Location: LCCOMB_X105_Y13_N0
\PC_mais_2|R[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_mais_2|R\(10) = \PC_IF|PC_out_reg\(10) $ (((\PC_IF|PC_out_reg\(8) & (\PC_IF|PC_out_reg\(9) & \PC_mais_2|carry_v~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_IF|PC_out_reg\(10),
	datab => \PC_IF|PC_out_reg\(8),
	datac => \PC_IF|PC_out_reg\(9),
	datad => \PC_mais_2|carry_v~1_combout\,
	combout => \PC_mais_2|R\(10));

-- Location: FF_X105_Y13_N1
\PC_IF|R_PC_in|R[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \PC_mais_2|R\(10),
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_IF|R_PC_in|R\(10));

-- Location: LCCOMB_X105_Y13_N10
\PC_IF|PC_out_reg[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_IF|PC_out_reg[10]~feeder_combout\ = \PC_IF|R_PC_in|R\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC_IF|R_PC_in|R\(10),
	combout => \PC_IF|PC_out_reg[10]~feeder_combout\);

-- Location: FF_X105_Y13_N11
\PC_IF|PC_out_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \PC_IF|PC_out_reg[10]~feeder_combout\,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_IF|PC_out_reg\(10));

-- Location: LCCOMB_X106_Y13_N4
\Instruc_M|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Instruc_M|Add0~1_cout\ = CARRY(!\PC_IF|PC_out_reg\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_IF|PC_out_reg\(6),
	datad => VCC,
	cout => \Instruc_M|Add0~1_cout\);

-- Location: LCCOMB_X106_Y13_N6
\Instruc_M|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Instruc_M|Add0~2_combout\ = (\PC_IF|PC_out_reg\(7) & ((\Instruc_M|Add0~1_cout\) # (GND))) # (!\PC_IF|PC_out_reg\(7) & (!\Instruc_M|Add0~1_cout\))
-- \Instruc_M|Add0~3\ = CARRY((\PC_IF|PC_out_reg\(7)) # (!\Instruc_M|Add0~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC_IF|PC_out_reg\(7),
	datad => VCC,
	cin => \Instruc_M|Add0~1_cout\,
	combout => \Instruc_M|Add0~2_combout\,
	cout => \Instruc_M|Add0~3\);

-- Location: LCCOMB_X106_Y13_N8
\Instruc_M|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Instruc_M|Add0~4_combout\ = (\PC_IF|PC_out_reg\(8) & (!\Instruc_M|Add0~3\ & VCC)) # (!\PC_IF|PC_out_reg\(8) & (\Instruc_M|Add0~3\ $ (GND)))
-- \Instruc_M|Add0~5\ = CARRY((!\PC_IF|PC_out_reg\(8) & !\Instruc_M|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC_IF|PC_out_reg\(8),
	datad => VCC,
	cin => \Instruc_M|Add0~3\,
	combout => \Instruc_M|Add0~4_combout\,
	cout => \Instruc_M|Add0~5\);

-- Location: LCCOMB_X106_Y13_N10
\Instruc_M|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Instruc_M|Add0~6_combout\ = (\PC_IF|PC_out_reg\(9) & ((\Instruc_M|Add0~5\) # (GND))) # (!\PC_IF|PC_out_reg\(9) & (!\Instruc_M|Add0~5\))
-- \Instruc_M|Add0~7\ = CARRY((\PC_IF|PC_out_reg\(9)) # (!\Instruc_M|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC_IF|PC_out_reg\(9),
	datad => VCC,
	cin => \Instruc_M|Add0~5\,
	combout => \Instruc_M|Add0~6_combout\,
	cout => \Instruc_M|Add0~7\);

-- Location: LCCOMB_X106_Y13_N12
\Instruc_M|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Instruc_M|Add0~8_combout\ = (\PC_IF|PC_out_reg\(10) & (!\Instruc_M|Add0~7\ & VCC)) # (!\PC_IF|PC_out_reg\(10) & (\Instruc_M|Add0~7\ $ (GND)))
-- \Instruc_M|Add0~9\ = CARRY((!\PC_IF|PC_out_reg\(10) & !\Instruc_M|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC_IF|PC_out_reg\(10),
	datad => VCC,
	cin => \Instruc_M|Add0~7\,
	combout => \Instruc_M|Add0~8_combout\,
	cout => \Instruc_M|Add0~9\);

-- Location: LCCOMB_X105_Y13_N18
\PC_mais_2|carry_v~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_mais_2|carry_v~2_combout\ = (\PC_IF|PC_out_reg\(10) & (\PC_IF|PC_out_reg\(8) & (\PC_IF|PC_out_reg\(9) & \PC_mais_2|carry_v~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_IF|PC_out_reg\(10),
	datab => \PC_IF|PC_out_reg\(8),
	datac => \PC_IF|PC_out_reg\(9),
	datad => \PC_mais_2|carry_v~1_combout\,
	combout => \PC_mais_2|carry_v~2_combout\);

-- Location: LCCOMB_X105_Y13_N14
\PC_mais_2|R[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_mais_2|R\(11) = \PC_mais_2|carry_v~2_combout\ $ (\PC_IF|PC_out_reg\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_mais_2|carry_v~2_combout\,
	datac => \PC_IF|PC_out_reg\(11),
	combout => \PC_mais_2|R\(11));

-- Location: FF_X105_Y13_N15
\PC_IF|R_PC_in|R[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \PC_mais_2|R\(11),
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_IF|R_PC_in|R\(11));

-- Location: FF_X105_Y13_N13
\PC_IF|PC_out_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \PC_IF|R_PC_in|R\(11),
	sload => VCC,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_IF|PC_out_reg\(11));

-- Location: LCCOMB_X105_Y13_N20
\PC_mais_2|R[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_mais_2|R\(12) = \PC_IF|PC_out_reg\(12) $ (((\PC_mais_2|carry_v~2_combout\ & \PC_IF|PC_out_reg\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_mais_2|carry_v~2_combout\,
	datac => \PC_IF|PC_out_reg\(11),
	datad => \PC_IF|PC_out_reg\(12),
	combout => \PC_mais_2|R\(12));

-- Location: FF_X105_Y13_N21
\PC_IF|R_PC_in|R[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \PC_mais_2|R\(12),
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_IF|R_PC_in|R\(12));

-- Location: LCCOMB_X105_Y13_N2
\PC_IF|PC_out_reg[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_IF|PC_out_reg[12]~feeder_combout\ = \PC_IF|R_PC_in|R\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC_IF|R_PC_in|R\(12),
	combout => \PC_IF|PC_out_reg[12]~feeder_combout\);

-- Location: FF_X105_Y13_N3
\PC_IF|PC_out_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \PC_IF|PC_out_reg[12]~feeder_combout\,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_IF|PC_out_reg\(12));

-- Location: LCCOMB_X106_Y13_N14
\Instruc_M|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Instruc_M|Add0~10_combout\ = (\PC_IF|PC_out_reg\(11) & ((\Instruc_M|Add0~9\) # (GND))) # (!\PC_IF|PC_out_reg\(11) & (!\Instruc_M|Add0~9\))
-- \Instruc_M|Add0~11\ = CARRY((\PC_IF|PC_out_reg\(11)) # (!\Instruc_M|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC_IF|PC_out_reg\(11),
	datad => VCC,
	cin => \Instruc_M|Add0~9\,
	combout => \Instruc_M|Add0~10_combout\,
	cout => \Instruc_M|Add0~11\);

-- Location: LCCOMB_X106_Y13_N16
\Instruc_M|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Instruc_M|Add0~12_combout\ = (\PC_IF|PC_out_reg\(12) & (!\Instruc_M|Add0~11\ & VCC)) # (!\PC_IF|PC_out_reg\(12) & (\Instruc_M|Add0~11\ $ (GND)))
-- \Instruc_M|Add0~13\ = CARRY((!\PC_IF|PC_out_reg\(12) & !\Instruc_M|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC_IF|PC_out_reg\(12),
	datad => VCC,
	cin => \Instruc_M|Add0~11\,
	combout => \Instruc_M|Add0~12_combout\,
	cout => \Instruc_M|Add0~13\);

-- Location: LCCOMB_X106_Y13_N2
\Instruc_M|Inst_Out[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Instruc_M|Inst_Out[0]~1_combout\ = (!\Instruc_M|Add0~8_combout\ & (!\Instruc_M|Add0~12_combout\ & (!\Instruc_M|Add0~10_combout\ & !\Instruc_M|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruc_M|Add0~8_combout\,
	datab => \Instruc_M|Add0~12_combout\,
	datac => \Instruc_M|Add0~10_combout\,
	datad => \Instruc_M|Add0~6_combout\,
	combout => \Instruc_M|Inst_Out[0]~1_combout\);

-- Location: LCCOMB_X106_Y13_N28
\Instruc_M|Inst_Out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Instruc_M|Inst_Out[0]~0_combout\ = (!\Instruc_M|Add0~4_combout\ & (!\PC_IF|PC_out_reg\(5) & (!\PC_IF|PC_out_reg\(6) & !\Instruc_M|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruc_M|Add0~4_combout\,
	datab => \PC_IF|PC_out_reg\(5),
	datac => \PC_IF|PC_out_reg\(6),
	datad => \Instruc_M|Add0~2_combout\,
	combout => \Instruc_M|Inst_Out[0]~0_combout\);

-- Location: LCCOMB_X105_Y13_N8
\PC_mais_2|R[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_mais_2|R\(13) = \PC_IF|PC_out_reg\(13) $ (((\PC_mais_2|carry_v~2_combout\ & (\PC_IF|PC_out_reg\(11) & \PC_IF|PC_out_reg\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_IF|PC_out_reg\(13),
	datab => \PC_mais_2|carry_v~2_combout\,
	datac => \PC_IF|PC_out_reg\(11),
	datad => \PC_IF|PC_out_reg\(12),
	combout => \PC_mais_2|R\(13));

-- Location: FF_X105_Y13_N9
\PC_IF|R_PC_in|R[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \PC_mais_2|R\(13),
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_IF|R_PC_in|R\(13));

-- Location: FF_X105_Y13_N31
\PC_IF|PC_out_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \PC_IF|R_PC_in|R\(13),
	sload => VCC,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_IF|PC_out_reg\(13));

-- Location: LCCOMB_X105_Y13_N30
\PC_mais_2|carry_v~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_mais_2|carry_v~3_combout\ = (\PC_IF|PC_out_reg\(11) & (\PC_mais_2|carry_v~2_combout\ & (\PC_IF|PC_out_reg\(13) & \PC_IF|PC_out_reg\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_IF|PC_out_reg\(11),
	datab => \PC_mais_2|carry_v~2_combout\,
	datac => \PC_IF|PC_out_reg\(13),
	datad => \PC_IF|PC_out_reg\(12),
	combout => \PC_mais_2|carry_v~3_combout\);

-- Location: LCCOMB_X106_Y13_N26
\PC_mais_2|R[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_mais_2|R\(14) = \PC_IF|PC_out_reg\(14) $ (\PC_mais_2|carry_v~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_IF|PC_out_reg\(14),
	datad => \PC_mais_2|carry_v~3_combout\,
	combout => \PC_mais_2|R\(14));

-- Location: FF_X106_Y13_N27
\PC_IF|R_PC_in|R[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \PC_mais_2|R\(14),
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_IF|R_PC_in|R\(14));

-- Location: FF_X106_Y13_N21
\PC_IF|PC_out_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \PC_IF|R_PC_in|R\(14),
	sload => VCC,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_IF|PC_out_reg\(14));

-- Location: LCCOMB_X106_Y13_N18
\Instruc_M|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Instruc_M|Add0~14_combout\ = (\PC_IF|PC_out_reg\(13) & ((\Instruc_M|Add0~13\) # (GND))) # (!\PC_IF|PC_out_reg\(13) & (!\Instruc_M|Add0~13\))
-- \Instruc_M|Add0~15\ = CARRY((\PC_IF|PC_out_reg\(13)) # (!\Instruc_M|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC_IF|PC_out_reg\(13),
	datad => VCC,
	cin => \Instruc_M|Add0~13\,
	combout => \Instruc_M|Add0~14_combout\,
	cout => \Instruc_M|Add0~15\);

-- Location: LCCOMB_X106_Y13_N20
\Instruc_M|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Instruc_M|Add0~16_combout\ = (\PC_IF|PC_out_reg\(14) & (!\Instruc_M|Add0~15\ & VCC)) # (!\PC_IF|PC_out_reg\(14) & (\Instruc_M|Add0~15\ $ (GND)))
-- \Instruc_M|Add0~17\ = CARRY((!\PC_IF|PC_out_reg\(14) & !\Instruc_M|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC_IF|PC_out_reg\(14),
	datad => VCC,
	cin => \Instruc_M|Add0~15\,
	combout => \Instruc_M|Add0~16_combout\,
	cout => \Instruc_M|Add0~17\);

-- Location: LCCOMB_X106_Y13_N30
\PC_mais_2|R[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_mais_2|R\(15) = \PC_IF|PC_out_reg\(15) $ (((\PC_mais_2|carry_v~3_combout\ & \PC_IF|PC_out_reg\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_mais_2|carry_v~3_combout\,
	datac => \PC_IF|PC_out_reg\(15),
	datad => \PC_IF|PC_out_reg\(14),
	combout => \PC_mais_2|R\(15));

-- Location: FF_X106_Y13_N31
\PC_IF|R_PC_in|R[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \PC_mais_2|R\(15),
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_IF|R_PC_in|R\(15));

-- Location: FF_X106_Y13_N23
\PC_IF|PC_out_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \PC_IF|R_PC_in|R\(15),
	sload => VCC,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_IF|PC_out_reg\(15));

-- Location: LCCOMB_X106_Y13_N22
\Instruc_M|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Instruc_M|Add0~18_combout\ = (\PC_IF|PC_out_reg\(15) & ((\Instruc_M|Add0~17\) # (GND))) # (!\PC_IF|PC_out_reg\(15) & (!\Instruc_M|Add0~17\))
-- \Instruc_M|Add0~19\ = CARRY((\PC_IF|PC_out_reg\(15)) # (!\Instruc_M|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC_IF|PC_out_reg\(15),
	datad => VCC,
	cin => \Instruc_M|Add0~17\,
	combout => \Instruc_M|Add0~18_combout\,
	cout => \Instruc_M|Add0~19\);

-- Location: LCCOMB_X106_Y13_N24
\Instruc_M|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Instruc_M|Add0~20_combout\ = \Instruc_M|Add0~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Instruc_M|Add0~19\,
	combout => \Instruc_M|Add0~20_combout\);

-- Location: LCCOMB_X106_Y13_N0
\Instruc_M|Inst_Out[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Instruc_M|Inst_Out[0]~2_combout\ = (!\Instruc_M|Add0~16_combout\ & (!\Instruc_M|Add0~20_combout\ & (!\Instruc_M|Add0~18_combout\ & !\Instruc_M|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruc_M|Add0~16_combout\,
	datab => \Instruc_M|Add0~20_combout\,
	datac => \Instruc_M|Add0~18_combout\,
	datad => \Instruc_M|Add0~14_combout\,
	combout => \Instruc_M|Inst_Out[0]~2_combout\);

-- Location: LCCOMB_X107_Y13_N30
\Instruc_M|Inst_Out[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Instruc_M|Inst_Out[2]~5_combout\ = (\Instruc_M|Inst_Out[0]~1_combout\ & (\Instruc_M|Inst_Out[0]~0_combout\ & (\Instruc_M|Inst_Out[0]~2_combout\ & !\PC_IF|PC_out_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruc_M|Inst_Out[0]~1_combout\,
	datab => \Instruc_M|Inst_Out[0]~0_combout\,
	datac => \Instruc_M|Inst_Out[0]~2_combout\,
	datad => \PC_IF|PC_out_reg\(4),
	combout => \Instruc_M|Inst_Out[2]~5_combout\);

-- Location: LCCOMB_X107_Y13_N24
\Instruc_M|Inst_Out[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Instruc_M|Inst_Out[2]~7_combout\ = (!\PC_IF|PC_out_reg\(2) & (!\PC_IF|PC_out_reg\(1) & (\Instruc_M|Inst_Out[2]~5_combout\ & \PC_IF|PC_out_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_IF|PC_out_reg\(2),
	datab => \PC_IF|PC_out_reg\(1),
	datac => \Instruc_M|Inst_Out[2]~5_combout\,
	datad => \PC_IF|PC_out_reg\(3),
	combout => \Instruc_M|Inst_Out[2]~7_combout\);

-- Location: FF_X107_Y13_N25
\S_IF_ID|R_Inst_IF|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Instruc_M|Inst_Out[2]~7_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_IF_ID|R_Inst_IF|R\(2));

-- Location: LCCOMB_X108_Y13_N4
\S_IF_ID|Inst_ID_reg[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_IF_ID|Inst_ID_reg[2]~feeder_combout\ = \S_IF_ID|R_Inst_IF|R\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_IF_ID|R_Inst_IF|R\(2),
	combout => \S_IF_ID|Inst_ID_reg[2]~feeder_combout\);

-- Location: FF_X108_Y13_N5
\S_IF_ID|Inst_ID_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_IF_ID|Inst_ID_reg[2]~feeder_combout\,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_IF_ID|Inst_ID_reg\(2));

-- Location: LCCOMB_X107_Y13_N20
\Instruc_M|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Instruc_M|Mux15~0_combout\ = (!\PC_IF|PC_out_reg\(4) & ((\PC_IF|PC_out_reg\(1) & ((!\PC_IF|PC_out_reg\(3)))) # (!\PC_IF|PC_out_reg\(1) & (!\PC_IF|PC_out_reg\(2) & \PC_IF|PC_out_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_IF|PC_out_reg\(2),
	datab => \PC_IF|PC_out_reg\(1),
	datac => \PC_IF|PC_out_reg\(4),
	datad => \PC_IF|PC_out_reg\(3),
	combout => \Instruc_M|Mux15~0_combout\);

-- Location: LCCOMB_X107_Y13_N16
\Instruc_M|Inst_Out[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Instruc_M|Inst_Out[0]~4_combout\ = (\Instruc_M|Inst_Out[0]~1_combout\ & (\Instruc_M|Mux15~0_combout\ & (\Instruc_M|Inst_Out[0]~2_combout\ & \Instruc_M|Inst_Out[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruc_M|Inst_Out[0]~1_combout\,
	datab => \Instruc_M|Mux15~0_combout\,
	datac => \Instruc_M|Inst_Out[0]~2_combout\,
	datad => \Instruc_M|Inst_Out[0]~0_combout\,
	combout => \Instruc_M|Inst_Out[0]~4_combout\);

-- Location: FF_X107_Y13_N17
\S_IF_ID|R_Inst_IF|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Instruc_M|Inst_Out[0]~4_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_IF_ID|R_Inst_IF|R\(0));

-- Location: FF_X106_Y13_N11
\S_IF_ID|Inst_ID_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \S_IF_ID|R_Inst_IF|R\(0),
	sload => VCC,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_IF_ID|Inst_ID_reg\(0));

-- Location: LCCOMB_X107_Y13_N0
\Instruc_M|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Instruc_M|Mux2~0_combout\ = (\PC_IF|PC_out_reg\(4)) # ((\PC_IF|PC_out_reg\(3) & ((\PC_IF|PC_out_reg\(2)) # (\PC_IF|PC_out_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_IF|PC_out_reg\(2),
	datab => \PC_IF|PC_out_reg\(1),
	datac => \PC_IF|PC_out_reg\(3),
	datad => \PC_IF|PC_out_reg\(4),
	combout => \Instruc_M|Mux2~0_combout\);

-- Location: LCCOMB_X107_Y13_N2
\Instruc_M|Inst_Out[13]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Instruc_M|Inst_Out[13]~3_combout\ = (\Instruc_M|Inst_Out[0]~1_combout\ & (!\Instruc_M|Mux2~0_combout\ & (\Instruc_M|Inst_Out[0]~2_combout\ & \Instruc_M|Inst_Out[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruc_M|Inst_Out[0]~1_combout\,
	datab => \Instruc_M|Mux2~0_combout\,
	datac => \Instruc_M|Inst_Out[0]~2_combout\,
	datad => \Instruc_M|Inst_Out[0]~0_combout\,
	combout => \Instruc_M|Inst_Out[13]~3_combout\);

-- Location: FF_X107_Y13_N3
\S_IF_ID|R_Inst_IF|R[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Instruc_M|Inst_Out[13]~3_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_IF_ID|R_Inst_IF|R\(13));

-- Location: LCCOMB_X108_Y13_N14
\S_IF_ID|Inst_ID_reg[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_IF_ID|Inst_ID_reg[13]~feeder_combout\ = \S_IF_ID|R_Inst_IF|R\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_IF_ID|R_Inst_IF|R\(13),
	combout => \S_IF_ID|Inst_ID_reg[13]~feeder_combout\);

-- Location: FF_X108_Y13_N15
\S_IF_ID|Inst_ID_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_IF_ID|Inst_ID_reg[13]~feeder_combout\,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_IF_ID|Inst_ID_reg\(13));

-- Location: LCCOMB_X109_Y13_N18
\S_ID_EX|R_EX_in|R[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_ID_EX|R_EX_in|R[0]~feeder_combout\ = \S_IF_ID|Inst_ID_reg\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_IF_ID|Inst_ID_reg\(13),
	combout => \S_ID_EX|R_EX_in|R[0]~feeder_combout\);

-- Location: FF_X109_Y13_N19
\S_ID_EX|R_EX_in|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_ID_EX|R_EX_in|R[0]~feeder_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|R_EX_in|R\(0));

-- Location: LCCOMB_X109_Y13_N22
\S_ID_EX|EX_out_reg[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_ID_EX|EX_out_reg[0]~feeder_combout\ = \S_ID_EX|R_EX_in|R\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_ID_EX|R_EX_in|R\(0),
	combout => \S_ID_EX|EX_out_reg[0]~feeder_combout\);

-- Location: FF_X109_Y13_N23
\S_ID_EX|EX_out_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_ID_EX|EX_out_reg[0]~feeder_combout\,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|EX_out_reg\(0));

-- Location: LCCOMB_X110_Y15_N8
\S_EX_MEM|R_M_in|R[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_EX_MEM|R_M_in|R[1]~feeder_combout\ = \S_ID_EX|EX_out_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_ID_EX|EX_out_reg\(0),
	combout => \S_EX_MEM|R_M_in|R[1]~feeder_combout\);

-- Location: FF_X110_Y15_N9
\S_EX_MEM|R_M_in|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_EX_MEM|R_M_in|R[1]~feeder_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_EX_MEM|R_M_in|R\(1));

-- Location: FF_X110_Y15_N17
\S_EX_MEM|M_out_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \S_EX_MEM|R_M_in|R\(1),
	sload => VCC,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_EX_MEM|M_out_reg\(1));

-- Location: LCCOMB_X110_Y12_N6
\S_MEM_WB|R_WB_in|R[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_MEM_WB|R_WB_in|R[0]~feeder_combout\ = \S_EX_MEM|M_out_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S_EX_MEM|M_out_reg\(1),
	combout => \S_MEM_WB|R_WB_in|R[0]~feeder_combout\);

-- Location: FF_X110_Y12_N7
\S_MEM_WB|R_WB_in|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_MEM_WB|R_WB_in|R[0]~feeder_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_MEM_WB|R_WB_in|R\(0));

-- Location: LCCOMB_X106_Y12_N8
\S_MEM_WB|WB_out_reg[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_MEM_WB|WB_out_reg[0]~feeder_combout\ = \S_MEM_WB|R_WB_in|R\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_MEM_WB|R_WB_in|R\(0),
	combout => \S_MEM_WB|WB_out_reg[0]~feeder_combout\);

-- Location: FF_X106_Y12_N9
\S_MEM_WB|WB_out_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_MEM_WB|WB_out_reg[0]~feeder_combout\,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_MEM_WB|WB_out_reg\(0));

-- Location: LCCOMB_X109_Y11_N4
\S_ID_EX|R_RD_ID|R[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_ID_EX|R_RD_ID|R[1]~feeder_combout\ = \S_IF_ID|Inst_ID_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_IF_ID|Inst_ID_reg\(2),
	combout => \S_ID_EX|R_RD_ID|R[1]~feeder_combout\);

-- Location: FF_X109_Y11_N5
\S_ID_EX|R_RD_ID|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_ID_EX|R_RD_ID|R[1]~feeder_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|R_RD_ID|R\(1));

-- Location: LCCOMB_X109_Y15_N4
\S_ID_EX|RD_EX_reg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_ID_EX|RD_EX_reg[1]~feeder_combout\ = \S_ID_EX|R_RD_ID|R\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_ID_EX|R_RD_ID|R\(1),
	combout => \S_ID_EX|RD_EX_reg[1]~feeder_combout\);

-- Location: FF_X109_Y15_N5
\S_ID_EX|RD_EX_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_ID_EX|RD_EX_reg[1]~feeder_combout\,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|RD_EX_reg\(1));

-- Location: LCCOMB_X110_Y15_N22
\Mux_2_1_EX_2|Y[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_2_1_EX_2|Y[2]~2_combout\ = (\S_ID_EX|RD_EX_reg\(1) & !\S_ID_EX|EX_out_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_ID_EX|RD_EX_reg\(1),
	datad => \S_ID_EX|EX_out_reg\(0),
	combout => \Mux_2_1_EX_2|Y[2]~2_combout\);

-- Location: FF_X110_Y15_N23
\S_EX_MEM|R_RW|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Mux_2_1_EX_2|Y[2]~2_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_EX_MEM|R_RW|R\(2));

-- Location: FF_X110_Y15_N21
\S_EX_MEM|RW_MEM_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \S_EX_MEM|R_RW|R\(2),
	sload => VCC,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_EX_MEM|RW_MEM_reg\(2));

-- Location: LCCOMB_X106_Y15_N6
\S_MEM_WB|R_RW|R[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_MEM_WB|R_RW|R[2]~feeder_combout\ = \S_EX_MEM|RW_MEM_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_EX_MEM|RW_MEM_reg\(2),
	combout => \S_MEM_WB|R_RW|R[2]~feeder_combout\);

-- Location: FF_X106_Y15_N7
\S_MEM_WB|R_RW|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_MEM_WB|R_RW|R[2]~feeder_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_MEM_WB|R_RW|R\(2));

-- Location: LCCOMB_X106_Y12_N2
\S_MEM_WB|RW_WB_reg[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_MEM_WB|RW_WB_reg[2]~feeder_combout\ = \S_MEM_WB|R_RW|R\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_MEM_WB|R_RW|R\(2),
	combout => \S_MEM_WB|RW_WB_reg[2]~feeder_combout\);

-- Location: FF_X106_Y12_N3
\S_MEM_WB|RW_WB_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_MEM_WB|RW_WB_reg[2]~feeder_combout\,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_MEM_WB|RW_WB_reg\(2));

-- Location: LCCOMB_X107_Y13_N10
\Instruc_M|Inst_Out[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Instruc_M|Inst_Out[1]~6_combout\ = (\PC_IF|PC_out_reg\(2) & (\Instruc_M|Inst_Out[2]~5_combout\ & !\PC_IF|PC_out_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_IF|PC_out_reg\(2),
	datac => \Instruc_M|Inst_Out[2]~5_combout\,
	datad => \PC_IF|PC_out_reg\(3),
	combout => \Instruc_M|Inst_Out[1]~6_combout\);

-- Location: FF_X107_Y13_N11
\S_IF_ID|R_Inst_IF|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Instruc_M|Inst_Out[1]~6_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_IF_ID|R_Inst_IF|R\(1));

-- Location: LCCOMB_X107_Y13_N28
\S_IF_ID|Inst_ID_reg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_IF_ID|Inst_ID_reg[1]~feeder_combout\ = \S_IF_ID|R_Inst_IF|R\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_IF_ID|R_Inst_IF|R\(1),
	combout => \S_IF_ID|Inst_ID_reg[1]~feeder_combout\);

-- Location: FF_X107_Y13_N29
\S_IF_ID|Inst_ID_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_IF_ID|Inst_ID_reg[1]~feeder_combout\,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_IF_ID|Inst_ID_reg\(1));

-- Location: LCCOMB_X109_Y13_N12
\S_ID_EX|R_RD_ID|R[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_ID_EX|R_RD_ID|R[0]~feeder_combout\ = \S_IF_ID|Inst_ID_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_IF_ID|Inst_ID_reg\(1),
	combout => \S_ID_EX|R_RD_ID|R[0]~feeder_combout\);

-- Location: FF_X109_Y13_N13
\S_ID_EX|R_RD_ID|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_ID_EX|R_RD_ID|R[0]~feeder_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|R_RD_ID|R\(0));

-- Location: LCCOMB_X109_Y15_N22
\S_ID_EX|RD_EX_reg[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_ID_EX|RD_EX_reg[0]~feeder_combout\ = \S_ID_EX|R_RD_ID|R\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_ID_EX|R_RD_ID|R\(0),
	combout => \S_ID_EX|RD_EX_reg[0]~feeder_combout\);

-- Location: FF_X109_Y15_N23
\S_ID_EX|RD_EX_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_ID_EX|RD_EX_reg[0]~feeder_combout\,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|RD_EX_reg\(0));

-- Location: LCCOMB_X109_Y13_N26
\S_ID_EX|R_RT_ID|R[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_ID_EX|R_RT_ID|R[0]~feeder_combout\ = \S_IF_ID|Inst_ID_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_IF_ID|Inst_ID_reg\(0),
	combout => \S_ID_EX|R_RT_ID|R[0]~feeder_combout\);

-- Location: FF_X109_Y13_N27
\S_ID_EX|R_RT_ID|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_ID_EX|R_RT_ID|R[0]~feeder_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|R_RT_ID|R\(0));

-- Location: FF_X109_Y15_N3
\S_ID_EX|RT_EX_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \S_ID_EX|R_RT_ID|R\(0),
	sload => VCC,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|RT_EX_reg\(0));

-- Location: LCCOMB_X110_Y15_N20
\Mux_2_1_EX_2|Y[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_2_1_EX_2|Y[0]~0_combout\ = (\S_ID_EX|EX_out_reg\(0) & (\S_ID_EX|RD_EX_reg\(0))) # (!\S_ID_EX|EX_out_reg\(0) & ((\S_ID_EX|RT_EX_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_ID_EX|RD_EX_reg\(0),
	datab => \S_ID_EX|EX_out_reg\(0),
	datad => \S_ID_EX|RT_EX_reg\(0),
	combout => \Mux_2_1_EX_2|Y[0]~0_combout\);

-- Location: LCCOMB_X106_Y15_N22
\S_EX_MEM|R_RW|R[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_EX_MEM|R_RW|R[0]~feeder_combout\ = \Mux_2_1_EX_2|Y[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux_2_1_EX_2|Y[0]~0_combout\,
	combout => \S_EX_MEM|R_RW|R[0]~feeder_combout\);

-- Location: FF_X106_Y15_N23
\S_EX_MEM|R_RW|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_EX_MEM|R_RW|R[0]~feeder_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_EX_MEM|R_RW|R\(0));

-- Location: LCCOMB_X105_Y15_N8
\S_EX_MEM|RW_MEM_reg[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_EX_MEM|RW_MEM_reg[0]~feeder_combout\ = \S_EX_MEM|R_RW|R\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_EX_MEM|R_RW|R\(0),
	combout => \S_EX_MEM|RW_MEM_reg[0]~feeder_combout\);

-- Location: FF_X105_Y15_N9
\S_EX_MEM|RW_MEM_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_EX_MEM|RW_MEM_reg[0]~feeder_combout\,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_EX_MEM|RW_MEM_reg\(0));

-- Location: LCCOMB_X105_Y12_N24
\S_MEM_WB|R_RW|R[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_MEM_WB|R_RW|R[0]~feeder_combout\ = \S_EX_MEM|RW_MEM_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_EX_MEM|RW_MEM_reg\(0),
	combout => \S_MEM_WB|R_RW|R[0]~feeder_combout\);

-- Location: FF_X105_Y12_N25
\S_MEM_WB|R_RW|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_MEM_WB|R_RW|R[0]~feeder_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_MEM_WB|R_RW|R\(0));

-- Location: LCCOMB_X106_Y12_N22
\S_MEM_WB|RW_WB_reg[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_MEM_WB|RW_WB_reg[0]~feeder_combout\ = \S_MEM_WB|R_RW|R\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_MEM_WB|R_RW|R\(0),
	combout => \S_MEM_WB|RW_WB_reg[0]~feeder_combout\);

-- Location: FF_X106_Y12_N23
\S_MEM_WB|RW_WB_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_MEM_WB|RW_WB_reg[0]~feeder_combout\,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_MEM_WB|RW_WB_reg\(0));

-- Location: LCCOMB_X110_Y15_N0
\Mux_2_1_EX_2|Y[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_2_1_EX_2|Y[1]~1_combout\ = (\S_ID_EX|EX_out_reg\(0) & ((\S_ID_EX|RD_EX_reg\(1)))) # (!\S_ID_EX|EX_out_reg\(0) & (\S_ID_EX|RD_EX_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_ID_EX|RD_EX_reg\(0),
	datab => \S_ID_EX|EX_out_reg\(0),
	datad => \S_ID_EX|RD_EX_reg\(1),
	combout => \Mux_2_1_EX_2|Y[1]~1_combout\);

-- Location: FF_X109_Y15_N1
\S_EX_MEM|R_RW|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_EX_2|Y[1]~1_combout\,
	sload => VCC,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_EX_MEM|R_RW|R\(1));

-- Location: LCCOMB_X105_Y15_N16
\S_EX_MEM|RW_MEM_reg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_EX_MEM|RW_MEM_reg[1]~feeder_combout\ = \S_EX_MEM|R_RW|R\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_EX_MEM|R_RW|R\(1),
	combout => \S_EX_MEM|RW_MEM_reg[1]~feeder_combout\);

-- Location: FF_X105_Y15_N17
\S_EX_MEM|RW_MEM_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_EX_MEM|RW_MEM_reg[1]~feeder_combout\,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_EX_MEM|RW_MEM_reg\(1));

-- Location: LCCOMB_X105_Y12_N14
\S_MEM_WB|R_RW|R[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_MEM_WB|R_RW|R[1]~feeder_combout\ = \S_EX_MEM|RW_MEM_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_EX_MEM|RW_MEM_reg\(1),
	combout => \S_MEM_WB|R_RW|R[1]~feeder_combout\);

-- Location: FF_X105_Y12_N15
\S_MEM_WB|R_RW|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_MEM_WB|R_RW|R[1]~feeder_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_MEM_WB|R_RW|R\(1));

-- Location: LCCOMB_X106_Y12_N28
\S_MEM_WB|RW_WB_reg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_MEM_WB|RW_WB_reg[1]~feeder_combout\ = \S_MEM_WB|R_RW|R\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_MEM_WB|R_RW|R\(1),
	combout => \S_MEM_WB|RW_WB_reg[1]~feeder_combout\);

-- Location: FF_X106_Y12_N29
\S_MEM_WB|RW_WB_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_MEM_WB|RW_WB_reg[1]~feeder_combout\,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_MEM_WB|RW_WB_reg\(1));

-- Location: LCCOMB_X107_Y11_N16
\S_Registers|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Decoder0~0_combout\ = (\S_MEM_WB|WB_out_reg\(0) & (\S_MEM_WB|RW_WB_reg\(2) & (\S_MEM_WB|RW_WB_reg\(0) & !\S_MEM_WB|RW_WB_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_MEM_WB|WB_out_reg\(0),
	datab => \S_MEM_WB|RW_WB_reg\(2),
	datac => \S_MEM_WB|RW_WB_reg\(0),
	datad => \S_MEM_WB|RW_WB_reg\(1),
	combout => \S_Registers|Decoder0~0_combout\);

-- Location: FF_X108_Y9_N29
\S_Registers|regs[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[2]~2_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[5][2]~q\);

-- Location: LCCOMB_X106_Y12_N12
\S_Registers|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Decoder0~3_combout\ = (\S_MEM_WB|RW_WB_reg\(0) & (\S_MEM_WB|RW_WB_reg\(2) & (\S_MEM_WB|WB_out_reg\(0) & \S_MEM_WB|RW_WB_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_MEM_WB|RW_WB_reg\(0),
	datab => \S_MEM_WB|RW_WB_reg\(2),
	datac => \S_MEM_WB|WB_out_reg\(0),
	datad => \S_MEM_WB|RW_WB_reg\(1),
	combout => \S_Registers|Decoder0~3_combout\);

-- Location: FF_X108_Y9_N31
\S_Registers|regs[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[2]~2_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[7][2]~q\);

-- Location: LCCOMB_X106_Y12_N14
\S_Registers|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Decoder0~2_combout\ = (!\S_MEM_WB|RW_WB_reg\(0) & (\S_MEM_WB|RW_WB_reg\(2) & (\S_MEM_WB|WB_out_reg\(0) & !\S_MEM_WB|RW_WB_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_MEM_WB|RW_WB_reg\(0),
	datab => \S_MEM_WB|RW_WB_reg\(2),
	datac => \S_MEM_WB|WB_out_reg\(0),
	datad => \S_MEM_WB|RW_WB_reg\(1),
	combout => \S_Registers|Decoder0~2_combout\);

-- Location: FF_X106_Y9_N27
\S_Registers|regs[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[2]~2_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[4][2]~q\);

-- Location: LCCOMB_X107_Y11_N30
\S_Registers|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Decoder0~1_combout\ = (\S_MEM_WB|WB_out_reg\(0) & (\S_MEM_WB|RW_WB_reg\(2) & (!\S_MEM_WB|RW_WB_reg\(0) & \S_MEM_WB|RW_WB_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_MEM_WB|WB_out_reg\(0),
	datab => \S_MEM_WB|RW_WB_reg\(2),
	datac => \S_MEM_WB|RW_WB_reg\(0),
	datad => \S_MEM_WB|RW_WB_reg\(1),
	combout => \S_Registers|Decoder0~1_combout\);

-- Location: FF_X107_Y9_N15
\S_Registers|regs[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[2]~2_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[6][2]~q\);

-- Location: LCCOMB_X106_Y9_N26
\S_Registers|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux13~0_combout\ = (\S_IF_ID|Inst_ID_reg\(1) & ((\S_IF_ID|Inst_ID_reg\(0)) # ((\S_Registers|regs[6][2]~q\)))) # (!\S_IF_ID|Inst_ID_reg\(1) & (!\S_IF_ID|Inst_ID_reg\(0) & (\S_Registers|regs[4][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IF_ID|Inst_ID_reg\(1),
	datab => \S_IF_ID|Inst_ID_reg\(0),
	datac => \S_Registers|regs[4][2]~q\,
	datad => \S_Registers|regs[6][2]~q\,
	combout => \S_Registers|Mux13~0_combout\);

-- Location: LCCOMB_X108_Y9_N30
\S_Registers|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux13~1_combout\ = (\S_IF_ID|Inst_ID_reg\(0) & ((\S_Registers|Mux13~0_combout\ & ((\S_Registers|regs[7][2]~q\))) # (!\S_Registers|Mux13~0_combout\ & (\S_Registers|regs[5][2]~q\)))) # (!\S_IF_ID|Inst_ID_reg\(0) & 
-- (((\S_Registers|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IF_ID|Inst_ID_reg\(0),
	datab => \S_Registers|regs[5][2]~q\,
	datac => \S_Registers|regs[7][2]~q\,
	datad => \S_Registers|Mux13~0_combout\,
	combout => \S_Registers|Mux13~1_combout\);

-- Location: LCCOMB_X106_Y12_N6
\S_Registers|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Decoder0~4_combout\ = (!\S_MEM_WB|RW_WB_reg\(0) & (!\S_MEM_WB|RW_WB_reg\(2) & (\S_MEM_WB|WB_out_reg\(0) & \S_MEM_WB|RW_WB_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_MEM_WB|RW_WB_reg\(0),
	datab => \S_MEM_WB|RW_WB_reg\(2),
	datac => \S_MEM_WB|WB_out_reg\(0),
	datad => \S_MEM_WB|RW_WB_reg\(1),
	combout => \S_Registers|Decoder0~4_combout\);

-- Location: FF_X108_Y12_N3
\S_Registers|regs[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[2]~2_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[2][2]~q\);

-- Location: LCCOMB_X107_Y11_N4
\S_Registers|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Decoder0~6_combout\ = (\S_MEM_WB|WB_out_reg\(0) & (!\S_MEM_WB|RW_WB_reg\(2) & (!\S_MEM_WB|RW_WB_reg\(0) & !\S_MEM_WB|RW_WB_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_MEM_WB|WB_out_reg\(0),
	datab => \S_MEM_WB|RW_WB_reg\(2),
	datac => \S_MEM_WB|RW_WB_reg\(0),
	datad => \S_MEM_WB|RW_WB_reg\(1),
	combout => \S_Registers|Decoder0~6_combout\);

-- Location: FF_X109_Y12_N3
\S_Registers|regs[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[2]~2_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[0][2]~q\);

-- Location: LCCOMB_X106_Y12_N0
\S_Registers|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Decoder0~5_combout\ = (\S_MEM_WB|RW_WB_reg\(0) & (!\S_MEM_WB|RW_WB_reg\(2) & (\S_MEM_WB|WB_out_reg\(0) & !\S_MEM_WB|RW_WB_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_MEM_WB|RW_WB_reg\(0),
	datab => \S_MEM_WB|RW_WB_reg\(2),
	datac => \S_MEM_WB|WB_out_reg\(0),
	datad => \S_MEM_WB|RW_WB_reg\(1),
	combout => \S_Registers|Decoder0~5_combout\);

-- Location: FF_X109_Y12_N17
\S_Registers|regs[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[2]~2_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[1][2]~q\);

-- Location: LCCOMB_X109_Y12_N2
\S_Registers|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux13~2_combout\ = (\S_IF_ID|Inst_ID_reg\(0) & ((\S_IF_ID|Inst_ID_reg\(1)) # ((\S_Registers|regs[1][2]~q\)))) # (!\S_IF_ID|Inst_ID_reg\(0) & (!\S_IF_ID|Inst_ID_reg\(1) & (\S_Registers|regs[0][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IF_ID|Inst_ID_reg\(0),
	datab => \S_IF_ID|Inst_ID_reg\(1),
	datac => \S_Registers|regs[0][2]~q\,
	datad => \S_Registers|regs[1][2]~q\,
	combout => \S_Registers|Mux13~2_combout\);

-- Location: LCCOMB_X108_Y12_N2
\S_Registers|Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux13~3_combout\ = (\S_IF_ID|Inst_ID_reg\(1) & ((\S_Registers|Mux13~2_combout\ & (\S_Registers|regs[3][2]~q\)) # (!\S_Registers|Mux13~2_combout\ & ((\S_Registers|regs[2][2]~q\))))) # (!\S_IF_ID|Inst_ID_reg\(1) & 
-- (((\S_Registers|Mux13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|regs[3][2]~q\,
	datab => \S_IF_ID|Inst_ID_reg\(1),
	datac => \S_Registers|regs[2][2]~q\,
	datad => \S_Registers|Mux13~2_combout\,
	combout => \S_Registers|Mux13~3_combout\);

-- Location: LCCOMB_X108_Y12_N4
\S_Registers|Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux13~4_combout\ = (\S_IF_ID|Inst_ID_reg\(2) & (\S_Registers|Mux13~1_combout\)) # (!\S_IF_ID|Inst_ID_reg\(2) & ((\S_Registers|Mux13~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IF_ID|Inst_ID_reg\(2),
	datab => \S_Registers|Mux13~1_combout\,
	datad => \S_Registers|Mux13~3_combout\,
	combout => \S_Registers|Mux13~4_combout\);

-- Location: FF_X108_Y12_N5
\S_ID_EX|R_RS|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_Registers|Mux13~4_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|R_RS|R\(2));

-- Location: FF_X108_Y15_N3
\S_ID_EX|Src_A_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \S_ID_EX|R_RS|R\(2),
	sload => VCC,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|Src_A_reg\(2));

-- Location: LCCOMB_X110_Y15_N30
\S_ID_EX|R_RT|R[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_ID_EX|R_RT|R[2]~feeder_combout\ = \S_Registers|regs[0][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S_Registers|regs[0][2]~q\,
	combout => \S_ID_EX|R_RT|R[2]~feeder_combout\);

-- Location: FF_X110_Y15_N31
\S_ID_EX|R_RT|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_ID_EX|R_RT|R[2]~feeder_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|R_RT|R\(2));

-- Location: FF_X109_Y15_N29
\S_ID_EX|RT_Data_EX_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \S_ID_EX|R_RT|R\(2),
	sload => VCC,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|RT_Data_EX_reg\(2));

-- Location: LCCOMB_X109_Y13_N8
\S_ID_EX|R_EX_in|R[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_ID_EX|R_EX_in|R[1]~0_combout\ = !\S_IF_ID|Inst_ID_reg\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_IF_ID|Inst_ID_reg\(13),
	combout => \S_ID_EX|R_EX_in|R[1]~0_combout\);

-- Location: FF_X109_Y13_N9
\S_ID_EX|R_EX_in|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_ID_EX|R_EX_in|R[1]~0_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|R_EX_in|R\(1));

-- Location: FF_X109_Y15_N19
\S_ID_EX|EX_out_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \S_ID_EX|R_EX_in|R\(1),
	sload => VCC,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|EX_out_reg\(1));

-- Location: LCCOMB_X109_Y15_N28
\Mux_2_1_EX_1|Y[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_2_1_EX_1|Y[2]~1_combout\ = (\S_ID_EX|EX_out_reg\(1) & (\S_ID_EX|RD_EX_reg\(1))) # (!\S_ID_EX|EX_out_reg\(1) & ((\S_ID_EX|RT_Data_EX_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S_ID_EX|RD_EX_reg\(1),
	datac => \S_ID_EX|RT_Data_EX_reg\(2),
	datad => \S_ID_EX|EX_out_reg\(1),
	combout => \Mux_2_1_EX_1|Y[2]~1_combout\);

-- Location: LCCOMB_X109_Y15_N0
\ALUControl|Add_Sub\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALUControl|Add_Sub~combout\ = (\S_ID_EX|EX_out_reg\(1) & \S_ID_EX|RT_EX_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S_ID_EX|EX_out_reg\(1),
	datad => \S_ID_EX|RT_EX_reg\(0),
	combout => \ALUControl|Add_Sub~combout\);

-- Location: LCCOMB_X110_Y12_N22
\S_MEM_WB|R_ALU_R|R[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_MEM_WB|R_ALU_R|R[4]~feeder_combout\ = \S_EX_MEM|ALU_R_MEM_reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_EX_MEM|ALU_R_MEM_reg\(4),
	combout => \S_MEM_WB|R_ALU_R|R[4]~feeder_combout\);

-- Location: FF_X110_Y12_N23
\S_MEM_WB|R_ALU_R|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_MEM_WB|R_ALU_R|R[4]~feeder_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_MEM_WB|R_ALU_R|R\(4));

-- Location: FF_X107_Y12_N15
\S_MEM_WB|ALU_R_WB_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \S_MEM_WB|R_ALU_R|R\(4),
	sload => VCC,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_MEM_WB|ALU_R_WB_reg\(4));

-- Location: LCCOMB_X107_Y12_N28
\S_Registers|regs[3][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|regs[3][0]~feeder_combout\ = \Mux_2_1_WB|Y[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux_2_1_WB|Y[0]~0_combout\,
	combout => \S_Registers|regs[3][0]~feeder_combout\);

-- Location: LCCOMB_X106_Y12_N18
\S_Registers|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Decoder0~7_combout\ = (\S_MEM_WB|RW_WB_reg\(0) & (!\S_MEM_WB|RW_WB_reg\(2) & (\S_MEM_WB|WB_out_reg\(0) & \S_MEM_WB|RW_WB_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_MEM_WB|RW_WB_reg\(0),
	datab => \S_MEM_WB|RW_WB_reg\(2),
	datac => \S_MEM_WB|WB_out_reg\(0),
	datad => \S_MEM_WB|RW_WB_reg\(1),
	combout => \S_Registers|Decoder0~7_combout\);

-- Location: FF_X107_Y12_N29
\S_Registers|regs[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_Registers|regs[3][0]~feeder_combout\,
	ena => \S_Registers|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[3][0]~q\);

-- Location: FF_X111_Y12_N5
\S_Registers|regs[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[0]~0_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[2][0]~q\);

-- Location: FF_X109_Y12_N5
\S_Registers|regs[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[0]~0_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[1][0]~q\);

-- Location: LCCOMB_X109_Y12_N10
\S_Registers|Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux15~2_combout\ = (\S_IF_ID|Inst_ID_reg\(0) & ((\S_Registers|regs[1][0]~q\) # ((\S_IF_ID|Inst_ID_reg\(1))))) # (!\S_IF_ID|Inst_ID_reg\(0) & (((\S_Registers|regs[0][0]~q\ & !\S_IF_ID|Inst_ID_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IF_ID|Inst_ID_reg\(0),
	datab => \S_Registers|regs[1][0]~q\,
	datac => \S_Registers|regs[0][0]~q\,
	datad => \S_IF_ID|Inst_ID_reg\(1),
	combout => \S_Registers|Mux15~2_combout\);

-- Location: LCCOMB_X111_Y12_N4
\S_Registers|Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux15~3_combout\ = (\S_IF_ID|Inst_ID_reg\(1) & ((\S_Registers|Mux15~2_combout\ & (\S_Registers|regs[3][0]~q\)) # (!\S_Registers|Mux15~2_combout\ & ((\S_Registers|regs[2][0]~q\))))) # (!\S_IF_ID|Inst_ID_reg\(1) & 
-- (((\S_Registers|Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IF_ID|Inst_ID_reg\(1),
	datab => \S_Registers|regs[3][0]~q\,
	datac => \S_Registers|regs[2][0]~q\,
	datad => \S_Registers|Mux15~2_combout\,
	combout => \S_Registers|Mux15~3_combout\);

-- Location: FF_X107_Y9_N21
\S_Registers|regs[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[0]~0_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[5][0]~q\);

-- Location: FF_X106_Y9_N19
\S_Registers|regs[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[0]~0_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[7][0]~q\);

-- Location: FF_X107_Y9_N23
\S_Registers|regs[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[0]~0_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[6][0]~q\);

-- Location: FF_X106_Y9_N13
\S_Registers|regs[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[0]~0_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[4][0]~q\);

-- Location: LCCOMB_X106_Y9_N12
\S_Registers|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux15~0_combout\ = (\S_IF_ID|Inst_ID_reg\(1) & ((\S_Registers|regs[6][0]~q\) # ((\S_IF_ID|Inst_ID_reg\(0))))) # (!\S_IF_ID|Inst_ID_reg\(1) & (((\S_Registers|regs[4][0]~q\ & !\S_IF_ID|Inst_ID_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IF_ID|Inst_ID_reg\(1),
	datab => \S_Registers|regs[6][0]~q\,
	datac => \S_Registers|regs[4][0]~q\,
	datad => \S_IF_ID|Inst_ID_reg\(0),
	combout => \S_Registers|Mux15~0_combout\);

-- Location: LCCOMB_X106_Y9_N18
\S_Registers|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux15~1_combout\ = (\S_IF_ID|Inst_ID_reg\(0) & ((\S_Registers|Mux15~0_combout\ & ((\S_Registers|regs[7][0]~q\))) # (!\S_Registers|Mux15~0_combout\ & (\S_Registers|regs[5][0]~q\)))) # (!\S_IF_ID|Inst_ID_reg\(0) & 
-- (((\S_Registers|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IF_ID|Inst_ID_reg\(0),
	datab => \S_Registers|regs[5][0]~q\,
	datac => \S_Registers|regs[7][0]~q\,
	datad => \S_Registers|Mux15~0_combout\,
	combout => \S_Registers|Mux15~1_combout\);

-- Location: LCCOMB_X110_Y12_N12
\S_Registers|Mux15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux15~4_combout\ = (\S_IF_ID|Inst_ID_reg\(2) & ((\S_Registers|Mux15~1_combout\))) # (!\S_IF_ID|Inst_ID_reg\(2) & (\S_Registers|Mux15~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|Mux15~3_combout\,
	datac => \S_IF_ID|Inst_ID_reg\(2),
	datad => \S_Registers|Mux15~1_combout\,
	combout => \S_Registers|Mux15~4_combout\);

-- Location: FF_X110_Y12_N13
\S_ID_EX|R_RS|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_Registers|Mux15~4_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|R_RS|R\(0));

-- Location: FF_X109_Y15_N25
\S_ID_EX|Src_A_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \S_ID_EX|R_RS|R\(0),
	sload => VCC,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|Src_A_reg\(0));

-- Location: LCCOMB_X110_Y15_N26
\ALU|R[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|R[0]~0_combout\ = \S_ID_EX|Src_A_reg\(0) $ (((\S_ID_EX|EX_out_reg\(1) & (\S_ID_EX|RT_EX_reg\(0))) # (!\S_ID_EX|EX_out_reg\(1) & ((\S_ID_EX|RT_Data_EX_reg\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_ID_EX|RT_EX_reg\(0),
	datab => \S_ID_EX|EX_out_reg\(1),
	datac => \S_ID_EX|RT_Data_EX_reg\(0),
	datad => \S_ID_EX|Src_A_reg\(0),
	combout => \ALU|R[0]~0_combout\);

-- Location: FF_X110_Y15_N27
\S_EX_MEM|R_ALU_R|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \ALU|R[0]~0_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_EX_MEM|R_ALU_R|R\(0));

-- Location: FF_X110_Y15_N3
\S_EX_MEM|ALU_R_MEM_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \S_EX_MEM|R_ALU_R|R\(0),
	sload => VCC,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_EX_MEM|ALU_R_MEM_reg\(0));

-- Location: LCCOMB_X110_Y15_N10
\Data_Mem|mem~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Mem|mem~22_combout\ = (\S_EX_MEM|ALU_R_MEM_reg\(3)) # ((\S_EX_MEM|ALU_R_MEM_reg\(2) & ((\S_EX_MEM|ALU_R_MEM_reg\(1)) # (!\S_EX_MEM|ALU_R_MEM_reg\(0)))) # (!\S_EX_MEM|ALU_R_MEM_reg\(2) & (\S_EX_MEM|ALU_R_MEM_reg\(1) & !\S_EX_MEM|ALU_R_MEM_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_EX_MEM|ALU_R_MEM_reg\(2),
	datab => \S_EX_MEM|ALU_R_MEM_reg\(1),
	datac => \S_EX_MEM|ALU_R_MEM_reg\(3),
	datad => \S_EX_MEM|ALU_R_MEM_reg\(0),
	combout => \Data_Mem|mem~22_combout\);

-- Location: LCCOMB_X110_Y12_N16
\Data_Mem|read_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Mem|read_reg~0_combout\ = (!\Data_Mem|mem~22_combout\ & (\S_EX_MEM|M_out_reg\(1) & !\S_EX_MEM|ALU_R_MEM_reg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Data_Mem|mem~22_combout\,
	datac => \S_EX_MEM|M_out_reg\(1),
	datad => \S_EX_MEM|ALU_R_MEM_reg\(4),
	combout => \Data_Mem|read_reg~0_combout\);

-- Location: FF_X110_Y12_N17
\Data_Mem|read_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Data_Mem|read_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem|read_reg\(0));

-- Location: LCCOMB_X110_Y12_N24
\S_MEM_WB|R_ReadData|R[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_MEM_WB|R_ReadData|R[0]~feeder_combout\ = \Data_Mem|read_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_Mem|read_reg\(0),
	combout => \S_MEM_WB|R_ReadData|R[0]~feeder_combout\);

-- Location: FF_X110_Y12_N25
\S_MEM_WB|R_ReadData|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_MEM_WB|R_ReadData|R[0]~feeder_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_MEM_WB|R_ReadData|R\(0));

-- Location: FF_X107_Y12_N23
\S_MEM_WB|Read_Data_WB_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \S_MEM_WB|R_ReadData|R\(0),
	sload => VCC,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_MEM_WB|Read_Data_WB_reg\(0));

-- Location: LCCOMB_X110_Y15_N4
\S_MEM_WB|R_ALU_R|R[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_MEM_WB|R_ALU_R|R[0]~feeder_combout\ = \S_EX_MEM|ALU_R_MEM_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_EX_MEM|ALU_R_MEM_reg\(0),
	combout => \S_MEM_WB|R_ALU_R|R[0]~feeder_combout\);

-- Location: FF_X110_Y15_N5
\S_MEM_WB|R_ALU_R|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_MEM_WB|R_ALU_R|R[0]~feeder_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_MEM_WB|R_ALU_R|R\(0));

-- Location: FF_X110_Y15_N25
\S_MEM_WB|ALU_R_WB_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \S_MEM_WB|R_ALU_R|R\(0),
	sload => VCC,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_MEM_WB|ALU_R_WB_reg\(0));

-- Location: LCCOMB_X107_Y12_N22
\Mux_2_1_WB|Y[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_2_1_WB|Y[0]~0_combout\ = (\S_MEM_WB|WB_out_reg\(1) & (\S_MEM_WB|Read_Data_WB_reg\(0))) # (!\S_MEM_WB|WB_out_reg\(1) & ((\S_MEM_WB|ALU_R_WB_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_MEM_WB|WB_out_reg\(1),
	datac => \S_MEM_WB|Read_Data_WB_reg\(0),
	datad => \S_MEM_WB|ALU_R_WB_reg\(0),
	combout => \Mux_2_1_WB|Y[0]~0_combout\);

-- Location: FF_X109_Y12_N11
\S_Registers|regs[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[0]~0_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[0][0]~q\);

-- Location: FF_X110_Y12_N31
\S_ID_EX|R_RT|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \S_Registers|regs[0][0]~q\,
	sload => VCC,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|R_RT|R\(0));

-- Location: LCCOMB_X109_Y15_N12
\S_ID_EX|RT_Data_EX_reg[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_ID_EX|RT_Data_EX_reg[0]~feeder_combout\ = \S_ID_EX|R_RT|R\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_ID_EX|R_RT|R\(0),
	combout => \S_ID_EX|RT_Data_EX_reg[0]~feeder_combout\);

-- Location: FF_X109_Y15_N13
\S_ID_EX|RT_Data_EX_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_ID_EX|RT_Data_EX_reg[0]~feeder_combout\,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|RT_Data_EX_reg\(0));

-- Location: LCCOMB_X109_Y15_N24
\ALU|carry_v[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|carry_v[1]~0_combout\ = (\S_ID_EX|Src_A_reg\(0) & ((\S_ID_EX|EX_out_reg\(1) & ((\S_ID_EX|RT_EX_reg\(0)))) # (!\S_ID_EX|EX_out_reg\(1) & (\S_ID_EX|RT_Data_EX_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_ID_EX|RT_Data_EX_reg\(0),
	datab => \S_ID_EX|RT_EX_reg\(0),
	datac => \S_ID_EX|Src_A_reg\(0),
	datad => \S_ID_EX|EX_out_reg\(1),
	combout => \ALU|carry_v[1]~0_combout\);

-- Location: FF_X108_Y9_N5
\S_Registers|regs[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[1]~1_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[5][1]~q\);

-- Location: FF_X108_Y9_N23
\S_Registers|regs[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[1]~1_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[7][1]~q\);

-- Location: FF_X107_Y9_N1
\S_Registers|regs[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[1]~1_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[6][1]~q\);

-- Location: FF_X106_Y9_N21
\S_Registers|regs[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[1]~1_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[4][1]~q\);

-- Location: LCCOMB_X106_Y9_N20
\S_Registers|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux14~0_combout\ = (\S_IF_ID|Inst_ID_reg\(1) & ((\S_Registers|regs[6][1]~q\) # ((\S_IF_ID|Inst_ID_reg\(0))))) # (!\S_IF_ID|Inst_ID_reg\(1) & (((\S_Registers|regs[4][1]~q\ & !\S_IF_ID|Inst_ID_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IF_ID|Inst_ID_reg\(1),
	datab => \S_Registers|regs[6][1]~q\,
	datac => \S_Registers|regs[4][1]~q\,
	datad => \S_IF_ID|Inst_ID_reg\(0),
	combout => \S_Registers|Mux14~0_combout\);

-- Location: LCCOMB_X108_Y9_N22
\S_Registers|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux14~1_combout\ = (\S_IF_ID|Inst_ID_reg\(0) & ((\S_Registers|Mux14~0_combout\ & ((\S_Registers|regs[7][1]~q\))) # (!\S_Registers|Mux14~0_combout\ & (\S_Registers|regs[5][1]~q\)))) # (!\S_IF_ID|Inst_ID_reg\(0) & 
-- (((\S_Registers|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IF_ID|Inst_ID_reg\(0),
	datab => \S_Registers|regs[5][1]~q\,
	datac => \S_Registers|regs[7][1]~q\,
	datad => \S_Registers|Mux14~0_combout\,
	combout => \S_Registers|Mux14~1_combout\);

-- Location: LCCOMB_X107_Y12_N10
\S_Registers|regs[3][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|regs[3][1]~feeder_combout\ = \Mux_2_1_WB|Y[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux_2_1_WB|Y[1]~1_combout\,
	combout => \S_Registers|regs[3][1]~feeder_combout\);

-- Location: FF_X107_Y12_N11
\S_Registers|regs[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_Registers|regs[3][1]~feeder_combout\,
	ena => \S_Registers|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[3][1]~q\);

-- Location: FF_X108_Y12_N21
\S_Registers|regs[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[1]~1_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[2][1]~q\);

-- Location: FF_X109_Y12_N1
\S_Registers|regs[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[1]~1_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[1][1]~q\);

-- Location: LCCOMB_X109_Y12_N26
\S_Registers|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux14~2_combout\ = (\S_IF_ID|Inst_ID_reg\(0) & ((\S_IF_ID|Inst_ID_reg\(1)) # ((\S_Registers|regs[1][1]~q\)))) # (!\S_IF_ID|Inst_ID_reg\(0) & (!\S_IF_ID|Inst_ID_reg\(1) & (\S_Registers|regs[0][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IF_ID|Inst_ID_reg\(0),
	datab => \S_IF_ID|Inst_ID_reg\(1),
	datac => \S_Registers|regs[0][1]~q\,
	datad => \S_Registers|regs[1][1]~q\,
	combout => \S_Registers|Mux14~2_combout\);

-- Location: LCCOMB_X108_Y12_N20
\S_Registers|Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux14~3_combout\ = (\S_IF_ID|Inst_ID_reg\(1) & ((\S_Registers|Mux14~2_combout\ & (\S_Registers|regs[3][1]~q\)) # (!\S_Registers|Mux14~2_combout\ & ((\S_Registers|regs[2][1]~q\))))) # (!\S_IF_ID|Inst_ID_reg\(1) & 
-- (((\S_Registers|Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|regs[3][1]~q\,
	datab => \S_IF_ID|Inst_ID_reg\(1),
	datac => \S_Registers|regs[2][1]~q\,
	datad => \S_Registers|Mux14~2_combout\,
	combout => \S_Registers|Mux14~3_combout\);

-- Location: LCCOMB_X108_Y12_N18
\S_Registers|Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux14~4_combout\ = (\S_IF_ID|Inst_ID_reg\(2) & (\S_Registers|Mux14~1_combout\)) # (!\S_IF_ID|Inst_ID_reg\(2) & ((\S_Registers|Mux14~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IF_ID|Inst_ID_reg\(2),
	datac => \S_Registers|Mux14~1_combout\,
	datad => \S_Registers|Mux14~3_combout\,
	combout => \S_Registers|Mux14~4_combout\);

-- Location: FF_X108_Y12_N19
\S_ID_EX|R_RS|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_Registers|Mux14~4_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|R_RS|R\(1));

-- Location: FF_X108_Y15_N29
\S_ID_EX|Src_A_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \S_ID_EX|R_RS|R\(1),
	sload => VCC,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|Src_A_reg\(1));

-- Location: LCCOMB_X109_Y15_N30
\ALU|R[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|R\(1) = \Mux_2_1_EX_1|Y[1]~0_combout\ $ (\ALU|carry_v[1]~0_combout\ $ (\ALUControl|Add_Sub~combout\ $ (\S_ID_EX|Src_A_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_2_1_EX_1|Y[1]~0_combout\,
	datab => \ALU|carry_v[1]~0_combout\,
	datac => \ALUControl|Add_Sub~combout\,
	datad => \S_ID_EX|Src_A_reg\(1),
	combout => \ALU|R\(1));

-- Location: FF_X109_Y15_N31
\S_EX_MEM|R_ALU_R|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \ALU|R\(1),
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_EX_MEM|R_ALU_R|R\(1));

-- Location: FF_X110_Y15_N29
\S_EX_MEM|ALU_R_MEM_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \S_EX_MEM|R_ALU_R|R\(1),
	sload => VCC,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_EX_MEM|ALU_R_MEM_reg\(1));

-- Location: LCCOMB_X110_Y15_N12
\Data_Mem|mem~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Mem|mem~25_combout\ = (!\S_EX_MEM|ALU_R_MEM_reg\(3) & ((\S_EX_MEM|ALU_R_MEM_reg\(1) & (!\S_EX_MEM|ALU_R_MEM_reg\(2) & \S_EX_MEM|ALU_R_MEM_reg\(0))) # (!\S_EX_MEM|ALU_R_MEM_reg\(1) & (\S_EX_MEM|ALU_R_MEM_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_EX_MEM|ALU_R_MEM_reg\(3),
	datab => \S_EX_MEM|ALU_R_MEM_reg\(1),
	datac => \S_EX_MEM|ALU_R_MEM_reg\(2),
	datad => \S_EX_MEM|ALU_R_MEM_reg\(0),
	combout => \Data_Mem|mem~25_combout\);

-- Location: LCCOMB_X110_Y12_N14
\Data_Mem|read_reg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Mem|read_reg~3_combout\ = (\Data_Mem|mem~25_combout\ & (\S_EX_MEM|M_out_reg\(1) & !\S_EX_MEM|ALU_R_MEM_reg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mem|mem~25_combout\,
	datac => \S_EX_MEM|M_out_reg\(1),
	datad => \S_EX_MEM|ALU_R_MEM_reg\(4),
	combout => \Data_Mem|read_reg~3_combout\);

-- Location: FF_X110_Y12_N15
\Data_Mem|read_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Data_Mem|read_reg~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem|read_reg\(3));

-- Location: FF_X110_Y12_N3
\S_MEM_WB|R_ReadData|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Data_Mem|read_reg\(3),
	sload => VCC,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_MEM_WB|R_ReadData|R\(3));

-- Location: FF_X107_Y12_N3
\S_MEM_WB|Read_Data_WB_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \S_MEM_WB|R_ReadData|R\(3),
	sload => VCC,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_MEM_WB|Read_Data_WB_reg\(3));

-- Location: LCCOMB_X109_Y13_N24
\S_MEM_WB|R_ALU_R|R[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_MEM_WB|R_ALU_R|R[3]~feeder_combout\ = \S_EX_MEM|ALU_R_MEM_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_EX_MEM|ALU_R_MEM_reg\(3),
	combout => \S_MEM_WB|R_ALU_R|R[3]~feeder_combout\);

-- Location: FF_X109_Y13_N25
\S_MEM_WB|R_ALU_R|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_MEM_WB|R_ALU_R|R[3]~feeder_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_MEM_WB|R_ALU_R|R\(3));

-- Location: LCCOMB_X108_Y13_N28
\S_MEM_WB|ALU_R_WB_reg[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_MEM_WB|ALU_R_WB_reg[3]~feeder_combout\ = \S_MEM_WB|R_ALU_R|R\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_MEM_WB|R_ALU_R|R\(3),
	combout => \S_MEM_WB|ALU_R_WB_reg[3]~feeder_combout\);

-- Location: FF_X108_Y13_N29
\S_MEM_WB|ALU_R_WB_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_MEM_WB|ALU_R_WB_reg[3]~feeder_combout\,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_MEM_WB|ALU_R_WB_reg\(3));

-- Location: LCCOMB_X107_Y12_N2
\Mux_2_1_WB|Y[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_2_1_WB|Y[3]~3_combout\ = (\S_MEM_WB|WB_out_reg\(1) & (\S_MEM_WB|Read_Data_WB_reg\(3))) # (!\S_MEM_WB|WB_out_reg\(1) & ((\S_MEM_WB|ALU_R_WB_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_MEM_WB|WB_out_reg\(1),
	datac => \S_MEM_WB|Read_Data_WB_reg\(3),
	datad => \S_MEM_WB|ALU_R_WB_reg\(3),
	combout => \Mux_2_1_WB|Y[3]~3_combout\);

-- Location: FF_X109_Y12_N23
\S_Registers|regs[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[3]~3_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[0][3]~q\);

-- Location: FF_X110_Y15_N1
\S_ID_EX|R_RT|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \S_Registers|regs[0][3]~q\,
	sload => VCC,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|R_RT|R\(3));

-- Location: FF_X109_Y15_N27
\S_ID_EX|RT_Data_EX_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \S_ID_EX|R_RT|R\(3),
	sload => VCC,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|RT_Data_EX_reg\(3));

-- Location: LCCOMB_X109_Y15_N26
\Mux_2_1_EX_1|Y[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_2_1_EX_1|Y[3]~2_combout\ = (\S_ID_EX|RT_Data_EX_reg\(3) & !\S_ID_EX|EX_out_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S_ID_EX|RT_Data_EX_reg\(3),
	datad => \S_ID_EX|EX_out_reg\(1),
	combout => \Mux_2_1_EX_1|Y[3]~2_combout\);

-- Location: FF_X109_Y12_N9
\S_Registers|regs[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[3]~3_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[1][3]~q\);

-- Location: LCCOMB_X109_Y12_N22
\S_Registers|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux12~2_combout\ = (\S_IF_ID|Inst_ID_reg\(0) & ((\S_IF_ID|Inst_ID_reg\(1)) # ((\S_Registers|regs[1][3]~q\)))) # (!\S_IF_ID|Inst_ID_reg\(0) & (!\S_IF_ID|Inst_ID_reg\(1) & (\S_Registers|regs[0][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IF_ID|Inst_ID_reg\(0),
	datab => \S_IF_ID|Inst_ID_reg\(1),
	datac => \S_Registers|regs[0][3]~q\,
	datad => \S_Registers|regs[1][3]~q\,
	combout => \S_Registers|Mux12~2_combout\);

-- Location: FF_X108_Y12_N11
\S_Registers|regs[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[3]~3_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[2][3]~q\);

-- Location: LCCOMB_X107_Y12_N30
\S_Registers|regs[3][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|regs[3][3]~feeder_combout\ = \Mux_2_1_WB|Y[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux_2_1_WB|Y[3]~3_combout\,
	combout => \S_Registers|regs[3][3]~feeder_combout\);

-- Location: FF_X107_Y12_N31
\S_Registers|regs[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_Registers|regs[3][3]~feeder_combout\,
	ena => \S_Registers|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[3][3]~q\);

-- Location: LCCOMB_X108_Y12_N10
\S_Registers|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux12~3_combout\ = (\S_Registers|Mux12~2_combout\ & (((\S_Registers|regs[3][3]~q\)) # (!\S_IF_ID|Inst_ID_reg\(1)))) # (!\S_Registers|Mux12~2_combout\ & (\S_IF_ID|Inst_ID_reg\(1) & (\S_Registers|regs[2][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|Mux12~2_combout\,
	datab => \S_IF_ID|Inst_ID_reg\(1),
	datac => \S_Registers|regs[2][3]~q\,
	datad => \S_Registers|regs[3][3]~q\,
	combout => \S_Registers|Mux12~3_combout\);

-- Location: FF_X108_Y9_N21
\S_Registers|regs[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[3]~3_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[5][3]~q\);

-- Location: FF_X108_Y9_N19
\S_Registers|regs[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[3]~3_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[7][3]~q\);

-- Location: FF_X107_Y9_N29
\S_Registers|regs[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[3]~3_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[6][3]~q\);

-- Location: FF_X106_Y9_N29
\S_Registers|regs[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[3]~3_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[4][3]~q\);

-- Location: LCCOMB_X106_Y9_N28
\S_Registers|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux12~0_combout\ = (\S_IF_ID|Inst_ID_reg\(1) & ((\S_Registers|regs[6][3]~q\) # ((\S_IF_ID|Inst_ID_reg\(0))))) # (!\S_IF_ID|Inst_ID_reg\(1) & (((\S_Registers|regs[4][3]~q\ & !\S_IF_ID|Inst_ID_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IF_ID|Inst_ID_reg\(1),
	datab => \S_Registers|regs[6][3]~q\,
	datac => \S_Registers|regs[4][3]~q\,
	datad => \S_IF_ID|Inst_ID_reg\(0),
	combout => \S_Registers|Mux12~0_combout\);

-- Location: LCCOMB_X108_Y9_N18
\S_Registers|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux12~1_combout\ = (\S_IF_ID|Inst_ID_reg\(0) & ((\S_Registers|Mux12~0_combout\ & ((\S_Registers|regs[7][3]~q\))) # (!\S_Registers|Mux12~0_combout\ & (\S_Registers|regs[5][3]~q\)))) # (!\S_IF_ID|Inst_ID_reg\(0) & 
-- (((\S_Registers|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IF_ID|Inst_ID_reg\(0),
	datab => \S_Registers|regs[5][3]~q\,
	datac => \S_Registers|regs[7][3]~q\,
	datad => \S_Registers|Mux12~0_combout\,
	combout => \S_Registers|Mux12~1_combout\);

-- Location: LCCOMB_X108_Y12_N14
\S_Registers|Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux12~4_combout\ = (\S_IF_ID|Inst_ID_reg\(2) & ((\S_Registers|Mux12~1_combout\))) # (!\S_IF_ID|Inst_ID_reg\(2) & (\S_Registers|Mux12~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S_Registers|Mux12~3_combout\,
	datac => \S_IF_ID|Inst_ID_reg\(2),
	datad => \S_Registers|Mux12~1_combout\,
	combout => \S_Registers|Mux12~4_combout\);

-- Location: FF_X108_Y12_N15
\S_ID_EX|R_RS|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_Registers|Mux12~4_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|R_RS|R\(3));

-- Location: FF_X108_Y15_N17
\S_ID_EX|Src_A_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \S_ID_EX|R_RS|R\(3),
	sload => VCC,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|Src_A_reg\(3));

-- Location: LCCOMB_X108_Y15_N2
\ALU|carry_v[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|carry_v[3]~2_combout\ = (\S_ID_EX|Src_A_reg\(2) & ((\ALU|carry_v[2]~1_combout\) # (\Mux_2_1_EX_1|Y[2]~1_combout\ $ (\ALUControl|Add_Sub~combout\)))) # (!\S_ID_EX|Src_A_reg\(2) & (\ALU|carry_v[2]~1_combout\ & (\Mux_2_1_EX_1|Y[2]~1_combout\ $ 
-- (\ALUControl|Add_Sub~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_2_1_EX_1|Y[2]~1_combout\,
	datab => \ALUControl|Add_Sub~combout\,
	datac => \S_ID_EX|Src_A_reg\(2),
	datad => \ALU|carry_v[2]~1_combout\,
	combout => \ALU|carry_v[3]~2_combout\);

-- Location: LCCOMB_X109_Y15_N10
\ALU|R[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|R\(3) = \Mux_2_1_EX_1|Y[3]~2_combout\ $ (\ALUControl|Add_Sub~combout\ $ (\S_ID_EX|Src_A_reg\(3) $ (\ALU|carry_v[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_2_1_EX_1|Y[3]~2_combout\,
	datab => \ALUControl|Add_Sub~combout\,
	datac => \S_ID_EX|Src_A_reg\(3),
	datad => \ALU|carry_v[3]~2_combout\,
	combout => \ALU|R\(3));

-- Location: FF_X109_Y15_N11
\S_EX_MEM|R_ALU_R|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \ALU|R\(3),
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_EX_MEM|R_ALU_R|R\(3));

-- Location: FF_X110_Y15_N11
\S_EX_MEM|ALU_R_MEM_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \S_EX_MEM|R_ALU_R|R\(3),
	sload => VCC,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_EX_MEM|ALU_R_MEM_reg\(3));

-- Location: LCCOMB_X110_Y15_N16
\Data_Mem|read_reg~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Mem|read_reg~4_combout\ = (!\S_EX_MEM|ALU_R_MEM_reg\(4) & (\S_EX_MEM|ALU_R_MEM_reg\(1) & (\S_EX_MEM|M_out_reg\(1) & !\S_EX_MEM|ALU_R_MEM_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_EX_MEM|ALU_R_MEM_reg\(4),
	datab => \S_EX_MEM|ALU_R_MEM_reg\(1),
	datac => \S_EX_MEM|M_out_reg\(1),
	datad => \S_EX_MEM|ALU_R_MEM_reg\(0),
	combout => \Data_Mem|read_reg~4_combout\);

-- Location: LCCOMB_X110_Y12_N20
\Data_Mem|read_reg~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Mem|read_reg~5_combout\ = (\S_EX_MEM|ALU_R_MEM_reg\(2) & (!\S_EX_MEM|ALU_R_MEM_reg\(3) & \Data_Mem|read_reg~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S_EX_MEM|ALU_R_MEM_reg\(2),
	datac => \S_EX_MEM|ALU_R_MEM_reg\(3),
	datad => \Data_Mem|read_reg~4_combout\,
	combout => \Data_Mem|read_reg~5_combout\);

-- Location: FF_X110_Y12_N21
\Data_Mem|read_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Data_Mem|read_reg~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem|read_reg\(4));

-- Location: LCCOMB_X110_Y12_N4
\S_MEM_WB|R_ReadData|R[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_MEM_WB|R_ReadData|R[4]~feeder_combout\ = \Data_Mem|read_reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_Mem|read_reg\(4),
	combout => \S_MEM_WB|R_ReadData|R[4]~feeder_combout\);

-- Location: FF_X110_Y12_N5
\S_MEM_WB|R_ReadData|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_MEM_WB|R_ReadData|R[4]~feeder_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_MEM_WB|R_ReadData|R\(4));

-- Location: FF_X107_Y12_N21
\S_MEM_WB|Read_Data_WB_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \S_MEM_WB|R_ReadData|R\(4),
	sload => VCC,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_MEM_WB|Read_Data_WB_reg\(4));

-- Location: LCCOMB_X107_Y12_N14
\Mux_2_1_WB|Y[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_2_1_WB|Y[4]~4_combout\ = (\S_MEM_WB|WB_out_reg\(1) & ((\S_MEM_WB|Read_Data_WB_reg\(4)))) # (!\S_MEM_WB|WB_out_reg\(1) & (\S_MEM_WB|ALU_R_WB_reg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_MEM_WB|WB_out_reg\(1),
	datac => \S_MEM_WB|ALU_R_WB_reg\(4),
	datad => \S_MEM_WB|Read_Data_WB_reg\(4),
	combout => \Mux_2_1_WB|Y[4]~4_combout\);

-- Location: FF_X108_Y9_N1
\S_Registers|regs[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[4]~4_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[5][4]~q\);

-- Location: FF_X108_Y9_N7
\S_Registers|regs[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[4]~4_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[7][4]~q\);

-- Location: FF_X106_Y9_N15
\S_Registers|regs[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[4]~4_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[4][4]~q\);

-- Location: FF_X107_Y9_N3
\S_Registers|regs[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[4]~4_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[6][4]~q\);

-- Location: LCCOMB_X106_Y9_N14
\S_Registers|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux11~0_combout\ = (\S_IF_ID|Inst_ID_reg\(1) & ((\S_IF_ID|Inst_ID_reg\(0)) # ((\S_Registers|regs[6][4]~q\)))) # (!\S_IF_ID|Inst_ID_reg\(1) & (!\S_IF_ID|Inst_ID_reg\(0) & (\S_Registers|regs[4][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IF_ID|Inst_ID_reg\(1),
	datab => \S_IF_ID|Inst_ID_reg\(0),
	datac => \S_Registers|regs[4][4]~q\,
	datad => \S_Registers|regs[6][4]~q\,
	combout => \S_Registers|Mux11~0_combout\);

-- Location: LCCOMB_X108_Y9_N6
\S_Registers|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux11~1_combout\ = (\S_IF_ID|Inst_ID_reg\(0) & ((\S_Registers|Mux11~0_combout\ & ((\S_Registers|regs[7][4]~q\))) # (!\S_Registers|Mux11~0_combout\ & (\S_Registers|regs[5][4]~q\)))) # (!\S_IF_ID|Inst_ID_reg\(0) & 
-- (((\S_Registers|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IF_ID|Inst_ID_reg\(0),
	datab => \S_Registers|regs[5][4]~q\,
	datac => \S_Registers|regs[7][4]~q\,
	datad => \S_Registers|Mux11~0_combout\,
	combout => \S_Registers|Mux11~1_combout\);

-- Location: LCCOMB_X107_Y12_N8
\S_Registers|regs[3][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|regs[3][4]~feeder_combout\ = \Mux_2_1_WB|Y[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux_2_1_WB|Y[4]~4_combout\,
	combout => \S_Registers|regs[3][4]~feeder_combout\);

-- Location: FF_X107_Y12_N9
\S_Registers|regs[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_Registers|regs[3][4]~feeder_combout\,
	ena => \S_Registers|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[3][4]~q\);

-- Location: FF_X108_Y11_N25
\S_Registers|regs[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[4]~4_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[2][4]~q\);

-- Location: FF_X109_Y12_N15
\S_Registers|regs[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[4]~4_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[0][4]~q\);

-- Location: FF_X109_Y12_N21
\S_Registers|regs[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[4]~4_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[1][4]~q\);

-- Location: LCCOMB_X109_Y12_N14
\S_Registers|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux11~2_combout\ = (\S_IF_ID|Inst_ID_reg\(0) & ((\S_IF_ID|Inst_ID_reg\(1)) # ((\S_Registers|regs[1][4]~q\)))) # (!\S_IF_ID|Inst_ID_reg\(0) & (!\S_IF_ID|Inst_ID_reg\(1) & (\S_Registers|regs[0][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IF_ID|Inst_ID_reg\(0),
	datab => \S_IF_ID|Inst_ID_reg\(1),
	datac => \S_Registers|regs[0][4]~q\,
	datad => \S_Registers|regs[1][4]~q\,
	combout => \S_Registers|Mux11~2_combout\);

-- Location: LCCOMB_X108_Y11_N24
\S_Registers|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux11~3_combout\ = (\S_IF_ID|Inst_ID_reg\(1) & ((\S_Registers|Mux11~2_combout\ & (\S_Registers|regs[3][4]~q\)) # (!\S_Registers|Mux11~2_combout\ & ((\S_Registers|regs[2][4]~q\))))) # (!\S_IF_ID|Inst_ID_reg\(1) & 
-- (((\S_Registers|Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|regs[3][4]~q\,
	datab => \S_IF_ID|Inst_ID_reg\(1),
	datac => \S_Registers|regs[2][4]~q\,
	datad => \S_Registers|Mux11~2_combout\,
	combout => \S_Registers|Mux11~3_combout\);

-- Location: LCCOMB_X108_Y11_N8
\S_Registers|Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux11~4_combout\ = (\S_IF_ID|Inst_ID_reg\(2) & (\S_Registers|Mux11~1_combout\)) # (!\S_IF_ID|Inst_ID_reg\(2) & ((\S_Registers|Mux11~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IF_ID|Inst_ID_reg\(2),
	datac => \S_Registers|Mux11~1_combout\,
	datad => \S_Registers|Mux11~3_combout\,
	combout => \S_Registers|Mux11~4_combout\);

-- Location: FF_X108_Y11_N9
\S_ID_EX|R_RS|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_Registers|Mux11~4_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|R_RS|R\(4));

-- Location: FF_X108_Y15_N7
\S_ID_EX|Src_A_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \S_ID_EX|R_RS|R\(4),
	sload => VCC,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|Src_A_reg\(4));

-- Location: LCCOMB_X108_Y15_N16
\ALU|carry_v[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|carry_v[4]~3_combout\ = (\S_ID_EX|Src_A_reg\(3) & ((\ALU|carry_v[3]~2_combout\) # (\Mux_2_1_EX_1|Y[3]~2_combout\ $ (\ALUControl|Add_Sub~combout\)))) # (!\S_ID_EX|Src_A_reg\(3) & (\ALU|carry_v[3]~2_combout\ & (\Mux_2_1_EX_1|Y[3]~2_combout\ $ 
-- (\ALUControl|Add_Sub~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_2_1_EX_1|Y[3]~2_combout\,
	datab => \ALUControl|Add_Sub~combout\,
	datac => \S_ID_EX|Src_A_reg\(3),
	datad => \ALU|carry_v[3]~2_combout\,
	combout => \ALU|carry_v[4]~3_combout\);

-- Location: FF_X109_Y13_N21
\S_ID_EX|R_RT|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \S_Registers|regs[0][4]~q\,
	sload => VCC,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|R_RT|R\(4));

-- Location: FF_X109_Y15_N21
\S_ID_EX|RT_Data_EX_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \S_ID_EX|R_RT|R\(4),
	sload => VCC,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|RT_Data_EX_reg\(4));

-- Location: LCCOMB_X109_Y15_N20
\Mux_2_1_EX_1|Y[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_2_1_EX_1|Y[4]~3_combout\ = (\S_ID_EX|RT_Data_EX_reg\(4) & !\S_ID_EX|EX_out_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S_ID_EX|RT_Data_EX_reg\(4),
	datad => \S_ID_EX|EX_out_reg\(1),
	combout => \Mux_2_1_EX_1|Y[4]~3_combout\);

-- Location: LCCOMB_X109_Y15_N8
\ALU|R[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|R\(4) = \S_ID_EX|Src_A_reg\(4) $ (\ALUControl|Add_Sub~combout\ $ (\ALU|carry_v[4]~3_combout\ $ (\Mux_2_1_EX_1|Y[4]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_ID_EX|Src_A_reg\(4),
	datab => \ALUControl|Add_Sub~combout\,
	datac => \ALU|carry_v[4]~3_combout\,
	datad => \Mux_2_1_EX_1|Y[4]~3_combout\,
	combout => \ALU|R\(4));

-- Location: FF_X109_Y15_N9
\S_EX_MEM|R_ALU_R|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \ALU|R\(4),
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_EX_MEM|R_ALU_R|R\(4));

-- Location: LCCOMB_X110_Y15_N6
\S_EX_MEM|ALU_R_MEM_reg[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_EX_MEM|ALU_R_MEM_reg[4]~feeder_combout\ = \S_EX_MEM|R_ALU_R|R\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_EX_MEM|R_ALU_R|R\(4),
	combout => \S_EX_MEM|ALU_R_MEM_reg[4]~feeder_combout\);

-- Location: FF_X110_Y15_N7
\S_EX_MEM|ALU_R_MEM_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_EX_MEM|ALU_R_MEM_reg[4]~feeder_combout\,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_EX_MEM|ALU_R_MEM_reg\(4));

-- Location: LCCOMB_X110_Y15_N28
\Data_Mem|mem~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Mem|mem~23_combout\ = (!\S_EX_MEM|ALU_R_MEM_reg\(4) & (!\S_EX_MEM|ALU_R_MEM_reg\(3) & (\S_EX_MEM|ALU_R_MEM_reg\(0) $ (\S_EX_MEM|ALU_R_MEM_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_EX_MEM|ALU_R_MEM_reg\(4),
	datab => \S_EX_MEM|ALU_R_MEM_reg\(0),
	datac => \S_EX_MEM|ALU_R_MEM_reg\(1),
	datad => \S_EX_MEM|ALU_R_MEM_reg\(3),
	combout => \Data_Mem|mem~23_combout\);

-- Location: LCCOMB_X110_Y12_N18
\Data_Mem|read_reg~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Mem|read_reg~1_combout\ = (\S_EX_MEM|M_out_reg\(1) & \Data_Mem|mem~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S_EX_MEM|M_out_reg\(1),
	datad => \Data_Mem|mem~23_combout\,
	combout => \Data_Mem|read_reg~1_combout\);

-- Location: FF_X110_Y12_N19
\Data_Mem|read_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Data_Mem|read_reg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem|read_reg\(1));

-- Location: LCCOMB_X110_Y12_N28
\S_MEM_WB|R_ReadData|R[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_MEM_WB|R_ReadData|R[1]~feeder_combout\ = \Data_Mem|read_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_Mem|read_reg\(1),
	combout => \S_MEM_WB|R_ReadData|R[1]~feeder_combout\);

-- Location: FF_X110_Y12_N29
\S_MEM_WB|R_ReadData|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_MEM_WB|R_ReadData|R[1]~feeder_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_MEM_WB|R_ReadData|R\(1));

-- Location: FF_X107_Y12_N17
\S_MEM_WB|Read_Data_WB_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \S_MEM_WB|R_ReadData|R\(1),
	sload => VCC,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_MEM_WB|Read_Data_WB_reg\(1));

-- Location: LCCOMB_X110_Y15_N18
\S_MEM_WB|R_ALU_R|R[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_MEM_WB|R_ALU_R|R[1]~feeder_combout\ = \S_EX_MEM|ALU_R_MEM_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_EX_MEM|ALU_R_MEM_reg\(1),
	combout => \S_MEM_WB|R_ALU_R|R[1]~feeder_combout\);

-- Location: FF_X110_Y15_N19
\S_MEM_WB|R_ALU_R|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_MEM_WB|R_ALU_R|R[1]~feeder_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_MEM_WB|R_ALU_R|R\(1));

-- Location: LCCOMB_X110_Y15_N14
\S_MEM_WB|ALU_R_WB_reg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_MEM_WB|ALU_R_WB_reg[1]~feeder_combout\ = \S_MEM_WB|R_ALU_R|R\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_MEM_WB|R_ALU_R|R\(1),
	combout => \S_MEM_WB|ALU_R_WB_reg[1]~feeder_combout\);

-- Location: FF_X110_Y15_N15
\S_MEM_WB|ALU_R_WB_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_MEM_WB|ALU_R_WB_reg[1]~feeder_combout\,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_MEM_WB|ALU_R_WB_reg\(1));

-- Location: LCCOMB_X107_Y12_N16
\Mux_2_1_WB|Y[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_2_1_WB|Y[1]~1_combout\ = (\S_MEM_WB|WB_out_reg\(1) & (\S_MEM_WB|Read_Data_WB_reg\(1))) # (!\S_MEM_WB|WB_out_reg\(1) & ((\S_MEM_WB|ALU_R_WB_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_MEM_WB|WB_out_reg\(1),
	datac => \S_MEM_WB|Read_Data_WB_reg\(1),
	datad => \S_MEM_WB|ALU_R_WB_reg\(1),
	combout => \Mux_2_1_WB|Y[1]~1_combout\);

-- Location: FF_X109_Y12_N27
\S_Registers|regs[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[1]~1_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[0][1]~q\);

-- Location: FF_X110_Y12_N11
\S_ID_EX|R_RT|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \S_Registers|regs[0][1]~q\,
	sload => VCC,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|R_RT|R\(1));

-- Location: FF_X109_Y15_N7
\S_ID_EX|RT_Data_EX_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \S_ID_EX|R_RT|R\(1),
	sload => VCC,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|RT_Data_EX_reg\(1));

-- Location: LCCOMB_X109_Y15_N6
\Mux_2_1_EX_1|Y[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_2_1_EX_1|Y[1]~0_combout\ = (\S_ID_EX|EX_out_reg\(1) & (\S_ID_EX|RD_EX_reg\(0))) # (!\S_ID_EX|EX_out_reg\(1) & ((\S_ID_EX|RT_Data_EX_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_ID_EX|RD_EX_reg\(0),
	datac => \S_ID_EX|RT_Data_EX_reg\(1),
	datad => \S_ID_EX|EX_out_reg\(1),
	combout => \Mux_2_1_EX_1|Y[1]~0_combout\);

-- Location: LCCOMB_X108_Y15_N28
\ALU|carry_v[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|carry_v[2]~1_combout\ = (\S_ID_EX|Src_A_reg\(1) & ((\ALU|carry_v[1]~0_combout\) # (\Mux_2_1_EX_1|Y[1]~0_combout\ $ (\ALUControl|Add_Sub~combout\)))) # (!\S_ID_EX|Src_A_reg\(1) & (\ALU|carry_v[1]~0_combout\ & (\Mux_2_1_EX_1|Y[1]~0_combout\ $ 
-- (\ALUControl|Add_Sub~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_2_1_EX_1|Y[1]~0_combout\,
	datab => \ALUControl|Add_Sub~combout\,
	datac => \S_ID_EX|Src_A_reg\(1),
	datad => \ALU|carry_v[1]~0_combout\,
	combout => \ALU|carry_v[2]~1_combout\);

-- Location: LCCOMB_X109_Y15_N16
\ALU|R[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|R\(2) = \S_ID_EX|Src_A_reg\(2) $ (\Mux_2_1_EX_1|Y[2]~1_combout\ $ (\ALUControl|Add_Sub~combout\ $ (\ALU|carry_v[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_ID_EX|Src_A_reg\(2),
	datab => \Mux_2_1_EX_1|Y[2]~1_combout\,
	datac => \ALUControl|Add_Sub~combout\,
	datad => \ALU|carry_v[2]~1_combout\,
	combout => \ALU|R\(2));

-- Location: FF_X109_Y15_N17
\S_EX_MEM|R_ALU_R|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \ALU|R\(2),
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_EX_MEM|R_ALU_R|R\(2));

-- Location: FF_X110_Y15_N13
\S_EX_MEM|ALU_R_MEM_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \S_EX_MEM|R_ALU_R|R\(2),
	sload => VCC,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_EX_MEM|ALU_R_MEM_reg\(2));

-- Location: LCCOMB_X110_Y12_N8
\S_MEM_WB|R_ALU_R|R[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_MEM_WB|R_ALU_R|R[2]~feeder_combout\ = \S_EX_MEM|ALU_R_MEM_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S_EX_MEM|ALU_R_MEM_reg\(2),
	combout => \S_MEM_WB|R_ALU_R|R[2]~feeder_combout\);

-- Location: FF_X110_Y12_N9
\S_MEM_WB|R_ALU_R|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_MEM_WB|R_ALU_R|R[2]~feeder_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_MEM_WB|R_ALU_R|R\(2));

-- Location: FF_X107_Y12_N25
\S_MEM_WB|ALU_R_WB_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \S_MEM_WB|R_ALU_R|R\(2),
	sload => VCC,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_MEM_WB|ALU_R_WB_reg\(2));

-- Location: LCCOMB_X110_Y15_N2
\Data_Mem|mem~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Mem|mem~24_combout\ = (!\S_EX_MEM|ALU_R_MEM_reg\(3) & ((\S_EX_MEM|ALU_R_MEM_reg\(2) & (!\S_EX_MEM|ALU_R_MEM_reg\(1))) # (!\S_EX_MEM|ALU_R_MEM_reg\(2) & (\S_EX_MEM|ALU_R_MEM_reg\(1) & !\S_EX_MEM|ALU_R_MEM_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_EX_MEM|ALU_R_MEM_reg\(2),
	datab => \S_EX_MEM|ALU_R_MEM_reg\(1),
	datac => \S_EX_MEM|ALU_R_MEM_reg\(0),
	datad => \S_EX_MEM|ALU_R_MEM_reg\(3),
	combout => \Data_Mem|mem~24_combout\);

-- Location: LCCOMB_X110_Y12_N0
\Data_Mem|read_reg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Mem|read_reg~2_combout\ = (\Data_Mem|mem~24_combout\ & (\S_EX_MEM|M_out_reg\(1) & !\S_EX_MEM|ALU_R_MEM_reg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Data_Mem|mem~24_combout\,
	datac => \S_EX_MEM|M_out_reg\(1),
	datad => \S_EX_MEM|ALU_R_MEM_reg\(4),
	combout => \Data_Mem|read_reg~2_combout\);

-- Location: FF_X110_Y12_N1
\Data_Mem|read_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Data_Mem|read_reg~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Mem|read_reg\(2));

-- Location: LCCOMB_X110_Y12_N26
\S_MEM_WB|R_ReadData|R[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_MEM_WB|R_ReadData|R[2]~feeder_combout\ = \Data_Mem|read_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_Mem|read_reg\(2),
	combout => \S_MEM_WB|R_ReadData|R[2]~feeder_combout\);

-- Location: FF_X110_Y12_N27
\S_MEM_WB|R_ReadData|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_MEM_WB|R_ReadData|R[2]~feeder_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_MEM_WB|R_ReadData|R\(2));

-- Location: LCCOMB_X107_Y12_N6
\S_MEM_WB|Read_Data_WB_reg[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_MEM_WB|Read_Data_WB_reg[2]~feeder_combout\ = \S_MEM_WB|R_ReadData|R\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_MEM_WB|R_ReadData|R\(2),
	combout => \S_MEM_WB|Read_Data_WB_reg[2]~feeder_combout\);

-- Location: FF_X107_Y12_N7
\S_MEM_WB|Read_Data_WB_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_MEM_WB|Read_Data_WB_reg[2]~feeder_combout\,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_MEM_WB|Read_Data_WB_reg\(2));

-- Location: LCCOMB_X107_Y12_N24
\Mux_2_1_WB|Y[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_2_1_WB|Y[2]~2_combout\ = (\S_MEM_WB|WB_out_reg\(1) & ((\S_MEM_WB|Read_Data_WB_reg\(2)))) # (!\S_MEM_WB|WB_out_reg\(1) & (\S_MEM_WB|ALU_R_WB_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_MEM_WB|WB_out_reg\(1),
	datac => \S_MEM_WB|ALU_R_WB_reg\(2),
	datad => \S_MEM_WB|Read_Data_WB_reg\(2),
	combout => \Mux_2_1_WB|Y[2]~2_combout\);

-- Location: LCCOMB_X107_Y12_N0
\S_Registers|regs[3][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|regs[3][2]~feeder_combout\ = \Mux_2_1_WB|Y[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux_2_1_WB|Y[2]~2_combout\,
	combout => \S_Registers|regs[3][2]~feeder_combout\);

-- Location: FF_X107_Y12_N1
\S_Registers|regs[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_Registers|regs[3][2]~feeder_combout\,
	ena => \S_Registers|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[3][2]~q\);

-- Location: LCCOMB_X109_Y12_N16
\S_Registers|Mux45~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux45~2_combout\ = (\sw[1]~input_o\ & (((\sw[0]~input_o\)))) # (!\sw[1]~input_o\ & ((\sw[0]~input_o\ & ((\S_Registers|regs[1][2]~q\))) # (!\sw[0]~input_o\ & (\S_Registers|regs[0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \S_Registers|regs[0][2]~q\,
	datac => \S_Registers|regs[1][2]~q\,
	datad => \sw[0]~input_o\,
	combout => \S_Registers|Mux45~2_combout\);

-- Location: LCCOMB_X108_Y12_N8
\S_Registers|Mux45~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux45~3_combout\ = (\S_Registers|Mux45~2_combout\ & ((\S_Registers|regs[3][2]~q\) # ((!\sw[1]~input_o\)))) # (!\S_Registers|Mux45~2_combout\ & (((\S_Registers|regs[2][2]~q\ & \sw[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|regs[3][2]~q\,
	datab => \S_Registers|Mux45~2_combout\,
	datac => \S_Registers|regs[2][2]~q\,
	datad => \sw[1]~input_o\,
	combout => \S_Registers|Mux45~3_combout\);

-- Location: LCCOMB_X107_Y9_N14
\S_Registers|Mux45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux45~0_combout\ = (\sw[1]~input_o\ & (((\S_Registers|regs[6][2]~q\) # (\sw[0]~input_o\)))) # (!\sw[1]~input_o\ & (\S_Registers|regs[4][2]~q\ & ((!\sw[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|regs[4][2]~q\,
	datab => \sw[1]~input_o\,
	datac => \S_Registers|regs[6][2]~q\,
	datad => \sw[0]~input_o\,
	combout => \S_Registers|Mux45~0_combout\);

-- Location: LCCOMB_X108_Y9_N28
\S_Registers|Mux45~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux45~1_combout\ = (\S_Registers|Mux45~0_combout\ & ((\S_Registers|regs[7][2]~q\) # ((!\sw[0]~input_o\)))) # (!\S_Registers|Mux45~0_combout\ & (((\S_Registers|regs[5][2]~q\ & \sw[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|regs[7][2]~q\,
	datab => \S_Registers|Mux45~0_combout\,
	datac => \S_Registers|regs[5][2]~q\,
	datad => \sw[0]~input_o\,
	combout => \S_Registers|Mux45~1_combout\);

-- Location: LCCOMB_X111_Y12_N26
\S_Registers|Mux45~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux45~4_combout\ = (!\sw[3]~input_o\ & ((\sw[2]~input_o\ & ((\S_Registers|Mux45~1_combout\))) # (!\sw[2]~input_o\ & (\S_Registers|Mux45~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|Mux45~3_combout\,
	datab => \S_Registers|Mux45~1_combout\,
	datac => \sw[3]~input_o\,
	datad => \sw[2]~input_o\,
	combout => \S_Registers|Mux45~4_combout\);

-- Location: LCCOMB_X107_Y9_N0
\S_Registers|Mux46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux46~0_combout\ = (\sw[1]~input_o\ & ((\sw[0]~input_o\) # ((\S_Registers|regs[6][1]~q\)))) # (!\sw[1]~input_o\ & (!\sw[0]~input_o\ & ((\S_Registers|regs[4][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[0]~input_o\,
	datac => \S_Registers|regs[6][1]~q\,
	datad => \S_Registers|regs[4][1]~q\,
	combout => \S_Registers|Mux46~0_combout\);

-- Location: LCCOMB_X108_Y9_N4
\S_Registers|Mux46~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux46~1_combout\ = (\sw[0]~input_o\ & ((\S_Registers|Mux46~0_combout\ & (\S_Registers|regs[7][1]~q\)) # (!\S_Registers|Mux46~0_combout\ & ((\S_Registers|regs[5][1]~q\))))) # (!\sw[0]~input_o\ & (((\S_Registers|Mux46~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \S_Registers|regs[7][1]~q\,
	datac => \S_Registers|regs[5][1]~q\,
	datad => \S_Registers|Mux46~0_combout\,
	combout => \S_Registers|Mux46~1_combout\);

-- Location: LCCOMB_X109_Y12_N0
\S_Registers|Mux46~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux46~2_combout\ = (\sw[1]~input_o\ & (\sw[0]~input_o\)) # (!\sw[1]~input_o\ & ((\sw[0]~input_o\ & (\S_Registers|regs[1][1]~q\)) # (!\sw[0]~input_o\ & ((\S_Registers|regs[0][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[0]~input_o\,
	datac => \S_Registers|regs[1][1]~q\,
	datad => \S_Registers|regs[0][1]~q\,
	combout => \S_Registers|Mux46~2_combout\);

-- Location: LCCOMB_X108_Y12_N6
\S_Registers|Mux46~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux46~3_combout\ = (\sw[1]~input_o\ & ((\S_Registers|Mux46~2_combout\ & ((\S_Registers|regs[3][1]~q\))) # (!\S_Registers|Mux46~2_combout\ & (\S_Registers|regs[2][1]~q\)))) # (!\sw[1]~input_o\ & (((\S_Registers|Mux46~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \S_Registers|regs[2][1]~q\,
	datac => \S_Registers|Mux46~2_combout\,
	datad => \S_Registers|regs[3][1]~q\,
	combout => \S_Registers|Mux46~3_combout\);

-- Location: LCCOMB_X108_Y12_N0
\S_Registers|Mux46~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux46~4_combout\ = (!\sw[3]~input_o\ & ((\sw[2]~input_o\ & (\S_Registers|Mux46~1_combout\)) # (!\sw[2]~input_o\ & ((\S_Registers|Mux46~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \S_Registers|Mux46~1_combout\,
	datac => \sw[2]~input_o\,
	datad => \S_Registers|Mux46~3_combout\,
	combout => \S_Registers|Mux46~4_combout\);

-- Location: LCCOMB_X109_Y12_N8
\S_Registers|Mux44~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux44~2_combout\ = (\sw[1]~input_o\ & (\sw[0]~input_o\)) # (!\sw[1]~input_o\ & ((\sw[0]~input_o\ & (\S_Registers|regs[1][3]~q\)) # (!\sw[0]~input_o\ & ((\S_Registers|regs[0][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[0]~input_o\,
	datac => \S_Registers|regs[1][3]~q\,
	datad => \S_Registers|regs[0][3]~q\,
	combout => \S_Registers|Mux44~2_combout\);

-- Location: LCCOMB_X108_Y12_N24
\S_Registers|Mux44~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux44~3_combout\ = (\S_Registers|Mux44~2_combout\ & (((\S_Registers|regs[3][3]~q\) # (!\sw[1]~input_o\)))) # (!\S_Registers|Mux44~2_combout\ & (\S_Registers|regs[2][3]~q\ & ((\sw[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|regs[2][3]~q\,
	datab => \S_Registers|regs[3][3]~q\,
	datac => \S_Registers|Mux44~2_combout\,
	datad => \sw[1]~input_o\,
	combout => \S_Registers|Mux44~3_combout\);

-- Location: LCCOMB_X107_Y9_N28
\S_Registers|Mux44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux44~0_combout\ = (\sw[1]~input_o\ & ((\sw[0]~input_o\) # ((\S_Registers|regs[6][3]~q\)))) # (!\sw[1]~input_o\ & (!\sw[0]~input_o\ & ((\S_Registers|regs[4][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[0]~input_o\,
	datac => \S_Registers|regs[6][3]~q\,
	datad => \S_Registers|regs[4][3]~q\,
	combout => \S_Registers|Mux44~0_combout\);

-- Location: LCCOMB_X108_Y9_N20
\S_Registers|Mux44~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux44~1_combout\ = (\sw[0]~input_o\ & ((\S_Registers|Mux44~0_combout\ & ((\S_Registers|regs[7][3]~q\))) # (!\S_Registers|Mux44~0_combout\ & (\S_Registers|regs[5][3]~q\)))) # (!\sw[0]~input_o\ & (\S_Registers|Mux44~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \S_Registers|Mux44~0_combout\,
	datac => \S_Registers|regs[5][3]~q\,
	datad => \S_Registers|regs[7][3]~q\,
	combout => \S_Registers|Mux44~1_combout\);

-- Location: LCCOMB_X108_Y12_N22
\S_Registers|Mux44~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux44~4_combout\ = (!\sw[3]~input_o\ & ((\sw[2]~input_o\ & ((\S_Registers|Mux44~1_combout\))) # (!\sw[2]~input_o\ & (\S_Registers|Mux44~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \S_Registers|Mux44~3_combout\,
	datac => \sw[2]~input_o\,
	datad => \S_Registers|Mux44~1_combout\,
	combout => \S_Registers|Mux44~4_combout\);

-- Location: LCCOMB_X109_Y12_N4
\S_Registers|Mux47~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux47~2_combout\ = (\sw[1]~input_o\ & (\sw[0]~input_o\)) # (!\sw[1]~input_o\ & ((\sw[0]~input_o\ & (\S_Registers|regs[1][0]~q\)) # (!\sw[0]~input_o\ & ((\S_Registers|regs[0][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[0]~input_o\,
	datac => \S_Registers|regs[1][0]~q\,
	datad => \S_Registers|regs[0][0]~q\,
	combout => \S_Registers|Mux47~2_combout\);

-- Location: LCCOMB_X111_Y12_N22
\S_Registers|Mux47~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux47~3_combout\ = (\sw[1]~input_o\ & ((\S_Registers|Mux47~2_combout\ & ((\S_Registers|regs[3][0]~q\))) # (!\S_Registers|Mux47~2_combout\ & (\S_Registers|regs[2][0]~q\)))) # (!\sw[1]~input_o\ & (\S_Registers|Mux47~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \S_Registers|Mux47~2_combout\,
	datac => \S_Registers|regs[2][0]~q\,
	datad => \S_Registers|regs[3][0]~q\,
	combout => \S_Registers|Mux47~3_combout\);

-- Location: LCCOMB_X107_Y9_N22
\S_Registers|Mux47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux47~0_combout\ = (\sw[1]~input_o\ & ((\sw[0]~input_o\) # ((\S_Registers|regs[6][0]~q\)))) # (!\sw[1]~input_o\ & (!\sw[0]~input_o\ & ((\S_Registers|regs[4][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[0]~input_o\,
	datac => \S_Registers|regs[6][0]~q\,
	datad => \S_Registers|regs[4][0]~q\,
	combout => \S_Registers|Mux47~0_combout\);

-- Location: LCCOMB_X107_Y9_N20
\S_Registers|Mux47~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux47~1_combout\ = (\S_Registers|Mux47~0_combout\ & (((\S_Registers|regs[7][0]~q\)) # (!\sw[0]~input_o\))) # (!\S_Registers|Mux47~0_combout\ & (\sw[0]~input_o\ & (\S_Registers|regs[5][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|Mux47~0_combout\,
	datab => \sw[0]~input_o\,
	datac => \S_Registers|regs[5][0]~q\,
	datad => \S_Registers|regs[7][0]~q\,
	combout => \S_Registers|Mux47~1_combout\);

-- Location: LCCOMB_X111_Y12_N20
\S_Registers|Mux47~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux47~4_combout\ = (!\sw[3]~input_o\ & ((\sw[2]~input_o\ & ((\S_Registers|Mux47~1_combout\))) # (!\sw[2]~input_o\ & (\S_Registers|Mux47~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|Mux47~3_combout\,
	datab => \sw[3]~input_o\,
	datac => \S_Registers|Mux47~1_combout\,
	datad => \sw[2]~input_o\,
	combout => \S_Registers|Mux47~4_combout\);

-- Location: LCCOMB_X111_Y12_N28
\Led_1_de_4|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Led_1_de_4|Mux6~0_combout\ = (\S_Registers|Mux47~4_combout\ & ((\S_Registers|Mux44~4_combout\) # (\S_Registers|Mux45~4_combout\ $ (\S_Registers|Mux46~4_combout\)))) # (!\S_Registers|Mux47~4_combout\ & ((\S_Registers|Mux46~4_combout\) # 
-- (\S_Registers|Mux45~4_combout\ $ (\S_Registers|Mux44~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|Mux45~4_combout\,
	datab => \S_Registers|Mux46~4_combout\,
	datac => \S_Registers|Mux44~4_combout\,
	datad => \S_Registers|Mux47~4_combout\,
	combout => \Led_1_de_4|Mux6~0_combout\);

-- Location: LCCOMB_X111_Y12_N14
\Led_1_de_4|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Led_1_de_4|Mux5~0_combout\ = (\S_Registers|Mux45~4_combout\ & (\S_Registers|Mux47~4_combout\ & (\S_Registers|Mux46~4_combout\ $ (\S_Registers|Mux44~4_combout\)))) # (!\S_Registers|Mux45~4_combout\ & (!\S_Registers|Mux44~4_combout\ & 
-- ((\S_Registers|Mux46~4_combout\) # (\S_Registers|Mux47~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|Mux45~4_combout\,
	datab => \S_Registers|Mux46~4_combout\,
	datac => \S_Registers|Mux44~4_combout\,
	datad => \S_Registers|Mux47~4_combout\,
	combout => \Led_1_de_4|Mux5~0_combout\);

-- Location: LCCOMB_X111_Y12_N16
\Led_1_de_4|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Led_1_de_4|Mux4~0_combout\ = (\S_Registers|Mux46~4_combout\ & (((!\S_Registers|Mux44~4_combout\ & \S_Registers|Mux47~4_combout\)))) # (!\S_Registers|Mux46~4_combout\ & ((\S_Registers|Mux45~4_combout\ & (!\S_Registers|Mux44~4_combout\)) # 
-- (!\S_Registers|Mux45~4_combout\ & ((\S_Registers|Mux47~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|Mux45~4_combout\,
	datab => \S_Registers|Mux46~4_combout\,
	datac => \S_Registers|Mux44~4_combout\,
	datad => \S_Registers|Mux47~4_combout\,
	combout => \Led_1_de_4|Mux4~0_combout\);

-- Location: LCCOMB_X111_Y12_N10
\Led_1_de_4|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Led_1_de_4|Mux3~0_combout\ = (\S_Registers|Mux47~4_combout\ & (\S_Registers|Mux45~4_combout\ $ ((!\S_Registers|Mux46~4_combout\)))) # (!\S_Registers|Mux47~4_combout\ & ((\S_Registers|Mux45~4_combout\ & (!\S_Registers|Mux46~4_combout\ & 
-- !\S_Registers|Mux44~4_combout\)) # (!\S_Registers|Mux45~4_combout\ & (\S_Registers|Mux46~4_combout\ & \S_Registers|Mux44~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|Mux45~4_combout\,
	datab => \S_Registers|Mux46~4_combout\,
	datac => \S_Registers|Mux44~4_combout\,
	datad => \S_Registers|Mux47~4_combout\,
	combout => \Led_1_de_4|Mux3~0_combout\);

-- Location: LCCOMB_X111_Y12_N12
\Led_1_de_4|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Led_1_de_4|Mux2~0_combout\ = (\S_Registers|Mux45~4_combout\ & (\S_Registers|Mux44~4_combout\ & ((\S_Registers|Mux46~4_combout\) # (!\S_Registers|Mux47~4_combout\)))) # (!\S_Registers|Mux45~4_combout\ & (\S_Registers|Mux46~4_combout\ & 
-- (!\S_Registers|Mux44~4_combout\ & !\S_Registers|Mux47~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|Mux45~4_combout\,
	datab => \S_Registers|Mux46~4_combout\,
	datac => \S_Registers|Mux44~4_combout\,
	datad => \S_Registers|Mux47~4_combout\,
	combout => \Led_1_de_4|Mux2~0_combout\);

-- Location: LCCOMB_X111_Y12_N18
\Led_1_de_4|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Led_1_de_4|Mux1~0_combout\ = (\S_Registers|Mux46~4_combout\ & ((\S_Registers|Mux47~4_combout\ & ((\S_Registers|Mux44~4_combout\))) # (!\S_Registers|Mux47~4_combout\ & (\S_Registers|Mux45~4_combout\)))) # (!\S_Registers|Mux46~4_combout\ & 
-- (\S_Registers|Mux45~4_combout\ & (\S_Registers|Mux44~4_combout\ $ (\S_Registers|Mux47~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|Mux45~4_combout\,
	datab => \S_Registers|Mux46~4_combout\,
	datac => \S_Registers|Mux44~4_combout\,
	datad => \S_Registers|Mux47~4_combout\,
	combout => \Led_1_de_4|Mux1~0_combout\);

-- Location: LCCOMB_X111_Y12_N0
\Led_1_de_4|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Led_1_de_4|Mux0~0_combout\ = (\S_Registers|Mux45~4_combout\ & (!\S_Registers|Mux46~4_combout\ & (\S_Registers|Mux44~4_combout\ $ (!\S_Registers|Mux47~4_combout\)))) # (!\S_Registers|Mux45~4_combout\ & (\S_Registers|Mux47~4_combout\ & 
-- (\S_Registers|Mux46~4_combout\ $ (!\S_Registers|Mux44~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|Mux45~4_combout\,
	datab => \S_Registers|Mux46~4_combout\,
	datac => \S_Registers|Mux44~4_combout\,
	datad => \S_Registers|Mux47~4_combout\,
	combout => \Led_1_de_4|Mux0~0_combout\);

-- Location: LCCOMB_X107_Y12_N4
\S_Registers|regs[3][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|regs[3][6]~feeder_combout\ = \Mux_2_1_WB|Y[6]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux_2_1_WB|Y[6]~6_combout\,
	combout => \S_Registers|regs[3][6]~feeder_combout\);

-- Location: FF_X107_Y12_N5
\S_Registers|regs[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_Registers|regs[3][6]~feeder_combout\,
	ena => \S_Registers|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[3][6]~q\);

-- Location: FF_X108_Y11_N19
\S_Registers|regs[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[6]~6_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[2][6]~q\);

-- Location: FF_X109_Y12_N31
\S_Registers|regs[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[6]~6_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[0][6]~q\);

-- Location: FF_X109_Y12_N29
\S_Registers|regs[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[6]~6_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[1][6]~q\);

-- Location: LCCOMB_X109_Y12_N30
\S_Registers|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux9~2_combout\ = (\S_IF_ID|Inst_ID_reg\(0) & ((\S_IF_ID|Inst_ID_reg\(1)) # ((\S_Registers|regs[1][6]~q\)))) # (!\S_IF_ID|Inst_ID_reg\(0) & (!\S_IF_ID|Inst_ID_reg\(1) & (\S_Registers|regs[0][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IF_ID|Inst_ID_reg\(0),
	datab => \S_IF_ID|Inst_ID_reg\(1),
	datac => \S_Registers|regs[0][6]~q\,
	datad => \S_Registers|regs[1][6]~q\,
	combout => \S_Registers|Mux9~2_combout\);

-- Location: LCCOMB_X108_Y11_N18
\S_Registers|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux9~3_combout\ = (\S_IF_ID|Inst_ID_reg\(1) & ((\S_Registers|Mux9~2_combout\ & (\S_Registers|regs[3][6]~q\)) # (!\S_Registers|Mux9~2_combout\ & ((\S_Registers|regs[2][6]~q\))))) # (!\S_IF_ID|Inst_ID_reg\(1) & 
-- (((\S_Registers|Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|regs[3][6]~q\,
	datab => \S_IF_ID|Inst_ID_reg\(1),
	datac => \S_Registers|regs[2][6]~q\,
	datad => \S_Registers|Mux9~2_combout\,
	combout => \S_Registers|Mux9~3_combout\);

-- Location: FF_X106_Y9_N3
\S_Registers|regs[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[6]~6_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[4][6]~q\);

-- Location: FF_X107_Y9_N7
\S_Registers|regs[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[6]~6_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[6][6]~q\);

-- Location: LCCOMB_X106_Y9_N2
\S_Registers|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux9~0_combout\ = (\S_IF_ID|Inst_ID_reg\(1) & ((\S_IF_ID|Inst_ID_reg\(0)) # ((\S_Registers|regs[6][6]~q\)))) # (!\S_IF_ID|Inst_ID_reg\(1) & (!\S_IF_ID|Inst_ID_reg\(0) & (\S_Registers|regs[4][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IF_ID|Inst_ID_reg\(1),
	datab => \S_IF_ID|Inst_ID_reg\(0),
	datac => \S_Registers|regs[4][6]~q\,
	datad => \S_Registers|regs[6][6]~q\,
	combout => \S_Registers|Mux9~0_combout\);

-- Location: FF_X108_Y9_N13
\S_Registers|regs[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[6]~6_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[5][6]~q\);

-- Location: LCCOMB_X108_Y9_N14
\S_Registers|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux9~1_combout\ = (\S_IF_ID|Inst_ID_reg\(0) & ((\S_Registers|Mux9~0_combout\ & (\S_Registers|regs[7][6]~q\)) # (!\S_Registers|Mux9~0_combout\ & ((\S_Registers|regs[5][6]~q\))))) # (!\S_IF_ID|Inst_ID_reg\(0) & (\S_Registers|Mux9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IF_ID|Inst_ID_reg\(0),
	datab => \S_Registers|Mux9~0_combout\,
	datac => \S_Registers|regs[7][6]~q\,
	datad => \S_Registers|regs[5][6]~q\,
	combout => \S_Registers|Mux9~1_combout\);

-- Location: LCCOMB_X108_Y11_N22
\S_Registers|Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux9~4_combout\ = (\S_IF_ID|Inst_ID_reg\(2) & ((\S_Registers|Mux9~1_combout\))) # (!\S_IF_ID|Inst_ID_reg\(2) & (\S_Registers|Mux9~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|Mux9~3_combout\,
	datac => \S_Registers|Mux9~1_combout\,
	datad => \S_IF_ID|Inst_ID_reg\(2),
	combout => \S_Registers|Mux9~4_combout\);

-- Location: FF_X108_Y11_N23
\S_ID_EX|R_RS|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_Registers|Mux9~4_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|R_RS|R\(6));

-- Location: FF_X108_Y15_N15
\S_ID_EX|Src_A_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \S_ID_EX|R_RS|R\(6),
	sload => VCC,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|Src_A_reg\(6));

-- Location: LCCOMB_X107_Y15_N8
\S_ID_EX|R_RT|R[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_ID_EX|R_RT|R[6]~feeder_combout\ = \S_Registers|regs[0][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_Registers|regs[0][6]~q\,
	combout => \S_ID_EX|R_RT|R[6]~feeder_combout\);

-- Location: FF_X107_Y15_N9
\S_ID_EX|R_RT|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_ID_EX|R_RT|R[6]~feeder_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|R_RT|R\(6));

-- Location: FF_X107_Y15_N21
\S_ID_EX|RT_Data_EX_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \S_ID_EX|R_RT|R\(6),
	sload => VCC,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|RT_Data_EX_reg\(6));

-- Location: LCCOMB_X107_Y15_N20
\Mux_2_1_EX_1|Y[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_2_1_EX_1|Y[6]~5_combout\ = (\S_ID_EX|RT_Data_EX_reg\(6) & !\S_ID_EX|EX_out_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S_ID_EX|RT_Data_EX_reg\(6),
	datad => \S_ID_EX|EX_out_reg\(1),
	combout => \Mux_2_1_EX_1|Y[6]~5_combout\);

-- Location: FF_X106_Y9_N5
\S_Registers|regs[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[5]~5_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[4][5]~q\);

-- Location: FF_X107_Y9_N5
\S_Registers|regs[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[5]~5_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[6][5]~q\);

-- Location: LCCOMB_X106_Y9_N4
\S_Registers|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux10~0_combout\ = (\S_IF_ID|Inst_ID_reg\(1) & ((\S_IF_ID|Inst_ID_reg\(0)) # ((\S_Registers|regs[6][5]~q\)))) # (!\S_IF_ID|Inst_ID_reg\(1) & (!\S_IF_ID|Inst_ID_reg\(0) & (\S_Registers|regs[4][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IF_ID|Inst_ID_reg\(1),
	datab => \S_IF_ID|Inst_ID_reg\(0),
	datac => \S_Registers|regs[4][5]~q\,
	datad => \S_Registers|regs[6][5]~q\,
	combout => \S_Registers|Mux10~0_combout\);

-- Location: FF_X108_Y9_N27
\S_Registers|regs[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[5]~5_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[7][5]~q\);

-- Location: FF_X108_Y9_N25
\S_Registers|regs[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[5]~5_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[5][5]~q\);

-- Location: LCCOMB_X108_Y9_N26
\S_Registers|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux10~1_combout\ = (\S_IF_ID|Inst_ID_reg\(0) & ((\S_Registers|Mux10~0_combout\ & (\S_Registers|regs[7][5]~q\)) # (!\S_Registers|Mux10~0_combout\ & ((\S_Registers|regs[5][5]~q\))))) # (!\S_IF_ID|Inst_ID_reg\(0) & 
-- (\S_Registers|Mux10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IF_ID|Inst_ID_reg\(0),
	datab => \S_Registers|Mux10~0_combout\,
	datac => \S_Registers|regs[7][5]~q\,
	datad => \S_Registers|regs[5][5]~q\,
	combout => \S_Registers|Mux10~1_combout\);

-- Location: LCCOMB_X107_Y12_N18
\S_Registers|regs[3][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|regs[3][5]~feeder_combout\ = \Mux_2_1_WB|Y[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux_2_1_WB|Y[5]~5_combout\,
	combout => \S_Registers|regs[3][5]~feeder_combout\);

-- Location: FF_X107_Y12_N19
\S_Registers|regs[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_Registers|regs[3][5]~feeder_combout\,
	ena => \S_Registers|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[3][5]~q\);

-- Location: FF_X108_Y12_N29
\S_Registers|regs[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[5]~5_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[2][5]~q\);

-- Location: FF_X109_Y12_N13
\S_Registers|regs[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[5]~5_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[1][5]~q\);

-- Location: LCCOMB_X109_Y12_N6
\S_Registers|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux10~2_combout\ = (\S_IF_ID|Inst_ID_reg\(0) & ((\S_IF_ID|Inst_ID_reg\(1)) # ((\S_Registers|regs[1][5]~q\)))) # (!\S_IF_ID|Inst_ID_reg\(0) & (!\S_IF_ID|Inst_ID_reg\(1) & (\S_Registers|regs[0][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IF_ID|Inst_ID_reg\(0),
	datab => \S_IF_ID|Inst_ID_reg\(1),
	datac => \S_Registers|regs[0][5]~q\,
	datad => \S_Registers|regs[1][5]~q\,
	combout => \S_Registers|Mux10~2_combout\);

-- Location: LCCOMB_X108_Y12_N28
\S_Registers|Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux10~3_combout\ = (\S_IF_ID|Inst_ID_reg\(1) & ((\S_Registers|Mux10~2_combout\ & (\S_Registers|regs[3][5]~q\)) # (!\S_Registers|Mux10~2_combout\ & ((\S_Registers|regs[2][5]~q\))))) # (!\S_IF_ID|Inst_ID_reg\(1) & 
-- (((\S_Registers|Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|regs[3][5]~q\,
	datab => \S_IF_ID|Inst_ID_reg\(1),
	datac => \S_Registers|regs[2][5]~q\,
	datad => \S_Registers|Mux10~2_combout\,
	combout => \S_Registers|Mux10~3_combout\);

-- Location: LCCOMB_X108_Y12_N16
\S_Registers|Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux10~4_combout\ = (\S_IF_ID|Inst_ID_reg\(2) & (\S_Registers|Mux10~1_combout\)) # (!\S_IF_ID|Inst_ID_reg\(2) & ((\S_Registers|Mux10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IF_ID|Inst_ID_reg\(2),
	datac => \S_Registers|Mux10~1_combout\,
	datad => \S_Registers|Mux10~3_combout\,
	combout => \S_Registers|Mux10~4_combout\);

-- Location: FF_X108_Y12_N17
\S_ID_EX|R_RS|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_Registers|Mux10~4_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|R_RS|R\(5));

-- Location: FF_X108_Y15_N21
\S_ID_EX|Src_A_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \S_ID_EX|R_RS|R\(5),
	sload => VCC,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|Src_A_reg\(5));

-- Location: LCCOMB_X108_Y15_N6
\ALU|carry_v[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|carry_v[5]~4_combout\ = (\S_ID_EX|Src_A_reg\(4) & ((\ALU|carry_v[4]~3_combout\) # (\Mux_2_1_EX_1|Y[4]~3_combout\ $ (\ALUControl|Add_Sub~combout\)))) # (!\S_ID_EX|Src_A_reg\(4) & (\ALU|carry_v[4]~3_combout\ & (\Mux_2_1_EX_1|Y[4]~3_combout\ $ 
-- (\ALUControl|Add_Sub~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_2_1_EX_1|Y[4]~3_combout\,
	datab => \ALUControl|Add_Sub~combout\,
	datac => \S_ID_EX|Src_A_reg\(4),
	datad => \ALU|carry_v[4]~3_combout\,
	combout => \ALU|carry_v[5]~4_combout\);

-- Location: LCCOMB_X107_Y15_N22
\ALU|R[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|R\(5) = \ALUControl|Add_Sub~combout\ $ (\S_ID_EX|Src_A_reg\(5) $ (\Mux_2_1_EX_1|Y[5]~4_combout\ $ (\ALU|carry_v[5]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl|Add_Sub~combout\,
	datab => \S_ID_EX|Src_A_reg\(5),
	datac => \Mux_2_1_EX_1|Y[5]~4_combout\,
	datad => \ALU|carry_v[5]~4_combout\,
	combout => \ALU|R\(5));

-- Location: FF_X107_Y15_N23
\S_EX_MEM|R_ALU_R|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \ALU|R\(5),
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_EX_MEM|R_ALU_R|R\(5));

-- Location: LCCOMB_X106_Y15_N24
\S_EX_MEM|ALU_R_MEM_reg[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_EX_MEM|ALU_R_MEM_reg[5]~feeder_combout\ = \S_EX_MEM|R_ALU_R|R\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_EX_MEM|R_ALU_R|R\(5),
	combout => \S_EX_MEM|ALU_R_MEM_reg[5]~feeder_combout\);

-- Location: FF_X106_Y15_N25
\S_EX_MEM|ALU_R_MEM_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_EX_MEM|ALU_R_MEM_reg[5]~feeder_combout\,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_EX_MEM|ALU_R_MEM_reg\(5));

-- Location: LCCOMB_X106_Y15_N16
\S_MEM_WB|R_ALU_R|R[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_MEM_WB|R_ALU_R|R[5]~feeder_combout\ = \S_EX_MEM|ALU_R_MEM_reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_EX_MEM|ALU_R_MEM_reg\(5),
	combout => \S_MEM_WB|R_ALU_R|R[5]~feeder_combout\);

-- Location: FF_X106_Y15_N17
\S_MEM_WB|R_ALU_R|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_MEM_WB|R_ALU_R|R[5]~feeder_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_MEM_WB|R_ALU_R|R\(5));

-- Location: LCCOMB_X106_Y12_N24
\S_MEM_WB|ALU_R_WB_reg[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_MEM_WB|ALU_R_WB_reg[5]~feeder_combout\ = \S_MEM_WB|R_ALU_R|R\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_MEM_WB|R_ALU_R|R\(5),
	combout => \S_MEM_WB|ALU_R_WB_reg[5]~feeder_combout\);

-- Location: FF_X106_Y12_N25
\S_MEM_WB|ALU_R_WB_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_MEM_WB|ALU_R_WB_reg[5]~feeder_combout\,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_MEM_WB|ALU_R_WB_reg\(5));

-- Location: LCCOMB_X107_Y12_N12
\Mux_2_1_WB|Y[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_2_1_WB|Y[5]~5_combout\ = (\S_MEM_WB|ALU_R_WB_reg\(5) & !\S_MEM_WB|WB_out_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S_MEM_WB|ALU_R_WB_reg\(5),
	datac => \S_MEM_WB|WB_out_reg\(1),
	combout => \Mux_2_1_WB|Y[5]~5_combout\);

-- Location: FF_X109_Y12_N7
\S_Registers|regs[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[5]~5_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[0][5]~q\);

-- Location: LCCOMB_X107_Y15_N26
\S_ID_EX|R_RT|R[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_ID_EX|R_RT|R[5]~feeder_combout\ = \S_Registers|regs[0][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_Registers|regs[0][5]~q\,
	combout => \S_ID_EX|R_RT|R[5]~feeder_combout\);

-- Location: FF_X107_Y15_N27
\S_ID_EX|R_RT|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_ID_EX|R_RT|R[5]~feeder_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|R_RT|R\(5));

-- Location: FF_X107_Y15_N31
\S_ID_EX|RT_Data_EX_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \S_ID_EX|R_RT|R\(5),
	sload => VCC,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|RT_Data_EX_reg\(5));

-- Location: LCCOMB_X107_Y15_N30
\Mux_2_1_EX_1|Y[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_2_1_EX_1|Y[5]~4_combout\ = (\S_ID_EX|RT_Data_EX_reg\(5) & !\S_ID_EX|EX_out_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S_ID_EX|RT_Data_EX_reg\(5),
	datad => \S_ID_EX|EX_out_reg\(1),
	combout => \Mux_2_1_EX_1|Y[5]~4_combout\);

-- Location: LCCOMB_X108_Y15_N20
\ALU|carry_v[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|carry_v[6]~5_combout\ = (\S_ID_EX|Src_A_reg\(5) & ((\ALU|carry_v[5]~4_combout\) # (\ALUControl|Add_Sub~combout\ $ (\Mux_2_1_EX_1|Y[5]~4_combout\)))) # (!\S_ID_EX|Src_A_reg\(5) & (\ALU|carry_v[5]~4_combout\ & (\ALUControl|Add_Sub~combout\ $ 
-- (\Mux_2_1_EX_1|Y[5]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl|Add_Sub~combout\,
	datab => \Mux_2_1_EX_1|Y[5]~4_combout\,
	datac => \S_ID_EX|Src_A_reg\(5),
	datad => \ALU|carry_v[5]~4_combout\,
	combout => \ALU|carry_v[6]~5_combout\);

-- Location: LCCOMB_X107_Y15_N0
\ALU|R[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|R\(6) = \S_ID_EX|Src_A_reg\(6) $ (\Mux_2_1_EX_1|Y[6]~5_combout\ $ (\ALU|carry_v[6]~5_combout\ $ (\ALUControl|Add_Sub~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_ID_EX|Src_A_reg\(6),
	datab => \Mux_2_1_EX_1|Y[6]~5_combout\,
	datac => \ALU|carry_v[6]~5_combout\,
	datad => \ALUControl|Add_Sub~combout\,
	combout => \ALU|R\(6));

-- Location: FF_X107_Y15_N1
\S_EX_MEM|R_ALU_R|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \ALU|R\(6),
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_EX_MEM|R_ALU_R|R\(6));

-- Location: FF_X106_Y15_N19
\S_EX_MEM|ALU_R_MEM_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \S_EX_MEM|R_ALU_R|R\(6),
	sload => VCC,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_EX_MEM|ALU_R_MEM_reg\(6));

-- Location: LCCOMB_X106_Y15_N26
\S_MEM_WB|R_ALU_R|R[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_MEM_WB|R_ALU_R|R[6]~feeder_combout\ = \S_EX_MEM|ALU_R_MEM_reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_EX_MEM|ALU_R_MEM_reg\(6),
	combout => \S_MEM_WB|R_ALU_R|R[6]~feeder_combout\);

-- Location: FF_X106_Y15_N27
\S_MEM_WB|R_ALU_R|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_MEM_WB|R_ALU_R|R[6]~feeder_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_MEM_WB|R_ALU_R|R\(6));

-- Location: LCCOMB_X106_Y12_N10
\S_MEM_WB|ALU_R_WB_reg[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_MEM_WB|ALU_R_WB_reg[6]~feeder_combout\ = \S_MEM_WB|R_ALU_R|R\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_MEM_WB|R_ALU_R|R\(6),
	combout => \S_MEM_WB|ALU_R_WB_reg[6]~feeder_combout\);

-- Location: FF_X106_Y12_N11
\S_MEM_WB|ALU_R_WB_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_MEM_WB|ALU_R_WB_reg[6]~feeder_combout\,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_MEM_WB|ALU_R_WB_reg\(6));

-- Location: LCCOMB_X107_Y12_N20
\Mux_2_1_WB|Y[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_2_1_WB|Y[6]~6_combout\ = (!\S_MEM_WB|WB_out_reg\(1) & \S_MEM_WB|ALU_R_WB_reg\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_MEM_WB|WB_out_reg\(1),
	datad => \S_MEM_WB|ALU_R_WB_reg\(6),
	combout => \Mux_2_1_WB|Y[6]~6_combout\);

-- Location: FF_X108_Y9_N15
\S_Registers|regs[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[6]~6_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[7][6]~q\);

-- Location: LCCOMB_X107_Y9_N6
\S_Registers|Mux41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux41~0_combout\ = (\sw[1]~input_o\ & ((\sw[0]~input_o\) # ((\S_Registers|regs[6][6]~q\)))) # (!\sw[1]~input_o\ & (!\sw[0]~input_o\ & ((\S_Registers|regs[4][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[0]~input_o\,
	datac => \S_Registers|regs[6][6]~q\,
	datad => \S_Registers|regs[4][6]~q\,
	combout => \S_Registers|Mux41~0_combout\);

-- Location: LCCOMB_X108_Y9_N12
\S_Registers|Mux41~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux41~1_combout\ = (\sw[0]~input_o\ & ((\S_Registers|Mux41~0_combout\ & (\S_Registers|regs[7][6]~q\)) # (!\S_Registers|Mux41~0_combout\ & ((\S_Registers|regs[5][6]~q\))))) # (!\sw[0]~input_o\ & (((\S_Registers|Mux41~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \S_Registers|regs[7][6]~q\,
	datac => \S_Registers|regs[5][6]~q\,
	datad => \S_Registers|Mux41~0_combout\,
	combout => \S_Registers|Mux41~1_combout\);

-- Location: LCCOMB_X109_Y12_N28
\S_Registers|Mux41~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux41~2_combout\ = (\sw[1]~input_o\ & (\sw[0]~input_o\)) # (!\sw[1]~input_o\ & ((\sw[0]~input_o\ & (\S_Registers|regs[1][6]~q\)) # (!\sw[0]~input_o\ & ((\S_Registers|regs[0][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[0]~input_o\,
	datac => \S_Registers|regs[1][6]~q\,
	datad => \S_Registers|regs[0][6]~q\,
	combout => \S_Registers|Mux41~2_combout\);

-- Location: LCCOMB_X108_Y11_N4
\S_Registers|Mux41~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux41~3_combout\ = (\S_Registers|Mux41~2_combout\ & ((\S_Registers|regs[3][6]~q\) # ((!\sw[1]~input_o\)))) # (!\S_Registers|Mux41~2_combout\ & (((\sw[1]~input_o\ & \S_Registers|regs[2][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|regs[3][6]~q\,
	datab => \S_Registers|Mux41~2_combout\,
	datac => \sw[1]~input_o\,
	datad => \S_Registers|regs[2][6]~q\,
	combout => \S_Registers|Mux41~3_combout\);

-- Location: LCCOMB_X108_Y11_N10
\S_Registers|Mux41~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux41~4_combout\ = (!\sw[3]~input_o\ & ((\sw[2]~input_o\ & (\S_Registers|Mux41~1_combout\)) # (!\sw[2]~input_o\ & ((\S_Registers|Mux41~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|Mux41~1_combout\,
	datab => \sw[3]~input_o\,
	datac => \S_Registers|Mux41~3_combout\,
	datad => \sw[2]~input_o\,
	combout => \S_Registers|Mux41~4_combout\);

-- Location: FF_X109_Y12_N19
\S_Registers|regs[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[7]~7_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[0][7]~q\);

-- Location: LCCOMB_X108_Y13_N22
\S_ID_EX|R_RT|R[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_ID_EX|R_RT|R[7]~feeder_combout\ = \S_Registers|regs[0][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S_Registers|regs[0][7]~q\,
	combout => \S_ID_EX|R_RT|R[7]~feeder_combout\);

-- Location: FF_X108_Y13_N23
\S_ID_EX|R_RT|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_ID_EX|R_RT|R[7]~feeder_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|R_RT|R\(7));

-- Location: FF_X107_Y15_N19
\S_ID_EX|RT_Data_EX_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \S_ID_EX|R_RT|R\(7),
	sload => VCC,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|RT_Data_EX_reg\(7));

-- Location: LCCOMB_X107_Y15_N18
\Mux_2_1_EX_1|Y[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_2_1_EX_1|Y[7]~6_combout\ = (\S_ID_EX|RT_Data_EX_reg\(7) & !\S_ID_EX|EX_out_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S_ID_EX|RT_Data_EX_reg\(7),
	datad => \S_ID_EX|EX_out_reg\(1),
	combout => \Mux_2_1_EX_1|Y[7]~6_combout\);

-- Location: FF_X108_Y9_N17
\S_Registers|regs[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[7]~7_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[5][7]~q\);

-- Location: FF_X108_Y9_N11
\S_Registers|regs[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[7]~7_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[7][7]~q\);

-- Location: FF_X106_Y9_N9
\S_Registers|regs[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[7]~7_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[4][7]~q\);

-- Location: LCCOMB_X106_Y9_N8
\S_Registers|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux8~0_combout\ = (\S_IF_ID|Inst_ID_reg\(1) & ((\S_IF_ID|Inst_ID_reg\(0)) # ((\S_Registers|regs[6][7]~q\)))) # (!\S_IF_ID|Inst_ID_reg\(1) & (!\S_IF_ID|Inst_ID_reg\(0) & (\S_Registers|regs[4][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IF_ID|Inst_ID_reg\(1),
	datab => \S_IF_ID|Inst_ID_reg\(0),
	datac => \S_Registers|regs[4][7]~q\,
	datad => \S_Registers|regs[6][7]~q\,
	combout => \S_Registers|Mux8~0_combout\);

-- Location: LCCOMB_X108_Y9_N10
\S_Registers|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux8~1_combout\ = (\S_IF_ID|Inst_ID_reg\(0) & ((\S_Registers|Mux8~0_combout\ & ((\S_Registers|regs[7][7]~q\))) # (!\S_Registers|Mux8~0_combout\ & (\S_Registers|regs[5][7]~q\)))) # (!\S_IF_ID|Inst_ID_reg\(0) & 
-- (((\S_Registers|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IF_ID|Inst_ID_reg\(0),
	datab => \S_Registers|regs[5][7]~q\,
	datac => \S_Registers|regs[7][7]~q\,
	datad => \S_Registers|Mux8~0_combout\,
	combout => \S_Registers|Mux8~1_combout\);

-- Location: FF_X106_Y11_N25
\S_Registers|regs[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[7]~7_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[3][7]~q\);

-- Location: FF_X108_Y11_N13
\S_Registers|regs[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[7]~7_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[2][7]~q\);

-- Location: FF_X109_Y12_N25
\S_Registers|regs[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[7]~7_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[1][7]~q\);

-- Location: LCCOMB_X109_Y12_N18
\S_Registers|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux8~2_combout\ = (\S_IF_ID|Inst_ID_reg\(0) & ((\S_IF_ID|Inst_ID_reg\(1)) # ((\S_Registers|regs[1][7]~q\)))) # (!\S_IF_ID|Inst_ID_reg\(0) & (!\S_IF_ID|Inst_ID_reg\(1) & (\S_Registers|regs[0][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IF_ID|Inst_ID_reg\(0),
	datab => \S_IF_ID|Inst_ID_reg\(1),
	datac => \S_Registers|regs[0][7]~q\,
	datad => \S_Registers|regs[1][7]~q\,
	combout => \S_Registers|Mux8~2_combout\);

-- Location: LCCOMB_X108_Y11_N12
\S_Registers|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux8~3_combout\ = (\S_IF_ID|Inst_ID_reg\(1) & ((\S_Registers|Mux8~2_combout\ & (\S_Registers|regs[3][7]~q\)) # (!\S_Registers|Mux8~2_combout\ & ((\S_Registers|regs[2][7]~q\))))) # (!\S_IF_ID|Inst_ID_reg\(1) & 
-- (((\S_Registers|Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|regs[3][7]~q\,
	datab => \S_IF_ID|Inst_ID_reg\(1),
	datac => \S_Registers|regs[2][7]~q\,
	datad => \S_Registers|Mux8~2_combout\,
	combout => \S_Registers|Mux8~3_combout\);

-- Location: LCCOMB_X108_Y11_N0
\S_Registers|Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux8~4_combout\ = (\S_IF_ID|Inst_ID_reg\(2) & (\S_Registers|Mux8~1_combout\)) # (!\S_IF_ID|Inst_ID_reg\(2) & ((\S_Registers|Mux8~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IF_ID|Inst_ID_reg\(2),
	datac => \S_Registers|Mux8~1_combout\,
	datad => \S_Registers|Mux8~3_combout\,
	combout => \S_Registers|Mux8~4_combout\);

-- Location: FF_X108_Y11_N1
\S_ID_EX|R_RS|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_Registers|Mux8~4_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|R_RS|R\(7));

-- Location: FF_X108_Y15_N25
\S_ID_EX|Src_A_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \S_ID_EX|R_RS|R\(7),
	sload => VCC,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|Src_A_reg\(7));

-- Location: LCCOMB_X108_Y15_N14
\ALU|carry_v[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|carry_v[7]~6_combout\ = (\S_ID_EX|Src_A_reg\(6) & ((\ALU|carry_v[6]~5_combout\) # (\ALUControl|Add_Sub~combout\ $ (\Mux_2_1_EX_1|Y[6]~5_combout\)))) # (!\S_ID_EX|Src_A_reg\(6) & (\ALU|carry_v[6]~5_combout\ & (\ALUControl|Add_Sub~combout\ $ 
-- (\Mux_2_1_EX_1|Y[6]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl|Add_Sub~combout\,
	datab => \Mux_2_1_EX_1|Y[6]~5_combout\,
	datac => \S_ID_EX|Src_A_reg\(6),
	datad => \ALU|carry_v[6]~5_combout\,
	combout => \ALU|carry_v[7]~6_combout\);

-- Location: LCCOMB_X107_Y15_N12
\ALU|R[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|R\(7) = \ALUControl|Add_Sub~combout\ $ (\Mux_2_1_EX_1|Y[7]~6_combout\ $ (\S_ID_EX|Src_A_reg\(7) $ (\ALU|carry_v[7]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl|Add_Sub~combout\,
	datab => \Mux_2_1_EX_1|Y[7]~6_combout\,
	datac => \S_ID_EX|Src_A_reg\(7),
	datad => \ALU|carry_v[7]~6_combout\,
	combout => \ALU|R\(7));

-- Location: FF_X107_Y15_N13
\S_EX_MEM|R_ALU_R|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \ALU|R\(7),
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_EX_MEM|R_ALU_R|R\(7));

-- Location: FF_X106_Y15_N13
\S_EX_MEM|ALU_R_MEM_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \S_EX_MEM|R_ALU_R|R\(7),
	sload => VCC,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_EX_MEM|ALU_R_MEM_reg\(7));

-- Location: LCCOMB_X106_Y15_N0
\S_MEM_WB|R_ALU_R|R[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_MEM_WB|R_ALU_R|R[7]~feeder_combout\ = \S_EX_MEM|ALU_R_MEM_reg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_EX_MEM|ALU_R_MEM_reg\(7),
	combout => \S_MEM_WB|R_ALU_R|R[7]~feeder_combout\);

-- Location: FF_X106_Y15_N1
\S_MEM_WB|R_ALU_R|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_MEM_WB|R_ALU_R|R[7]~feeder_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_MEM_WB|R_ALU_R|R\(7));

-- Location: FF_X106_Y12_N17
\S_MEM_WB|ALU_R_WB_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \S_MEM_WB|R_ALU_R|R\(7),
	sload => VCC,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_MEM_WB|ALU_R_WB_reg\(7));

-- Location: LCCOMB_X106_Y12_N16
\Mux_2_1_WB|Y[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_2_1_WB|Y[7]~7_combout\ = (\S_MEM_WB|ALU_R_WB_reg\(7) & !\S_MEM_WB|WB_out_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S_MEM_WB|ALU_R_WB_reg\(7),
	datad => \S_MEM_WB|WB_out_reg\(1),
	combout => \Mux_2_1_WB|Y[7]~7_combout\);

-- Location: FF_X107_Y9_N9
\S_Registers|regs[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[7]~7_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[6][7]~q\);

-- Location: LCCOMB_X107_Y9_N8
\S_Registers|Mux40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux40~0_combout\ = (\sw[1]~input_o\ & ((\sw[0]~input_o\) # ((\S_Registers|regs[6][7]~q\)))) # (!\sw[1]~input_o\ & (!\sw[0]~input_o\ & ((\S_Registers|regs[4][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[0]~input_o\,
	datac => \S_Registers|regs[6][7]~q\,
	datad => \S_Registers|regs[4][7]~q\,
	combout => \S_Registers|Mux40~0_combout\);

-- Location: LCCOMB_X108_Y9_N16
\S_Registers|Mux40~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux40~1_combout\ = (\S_Registers|Mux40~0_combout\ & ((\S_Registers|regs[7][7]~q\) # ((!\sw[0]~input_o\)))) # (!\S_Registers|Mux40~0_combout\ & (((\S_Registers|regs[5][7]~q\ & \sw[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|Mux40~0_combout\,
	datab => \S_Registers|regs[7][7]~q\,
	datac => \S_Registers|regs[5][7]~q\,
	datad => \sw[0]~input_o\,
	combout => \S_Registers|Mux40~1_combout\);

-- Location: LCCOMB_X109_Y12_N24
\S_Registers|Mux40~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux40~2_combout\ = (\sw[1]~input_o\ & (\sw[0]~input_o\)) # (!\sw[1]~input_o\ & ((\sw[0]~input_o\ & (\S_Registers|regs[1][7]~q\)) # (!\sw[0]~input_o\ & ((\S_Registers|regs[0][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[0]~input_o\,
	datac => \S_Registers|regs[1][7]~q\,
	datad => \S_Registers|regs[0][7]~q\,
	combout => \S_Registers|Mux40~2_combout\);

-- Location: LCCOMB_X108_Y11_N26
\S_Registers|Mux40~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux40~3_combout\ = (\S_Registers|Mux40~2_combout\ & ((\S_Registers|regs[3][7]~q\) # ((!\sw[1]~input_o\)))) # (!\S_Registers|Mux40~2_combout\ & (((\sw[1]~input_o\ & \S_Registers|regs[2][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|regs[3][7]~q\,
	datab => \S_Registers|Mux40~2_combout\,
	datac => \sw[1]~input_o\,
	datad => \S_Registers|regs[2][7]~q\,
	combout => \S_Registers|Mux40~3_combout\);

-- Location: LCCOMB_X108_Y11_N20
\S_Registers|Mux40~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux40~4_combout\ = (!\sw[3]~input_o\ & ((\sw[2]~input_o\ & (\S_Registers|Mux40~1_combout\)) # (!\sw[2]~input_o\ & ((\S_Registers|Mux40~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|Mux40~1_combout\,
	datab => \sw[3]~input_o\,
	datac => \S_Registers|Mux40~3_combout\,
	datad => \sw[2]~input_o\,
	combout => \S_Registers|Mux40~4_combout\);

-- Location: LCCOMB_X109_Y12_N12
\S_Registers|Mux42~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux42~2_combout\ = (\sw[1]~input_o\ & (\sw[0]~input_o\)) # (!\sw[1]~input_o\ & ((\sw[0]~input_o\ & (\S_Registers|regs[1][5]~q\)) # (!\sw[0]~input_o\ & ((\S_Registers|regs[0][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[0]~input_o\,
	datac => \S_Registers|regs[1][5]~q\,
	datad => \S_Registers|regs[0][5]~q\,
	combout => \S_Registers|Mux42~2_combout\);

-- Location: LCCOMB_X108_Y12_N30
\S_Registers|Mux42~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux42~3_combout\ = (\S_Registers|Mux42~2_combout\ & ((\S_Registers|regs[3][5]~q\) # ((!\sw[1]~input_o\)))) # (!\S_Registers|Mux42~2_combout\ & (((\S_Registers|regs[2][5]~q\ & \sw[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|regs[3][5]~q\,
	datab => \S_Registers|regs[2][5]~q\,
	datac => \S_Registers|Mux42~2_combout\,
	datad => \sw[1]~input_o\,
	combout => \S_Registers|Mux42~3_combout\);

-- Location: LCCOMB_X107_Y9_N4
\S_Registers|Mux42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux42~0_combout\ = (\sw[1]~input_o\ & (((\S_Registers|regs[6][5]~q\) # (\sw[0]~input_o\)))) # (!\sw[1]~input_o\ & (\S_Registers|regs[4][5]~q\ & ((!\sw[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \S_Registers|regs[4][5]~q\,
	datac => \S_Registers|regs[6][5]~q\,
	datad => \sw[0]~input_o\,
	combout => \S_Registers|Mux42~0_combout\);

-- Location: LCCOMB_X108_Y9_N24
\S_Registers|Mux42~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux42~1_combout\ = (\sw[0]~input_o\ & ((\S_Registers|Mux42~0_combout\ & ((\S_Registers|regs[7][5]~q\))) # (!\S_Registers|Mux42~0_combout\ & (\S_Registers|regs[5][5]~q\)))) # (!\sw[0]~input_o\ & (\S_Registers|Mux42~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \S_Registers|Mux42~0_combout\,
	datac => \S_Registers|regs[5][5]~q\,
	datad => \S_Registers|regs[7][5]~q\,
	combout => \S_Registers|Mux42~1_combout\);

-- Location: LCCOMB_X108_Y12_N12
\S_Registers|Mux42~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux42~4_combout\ = (!\sw[3]~input_o\ & ((\sw[2]~input_o\ & ((\S_Registers|Mux42~1_combout\))) # (!\sw[2]~input_o\ & (\S_Registers|Mux42~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|Mux42~3_combout\,
	datab => \S_Registers|Mux42~1_combout\,
	datac => \sw[2]~input_o\,
	datad => \sw[3]~input_o\,
	combout => \S_Registers|Mux42~4_combout\);

-- Location: LCCOMB_X107_Y9_N2
\S_Registers|Mux43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux43~0_combout\ = (\sw[1]~input_o\ & ((\sw[0]~input_o\) # ((\S_Registers|regs[6][4]~q\)))) # (!\sw[1]~input_o\ & (!\sw[0]~input_o\ & ((\S_Registers|regs[4][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[0]~input_o\,
	datac => \S_Registers|regs[6][4]~q\,
	datad => \S_Registers|regs[4][4]~q\,
	combout => \S_Registers|Mux43~0_combout\);

-- Location: LCCOMB_X108_Y9_N0
\S_Registers|Mux43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux43~1_combout\ = (\sw[0]~input_o\ & ((\S_Registers|Mux43~0_combout\ & ((\S_Registers|regs[7][4]~q\))) # (!\S_Registers|Mux43~0_combout\ & (\S_Registers|regs[5][4]~q\)))) # (!\sw[0]~input_o\ & (\S_Registers|Mux43~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \S_Registers|Mux43~0_combout\,
	datac => \S_Registers|regs[5][4]~q\,
	datad => \S_Registers|regs[7][4]~q\,
	combout => \S_Registers|Mux43~1_combout\);

-- Location: LCCOMB_X109_Y12_N20
\S_Registers|Mux43~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux43~2_combout\ = (\sw[1]~input_o\ & (((\sw[0]~input_o\)))) # (!\sw[1]~input_o\ & ((\sw[0]~input_o\ & ((\S_Registers|regs[1][4]~q\))) # (!\sw[0]~input_o\ & (\S_Registers|regs[0][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \S_Registers|regs[0][4]~q\,
	datac => \S_Registers|regs[1][4]~q\,
	datad => \sw[0]~input_o\,
	combout => \S_Registers|Mux43~2_combout\);

-- Location: LCCOMB_X108_Y11_N14
\S_Registers|Mux43~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux43~3_combout\ = (\S_Registers|Mux43~2_combout\ & (((\S_Registers|regs[3][4]~q\)) # (!\sw[1]~input_o\))) # (!\S_Registers|Mux43~2_combout\ & (\sw[1]~input_o\ & ((\S_Registers|regs[2][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|Mux43~2_combout\,
	datab => \sw[1]~input_o\,
	datac => \S_Registers|regs[3][4]~q\,
	datad => \S_Registers|regs[2][4]~q\,
	combout => \S_Registers|Mux43~3_combout\);

-- Location: LCCOMB_X108_Y11_N28
\S_Registers|Mux43~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux43~4_combout\ = (!\sw[3]~input_o\ & ((\sw[2]~input_o\ & (\S_Registers|Mux43~1_combout\)) # (!\sw[2]~input_o\ & ((\S_Registers|Mux43~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|Mux43~1_combout\,
	datab => \sw[3]~input_o\,
	datac => \S_Registers|Mux43~3_combout\,
	datad => \sw[2]~input_o\,
	combout => \S_Registers|Mux43~4_combout\);

-- Location: LCCOMB_X108_Y8_N4
\Led_2_de_4|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Led_2_de_4|Mux6~0_combout\ = (\S_Registers|Mux43~4_combout\ & ((\S_Registers|Mux40~4_combout\) # (\S_Registers|Mux41~4_combout\ $ (\S_Registers|Mux42~4_combout\)))) # (!\S_Registers|Mux43~4_combout\ & ((\S_Registers|Mux42~4_combout\) # 
-- (\S_Registers|Mux41~4_combout\ $ (\S_Registers|Mux40~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|Mux41~4_combout\,
	datab => \S_Registers|Mux40~4_combout\,
	datac => \S_Registers|Mux42~4_combout\,
	datad => \S_Registers|Mux43~4_combout\,
	combout => \Led_2_de_4|Mux6~0_combout\);

-- Location: LCCOMB_X108_Y8_N30
\Led_2_de_4|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Led_2_de_4|Mux5~0_combout\ = (\S_Registers|Mux41~4_combout\ & (\S_Registers|Mux43~4_combout\ & (\S_Registers|Mux40~4_combout\ $ (\S_Registers|Mux42~4_combout\)))) # (!\S_Registers|Mux41~4_combout\ & (!\S_Registers|Mux40~4_combout\ & 
-- ((\S_Registers|Mux42~4_combout\) # (\S_Registers|Mux43~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|Mux41~4_combout\,
	datab => \S_Registers|Mux40~4_combout\,
	datac => \S_Registers|Mux42~4_combout\,
	datad => \S_Registers|Mux43~4_combout\,
	combout => \Led_2_de_4|Mux5~0_combout\);

-- Location: LCCOMB_X108_Y8_N12
\Led_2_de_4|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Led_2_de_4|Mux4~0_combout\ = (\S_Registers|Mux42~4_combout\ & (((!\S_Registers|Mux40~4_combout\ & \S_Registers|Mux43~4_combout\)))) # (!\S_Registers|Mux42~4_combout\ & ((\S_Registers|Mux41~4_combout\ & (!\S_Registers|Mux40~4_combout\)) # 
-- (!\S_Registers|Mux41~4_combout\ & ((\S_Registers|Mux43~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|Mux41~4_combout\,
	datab => \S_Registers|Mux40~4_combout\,
	datac => \S_Registers|Mux42~4_combout\,
	datad => \S_Registers|Mux43~4_combout\,
	combout => \Led_2_de_4|Mux4~0_combout\);

-- Location: LCCOMB_X108_Y8_N10
\Led_2_de_4|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Led_2_de_4|Mux3~0_combout\ = (\S_Registers|Mux43~4_combout\ & (\S_Registers|Mux41~4_combout\ $ (((!\S_Registers|Mux42~4_combout\))))) # (!\S_Registers|Mux43~4_combout\ & ((\S_Registers|Mux41~4_combout\ & (!\S_Registers|Mux40~4_combout\ & 
-- !\S_Registers|Mux42~4_combout\)) # (!\S_Registers|Mux41~4_combout\ & (\S_Registers|Mux40~4_combout\ & \S_Registers|Mux42~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|Mux41~4_combout\,
	datab => \S_Registers|Mux40~4_combout\,
	datac => \S_Registers|Mux42~4_combout\,
	datad => \S_Registers|Mux43~4_combout\,
	combout => \Led_2_de_4|Mux3~0_combout\);

-- Location: LCCOMB_X108_Y8_N20
\Led_2_de_4|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Led_2_de_4|Mux2~0_combout\ = (\S_Registers|Mux41~4_combout\ & (\S_Registers|Mux40~4_combout\ & ((\S_Registers|Mux42~4_combout\) # (!\S_Registers|Mux43~4_combout\)))) # (!\S_Registers|Mux41~4_combout\ & (!\S_Registers|Mux40~4_combout\ & 
-- (\S_Registers|Mux42~4_combout\ & !\S_Registers|Mux43~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|Mux41~4_combout\,
	datab => \S_Registers|Mux40~4_combout\,
	datac => \S_Registers|Mux42~4_combout\,
	datad => \S_Registers|Mux43~4_combout\,
	combout => \Led_2_de_4|Mux2~0_combout\);

-- Location: LCCOMB_X108_Y8_N22
\Led_2_de_4|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Led_2_de_4|Mux1~0_combout\ = (\S_Registers|Mux40~4_combout\ & ((\S_Registers|Mux43~4_combout\ & ((\S_Registers|Mux42~4_combout\))) # (!\S_Registers|Mux43~4_combout\ & (\S_Registers|Mux41~4_combout\)))) # (!\S_Registers|Mux40~4_combout\ & 
-- (\S_Registers|Mux41~4_combout\ & (\S_Registers|Mux42~4_combout\ $ (\S_Registers|Mux43~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|Mux41~4_combout\,
	datab => \S_Registers|Mux40~4_combout\,
	datac => \S_Registers|Mux42~4_combout\,
	datad => \S_Registers|Mux43~4_combout\,
	combout => \Led_2_de_4|Mux1~0_combout\);

-- Location: LCCOMB_X108_Y8_N0
\Led_2_de_4|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Led_2_de_4|Mux0~0_combout\ = (\S_Registers|Mux41~4_combout\ & (!\S_Registers|Mux42~4_combout\ & (\S_Registers|Mux40~4_combout\ $ (!\S_Registers|Mux43~4_combout\)))) # (!\S_Registers|Mux41~4_combout\ & (\S_Registers|Mux43~4_combout\ & 
-- (\S_Registers|Mux40~4_combout\ $ (!\S_Registers|Mux42~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|Mux41~4_combout\,
	datab => \S_Registers|Mux40~4_combout\,
	datac => \S_Registers|Mux42~4_combout\,
	datad => \S_Registers|Mux43~4_combout\,
	combout => \Led_2_de_4|Mux0~0_combout\);

-- Location: FF_X105_Y11_N27
\S_Registers|regs[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[9]~9_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[0][9]~q\);

-- Location: LCCOMB_X105_Y15_N4
\S_ID_EX|R_RT|R[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_ID_EX|R_RT|R[9]~feeder_combout\ = \S_Registers|regs[0][9]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S_Registers|regs[0][9]~q\,
	combout => \S_ID_EX|R_RT|R[9]~feeder_combout\);

-- Location: FF_X105_Y15_N5
\S_ID_EX|R_RT|R[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_ID_EX|R_RT|R[9]~feeder_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|R_RT|R\(9));

-- Location: FF_X105_Y15_N7
\S_ID_EX|RT_Data_EX_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \S_ID_EX|R_RT|R\(9),
	sload => VCC,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|RT_Data_EX_reg\(9));

-- Location: LCCOMB_X105_Y15_N6
\Mux_2_1_EX_1|Y[9]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_2_1_EX_1|Y[9]~8_combout\ = (!\S_ID_EX|EX_out_reg\(1) & \S_ID_EX|RT_Data_EX_reg\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S_ID_EX|EX_out_reg\(1),
	datac => \S_ID_EX|RT_Data_EX_reg\(9),
	combout => \Mux_2_1_EX_1|Y[9]~8_combout\);

-- Location: FF_X107_Y9_N17
\S_Registers|regs[6][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[9]~9_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[6][9]~q\);

-- Location: FF_X106_Y9_N25
\S_Registers|regs[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[9]~9_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[4][9]~q\);

-- Location: LCCOMB_X106_Y9_N24
\S_Registers|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux6~0_combout\ = (\S_IF_ID|Inst_ID_reg\(1) & ((\S_Registers|regs[6][9]~q\) # ((\S_IF_ID|Inst_ID_reg\(0))))) # (!\S_IF_ID|Inst_ID_reg\(1) & (((\S_Registers|regs[4][9]~q\ & !\S_IF_ID|Inst_ID_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IF_ID|Inst_ID_reg\(1),
	datab => \S_Registers|regs[6][9]~q\,
	datac => \S_Registers|regs[4][9]~q\,
	datad => \S_IF_ID|Inst_ID_reg\(0),
	combout => \S_Registers|Mux6~0_combout\);

-- Location: FF_X106_Y8_N17
\S_Registers|regs[7][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[9]~9_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[7][9]~q\);

-- Location: FF_X107_Y8_N25
\S_Registers|regs[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[9]~9_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[5][9]~q\);

-- Location: LCCOMB_X106_Y8_N16
\S_Registers|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux6~1_combout\ = (\S_Registers|Mux6~0_combout\ & (((\S_Registers|regs[7][9]~q\)) # (!\S_IF_ID|Inst_ID_reg\(0)))) # (!\S_Registers|Mux6~0_combout\ & (\S_IF_ID|Inst_ID_reg\(0) & ((\S_Registers|regs[5][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|Mux6~0_combout\,
	datab => \S_IF_ID|Inst_ID_reg\(0),
	datac => \S_Registers|regs[7][9]~q\,
	datad => \S_Registers|regs[5][9]~q\,
	combout => \S_Registers|Mux6~1_combout\);

-- Location: FF_X106_Y11_N9
\S_Registers|regs[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[9]~9_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[2][9]~q\);

-- Location: FF_X105_Y11_N29
\S_Registers|regs[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[9]~9_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[1][9]~q\);

-- Location: LCCOMB_X105_Y11_N10
\S_Registers|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux6~2_combout\ = (\S_IF_ID|Inst_ID_reg\(1) & (((\S_IF_ID|Inst_ID_reg\(0))))) # (!\S_IF_ID|Inst_ID_reg\(1) & ((\S_IF_ID|Inst_ID_reg\(0) & ((\S_Registers|regs[1][9]~q\))) # (!\S_IF_ID|Inst_ID_reg\(0) & (\S_Registers|regs[0][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|regs[0][9]~q\,
	datab => \S_Registers|regs[1][9]~q\,
	datac => \S_IF_ID|Inst_ID_reg\(1),
	datad => \S_IF_ID|Inst_ID_reg\(0),
	combout => \S_Registers|Mux6~2_combout\);

-- Location: LCCOMB_X106_Y11_N22
\S_Registers|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux6~3_combout\ = (\S_IF_ID|Inst_ID_reg\(1) & ((\S_Registers|Mux6~2_combout\ & ((\S_Registers|regs[3][9]~q\))) # (!\S_Registers|Mux6~2_combout\ & (\S_Registers|regs[2][9]~q\)))) # (!\S_IF_ID|Inst_ID_reg\(1) & 
-- (((\S_Registers|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IF_ID|Inst_ID_reg\(1),
	datab => \S_Registers|regs[2][9]~q\,
	datac => \S_Registers|regs[3][9]~q\,
	datad => \S_Registers|Mux6~2_combout\,
	combout => \S_Registers|Mux6~3_combout\);

-- Location: LCCOMB_X109_Y11_N10
\S_Registers|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux6~4_combout\ = (\S_IF_ID|Inst_ID_reg\(2) & (\S_Registers|Mux6~1_combout\)) # (!\S_IF_ID|Inst_ID_reg\(2) & ((\S_Registers|Mux6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S_IF_ID|Inst_ID_reg\(2),
	datac => \S_Registers|Mux6~1_combout\,
	datad => \S_Registers|Mux6~3_combout\,
	combout => \S_Registers|Mux6~4_combout\);

-- Location: FF_X109_Y11_N11
\S_ID_EX|R_RS|R[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_Registers|Mux6~4_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|R_RS|R\(9));

-- Location: FF_X108_Y15_N13
\S_ID_EX|Src_A_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \S_ID_EX|R_RS|R\(9),
	sload => VCC,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|Src_A_reg\(9));

-- Location: FF_X107_Y11_N7
\S_Registers|regs[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[8]~8_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[1][8]~q\);

-- Location: LCCOMB_X107_Y11_N2
\S_Registers|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux7~2_combout\ = (\S_IF_ID|Inst_ID_reg\(1) & (((\S_IF_ID|Inst_ID_reg\(0))))) # (!\S_IF_ID|Inst_ID_reg\(1) & ((\S_IF_ID|Inst_ID_reg\(0) & (\S_Registers|regs[1][8]~q\)) # (!\S_IF_ID|Inst_ID_reg\(0) & ((\S_Registers|regs[0][8]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|regs[1][8]~q\,
	datab => \S_IF_ID|Inst_ID_reg\(1),
	datac => \S_IF_ID|Inst_ID_reg\(0),
	datad => \S_Registers|regs[0][8]~q\,
	combout => \S_Registers|Mux7~2_combout\);

-- Location: FF_X108_Y11_N7
\S_Registers|regs[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[8]~8_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[2][8]~q\);

-- Location: LCCOMB_X106_Y11_N18
\S_Registers|regs[3][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|regs[3][8]~feeder_combout\ = \Mux_2_1_WB|Y[8]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux_2_1_WB|Y[8]~8_combout\,
	combout => \S_Registers|regs[3][8]~feeder_combout\);

-- Location: FF_X106_Y11_N19
\S_Registers|regs[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_Registers|regs[3][8]~feeder_combout\,
	ena => \S_Registers|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[3][8]~q\);

-- Location: LCCOMB_X108_Y11_N6
\S_Registers|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux7~3_combout\ = (\S_Registers|Mux7~2_combout\ & (((\S_Registers|regs[3][8]~q\)) # (!\S_IF_ID|Inst_ID_reg\(1)))) # (!\S_Registers|Mux7~2_combout\ & (\S_IF_ID|Inst_ID_reg\(1) & (\S_Registers|regs[2][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|Mux7~2_combout\,
	datab => \S_IF_ID|Inst_ID_reg\(1),
	datac => \S_Registers|regs[2][8]~q\,
	datad => \S_Registers|regs[3][8]~q\,
	combout => \S_Registers|Mux7~3_combout\);

-- Location: FF_X108_Y9_N9
\S_Registers|regs[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[8]~8_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[5][8]~q\);

-- Location: FF_X108_Y9_N3
\S_Registers|regs[7][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[8]~8_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[7][8]~q\);

-- Location: FF_X107_Y9_N19
\S_Registers|regs[6][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[8]~8_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[6][8]~q\);

-- Location: FF_X106_Y9_N11
\S_Registers|regs[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[8]~8_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[4][8]~q\);

-- Location: LCCOMB_X106_Y9_N10
\S_Registers|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux7~0_combout\ = (\S_IF_ID|Inst_ID_reg\(1) & ((\S_Registers|regs[6][8]~q\) # ((\S_IF_ID|Inst_ID_reg\(0))))) # (!\S_IF_ID|Inst_ID_reg\(1) & (((\S_Registers|regs[4][8]~q\ & !\S_IF_ID|Inst_ID_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IF_ID|Inst_ID_reg\(1),
	datab => \S_Registers|regs[6][8]~q\,
	datac => \S_Registers|regs[4][8]~q\,
	datad => \S_IF_ID|Inst_ID_reg\(0),
	combout => \S_Registers|Mux7~0_combout\);

-- Location: LCCOMB_X108_Y9_N2
\S_Registers|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux7~1_combout\ = (\S_IF_ID|Inst_ID_reg\(0) & ((\S_Registers|Mux7~0_combout\ & ((\S_Registers|regs[7][8]~q\))) # (!\S_Registers|Mux7~0_combout\ & (\S_Registers|regs[5][8]~q\)))) # (!\S_IF_ID|Inst_ID_reg\(0) & 
-- (((\S_Registers|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IF_ID|Inst_ID_reg\(0),
	datab => \S_Registers|regs[5][8]~q\,
	datac => \S_Registers|regs[7][8]~q\,
	datad => \S_Registers|Mux7~0_combout\,
	combout => \S_Registers|Mux7~1_combout\);

-- Location: LCCOMB_X108_Y11_N2
\S_Registers|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux7~4_combout\ = (\S_IF_ID|Inst_ID_reg\(2) & ((\S_Registers|Mux7~1_combout\))) # (!\S_IF_ID|Inst_ID_reg\(2) & (\S_Registers|Mux7~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|Mux7~3_combout\,
	datac => \S_Registers|Mux7~1_combout\,
	datad => \S_IF_ID|Inst_ID_reg\(2),
	combout => \S_Registers|Mux7~4_combout\);

-- Location: FF_X108_Y11_N3
\S_ID_EX|R_RS|R[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_Registers|Mux7~4_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|R_RS|R\(8));

-- Location: FF_X108_Y15_N27
\S_ID_EX|Src_A_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \S_ID_EX|R_RS|R\(8),
	sload => VCC,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|Src_A_reg\(8));

-- Location: LCCOMB_X108_Y15_N24
\ALU|carry_v[8]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|carry_v[8]~7_combout\ = (\ALU|carry_v[7]~6_combout\ & ((\S_ID_EX|Src_A_reg\(7)) # (\ALUControl|Add_Sub~combout\ $ (\Mux_2_1_EX_1|Y[7]~6_combout\)))) # (!\ALU|carry_v[7]~6_combout\ & (\S_ID_EX|Src_A_reg\(7) & (\ALUControl|Add_Sub~combout\ $ 
-- (\Mux_2_1_EX_1|Y[7]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl|Add_Sub~combout\,
	datab => \ALU|carry_v[7]~6_combout\,
	datac => \S_ID_EX|Src_A_reg\(7),
	datad => \Mux_2_1_EX_1|Y[7]~6_combout\,
	combout => \ALU|carry_v[8]~7_combout\);

-- Location: LCCOMB_X107_Y15_N16
\ALU|R[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|R\(8) = \ALUControl|Add_Sub~combout\ $ (\Mux_2_1_EX_1|Y[8]~7_combout\ $ (\S_ID_EX|Src_A_reg\(8) $ (\ALU|carry_v[8]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl|Add_Sub~combout\,
	datab => \Mux_2_1_EX_1|Y[8]~7_combout\,
	datac => \S_ID_EX|Src_A_reg\(8),
	datad => \ALU|carry_v[8]~7_combout\,
	combout => \ALU|R\(8));

-- Location: FF_X107_Y15_N17
\S_EX_MEM|R_ALU_R|R[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \ALU|R\(8),
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_EX_MEM|R_ALU_R|R\(8));

-- Location: LCCOMB_X106_Y15_N2
\S_EX_MEM|ALU_R_MEM_reg[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_EX_MEM|ALU_R_MEM_reg[8]~feeder_combout\ = \S_EX_MEM|R_ALU_R|R\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_EX_MEM|R_ALU_R|R\(8),
	combout => \S_EX_MEM|ALU_R_MEM_reg[8]~feeder_combout\);

-- Location: FF_X106_Y15_N3
\S_EX_MEM|ALU_R_MEM_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_EX_MEM|ALU_R_MEM_reg[8]~feeder_combout\,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_EX_MEM|ALU_R_MEM_reg\(8));

-- Location: LCCOMB_X106_Y15_N10
\S_MEM_WB|R_ALU_R|R[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_MEM_WB|R_ALU_R|R[8]~feeder_combout\ = \S_EX_MEM|ALU_R_MEM_reg\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_EX_MEM|ALU_R_MEM_reg\(8),
	combout => \S_MEM_WB|R_ALU_R|R[8]~feeder_combout\);

-- Location: FF_X106_Y15_N11
\S_MEM_WB|R_ALU_R|R[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_MEM_WB|R_ALU_R|R[8]~feeder_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_MEM_WB|R_ALU_R|R\(8));

-- Location: LCCOMB_X106_Y15_N20
\S_MEM_WB|ALU_R_WB_reg[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_MEM_WB|ALU_R_WB_reg[8]~feeder_combout\ = \S_MEM_WB|R_ALU_R|R\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_MEM_WB|R_ALU_R|R\(8),
	combout => \S_MEM_WB|ALU_R_WB_reg[8]~feeder_combout\);

-- Location: FF_X106_Y15_N21
\S_MEM_WB|ALU_R_WB_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_MEM_WB|ALU_R_WB_reg[8]~feeder_combout\,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_MEM_WB|ALU_R_WB_reg\(8));

-- Location: LCCOMB_X106_Y11_N24
\Mux_2_1_WB|Y[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_2_1_WB|Y[8]~8_combout\ = (!\S_MEM_WB|WB_out_reg\(1) & \S_MEM_WB|ALU_R_WB_reg\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_MEM_WB|WB_out_reg\(1),
	datad => \S_MEM_WB|ALU_R_WB_reg\(8),
	combout => \Mux_2_1_WB|Y[8]~8_combout\);

-- Location: LCCOMB_X107_Y11_N20
\S_Registers|regs[0][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|regs[0][8]~feeder_combout\ = \Mux_2_1_WB|Y[8]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux_2_1_WB|Y[8]~8_combout\,
	combout => \S_Registers|regs[0][8]~feeder_combout\);

-- Location: FF_X107_Y11_N21
\S_Registers|regs[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_Registers|regs[0][8]~feeder_combout\,
	ena => \S_Registers|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[0][8]~q\);

-- Location: LCCOMB_X107_Y15_N14
\S_ID_EX|R_RT|R[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_ID_EX|R_RT|R[8]~feeder_combout\ = \S_Registers|regs[0][8]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_Registers|regs[0][8]~q\,
	combout => \S_ID_EX|R_RT|R[8]~feeder_combout\);

-- Location: FF_X107_Y15_N15
\S_ID_EX|R_RT|R[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_ID_EX|R_RT|R[8]~feeder_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|R_RT|R\(8));

-- Location: FF_X107_Y15_N25
\S_ID_EX|RT_Data_EX_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \S_ID_EX|R_RT|R\(8),
	sload => VCC,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|RT_Data_EX_reg\(8));

-- Location: LCCOMB_X107_Y15_N24
\Mux_2_1_EX_1|Y[8]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_2_1_EX_1|Y[8]~7_combout\ = (\S_ID_EX|RT_Data_EX_reg\(8) & !\S_ID_EX|EX_out_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S_ID_EX|RT_Data_EX_reg\(8),
	datad => \S_ID_EX|EX_out_reg\(1),
	combout => \Mux_2_1_EX_1|Y[8]~7_combout\);

-- Location: LCCOMB_X108_Y15_N26
\ALU|carry_v[9]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|carry_v[9]~8_combout\ = (\S_ID_EX|Src_A_reg\(8) & ((\ALU|carry_v[8]~7_combout\) # (\Mux_2_1_EX_1|Y[8]~7_combout\ $ (\ALUControl|Add_Sub~combout\)))) # (!\S_ID_EX|Src_A_reg\(8) & (\ALU|carry_v[8]~7_combout\ & (\Mux_2_1_EX_1|Y[8]~7_combout\ $ 
-- (\ALUControl|Add_Sub~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_2_1_EX_1|Y[8]~7_combout\,
	datab => \ALUControl|Add_Sub~combout\,
	datac => \S_ID_EX|Src_A_reg\(8),
	datad => \ALU|carry_v[8]~7_combout\,
	combout => \ALU|carry_v[9]~8_combout\);

-- Location: LCCOMB_X107_Y15_N2
\ALU|R[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|R\(9) = \S_ID_EX|Src_A_reg\(9) $ (\ALU|carry_v[9]~8_combout\ $ (((!\ALUControl|Add_Sub~combout\ & \Mux_2_1_EX_1|Y[9]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl|Add_Sub~combout\,
	datab => \Mux_2_1_EX_1|Y[9]~8_combout\,
	datac => \S_ID_EX|Src_A_reg\(9),
	datad => \ALU|carry_v[9]~8_combout\,
	combout => \ALU|R\(9));

-- Location: FF_X107_Y15_N3
\S_EX_MEM|R_ALU_R|R[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \ALU|R\(9),
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_EX_MEM|R_ALU_R|R\(9));

-- Location: LCCOMB_X106_Y15_N4
\S_EX_MEM|ALU_R_MEM_reg[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_EX_MEM|ALU_R_MEM_reg[9]~feeder_combout\ = \S_EX_MEM|R_ALU_R|R\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_EX_MEM|R_ALU_R|R\(9),
	combout => \S_EX_MEM|ALU_R_MEM_reg[9]~feeder_combout\);

-- Location: FF_X106_Y15_N5
\S_EX_MEM|ALU_R_MEM_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_EX_MEM|ALU_R_MEM_reg[9]~feeder_combout\,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_EX_MEM|ALU_R_MEM_reg\(9));

-- Location: LCCOMB_X105_Y15_N2
\S_MEM_WB|R_ALU_R|R[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_MEM_WB|R_ALU_R|R[9]~feeder_combout\ = \S_EX_MEM|ALU_R_MEM_reg\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_EX_MEM|ALU_R_MEM_reg\(9),
	combout => \S_MEM_WB|R_ALU_R|R[9]~feeder_combout\);

-- Location: FF_X105_Y15_N3
\S_MEM_WB|R_ALU_R|R[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_MEM_WB|R_ALU_R|R[9]~feeder_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_MEM_WB|R_ALU_R|R\(9));

-- Location: LCCOMB_X105_Y15_N12
\S_MEM_WB|ALU_R_WB_reg[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_MEM_WB|ALU_R_WB_reg[9]~feeder_combout\ = \S_MEM_WB|R_ALU_R|R\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_MEM_WB|R_ALU_R|R\(9),
	combout => \S_MEM_WB|ALU_R_WB_reg[9]~feeder_combout\);

-- Location: FF_X105_Y15_N13
\S_MEM_WB|ALU_R_WB_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_MEM_WB|ALU_R_WB_reg[9]~feeder_combout\,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_MEM_WB|ALU_R_WB_reg\(9));

-- Location: LCCOMB_X105_Y11_N6
\Mux_2_1_WB|Y[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_2_1_WB|Y[9]~9_combout\ = (\S_MEM_WB|ALU_R_WB_reg\(9) & !\S_MEM_WB|WB_out_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S_MEM_WB|ALU_R_WB_reg\(9),
	datad => \S_MEM_WB|WB_out_reg\(1),
	combout => \Mux_2_1_WB|Y[9]~9_combout\);

-- Location: FF_X106_Y11_N23
\S_Registers|regs[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[9]~9_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[3][9]~q\);

-- Location: LCCOMB_X105_Y11_N28
\S_Registers|Mux38~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux38~2_combout\ = (\sw[1]~input_o\ & (((\sw[0]~input_o\)))) # (!\sw[1]~input_o\ & ((\sw[0]~input_o\ & ((\S_Registers|regs[1][9]~q\))) # (!\sw[0]~input_o\ & (\S_Registers|regs[0][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|regs[0][9]~q\,
	datab => \sw[1]~input_o\,
	datac => \S_Registers|regs[1][9]~q\,
	datad => \sw[0]~input_o\,
	combout => \S_Registers|Mux38~2_combout\);

-- Location: LCCOMB_X106_Y11_N8
\S_Registers|Mux38~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux38~3_combout\ = (\sw[1]~input_o\ & ((\S_Registers|Mux38~2_combout\ & (\S_Registers|regs[3][9]~q\)) # (!\S_Registers|Mux38~2_combout\ & ((\S_Registers|regs[2][9]~q\))))) # (!\sw[1]~input_o\ & (((\S_Registers|Mux38~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|regs[3][9]~q\,
	datab => \sw[1]~input_o\,
	datac => \S_Registers|regs[2][9]~q\,
	datad => \S_Registers|Mux38~2_combout\,
	combout => \S_Registers|Mux38~3_combout\);

-- Location: LCCOMB_X107_Y9_N16
\S_Registers|Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux38~0_combout\ = (\sw[1]~input_o\ & ((\sw[0]~input_o\) # ((\S_Registers|regs[6][9]~q\)))) # (!\sw[1]~input_o\ & (!\sw[0]~input_o\ & ((\S_Registers|regs[4][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[0]~input_o\,
	datac => \S_Registers|regs[6][9]~q\,
	datad => \S_Registers|regs[4][9]~q\,
	combout => \S_Registers|Mux38~0_combout\);

-- Location: LCCOMB_X107_Y8_N24
\S_Registers|Mux38~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux38~1_combout\ = (\sw[0]~input_o\ & ((\S_Registers|Mux38~0_combout\ & (\S_Registers|regs[7][9]~q\)) # (!\S_Registers|Mux38~0_combout\ & ((\S_Registers|regs[5][9]~q\))))) # (!\sw[0]~input_o\ & (((\S_Registers|Mux38~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|regs[7][9]~q\,
	datab => \sw[0]~input_o\,
	datac => \S_Registers|regs[5][9]~q\,
	datad => \S_Registers|Mux38~0_combout\,
	combout => \S_Registers|Mux38~1_combout\);

-- Location: LCCOMB_X107_Y8_N22
\S_Registers|Mux38~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux38~4_combout\ = (!\sw[3]~input_o\ & ((\sw[2]~input_o\ & ((\S_Registers|Mux38~1_combout\))) # (!\sw[2]~input_o\ & (\S_Registers|Mux38~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|Mux38~3_combout\,
	datab => \sw[2]~input_o\,
	datac => \sw[3]~input_o\,
	datad => \S_Registers|Mux38~1_combout\,
	combout => \S_Registers|Mux38~4_combout\);

-- Location: LCCOMB_X109_Y13_N10
\S_ID_EX|R_RT|R[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_ID_EX|R_RT|R[10]~feeder_combout\ = \S_Registers|regs[0][10]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S_Registers|regs[0][10]~q\,
	combout => \S_ID_EX|R_RT|R[10]~feeder_combout\);

-- Location: FF_X109_Y13_N11
\S_ID_EX|R_RT|R[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_ID_EX|R_RT|R[10]~feeder_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|R_RT|R\(10));

-- Location: LCCOMB_X109_Y13_N0
\S_ID_EX|RT_Data_EX_reg[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_ID_EX|RT_Data_EX_reg[10]~feeder_combout\ = \S_ID_EX|R_RT|R\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_ID_EX|R_RT|R\(10),
	combout => \S_ID_EX|RT_Data_EX_reg[10]~feeder_combout\);

-- Location: FF_X109_Y13_N1
\S_ID_EX|RT_Data_EX_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_ID_EX|RT_Data_EX_reg[10]~feeder_combout\,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|RT_Data_EX_reg\(10));

-- Location: LCCOMB_X109_Y15_N18
\Mux_2_1_EX_1|Y[10]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_2_1_EX_1|Y[10]~9_combout\ = (\S_ID_EX|EX_out_reg\(1) & (\S_ID_EX|RD_EX_reg\(0))) # (!\S_ID_EX|EX_out_reg\(1) & ((\S_ID_EX|RT_Data_EX_reg\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S_ID_EX|RD_EX_reg\(0),
	datac => \S_ID_EX|EX_out_reg\(1),
	datad => \S_ID_EX|RT_Data_EX_reg\(10),
	combout => \Mux_2_1_EX_1|Y[10]~9_combout\);

-- Location: LCCOMB_X108_Y15_N12
\ALU|carry_v[10]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|carry_v[10]~9_combout\ = (\S_ID_EX|Src_A_reg\(9) & ((\ALU|carry_v[9]~8_combout\) # ((!\ALUControl|Add_Sub~combout\ & \Mux_2_1_EX_1|Y[9]~8_combout\)))) # (!\S_ID_EX|Src_A_reg\(9) & (!\ALUControl|Add_Sub~combout\ & (\Mux_2_1_EX_1|Y[9]~8_combout\ & 
-- \ALU|carry_v[9]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl|Add_Sub~combout\,
	datab => \Mux_2_1_EX_1|Y[9]~8_combout\,
	datac => \S_ID_EX|Src_A_reg\(9),
	datad => \ALU|carry_v[9]~8_combout\,
	combout => \ALU|carry_v[10]~9_combout\);

-- Location: FF_X107_Y9_N31
\S_Registers|regs[6][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[10]~10_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[6][10]~q\);

-- Location: FF_X106_Y9_N31
\S_Registers|regs[4][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[10]~10_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[4][10]~q\);

-- Location: LCCOMB_X106_Y9_N30
\S_Registers|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux5~0_combout\ = (\S_IF_ID|Inst_ID_reg\(1) & ((\S_Registers|regs[6][10]~q\) # ((\S_IF_ID|Inst_ID_reg\(0))))) # (!\S_IF_ID|Inst_ID_reg\(1) & (((\S_Registers|regs[4][10]~q\ & !\S_IF_ID|Inst_ID_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IF_ID|Inst_ID_reg\(1),
	datab => \S_Registers|regs[6][10]~q\,
	datac => \S_Registers|regs[4][10]~q\,
	datad => \S_IF_ID|Inst_ID_reg\(0),
	combout => \S_Registers|Mux5~0_combout\);

-- Location: FF_X107_Y8_N11
\S_Registers|regs[7][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[10]~10_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[7][10]~q\);

-- Location: FF_X107_Y8_N17
\S_Registers|regs[5][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[10]~10_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[5][10]~q\);

-- Location: LCCOMB_X107_Y8_N10
\S_Registers|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux5~1_combout\ = (\S_IF_ID|Inst_ID_reg\(0) & ((\S_Registers|Mux5~0_combout\ & (\S_Registers|regs[7][10]~q\)) # (!\S_Registers|Mux5~0_combout\ & ((\S_Registers|regs[5][10]~q\))))) # (!\S_IF_ID|Inst_ID_reg\(0) & (\S_Registers|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IF_ID|Inst_ID_reg\(0),
	datab => \S_Registers|Mux5~0_combout\,
	datac => \S_Registers|regs[7][10]~q\,
	datad => \S_Registers|regs[5][10]~q\,
	combout => \S_Registers|Mux5~1_combout\);

-- Location: FF_X105_Y11_N5
\S_Registers|regs[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[10]~10_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[1][10]~q\);

-- Location: LCCOMB_X105_Y11_N18
\S_Registers|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux5~2_combout\ = (\S_IF_ID|Inst_ID_reg\(1) & (((\S_IF_ID|Inst_ID_reg\(0))))) # (!\S_IF_ID|Inst_ID_reg\(1) & ((\S_IF_ID|Inst_ID_reg\(0) & (\S_Registers|regs[1][10]~q\)) # (!\S_IF_ID|Inst_ID_reg\(0) & ((\S_Registers|regs[0][10]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IF_ID|Inst_ID_reg\(1),
	datab => \S_Registers|regs[1][10]~q\,
	datac => \S_Registers|regs[0][10]~q\,
	datad => \S_IF_ID|Inst_ID_reg\(0),
	combout => \S_Registers|Mux5~2_combout\);

-- Location: FF_X106_Y11_N17
\S_Registers|regs[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[10]~10_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[2][10]~q\);

-- Location: FF_X106_Y11_N7
\S_Registers|regs[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[10]~10_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[3][10]~q\);

-- Location: LCCOMB_X106_Y11_N16
\S_Registers|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux5~3_combout\ = (\S_IF_ID|Inst_ID_reg\(1) & ((\S_Registers|Mux5~2_combout\ & ((\S_Registers|regs[3][10]~q\))) # (!\S_Registers|Mux5~2_combout\ & (\S_Registers|regs[2][10]~q\)))) # (!\S_IF_ID|Inst_ID_reg\(1) & (\S_Registers|Mux5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IF_ID|Inst_ID_reg\(1),
	datab => \S_Registers|Mux5~2_combout\,
	datac => \S_Registers|regs[2][10]~q\,
	datad => \S_Registers|regs[3][10]~q\,
	combout => \S_Registers|Mux5~3_combout\);

-- Location: LCCOMB_X108_Y11_N16
\S_Registers|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux5~4_combout\ = (\S_IF_ID|Inst_ID_reg\(2) & (\S_Registers|Mux5~1_combout\)) # (!\S_IF_ID|Inst_ID_reg\(2) & ((\S_Registers|Mux5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|Mux5~1_combout\,
	datac => \S_Registers|Mux5~3_combout\,
	datad => \S_IF_ID|Inst_ID_reg\(2),
	combout => \S_Registers|Mux5~4_combout\);

-- Location: FF_X108_Y11_N17
\S_ID_EX|R_RS|R[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_Registers|Mux5~4_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|R_RS|R\(10));

-- Location: FF_X108_Y15_N19
\S_ID_EX|Src_A_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \S_ID_EX|R_RS|R\(10),
	sload => VCC,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|Src_A_reg\(10));

-- Location: LCCOMB_X107_Y15_N6
\ALU|R[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|R\(10) = \ALUControl|Add_Sub~combout\ $ (\Mux_2_1_EX_1|Y[10]~9_combout\ $ (\ALU|carry_v[10]~9_combout\ $ (\S_ID_EX|Src_A_reg\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl|Add_Sub~combout\,
	datab => \Mux_2_1_EX_1|Y[10]~9_combout\,
	datac => \ALU|carry_v[10]~9_combout\,
	datad => \S_ID_EX|Src_A_reg\(10),
	combout => \ALU|R\(10));

-- Location: FF_X107_Y15_N7
\S_EX_MEM|R_ALU_R|R[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \ALU|R\(10),
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_EX_MEM|R_ALU_R|R\(10));

-- Location: LCCOMB_X106_Y15_N30
\S_EX_MEM|ALU_R_MEM_reg[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_EX_MEM|ALU_R_MEM_reg[10]~feeder_combout\ = \S_EX_MEM|R_ALU_R|R\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_EX_MEM|R_ALU_R|R\(10),
	combout => \S_EX_MEM|ALU_R_MEM_reg[10]~feeder_combout\);

-- Location: FF_X106_Y15_N31
\S_EX_MEM|ALU_R_MEM_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_EX_MEM|ALU_R_MEM_reg[10]~feeder_combout\,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_EX_MEM|ALU_R_MEM_reg\(10));

-- Location: FF_X105_Y15_N21
\S_MEM_WB|R_ALU_R|R[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \S_EX_MEM|ALU_R_MEM_reg\(10),
	sload => VCC,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_MEM_WB|R_ALU_R|R\(10));

-- Location: LCCOMB_X105_Y15_N26
\S_MEM_WB|ALU_R_WB_reg[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_MEM_WB|ALU_R_WB_reg[10]~feeder_combout\ = \S_MEM_WB|R_ALU_R|R\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_MEM_WB|R_ALU_R|R\(10),
	combout => \S_MEM_WB|ALU_R_WB_reg[10]~feeder_combout\);

-- Location: FF_X105_Y15_N27
\S_MEM_WB|ALU_R_WB_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_MEM_WB|ALU_R_WB_reg[10]~feeder_combout\,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_MEM_WB|ALU_R_WB_reg\(10));

-- Location: LCCOMB_X105_Y11_N26
\Mux_2_1_WB|Y[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_2_1_WB|Y[10]~10_combout\ = (!\S_MEM_WB|WB_out_reg\(1) & \S_MEM_WB|ALU_R_WB_reg\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_MEM_WB|WB_out_reg\(1),
	datad => \S_MEM_WB|ALU_R_WB_reg\(10),
	combout => \Mux_2_1_WB|Y[10]~10_combout\);

-- Location: FF_X105_Y11_N19
\S_Registers|regs[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[10]~10_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[0][10]~q\);

-- Location: LCCOMB_X105_Y11_N4
\S_Registers|Mux37~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux37~2_combout\ = (\sw[1]~input_o\ & (((\sw[0]~input_o\)))) # (!\sw[1]~input_o\ & ((\sw[0]~input_o\ & ((\S_Registers|regs[1][10]~q\))) # (!\sw[0]~input_o\ & (\S_Registers|regs[0][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|regs[0][10]~q\,
	datab => \sw[1]~input_o\,
	datac => \S_Registers|regs[1][10]~q\,
	datad => \sw[0]~input_o\,
	combout => \S_Registers|Mux37~2_combout\);

-- Location: LCCOMB_X106_Y11_N6
\S_Registers|Mux37~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux37~3_combout\ = (\sw[1]~input_o\ & ((\S_Registers|Mux37~2_combout\ & (\S_Registers|regs[3][10]~q\)) # (!\S_Registers|Mux37~2_combout\ & ((\S_Registers|regs[2][10]~q\))))) # (!\sw[1]~input_o\ & (\S_Registers|Mux37~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \S_Registers|Mux37~2_combout\,
	datac => \S_Registers|regs[3][10]~q\,
	datad => \S_Registers|regs[2][10]~q\,
	combout => \S_Registers|Mux37~3_combout\);

-- Location: LCCOMB_X107_Y9_N30
\S_Registers|Mux37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux37~0_combout\ = (\sw[1]~input_o\ & ((\sw[0]~input_o\) # ((\S_Registers|regs[6][10]~q\)))) # (!\sw[1]~input_o\ & (!\sw[0]~input_o\ & ((\S_Registers|regs[4][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[0]~input_o\,
	datac => \S_Registers|regs[6][10]~q\,
	datad => \S_Registers|regs[4][10]~q\,
	combout => \S_Registers|Mux37~0_combout\);

-- Location: LCCOMB_X107_Y8_N16
\S_Registers|Mux37~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux37~1_combout\ = (\sw[0]~input_o\ & ((\S_Registers|Mux37~0_combout\ & (\S_Registers|regs[7][10]~q\)) # (!\S_Registers|Mux37~0_combout\ & ((\S_Registers|regs[5][10]~q\))))) # (!\sw[0]~input_o\ & (((\S_Registers|Mux37~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|regs[7][10]~q\,
	datab => \sw[0]~input_o\,
	datac => \S_Registers|regs[5][10]~q\,
	datad => \S_Registers|Mux37~0_combout\,
	combout => \S_Registers|Mux37~1_combout\);

-- Location: LCCOMB_X107_Y8_N20
\S_Registers|Mux37~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux37~4_combout\ = (!\sw[3]~input_o\ & ((\sw[2]~input_o\ & ((\S_Registers|Mux37~1_combout\))) # (!\sw[2]~input_o\ & (\S_Registers|Mux37~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|Mux37~3_combout\,
	datab => \sw[2]~input_o\,
	datac => \sw[3]~input_o\,
	datad => \S_Registers|Mux37~1_combout\,
	combout => \S_Registers|Mux37~4_combout\);

-- Location: FF_X106_Y11_N15
\S_Registers|regs[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Mux_2_1_WB|Y[11]~11_combout\,
	ena => \S_Registers|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[3][11]~q\);

-- Location: FF_X107_Y11_N23
\S_Registers|regs[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[11]~11_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[1][11]~q\);

-- Location: FF_X107_Y11_N29
\S_Registers|regs[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[11]~11_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[0][11]~q\);

-- Location: LCCOMB_X107_Y11_N28
\S_Registers|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux4~2_combout\ = (\S_IF_ID|Inst_ID_reg\(0) & ((\S_Registers|regs[1][11]~q\) # ((\S_IF_ID|Inst_ID_reg\(1))))) # (!\S_IF_ID|Inst_ID_reg\(0) & (((\S_Registers|regs[0][11]~q\ & !\S_IF_ID|Inst_ID_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IF_ID|Inst_ID_reg\(0),
	datab => \S_Registers|regs[1][11]~q\,
	datac => \S_Registers|regs[0][11]~q\,
	datad => \S_IF_ID|Inst_ID_reg\(1),
	combout => \S_Registers|Mux4~2_combout\);

-- Location: LCCOMB_X106_Y11_N4
\S_Registers|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux4~3_combout\ = (\S_IF_ID|Inst_ID_reg\(1) & ((\S_Registers|Mux4~2_combout\ & (\S_Registers|regs[3][11]~q\)) # (!\S_Registers|Mux4~2_combout\ & ((\S_Registers|regs[2][11]~q\))))) # (!\S_IF_ID|Inst_ID_reg\(1) & 
-- (((\S_Registers|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IF_ID|Inst_ID_reg\(1),
	datab => \S_Registers|regs[3][11]~q\,
	datac => \S_Registers|regs[2][11]~q\,
	datad => \S_Registers|Mux4~2_combout\,
	combout => \S_Registers|Mux4~3_combout\);

-- Location: FF_X107_Y8_N7
\S_Registers|regs[5][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[11]~11_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[5][11]~q\);

-- Location: FF_X106_Y8_N15
\S_Registers|regs[7][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[11]~11_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[7][11]~q\);

-- Location: FF_X106_Y9_N1
\S_Registers|regs[4][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[11]~11_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[4][11]~q\);

-- Location: FF_X107_Y9_N13
\S_Registers|regs[6][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[11]~11_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[6][11]~q\);

-- Location: LCCOMB_X106_Y9_N0
\S_Registers|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux4~0_combout\ = (\S_IF_ID|Inst_ID_reg\(1) & ((\S_IF_ID|Inst_ID_reg\(0)) # ((\S_Registers|regs[6][11]~q\)))) # (!\S_IF_ID|Inst_ID_reg\(1) & (!\S_IF_ID|Inst_ID_reg\(0) & (\S_Registers|regs[4][11]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IF_ID|Inst_ID_reg\(1),
	datab => \S_IF_ID|Inst_ID_reg\(0),
	datac => \S_Registers|regs[4][11]~q\,
	datad => \S_Registers|regs[6][11]~q\,
	combout => \S_Registers|Mux4~0_combout\);

-- Location: LCCOMB_X106_Y8_N14
\S_Registers|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux4~1_combout\ = (\S_IF_ID|Inst_ID_reg\(0) & ((\S_Registers|Mux4~0_combout\ & ((\S_Registers|regs[7][11]~q\))) # (!\S_Registers|Mux4~0_combout\ & (\S_Registers|regs[5][11]~q\)))) # (!\S_IF_ID|Inst_ID_reg\(0) & 
-- (((\S_Registers|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|regs[5][11]~q\,
	datab => \S_IF_ID|Inst_ID_reg\(0),
	datac => \S_Registers|regs[7][11]~q\,
	datad => \S_Registers|Mux4~0_combout\,
	combout => \S_Registers|Mux4~1_combout\);

-- Location: LCCOMB_X109_Y11_N20
\S_Registers|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux4~4_combout\ = (\S_IF_ID|Inst_ID_reg\(2) & ((\S_Registers|Mux4~1_combout\))) # (!\S_IF_ID|Inst_ID_reg\(2) & (\S_Registers|Mux4~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S_IF_ID|Inst_ID_reg\(2),
	datac => \S_Registers|Mux4~3_combout\,
	datad => \S_Registers|Mux4~1_combout\,
	combout => \S_Registers|Mux4~4_combout\);

-- Location: FF_X109_Y11_N21
\S_ID_EX|R_RS|R[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_Registers|Mux4~4_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|R_RS|R\(11));

-- Location: FF_X108_Y15_N5
\S_ID_EX|Src_A_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \S_ID_EX|R_RS|R\(11),
	sload => VCC,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|Src_A_reg\(11));

-- Location: LCCOMB_X108_Y15_N18
\ALU|carry_v[11]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|carry_v[11]~10_combout\ = (\S_ID_EX|Src_A_reg\(10) & ((\ALU|carry_v[10]~9_combout\) # (\ALUControl|Add_Sub~combout\ $ (\Mux_2_1_EX_1|Y[10]~9_combout\)))) # (!\S_ID_EX|Src_A_reg\(10) & (\ALU|carry_v[10]~9_combout\ & (\ALUControl|Add_Sub~combout\ $ 
-- (\Mux_2_1_EX_1|Y[10]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl|Add_Sub~combout\,
	datab => \Mux_2_1_EX_1|Y[10]~9_combout\,
	datac => \S_ID_EX|Src_A_reg\(10),
	datad => \ALU|carry_v[10]~9_combout\,
	combout => \ALU|carry_v[11]~10_combout\);

-- Location: LCCOMB_X108_Y13_N12
\S_ID_EX|R_RT|R[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_ID_EX|R_RT|R[11]~feeder_combout\ = \S_Registers|regs[0][11]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_Registers|regs[0][11]~q\,
	combout => \S_ID_EX|R_RT|R[11]~feeder_combout\);

-- Location: FF_X108_Y13_N13
\S_ID_EX|R_RT|R[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_ID_EX|R_RT|R[11]~feeder_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|R_RT|R\(11));

-- Location: LCCOMB_X109_Y13_N2
\S_ID_EX|RT_Data_EX_reg[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_ID_EX|RT_Data_EX_reg[11]~feeder_combout\ = \S_ID_EX|R_RT|R\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_ID_EX|R_RT|R\(11),
	combout => \S_ID_EX|RT_Data_EX_reg[11]~feeder_combout\);

-- Location: FF_X109_Y13_N3
\S_ID_EX|RT_Data_EX_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_ID_EX|RT_Data_EX_reg[11]~feeder_combout\,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|RT_Data_EX_reg\(11));

-- Location: LCCOMB_X109_Y15_N2
\Mux_2_1_EX_1|Y[11]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_2_1_EX_1|Y[11]~10_combout\ = (\S_ID_EX|EX_out_reg\(1) & (\S_ID_EX|RD_EX_reg\(1))) # (!\S_ID_EX|EX_out_reg\(1) & ((\S_ID_EX|RT_Data_EX_reg\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_ID_EX|EX_out_reg\(1),
	datab => \S_ID_EX|RD_EX_reg\(1),
	datad => \S_ID_EX|RT_Data_EX_reg\(11),
	combout => \Mux_2_1_EX_1|Y[11]~10_combout\);

-- Location: LCCOMB_X107_Y15_N28
\ALU|R[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|R\(11) = \ALUControl|Add_Sub~combout\ $ (\S_ID_EX|Src_A_reg\(11) $ (\ALU|carry_v[11]~10_combout\ $ (\Mux_2_1_EX_1|Y[11]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl|Add_Sub~combout\,
	datab => \S_ID_EX|Src_A_reg\(11),
	datac => \ALU|carry_v[11]~10_combout\,
	datad => \Mux_2_1_EX_1|Y[11]~10_combout\,
	combout => \ALU|R\(11));

-- Location: FF_X107_Y15_N29
\S_EX_MEM|R_ALU_R|R[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \ALU|R\(11),
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_EX_MEM|R_ALU_R|R\(11));

-- Location: LCCOMB_X106_Y15_N8
\S_EX_MEM|ALU_R_MEM_reg[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_EX_MEM|ALU_R_MEM_reg[11]~feeder_combout\ = \S_EX_MEM|R_ALU_R|R\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_EX_MEM|R_ALU_R|R\(11),
	combout => \S_EX_MEM|ALU_R_MEM_reg[11]~feeder_combout\);

-- Location: FF_X106_Y15_N9
\S_EX_MEM|ALU_R_MEM_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_EX_MEM|ALU_R_MEM_reg[11]~feeder_combout\,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_EX_MEM|ALU_R_MEM_reg\(11));

-- Location: FF_X105_Y15_N15
\S_MEM_WB|R_ALU_R|R[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \S_EX_MEM|ALU_R_MEM_reg\(11),
	sload => VCC,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_MEM_WB|R_ALU_R|R\(11));

-- Location: FF_X105_Y15_N11
\S_MEM_WB|ALU_R_WB_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \S_MEM_WB|R_ALU_R|R\(11),
	sload => VCC,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_MEM_WB|ALU_R_WB_reg\(11));

-- Location: LCCOMB_X106_Y11_N14
\Mux_2_1_WB|Y[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_2_1_WB|Y[11]~11_combout\ = (\S_MEM_WB|ALU_R_WB_reg\(11) & !\S_MEM_WB|WB_out_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S_MEM_WB|ALU_R_WB_reg\(11),
	datad => \S_MEM_WB|WB_out_reg\(1),
	combout => \Mux_2_1_WB|Y[11]~11_combout\);

-- Location: FF_X106_Y11_N5
\S_Registers|regs[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[11]~11_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[2][11]~q\);

-- Location: LCCOMB_X107_Y11_N22
\S_Registers|Mux36~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux36~2_combout\ = (\sw[1]~input_o\ & (((\sw[0]~input_o\)))) # (!\sw[1]~input_o\ & ((\sw[0]~input_o\ & ((\S_Registers|regs[1][11]~q\))) # (!\sw[0]~input_o\ & (\S_Registers|regs[0][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \S_Registers|regs[0][11]~q\,
	datac => \S_Registers|regs[1][11]~q\,
	datad => \sw[0]~input_o\,
	combout => \S_Registers|Mux36~2_combout\);

-- Location: LCCOMB_X107_Y11_N18
\S_Registers|Mux36~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux36~3_combout\ = (\sw[1]~input_o\ & ((\S_Registers|Mux36~2_combout\ & ((\S_Registers|regs[3][11]~q\))) # (!\S_Registers|Mux36~2_combout\ & (\S_Registers|regs[2][11]~q\)))) # (!\sw[1]~input_o\ & (((\S_Registers|Mux36~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \S_Registers|regs[2][11]~q\,
	datac => \S_Registers|Mux36~2_combout\,
	datad => \S_Registers|regs[3][11]~q\,
	combout => \S_Registers|Mux36~3_combout\);

-- Location: LCCOMB_X107_Y9_N12
\S_Registers|Mux36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux36~0_combout\ = (\sw[1]~input_o\ & ((\sw[0]~input_o\) # ((\S_Registers|regs[6][11]~q\)))) # (!\sw[1]~input_o\ & (!\sw[0]~input_o\ & ((\S_Registers|regs[4][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[0]~input_o\,
	datac => \S_Registers|regs[6][11]~q\,
	datad => \S_Registers|regs[4][11]~q\,
	combout => \S_Registers|Mux36~0_combout\);

-- Location: LCCOMB_X107_Y8_N6
\S_Registers|Mux36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux36~1_combout\ = (\sw[0]~input_o\ & ((\S_Registers|Mux36~0_combout\ & (\S_Registers|regs[7][11]~q\)) # (!\S_Registers|Mux36~0_combout\ & ((\S_Registers|regs[5][11]~q\))))) # (!\sw[0]~input_o\ & (((\S_Registers|Mux36~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|regs[7][11]~q\,
	datab => \sw[0]~input_o\,
	datac => \S_Registers|regs[5][11]~q\,
	datad => \S_Registers|Mux36~0_combout\,
	combout => \S_Registers|Mux36~1_combout\);

-- Location: LCCOMB_X107_Y8_N28
\S_Registers|Mux36~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux36~4_combout\ = (!\sw[3]~input_o\ & ((\sw[2]~input_o\ & ((\S_Registers|Mux36~1_combout\))) # (!\sw[2]~input_o\ & (\S_Registers|Mux36~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|Mux36~3_combout\,
	datab => \sw[2]~input_o\,
	datac => \sw[3]~input_o\,
	datad => \S_Registers|Mux36~1_combout\,
	combout => \S_Registers|Mux36~4_combout\);

-- Location: LCCOMB_X107_Y11_N6
\S_Registers|Mux39~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux39~2_combout\ = (\sw[1]~input_o\ & (\sw[0]~input_o\)) # (!\sw[1]~input_o\ & ((\sw[0]~input_o\ & (\S_Registers|regs[1][8]~q\)) # (!\sw[0]~input_o\ & ((\S_Registers|regs[0][8]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[0]~input_o\,
	datac => \S_Registers|regs[1][8]~q\,
	datad => \S_Registers|regs[0][8]~q\,
	combout => \S_Registers|Mux39~2_combout\);

-- Location: LCCOMB_X107_Y11_N10
\S_Registers|Mux39~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux39~3_combout\ = (\sw[1]~input_o\ & ((\S_Registers|Mux39~2_combout\ & (\S_Registers|regs[3][8]~q\)) # (!\S_Registers|Mux39~2_combout\ & ((\S_Registers|regs[2][8]~q\))))) # (!\sw[1]~input_o\ & (\S_Registers|Mux39~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \S_Registers|Mux39~2_combout\,
	datac => \S_Registers|regs[3][8]~q\,
	datad => \S_Registers|regs[2][8]~q\,
	combout => \S_Registers|Mux39~3_combout\);

-- Location: LCCOMB_X107_Y9_N18
\S_Registers|Mux39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux39~0_combout\ = (\sw[1]~input_o\ & ((\sw[0]~input_o\) # ((\S_Registers|regs[6][8]~q\)))) # (!\sw[1]~input_o\ & (!\sw[0]~input_o\ & ((\S_Registers|regs[4][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[0]~input_o\,
	datac => \S_Registers|regs[6][8]~q\,
	datad => \S_Registers|regs[4][8]~q\,
	combout => \S_Registers|Mux39~0_combout\);

-- Location: LCCOMB_X108_Y9_N8
\S_Registers|Mux39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux39~1_combout\ = (\sw[0]~input_o\ & ((\S_Registers|Mux39~0_combout\ & (\S_Registers|regs[7][8]~q\)) # (!\S_Registers|Mux39~0_combout\ & ((\S_Registers|regs[5][8]~q\))))) # (!\sw[0]~input_o\ & (((\S_Registers|Mux39~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \S_Registers|regs[7][8]~q\,
	datac => \S_Registers|regs[5][8]~q\,
	datad => \S_Registers|Mux39~0_combout\,
	combout => \S_Registers|Mux39~1_combout\);

-- Location: LCCOMB_X107_Y11_N24
\S_Registers|Mux39~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux39~4_combout\ = (!\sw[3]~input_o\ & ((\sw[2]~input_o\ & ((\S_Registers|Mux39~1_combout\))) # (!\sw[2]~input_o\ & (\S_Registers|Mux39~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|Mux39~3_combout\,
	datab => \sw[2]~input_o\,
	datac => \sw[3]~input_o\,
	datad => \S_Registers|Mux39~1_combout\,
	combout => \S_Registers|Mux39~4_combout\);

-- Location: LCCOMB_X99_Y4_N16
\Led_3_de_4|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Led_3_de_4|Mux6~0_combout\ = (\S_Registers|Mux39~4_combout\ & ((\S_Registers|Mux36~4_combout\) # (\S_Registers|Mux38~4_combout\ $ (\S_Registers|Mux37~4_combout\)))) # (!\S_Registers|Mux39~4_combout\ & ((\S_Registers|Mux38~4_combout\) # 
-- (\S_Registers|Mux37~4_combout\ $ (\S_Registers|Mux36~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|Mux38~4_combout\,
	datab => \S_Registers|Mux37~4_combout\,
	datac => \S_Registers|Mux36~4_combout\,
	datad => \S_Registers|Mux39~4_combout\,
	combout => \Led_3_de_4|Mux6~0_combout\);

-- Location: LCCOMB_X99_Y4_N22
\Led_3_de_4|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Led_3_de_4|Mux5~0_combout\ = (\S_Registers|Mux38~4_combout\ & (!\S_Registers|Mux36~4_combout\ & ((\S_Registers|Mux39~4_combout\) # (!\S_Registers|Mux37~4_combout\)))) # (!\S_Registers|Mux38~4_combout\ & (\S_Registers|Mux39~4_combout\ & 
-- (\S_Registers|Mux37~4_combout\ $ (!\S_Registers|Mux36~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|Mux38~4_combout\,
	datab => \S_Registers|Mux37~4_combout\,
	datac => \S_Registers|Mux36~4_combout\,
	datad => \S_Registers|Mux39~4_combout\,
	combout => \Led_3_de_4|Mux5~0_combout\);

-- Location: LCCOMB_X99_Y4_N4
\Led_3_de_4|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Led_3_de_4|Mux4~0_combout\ = (\S_Registers|Mux38~4_combout\ & (((!\S_Registers|Mux36~4_combout\ & \S_Registers|Mux39~4_combout\)))) # (!\S_Registers|Mux38~4_combout\ & ((\S_Registers|Mux37~4_combout\ & (!\S_Registers|Mux36~4_combout\)) # 
-- (!\S_Registers|Mux37~4_combout\ & ((\S_Registers|Mux39~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|Mux38~4_combout\,
	datab => \S_Registers|Mux37~4_combout\,
	datac => \S_Registers|Mux36~4_combout\,
	datad => \S_Registers|Mux39~4_combout\,
	combout => \Led_3_de_4|Mux4~0_combout\);

-- Location: LCCOMB_X99_Y4_N10
\Led_3_de_4|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Led_3_de_4|Mux3~0_combout\ = (\S_Registers|Mux39~4_combout\ & (\S_Registers|Mux38~4_combout\ $ ((!\S_Registers|Mux37~4_combout\)))) # (!\S_Registers|Mux39~4_combout\ & ((\S_Registers|Mux38~4_combout\ & (!\S_Registers|Mux37~4_combout\ & 
-- \S_Registers|Mux36~4_combout\)) # (!\S_Registers|Mux38~4_combout\ & (\S_Registers|Mux37~4_combout\ & !\S_Registers|Mux36~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|Mux38~4_combout\,
	datab => \S_Registers|Mux37~4_combout\,
	datac => \S_Registers|Mux36~4_combout\,
	datad => \S_Registers|Mux39~4_combout\,
	combout => \Led_3_de_4|Mux3~0_combout\);

-- Location: LCCOMB_X99_Y4_N28
\Led_3_de_4|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Led_3_de_4|Mux2~0_combout\ = (\S_Registers|Mux37~4_combout\ & (\S_Registers|Mux36~4_combout\ & ((\S_Registers|Mux38~4_combout\) # (!\S_Registers|Mux39~4_combout\)))) # (!\S_Registers|Mux37~4_combout\ & (\S_Registers|Mux38~4_combout\ & 
-- (!\S_Registers|Mux36~4_combout\ & !\S_Registers|Mux39~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|Mux38~4_combout\,
	datab => \S_Registers|Mux37~4_combout\,
	datac => \S_Registers|Mux36~4_combout\,
	datad => \S_Registers|Mux39~4_combout\,
	combout => \Led_3_de_4|Mux2~0_combout\);

-- Location: LCCOMB_X99_Y4_N6
\Led_3_de_4|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Led_3_de_4|Mux1~0_combout\ = (\S_Registers|Mux38~4_combout\ & ((\S_Registers|Mux39~4_combout\ & ((\S_Registers|Mux36~4_combout\))) # (!\S_Registers|Mux39~4_combout\ & (\S_Registers|Mux37~4_combout\)))) # (!\S_Registers|Mux38~4_combout\ & 
-- (\S_Registers|Mux37~4_combout\ & (\S_Registers|Mux36~4_combout\ $ (\S_Registers|Mux39~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|Mux38~4_combout\,
	datab => \S_Registers|Mux37~4_combout\,
	datac => \S_Registers|Mux36~4_combout\,
	datad => \S_Registers|Mux39~4_combout\,
	combout => \Led_3_de_4|Mux1~0_combout\);

-- Location: LCCOMB_X99_Y4_N20
\Led_3_de_4|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Led_3_de_4|Mux0~0_combout\ = (\S_Registers|Mux37~4_combout\ & (!\S_Registers|Mux38~4_combout\ & (\S_Registers|Mux36~4_combout\ $ (!\S_Registers|Mux39~4_combout\)))) # (!\S_Registers|Mux37~4_combout\ & (\S_Registers|Mux39~4_combout\ & 
-- (\S_Registers|Mux38~4_combout\ $ (!\S_Registers|Mux36~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|Mux38~4_combout\,
	datab => \S_Registers|Mux37~4_combout\,
	datac => \S_Registers|Mux36~4_combout\,
	datad => \S_Registers|Mux39~4_combout\,
	combout => \Led_3_de_4|Mux0~0_combout\);

-- Location: FF_X105_Y11_N3
\S_Registers|regs[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[15]~15_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[0][15]~q\);

-- Location: LCCOMB_X105_Y11_N20
\S_Registers|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux0~2_combout\ = (\S_IF_ID|Inst_ID_reg\(1) & (((\S_IF_ID|Inst_ID_reg\(0))))) # (!\S_IF_ID|Inst_ID_reg\(1) & ((\S_IF_ID|Inst_ID_reg\(0) & ((\S_Registers|regs[1][15]~q\))) # (!\S_IF_ID|Inst_ID_reg\(0) & (\S_Registers|regs[0][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IF_ID|Inst_ID_reg\(1),
	datab => \S_Registers|regs[0][15]~q\,
	datac => \S_Registers|regs[1][15]~q\,
	datad => \S_IF_ID|Inst_ID_reg\(0),
	combout => \S_Registers|Mux0~2_combout\);

-- Location: FF_X106_Y11_N1
\S_Registers|regs[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[15]~15_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[2][15]~q\);

-- Location: FF_X106_Y11_N11
\S_Registers|regs[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[15]~15_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[3][15]~q\);

-- Location: LCCOMB_X106_Y11_N0
\S_Registers|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux0~3_combout\ = (\S_IF_ID|Inst_ID_reg\(1) & ((\S_Registers|Mux0~2_combout\ & ((\S_Registers|regs[3][15]~q\))) # (!\S_Registers|Mux0~2_combout\ & (\S_Registers|regs[2][15]~q\)))) # (!\S_IF_ID|Inst_ID_reg\(1) & (\S_Registers|Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IF_ID|Inst_ID_reg\(1),
	datab => \S_Registers|Mux0~2_combout\,
	datac => \S_Registers|regs[2][15]~q\,
	datad => \S_Registers|regs[3][15]~q\,
	combout => \S_Registers|Mux0~3_combout\);

-- Location: FF_X106_Y12_N21
\S_Registers|regs[4][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[15]~15_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[4][15]~q\);

-- Location: LCCOMB_X106_Y8_N28
\S_Registers|regs[6][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|regs[6][15]~feeder_combout\ = \Mux_2_1_WB|Y[15]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux_2_1_WB|Y[15]~15_combout\,
	combout => \S_Registers|regs[6][15]~feeder_combout\);

-- Location: FF_X106_Y8_N29
\S_Registers|regs[6][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_Registers|regs[6][15]~feeder_combout\,
	ena => \S_Registers|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[6][15]~q\);

-- Location: LCCOMB_X106_Y12_N26
\S_Registers|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux0~0_combout\ = (\S_IF_ID|Inst_ID_reg\(0) & (((\S_IF_ID|Inst_ID_reg\(1))))) # (!\S_IF_ID|Inst_ID_reg\(0) & ((\S_IF_ID|Inst_ID_reg\(1) & ((\S_Registers|regs[6][15]~q\))) # (!\S_IF_ID|Inst_ID_reg\(1) & (\S_Registers|regs[4][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IF_ID|Inst_ID_reg\(0),
	datab => \S_Registers|regs[4][15]~q\,
	datac => \S_Registers|regs[6][15]~q\,
	datad => \S_IF_ID|Inst_ID_reg\(1),
	combout => \S_Registers|Mux0~0_combout\);

-- Location: FF_X107_Y8_N13
\S_Registers|regs[5][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[15]~15_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[5][15]~q\);

-- Location: FF_X106_Y8_N27
\S_Registers|regs[7][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[15]~15_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[7][15]~q\);

-- Location: LCCOMB_X106_Y8_N26
\S_Registers|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux0~1_combout\ = (\S_Registers|Mux0~0_combout\ & (((\S_Registers|regs[7][15]~q\) # (!\S_IF_ID|Inst_ID_reg\(0))))) # (!\S_Registers|Mux0~0_combout\ & (\S_Registers|regs[5][15]~q\ & ((\S_IF_ID|Inst_ID_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|Mux0~0_combout\,
	datab => \S_Registers|regs[5][15]~q\,
	datac => \S_Registers|regs[7][15]~q\,
	datad => \S_IF_ID|Inst_ID_reg\(0),
	combout => \S_Registers|Mux0~1_combout\);

-- Location: LCCOMB_X108_Y12_N26
\S_Registers|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux0~4_combout\ = (\S_IF_ID|Inst_ID_reg\(2) & ((\S_Registers|Mux0~1_combout\))) # (!\S_IF_ID|Inst_ID_reg\(2) & (\S_Registers|Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S_Registers|Mux0~3_combout\,
	datac => \S_IF_ID|Inst_ID_reg\(2),
	datad => \S_Registers|Mux0~1_combout\,
	combout => \S_Registers|Mux0~4_combout\);

-- Location: FF_X108_Y12_N27
\S_ID_EX|R_RS|R[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_Registers|Mux0~4_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|R_RS|R\(15));

-- Location: LCCOMB_X107_Y12_N26
\S_ID_EX|Src_A_reg[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_ID_EX|Src_A_reg[15]~feeder_combout\ = \S_ID_EX|R_RS|R\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_ID_EX|R_RS|R\(15),
	combout => \S_ID_EX|Src_A_reg[15]~feeder_combout\);

-- Location: FF_X107_Y12_N27
\S_ID_EX|Src_A_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_ID_EX|Src_A_reg[15]~feeder_combout\,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|Src_A_reg\(15));

-- Location: FF_X107_Y8_N5
\S_Registers|regs[5][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[14]~14_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[5][14]~q\);

-- Location: FF_X107_Y9_N27
\S_Registers|regs[6][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[14]~14_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[6][14]~q\);

-- Location: FF_X106_Y9_N7
\S_Registers|regs[4][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[14]~14_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[4][14]~q\);

-- Location: LCCOMB_X106_Y9_N6
\S_Registers|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux1~0_combout\ = (\S_IF_ID|Inst_ID_reg\(1) & ((\S_Registers|regs[6][14]~q\) # ((\S_IF_ID|Inst_ID_reg\(0))))) # (!\S_IF_ID|Inst_ID_reg\(1) & (((\S_Registers|regs[4][14]~q\ & !\S_IF_ID|Inst_ID_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IF_ID|Inst_ID_reg\(1),
	datab => \S_Registers|regs[6][14]~q\,
	datac => \S_Registers|regs[4][14]~q\,
	datad => \S_IF_ID|Inst_ID_reg\(0),
	combout => \S_Registers|Mux1~0_combout\);

-- Location: FF_X106_Y8_N23
\S_Registers|regs[7][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[14]~14_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[7][14]~q\);

-- Location: LCCOMB_X106_Y8_N22
\S_Registers|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux1~1_combout\ = (\S_Registers|Mux1~0_combout\ & (((\S_Registers|regs[7][14]~q\) # (!\S_IF_ID|Inst_ID_reg\(0))))) # (!\S_Registers|Mux1~0_combout\ & (\S_Registers|regs[5][14]~q\ & ((\S_IF_ID|Inst_ID_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|regs[5][14]~q\,
	datab => \S_Registers|Mux1~0_combout\,
	datac => \S_Registers|regs[7][14]~q\,
	datad => \S_IF_ID|Inst_ID_reg\(0),
	combout => \S_Registers|Mux1~1_combout\);

-- Location: FF_X106_Y11_N3
\S_Registers|regs[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[14]~14_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[3][14]~q\);

-- Location: FF_X106_Y11_N29
\S_Registers|regs[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[14]~14_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[2][14]~q\);

-- Location: FF_X105_Y11_N1
\S_Registers|regs[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[14]~14_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[1][14]~q\);

-- Location: LCCOMB_X105_Y11_N22
\S_Registers|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux1~2_combout\ = (\S_IF_ID|Inst_ID_reg\(1) & (((\S_IF_ID|Inst_ID_reg\(0))))) # (!\S_IF_ID|Inst_ID_reg\(1) & ((\S_IF_ID|Inst_ID_reg\(0) & (\S_Registers|regs[1][14]~q\)) # (!\S_IF_ID|Inst_ID_reg\(0) & ((\S_Registers|regs[0][14]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IF_ID|Inst_ID_reg\(1),
	datab => \S_Registers|regs[1][14]~q\,
	datac => \S_Registers|regs[0][14]~q\,
	datad => \S_IF_ID|Inst_ID_reg\(0),
	combout => \S_Registers|Mux1~2_combout\);

-- Location: LCCOMB_X106_Y11_N28
\S_Registers|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux1~3_combout\ = (\S_IF_ID|Inst_ID_reg\(1) & ((\S_Registers|Mux1~2_combout\ & (\S_Registers|regs[3][14]~q\)) # (!\S_Registers|Mux1~2_combout\ & ((\S_Registers|regs[2][14]~q\))))) # (!\S_IF_ID|Inst_ID_reg\(1) & 
-- (((\S_Registers|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IF_ID|Inst_ID_reg\(1),
	datab => \S_Registers|regs[3][14]~q\,
	datac => \S_Registers|regs[2][14]~q\,
	datad => \S_Registers|Mux1~2_combout\,
	combout => \S_Registers|Mux1~3_combout\);

-- Location: LCCOMB_X109_Y11_N8
\S_Registers|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux1~4_combout\ = (\S_IF_ID|Inst_ID_reg\(2) & (\S_Registers|Mux1~1_combout\)) # (!\S_IF_ID|Inst_ID_reg\(2) & ((\S_Registers|Mux1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S_IF_ID|Inst_ID_reg\(2),
	datac => \S_Registers|Mux1~1_combout\,
	datad => \S_Registers|Mux1~3_combout\,
	combout => \S_Registers|Mux1~4_combout\);

-- Location: FF_X109_Y11_N9
\S_ID_EX|R_RS|R[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_Registers|Mux1~4_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|R_RS|R\(14));

-- Location: FF_X108_Y15_N23
\S_ID_EX|Src_A_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \S_ID_EX|R_RS|R\(14),
	sload => VCC,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|Src_A_reg\(14));

-- Location: FF_X107_Y8_N27
\S_Registers|regs[5][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[13]~13_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[5][13]~q\);

-- Location: FF_X107_Y9_N25
\S_Registers|regs[6][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[13]~13_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[6][13]~q\);

-- Location: FF_X106_Y9_N17
\S_Registers|regs[4][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[13]~13_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[4][13]~q\);

-- Location: LCCOMB_X106_Y9_N16
\S_Registers|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux2~0_combout\ = (\S_IF_ID|Inst_ID_reg\(1) & ((\S_Registers|regs[6][13]~q\) # ((\S_IF_ID|Inst_ID_reg\(0))))) # (!\S_IF_ID|Inst_ID_reg\(1) & (((\S_Registers|regs[4][13]~q\ & !\S_IF_ID|Inst_ID_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IF_ID|Inst_ID_reg\(1),
	datab => \S_Registers|regs[6][13]~q\,
	datac => \S_Registers|regs[4][13]~q\,
	datad => \S_IF_ID|Inst_ID_reg\(0),
	combout => \S_Registers|Mux2~0_combout\);

-- Location: FF_X107_Y8_N1
\S_Registers|regs[7][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[13]~13_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[7][13]~q\);

-- Location: LCCOMB_X107_Y8_N0
\S_Registers|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux2~1_combout\ = (\S_Registers|Mux2~0_combout\ & (((\S_Registers|regs[7][13]~q\) # (!\S_IF_ID|Inst_ID_reg\(0))))) # (!\S_Registers|Mux2~0_combout\ & (\S_Registers|regs[5][13]~q\ & ((\S_IF_ID|Inst_ID_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|regs[5][13]~q\,
	datab => \S_Registers|Mux2~0_combout\,
	datac => \S_Registers|regs[7][13]~q\,
	datad => \S_IF_ID|Inst_ID_reg\(0),
	combout => \S_Registers|Mux2~1_combout\);

-- Location: FF_X105_Y11_N25
\S_Registers|regs[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[13]~13_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[1][13]~q\);

-- Location: LCCOMB_X105_Y11_N14
\S_Registers|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux2~2_combout\ = (\S_IF_ID|Inst_ID_reg\(1) & (((\S_IF_ID|Inst_ID_reg\(0))))) # (!\S_IF_ID|Inst_ID_reg\(1) & ((\S_IF_ID|Inst_ID_reg\(0) & (\S_Registers|regs[1][13]~q\)) # (!\S_IF_ID|Inst_ID_reg\(0) & ((\S_Registers|regs[0][13]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IF_ID|Inst_ID_reg\(1),
	datab => \S_Registers|regs[1][13]~q\,
	datac => \S_Registers|regs[0][13]~q\,
	datad => \S_IF_ID|Inst_ID_reg\(0),
	combout => \S_Registers|Mux2~2_combout\);

-- Location: FF_X106_Y11_N27
\S_Registers|regs[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[13]~13_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[3][13]~q\);

-- Location: FF_X106_Y11_N13
\S_Registers|regs[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[13]~13_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[2][13]~q\);

-- Location: LCCOMB_X106_Y11_N26
\S_Registers|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux2~3_combout\ = (\S_Registers|Mux2~2_combout\ & (((\S_Registers|regs[3][13]~q\)) # (!\S_IF_ID|Inst_ID_reg\(1)))) # (!\S_Registers|Mux2~2_combout\ & (\S_IF_ID|Inst_ID_reg\(1) & ((\S_Registers|regs[2][13]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|Mux2~2_combout\,
	datab => \S_IF_ID|Inst_ID_reg\(1),
	datac => \S_Registers|regs[3][13]~q\,
	datad => \S_Registers|regs[2][13]~q\,
	combout => \S_Registers|Mux2~3_combout\);

-- Location: LCCOMB_X108_Y11_N30
\S_Registers|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux2~4_combout\ = (\S_IF_ID|Inst_ID_reg\(2) & (\S_Registers|Mux2~1_combout\)) # (!\S_IF_ID|Inst_ID_reg\(2) & ((\S_Registers|Mux2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IF_ID|Inst_ID_reg\(2),
	datac => \S_Registers|Mux2~1_combout\,
	datad => \S_Registers|Mux2~3_combout\,
	combout => \S_Registers|Mux2~4_combout\);

-- Location: FF_X108_Y11_N31
\S_ID_EX|R_RS|R[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_Registers|Mux2~4_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|R_RS|R\(13));

-- Location: FF_X108_Y15_N1
\S_ID_EX|Src_A_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \S_ID_EX|R_RS|R\(13),
	sload => VCC,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|Src_A_reg\(13));

-- Location: LCCOMB_X108_Y15_N4
\ALU|carry_v[12]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|carry_v[12]~11_combout\ = (\S_ID_EX|Src_A_reg\(11) & ((\ALU|carry_v[11]~10_combout\) # (\ALUControl|Add_Sub~combout\ $ (\Mux_2_1_EX_1|Y[11]~10_combout\)))) # (!\S_ID_EX|Src_A_reg\(11) & (\ALU|carry_v[11]~10_combout\ & (\ALUControl|Add_Sub~combout\ $ 
-- (\Mux_2_1_EX_1|Y[11]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl|Add_Sub~combout\,
	datab => \Mux_2_1_EX_1|Y[11]~10_combout\,
	datac => \S_ID_EX|Src_A_reg\(11),
	datad => \ALU|carry_v[11]~10_combout\,
	combout => \ALU|carry_v[12]~11_combout\);

-- Location: FF_X105_Y11_N31
\S_Registers|regs[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[12]~12_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[0][12]~q\);

-- Location: LCCOMB_X105_Y15_N22
\S_ID_EX|R_RT|R[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_ID_EX|R_RT|R[12]~feeder_combout\ = \S_Registers|regs[0][12]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_Registers|regs[0][12]~q\,
	combout => \S_ID_EX|R_RT|R[12]~feeder_combout\);

-- Location: FF_X105_Y15_N23
\S_ID_EX|R_RT|R[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_ID_EX|R_RT|R[12]~feeder_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|R_RT|R\(12));

-- Location: FF_X105_Y15_N19
\S_ID_EX|RT_Data_EX_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \S_ID_EX|R_RT|R\(12),
	sload => VCC,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|RT_Data_EX_reg\(12));

-- Location: LCCOMB_X105_Y15_N18
\Mux_2_1_EX_1|Y[12]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_2_1_EX_1|Y[12]~11_combout\ = (!\S_ID_EX|EX_out_reg\(1) & \S_ID_EX|RT_Data_EX_reg\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S_ID_EX|EX_out_reg\(1),
	datac => \S_ID_EX|RT_Data_EX_reg\(12),
	combout => \Mux_2_1_EX_1|Y[12]~11_combout\);

-- Location: LCCOMB_X107_Y15_N10
\ALU|R[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|R\(12) = \ALUControl|Add_Sub~combout\ $ (\S_ID_EX|Src_A_reg\(12) $ (\Mux_2_1_EX_1|Y[12]~11_combout\ $ (\ALU|carry_v[12]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl|Add_Sub~combout\,
	datab => \S_ID_EX|Src_A_reg\(12),
	datac => \Mux_2_1_EX_1|Y[12]~11_combout\,
	datad => \ALU|carry_v[12]~11_combout\,
	combout => \ALU|R\(12));

-- Location: FF_X107_Y15_N11
\S_EX_MEM|R_ALU_R|R[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \ALU|R\(12),
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_EX_MEM|R_ALU_R|R\(12));

-- Location: FF_X106_Y15_N15
\S_EX_MEM|ALU_R_MEM_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \S_EX_MEM|R_ALU_R|R\(12),
	sload => VCC,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_EX_MEM|ALU_R_MEM_reg\(12));

-- Location: FF_X105_Y15_N25
\S_MEM_WB|R_ALU_R|R[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \S_EX_MEM|ALU_R_MEM_reg\(12),
	sload => VCC,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_MEM_WB|R_ALU_R|R\(12));

-- Location: LCCOMB_X105_Y15_N28
\S_MEM_WB|ALU_R_WB_reg[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_MEM_WB|ALU_R_WB_reg[12]~feeder_combout\ = \S_MEM_WB|R_ALU_R|R\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_MEM_WB|R_ALU_R|R\(12),
	combout => \S_MEM_WB|ALU_R_WB_reg[12]~feeder_combout\);

-- Location: FF_X105_Y15_N29
\S_MEM_WB|ALU_R_WB_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_MEM_WB|ALU_R_WB_reg[12]~feeder_combout\,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_MEM_WB|ALU_R_WB_reg\(12));

-- Location: LCCOMB_X105_Y11_N16
\Mux_2_1_WB|Y[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_2_1_WB|Y[12]~12_combout\ = (\S_MEM_WB|ALU_R_WB_reg\(12) & !\S_MEM_WB|WB_out_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S_MEM_WB|ALU_R_WB_reg\(12),
	datad => \S_MEM_WB|WB_out_reg\(1),
	combout => \Mux_2_1_WB|Y[12]~12_combout\);

-- Location: FF_X106_Y11_N31
\S_Registers|regs[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[12]~12_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[3][12]~q\);

-- Location: FF_X105_Y11_N9
\S_Registers|regs[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[12]~12_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[1][12]~q\);

-- Location: LCCOMB_X105_Y11_N30
\S_Registers|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux3~2_combout\ = (\S_IF_ID|Inst_ID_reg\(1) & (((\S_IF_ID|Inst_ID_reg\(0))))) # (!\S_IF_ID|Inst_ID_reg\(1) & ((\S_IF_ID|Inst_ID_reg\(0) & (\S_Registers|regs[1][12]~q\)) # (!\S_IF_ID|Inst_ID_reg\(0) & ((\S_Registers|regs[0][12]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IF_ID|Inst_ID_reg\(1),
	datab => \S_Registers|regs[1][12]~q\,
	datac => \S_Registers|regs[0][12]~q\,
	datad => \S_IF_ID|Inst_ID_reg\(0),
	combout => \S_Registers|Mux3~2_combout\);

-- Location: FF_X106_Y11_N21
\S_Registers|regs[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[12]~12_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[2][12]~q\);

-- Location: LCCOMB_X106_Y11_N20
\S_Registers|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux3~3_combout\ = (\S_Registers|Mux3~2_combout\ & ((\S_Registers|regs[3][12]~q\) # ((!\S_IF_ID|Inst_ID_reg\(1))))) # (!\S_Registers|Mux3~2_combout\ & (((\S_Registers|regs[2][12]~q\ & \S_IF_ID|Inst_ID_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|regs[3][12]~q\,
	datab => \S_Registers|Mux3~2_combout\,
	datac => \S_Registers|regs[2][12]~q\,
	datad => \S_IF_ID|Inst_ID_reg\(1),
	combout => \S_Registers|Mux3~3_combout\);

-- Location: FF_X107_Y9_N11
\S_Registers|regs[6][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[12]~12_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[6][12]~q\);

-- Location: FF_X106_Y9_N23
\S_Registers|regs[4][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[12]~12_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[4][12]~q\);

-- Location: LCCOMB_X106_Y9_N22
\S_Registers|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux3~0_combout\ = (\S_IF_ID|Inst_ID_reg\(1) & ((\S_Registers|regs[6][12]~q\) # ((\S_IF_ID|Inst_ID_reg\(0))))) # (!\S_IF_ID|Inst_ID_reg\(1) & (((\S_Registers|regs[4][12]~q\ & !\S_IF_ID|Inst_ID_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_IF_ID|Inst_ID_reg\(1),
	datab => \S_Registers|regs[6][12]~q\,
	datac => \S_Registers|regs[4][12]~q\,
	datad => \S_IF_ID|Inst_ID_reg\(0),
	combout => \S_Registers|Mux3~0_combout\);

-- Location: FF_X106_Y8_N21
\S_Registers|regs[7][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[12]~12_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[7][12]~q\);

-- Location: FF_X107_Y8_N3
\S_Registers|regs[5][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[12]~12_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[5][12]~q\);

-- Location: LCCOMB_X106_Y8_N20
\S_Registers|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux3~1_combout\ = (\S_Registers|Mux3~0_combout\ & (((\S_Registers|regs[7][12]~q\)) # (!\S_IF_ID|Inst_ID_reg\(0)))) # (!\S_Registers|Mux3~0_combout\ & (\S_IF_ID|Inst_ID_reg\(0) & ((\S_Registers|regs[5][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|Mux3~0_combout\,
	datab => \S_IF_ID|Inst_ID_reg\(0),
	datac => \S_Registers|regs[7][12]~q\,
	datad => \S_Registers|regs[5][12]~q\,
	combout => \S_Registers|Mux3~1_combout\);

-- Location: LCCOMB_X109_Y11_N22
\S_Registers|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux3~4_combout\ = (\S_IF_ID|Inst_ID_reg\(2) & ((\S_Registers|Mux3~1_combout\))) # (!\S_IF_ID|Inst_ID_reg\(2) & (\S_Registers|Mux3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S_IF_ID|Inst_ID_reg\(2),
	datac => \S_Registers|Mux3~3_combout\,
	datad => \S_Registers|Mux3~1_combout\,
	combout => \S_Registers|Mux3~4_combout\);

-- Location: FF_X109_Y11_N23
\S_ID_EX|R_RS|R[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_Registers|Mux3~4_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|R_RS|R\(12));

-- Location: FF_X108_Y15_N11
\S_ID_EX|Src_A_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \S_ID_EX|R_RS|R\(12),
	sload => VCC,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|Src_A_reg\(12));

-- Location: LCCOMB_X108_Y15_N10
\ALU|carry_v[13]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|carry_v[13]~12_combout\ = (\ALU|carry_v[12]~11_combout\ & ((\S_ID_EX|Src_A_reg\(12)) # (\ALUControl|Add_Sub~combout\ $ (\Mux_2_1_EX_1|Y[12]~11_combout\)))) # (!\ALU|carry_v[12]~11_combout\ & (\S_ID_EX|Src_A_reg\(12) & (\ALUControl|Add_Sub~combout\ $ 
-- (\Mux_2_1_EX_1|Y[12]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl|Add_Sub~combout\,
	datab => \ALU|carry_v[12]~11_combout\,
	datac => \S_ID_EX|Src_A_reg\(12),
	datad => \Mux_2_1_EX_1|Y[12]~11_combout\,
	combout => \ALU|carry_v[13]~12_combout\);

-- Location: LCCOMB_X107_Y15_N4
\ALU|R[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|R\(13) = \Mux_2_1_EX_1|Y[13]~12_combout\ $ (\S_ID_EX|Src_A_reg\(13) $ (\ALU|carry_v[13]~12_combout\ $ (\ALUControl|Add_Sub~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_2_1_EX_1|Y[13]~12_combout\,
	datab => \S_ID_EX|Src_A_reg\(13),
	datac => \ALU|carry_v[13]~12_combout\,
	datad => \ALUControl|Add_Sub~combout\,
	combout => \ALU|R\(13));

-- Location: FF_X107_Y15_N5
\S_EX_MEM|R_ALU_R|R[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \ALU|R\(13),
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_EX_MEM|R_ALU_R|R\(13));

-- Location: LCCOMB_X106_Y15_N28
\S_EX_MEM|ALU_R_MEM_reg[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_EX_MEM|ALU_R_MEM_reg[13]~feeder_combout\ = \S_EX_MEM|R_ALU_R|R\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_EX_MEM|R_ALU_R|R\(13),
	combout => \S_EX_MEM|ALU_R_MEM_reg[13]~feeder_combout\);

-- Location: FF_X106_Y15_N29
\S_EX_MEM|ALU_R_MEM_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_EX_MEM|ALU_R_MEM_reg[13]~feeder_combout\,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_EX_MEM|ALU_R_MEM_reg\(13));

-- Location: LCCOMB_X105_Y15_N0
\S_MEM_WB|R_ALU_R|R[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_MEM_WB|R_ALU_R|R[13]~feeder_combout\ = \S_EX_MEM|ALU_R_MEM_reg\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_EX_MEM|ALU_R_MEM_reg\(13),
	combout => \S_MEM_WB|R_ALU_R|R[13]~feeder_combout\);

-- Location: FF_X105_Y15_N1
\S_MEM_WB|R_ALU_R|R[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_MEM_WB|R_ALU_R|R[13]~feeder_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_MEM_WB|R_ALU_R|R\(13));

-- Location: LCCOMB_X105_Y15_N30
\S_MEM_WB|ALU_R_WB_reg[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_MEM_WB|ALU_R_WB_reg[13]~feeder_combout\ = \S_MEM_WB|R_ALU_R|R\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_MEM_WB|R_ALU_R|R\(13),
	combout => \S_MEM_WB|ALU_R_WB_reg[13]~feeder_combout\);

-- Location: FF_X105_Y15_N31
\S_MEM_WB|ALU_R_WB_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_MEM_WB|ALU_R_WB_reg[13]~feeder_combout\,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_MEM_WB|ALU_R_WB_reg\(13));

-- Location: LCCOMB_X105_Y11_N2
\Mux_2_1_WB|Y[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_2_1_WB|Y[13]~13_combout\ = (!\S_MEM_WB|WB_out_reg\(1) & \S_MEM_WB|ALU_R_WB_reg\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_MEM_WB|WB_out_reg\(1),
	datad => \S_MEM_WB|ALU_R_WB_reg\(13),
	combout => \Mux_2_1_WB|Y[13]~13_combout\);

-- Location: FF_X105_Y11_N15
\S_Registers|regs[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[13]~13_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[0][13]~q\);

-- Location: LCCOMB_X103_Y15_N14
\S_ID_EX|R_RT|R[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_ID_EX|R_RT|R[13]~feeder_combout\ = \S_Registers|regs[0][13]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S_Registers|regs[0][13]~q\,
	combout => \S_ID_EX|R_RT|R[13]~feeder_combout\);

-- Location: FF_X103_Y15_N15
\S_ID_EX|R_RT|R[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_ID_EX|R_RT|R[13]~feeder_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|R_RT|R\(13));

-- Location: FF_X103_Y15_N25
\S_ID_EX|RT_Data_EX_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \S_ID_EX|R_RT|R\(13),
	sload => VCC,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|RT_Data_EX_reg\(13));

-- Location: LCCOMB_X103_Y15_N24
\Mux_2_1_EX_1|Y[13]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_2_1_EX_1|Y[13]~12_combout\ = (\S_ID_EX|RT_Data_EX_reg\(13) & !\S_ID_EX|EX_out_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S_ID_EX|RT_Data_EX_reg\(13),
	datad => \S_ID_EX|EX_out_reg\(1),
	combout => \Mux_2_1_EX_1|Y[13]~12_combout\);

-- Location: LCCOMB_X108_Y15_N0
\ALU|carry_v[14]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|carry_v[14]~13_combout\ = (\S_ID_EX|Src_A_reg\(13) & ((\ALU|carry_v[13]~12_combout\) # (\ALUControl|Add_Sub~combout\ $ (\Mux_2_1_EX_1|Y[13]~12_combout\)))) # (!\S_ID_EX|Src_A_reg\(13) & (\ALU|carry_v[13]~12_combout\ & (\ALUControl|Add_Sub~combout\ $ 
-- (\Mux_2_1_EX_1|Y[13]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl|Add_Sub~combout\,
	datab => \Mux_2_1_EX_1|Y[13]~12_combout\,
	datac => \S_ID_EX|Src_A_reg\(13),
	datad => \ALU|carry_v[13]~12_combout\,
	combout => \ALU|carry_v[14]~13_combout\);

-- Location: LCCOMB_X108_Y15_N8
\ALU|R[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|R\(14) = \Mux_2_1_EX_1|Y[14]~13_combout\ $ (\ALUControl|Add_Sub~combout\ $ (\S_ID_EX|Src_A_reg\(14) $ (\ALU|carry_v[14]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_2_1_EX_1|Y[14]~13_combout\,
	datab => \ALUControl|Add_Sub~combout\,
	datac => \S_ID_EX|Src_A_reg\(14),
	datad => \ALU|carry_v[14]~13_combout\,
	combout => \ALU|R\(14));

-- Location: FF_X108_Y15_N9
\S_EX_MEM|R_ALU_R|R[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \ALU|R\(14),
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_EX_MEM|R_ALU_R|R\(14));

-- Location: LCCOMB_X105_Y12_N28
\S_EX_MEM|ALU_R_MEM_reg[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_EX_MEM|ALU_R_MEM_reg[14]~feeder_combout\ = \S_EX_MEM|R_ALU_R|R\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_EX_MEM|R_ALU_R|R\(14),
	combout => \S_EX_MEM|ALU_R_MEM_reg[14]~feeder_combout\);

-- Location: FF_X105_Y12_N29
\S_EX_MEM|ALU_R_MEM_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_EX_MEM|ALU_R_MEM_reg[14]~feeder_combout\,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_EX_MEM|ALU_R_MEM_reg\(14));

-- Location: LCCOMB_X105_Y12_N16
\S_MEM_WB|R_ALU_R|R[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_MEM_WB|R_ALU_R|R[14]~feeder_combout\ = \S_EX_MEM|ALU_R_MEM_reg\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_EX_MEM|ALU_R_MEM_reg\(14),
	combout => \S_MEM_WB|R_ALU_R|R[14]~feeder_combout\);

-- Location: FF_X105_Y12_N17
\S_MEM_WB|R_ALU_R|R[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_MEM_WB|R_ALU_R|R[14]~feeder_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_MEM_WB|R_ALU_R|R\(14));

-- Location: FF_X106_Y12_N31
\S_MEM_WB|ALU_R_WB_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \S_MEM_WB|R_ALU_R|R\(14),
	sload => VCC,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_MEM_WB|ALU_R_WB_reg\(14));

-- Location: LCCOMB_X106_Y12_N30
\Mux_2_1_WB|Y[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_2_1_WB|Y[14]~14_combout\ = (\S_MEM_WB|ALU_R_WB_reg\(14) & !\S_MEM_WB|WB_out_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S_MEM_WB|ALU_R_WB_reg\(14),
	datad => \S_MEM_WB|WB_out_reg\(1),
	combout => \Mux_2_1_WB|Y[14]~14_combout\);

-- Location: FF_X105_Y11_N23
\S_Registers|regs[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[14]~14_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[0][14]~q\);

-- Location: LCCOMB_X103_Y15_N8
\S_ID_EX|R_RT|R[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_ID_EX|R_RT|R[14]~feeder_combout\ = \S_Registers|regs[0][14]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_Registers|regs[0][14]~q\,
	combout => \S_ID_EX|R_RT|R[14]~feeder_combout\);

-- Location: FF_X103_Y15_N9
\S_ID_EX|R_RT|R[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_ID_EX|R_RT|R[14]~feeder_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|R_RT|R\(14));

-- Location: FF_X103_Y15_N23
\S_ID_EX|RT_Data_EX_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \S_ID_EX|R_RT|R\(14),
	sload => VCC,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|RT_Data_EX_reg\(14));

-- Location: LCCOMB_X103_Y15_N22
\Mux_2_1_EX_1|Y[14]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_2_1_EX_1|Y[14]~13_combout\ = (\S_ID_EX|RT_Data_EX_reg\(14) & !\S_ID_EX|EX_out_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S_ID_EX|RT_Data_EX_reg\(14),
	datad => \S_ID_EX|EX_out_reg\(1),
	combout => \Mux_2_1_EX_1|Y[14]~13_combout\);

-- Location: LCCOMB_X108_Y15_N22
\ALU|R[15]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|R[15]~2_combout\ = (\S_ID_EX|Src_A_reg\(14) & ((\ALU|carry_v[14]~13_combout\) # (\Mux_2_1_EX_1|Y[14]~13_combout\ $ (\ALUControl|Add_Sub~combout\)))) # (!\S_ID_EX|Src_A_reg\(14) & (\ALU|carry_v[14]~13_combout\ & (\Mux_2_1_EX_1|Y[14]~13_combout\ $ 
-- (\ALUControl|Add_Sub~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_2_1_EX_1|Y[14]~13_combout\,
	datab => \ALUControl|Add_Sub~combout\,
	datac => \S_ID_EX|Src_A_reg\(14),
	datad => \ALU|carry_v[14]~13_combout\,
	combout => \ALU|R[15]~2_combout\);

-- Location: FF_X109_Y11_N27
\S_ID_EX|R_RT|R[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \S_Registers|regs[0][15]~q\,
	sload => VCC,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|R_RT|R\(15));

-- Location: FF_X109_Y15_N15
\S_ID_EX|RT_Data_EX_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \S_ID_EX|R_RT|R\(15),
	sload => VCC,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_ID_EX|RT_Data_EX_reg\(15));

-- Location: LCCOMB_X109_Y15_N14
\ALU|R[15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|R[15]~1_combout\ = (\S_ID_EX|EX_out_reg\(1) & (\S_ID_EX|RT_EX_reg\(0))) # (!\S_ID_EX|EX_out_reg\(1) & ((\S_ID_EX|RT_Data_EX_reg\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_ID_EX|EX_out_reg\(1),
	datab => \S_ID_EX|RT_EX_reg\(0),
	datac => \S_ID_EX|RT_Data_EX_reg\(15),
	combout => \ALU|R[15]~1_combout\);

-- Location: LCCOMB_X108_Y15_N30
\ALU|R[15]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|R[15]~3_combout\ = \S_ID_EX|Src_A_reg\(15) $ (\ALU|R[15]~2_combout\ $ (\ALU|R[15]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_ID_EX|Src_A_reg\(15),
	datac => \ALU|R[15]~2_combout\,
	datad => \ALU|R[15]~1_combout\,
	combout => \ALU|R[15]~3_combout\);

-- Location: FF_X108_Y15_N31
\S_EX_MEM|R_ALU_R|R[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \ALU|R[15]~3_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_EX_MEM|R_ALU_R|R\(15));

-- Location: LCCOMB_X105_Y12_N18
\S_EX_MEM|ALU_R_MEM_reg[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_EX_MEM|ALU_R_MEM_reg[15]~feeder_combout\ = \S_EX_MEM|R_ALU_R|R\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_EX_MEM|R_ALU_R|R\(15),
	combout => \S_EX_MEM|ALU_R_MEM_reg[15]~feeder_combout\);

-- Location: FF_X105_Y12_N19
\S_EX_MEM|ALU_R_MEM_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_EX_MEM|ALU_R_MEM_reg[15]~feeder_combout\,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_EX_MEM|ALU_R_MEM_reg\(15));

-- Location: LCCOMB_X105_Y12_N6
\S_MEM_WB|R_ALU_R|R[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_MEM_WB|R_ALU_R|R[15]~feeder_combout\ = \S_EX_MEM|ALU_R_MEM_reg\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_EX_MEM|ALU_R_MEM_reg\(15),
	combout => \S_MEM_WB|R_ALU_R|R[15]~feeder_combout\);

-- Location: FF_X105_Y12_N7
\S_MEM_WB|R_ALU_R|R[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \S_MEM_WB|R_ALU_R|R[15]~feeder_combout\,
	ena => \Global_In~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_MEM_WB|R_ALU_R|R\(15));

-- Location: FF_X106_Y12_N5
\S_MEM_WB|ALU_R_WB_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \S_MEM_WB|R_ALU_R|R\(15),
	sload => VCC,
	ena => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_MEM_WB|ALU_R_WB_reg\(15));

-- Location: LCCOMB_X106_Y12_N4
\Mux_2_1_WB|Y[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_2_1_WB|Y[15]~15_combout\ = (\S_MEM_WB|ALU_R_WB_reg\(15) & !\S_MEM_WB|WB_out_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S_MEM_WB|ALU_R_WB_reg\(15),
	datad => \S_MEM_WB|WB_out_reg\(1),
	combout => \Mux_2_1_WB|Y[15]~15_combout\);

-- Location: FF_X105_Y11_N21
\S_Registers|regs[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	asdata => \Mux_2_1_WB|Y[15]~15_combout\,
	sload => VCC,
	ena => \S_Registers|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_Registers|regs[1][15]~q\);

-- Location: LCCOMB_X105_Y11_N12
\S_Registers|Mux32~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux32~2_combout\ = (\sw[0]~input_o\ & ((\S_Registers|regs[1][15]~q\) # ((\sw[1]~input_o\)))) # (!\sw[0]~input_o\ & (((!\sw[1]~input_o\ & \S_Registers|regs[0][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|regs[1][15]~q\,
	datab => \sw[0]~input_o\,
	datac => \sw[1]~input_o\,
	datad => \S_Registers|regs[0][15]~q\,
	combout => \S_Registers|Mux32~2_combout\);

-- Location: LCCOMB_X106_Y11_N10
\S_Registers|Mux32~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux32~3_combout\ = (\S_Registers|Mux32~2_combout\ & (((\S_Registers|regs[3][15]~q\)) # (!\sw[1]~input_o\))) # (!\S_Registers|Mux32~2_combout\ & (\sw[1]~input_o\ & ((\S_Registers|regs[2][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|Mux32~2_combout\,
	datab => \sw[1]~input_o\,
	datac => \S_Registers|regs[3][15]~q\,
	datad => \S_Registers|regs[2][15]~q\,
	combout => \S_Registers|Mux32~3_combout\);

-- Location: LCCOMB_X106_Y12_N20
\S_Registers|Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux32~0_combout\ = (\sw[0]~input_o\ & (((\sw[1]~input_o\)))) # (!\sw[0]~input_o\ & ((\sw[1]~input_o\ & (\S_Registers|regs[6][15]~q\)) # (!\sw[1]~input_o\ & ((\S_Registers|regs[4][15]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|regs[6][15]~q\,
	datab => \sw[0]~input_o\,
	datac => \S_Registers|regs[4][15]~q\,
	datad => \sw[1]~input_o\,
	combout => \S_Registers|Mux32~0_combout\);

-- Location: LCCOMB_X107_Y8_N12
\S_Registers|Mux32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux32~1_combout\ = (\sw[0]~input_o\ & ((\S_Registers|Mux32~0_combout\ & (\S_Registers|regs[7][15]~q\)) # (!\S_Registers|Mux32~0_combout\ & ((\S_Registers|regs[5][15]~q\))))) # (!\sw[0]~input_o\ & (((\S_Registers|Mux32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|regs[7][15]~q\,
	datab => \sw[0]~input_o\,
	datac => \S_Registers|regs[5][15]~q\,
	datad => \S_Registers|Mux32~0_combout\,
	combout => \S_Registers|Mux32~1_combout\);

-- Location: LCCOMB_X107_Y8_N30
\S_Registers|Mux32~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux32~4_combout\ = (!\sw[3]~input_o\ & ((\sw[2]~input_o\ & ((\S_Registers|Mux32~1_combout\))) # (!\sw[2]~input_o\ & (\S_Registers|Mux32~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \S_Registers|Mux32~3_combout\,
	datac => \sw[2]~input_o\,
	datad => \S_Registers|Mux32~1_combout\,
	combout => \S_Registers|Mux32~4_combout\);

-- Location: LCCOMB_X107_Y9_N26
\S_Registers|Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux33~0_combout\ = (\sw[1]~input_o\ & ((\sw[0]~input_o\) # ((\S_Registers|regs[6][14]~q\)))) # (!\sw[1]~input_o\ & (!\sw[0]~input_o\ & ((\S_Registers|regs[4][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[0]~input_o\,
	datac => \S_Registers|regs[6][14]~q\,
	datad => \S_Registers|regs[4][14]~q\,
	combout => \S_Registers|Mux33~0_combout\);

-- Location: LCCOMB_X107_Y8_N4
\S_Registers|Mux33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux33~1_combout\ = (\sw[0]~input_o\ & ((\S_Registers|Mux33~0_combout\ & (\S_Registers|regs[7][14]~q\)) # (!\S_Registers|Mux33~0_combout\ & ((\S_Registers|regs[5][14]~q\))))) # (!\sw[0]~input_o\ & (((\S_Registers|Mux33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|regs[7][14]~q\,
	datab => \sw[0]~input_o\,
	datac => \S_Registers|regs[5][14]~q\,
	datad => \S_Registers|Mux33~0_combout\,
	combout => \S_Registers|Mux33~1_combout\);

-- Location: LCCOMB_X105_Y11_N0
\S_Registers|Mux33~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux33~2_combout\ = (\sw[1]~input_o\ & (((\sw[0]~input_o\)))) # (!\sw[1]~input_o\ & ((\sw[0]~input_o\ & ((\S_Registers|regs[1][14]~q\))) # (!\sw[0]~input_o\ & (\S_Registers|regs[0][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|regs[0][14]~q\,
	datab => \sw[1]~input_o\,
	datac => \S_Registers|regs[1][14]~q\,
	datad => \sw[0]~input_o\,
	combout => \S_Registers|Mux33~2_combout\);

-- Location: LCCOMB_X106_Y11_N2
\S_Registers|Mux33~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux33~3_combout\ = (\S_Registers|Mux33~2_combout\ & (((\S_Registers|regs[3][14]~q\)) # (!\sw[1]~input_o\))) # (!\S_Registers|Mux33~2_combout\ & (\sw[1]~input_o\ & ((\S_Registers|regs[2][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|Mux33~2_combout\,
	datab => \sw[1]~input_o\,
	datac => \S_Registers|regs[3][14]~q\,
	datad => \S_Registers|regs[2][14]~q\,
	combout => \S_Registers|Mux33~3_combout\);

-- Location: LCCOMB_X107_Y8_N14
\S_Registers|Mux33~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux33~4_combout\ = (!\sw[3]~input_o\ & ((\sw[2]~input_o\ & (\S_Registers|Mux33~1_combout\)) # (!\sw[2]~input_o\ & ((\S_Registers|Mux33~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \sw[2]~input_o\,
	datac => \S_Registers|Mux33~1_combout\,
	datad => \S_Registers|Mux33~3_combout\,
	combout => \S_Registers|Mux33~4_combout\);

-- Location: LCCOMB_X105_Y11_N8
\S_Registers|Mux35~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux35~2_combout\ = (\sw[1]~input_o\ & (((\sw[0]~input_o\)))) # (!\sw[1]~input_o\ & ((\sw[0]~input_o\ & ((\S_Registers|regs[1][12]~q\))) # (!\sw[0]~input_o\ & (\S_Registers|regs[0][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|regs[0][12]~q\,
	datab => \sw[1]~input_o\,
	datac => \S_Registers|regs[1][12]~q\,
	datad => \sw[0]~input_o\,
	combout => \S_Registers|Mux35~2_combout\);

-- Location: LCCOMB_X106_Y11_N30
\S_Registers|Mux35~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux35~3_combout\ = (\S_Registers|Mux35~2_combout\ & (((\S_Registers|regs[3][12]~q\)) # (!\sw[1]~input_o\))) # (!\S_Registers|Mux35~2_combout\ & (\sw[1]~input_o\ & ((\S_Registers|regs[2][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|Mux35~2_combout\,
	datab => \sw[1]~input_o\,
	datac => \S_Registers|regs[3][12]~q\,
	datad => \S_Registers|regs[2][12]~q\,
	combout => \S_Registers|Mux35~3_combout\);

-- Location: LCCOMB_X107_Y9_N10
\S_Registers|Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux35~0_combout\ = (\sw[1]~input_o\ & ((\sw[0]~input_o\) # ((\S_Registers|regs[6][12]~q\)))) # (!\sw[1]~input_o\ & (!\sw[0]~input_o\ & ((\S_Registers|regs[4][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[0]~input_o\,
	datac => \S_Registers|regs[6][12]~q\,
	datad => \S_Registers|regs[4][12]~q\,
	combout => \S_Registers|Mux35~0_combout\);

-- Location: LCCOMB_X107_Y8_N2
\S_Registers|Mux35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux35~1_combout\ = (\sw[0]~input_o\ & ((\S_Registers|Mux35~0_combout\ & (\S_Registers|regs[7][12]~q\)) # (!\S_Registers|Mux35~0_combout\ & ((\S_Registers|regs[5][12]~q\))))) # (!\sw[0]~input_o\ & (((\S_Registers|Mux35~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|regs[7][12]~q\,
	datab => \sw[0]~input_o\,
	datac => \S_Registers|regs[5][12]~q\,
	datad => \S_Registers|Mux35~0_combout\,
	combout => \S_Registers|Mux35~1_combout\);

-- Location: LCCOMB_X107_Y8_N8
\S_Registers|Mux35~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux35~4_combout\ = (!\sw[3]~input_o\ & ((\sw[2]~input_o\ & ((\S_Registers|Mux35~1_combout\))) # (!\sw[2]~input_o\ & (\S_Registers|Mux35~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \S_Registers|Mux35~3_combout\,
	datac => \sw[2]~input_o\,
	datad => \S_Registers|Mux35~1_combout\,
	combout => \S_Registers|Mux35~4_combout\);

-- Location: LCCOMB_X107_Y9_N24
\S_Registers|Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux34~0_combout\ = (\sw[1]~input_o\ & (((\S_Registers|regs[6][13]~q\) # (\sw[0]~input_o\)))) # (!\sw[1]~input_o\ & (\S_Registers|regs[4][13]~q\ & ((!\sw[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \S_Registers|regs[4][13]~q\,
	datac => \S_Registers|regs[6][13]~q\,
	datad => \sw[0]~input_o\,
	combout => \S_Registers|Mux34~0_combout\);

-- Location: LCCOMB_X107_Y8_N26
\S_Registers|Mux34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux34~1_combout\ = (\S_Registers|Mux34~0_combout\ & (((\S_Registers|regs[7][13]~q\)) # (!\sw[0]~input_o\))) # (!\S_Registers|Mux34~0_combout\ & (\sw[0]~input_o\ & (\S_Registers|regs[5][13]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|Mux34~0_combout\,
	datab => \sw[0]~input_o\,
	datac => \S_Registers|regs[5][13]~q\,
	datad => \S_Registers|regs[7][13]~q\,
	combout => \S_Registers|Mux34~1_combout\);

-- Location: LCCOMB_X105_Y11_N24
\S_Registers|Mux34~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux34~2_combout\ = (\sw[1]~input_o\ & (((\sw[0]~input_o\)))) # (!\sw[1]~input_o\ & ((\sw[0]~input_o\ & ((\S_Registers|regs[1][13]~q\))) # (!\sw[0]~input_o\ & (\S_Registers|regs[0][13]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|regs[0][13]~q\,
	datab => \sw[1]~input_o\,
	datac => \S_Registers|regs[1][13]~q\,
	datad => \sw[0]~input_o\,
	combout => \S_Registers|Mux34~2_combout\);

-- Location: LCCOMB_X106_Y11_N12
\S_Registers|Mux34~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux34~3_combout\ = (\sw[1]~input_o\ & ((\S_Registers|Mux34~2_combout\ & (\S_Registers|regs[3][13]~q\)) # (!\S_Registers|Mux34~2_combout\ & ((\S_Registers|regs[2][13]~q\))))) # (!\sw[1]~input_o\ & (((\S_Registers|Mux34~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|regs[3][13]~q\,
	datab => \sw[1]~input_o\,
	datac => \S_Registers|regs[2][13]~q\,
	datad => \S_Registers|Mux34~2_combout\,
	combout => \S_Registers|Mux34~3_combout\);

-- Location: LCCOMB_X107_Y8_N18
\S_Registers|Mux34~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_Registers|Mux34~4_combout\ = (!\sw[3]~input_o\ & ((\sw[2]~input_o\ & (\S_Registers|Mux34~1_combout\)) # (!\sw[2]~input_o\ & ((\S_Registers|Mux34~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|Mux34~1_combout\,
	datab => \sw[2]~input_o\,
	datac => \sw[3]~input_o\,
	datad => \S_Registers|Mux34~3_combout\,
	combout => \S_Registers|Mux34~4_combout\);

-- Location: LCCOMB_X89_Y4_N12
\Led_4_de_4|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Led_4_de_4|Mux6~0_combout\ = (\S_Registers|Mux35~4_combout\ & ((\S_Registers|Mux32~4_combout\) # (\S_Registers|Mux33~4_combout\ $ (\S_Registers|Mux34~4_combout\)))) # (!\S_Registers|Mux35~4_combout\ & ((\S_Registers|Mux34~4_combout\) # 
-- (\S_Registers|Mux32~4_combout\ $ (\S_Registers|Mux33~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|Mux32~4_combout\,
	datab => \S_Registers|Mux33~4_combout\,
	datac => \S_Registers|Mux35~4_combout\,
	datad => \S_Registers|Mux34~4_combout\,
	combout => \Led_4_de_4|Mux6~0_combout\);

-- Location: LCCOMB_X89_Y4_N18
\Led_4_de_4|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Led_4_de_4|Mux5~0_combout\ = (\S_Registers|Mux33~4_combout\ & (\S_Registers|Mux35~4_combout\ & (\S_Registers|Mux32~4_combout\ $ (\S_Registers|Mux34~4_combout\)))) # (!\S_Registers|Mux33~4_combout\ & (!\S_Registers|Mux32~4_combout\ & 
-- ((\S_Registers|Mux35~4_combout\) # (\S_Registers|Mux34~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|Mux32~4_combout\,
	datab => \S_Registers|Mux33~4_combout\,
	datac => \S_Registers|Mux35~4_combout\,
	datad => \S_Registers|Mux34~4_combout\,
	combout => \Led_4_de_4|Mux5~0_combout\);

-- Location: LCCOMB_X89_Y4_N20
\Led_4_de_4|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Led_4_de_4|Mux4~0_combout\ = (\S_Registers|Mux34~4_combout\ & (!\S_Registers|Mux32~4_combout\ & ((\S_Registers|Mux35~4_combout\)))) # (!\S_Registers|Mux34~4_combout\ & ((\S_Registers|Mux33~4_combout\ & (!\S_Registers|Mux32~4_combout\)) # 
-- (!\S_Registers|Mux33~4_combout\ & ((\S_Registers|Mux35~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|Mux32~4_combout\,
	datab => \S_Registers|Mux33~4_combout\,
	datac => \S_Registers|Mux35~4_combout\,
	datad => \S_Registers|Mux34~4_combout\,
	combout => \Led_4_de_4|Mux4~0_combout\);

-- Location: LCCOMB_X89_Y4_N26
\Led_4_de_4|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Led_4_de_4|Mux3~0_combout\ = (\S_Registers|Mux35~4_combout\ & ((\S_Registers|Mux33~4_combout\ $ (!\S_Registers|Mux34~4_combout\)))) # (!\S_Registers|Mux35~4_combout\ & ((\S_Registers|Mux32~4_combout\ & (!\S_Registers|Mux33~4_combout\ & 
-- \S_Registers|Mux34~4_combout\)) # (!\S_Registers|Mux32~4_combout\ & (\S_Registers|Mux33~4_combout\ & !\S_Registers|Mux34~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|Mux32~4_combout\,
	datab => \S_Registers|Mux33~4_combout\,
	datac => \S_Registers|Mux35~4_combout\,
	datad => \S_Registers|Mux34~4_combout\,
	combout => \Led_4_de_4|Mux3~0_combout\);

-- Location: LCCOMB_X89_Y4_N0
\Led_4_de_4|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Led_4_de_4|Mux2~0_combout\ = (\S_Registers|Mux32~4_combout\ & (\S_Registers|Mux33~4_combout\ & ((\S_Registers|Mux34~4_combout\) # (!\S_Registers|Mux35~4_combout\)))) # (!\S_Registers|Mux32~4_combout\ & (!\S_Registers|Mux33~4_combout\ & 
-- (!\S_Registers|Mux35~4_combout\ & \S_Registers|Mux34~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|Mux32~4_combout\,
	datab => \S_Registers|Mux33~4_combout\,
	datac => \S_Registers|Mux35~4_combout\,
	datad => \S_Registers|Mux34~4_combout\,
	combout => \Led_4_de_4|Mux2~0_combout\);

-- Location: LCCOMB_X89_Y4_N22
\Led_4_de_4|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Led_4_de_4|Mux1~0_combout\ = (\S_Registers|Mux32~4_combout\ & ((\S_Registers|Mux35~4_combout\ & ((\S_Registers|Mux34~4_combout\))) # (!\S_Registers|Mux35~4_combout\ & (\S_Registers|Mux33~4_combout\)))) # (!\S_Registers|Mux32~4_combout\ & 
-- (\S_Registers|Mux33~4_combout\ & (\S_Registers|Mux35~4_combout\ $ (\S_Registers|Mux34~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|Mux32~4_combout\,
	datab => \S_Registers|Mux33~4_combout\,
	datac => \S_Registers|Mux35~4_combout\,
	datad => \S_Registers|Mux34~4_combout\,
	combout => \Led_4_de_4|Mux1~0_combout\);

-- Location: LCCOMB_X89_Y4_N28
\Led_4_de_4|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Led_4_de_4|Mux0~0_combout\ = (\S_Registers|Mux32~4_combout\ & (\S_Registers|Mux35~4_combout\ & (\S_Registers|Mux33~4_combout\ $ (\S_Registers|Mux34~4_combout\)))) # (!\S_Registers|Mux32~4_combout\ & (!\S_Registers|Mux34~4_combout\ & 
-- (\S_Registers|Mux33~4_combout\ $ (\S_Registers|Mux35~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Registers|Mux32~4_combout\,
	datab => \S_Registers|Mux33~4_combout\,
	datac => \S_Registers|Mux35~4_combout\,
	datad => \S_Registers|Mux34~4_combout\,
	combout => \Led_4_de_4|Mux0~0_combout\);

ww_hex0(6) <= \hex0[6]~output_o\;

ww_hex0(5) <= \hex0[5]~output_o\;

ww_hex0(4) <= \hex0[4]~output_o\;

ww_hex0(3) <= \hex0[3]~output_o\;

ww_hex0(2) <= \hex0[2]~output_o\;

ww_hex0(1) <= \hex0[1]~output_o\;

ww_hex0(0) <= \hex0[0]~output_o\;

ww_hex2(6) <= \hex2[6]~output_o\;

ww_hex2(5) <= \hex2[5]~output_o\;

ww_hex2(4) <= \hex2[4]~output_o\;

ww_hex2(3) <= \hex2[3]~output_o\;

ww_hex2(2) <= \hex2[2]~output_o\;

ww_hex2(1) <= \hex2[1]~output_o\;

ww_hex2(0) <= \hex2[0]~output_o\;

ww_hex3(6) <= \hex3[6]~output_o\;

ww_hex3(5) <= \hex3[5]~output_o\;

ww_hex3(4) <= \hex3[4]~output_o\;

ww_hex3(3) <= \hex3[3]~output_o\;

ww_hex3(2) <= \hex3[2]~output_o\;

ww_hex3(1) <= \hex3[1]~output_o\;

ww_hex3(0) <= \hex3[0]~output_o\;

ww_hex4(6) <= \hex4[6]~output_o\;

ww_hex4(5) <= \hex4[5]~output_o\;

ww_hex4(4) <= \hex4[4]~output_o\;

ww_hex4(3) <= \hex4[3]~output_o\;

ww_hex4(2) <= \hex4[2]~output_o\;

ww_hex4(1) <= \hex4[1]~output_o\;

ww_hex4(0) <= \hex4[0]~output_o\;

ww_hex5(6) <= \hex5[6]~output_o\;

ww_hex5(5) <= \hex5[5]~output_o\;

ww_hex5(4) <= \hex5[4]~output_o\;

ww_hex5(3) <= \hex5[3]~output_o\;

ww_hex5(2) <= \hex5[2]~output_o\;

ww_hex5(1) <= \hex5[1]~output_o\;

ww_hex5(0) <= \hex5[0]~output_o\;
END structure;


