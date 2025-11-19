library ieee;
use ieee.std_logic_1164.all;

entity inst_mem is
	port(
		Address  : in  std_logic_vector(15 downto 0);
		Inst_Out : out std_logic_vector(15 downto 0)
	);
end inst_mem;

architecture structure of inst_mem is
begin
end structure;
