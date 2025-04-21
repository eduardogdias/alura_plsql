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