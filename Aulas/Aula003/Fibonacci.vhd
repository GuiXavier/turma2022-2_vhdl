-- Este testbench VHDL imprime a sequ�ncia de Fibonacci.
-- O loop � interrompido se o pr�ximo valor da sequ�ncia for igual ou superior � constante pr�-definida 'FIB_LIMIT'.
-- Esta abordagem demonstra como controlar a execu��o de loops usando condi��es de sa�da.

entity a003e_while_loop_tb is
end entity;

architecture sim of a003e_while_loop_tb is
    constant FIB_LIMIT      : integer := 101; -- Limite da sequ�ncia
begin

    -- Thread
    process is
        variable primeirotermo : integer := 0; -- Primeiro termo da sequ�ncia de Fibonacci
        variable segundotermo  : integer := 1; -- Segundo termo da sequ�ncia
        variable proximotermo  : integer := 0; -- Pr�ximo termo a ser calculado
    begin
        report "Start!";

        report "i = " & integer'image(primeirotermo);
        report "i = " & integer'image(segundotermo);

        while proximotermo < FIB_LIMIT loop
            proximotermo := primeirotermo + segundotermo;
            
            exit when proximotermo >= FIB_LIMIT;

            report "i = " & integer'image(proximotermo);

            primeirotermo := segundotermo;
            segundotermo  := proximotermo;
        end loop;

        report "Ateh!";
        wait;
    end process;

end architecture;
