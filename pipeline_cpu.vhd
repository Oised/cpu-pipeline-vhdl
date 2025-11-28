LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

USE WORK.pipeline_cpu_pkg.ALL;


ENTITY pipeline_cpu IS

	PORT(

		CLOCK_50:	IN	STD_LOGIC
		
);

END ENTITY pipeline_cpu;

ARCHITECTURE structure OF pipeline_cpu IS

----- Clock -----

CONSTANT max: INTEGER := 50000000;			-- Ciclo do clock (é ajustável)
CONSTANT half: INTEGER := max/2;				-- Meio Ciclo
SIGNAL clockticks: INTEGER RANGE 0 TO max;-- Conta cada ciclo do clock de entrada
SIGNAL clock: STD_LOGIC;


----- Sinais de Sincronização -----

SIGNAL Global_In:		STD_LOGIC;
SIGNAL Global_Out:	STD_LOGIC;


----- IF -----

SIGNAL PC_In:		STD_LOGIC_VECTOR (15 DOWNTO 0);	-- Cálculo de PC
SIGNAL PC_Out:		STD_LOGIC_VECTOR (15 DOWNTO 0);	
SIGNAL PC_2_IF:	STD_LOGIC_VECTOR (15 DOWNTO 0);

SIGNAL Inst_IF:	STD_LOGIC_VECTOR (15 DOWNTO 0);	-- Instrução ("_IF, _ID, _EX e _WB" sinaliza aqui e ao 
																	-- longo do programa a qual estado esse sinal pertence)

----- ID -----

SIGNAL PC_2_ID:	STD_LOGIC_VECTOR (15 DOWNTO 0);	-- Sinais que chegam do estado anterior
SIGNAL Inst_ID:	STD_LOGIC_VECTOR (15 DOWNTO 0);

SIGNAL WB_ID:	STD_LOGIC_VECTOR (1 DOWNTO 0);	-- Sinais de Controle
SIGNAL M_ID:	STD_LOGIC_VECTOR (2 DOWNTO 0);
SIGNAL EX_ID:	STD_LOGIC_VECTOR (2 DOWNTO 0);

SIGNAL RS_Data_ID:	STD_LOGIC_VECTOR (15 DOWNTO 0);	-- Data de RS e RT que sai do componente "Registers"
SIGNAL RT_Data_ID:	STD_LOGIC_VECTOR (15 DOWNTO 0);

SIGNAL Offset_ID:		STD_LOGIC_VECTOR (15 DOWNTO 0);	-- Signs-extend do offset (13b -> 16b)


----- EX -----

SIGNAL WB_EX:	STD_LOGIC_VECTOR (1 DOWNTO 0);	-- Sinais, de controle, que vem do ID
SIGNAL M_EX:	STD_LOGIC_VECTOR (1 DOWNTO 0);

SIGNAL RegDst:	STD_LOGIC;	-- Os 3 bits do EX_ID
SIGNAL ALUOp:	STD_LOGIC;
SIGNAL ALUSrc:	STD_LOGIC;

SIGNAL PC_2_EX:		STD_LOGIC_VECTOR (15 DOWNTO 0);	-- Cálculo do pc
SIGNAL Offset_EX:		STD_LOGIC_VECTOR (15 DOWNTO 0);
SIGNAL Offset_EX_2:	STD_LOGIC_VECTOR (15 DOWNTO 0);
SIGNAL PC_EX:			STD_LOGIC_VECTOR (15 DOWNTO 0);
SIGNAL LIXO:			STD_LOGIC;


SIGNAL RT_Data_EX:	STD_LOGIC_VECTOR (15 DOWNTO 0);	-- ULA
SIGNAL Src_A:			STD_LOGIC_VECTOR (15 DOWNTO 0);
SIGNAL Src_B:			STD_LOGIC_VECTOR (15 DOWNTO 0);
SIGNAL ALU_R_EX:		STD_LOGIC_VECTOR (15 DOWNTO 0);
SIGNAL Add_Sub:		STD_LOGIC;
SIGNAL Zero_EX:		STD_LOGIC;
SIGNAL overflow_EX:	STD_LOGIC;

