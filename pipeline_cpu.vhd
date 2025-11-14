LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY pipeline_cpu IS

	PORT(

		CLOCK_50:	IN	STD_LOGIC
		
);

END ENTITY pipeline_cpu;

ARCHITECTURE structure OF pipeline_cpu IS

----- Sinais Clock -----

CONSTANT max: INTEGER := 50000000;			-- Ciclo do clock (é ajustável)
CONSTANT half: INTEGER := max/2;				-- Meio Ciclo
SIGNAL clockticks: INTEGER RANGE 0 TO max;-- Conta cada ciclo do clock de entrada
SIGNAL clock: STD_LOGIC;

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

END ARCHITECTURE;