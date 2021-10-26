create database db_escola_gen;

use db_escola_gen;

create table tb_aluno(
id bigint auto_increment,
nome varchar(255),
turma varchar(10),
primary key (id)
);

insert into tb_aluno(nome, turma) values ("Weslley Williams", "Turma 25");
insert into tb_aluno(nome, turma) values ("Michelli Brito", "Turma 25");
insert into tb_aluno(nome, turma) values ("Larissa Falcão", "Turma 25");
insert into tb_aluno(nome, turma) values ("Carolina Martins", "Turma 23");
insert into tb_aluno(nome, turma) values ("Fabrício Veronez", "Turma 23");

select * from tb_aluno;

create table tb_nota(
id bigint auto_increment,
avaliacao varchar(255),
nota decimal(4,2),
aluno_id bigint,
primary key (id),
foreign key (aluno_id) references tb_aluno(id)
);

-- Notas do aluno 01
insert into tb_nota(avaliacao, nota, aluno_id) values ("Nota 1", 5.0, 1);
insert into tb_nota(avaliacao, nota, aluno_id) values ("Nota 2", 10.0, 1);
insert into tb_nota(avaliacao, nota, aluno_id) values ("Nota 3", 7.5, 1);
insert into tb_nota(avaliacao, nota, aluno_id) values ("Nota 4", 6.0, 1);

-- Notas do aluno 02
insert into tb_nota(avaliacao, nota, aluno_id) values ("Nota 1", 10.0, 2);
insert into tb_nota(avaliacao, nota, aluno_id) values ("Nota 2", 9.0, 2);
insert into tb_nota(avaliacao, nota, aluno_id) values ("Nota 3", 8.5, 2);
insert into tb_nota(avaliacao, nota, aluno_id) values ("Nota 4", 8.0, 2);

-- Notas do aluno 03
insert into tb_nota(avaliacao, nota, aluno_id) values ("Nota 1", 5.0, 3);
insert into tb_nota(avaliacao, nota, aluno_id) values ("Nota 2", 4.0, 3);
insert into tb_nota(avaliacao, nota, aluno_id) values ("Nota 3", 6.5, 3);
insert into tb_nota(avaliacao, nota, aluno_id) values ("Nota 4", 6.0, 3);

-- Notas do aluno 04
insert into tb_nota(avaliacao, nota, aluno_id) values ("Nota 1", 10.0, 4);
insert into tb_nota(avaliacao, nota, aluno_id) values ("Nota 2", 9.5, 4);
insert into tb_nota(avaliacao, nota, aluno_id) values ("Nota 3", 6.5, 4);
insert into tb_nota(avaliacao, nota, aluno_id) values ("Nota 4", 10.0, 4);

-- Notas do aluno 05
insert into tb_nota(avaliacao, nota, aluno_id) values ("Nota 1", 2.0, 5);
insert into tb_nota(avaliacao, nota, aluno_id) values ("Nota 2", 4.0, 5);
insert into tb_nota(avaliacao, nota, aluno_id) values ("Nota 3", 3.5, 5);
insert into tb_nota(avaliacao, nota, aluno_id) values ("Nota 4", 5.0, 5);

select * from tb_nota;