create procedure incluir_segmercado (p_id in number, p_descricao in varchar)
is
begin
    insert into segmercado values (p_id, p_descricao);
    commit;
end;


-- fora do pl/sql
execute incluir_segmercado(3,'Industrial');

-- dentro do pl/sql
begin
    incluir_segmercado(4,'Farmaceutico');
end;


select * from segmercado;