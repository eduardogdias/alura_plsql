set serveroutput on;

declare
    v_id number(5) := 1;
    
begin
    dbms_output.put_line(v_id);
    v_id := 2;
    dbms_output.put_line(v_id);
end;