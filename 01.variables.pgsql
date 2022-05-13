do
$$

    <<block>>
        declare
        name   text := 'maximo junior';
        n1     int  := 15;
        n2     int  := 30;
        result int;
    BEGIN
        result := n1 + n2;
        name := 'jhon snoe';
        raise notice 'hola bro %',name;
        raise notice 'resultado es %',result;
    end block;
$$ language 'plpgsql'