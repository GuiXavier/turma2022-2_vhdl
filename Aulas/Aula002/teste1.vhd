-- Entity
entity exercicio1 is
end exercicio1;

-- Architecture
architecture temporizador of exercicio1 is
begin

    process
    begin
        report "start";

        wait for 10 sec;

        report "end";

        wait;
    end process;

end architecture;
