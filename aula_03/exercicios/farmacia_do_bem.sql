-- Cria o Banco de dados
CREATE DATABASE db_farmacia_do_bem;

-- Seleciona o Banco de dados para uso
USE db_farmacia_do_bem;

-- Cria a tabela categorias
CREATE TABLE tb_categorias(
 id bigint not null auto_increment,
 nome varchar(100) not null,
 ativa boolean,
 primary key (id)
);

-- Insere dados na tabela categorias
INSERT INTO tb_categorias (nome, ativa) VALUES ("Medicamentos", true);
INSERT INTO tb_categorias (nome, ativa) VALUES ("Medicamentos controlados", true);
INSERT INTO tb_categorias (nome, ativa) VALUES ("Higiene", true);
INSERT INTO tb_categorias (nome, ativa) VALUES ("Beleza", true);
INSERT INTO tb_categorias (nome, ativa) VALUES ("Suplemento", true);

-- Cria a tabela produtos
CREATE TABLE tb_produtos(
 id bigint not null auto_increment,
 nome varchar(100) not null,
 descricao varchar(255),
 quantidade bigint,
 preco decimal not null,
 categoria_id bigint,
 primary key (id),
 foreign key (categoria_id) references tb_categorias(id)
);

-- Insere dados na tabela produtos
INSERT INTO tb_produtos (nome, descricao, quantidade, preco, categoria_id) VALUES ("Buscopan", "reduz cólicas", 140, 20, 1);
INSERT INTO tb_produtos (nome, descricao, quantidade, preco, categoria_id) VALUES ("Paroxetina", "antidepressivo", 122, 50, 2);
INSERT INTO tb_produtos (nome, descricao, quantidade, preco, categoria_id) VALUES ("Desodorante Dove", "banho", 190, 15, 3);
INSERT INTO tb_produtos (nome, descricao, quantidade, preco, categoria_id) VALUES ("Esmalte Impala", "esmalte", 144, 5, 4);
INSERT INTO tb_produtos (nome, descricao, quantidade, preco, categoria_id) VALUES ("Centrum", "vitamina", 111, 150, 5);
INSERT INTO tb_produtos (nome, descricao, quantidade, preco, categoria_id) VALUES ("Dorflex", "relaxante muscular", 100, 20, 1);
INSERT INTO tb_produtos (nome, descricao, quantidade, preco, categoria_id) VALUES ("Topiramato", "estabiliza humor", 177, 60, 2);
INSERT INTO tb_produtos (nome, descricao, quantidade, preco, categoria_id) VALUES ("Shampoo Pantene", "cabelos", 124, 20, 3);

-- Lista todos os produtos
SELECT * FROM tb_produtos;

-- Lista todas as categorias
SELECT * FROM tb_categorias;

-- Produtos com o valor maior do que 50 reais
SELECT * FROM tb_produtos WHERE preco > 50;

-- Produtos com valor entre 3 e 60 reais

-- Solução 01
SELECT * FROM tb_produtos WHERE preco BETWEEN 3 AND 60;

-- Solução 02
SELECT * FROM tb_produtos WHERE preco >= 3 AND preco <= 60;

-- LIKE buscando os Produtos com a letra B
SELECT * FROM tb_produtos WHERE nome LIKE "%B%";

-- Inner join entre  tabela categoria e produto
SELECT * FROM tb_produtos INNER JOIN tb_categorias 
ON tb_categorias.id = tb_produtos.categoria_id;

-- Todos os Produtos de uma categoria específica 
SELECT * FROM tb_produtos INNER JOIN tb_categorias 
ON tb_categorias.id = tb_produtos.categoria_id 
WHERE tb_categorias.id = 1;