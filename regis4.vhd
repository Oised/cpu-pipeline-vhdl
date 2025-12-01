library ieee;
use ieee.std_logic_1164.all;

entity regis4 is
    port(
        Data  : in  std_logic_vector(3 downto 0);
        Clock : in  std_logic;
        Rin   : in  std_logic;
        R     : out std_logic_vector(3 downto 0) := (others => '0')
    );
end regis4;

architecture structure of regis4 is
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
