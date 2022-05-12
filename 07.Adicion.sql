create or replace function adicion(int)
    returns int as
$$
declare
    cont int := 1;
    res  int := 0;
begin
    /* funcion que suma los N primeros numeros enteros */
    while(cont <= $1)
        loop
            res := res + cont;
            cont := cont + 1;
        end loop;
    return res;
end;
$$
    language plpgsql;

select adicion(2);