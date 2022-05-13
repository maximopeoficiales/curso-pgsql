select age(current_date, date '2001-01-10');
create or replace function getAgeComplete(date, date)
    returns varchar as
$$
declare
    txt varchar;
begin
    /* funcion que suma los N primeros numeros enteros */
    txt = replace(
            replace(
                replace(
                    replace(upper(age($1, $2)::varchar)
                    , 'YEAR', 'AÑO')
                    , 'MONS', 'MESES')
                    , 'MON', 'MES')
                    , 'DAY', 'DIA');
    return
        txt;
end;
$$
    language plpgsql;


select getAgeComplete(current_date, date '2001-01-10');
