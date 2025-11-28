library ieee;
use ieee.std_logic_1164.all;
USE IEEE.NUMERIC_STD.ALL;

entity inst_mem is
	port(
		Address	: in  std_logic_vector(15 downto 0);
		Inst_Out : out std_logic_vector(15 downto 0)
	);
end inst_mem;

architecture structure of inst_mem is

signal instructions: std_logic_vector(511 downto 0) :=
        "0000000000000001" & -- palavra 0
        "0000000000000010" & -- palavra 1
        "0000000000000011" & -- palavra 2
        "0000000000000100" & -- palavra 3
        "0000000000000101" & -- palavra 4
        "0000000000000110" & -- palavra 5
        "0000000000000111" & -- palavra 6
        "0000000000001000" & -- palavra 7
        "0000000000001001" & -- palavra 8
        "0000000000001010" & -- palavra 9
        "0000000000001011" & -- palavra 10
        "0000000000001100" & -- palavra 11
        "0000000000001101" & -- palavra 12
        "0000000000001110" & -- palavra 13
        "0000000000001111" & -- palavra 14
        "0000000000010000" & -- palavra 15
		  (255 downto 0 => '0'); -- (16*16-1) palavras de 16 a 31

begin

  process(Address, instructions)
  
    variable addr_idx   : integer;
    variable msb_index  : integer;
	 
  begin
  
    addr_idx := to_integer(unsigned(Address));

    -- calcula address * 8
    msb_index := 511 - addr_idx * 8;

    -- verifica limites
    if (msb_index <= 511) and (msb_index >= 15) then
      Inst_Out <= instructions(msb_index downto msb_index - 15);
		
    else
      -- caso Address fora de 0..15 ou índice inválido, devolve zeros
      Inst_Out <= (others => '0');
    end if;
	 
  end process;

end structure;
