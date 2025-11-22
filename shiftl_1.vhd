library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity shiftl_1 is
	port(
		offset_EX	: in	std_logic_vector(15 downto 0); 
		offset_EX_2	: out std_logic_vector(15 downto 0)
	);
end shiftl_1;

architecture structure of shiftl_1 is
begin
	process (offset_EX)
	begin
	offset_EX_2	<=	std_logic_vector( shift_left(unsigned(offset_EX), 1) );
	end process;
end structure;
