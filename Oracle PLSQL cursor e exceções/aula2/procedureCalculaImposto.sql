-- precedure para calcular imposto passando o ID
create or replace procedure CALCULO_IMPOSTO
(p_id in PRODUTO_VENDA_EXERCICIO.id%type, p_imposto_saida out PRODUTO_VENDA_EXERCICIO.percentual_imposto%type)
is
    v_quantidade PRODUTO_VENDA_EXERCICIO.quantidade%type;
    v_preco PRODUTO_VENDA_EXERCICIO.preco%type;
    v_imposto PRODUTO_VENDA_EXERCICIO.percentual_imposto%type;
begin
    select quantidade, preco, percentual_imposto 
    into v_quantidade, v_preco, v_imposto from PRODUTO_VENDA_EXERCICIO
    where id = p_id;
    p_imposto_saida := (v_preco * v_quantidade)*(v_imposto/100);
end;

------------------------------------------------------------------------

-- Exercicio Testando a procedure: calculando o imposto da venda 2
SET SERVEROUTPUT ON;

declare
    v_percentual PRODUTO_VENDA_EXERCICIO.percentual_imposto%type;
begin
    CALCULO_IMPOSTO(2, v_percentual);
    dbms_output.put_line('Valor do imposto: ' || v_percentual);
end;