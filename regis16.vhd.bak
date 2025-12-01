library ieee;
use ieee.std_logic_1164.all;

entity regis16 is
    port(
        Data  : in  std_logic_vector(15 downto 0);
        Clock : in  std_logic;
        Rin   : in  std_logic;
        R     : out std_logic_vector(15 downto 0)
    );
end regis16;

architecture structure of regis16 is
begin

    process(Clock)
    begin
        if (Clock'event and Clock = '1') then
            if Rin = '1' then
                R <= Data;
            end if;
        end if;
    end process;

end structure;
