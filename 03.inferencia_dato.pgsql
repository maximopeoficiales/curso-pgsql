do
$$
    <<block>>
        declare
        name             seller.name%type;
        id_mirakl_seller seller.id_seller_mirakl%type;
    BEGIN
        select s.name, s.id_seller_mirakl
        into name,id_mirakl_seller
        from seller as s
        where s.id = 1;
        raise notice '% %',name,id_mirakl_seller;
    end block;
$$ language 'plpgsql'