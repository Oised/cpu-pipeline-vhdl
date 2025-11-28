library ieee;
use ieee.std_logic_1164.all;
use work.pipeline_cpu_pkg.all;

entity if_id is
	port(
		PC_2_IF_in  : in  std_logic_vector(15 downto 0);
		Inst_IF_in  : in  std_logic_vector(15 downto 0);
		clock	  	   : in  std_logic;
		Global_In   : in  std_logic;
		Global_Out  : in  std_logic;
		PC_2_ID_out : out std_logic_vector(15 downto 0);
		Inst_ID_out : out std_logic_vector(15 downto 0)
	);
end if_id;

architecture structure of if_id is

signal PC_mid:		std_logic_vector(15 downto 0);
signal Inst_mid:	std_logic_vector(15 downto 0);

signal PC_2_ID_out_aux:	std_logic_vector(15 downto 0);
signal Inst_ID_out_aux:	std_logic_vector(15 downto 0);

begin

R_PC_2_IF:		regis16	port map (PC_2_IF_in, clock, Global_In, PC_mid);
M_PC_2_IF:		mux_2_1_16b	port map	(PC_2_ID_out_aux, PC_mid, Global_out, PC_2_ID_out_aux);
PC_2_ID_out <= PC_2_ID_out_aux;

R_Inst_IF_in:	regis16	port map	(Inst_IF_in, clock, Global_In, Inst_mid);
M_Inst_ID_out:	mux_2_1_16b	port map	(Inst_ID_out_aux, Inst_mid, Global_out, Inst_ID_out_aux);
Inst_ID_out <= Inst_ID_out_aux;

end structure;
