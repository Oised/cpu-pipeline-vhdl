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
        RT_ID     : in  std_logic_vector(3 downto 0);
        RD_ID     : in  std_logic_vector(3 downto 0);
        clock     : in  std_logic;
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

    -- auxiliares (extendo para 4 bits onde necessário)
    signal WB_in_aux  : std_logic_vector(3 downto 0);
    signal M_in_aux   : std_logic_vector(3 downto 0);
    signal EX_in_aux  : std_logic_vector(3 downto 0);

    -- Sinais intermediários "mid" (capturados em Global_In)
    signal WB_mid     : std_logic_vector(3 downto 0);
    signal M_mid      : std_logic_vector(3 downto 0);
    signal EX_mid     : std_logic_vector(3 downto 0);
    signal PC_mid     : std_logic_vector(15 downto 0);
    signal RS_mid     : std_logic_vector(15 downto 0);
    signal RT_mid     : std_logic_vector(15 downto 0);
    signal Offset_mid : std_logic_vector(15 downto 0);
    signal RT_ID_mid  : std_logic_vector(3 downto 0);
    signal RD_ID_mid  : std_logic_vector(3 downto 0);

    -- registradores de saída (hold)
    signal WB_out_reg     : std_logic_vector(3 downto 0) := (others => '0');
    signal M_out_reg      : std_logic_vector(3 downto 0) := (others => '0');
    signal EX_out_reg     : std_logic_vector(3 downto 0) := (others => '0');
    signal PC_2_EX_reg    : std_logic_vector(15 downto 0) := (others => '0');
    signal Src_A_reg      : std_logic_vector(15 downto 0) := (others => '0');
    signal RT_Data_EX_reg : std_logic_vector(15 downto 0) := (others => '0');
    signal Offset_EX_reg  : std_logic_vector(15 downto 0) := (others => '0');
    signal RT_EX_reg      : std_logic_vector(3 downto 0) := (others => '0');
    signal RD_EX_reg      : std_logic_vector(3 downto 0) := (others => '0');

begin

    -- prepara entradas
    WB_in_aux <= "00" & WB_in;         -- 2 -> 4 bits
    M_in_aux  <= '0'  & M_in;          -- 3 -> 4 bits
    EX_in_aux <= '0'  & EX_in;         -- 3 -> 4 bits

    -- registradores "mid" (captura na borda com Global_In)
    R_WB_in : regis4  port map (WB_in_aux,  clock, Global_In, WB_mid);
    R_M_in  : regis4  port map (M_in_aux,   clock, Global_In, M_mid);
    R_EX_in : regis4  port map (EX_in_aux,  clock, Global_In, EX_mid);

    R_PC    : regis16 port map (PC_2_ID,    clock, Global_In, PC_mid);
    R_RS    : regis16 port map (RS_Data,    clock, Global_In, RS_mid);
    R_RT    : regis16 port map (RT_Data,    clock, Global_In, RT_mid);
    R_Off   : regis16 port map (Offset_in,  clock, Global_In, Offset_mid);

    R_RT_ID : regis4  port map (RT_ID,      clock, Global_In, RT_ID_mid);
    R_RD_ID : regis4  port map (RD_ID,      clock, Global_In, RD_ID_mid);

    -- processo que implementa o gate/hold nas saídas
    process(clock)
    begin
        if rising_edge(clock) then
            if Global_Out = '1' then
                WB_out_reg     <= WB_mid;
                M_out_reg      <= M_mid;
                EX_out_reg     <= EX_mid;
                PC_2_EX_reg    <= PC_mid;
                Src_A_reg      <= RS_mid;
                RT_Data_EX_reg <= RT_mid;
                Offset_EX_reg  <= Offset_mid;
                RT_EX_reg      <= RT_ID_mid;
                RD_EX_reg      <= RD_ID_mid;
            else
                -- hold: mantém valores
                WB_out_reg     <= WB_out_reg;
                M_out_reg      <= M_out_reg;
                EX_out_reg     <= EX_out_reg;
                PC_2_EX_reg    <= PC_2_EX_reg;
                Src_A_reg      <= Src_A_reg;
                RT_Data_EX_reg <= RT_Data_EX_reg;
                Offset_EX_reg  <= Offset_EX_reg;
                RT_EX_reg      <= RT_EX_reg;
                RD_EX_reg      <= RD_EX_reg;
            end if;
        end if;
    end process;

    -- Saídas (fatiamentos conforme semântica original)
    WB_out     <= WB_out_reg(1 downto 0);
    M_out      <= M_out_reg(1 downto 0);
    RegDst     <= EX_out_reg(0);
    ALUOp      <= EX_out_reg(1);
    ALUSrc     <= EX_out_reg(2);
    PC_2_EX    <= PC_2_EX_reg;
    Src_A      <= Src_A_reg;
    RT_Data_EX <= RT_Data_EX_reg;
    Offset_EX  <= Offset_EX_reg;
    RT_EX      <= RT_EX_reg;
    RD_EX      <= RD_EX_reg;

end architecture;
