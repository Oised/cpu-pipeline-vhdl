library ieee;
use ieee.std_logic_1164.all;

entity alu_control is
	port(
		Funct_lsb : in  std_logic;
		ALUOp     : in  std_logic;
		Add_Sub   : out std_logic
	);
end alu_control;

architecture structure of alu_control is
begin
    -- Se ALUOp = 0 (lw/sw): sempre ADD (Add_Sub = 0)
    -- Se ALUOp = 1 (tipo R ou beq): depende do Funct_lsb
    --   Funct_lsb = 0 → ADD
    --   Funct_lsb = 1 → SUB
    
    Add_Sub <= ALUOp AND Funct_lsb;
    
end structure;
