library ieee;
use ieee.std_logic_1164.all;
use work.pipeline_cpu_pkg.all;

entity mem_wb is
    port(
        WB_in        : in  std_logic_vector(1 downto 0);
        Read_Data_in : in  std_logic_vector(15 downto 0);
        ALU_R_in     : in  std_logic_vector(15 downto 0);
        RW_in        : in  std_logic_vector(3 downto 0);
        clock        : in  std_logic;
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

    -- sinal auxiliar
    signal WB_in_aux    : std_logic_vector(3 downto 0);

    -- sinais "mid" (registrados)
    signal WB_mid        : std_logic_vector(3 downto 0);
    signal Read_Data_mid : std_logic_vector(15 downto 0);
    signal ALU_R_mid     : std_logic_vector(15 downto 0);
    signal RW_mid        : std_logic_vector(3 downto 0);

    -- registradores de saída (mantêm valor anterior quando Global_Out = '0')
    signal WB_out_reg        : std_logic_vector(3 downto 0) := (others => '0');
    signal Read_Data_WB_reg  : std_logic_vector(15 downto 0) := (others => '0');
    signal ALU_R_WB_reg      : std_logic_vector(15 downto 0) := (others => '0');
    signal RW_WB_reg         : std_logic_vector(3 downto 0) := (others => '0');

begin

    -- expand input WB para 4 bits
    WB_in_aux <= "00" & WB_in;

    -- registradores "mid" (captura na fase Global_In)
    R_WB_in     : regis4  port map (WB_in_aux,     clock, Global_In, WB_mid);
    R_ReadData  : regis16 port map (Read_Data_in,  clock, Global_In, Read_Data_mid);
    R_ALU_R     : regis16 port map (ALU_R_in,      clock, Global_In, ALU_R_mid);
    R_RW        : regis4  port map (RW_in,         clock, Global_In, RW_mid);

    -- processo que implementa o gate/hold (atualiza saídas apenas quando Global_Out='1')
    process(clock)
    begin
        if rising_edge(clock) then
            if Global_Out = '1' then
                WB_out_reg       <= WB_mid;
                Read_Data_WB_reg <= Read_Data_mid;
                ALU_R_WB_reg     <= ALU_R_mid;
                RW_WB_reg        <= RW_mid;
            else
                -- hold: mantém valores
                WB_out_reg       <= WB_out_reg;
                Read_Data_WB_reg <= Read_Data_WB_reg;
                ALU_R_WB_reg     <= ALU_R_WB_reg;
                RW_WB_reg        <= RW_WB_reg;
            end if;
        end if;
    end process;

    -- mapeamento para as portas de saída (fatiamentos conforme sua semântica original)
    RegWrite_out <= WB_out_reg(0);
    MemtoReg_out <= WB_out_reg(1);
    Read_Data_WB <= Read_Data_WB_reg;
    ALU_R_WB     <= ALU_R_WB_reg;
    RW_WB        <= RW_WB_reg;

end architecture;
