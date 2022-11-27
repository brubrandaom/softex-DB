CREATE DATABASE loja2;
USE loja2;

CREATE TABLE produto (
	id_produto INT NOT NULL AUTO_INCREMENT,
    nome_produto VARCHAR(100),
    preco_normal DECIMAL(10,2),
    preco_desconto DECIMAL(10, 2),
    PRIMARY KEY (id_produto)
);

CREATE TRIGGER desconto BEFORE INSERT 
ON produto
FOR EACH ROW
SET NEW.preco_desconto = (NEW.preco_normal * 0.90);

INSERT INTO produto (nome_produto, preco_normal) values ('bike', 1000.00);

SELECT * FROM produto;
