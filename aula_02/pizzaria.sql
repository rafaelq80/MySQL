-- Criar Banco de Dados
create database db_pizzaria;

-- Acessar o Banco de Dados
use db_pizzaria;

-- Criar Tabela
create table tb_produtos(
id bigint auto_increment,
sabor varchar(255) not null,
tamanho int, -- Numero de fatias
preco decimal not null,
primary key (id)
);

-- Insere dados na tabela
insert into tb_produtos(sabor, tamanho, preco)  values ("Calabresa",8, 28.00);
insert into tb_produtos(sabor, tamanho, preco)  values ("Mussarela",8, 25.50);
insert into tb_produtos(sabor, tamanho, preco)  values ("Portuguesa",8, 45.00);
insert into tb_produtos(sabor, tamanho, preco)  values ("Francesa",8, 55.00);
insert into tb_produtos(sabor, tamanho, preco)  values ("Catupiry",6, 44.00);
insert into tb_produtos(sabor, tamanho, preco)  values ("Frango",4, 48.00);

/* Visualizar os dados*/

-- Visualiza todos os dados
select * from tb_produtos;

-- Visualiza somente o sabor e o preço
select sabor, preco from tb_produtos;

-- Visualiza a pizza cujo id é igual a 1
select * from tb_produtos where id = 1;

-- Visualiza todas as pizzas cujo preço seja maior do que 35.00
select * from tb_produtos where preco > 35.00;

-- Visualiza todas as pizzas cujo sabor seja Calabresa
select * from tb_produtos where sabor = "calabresa";

-- Visualiza todas as pizzas cujo sabor seja Calabresa ou o preco maior do que 40.00
select * from tb_produtos where sabor = "calabresa" or preco > 50.00;

/* Alterações na Estrutura da Tabela*/

-- Adiciona um novo Atributo na Tabela
alter table tb_produtos add descricao varchar(255); 

-- Atualiza o tipo de um Atributo da Tabela 
-- decimal (6 digitos, sendo os ultimos 2 as casas decimais - 4200.00)
alter table tb_produtos modify preco decimal(6,2);

-- Remove um atributo da Tabela
alter table tb_produtos drop descricao; 


/* Alterações nos Dados da Tabela*/

-- Desabilita o modo safe update
SET SQL_SAFE_UPDATES = 0;

-- Atualiza o atributo preço na tabela, cujo id seja igual a 1
update tb_produtos set preco = 25.50 where id = 2;

-- Deleta o registro da tabela, cujo id seja igual a 3
delete from tb_produtos where id = 3;


/* Bônus */

-- Esqueceu de definir a chave primária da tabela
ALTER TABLE tb_produtos ADD PRIMARY KEY (id);

-- Modifica o nome de um Atributo da Tabela
alter table tb_produtos change sabor saborproduto integer;

-- Apaga todos os dados da tabela (Não é possível desfazer)
delete from tb_produtos;
