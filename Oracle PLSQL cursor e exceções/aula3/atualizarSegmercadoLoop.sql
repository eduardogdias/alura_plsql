-- procedure para atualizar o segmercado_id passando o ID e o novo Segmento
create or replace procedure altualizar_segmercado
(p_id in cliente.id%type, p_segmercado_id in cliente.id%type)
is
begin
    update cliente set segmercado_id = p_segmercado_id where id = p_id;
    commit;
end;

-- executando com loop ---------------------------------------

declare
    v_segmercado_novo cliente.segmercado_id%type := 3;
    v_id cliente.id%type := 1;
begin
    loop
        altualizar_segmercado(v_id, v_segmercado_novo);
        v_id := v_id + 1;
    exit when v_id > 3;
    end loop;
end;


select * from cliente;
select * from segmercado;