SIGNAL RT_EX:	STD_LOGIC_VECTOR (3 DOWNTO 0);	-- Endereços
SIGNAL RD_EX:	STD_LOGIC_VECTOR (3 DOWNTO 0);
SIGNAL RW_EX:	STD_LOGIC_VECTOR (3 DOWNTO 0);


----- MEM -----

SIGNAL WB_MEM:			STD_LOGIC_VECTOR (1 DOWNTO 0);	-- Sinal de controle que vem do EX

SIGNAL MemWrite:	STD_LOGIC;	-- 3 bits do M_EX + sinal zero que vem do EX
SIGNAL MemRead:	STD_LOGIC;
SIGNAL Branch:		STD_LOGIC;
SIGNAL Zero_MEM:	STD_LOGIC;	

SIGNAL PCSrc:			STD_LOGIC;	-- Sinal de controle

SIGNAL PC_MEM:	STD_LOGIC_VECTOR (15 DOWNTO 0);	-- Contem pc calculado no EX

SIGNAL ALU_R_MEM:			STD_LOGIC_VECTOR (15 DOWNTO 0);	-- Data memory
SIGNAL RT_Data_MEM:		STD_LOGIC_VECTOR (15 DOWNTO 0);
SIGNAL Read_Data_MEM:	STD_LOGIC_VECTOR (15 DOWNTO 0);

SIGNAL RW_MEM:	STD_LOGIC_VECTOR (3 DOWNTO 0);	-- Endereço que vem do EX


----- WB -----

SIGNAL RegWrite:	STD_LOGIC;	-- 2 bits do WB_MEM
SIGNAL MemtoReg:	STD_LOGIC;

SIGNAL Read_Data_WB:	STD_LOGIC_VECTOR (15 DOWNTO 0);	-- Definindo write data
SIGNAL ALU_R_WB:		STD_LOGIC_VECTOR (15 DOWNTO 0);
SIGNAL Write_Data:	STD_LOGIC_VECTOR (15 DOWNTO 0);

SIGNAL RW_WB:	STD_LOGIC_VECTOR (3 DOWNTO 0);	-- Endereço que vem do MEM


BEGIN

---------------------------------------

--- PROCESS PARA O DIVISOR DE CLOCK ---

---------------------------------------

ClockDivide: PROCESS
	BEGIN
   WAIT UNTIL CLOCK_50'EVENT AND CLOCK_50 = '1';
   IF clockticks < max THEN clockticks <= clockticks + 1;
   ELSE clockticks <= 0;
   END IF;
   IF clockticks < half THEN clock <= '0';
   ELSE clock <= '1';
   END IF;
   END PROCESS;



	
--- IF: FETCH DA INSTRUçãO DA MEMóRIA ---

Mux_2_1_IF:	mux_2_1_16b	PORT MAP	( PC_2_IF, PC_MEM, PCSrc, PC_In );	-- Escolha do PC
PC_IF: 		pc		 		PORT MAP	( PC_In, clock, Global_In, Global_Out, PC_Out );

PC_mais_2:	alu_16b 		PORT MAP	( PC_Out, "0000000000000010", '0', PC_2_IF, LIXO, LIXO );	-- Cáculo do prox PC

Instruc_M:	inst_mem		PORT MAP	( PC_Out, Inst_IF );	-- Leitura da instrução




------------------------------------------------------------------
------------------------------------------------------------------

S_IF_ID:	if_id	PORT MAP (	PC_2_IF, Inst_IF, 	-- Entra
									clock, Global_In, Global_Out, 
									PC_2_ID, Inst_ID);	-- Sai

------------------------------------------------------------------
------------------------------------------------------------------




--- ID: DECODIFICAçãO DA INSTRUçãO & LEITURA DOS REGISTRADORES ---

