DECLARE
   v_COD produto_exercicio.cod%type := '92347';
   v_DESCRICAO produto_exercicio.descricao%type := 'Aroma do Campo - Mate - 1 Litro';
   v_CATEGORIA produto_exercicio.categoria%type := 'Águas';
BEGIN
   INSERT INTO PRODUTO_EXERCICIO (COD, DESCRICAO, CATEGORIA) VALUES (v_COD, REPLACE(v_DESCRICAO,'-','>'), v_CATEGORIA);
   COMMIT;
END;

-- fazendo o exercicio
declare
    v_cod PRODUTO_EXERCICIO.cod%type := '92347';
    v_categoria PRODUTO_EXERCICIO.categoria%type := 'Mate';
begin
    update PRODUTO_EXERCICIO set categoria = v_categoria where cod = v_cod;
end;





select * from PRODUTO_EXERCICIO