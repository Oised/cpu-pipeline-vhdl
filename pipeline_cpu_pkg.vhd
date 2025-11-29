library ieee;
use ieee.std_logic_1164.all;

package pipeline_cpu_pkg is

-- Mux 2-to-1, 16 bits
component mux_2_1_16b
  port (
    A   : in  std_logic_vector(15 downto 0);
    B   : in  std_logic_vector(15 downto 0);
    Sel : in  std_logic;
    Y   : out std_logic_vector(15 downto 0)
  );
end component;

-- Mux 2-to-1, 4 bits (usado em EX para seleção de endereço)
component mux_2_1_4b
  port (
    A   : in  std_logic_vector(3 downto 0);
    B   : in  std_logic_vector(3 downto 0);
    Sel : in  std_logic;
    Y   : out std_logic_vector(3 downto 0)
  );
end component;

-- Program Counter (PC) - agora 16 bits
component pc
  port (
    PC_in     : in  std_logic_vector(15 downto 0);
	 clock	  : in  std_logic;
    Global_In : in  std_logic;
    Global_Out: in  std_logic;
    PC_out    : out std_logic_vector(15 downto 0)
  );
end component;

-- ALU 16 bits (nomeado alu_16b conforme suas instâncias)
component alu_16b
  port (
    A       : in  std_logic_vector(15 downto 0);
    B       : in  std_logic_vector(15 downto 0);
    Control : in  std_logic;                     -- ex: Add/Sub select (usado no seu código)
    R       : out std_logic_vector(15 downto 0);
    Zero    : out std_logic;
	 overflow: out std_logic
  );
end component;

-- Instruction Memory (endereço 16 bits -> Inst_IF continua 16 bits)
component inst_mem
  port (
    Address  : in  std_logic_vector(15 downto 0);
    Inst_Out : out std_logic_vector(15 downto 0)
  );
end component;

-- IF/ID Pipeline Register (PCs agora 16 bits)
component if_id
  port (
    PC_2_IF_in  : in  std_logic_vector(15 downto 0);
    Inst_IF_in  : in  std_logic_vector(15 downto 0);
	 clock		 : in  std_logic;
    Global_In   : in  std_logic;
    Global_Out  : in  std_logic;
    PC_2_ID_out : out std_logic_vector(15 downto 0);
    Inst_ID_out : out std_logic_vector(15 downto 0)
  );
end component;

-- Control Unit
component control
  port (
    instruction : in  std_logic_vector(15 downto 0);
    wb          : out std_logic_vector(1 downto 0);
    m           : out std_logic_vector(2 downto 0);
    ex          : out std_logic_vector(2 downto 0)
  );
end component;

-- Register File (endereços 4 bits, dados 16 bits)
component registers
  port (
    RS_addr   : in  std_logic_vector(3 downto 0);
    RT_addr   : in  std_logic_vector(3 downto 0);
    RW_addr   : in  std_logic_vector(3 downto 0);
	 clock	  : in  std_logic;
    WriteData : in  std_logic_vector(15 downto 0);
    RegWrite  : in  std_logic;
    RS_Data   : out std_logic_vector(15 downto 0);
    RT_Data   : out std_logic_vector(15 downto 0);
	 view_regis: in  std_logic_vector(3 downto 0);
	 view_regis_data: out std_logic_vector(15 downto 0)
  );
end component;

