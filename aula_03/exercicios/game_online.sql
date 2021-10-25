create database db_game_online;

use  db_game_online;

create table tb_classes(
id bigint auto_increment,
nome varchar(255),
skill varchar(150),
hp int, -- Health points!
arma varchar(255),
primary key (id)
);

insert into tb_classes(nome, skill, hp, arma) values ("Feiticeiro", "Bola de fogo", 5, "Cajado");
insert into tb_classes(nome, skill, hp, arma) values ("Arqueiro", "Chuva de flechas", 6, "Arco e flecha");
insert into tb_classes(nome, skill, hp, arma) values ("Bruxa", "Espada de prata", 10, "Caldeirão");
insert into tb_classes(nome, skill, hp, arma) values ("Cavaleiro", "Cavalo dragão", 20, "Excalibur");
insert into tb_classes(nome, skill, hp, arma) values ("Curandeiro", "Ressurreição", 3, "Gaze");

select * from tb_classes;

create table tb_personagens(
id bigint auto_increment,
nome varchar(100),
nivel int,
ataque int,
defesa int,
classe_id bigint,
primary key (id),
foreign key (classe_id) references tb_classes(id)
);

insert into tb_personagens(nome, nivel, ataque, defesa, classe_id) values ("Mokona", 100, 300, 100, 5);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) VALUES ("Minseok", 100, 3000, 2800, 1);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) VALUES ("Junmyeon", 100, 2000, 2000, 2);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) VALUES ("Baekhyun", 10, 1000, 1500, 3);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) VALUES ("Jongdae", 1000, 1300, 1110, 4);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) VALUES ("Chanyeol", 500, 2300, 3000, 5);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) VALUES ("Kyungsoo", 400, 1800, 2200, 1);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) VALUES ("Jongin", 300, 1300, 850, 2);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) VALUES ("Sehun", 150, 2100, 900, 3);

select * from tb_personagens;

select * from tb_personagens where ataque > 2000;

select * from tb_personagens where defesa between 1000 and 2000;

select * from tb_personagens where nome like "%c%";

select * from tb_personagens inner join tb_classes 
on tb_personagens.classe_id = tb_classes.id;

select tb_personagens.nome, tb_classes.nome from tb_personagens inner join tb_classes 
on tb_personagens.classe_id = tb_classes.id
where tb_classes.id = 2;



