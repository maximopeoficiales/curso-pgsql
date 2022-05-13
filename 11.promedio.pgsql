create or replace function montoPromedio()
    returns setof "record"
as
$$
declare
    r record;
begin
    for r in select monto,
                    avg(monto)
             from order_detail
             group by monto
        loop
            return next r;
        end loop;

end;
$$
    language plpgsql;


select monto, to_char(montoprom, 'LFM999,999,999.00') montoprom
from montoPromedio() as (monto numeric, montoprom numeric)
order by monto, montoprom;
