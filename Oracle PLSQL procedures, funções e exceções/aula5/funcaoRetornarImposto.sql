create or replace function RETORNA_IMPOSTO (p_cod produto_venda_exercicio.cod_produto%type)
return produto_venda_exercicio.percentual_imposto%type
is
    v_categoria produto_exercicio.categoria%type;
    v_imposto produto_venda_exercicio.percentual_imposto%type;
begin
    select categoria into v_categoria from produto_exercicio where cod = p_cod;
    
    if v_categoria = 'Sucos de Frutas' then
        v_imposto := 10;
    elsif v_categoria = 'Águas' then
        v_imposto := 20;
    elsif v_categoria = 'Mate' then
        v_imposto := 15;
    end if;
    return v_imposto;
end;



select * from PRODUTO_EXERCICIO;
select * from PRODUTO_VENDA_EXERCICIO;

