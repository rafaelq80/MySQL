/*Criar o Banco de dados*/
CREATE DATABASE db_ecommerce;

/*Selecionar o Banco de dados*/
USE db_ecommerce;

/*Criar a Tabela de produtos*/
CREATE TABLE tb_produtos(
	id bigint auto_increment,
    nome varchar(200),
    genero varchar(10),
    categoria varchar(100),
    preco decimal(7,2),
    primary key (id)
);

/*Inserir dados na tabela (8 registros)*/
INSERT INTO tb_produtos (nome, genero, categoria, preco) VALUES ("Calça skinny", "Feminino", "Calça", 120.00);
INSERT INTO tb_produtos (nome, genero, categoria, preco) VALUES ("Vestido manga curta", "Feminino", "Vestido", 100.00);
INSERT INTO tb_produtos (nome, genero, categoria, preco) VALUES ("Calça jeans", "Masculino", "Jeans", 120.00);
INSERT INTO tb_produtos (nome, genero, categoria, preco) VALUES ("Camiseta básica", "Unissex", "Básico", 30.00);
INSERT INTO tb_produtos (nome, genero, categoria, preco) VALUES ("Bermuda algodão", "Masculino", "Bermuda", 550.00);
INSERT INTO tb_produtos (nome, genero, categoria, preco) VALUES ("Calça skinny jeans", "Unissex", "Jeans", 120.00);
INSERT INTO tb_produtos (nome, genero, categoria, preco) VALUES ("Biquini", "Feminino", "Praia", 50.00);
INSERT INTO tb_produtos (nome, genero, categoria, preco) VALUES ("Boné", "Masculino", "Acessórios", 50.00);

/*Selecionar todes os produtos*/
SELECT * FROM tb_produtos;

/*Selecionar todes os produtos cujo preço seja maior do que 500.00*/
SELECT * FROM tb_produtos WHERE preco > 500.00;

/*Selecionar todes os produtos cujo preço seja menor do que 500.00*/
SELECT * FROM tb_produtos WHERE preco < 500.00;

/*Atualizar os dados de um registro da tabela tb_produtos*/
UPDATE tb_produtos SET preco = 150.00 WHERE id = 6;