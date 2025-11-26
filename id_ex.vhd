library ieee;
use ieee.std_logic_1164.all;
use work.pipeline_cpu_pkg.all;

entity id_ex is
	port(
		WB_in     : in  std_logic_vector(1 downto 0);
		M_in      : in  std_logic_vector(2 downto 0);
		EX_in     : in  std_logic_vector(2 downto 0);
		PC_2_ID   : in  std_logic_vector(15 downto 0);
		RS_Data   : in  std_logic_vector(15 downto 0);
		RT_Data   : in  std_logic_vector(15 downto 0);
		Offset_in : in  std_logic_vector(15 downto 0);
		RT_ID	    : in  std_logic_vector(3 downto 0);
		RD_ID     : in  std_logic_vector(3 downto 0);
		clock	  	 : in  std_logic;
		Global_In : in  std_logic;
		Global_Out: in  std_logic;
		WB_out    : out std_logic_vector(1 downto 0);
		M_out     : out std_logic_vector(1 downto 0);
		RegDst    : out std_logic;
		ALUOp     : out std_logic;
		ALUSrc    : out std_logic;
		PC_2_EX   : out std_logic_vector(15 downto 0);
		Src_A     : out std_logic_vector(15 downto 0);
		RT_Data_EX: out std_logic_vector(15 downto 0);
		Offset_EX : out std_logic_vector(15 downto 0);	
		RT_EX     : out std_logic_vector(3 downto 0);
		RD_EX     : out std_logic_vector(3 downto 0)
	);
end id_ex;

architecture structure of id_ex is

	 signal WB_in_aux  : std_logic_vector(3 downto 0);
	 signal M_in_aux   : std_logic_vector(3 downto 0);
	 signal EX_in_aux  : std_logic_vector(3 downto 0);

    --------------------------------------------------------------------------------
    -- Sinais intermediários "mid": registradores que capturam na fase Global_In
    -- (uso regis4 para até 4 bits)
    --------------------------------------------------------------------------------
    signal WB_mid	 	      : std_logic_vector(3 downto 0);  
    signal M_mid	         : std_logic_vector(3 downto 0);  
    signal EX_mid	 	      : std_logic_vector(3 downto 0);  
    signal PC_mid          : std_logic_vector(15 downto 0);
    signal RS_mid          : std_logic_vector(15 downto 0);
    signal RT_mid          : std_logic_vector(15 downto 0);
    signal Offset_mid      : std_logic_vector(15 downto 0);
    signal RT_ID_mid       : std_logic_vector(3 downto 0);
    signal RD_ID_mid       : std_logic_vector(3 downto 0);

    --------------------------------------------------------------------------------
    -- Sinais "aux" que entram e saem dos muxes
    -- Estes são os sinais que também são as saídas finais
    --------------------------------------------------------------------------------
    signal WB_out_aux      : std_logic_vector(3 downto 0);
    signal M_out_aux       : std_logic_vector(3 downto 0);
    signal EX_out_aux      : std_logic_vector(3 downto 0);
    signal PC_2_EX_aux     : std_logic_vector(15 downto 0);
    signal Src_A_aux       : std_logic_vector(15 downto 0);
    signal RT_Data_EX_aux  : std_logic_vector(15 downto 0);
    signal Offset_EX_aux   : std_logic_vector(15 downto 0);
    signal RT_EX_aux       : std_logic_vector(3 downto 0);
    signal RD_EX_aux       : std_logic_vector(3 downto 0);

begin
	
	 WB_in_aux <= "00" & WB_in;
	 M_in_aux  <= '0'  & M_in;
	 EX_in_aux <= '0'  & EX_in;


    R_WB_in : regis4 port map (WB_in_aux, clock, Global_In, WB_mid);
    M_WB_out : mux_2_1_4b port map (WB_out_aux, WB_mid, Global_Out, WB_out_aux);
    WB_out <= WB_out_aux(1 downto 0);
	 

    R_M_in : regis4 port map (M_in_aux, clock, Global_In, M_mid);
    M_M_out : mux_2_1_4b port map (M_out_aux, M_mid, Global_Out, M_out_aux);
    M_out <= M_out_aux(1 downto 0);
	 

    R_EX_in : regis4 port map (EX_in_aux, clock, Global_In, EX_mid);
    M_EX_out : mux_2_1_4b port map (EX_out_aux, EX_mid, Global_Out, EX_out_aux);
    RegDst <= EX_out_aux(0);
    ALUOp  <= EX_out_aux(1);
    ALUSrc <= EX_out_aux(2);
	 

    R_PC : regis16 port map (PC_2_ID, clock, Global_In, PC_mid);
    M_PC_out : mux_2_1_16b port map (PC_2_EX_aux, PC_mid, Global_Out, PC_2_EX_aux);
    PC_2_EX <= PC_2_EX_aux;
	 

    R_RS : regis16 port map (RS_Data, clock, Global_In, RS_mid);
	 M_SrcA : mux_2_1_16b port map (Src_A_aux, RS_mid, Global_Out, Src_A_aux);
    Src_A <= Src_A_aux;

    R_RT : regis16 port map (RT_Data, clock, Global_In, RT_mid);
	 M_RTData : mux_2_1_16b port map (RT_Data_EX_aux, RT_mid, Global_Out, RT_Data_EX_aux);
	 RT_Data_EX <= RT_Data_EX_aux;


    R_Off : regis16 port map (Offset_in, clock, Global_In, Offset_mid);
    M_Offset : mux_2_1_16b port map (Offset_EX_aux, Offset_mid, Global_Out, Offset_EX_aux);
    Offset_EX <= Offset_EX_aux;
	 

    R_RT_ID : regis4 port map (RT_ID, clock, Global_In, RT_ID_mid);
	 M_RTEX : mux_2_1_4b port map (RT_EX_aux, RT_ID_mid, Global_Out, RT_EX_aux);
    RT_EX <= RT_EX_aux;
	 

    R_RD_ID : regis4 port map (RD_ID, clock, Global_In, RD_ID_mid);
	 M_RDEX : mux_2_1_4b port map (RD_EX_aux, RD_ID_mid, Global_Out, RD_EX_aux);
	 RD_EX <= RD_EX_aux;

end structure;
