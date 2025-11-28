library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity alu_16b is
    port(
        A        : in  std_logic_vector(15 downto 0);
        B        : in  std_logic_vector(15 downto 0);
        Control  : in  std_logic; -- '0' = add, '1' = sub
        R        : out std_logic_vector(15 downto 0);
        Zero     : out std_logic;
        overflow : out std_logic
    );
end alu_16b;

architecture behavior of alu_16b is
begin

    -- Processo combinacional: realiza add/sub bit-a-bit com ripple-carry
    process(A, B, Control)
        variable carry_v  : std_logic_vector(16 downto 0); -- carry_v(i) é carry para o bit i
        variable sum_v    : std_logic_vector(15 downto 0);
        variable bx       : std_logic; -- B xor Control (por bit)
    begin
        -- inicializa carry-in: para SUB (Control='1') queremos +1 (two's complement)
        carry_v := (others => '0');
        carry_v(0) := Control; -- se Control = '1' (sub), carry_in inicial = 1; se '0', = 0

        -- ripple adder: B é xorado com Control (inverte B quando sub)
        for i in 0 to 15 loop
            bx := B(i) xor Control; -- se Control='1' -> !B(i), se '0' -> B(i)
            -- soma bit (full-adder)
            sum_v(i) := A(i) xor bx xor carry_v(i);
            -- carry para o próximo bit
            carry_v(i+1) := (A(i) and bx) or (A(i) and carry_v(i)) or (bx and carry_v(i));
        end loop;

        -- atribuições de saída
        R <= sum_v;
        -- overflow para aritmética em two's complement: carry into MSB xor carry out of MSB
        -- carry_v(15) é carry para o bit 15 (MSB), carry_v(16) é o carry out final
        overflow <= carry_v(15) xor carry_v(16);

        -- Zero = '1' se resultado for todo zeros
        if sum_v = "0000000000000000" then
            Zero <= '1';
        else
            Zero <= '0';
        end if;
    end process;

end behavior;
