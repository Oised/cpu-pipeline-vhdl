library ieee;
use ieee.std_logic_1164.all;

entity ex_mem is
	port(
		WB_in      : in  std_logic_vector(1 downto 0);
		M_in       : in  std_logic_vector(1 downto 0);
		PC_EX_in   : in  std_logic_vector(15 downto 0);
		Zero_in    : in  std_logic;
		ALU_R_in   : in  std_logic_vector(15 downto 0);
		RT_Data_in : in  std_logic_vector(15 downto 0);
		RW_in      : in  std_logic_vector(3 downto 0);
		Global_In  : in  std_logic;
		Global_Out : in  std_logic;
		WB_out     : out std_logic_vector(1 downto 0);
		MemWrite   : out std_logic;
		MemRead    : out std_logic;
		Branch     : out std_logic;
		PC_MEM     : out std_logic_vector(15 downto 0);
		Zero_MEM   : out std_logic;
		ALU_R_MEM  : out std_logic_vector(15 downto 0);
		RT_Data_MEM: out std_logic_vector(15 downto 0);
		RW_MEM     : out std_logic_vector(3 downto 0)
	);
end ex_mem;

architecture structure of ex_mem is
begin
end structure;
