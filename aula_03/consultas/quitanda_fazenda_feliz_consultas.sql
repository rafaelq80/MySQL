-- Selecionar o Banco de Dados db_quitanda
USE db_quitanda;

-- Exibe todos os produtos ordenando por nome
SELECT * FROM tb_produtos ORDER BY nome;

-- Exibe todos os produtos ordenando por nome em ordem decrescente
SELECT * FROM tb_produtos ORDER BY nome DESC;

/*Operadores Lógicos*/ 

-- AND (E)
SELECT * FROM tb_produtos WHERE preco > 5.00 AND categoria_id = 2;

-- OR (OU)
SELECT * FROM tb_produtos WHERE preco > 5.00 OR categoria_id = 2;

-- NOT (NÃO)
SELECT * FROM tb_produtos WHERE NOT categoria_id = 1;

/*Operadores In e Between*/ 

-- O preço deve ser 20, 30 ou 40 Reais
SELECT * FROM tb_produtos WHERE preco IN (5.00, 10.00, 15.00);

-- O preço deve estar entre 20 e 40
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 15.00;

-- O preço deve estar entre 20 e 40, em Ordem crecsente por nome do produto
SELECT * FROM tb_produtos WHERE preco BETWEEN 5 AND 15 ORDER BY nome;

-- A Data de Validade deve estar entre 10 e 15 de Março de 2022,
-- em Ordem crecsente por Data de Validade e nome do produto
SELECT * FROM tb_produtos WHERE dtvalidade BETWEEN '2022-03-10' AND '2022-03-15' ORDER BY dtvalidade, nome;

/*Operador Like*/ 

-- Localiza os produtos cujo nome contenha ha
SELECT * FROM tb_produtos WHERE nome Like "%ra%";

-- Localiza os produtos cujo nome termine em ha
SELECT * FROM tb_produtos WHERE nome Like "%ra";

-- Localiza os produtos cujo nome inicie com ha
SELECT * FROM tb_produtos WHERE nome Like "ra%";

/* Operadores Matemáticos */ 

-- Conte o total de produtos (Exceto os Nulos)
SELECT COUNT(*) FROM tb_produtos;

-- Conte o total de linhas da coluna categoria_id (null são ignorados)
SELECT COUNT(categoria_id) FROM tb_produtos;

-- Calcule a soma dos preços
SELECT SUM(preco) FROM tb_produtos;

-- Calcule a média de preço
SELECT AVG(preco) AS media FROM tb_produtos;

-- Exibir a Categoria_id e Calcular a média de preço, agrupando por Categoria_id
SELECT categoria_id, AVG(preco) AS media_preco FROM tb_produtos GROUP BY categoria_id;

-- Mostrar o Maior Preço
SELECT max(preco) AS preco_maximo FROM tb_produtos;

-- Mostrar o Menor Preço
SELECT min(preco) AS preco_minimo FROM tb_produtos;

/* Operador Join*/ 

-- Inner Join
SELECT nome, preco, quantidade, tb_categorias.descricao AS descricao_da_categoria
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoria_id = tb_categorias.id;

-- Left Join
SELECT nome, preco, quantidade, tb_categorias.descricao AS descricao_da_categoria
FROM tb_produtos LEFT JOIN tb_categorias 
ON tb_produtos.categoria_id = tb_categorias.id;

-- Right Join
SELECT nome, preco, quantidade, tb_categorias.descricao AS descricao_da_categoria
FROM tb_produtos RIGHT JOIN tb_categorias 
ON tb_produtos.categoria_id = tb_categorias.id;

-- Group By - Agrupa os valores a partir de um atributo
SELECT tb_categorias.descricao, avg(preco) AS Preço_Médio
FROM tb_produtos INNER JOIN  tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id
GROUP BY tb_categorias.descricao;
