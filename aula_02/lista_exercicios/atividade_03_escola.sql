/*Criar o Banco de dados*/
CREATE DATABASE db_escola; 

/*Selecionar o Banco de dados*/
USE db_escola; 

/*Criar a Tabela de estudantes*/
CREATE TABLE tb_estudantes(
	id bigint auto_increment,
    nome varchar(200),
    data_nascimento date,
    turma int,
    nota decimal(4,2),
    primary key (id)
);

/*Inserir dados na tabela (8 registros)*/
INSERT INTO tb_estudantes (nome, data_nascimento, turma, nota) VALUES ("Paulo Miklos", "1959-01-21", 1, 8.00);
INSERT INTO tb_estudantes (nome, data_nascimento, turma, nota) VALUES ("Sérgio Britto", "1959-09-18", 1, 9.00);
INSERT INTO tb_estudantes (nome, data_nascimento, turma, nota) VALUES ("Tony Bellotto", "1960-06-30", 2, 6.50);
INSERT INTO tb_estudantes (nome, data_nascimento, turma, nota) VALUES ("Charles Gavin", "1960-07-09", 2, 5.50);
INSERT INTO tb_estudantes (nome, data_nascimento, turma, nota) VALUES ("Arnaldo Antunes", "1960-09-02", 2, 9.00);
INSERT INTO tb_estudantes (nome, data_nascimento, turma, nota) VALUES ("Marcelo Fromer", "1961-12-03", 3, 9.00);
INSERT INTO tb_estudantes (nome, data_nascimento, turma, nota) VALUES ("Branco Mello", "1962-03-16", 3, 9.00);
INSERT INTO tb_estudantes (nome, data_nascimento, turma, nota) VALUES ("Nando Reis", "1963-01-12", 3, 8.00);

/*Selecionar todes os estudantes*/
SELECT * FROM tb_estudantes;

/*Selecionar todes os estudantes cuja nota seja maior do que 7.00*/
SELECT * FROM tb_estudantes WHERE nota > 7.00;

/*Selecionar todes os estudantes cuja nota seja menor do que 7.00*/
SELECT * FROM tb_estudantes WHERE nota < 7.00;

/*Atualizar os dados de um registro da tabela tb_estudantes*/
UPDATE tb_estudantes SET nota = 5.50 WHERE id = 7;
