library ieee;
use ieee.std_logic_1164.all;
use work.pipeline_cpu_pkg.all;

entity pc is
    port(
        PC_in     : in  std_logic_vector(15 downto 0);
        clock     : in  std_logic;
        Global_In : in  std_logic;
        Global_Out: in  std_logic;
        PC_out    : out std_logic_vector(15 downto 0)
    );
end pc;

architecture structure of pc is

    ----------------------------------------------------------------------------
    -- Sinal "mid" (capturado na fase Global_In)
    ----------------------------------------------------------------------------
    signal PC_mid    : std_logic_vector(15 downto 0) := (others => '0');

    ----------------------------------------------------------------------------
    -- Registrador de saída (mantém valor anterior quando Global_Out = '0')
    ----------------------------------------------------------------------------
    signal PC_out_reg: std_logic_vector(15 downto 0) := (others => '0');

begin

    -- captura do valor de entrada (mantive seu regis16)
    R_PC_in : regis16 port map (PC_in, clock, Global_In, PC_mid);

    -- processo síncrono que implementa o "gate"/hold:
    -- atualiza PC_out_reg apenas quando Global_Out = '1'
    process(clock)
    begin
        if rising_edge(clock) then
            if Global_Out = '1' then
                PC_out_reg <= PC_mid;
            else
                -- hold: mantém valor atual
                PC_out_reg <= PC_out_reg;
            end if;
        end if;
    end process;

    -- saída
    PC_out <= PC_out_reg;

end architecture;
