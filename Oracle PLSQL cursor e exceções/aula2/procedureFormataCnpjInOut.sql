-- formatando cnpj direto pelo sql
select cnpj, substr(cnpj, 1, 3) || '/' ||  substr(cnpj, 4, 2) || '-' || substr(cnpj, 6) as cnpj_formatado
from cliente;



-- criando a procedure com parametros IN e OUT
create or replace procedure formata_cnpj
(p_cnpj in cliente.cnpj%type, p_cnpj_saida out cliente.cnpj%type)
is
begin
    p_cnpj_saida := substr(p_cnpj, 1, 3) || '/' ||  substr(p_cnpj, 4, 2) || '-' || substr(p_cnpj, 6);
end;



-- testando a procedure
set serveroutput on;
declare
    v_cnpj cliente.cnpj%type;
    v_cnpj_saida cliente.cnpj%type;
begin
    v_cnpj := '1234567890';
    v_cnpj_saida := '1234567890';
    dbms_output.put_line(v_cnpj || '    ' || v_cnpj_saida);
    
    formata_cnpj(v_cnpj, v_cnpj_saida);
    dbms_output.put_line(v_cnpj || '    ' || v_cnpj_saida);

end;




