-- criando as tabelas dos exercicios
create table produto_exercicio(
    cod varchar(5) primary key,
    descricao varchar(100),
    categoria varchar(100)
);

create table produto_venda_exercicio(
    id number(5) primary key,
    cod_produto varchar(5) references produto_exercicio,
    data date,
    quantidade float(126),
    preco float(126),
    valor_total float(126),
    percentual_imposto float(126)
);


-- inserindo produtos
declare
    v_cod produto_exercicio.cod%type := 41232;
    v_descricao produto_exercicio.descricao%type := 'Sabor de Verão - Laranja - 1 Litro';
    v_categoria produto_exercicio.categoria%type := 'Sucos de Frutas';
begin
    insert into produto_exercicio values(v_cod, v_descricao, v_categoria);
    
    v_cod := 32223;
    v_descricao := 'Sabor de Verão - Uva - 1 Litro'; 
    v_categoria := 'Sucos de Frutas';
    insert into produto_exercicio values(v_cod,v_descricao, v_categoria);
    
    v_cod := 67120;
    v_descricao := 'Frescor da Montanha - Aroma Limão - 1 Litro'; 
    v_categoria := 'Águas';
    insert into produto_exercicio values(v_cod, replace(v_descricao,'-','>'), v_categoria);

    commit;
end;


select * from produto_exercicio;

delete from produto_exercicio































