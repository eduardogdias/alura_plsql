set serveroutput on;
create or replace procedure ATUALIZAR_VALOR_TOTAL_IMPOSTO
is
   v_numero_venda integer;
   v_total_vendas integer;
   v_ID produto_venda_exercicio.id%type := 1;
   v_COD_PRODUTO produto_venda_exercicio.cod_produto%type;
   v_VALOR produto_venda_exercicio.valor_total%type;
   v_QUANTIDADE produto_venda_exercicio.quantidade%type;
   v_PRECO produto_venda_exercicio.preco%type;
   v_PERCENTUAL produto_venda_exercicio.percentual_imposto%type;
begin
    select min(id) into v_numero_venda from produto_venda_exercicio; --pega o menor id
    select count(*)into v_total_vendas from produto_venda_exercicio; --calcula o numero de vendas
    loop
        select quantidade, preco into v_quantidade, v_preco     -- pega a QUANTIDADE e o PRECO da venda
        from PRODUTO_VENDA_EXERCICIO where id = v_numero_venda;
        
        update PRODUTO_VENDA_EXERCICIO set valor_total = v_quantidade * v_preco     -- atualiza o VALOR_TOTAL     
        where id = v_numero_venda;
        
        CALCULO_IMPOSTO(v_numero_venda, v_PERCENTUAL);  -- chama a procedure de CALCULO_IMPOSTO passando o ID e uma variável pra receber o valor retornado
        dbms_output.put_line('imposto: ' || v_PERCENTUAL); -- não é essa a procedure certa de imposto, mas eu usei pra demonstrar
        update PRODUTO_VENDA_EXERCICIO set percentual_imposto = v_PERCENTUAL -- atualiza o PERCENTUAL_IMPOSTO
        where id = v_numero_venda;
        
        v_numero_venda := v_numero_venda + 1;
    exit when v_numero_venda > v_total_vendas;
    end loop;    
end;


----------------------------------------------
EXECUTE ATUALIZAR_VALOR_TOTAL_IMPOSTO;

select * from produto_venda_exercicio;