-- procedure para atualizar o segmercado_id passando o ID e o novo Segmento
create or replace procedure altualizar_segmercado
(p_id in cliente.id%type, p_segmercado_id in cliente.id%type)
is
begin
    update cliente set segmercado_id = p_segmercado_id where id = p_id;
    commit;
end;

-- executando ---------------------------------------

execute altualizar_segmercado(1, 3);
execute altualizar_segmercado(2, 3);
execute altualizar_segmercado(3, 3);

select * from cliente;
select * from segmercado;