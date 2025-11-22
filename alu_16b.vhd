library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity alu_16b is
    port(
			A        : in  std_logic_vector(15 downto 0);
			B        : in  std_logic_vector(15 downto 0);
			Control  : in  std_logic;
			R        : out std_logic_vector(15 downto 0);
			Zero     : out std_logic;
			overflow : out std_logic
    );
end alu_16b;

architecture behavior of alu_16b is
begin
end behavior;
