-- Cria do Banco de dados
create database db_game_online;

-- Seleciona o Banco de dados para uso
use db_game_online;

-- Cria a tabela classe
create table tb_classes(
id bigint auto_increment,
nome varchar(255),
skill varchar(150),
hp int, -- Health points!
arma varchar(255),
primary key (id)
);

-- Dados da tabela classe
insert into tb_classes(nome, skill, hp, arma) values ("Feiticeiro", "Bola de fogo", 5, "Cajado");
insert into tb_classes(nome, skill, hp, arma) values ("Arqueiro", "Chuva de flechas", 6, "Arco e flecha");
insert into tb_classes(nome, skill, hp, arma) values ("Bruxa", "Espada de prata", 10, "Caldeirão");
insert into tb_classes(nome, skill, hp, arma) values ("Cavaleiro", "Cavalo dragão", 20, "Excalibur");
insert into tb_classes(nome, skill, hp, arma) values ("Curandeiro", "Ressurreição", 3, "Gaze");

-- Cria a tabela personagem
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

-- Dados da tabela personagem
insert into tb_personagens (nome, nivel, ataque, defesa, classe_id) values ("Mokona", 100, 300, 100, 5);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) VALUES ("Minseok", 100, 3000, 2800, 1);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) VALUES ("Junmyeon", 100, 2000, 2000, 2);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) VALUES ("Baekhyun", 10, 1000, 1500, 3);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) VALUES ("Jongdae", 1000, 1300, 1110, 4);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) VALUES ("Chanyeol", 500, 2300, 3000, 5);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) VALUES ("Kyungsoo", 400, 1800, 2200, 1);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) VALUES ("Jongin", 300, 1300, 850, 2);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) VALUES ("Sehun", 150, 2100, 900, 3);

select * from tb_personagens;

select * from tb_classes;

-- Faça um select que retorne os personagens com o poder de ataque maior do que 2000.
select * from tb_personagens where ataque > 2000;

-- Faça um select trazendo  os personagens com poder de defesa entre 1000 e 2000.
select * from tb_personagens where defesa between 1000 and 2000;

-- Faça um select  utilizando LIKE buscando os personagens com a letra C.
select * from tb_personagens where nome like "%c%";

-- Faça um um select com Inner join entre  tabela classe e personagem.
select * from tb_personagens inner join tb_classes 
on tb_classes.id = tb_personagens.classe_id;

-- Faça um select onde traga todos os personagem de uma classe específica (exemplo todos os personagens que são arqueiros).
select * from tb_personagens inner join tb_classes 
on tb_classes.id = tb_personagens.classe_id 
where tb_classes.id = 2;

