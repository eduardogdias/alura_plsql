-- procedure para inserir --------------------------------------
create or replace procedure INCLUINDO_PRODUTO 
(p_cod in produto_exercicio.cod%type, 
p_descricao in produto_exercicio.descricao%type,
p_categoria in produto_exercicio.categoria%type)
is
begin
    insert into produto_exercicio values (p_cod, replace(p_descricao,'-','>'), p_categoria);
end;



-- procedure para alterar --------------------------------------
create or replace procedure ALTERANDO_CATEGORIA_PRODUTO
(p_cod in produto_exercicio.cod%type,
p_categoria in produto_exercicio.categoria%type)
is
begin
    update produto_exercicio set categoria = p_categoria where cod = p_cod;
end;



-- procedure para excluir --------------------------------------
create or replace procedure EXCLUINDO_PRODUTO 
(p_cod in produto_exercicio.cod%type)
is
begin
    delete from produto_exercicio where cod = p_cod;
end;



-----------------------------------------------------------------
-- testando as procedures
-- a)
begin
    INCLUINDO_PRODUTO(33854, 'Frescor da Montanha - Aroma Laranja - 1 Litro', 'Mate');
    INCLUINDO_PRODUTO(89254, 'Frescor da Montanha - Aroma Uva - 1 Litro', 'Águas');
end;

-- b)
execute ALTERANDO_CATEGORIA_PRODUTO(33854, 'Águas');

-- c)
execute EXCLUINDO_PRODUTO(89254);


-----------------------------------------------------------------
select * from produto_exercicio;

