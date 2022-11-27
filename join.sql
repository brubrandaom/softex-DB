create database loja;
use loja;

create table CLIENTES(
	ID int,
    NOME varchar(100),
    CPF varchar(11),
    primary key (ID)
);

create table PRODUTOS(
	ID_PRODUTO int,
    NOME_PRODUTO varchar(100),
    PRECO_PRODUTO float,
    CATEGORIA_PRODUTO varchar(100),
    primary key (ID_PRODUTO)
);

create table VENDAS(
	ID_VENDA int,
    ID_CLIENTE int,
    ID_PRODUTO int,
    primary key (ID_VENDA),
    foreign key (ID_CLIENTE)
		references CLIENTES(ID),
	foreign key (ID_PRODUTO)
		references PRODUTOS(ID_PRODUTO)
);

insert into CLIENTES (ID, NOME, CPF) values (1, 'Maria', '12345678901'), (2, 'Joao', '23456789012'), (3, 'Jose', '34567890123');
insert into PRODUTOS (ID_PRODUTO, NOME_PRODUTO, PRECO_PRODUTO, CATEGORIA_PRODUTO) values (1, 'Garrafa', 10.00, 'Acessorios'), (2, 'Pneu', 80.00, 'Pecas'), (3, 'Capacete', 120.00, 'Acessorios');
insert into VENDAS (ID_VENDA, ID_CLIENTE, ID_PRODUTO) values (1, 2, 3), (2, 1, 2), (3, 3, 1);
insert into VENDAS (ID_VENDA, ID_CLIENTE, ID_PRODUTO) values (4, NULL, NULL);

select NOME, NOME_PRODUTO from VENDAS inner join (CLIENTES, PRODUTOS)
	on (CLIENTES.ID = VENDAS.ID_CLIENTE and PRODUTOS.ID_PRODUTO = VENDAS.ID_PRODUTO);
select CPF, NOME_PRODUTO from VENDAS left join (CLIENTES, PRODUTOS)
	on (CLIENTES.ID = VENDAS.ID_CLIENTE and PRODUTOS.ID_PRODUTO = VENDAS.ID_PRODUTO);
select NOME, NOME_PRODUTO, PRECO_PRODUTO from VENDAS right join (CLIENTES, PRODUTOS)
	on (CLIENTES.ID = VENDAS.ID_CLIENTE and PRODUTOS.ID_PRODUTO = VENDAS.ID_PRODUTO);
select NOME, NOME_PRODUTO, PRECO_PRODUTO from VENDAS full join (CLIENTES, PRODUTOS)
	on (CLIENTES.ID = VENDAS.ID_CLIENTE and PRODUTOS.ID_PRODUTO = VENDAS.ID_PRODUTO);
