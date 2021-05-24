use db_cidade_das_carnes;

-- Exibe todos os produtos ordenando por nome
select * from tb_produtos order by nome;

-- Exibe todos os produtos ordenando por nome em ordem decrescente
select * from tb_produtos order by nome DESC;

/*Operadores Lógicos*/

-- AND (E)
select * from tb_produtos where preco > 20 AND categoria_id = 1;

-- OR (OU)
select * from tb_produtos where preco > 20 OR categoria_id = 1;

/*Operador Like*/

-- Localiza os produtos cujo nome contenha CO
select * from tb_produtos where nome Like "%ha%";

-- Localiza os produtos cujo nome termine em O
select * from tb_produtos where nome Like "%ha";

-- Localiza os produtos cujo nome inicie com Ha
select * from tb_produtos where nome Like "Ha%";

/*Operadores In e Between*/

-- O preço deve ser 20, 30 ou 40 Reais
SELECT * FROM tb_produtos WHERE preco IN (20, 30, 40);

-- O preço deve estar entre 20 e 40
SELECT * FROM tb_produtos WHERE preco BETWEEN 20 AND 40;

-- O preço deve estar entre 20 e 40, em Ordem crecsente por nome do produto
SELECT * FROM tb_produtos WHERE preco BETWEEN 20 AND 40 ORDER BY nome;

/* OPeradores Matemáticos */

-- Conte o total de produtos (Exceto os Nulos)
SELECT COUNT(*) FROM tb_produtos;

-- Conte o total de linhas da coluna categoria_id (null são ignorados)
SELECT COUNT(categoria_id) FROM tb_produtos;

-- Calcule a média de preço
SELECT AVG(preco) AS media FROM tb_produtos;

-- Calcule a soma dos preços
SELECT SUM(preco)FROM tb_produtos ;

/* Operador Join*/

-- Inner Join
select nome, preco, qtProduto, tb_categoria.descricao as descricao_da_categoria ,tb_categoria.ativo as estado_da_categoria
 from tb_produtos inner join tb_categoria on  tb_categoria.id = tb_produtos.categoria_id;
 
 -- Left Join
 select nome, preco, qtProduto, tb_categoria.descricao as descricao_da_categoria ,tb_categoria.ativo as estado_da_categoria
 from tb_produtos left join tb_categoria on  tb_categoria.id = tb_produtos.categoria_id;
 
 -- Right Join
  select nome, preco, qtProduto, tb_categoria.descricao as descricao_da_categoria ,tb_categoria.ativo as estado_da_categoria
 from tb_produtos right join tb_categoria on  tb_categoria.id = tb_produtos.categoria_id;

 
 /*Bônus*/
 
 -- Esqueceu de criar a chave estrangeira na tabela
 ALTER TABLE tb_produtos add foreign key (categoria_id) references tb_categoria (id);

-- Exibe uma lista contendo todos os Banco de Dados criados 
SHOW DATABASES;

-- Exibe uma lista contendo todas as tabelas do Banco de Dados selecionado (Use Database_name) 
SHOW TABLES;

-- Exibe todos os atributos de uma tabela (Dicionário de Dados Resumido)
DESCRIBE tb_categoria;

-- Exibe o código SQL usado para criar uma tabela
SHOW CREATE TABLE tb_categoria;