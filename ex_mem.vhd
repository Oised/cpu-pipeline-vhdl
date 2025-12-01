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
        clock      : in  std_logic;
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
    -- sinais auxiliares (entrada -> tamanhos de 4 bits)
    signal WB_in_aux   : std_logic_vector(3 downto 0);
    signal M_in_aux    : std_logic_vector(3 downto 0);
    signal Zero_in_aux : std_logic_vector(3 downto 0);

    -- sinais "mid" (registrados)
    signal WB_mid       : std_logic_vector(3 downto 0);
    signal M_mid        : std_logic_vector(3 downto 0);
    signal Zero_mid     : std_logic_vector(3 downto 0);
    signal PC_EX_mid    : std_logic_vector(15 downto 0);
    signal ALU_R_mid    : std_logic_vector(15 downto 0);
    signal RT_Data_mid  : std_logic_vector(15 downto 0);
    signal RW_mid       : std_logic_vector(3 downto 0);

    -- registradores de saída (mantêm valor anterior quando Global_Out = '0')
    signal WB_out_reg      : std_logic_vector(3 downto 0) := (others => '0');
    signal M_out_reg       : std_logic_vector(3 downto 0) := (others => '0');
    signal Zero_out_reg    : std_logic_vector(3 downto 0) := (others => '0');
    signal PC_MEM_reg      : std_logic_vector(15 downto 0) := (others => '0');
    signal ALU_R_MEM_reg   : std_logic_vector(15 downto 0) := (others => '0');
    signal RT_Data_MEM_reg : std_logic_vector(15 downto 0) := (others => '0');
    signal RW_MEM_reg      : std_logic_vector(3 downto 0) := (others => '0');

begin

    -- expand inputs para 4 bits
    WB_in_aux   <= "00" & WB_in;
    M_in_aux    <= "00" & M_in;
    Zero_in_aux <= "000" & Zero_in;

    -- Registradores "mid"
    R_WB_in : regis4 port map (WB_in_aux,   clock, Global_In, WB_mid);
    R_M_in  : regis4 port map (M_in_aux,    clock, Global_In, M_mid);
    R_PC_EX : regis16 port map (PC_EX_in,   clock, Global_In, PC_EX_mid);
    R_Zero  : regis4 port map (Zero_in_aux, clock, Global_In, Zero_mid);
    R_ALU_R : regis16 port map (ALU_R_in,   clock, Global_In, ALU_R_mid);
    R_RTData: regis16 port map (RT_Data_in, clock, Global_In, RT_Data_mid);
    R_RW    : regis4 port map (RW_in,       clock, Global_In, RW_mid);

    --------------------------------------------------------------------
    -- Processo que implementa o "gate" síncrono: quando Global_Out='1'
    -- atualiza os registradores de saída com os valores mid; quando '0'
    --------------------------------------------------------------------
    process(clock)
    begin
        if rising_edge(clock) then
            if Global_Out = '1' then
                WB_out_reg      <= WB_mid;
                M_out_reg       <= M_mid;
                Zero_out_reg    <= Zero_mid;
                PC_MEM_reg      <= PC_EX_mid;
                ALU_R_MEM_reg   <= ALU_R_mid;
                RT_Data_MEM_reg <= RT_Data_mid;
                RW_MEM_reg      <= RW_mid;
            else
                -- hold: não faz nada 
                WB_out_reg      <= WB_out_reg;
                M_out_reg       <= M_out_reg;
                Zero_out_reg    <= Zero_out_reg;
                PC_MEM_reg      <= PC_MEM_reg;
                ALU_R_MEM_reg   <= ALU_R_MEM_reg;
                RT_Data_MEM_reg <= RT_Data_MEM_reg;
                RW_MEM_reg      <= RW_MEM_reg;
            end if;
        end if;
    end process;

    -- Slices e atribuições às portas de saída 
    WB_out      <= WB_out_reg(1 downto 0);
    MemWrite    <= M_out_reg(0);
    MemRead     <= M_out_reg(1);
    Branch      <= M_out_reg(2);
    PC_MEM      <= PC_MEM_reg;
    Zero_MEM    <= Zero_out_reg(0);
    ALU_R_MEM   <= ALU_R_MEM_reg;
    RT_Data_MEM <= RT_Data_MEM_reg;
    RW_MEM      <= RW_MEM_reg;

end architecture;
