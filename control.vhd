library ieee;
use ieee.std_logic_1164.all;

entity control is
	port(
		instruction : in  std_logic_vector(15 downto 0);
		wb          : out std_logic_vector(1 downto 0);
		m           : out std_logic_vector(2 downto 0);
		ex          : out std_logic_vector(2 downto 0)
	);
end control;

architecture structure of control is
begin
end structure;
