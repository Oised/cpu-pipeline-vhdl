library ieee;
use ieee.std_logic_1164.all;

entity mux_2_1_16b is
	port(
		A   : in  std_logic_vector(15 downto 0);
		B   : in  std_logic_vector(15 downto 0);
		Sel : in  std_logic;
		Y   : out std_logic_vector(15 downto 0)
	);
end mux_2_1_16b;

architecture structure of mux_2_1_16b is
begin
	process(A, B, Sel)
	begin
	if Sel = '0' 	then
		Y <= A;
	else
		Y <= B;
	end if;
	end process;
end structure;
