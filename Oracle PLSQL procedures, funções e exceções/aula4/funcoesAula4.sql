create or replace function RETORNA_CATEGORIA (p_cod in produto_exercicio.cod%type)
return produto_exercicio.categoria%type
is
    v_categoria produto_exercicio.categoria%type;
begin
    select categoria into v_categoria from produto_exercicio where cod = p_cod;
    return v_categoria;
end;

-------------------------

select RETORNA_CATEGORIA(41232) from produto_exercicio where cod = 41232;
select * from produto_exercicio;
