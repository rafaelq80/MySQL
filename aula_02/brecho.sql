-- Cria o Banco de dados
create database db_brecho;

-- Seleciona o Banco de dados para uso
use db_brecho;

-- Cria a tabela no Banco de dados
create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
quantidade int,
preco decimal not null,
primary key (id)
);

-- Insere dados na tabela
insert into tb_produtos(nome, quantidade, preco)  values ("Camisa", 10, 80.00);
insert into tb_produtos(nome, quantidade, preco)  values ("Calça", 20, 120.00);
insert into tb_produtos(nome, quantidade, preco)  values ("Shorts", 45, 40.00);
insert into tb_produtos(nome, quantidade, preco)  values ("Bermuda", 100, 75.00);
insert into tb_produtos(nome, quantidade, preco)  values ("Saia", 120, 85.00);
insert into tb_produtos(nome, quantidade, preco)  values ("Camiseta", 5, 29.90);

/* Visualizar os dados*/

-- Visualiza todos os dados
select * from tb_produtos;

-- Visualiza somente o nome e o preço
select nome, preco from tb_produtos;

-- Visualiza somente o nome e o preço formatado para Reais
select nome, CONCAT('R$ ',FORMAT(preco, 2,'pt_BR')) as preço from tb_produtos;

-- Visualiza o produto cujo id é igual a 1
select * from tb_produtos where id = 1;

-- Visualiza todos os produtos cujo preço seja maior do que 50.00
select * from tb_produtos where preco > 50.00;

-- Visualiza todos os produtos cujo preço seja maior do que 50.00 e a Quantidade maior do que 20
select * from tb_produtos where preco > 50.00 and quantidade > 20;

-- Visualiza todos os produtos cujo nome seja calça
select * from tb_produtos where nome = "Calça";

/* Alterações na Estrutura da Tabela*/

-- Atualiza o tipo de um Atributo da Tabela 
-- decimal (6 digitos antes do ponto e mais 2 para as casas decimais - 142000.00)
alter table tb_produtos modify preco decimal(8,2);

-- Adiciona um novo Atributo na Tabela
alter table tb_produtos add descricao varchar(255); 

-- Remove um atributo da Tabela
alter table tb_produtos drop descricao; 

-- Modifica o nome de um Atributo da Tabela
alter table tb_produtos change nome nomeproduto varchar(255);

/* Alterações nos Dados da Tabela*/

-- Desabilita o modo safe update
SET SQL_SAFE_UPDATES = 0;

-- Atualiza o atributo preço na tabela, cujo id seja igual a 6
update tb_produtos set preco = 29.90 where id = 5;

-- Deleta o registro da tabela, cujo id seja igual a 2
delete from tb_produtos where id = 5;

-- Deleta o registro da tabela, cujo id seja igual a 1 ou igual a 2
delete from tb_produtos where id = 1 or id = 2;


/* Bônus */

-- Esqueceu de definir a chave primária da tabela
ALTER TABLE tb_produtos ADD PRIMARY KEY (id);

-- Apaga todos os dados da tabela (Não é possível desfazer)
delete from tb_produtos;