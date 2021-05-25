create database db_tech_ti;

use db_tech_ti;

create table tb_usuarios(
id bigint auto_increment,
nome varchar(255) not null,
usuario varchar(50) not null,
senha varchar (50) not null,
gerente boolean default false, -- false = funcionário não gerente, true = Gerente
gerente_id bigint, -- Se não for Gerente, informar o Id do Gerente (O Campo não pode ser not null)
primary key (id),
foreign key (gerente_id) references tb_usuarios(id) -- gerente_id é chave estrangeira de id
);

insert into tb_usuarios(nome, usuario, senha, gerente, gerente_id) values ("Paulo Antunes", "paulo", "123456", true, null);
insert into tb_usuarios(nome, usuario, senha, gerente, gerente_id) values ("João Antunes", "joao", "123456", false, 1);
insert into tb_usuarios(nome, usuario, senha, gerente, gerente_id) values ("Maria Antunes", "maria", "123456", true, null);
insert into tb_usuarios(nome, usuario, senha, gerente, gerente_id) values ("Andressa Antunes", "andressa", "123456", false, 3);
insert into tb_usuarios(nome, usuario, senha, gerente, gerente_id) values ("Silvia Antunes", "silvia", "123456", false, 3);
insert into tb_usuarios(nome, usuario, senha, gerente, gerente_id) values ("Ana Paula Antunes", "anap", "123456", false, 3);
insert into tb_usuarios(nome, usuario, senha, gerente, gerente_id) values ("Maria Antunes", "maria", "123456", true, null);

select * from tb_usuarios where gerente=true;

select * from tb_usuarios where gerente=false; -- Funcionário não gerente

-- Exibe todos os funcionários gerenciados pelo gerente com id = 3
select * from tb_usuarios where gerente=false and gerente_id = 3;

/*
Exibe a lista de gerentes e funcionários gerenciados, utilizando inner join
F e G são apelidos para a tabela usuários para simular duas tabelas 
utilizando apenas uma
*/
select F.nome as funcionario, G.nome as gerente from tb_usuarios as F inner join tb_usuarios as G on F.gerente_id = G.id;