library ieee;
use ieee.std_logic_1164.all;
use work.pipeline_cpu_pkg.all;

entity if_id is
    port(
        PC_2_IF_in  : in  std_logic_vector(15 downto 0);
        Inst_IF_in  : in  std_logic_vector(15 downto 0);
        clock       : in  std_logic;
        Global_In   : in  std_logic;
        Global_Out  : in  std_logic;
        PC_2_ID_out : out std_logic_vector(15 downto 0);
        Inst_ID_out : out std_logic_vector(15 downto 0)
    );
end if_id;

architecture structure of if_id is

    -- sinais mid
    signal PC_mid           : std_logic_vector(15 downto 0);
    signal Inst_mid         : std_logic_vector(15 downto 0);

    -- registradores de saída (hold)
    signal PC_2_ID_reg      : std_logic_vector(15 downto 0) := (others => '0');
    signal Inst_ID_reg      : std_logic_vector(15 downto 0) := (others => '0');

begin

    -- registradores mid (captura na fase Global_In)
    R_PC_2_IF : regis16 port map (PC_2_IF_in, clock, Global_In, PC_mid);
    R_Inst_IF : regis16 port map (Inst_IF_in, clock, Global_In, Inst_mid);

    -- processo que implementa gate/hold: atualiza saídas apenas quando Global_Out='1'
    process(clock)
    begin
        if rising_edge(clock) then
            if Global_Out = '1' then
                PC_2_ID_reg <= PC_mid;
                Inst_ID_reg <= Inst_mid;
            else
                -- hold: mantém valores
                PC_2_ID_reg <= PC_2_ID_reg;
                Inst_ID_reg <= Inst_ID_reg;
            end if;
        end if;
    end process;

    -- saídas
    PC_2_ID_out <= PC_2_ID_reg;
    Inst_ID_out <= Inst_ID_reg;

end architecture;
