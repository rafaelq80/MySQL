CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classe(
 id bigint auto_increment,
 nome varchar(100),
 habilidade varchar(150),
 primary key (id)
);

INSERT INTO tb_classe (nome, habilidade) VALUES ("Feiticeiro", "magia");
INSERT INTO tb_classe (nome, habilidade) VALUES ("Arqueiro", "usar arco e flecha");
INSERT INTO tb_classe (nome, habilidade) VALUES ("Guerreiro", "usar espada");
INSERT INTO tb_classe (nome, habilidade) VALUES ("Cavaleiro", "cavalgar");
INSERT INTO tb_classe (nome, habilidade) VALUES ("Ninja", "usar dardos");

CREATE TABLE tb_personagem(
 id bigint auto_increment,
 nome varchar(100),
 biografia varchar(200),
 ataque int,
 defesa int,
 classe_id bigint,
 primary key (id),
 foreign key (classe_id) references tb_classe(id)
);

INSERT INTO tb_personagem (nome, biografia, ataque, defesa, classe_id) VALUES ("Minseok", "sábio", 3000, 2800, 1);
INSERT INTO tb_personagem (nome, biografia, ataque, defesa, classe_id) VALUES ("Junmyeon", "líder", 2000, 2000, 2);
INSERT INTO tb_personagem (nome, biografia, ataque, defesa, classe_id) VALUES ("Baekhyun", "alegre", 1000, 1500, 3);
INSERT INTO tb_personagem (nome, biografia, ataque, defesa, classe_id) VALUES ("Jongdae", "protetor", 1300, 1110, 4);
INSERT INTO tb_personagem (nome, biografia, ataque, defesa, classe_id) VALUES ("Chanyeol", "animado", 2300, 3000, 5);
INSERT INTO tb_personagem (nome, biografia, ataque, defesa, classe_id) VALUES ("Kyungsoo", "centrado", 1800, 2200, 1);
INSERT INTO tb_personagem (nome, biografia, ataque, defesa, classe_id) VALUES ("Jongin", "estrela", 1300, 850, 2);
INSERT INTO tb_personagem (nome, biografia, ataque, defesa, classe_id) VALUES ("Sehun", "aprendiz", 2100, 900, 3);

SELECT * FROM tb_classe;
SELECT * FROM tb_personagem;

SELECT * FROM tb_personagem WHERE ataque > 2000;
SELECT * FROM tb_personagem WHERE defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagem WHERE nome LIKE "%C%";
SELECT * FROM tb_personagem INNER JOIN tb_classe ON tb_classe.id = tb_personagem.classe_id;
SELECT * FROM tb_personagem INNER JOIN tb_classe ON tb_classe.id = tb_personagem.classe_id WHERE tb_classe.id = 2;