library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity registers is
    port(
        RS_addr   : in  std_logic_vector(3 downto 0);
        RT_addr   : in  std_logic_vector(3 downto 0);
        RW_addr   : in  std_logic_vector(3 downto 0);
        WriteData : in  std_logic_vector(15 downto 0);
        clock           : in  std_logic;
        RegWrite  : in  std_logic;
        RS_Data   : out std_logic_vector(15 downto 0);
        RT_Data   : out std_logic_vector(15 downto 0)
    );
end registers;

architecture structure of registers is
    -- Array de 16 registradores de 16 bits
    type reg_array is array (0 to 15) of std_logic_vector(15 downto 0);
    signal regs : reg_array := (others => (others => '0'));

begin
    -- Leitura assíncrona (combinacional)
    RS_Data <= regs(to_integer(unsigned(RS_addr)));
    RT_Data <= regs(to_integer(unsigned(RT_addr)));

    -- Escrita síncrona (na borda de subida do clock)
    process(clock)
    begin
        if rising_edge(clock) then
            if RegWrite = '1' then
                regs(to_integer(unsigned(RW_addr))) <= WriteData;
            end if;
        end if;
    end process;

end structure;