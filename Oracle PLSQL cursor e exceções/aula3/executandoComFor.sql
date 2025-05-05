create or replace procedure altualizar_segmercado
(p_id in cliente.id%type, p_segmercado_id in cliente.id%type)
is
begin
    update cliente set segmercado_id = p_segmercado_id where id = p_id;
    commit;
end;

-- executando com for ---------------------------------------

declare
    v_segmercado_novo cliente.segmercado_id%type := 2;
    v_num_cli integer;
begin
    select count(*) into v_num_cli from cliente;
    for v_id in 1..v_num_cli loop
        altualizar_segmercado(v_id, v_segmercado_novo);
    end loop;
end;


select * from cliente;
