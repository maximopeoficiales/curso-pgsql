create or replace function suma(numeric, numeric)
    returns numeric as
$$
declare
    a   numeric;
    b   numeric;
    res numeric;
begin
    a := $1;
    b := $2;
    res := a + b;
    return res;
end;
$$
    language plpgsql;


-- usos
select suma(1, 2);
select suma((select monto from order_detail where order_detail_id = 423),
            (select monto from order_detail where order_detail_id = 424));
select monto, monto_affected, suma(monto, 1000)
from order_detail;