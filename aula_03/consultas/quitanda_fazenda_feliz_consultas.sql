-- Selecionar o Banco de Dados db_quitanda
use db_quitanda;

-- Exibe todos os produtos ordenando por nome
select * from tb_produtos order by nome;

-- Exibe todos os produtos ordenando por nome em ordem decrescente
select * from tb_produtos order by nome DESC;

/*Operadores Lógicos*/

-- AND (E)
select * from tb_produtos where preco > 5.00 AND categoria_id = 2;

-- OR (OU)
select * from tb_produtos where preco > 5.00 OR categoria_id = 2;

-- NOT (NÃO)
select * from tb_produtos where NOT categoria_id = 1;

/*Operadores In e Between*/

-- O preço deve ser 20, 30 ou 40 Reais
SELECT * FROM tb_produtos WHERE preco IN (5.00, 10.00, 15.00);

-- O preço deve estar entre 20 e 40
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 15.00;

-- O preço deve estar entre 20 e 40, em Ordem crecsente por nome do produto
SELECT * FROM tb_produtos WHERE preco BETWEEN 5 AND 15 ORDER BY nome;

-- A Data de Validade deve estar entre 10 e 15 de Março de 2022, 
-- em Ordem crecsente por Data de Validade e nome do produto
SELECT * FROM tb_produtos WHERE dtvalidade 
BETWEEN '2022-03-10' AND '2022-03-15' order by dtvalidade, nome;

/*Operador Like*/

-- Localiza os produtos cujo nome contenha ha
select * from tb_produtos where nome Like "%ra%";

-- Localiza os produtos cujo nome termine em ha
select * from tb_produtos where nome Like "%ra";

-- Localiza os produtos cujo nome inicie com ha
select * from tb_produtos where nome Like "ra%";

/* Operadores Matemáticos */

-- Conte o total de produtos (Exceto os Nulos)
SELECT COUNT(*) FROM tb_produtos;

-- Conte o total de linhas da coluna categoria_id (null são ignorados)
SELECT COUNT(categoria_id) FROM tb_produtos;

-- Calcule a soma dos preços
SELECT SUM(preco)FROM tb_produtos ;

-- Calcule a média de preço
SELECT AVG(preco) AS media FROM tb_produtos;

-- Exibir a Categoria_id e Calcular a média de preço, agrupando por Categoria_id
SELECT categoria_id, AVG(preco) AS media_preco FROM tb_produtos group by categoria_id;

-- Mostrar o Maior Preço
select max(preco) as preco_maximo from tb_produtos;

-- Mostrar o Menor Preço
select min(preco) as preco_minimo from tb_produtos;

/* Operador Join*/

-- Inner Join
 select nome, preco, quantidade, tb_categorias.descricao as descricao_da_categoria
 from tb_produtos inner join tb_categorias on  tb_categorias.id = tb_produtos.categoria_id;
 
 -- Left Join
 select nome, preco, quantidade, tb_categorias.descricao as descricao_da_categoria
 from tb_produtos left join tb_categorias on  tb_categorias.id = tb_produtos.categoria_id;
 
 -- Right Join
 select nome, preco, quantidade, tb_categorias.descricao as descricao_da_categoria
 from tb_produtos right join tb_categorias on  tb_categorias.id = tb_produtos.categoria_id;
