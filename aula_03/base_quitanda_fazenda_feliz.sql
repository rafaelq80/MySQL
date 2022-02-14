-- Apagar Banco de Dados db_quitanda
drop database db_quitanda;

-- Recriar o Banco de dados db_quitanda
create database db_quitanda;

-- Selecionar o Banco de Dados db_quitanda
use db_quitanda;

-- Criar a tabela tb_categorias
create table tb_categorias(
id bigint auto_increment,
descricao varchar(255) not null,
primary key (id)
);

-- Insere dados na tabela tb_categorias
insert into tb_categorias (descricao) values ("Frutas");
insert into tb_categorias (descricao) values ("Verduras");
insert into tb_categorias (descricao) values ("Legumes");
insert into tb_categorias (descricao) values ("Temperos");
insert into tb_categorias (descricao) values ("Ovos");
insert into tb_categorias (descricao) values ("outros");

-- Lista todos os dados da tabela tb_categorias
select * from tb_categorias;

-- Criar a Tabela tb_produtos
create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
quantidade int,
dtvalidade date null,
preco decimal(6,2),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categorias(id)
);

-- Insere dados na tabela tb_produtos
insert into tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id) 
values ("Maçã", 1000, "2022-03-07", 1.99, 1);
insert into tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id) 
values ("Banana", 1300, "2022-03-08", 5.00, 1);
insert into tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id) 
values ("Batata doce", 2000, "2022-03-09", 10.00, 3);
insert into tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id) 
values ("Alface", 300, "2022-03-10", 7.00, 2);
insert into tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id) 
values ("Cebola", 1020, "2022-03-08", 5.00, 3);
insert into tb_produtos(nome, quantidade, dtvalidade, preco, categoria_id) 
values("Ovo Branco", 1000, "2022-03-07", 15.00, 5);
insert into tb_produtos(nome, quantidade, dtvalidade, preco, categoria_id) 
values("Agrião", 1500, "2022-03-06", 3.00, 2);
insert into tb_produtos(nome, quantidade, dtvalidade, preco, categoria_id) 
values("Cenoura", 1800, "2022-03-09", 3.50, 3);
insert into tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id) 
values ("Pimenta", 1100, "2022-03-15", 10.00, 4);
insert into tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id) 
values ("Alecrim", 130, "2022-03-10", 5.00, 4);
insert into tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id) 
values ("Manga", 200, "2022-03-07", 5.49, 1);
insert into tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id) 
values ("Laranja", 3000, "2022-03-13", 10.00, 1);
insert into tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id) 
values ("Couve", 100, "2022-03-12", 1.50, 2);
insert into tb_produtos(nome, quantidade, dtvalidade, preco, categoria_id) 
values("Tomate", 1105, "2022-03-15", 3.00, 3);
insert into tb_produtos(nome, quantidade, dtvalidade, preco, categoria_id) 
values("Rabanete", 1200, "2022-03-15", 13.00, 3);
insert into tb_produtos(nome, quantidade, preco) 
values("Sacola Cinza", 1118, 0.50);
insert into tb_produtos(nome, quantidade, preco) 
values("Sacola Verde", 1118, 0.50);

-- Visualiza todos os dados da tabela tb_produtos
select * from tb_produtos;
