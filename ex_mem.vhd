library ieee;
use ieee.std_logic_1164.all;
use work.pipeline_cpu_pkg.all;

entity ex_mem is
	port(
		WB_in      : in  std_logic_vector(1 downto 0);
		M_in       : in  std_logic_vector(1 downto 0);
		PC_EX_in   : in  std_logic_vector(15 downto 0);
		Zero_in    : in  std_logic;
		ALU_R_in   : in  std_logic_vector(15 downto 0);
		RT_Data_in : in  std_logic_vector(15 downto 0);
		RW_in      : in  std_logic_vector(3 downto 0);
		clock	  	  : in  std_logic;
		Global_In  : in  std_logic;
		Global_Out : in  std_logic;
		WB_out     : out std_logic_vector(1 downto 0);
		MemWrite   : out std_logic;
		MemRead    : out std_logic;
		Branch     : out std_logic;
		PC_MEM     : out std_logic_vector(15 downto 0);
		Zero_MEM   : out std_logic;
		ALU_R_MEM  : out std_logic_vector(15 downto 0);
		RT_Data_MEM: out std_logic_vector(15 downto 0);
		RW_MEM     : out std_logic_vector(3 downto 0)
	);
end ex_mem;

architecture structure of ex_mem is
    --------------------------------------------------------------------
    -- sinais auxiliares (entrada -> tamanhos de 4 bits)
    --------------------------------------------------------------------
    signal WB_in_aux   : std_logic_vector(3 downto 0);
    signal M_in_aux    : std_logic_vector(3 downto 0);
    signal Zero_in_aux : std_logic_vector(3 downto 0);

    --------------------------------------------------------------------
    -- sinais "mid"
    -- (regis4 para até 4 bits; regis16 para 16 bits)
    --------------------------------------------------------------------
    signal WB_mid       : std_logic_vector(3 downto 0);
    signal M_mid        : std_logic_vector(3 downto 0);
    signal Zero_mid     : std_logic_vector(3 downto 0);
    signal PC_EX_mid    : std_logic_vector(15 downto 0);
    signal ALU_R_mid    : std_logic_vector(15 downto 0);
    signal RT_Data_mid  : std_logic_vector(15 downto 0);
    signal RW_mid       : std_logic_vector(3 downto 0);

    --------------------------------------------------------------------
    -- sinais "aux" que entram e saem dos muxes
    -- também são as saídas finais (fatiadas quando necessário)
    --------------------------------------------------------------------
    signal WB_out_aux      : std_logic_vector(3 downto 0);
    signal M_out_aux       : std_logic_vector(3 downto 0);
    signal Zero_out_aux    : std_logic_vector(3 downto 0);
    signal PC_MEM_aux      : std_logic_vector(15 downto 0);
    signal ALU_R_MEM_aux   : std_logic_vector(15 downto 0);
    signal RT_Data_MEM_aux : std_logic_vector(15 downto 0);
    signal RW_MEM_aux      : std_logic_vector(3 downto 0);

begin

    WB_in_aux   <= "00" & WB_in;
    M_in_aux    <= "00" & M_in;
    Zero_in_aux <= "000" & Zero_in;


    R_WB_in : regis4 port map (WB_in_aux, clock, Global_In, WB_mid);
    M_WB_out : mux_2_1_4b port map (WB_out_aux, WB_mid, Global_Out, WB_out_aux);
    WB_out <= WB_out_aux(1 downto 0);


    R_M_in : regis4 port map (M_in_aux, clock, Global_In, M_mid);
    M_M_out : mux_2_1_4b port map (M_out_aux, M_mid, Global_Out, M_out_aux);
    MemWrite <= M_out_aux(0);
    MemRead  <= M_out_aux(1);
    Branch	 <= M_out_aux(2);


    R_PC_EX : regis16 port map (PC_EX_in, clock, Global_In, PC_EX_mid);
    M_PC_MEM : mux_2_1_16b port map (PC_MEM_aux, PC_EX_mid, Global_Out, PC_MEM_aux);
    PC_MEM <= PC_MEM_aux;


    R_Zero : regis4 port map (Zero_in_aux, clock, Global_In, Zero_mid);
    M_Zero : mux_2_1_4b port map (Zero_out_aux, Zero_mid, Global_Out, Zero_out_aux);
    Zero_MEM <= Zero_out_aux(0);


    R_ALU_R : regis16 port map (ALU_R_in, clock, Global_In, ALU_R_mid);
    M_ALU_R : mux_2_1_16b port map (ALU_R_MEM_aux, ALU_R_mid, Global_Out, ALU_R_MEM_aux);
    ALU_R_MEM <= ALU_R_MEM_aux;


    R_RTData : regis16 port map (RT_Data_in, clock, Global_In, RT_Data_mid);
    M_RTData : mux_2_1_16b port map (RT_Data_MEM_aux, RT_Data_mid, Global_Out, RT_Data_MEM_aux);
    RT_Data_MEM <= RT_Data_MEM_aux;


    R_RW : regis4 port map (RW_in, clock, Global_In, RW_mid);
    M_RW : mux_2_1_4b port map (RW_MEM_aux, RW_mid, Global_Out, RW_MEM_aux);
    RW_MEM <= RW_MEM_aux;

end structure;
