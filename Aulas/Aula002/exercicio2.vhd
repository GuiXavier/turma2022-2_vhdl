-- Entity
entity exercicio1 is
end exercicio1;

-- Architecture
architecture temporizador of exercicio1 is
constant TimeDelay : time := 30 sec;
constant TimeDelay2 : time := 5 sec;
begin

    process
    begin
        report "Sinal Verde";
        wait for TimeDelay;

        report "Sinal Amarelo";
        wait for TimeDelay2;

        report "Sinal Vermelho";
        wait for TimeDelay;

    end process;

end architecture;