-- ID/EX Pipeline Register (PCs 16 bits, sinais de dados 16 bits)
component id_ex
  port (
    WB_in     : in  std_logic_vector(1 downto 0);
    M_in      : in  std_logic_vector(2 downto 0);
    EX_in     : in  std_logic_vector(2 downto 0);
    PC_2_ID   : in  std_logic_vector(15 downto 0);
    RS_Data   : in  std_logic_vector(15 downto 0);
    RT_Data   : in  std_logic_vector(15 downto 0);
    Offset_in : in  std_logic_vector(15 downto 0);
    RT_ID     : in  std_logic_vector(3 downto 0); -- inst_ID(12 downto 9)
    RD_ID     : in  std_logic_vector(3 downto 0); -- inst_ID(4 downto 1)
	 clock	  : in  std_logic;
    Global_In : in  std_logic;
    Global_Out: in  std_logic;
    WB_out    : out std_logic_vector(1 downto 0);
    M_out     : out std_logic_vector(1 downto 0);
    RegDst    : out std_logic;
    ALUOp     : out std_logic;
    ALUSrc    : out std_logic;
    PC_2_EX   : out std_logic_vector(15 downto 0);
    Src_A     : out std_logic_vector(15 downto 0);
    RT_Data_EX: out std_logic_vector(15 downto 0);
    Offset_EX : out std_logic_vector(15 downto 0);
    RT_EX     : out std_logic_vector(3 downto 0);
    RD_EX     : out std_logic_vector(3 downto 0)
  );
end component;

-- Shift Left
component shiftl_1
  port(
	offset_EX	: in	std_logic_vector(15 downto 0); 
	offset_EX_2	: out std_logic_vector(15 downto 0)
  );
end component;
-- ALU Control
component alu_control
  port (
    Funct_lsb : in  std_logic; -- ex: Offset_EX(0) no seu uso
    ALUOp     : in  std_logic;
    Add_Sub   : out std_logic
  );
end component;

-- EX/MEM Pipeline Register (PCs 16 bits)
component ex_mem
  port (
    WB_in      : in  std_logic_vector(1 downto 0);
    M_in       : in  std_logic_vector(1 downto 0);
    PC_EX_in   : in  std_logic_vector(15 downto 0);
    Zero_in    : in  std_logic;
    ALU_R_in   : in  std_logic_vector(15 downto 0);
    RT_Data_in : in  std_logic_vector(15 downto 0);
    RW_in      : in  std_logic_vector(3 downto 0);
	 clock	  	: in  std_logic;
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
end component;

-- Data Memory (endereços e dados 16 bits)
component data_memory
  port (
    Address    : in  std_logic_vector(15 downto 0);
    Write_Data : in  std_logic_vector(15 downto 0);
    MemRead    : in  std_logic;
    MemWrite   : in  std_logic;
    Read_Data  : out std_logic_vector(15 downto 0)
  );
end component;

-- MEM/WB Pipeline Register (sinais 16 bits onde aplica)
component mem_wb
  port (
    WB_in        : in  std_logic_vector(1 downto 0);
    Read_Data_in : in  std_logic_vector(15 downto 0);
    ALU_R_in     : in  std_logic_vector(15 downto 0);
    RW_in        : in  std_logic_vector(3 downto 0);
	 clock	  	  : in  std_logic;
    Global_In    : in  std_logic;
    Global_Out   : in  std_logic;
    RegWrite_out : out std_logic;
    MemtoReg_out : out std_logic;
    Read_Data_WB : out std_logic_vector(15 downto 0);
    ALU_R_WB     : out std_logic_vector(15 downto 0);
    RW_WB        : out std_logic_vector(3 downto 0)
  );
end component;

component regis4
	port(
		Data  : in  std_logic_vector(3 downto 0);
		Clock : in  std_logic;
		Rin   : in  std_logic;
		R     : out std_logic_vector(3 downto 0)
	);
end component;

component regis16
	port(
		Data  : in  std_logic_vector(15 downto 0);
		Clock : in  std_logic;
		Rin   : in  std_logic;
		R     : out std_logic_vector(15 downto 0)
	);
end component;

component multplex_led_hex
	port( 
		x   : in  std_logic_vector (3 downto 0);
		hex : out std_logic_vector (0 to 6)
	);
end component;

component tbuf16
	port(
		Bin:	in		std_logic_vector(15 downto 0);
		gate:	in		std_logic;
		Bout:	out	std_logic_vector(15 downto 0)		
	);
end component;

component tbuf4
	port(
		Bin:	in		std_logic_vector(3 downto 0);
		gate:	in		std_logic;
		Bout:	out	std_logic_vector(3 downto 0)		
	);
end component;

end package;