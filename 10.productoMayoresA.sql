create or replace function productosMayoresA(numeric)
    returns int as
$$
declare
    cont_item int;
    producto  order_detail%rowtype;
begin
    /* funcion que suma los N primeros numeros enteros */
    drop table if exists productosMayores;
    create table productosMayores
    (
        product_id varchar not null,
        nombre     varchar not null
    );

    select count(*) into cont_item from order_detail where monto > $1;
    for producto in select * from order_detail where monto > $1
        loop
            insert into productosMayores values (producto.product_id, producto.product);
        end loop;
    return cont_item;
end;
$$
    language plpgsql;


select productosMayoresA(100);
