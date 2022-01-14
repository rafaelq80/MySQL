create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categorias(
id bigint not null auto_increment,
descricao varchar(255) not null,
ativo boolean,
primary key (id)
);

insert into tb_categorias (descricao, ativo) values ("Antibiótico", true);
insert into tb_categorias (descricao, ativo) values ("Antihistamínico", true);
insert into tb_categorias (descricao, ativo) values ("Higiene Pessoal", true);
insert into tb_categorias (descricao, ativo) values ("Beleza", true);
insert into tb_categorias (descricao, ativo) values ("Energético", true);
insert into tb_categorias (descricao, ativo) values ("Medicamento Controlado", true);
insert into tb_categorias (descricao, ativo) values ("Antinflamatório", true);

select * from tb_categorias;

create table tb_produtos(
id bigint not null auto_increment,
nome varchar(255) not null,
datacadastro date,
quantidade int,
preco decimal(7,2),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categorias(id)
);

insert into tb_produtos(nome, datacadastro, quantidade, preco, categoria_id) 
values("Desodorante Rexona", current_date(), 100, 19.90, 3);

insert into tb_produtos(nome, datacadastro, quantidade, preco, categoria_id) 
values("Shampoo", current_date(), 1010, 29.90, 3);

insert into tb_produtos(nome, datacadastro, quantidade, preco, categoria_id) 
values("Allegra", current_date(), 1000, 2.90, 2);

insert into tb_produtos(nome, datacadastro, quantidade, preco, categoria_id) 
values("Allegra D", current_date(), 120, 59.90, 2);

INSERT INTO tb_produtos (nome, datacadastro, quantidade, preco, categoria_id) 
VALUES ("Cataflan", current_date(), 140, 20.00, 7);

INSERT INTO tb_produtos (nome, datacadastro, quantidade, preco, categoria_id) 
VALUES ("Paroxetina", current_date(), 122, 50.00, 6);

INSERT INTO tb_produtos (nome, datacadastro, quantidade, preco, categoria_id) 
VALUES ("Desodorante Dove", current_date(), 190, 15.00, 3);

INSERT INTO tb_produtos (nome, datacadastro, quantidade, preco, categoria_id) 
VALUES ("Esmalte", current_date(), 144, 5.00, 4);

select * from tb_produtos;

select * from tb_produtos where preco > 50;

select * from tb_produtos where preco between 3 and 60;

select * from tb_produtos where nome like "%A%";

select * from tb_produtos inner join tb_categorias
on tb_categorias.id = tb_produtos.categoria_id;

select * from tb_produtos inner join tb_categorias
on tb_categorias.id = tb_produtos.categoria_id
where tb_categorias.id = 3;
