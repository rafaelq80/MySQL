-- Criar Banco de Dados
CREATE DATABASE db_quitanda;

-- Acessar/Selecionar o Banco de Dados atual
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

-- Inserir dados na tabela
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

-- Visualizar somente o nome e o preço
SELECT nome, preco FROM tb_produtos;

-- Visualizar somente o nome e o preço formatado para Reais
SELECT nome, CONCAT('R$ ', FORMAT(preco, 2, 'pt_BR')) AS preço FROM tb_produtos;

-- Visualizar somente o nome e a data de validade formatada no padrão pt BR (00/00/0000)
SELECT nome, DATE_FORMAT(data_validade, '%d/%m/%Y') AS Data_Validade FROM tb_produtos;

-- Visualizar o produto cujo id é igual a 1
SELECT * FROM tb_produtos WHERE id = 1;

-- Visualizar todos os produtos cujo preço seja maior do que 5
SELECT * FROM tb_produtos WHERE preco > 5.00;

-- Visualizar todos os produtos cujo nome seja maçã
SELECT * FROM tb_produtos WHERE nome = "maçã";

-- Visualizar todas as pizzas cujo nome seja Maçã ou o Preco > 5.00
SELECT * FROM tb_produtos WHERE nome = "maçã" OR preco > 5.00;

/* Alterações na Estrutura da Tabela*/ 

-- Adicionar um novo Atributo na Tabela
ALTER TABLE tb_produtos ADD descricao varchar(255);

-- Atualizar o tipo de um Atributo da Tabela
-- decimal (6 digitos, sendo os ultimos 2 as casas decimais - 4200.00)
ALTER TABLE tb_produtos MODIFY preco decimal(6, 2);

-- Remover um atributo da Tabela
ALTER TABLE tb_produtos DROP descricao;

/* Alterações nos Dados da Tabela*/ 

-- Desabilitar o modo safe update, que impede a execução do update e do delete sem where
SET SQL_SAFE_UPDATES = 0;

-- Habilitar o modo safe update, que impede a execução do update e do delete sem where
SET SQL_SAFE_UPDATES = 1;

-- Atualizar o atributo preço na tabela, cujo id seja igual a 1
UPDATE tb_produtos SET preco = 10.00 WHERE id = 1;

-- Deletar o registro da tabela, cujo id seja igual a 2
DELETE FROM tb_produtos WHERE id = 2;

/* Bônus */ 

-- Esqueceu de definir a chave primária da tabela
ALTER TABLE tb_produtos ADD PRIMARY KEY (id);

-- Modificar o nome de um Atributo da Tabela
ALTER TABLE tb_produtos CHANGE nome nomeproduto varchar(255);

-- Apagar todos os dados da tabela (Não é possível desfazer)
DELETE FROM tb_produtos;

-- Descobrir a Collation do Banco de dados
SELECT @@collation_database;

-- Apagar a tabela
DROP TABLE tb_produtos;

-- Apagar o Banco
DROP DATABASE db_quitanda;
