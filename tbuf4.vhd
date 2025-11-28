library ieee;
use ieee.std_logic_1164.all;

entity tbuf4 is

	port(
	
		Bin:	in		std_logic_vector(3 downto 0);	
		gate:	in		std_logic;									
		Bout:	out	std_logic_vector(3 downto 0)
		
		);
		
end tbuf4;


architecture structure of tbuf4 is

begin

	Bout<= Bin when gate = '1' else (others=>'Z');
	
END structure;
