create or replace procedure INCLUINDO_DADOS_VENDA
(p_id in PRODUTO_VENDA_EXERCICIO.id%type,
p_cod_produto in PRODUTO_VENDA_EXERCICIO.cod_produto%type,
p_quantidade in PRODUTO_VENDA_EXERCICIO.quantidade%type,
p_preco in PRODUTO_VENDA_EXERCICIO.preco%type,
p_valor_total in PRODUTO_VENDA_EXERCICIO.valor_total%type,
p_percentual_imposto in PRODUTO_VENDA_EXERCICIO.percentual_imposto%type)
is
begin
    insert into PRODUTO_VENDA_EXERCICIO values
    (p_id, p_cod_produto, sysdate, p_quantidade, p_preco, p_valor_total, p_percentual_imposto);
    
end;

-- Testando ---------------------------------------------------------------

select * from PRODUTO_VENDA_EXERCICIO;

execute INCLUINDO_DADOS_VENDA(1, 41232, 100, 10, 1000, 10);

select * from PRODUTO_VENDA_EXERCICIO;

