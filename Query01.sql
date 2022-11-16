CREATE DATABASE db_quitanda;
CREATE TABLE tb_produtos(
id bigint AUTO_increment,
nome varchar(255) not null,
quantidade int,
data_validade date,
preco decimal not null,
PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco) 
VALUES ("tomate", 100, "2022-11-14", 8.00);

INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("maçã",20, 5.00);

INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("laranja",50, 10.00);

INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("banana",200, 12.00);

INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("uva",1200, 30.00);

INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("pêra",500, 2.99);

SELECT * FROM tb_produtos;

SELECT nome, quantidade FROM tb_produtos;

SELECT * FROM tb_produtos WHERE id = 1;

SELECT * FROM tb_produtos WHERE nome = "maçã";

SELECT * FROM tb_produtos WHERE preco > 5.00;



ALTER TABLE tb_produtos DROP descricao;

INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("pêra",500, 2.00, "Pera Estrangeira");

SELECT * FROM tb_produtos;

ALTER TABLE tb_produtos modify PRECO decimal(6,2);

UPDATE tb_produtos SET preco = 10.00 WHERE id = 5;

DELETE FROM tb_produtos WHERE id = 6;
