declare
begin
    update PRODUTO_EXERCICIO set descricao = replace(descricao, '-', '>');
end;

select * from PRODUTO_EXERCICIO;