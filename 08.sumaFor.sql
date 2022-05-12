create or replace function sumaFor(int)
    returns int as
$$
declare
    cont int;
    res  int := 0;
begin
    /* funcion que suma los N primeros numeros enteros */
    for cont in 1..$1
        loop
            res := res + cont;
        end loop;
    return res;
end;
$$
    language plpgsql;

select sumaFor(2);