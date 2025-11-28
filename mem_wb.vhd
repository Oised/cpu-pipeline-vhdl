library ieee;
use ieee.std_logic_1164.all;
use work.pipeline_cpu_pkg.all;

entity mem_wb is
	port(
		WB_in        : in  std_logic_vector(1 downto 0);
		Read_Data_in : in  std_logic_vector(15 downto 0);
		ALU_R_in     : in  std_logic_vector(15 downto 0);
		RW_in        : in  std_logic_vector(3 downto 0);
		clock	  	  	 : in  std_logic;
		Global_In    : in  std_logic;
		Global_Out   : in  std_logic;
		RegWrite_out : out std_logic;
		MemtoReg_out : out std_logic;
		Read_Data_WB : out std_logic_vector(15 downto 0);
		ALU_R_WB     : out std_logic_vector(15 downto 0);
		RW_WB        : out std_logic_vector(3 downto 0)
	);
end mem_wb;

architecture structure of mem_wb is

    --------------------------------------------------------------------
    -- sinal auxiliar
    --------------------------------------------------------------------
    signal WB_in_aux    : std_logic_vector(3 downto 0);

    --------------------------------------------------------------------
    -- sinais "mid"
    -- (regis4 para até 4 bits; regis16 para 16 bits)
    --------------------------------------------------------------------
    signal WB_mid        : std_logic_vector(3 downto 0);
    signal Read_Data_mid : std_logic_vector(15 downto 0);
    signal ALU_R_mid     : std_logic_vector(15 downto 0);
    signal RW_mid        : std_logic_vector(3 downto 0);

    --------------------------------------------------------------------
    -- sinais "aux" que entram e saem dos muxes
    -- estes também são as saídas finais (fatiadas quando necessário)
    --------------------------------------------------------------------
    signal WB_out_aux        : std_logic_vector(3 downto 0);
    signal Read_Data_WB_aux  : std_logic_vector(15 downto 0);
    signal ALU_R_WB_aux      : std_logic_vector(15 downto 0);
    signal RW_WB_aux         : std_logic_vector(3 downto 0);

begin

    WB_in_aux <= "00" & WB_in;


    R_WB_in : regis4 port map (WB_in_aux, clock, Global_In, WB_mid);
    M_WB_out : mux_2_1_4b port map (WB_out_aux, WB_mid, Global_Out, WB_out_aux);
    RegWrite_out <= WB_out_aux(0);
    MemtoReg_out <= WB_out_aux(1);


    R_ReadData : regis16 port map (Read_Data_in, clock, Global_In, Read_Data_mid);
    M_ReadData : mux_2_1_16b port map (Read_Data_WB_aux, Read_Data_mid, Global_Out, Read_Data_WB_aux);
    Read_Data_WB <= Read_Data_WB_aux;


    R_ALU_R : regis16 port map (ALU_R_in, clock, Global_In, ALU_R_mid);
    M_ALU_R : mux_2_1_16b port map (ALU_R_WB_aux, ALU_R_mid, Global_Out, ALU_R_WB_aux);
    ALU_R_WB <= ALU_R_WB_aux;


    R_RW : regis4 port map (RW_in, clock, Global_In, RW_mid);
    M_RW : mux_2_1_4b port map (RW_WB_aux, RW_mid, Global_Out, RW_WB_aux);
    RW_WB <= RW_WB_aux;

end structure;