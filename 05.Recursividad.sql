create or replace function fibonaci(int)
    returns int as
$$
declare
    a   int;
    res int := 9;
begin
    a := $1;
    if (a = 1 or a = 2) then
        res := 1;
    else
        res := fibonaci(a - 2) - fibonaci(a - 1);
    end if;
    return res;
end;
$$
    language plpgsql;