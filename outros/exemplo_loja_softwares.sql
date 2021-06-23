CREATE DATABASE db_informatica;

USE db_informatica;

CREATE TABLE tb_categoria(
	id bigint auto_increment,
    descricao varchar(255),
    primary key (id)
);

insert into tb_categoria (descricao) values ("Sistema Operacional");
insert into tb_categoria (descricao) values ("Pacote Office");
insert into tb_categoria (descricao) values ("Sistema Gerenciador de Banco de Dados");
insert into tb_categoria (descricao) values ("Desenvolvimento");
insert into tb_categoria (descricao) values ("Bussiness Inteligence");

CREATE TABLE tb_software(
	id bigint auto_increment,
    titulo varchar(200),
    preco decimal(7,2),
    desconto_educacional float,
	categoria_id bigint,
    primary key (id)
);

insert into tb_software (titulo, preco, desconto_educacional, categoria_id) values ("Microsoft Windows 10", 400.00, 0.05, 1);
insert into tb_software (titulo, preco, desconto_educacional, categoria_id) values ("Microsoft Office 365", 800.00, 0.10, 2);
insert into tb_software (titulo, preco, desconto_educacional, categoria_id) values ("Microsoft Windows Server 19", 1000.00, 0.05, 1);
insert into tb_software (titulo, preco, desconto_educacional, categoria_id) values ("Microsoft SQL Server", 1200.00, 0.15, 3);
insert into tb_software (titulo, preco, desconto_educacional, categoria_id) values ("Microsoft Visual Studio", 2000.00, 0.05, 4);
insert into tb_software (titulo, preco, desconto_educacional, categoria_id) values ("Microsoft Power BI", 500.00, 0.06, 5);

select titulo, CONCAT('R$ ',FORMAT(preco, 2,'de_DE')) as preço from tb_software;

select titulo, CONCAT(FORMAT(desconto_educacional * 100, 2, 'de_DE'), ' %') as desconto from tb_software;

select tb_software.titulo,  CONCAT('R$ ',FORMAT(tb_software.preco, 2,'de_DE')) as preço, 
CONCAT(FORMAT(tb_software.desconto_educacional * 100, 2, 'de_DE'), ' %') as desconto, 
tb_categoria.descricao from tb_software inner join tb_categoria on tb_categoria.id = tb_software.categoria_id;
