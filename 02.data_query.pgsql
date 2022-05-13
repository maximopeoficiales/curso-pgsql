do
$$
    <<block>>
        declare
        seller_count int;
    BEGIN
        select count(*) into seller_count from seller;
        raise notice 'quantity sellers %',seller_count;
    end block;
$$ language 'plpgsql'