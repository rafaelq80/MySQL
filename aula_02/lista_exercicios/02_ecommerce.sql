/*CRIAR BANCO DE DADOS*/
CREATE DATABASE db_ecommerce;

/*USAR BANCO DE DADOS*/
USE db_ecommerce;

/*CRIAR TABELA NO BANCO DE DADOS*/
CREATE TABLE tb_produtos(
	id bigint auto_increment,
    nome varchar(200),
    genero varchar(10),
    categoria varchar(100),
    preco decimal(7,2),
    primary key (id)
);

/*INSERIR DADOS NA TABELA*/
INSERT INTO tb_produtos (nome, genero, categoria, preco) VALUES ("Calça skinny", "Feminino", "Calça", 120.00);
INSERT INTO tb_produtos (nome, genero, categoria, preco) VALUES ("Vestido manga curta", "Feminino", "Vestido", 100.00);
INSERT INTO tb_produtos (nome, genero, categoria, preco) VALUES ("Calça jeans", "Masculino", "Jeans", 120.00);
INSERT INTO tb_produtos (nome, genero, categoria, preco) VALUES ("Camiseta básica", "Unissex", "Básico", 30.00);
INSERT INTO tb_produtos (nome, genero, categoria, preco) VALUES ("Bermuda algodão", "Masculino", "Bermuda", 550.00);
INSERT INTO tb_produtos (nome, genero, categoria, preco) VALUES ("Calça skinny jeans", "Unissex", "Jeans", 120.00);
INSERT INTO tb_produtos (nome, genero, categoria, preco) VALUES ("Biquini", "Feminino", "Praia", 50.00);
INSERT INTO tb_produtos (nome, genero, categoria, preco) VALUES ("Boné", "Masculino", "Acessórios", 50.00);

/*SELECIONAR DADOS DA TABELA PARA MOSTRAR*/
SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos WHERE preco < 500.00;
SELECT * FROM tb_produtos WHERE preco > 500.00;

/*ALTERAR VALOR EM EM DUAS LINHAS*/
UPDATE tb_produtos SET preco = 150.00 WHERE id = 3;
UPDATE tb_produtos SET preco = 150.00 WHERE id = 6;