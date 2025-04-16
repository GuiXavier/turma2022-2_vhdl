-- Este testbench VHDL imprime a sequ�ncia de Fibonacci.
-- O loop � interrompido se o pr�ximo valor da sequ�ncia for igual ou superior � constante pr�-definida 'FIB_LIMIT'.
-- Esta abordagem demonstra como controlar a execu��o de loops usando condi��es de sa�da.

entity primos is
end entity;

architecture sim of primos is
    constant PRIME_LIMIT    : integer := 101; -- Limite da sequ�ncia
begin

    -- Thread
    process is
        variable i : integer := 2;
        variable j  : integer := 3;
    begin
        report "Start!";

        while i < PRIME_LIMIT loop
            -- exit when i >= PRIME_LIMIT;

            j := i mod i;
            
            if j /= 0 then

                report "i = " & integer'image(i);
                
            end if;

            i := i + 1;
        end loop;

        report "Ateh!";
        wait;
    end process;

end architecture;
