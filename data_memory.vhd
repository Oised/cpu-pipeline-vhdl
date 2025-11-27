library ieee;
use ieee.std_logic_1164.all;
USE IEEE.NUMERIC_STD.ALL;


entity data_memory is
	port(
		Address    : in  std_logic_vector(15 downto 0);
		Write_Data : in  std_logic_vector(15 downto 0);
		MemRead    : in  std_logic;
		MemWrite   : in  std_logic;
		Read_Data  : out std_logic_vector(15 downto 0)
	);
end data_memory;

architecture structure of data_memory is

    -- memória de 512 bits = 32 palavras de 16 bits
    signal mem : std_logic_vector(511 downto 0) := (others => '0');
		  
begin

    process(Address, Write_Data, MemRead, MemWrite, mem)

        variable addr_idx  : integer;
        variable msb_index : integer;

    begin

        addr_idx  := to_integer(unsigned(Address));
        msb_index := 511 - addr_idx * 8;

        -- verifica se a faixa está válida
        if (msb_index <= 511) and (msb_index >= 15) then

            -- leitura: só se MemRead = 1
            if MemRead = '1' then
                Read_Data <= mem(msb_index downto msb_index - 15);
            end if;

            -- escrita: só se MemWrite = 1
            if MemWrite = '1' then
                mem(msb_index downto msb_index - 15) <= Write_Data;
            end if;

        end if;

    end process;

end structure;
