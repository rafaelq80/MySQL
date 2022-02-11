/*CRIAR BANCO DE DADOS*/
CREATE DATABASE db_escola; 

/*USAR BANCO DE DADOS*/
USE db_escola; 

/*CRIAR TABELA NO BANCO DE DADOS*/
CREATE TABLE tb_alunos(
	id bigint auto_increment,
    nome varchar(200),
    data_nascimento date,
    turma int,
    media decimal(4,2),
    primary key (id)
);

/*INSERIR DADOS NA TABELA*/
INSERT INTO tb_alunos (nome, data_nascimento, turma, media) VALUES ("Paulo Miklos", "1959-01-21", 1, 8.00);
INSERT INTO tb_alunos (nome, data_nascimento, turma, media) VALUES ("Sérgio Britto", "1959-09-18", 1, 9.00);
INSERT INTO tb_alunos (nome, data_nascimento, turma, media) VALUES ("Tony Bellotto", "1960-06-30", 2, 6.50);
INSERT INTO tb_alunos (nome, data_nascimento, turma, media) VALUES ("Charles Gavin", "1960-07-09", 2, 5.50);
INSERT INTO tb_alunos (nome, data_nascimento, turma, media) VALUES ("Arnaldo Antunes", "1960-09-02", 2, 9.00);
INSERT INTO tb_alunos (nome, data_nascimento, turma, media) VALUES ("Marcelo Fromer", "1961-12-03", 3, 9.00);
INSERT INTO tb_alunos (nome, data_nascimento, turma, media) VALUES ("Branco Mello", "1962-03-16", 3, 9.00);
INSERT INTO tb_alunos (nome, data_nascimento, turma, media) VALUES ("Nando Reis", "1963-01-12", 3, 8.00);

/*SELECIONAR DADOS DA TABELA PARA MOSTRAR*/
SELECT * FROM tb_alunos;
SELECT * FROM tb_alunos WHERE media < 7.00;
SELECT * FROM tb_alunos WHERE media > 7.00;

/*ALTERAR VALOR EM DUAS LINHAS*/
UPDATE tb_alunos SET media = 10.00 WHERE id = 2;
UPDATE tb_alunos SET media = 5.50 WHERE id = 7;