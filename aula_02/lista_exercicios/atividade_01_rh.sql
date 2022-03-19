/*Criar o Banco de dados*/
CREATE DATABASE db_rh; 

/*Selecionar o Banco de dados*/
USE db_rh;

/*Criar a Tabela de colaboradores*/
CREATE TABLE tb_colaboradores(
	id bigint auto_increment,
    nome varchar(200),
    data_nascimento date,
    cargo varchar(100),
    salario decimal(8,2),
    primary key (id)
);

/*Inserir dados na tabela (5 registros)*/
INSERT INTO tb_colaboradores (nome, data_nascimento, cargo, salario) VALUES ("Maria Silva", "1990-06-30", "Gerente de Projeto", 5000.00);
INSERT INTO tb_colaboradores (nome, data_nascimento, cargo, salario) VALUES ("João Santos", "1988-03-12", "Desenvolvedor", 3000.00);
INSERT INTO tb_colaboradores (nome, data_nascimento, cargo, salario) VALUES ("Carlos Oliveira", "1995-04-04", "Estagiário", 1800.00);
INSERT INTO tb_colaboradores (nome, data_nascimento, cargo, salario) VALUES ("Jorge Souza", "1990-06-30", "Estagiário", 1800.00);
INSERT INTO tb_colaboradores (nome, data_nascimento, cargo, salario) VALUES ("Ana Pereira", "1992-09-13", "Desenvolvedora", 3000.00);

/*Selecionar todes os colaboradores*/
SELECT * FROM tb_colaboradores;

/*Selecionar todes os colaboradores cujo salário seja maior do que 2000*/
SELECT * FROM tb_colaboradores WHERE salario > 2000.00;

/*Selecionar todes os colaboradores cujo salário seja menor do que 2000*/
SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

/*Atualizar os dados de um registro da tabela tb_colaboradores*/
UPDATE tb_colaboradores SET salario = 1900.00 WHERE id = 3;