-- Cria o Banco de dados
create database db_game_online;

-- Seleciona o Banco de dados para uso
use  db_game_online;

-- Cria a tabela classes
create table tb_classes(
id bigint not null auto_increment,
nome varchar(255) not null,
skill varchar(150),
hp int, -- Health points!
arma varchar(255),
primary key (id)
);

-- Insere dados na tabela classes
insert into tb_classes(nome, skill, hp, arma) values ("Feiticeiro", "Bola de fogo", 5, "Cajado");
insert into tb_classes(nome, skill, hp, arma) values ("Arqueiro", "Chuva de flechas", 6, "Arco e flecha");
insert into tb_classes(nome, skill, hp, arma) values ("Bruxa", "Espada de prata", 10, "Caldeirão");
insert into tb_classes(nome, skill, hp, arma) values ("Cavaleiro", "Cavalo dragão", 20, "Excalibur");
insert into tb_classes(nome, skill, hp, arma) values ("Curandeiro", "Ressurreição", 3, "Gaze");

-- Lista todas as Classes
select * from tb_classes;

-- Cria a tabela personagens
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

-- Insere dados na tabela personagens
insert into tb_personagens(nome, nivel, ataque, defesa, classe_id) values ("Mokona", 100, 300, 100, 5);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) VALUES ("Minseok", 100, 3000, 2800, 1);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) VALUES ("Junmyeon", 100, 2000, 2000, 2);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) VALUES ("Baekhyun", 10, 1000, 1500, 3);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) VALUES ("Jongdae", 1000, 1300, 1110, 4);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) VALUES ("Chanyeol", 500, 2300, 3000, 5);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) VALUES ("Kyungsoo", 400, 1800, 2200, 1);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) VALUES ("Jongin", 300, 1300, 850, 2);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) VALUES ("Sehun", 150, 2100, 900, 3);

-- Lista todos os personagens
select * from tb_personagens;

-- Personagens com o poder de ataque maior do que 2000
select * from tb_personagens where ataque > 2000;

-- Personagens com poder de defesa entre 1000 e 2000

-- Solução 01
select * from tb_personagens where defesa between 1000 and 2000;

-- Solução 02
select * from tb_personagens where defesa >= 1000 and defesa <= 2000;

-- LIKE buscando os personagens com a letra C
select * from tb_personagens where nome like "%c%";

-- Inner join entre  tabela classe e personagem
select * from tb_personagens inner join tb_classes 
on tb_personagens.classe_id = tb_classes.id;

-- Todos os personagem de uma classe específica 
select * from tb_personagens inner join tb_classes 
on tb_personagens.classe_id = tb_classes.id
where tb_classes.id = 2;