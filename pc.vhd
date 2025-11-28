library ieee;
use ieee.std_logic_1164.all;
use work.pipeline_cpu_pkg.all;

entity pc is
	port(
		PC_in     : in  std_logic_vector(15 downto 0);
		clock	  	 : in  std_logic;
		Global_In : in  std_logic;
		Global_Out: in  std_logic;
		PC_out    : out std_logic_vector(15 downto 0)
	);
end pc;

architecture structure of pc is

    ----------------------------------------------------------------------------
    -- Sinal "mid"
    ----------------------------------------------------------------------------
    signal PC_mid    : std_logic_vector(15 downto 0);

    ----------------------------------------------------------------------------
    -- Sinal "aux" que entra/saí do mux
    ----------------------------------------------------------------------------
    signal PC_out_aux: std_logic_vector(15 downto 0);

begin

    R_PC_in : regis16 port map (PC_in, clock, Global_In, PC_mid);
    M_PC_out : mux_2_1_16b port map (PC_out_aux, PC_mid, Global_Out, PC_out_aux);
    PC_out <= PC_out_aux;

end structure;
