create or replace procedure CALCULA_IMPOSTO(
p_id in PRODUTO_VENDA_EXERCICIO.id%type, p_imposto out float)
is
    v_preco PRODUTO_VENDA_EXERCICIO.preco%type;
    v_quantidade PRODUTO_VENDA_EXERCICIO.quantidade%type;
    v_imposto PRODUTO_VENDA_EXERCICIO.percentual_imposto%type;
begin
    select preco, quantidade, percentual_imposto into v_preco, v_quantidade, v_imposto
    from PRODUTO_VENDA_EXERCICIO where id = p_id; 
    p_imposto := (v_preco * v_quantidade)*(v_imposto/100);
end;