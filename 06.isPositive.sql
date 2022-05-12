create or replace function isPositive(int)
    returns boolean as
$$
declare
    res boolean := false;
begin
    if ($1 >=  0) then
        res := true;
    end if;
    return res;
end;
$$
    language plpgsql;

select isPositive(-2);