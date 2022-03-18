-- Criar Banco de Dados
CREATE DATABASE db_quitanda;

-- Acessar o Banco de Dados
USE db_quitanda;

-- Criar Tabela
CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
quantidade int, 
data_validade date,
preco decimal NOT NULL, 
PRIMARY KEY (id)
);

-- Insere dados na tabela
INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("tomate",100, "2022-04-10", 8.00);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("maçã",20, "2022-04-12", 5.00);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("laranja",50, "2022-04-10", 10.00);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("banana",200, "2022-04-13", 12.00);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("uva",1200, "2022-04-14", 30.00);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("pêra",500, "2022-04-15", 2.90);

/* Visualizar os dados*/ -- Visualiza todos os dados
SELECT * FROM tb_produtos;

-- Visualiza somente o nome e o preço
SELECT nome, preco FROM tb_produtos;

-- Visualiza somente o nome e o preço formatado para Reais
SELECT nome, CONCAT('R$ ', FORMAT(preco, 2, 'pt_BR')) AS preço FROM tb_produtos;

-- Visualiza o produto cujo id é igual a 1
SELECT * FROM tb_produtos WHERE id = 1;

-- Visualiza todos os produtos cujo preço seja maior do que 5
SELECT * FROM tb_produtos WHERE preco > 5.00;

-- Visualiza todos os produtos cujo nome seja maçã
SELECT * FROM tb_produtos WHERE nome = "maçã";

-- Visualiza todas as pizzas cujo nome seja Maçã ou o Preco > 5.00
SELECT * FROM tb_produtos WHERE nome = "maçã" OR preco > 5.00;

/* Alterações na Estrutura da Tabela*/ 

-- Adiciona um novo Atributo na Tabela
ALTER TABLE tb_produtos ADD descricao varchar(255);

-- Atualiza o tipo de um Atributo da Tabela
-- decimal (6 digitos, sendo os ultimos 2 as casas decimais - 4200.00)
ALTER TABLE tb_produtos MODIFY preco decimal(6, 2);

-- Remove um atributo da Tabela
ALTER TABLE tb_produtos DROP descricao;

/* Alterações nos Dados da Tabela*/ 

-- Desabilita o modo safe update
SET SQL_SAFE_UPDATES = 0;

-- Atualiza o atributo preço na tabela, cujo id seja igual a 1
UPDATE tb_produtos SET preco = 10.00 WHERE id = 1;

-- Deleta o registro da tabela, cujo id seja igual a 2
DELETE FROM tb_produtos WHERE id = 2;

/* Bônus */ 

-- Esqueceu de definir a chave primária da tabela
ALTER TABLE tb_produtos ADD PRIMARY KEY (id);

-- Modifica o nome de um Atributo da Tabela
ALTER TABLE tb_produtos CHANGE nome nomeproduto varchar(255);

-- Apaga todos os dados da tabela (Não é possível desfazer)
DELETE FROM tb_produtos;