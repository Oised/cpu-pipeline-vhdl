library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Data Memory (synchronous, array-based) for 32 x 16-bit words
entity data_memory is
    port(
        clk        : in  std_logic;
        Address    : in  std_logic_vector(15 downto 0); -- kept 16 bits for top-level compatibility
        Write_Data : in  std_logic_vector(15 downto 0);
        MemRead    : in  std_logic;
        MemWrite   : in  std_logic;
        Read_Data  : out std_logic_vector(15 downto 0)
    );
end entity data_memory;

architecture rtl of data_memory is

    -- 32 words (0..31) of 16 bits
    type ram_type is array (0 to 31) of std_logic_vector(15 downto 0);

    signal mem     : ram_type := (
        0  => x"0001", -- 0000000000000001
        1  => x"0003", -- 0000000000000011
        2  => x"0006", -- 0000000000000110
        3  => x"0009", -- 0000000000001001
        4  => x"000C", -- 0000000000001100
        5  => x"000F", -- 0000000000001111
        6  => x"0012", -- 0000000000010010
        7  => x"0000",
        8  => x"0000",
        9  => x"0000",
        10 => x"0000",
        11 => x"0000",
        12 => x"0000",
        13 => x"0000",
        14 => x"0000",
        15 => x"0000",
        16 => x"0000",
        17 => x"0000",
        18 => x"0000",
        19 => x"0000",
        20 => x"0000",
        21 => x"0000",
        22 => x"0000",
        23 => x"0000",
        24 => x"0000",
        25 => x"0000",
        26 => x"0000",
        27 => x"0000",
        28 => x"0000",
        29 => x"0000",
        30 => x"0000",
        31 => x"0000"
    );

    signal read_reg : std_logic_vector(15 downto 0) := (others => '0');

begin

    -- Note:
    -- * Address(4 downto 0) is used as index (0..31). We kept Address 16 bits to avoid top-level changes.
    -- * Read and write are synchronous on rising_edge(clk).
    -- * Read has one-cycle latency: when MemRead='1' and Address present, Read_Data updates next clock.
    process(clk)
        variable addr_idx : integer;
    begin
        if rising_edge(clk) then
            -- compute index from LSBs (0..31)
            addr_idx := to_integer(unsigned(Address(4 downto 0)));

            -- Write (synchronous)
            if MemWrite = '1' then
                mem(addr_idx) <= Write_Data;
            end if;

            -- Read (synchronous, registered output)
            if MemRead = '1' then
                read_reg <= mem(addr_idx);
            else
                -- opcional: manter último valor em vez de zerar.
                -- aqui escolhi colocar zero quando MemRead = '0'.
                read_reg <= (others => '0');
            end if;
        end if;
    end process;

    Read_Data <= read_reg;

end architecture rtl;