S_Control:		control		PORT MAP ( inst_ID, wb_ID, m_ID, ex_ID );	-- Unidade de Controle

S_Registers:	registers	PORT MAP ( Inst_ID(12 DOWNTO 9), Inst_ID(8 DOWNTO 5), RW_WB, clock, Write_Data, RegWrite, RS_Data_ID, RT_Data_ID );	-- Componente dos Registradores

Offset_ID(15 DOWNTO 13) <= "000";	-- Sign-extend (13b -> 16b)
Offset_ID(12 Downto 0) 	<= Inst_ID(12 DOWNTO 0);




------------------------------------------------------------------
------------------------------------------------------------------

S_ID_EX:	id_ex	PORT MAP ( 	WB_ID, M_ID, EX_ID, PC_2_ID, RS_Data_ID, RT_Data_ID, Offset_ID, inst_ID(12 DOWNTO 9), inst_ID(4 DOWNTO 1), 	-- Entra
									clock, Global_In, Global_Out, 
									WB_EX, M_EX, RegDst, ALUOp, ALUSrc, PC_2_EX, Src_A, RT_Data_EX, Offset_EX, RT_EX, RD_EX );						-- Sai

------------------------------------------------------------------
------------------------------------------------------------------




--- EX: EXECUçãO DAS OPERAçõES OU CáLCULO DOS ENDEREÇOS ---

S_Sll_1:	shiftl_1	PORT MAP ( offset_EX, offset_EX_2 );	-- Cáculo do PC
PC_Add:	alu_16b	PORT MAP ( PC_2_EX, Offset_EX_2, '0', PC_EX, LIXO, LIXO );

Mux_2_1_EX_1:	mux_2_1_16b	PORT MAP ( RT_Data_EX, Offset_EX, ALUSrc, Src_B );	-- ULA
ALUControl:		alu_control PORT MAP ( Offset_EX(0), ALUOp, Add_Sub );
ALU:				alu_16b		PORT MAP ( Src_A, Src_B, Add_Sub, ALU_R_EX, Zero_EX, overflow_EX );

Mux_2_1_EX_2:	mux_2_1_4b	PORT MAP ( RT_EX, RD_EX, RegDst, RW_EX );	-- Definição do endereço do reg onde sera escrito/salvo (RW)




------------------------------------------------------------------
------------------------------------------------------------------

S_EX_MEM:	ex_mem	PORT MAP (	WB_EX, M_EX, PC_EX, Zero_EX, ALU_R_EX, RT_Data_EX, RW_EX, 										-- Entra
											clock, Global_In, Global_Out, 
											WB_MEM, MemWrite, MemRead, Branch, PC_MEM, Zero_MEM, ALU_R_MEM, RT_Data_MEM, RW_MEM );	-- Sai

------------------------------------------------------------------
------------------------------------------------------------------




--- MEM: ACESSO AOS OPERANDOS DA MEMÓRIA ---

PCSrc <= Branch AND Zero_MEM;
 
Data_Mem:	data_memory	PORT MAP ( ALU_R_MEM, RT_Data_MEM, MemRead, MemWrite, Read_Data_MEM );	-- Componente da Memória




------------------------------------------------------------------
------------------------------------------------------------------ 
 
S_MEM_WB:	mem_wb	PORT MAP ( 	WB_MEM, Read_Data_MEM, ALU_R_MEM, RW_MEM, 				-- Entra
											clock, Global_In, Global_Out, 
											RegWrite, MemtoReg, Read_Data_WB, ALU_R_WB, RW_WB );	-- Sai
 
--------------------------------------------------------
------------------------------------------------------------------




--- WB: ESCRITA DO RESULTADO DE VOLTA AO REGISTRADOR ---

Mux_2_1_WB:	mux_2_1_16b	PORT MAP ( Read_Data_WB, ALU_R_WB, MemtoReg, Write_Data );	-- Definição do que sera (data) escrito/salvo




END ARCHITECTURE;