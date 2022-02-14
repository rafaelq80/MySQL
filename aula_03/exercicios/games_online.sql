-- Cria do Banco de dados
create database db_game_online;

-- Seleciona o Banco de dados para uso
use db_game_online;

create table tb_classes(
 id bigint auto_increment,
 nome varchar(255) not null,
 habilidade varchar(255),
 arma varchar(255),
 primary key (id)
 );
 
 insert into tb_classes (nome, habilidade, arma) 
 values ("Feiticeiro", "Bola de fogo", "Cajado");
 insert into tb_classes (nome, habilidade, arma) 
 values ("Arqueiro", "Chuva de Flechas", "Arco e Flecha"); 
 insert into tb_classes (nome, habilidade, arma) 
 values ("Druida", "Gelo", "Livro"); 
 insert into tb_classes (nome, habilidade, arma) 
 values ("Guerreiro", "Excalibur", "Espada"); 
 insert into tb_classes (nome, habilidade, arma) 
 values ("Curandeiro", "Ressureição", "Gaze");

-- Lista todas as Classes
select * from tb_classes;

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
insert into tb_personagens (nome, nivel, ataque, defesa, classe_id) 
values ("Mokona", 100, 300, 100, 5);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) 
VALUES ("Minseok", 100, 3000, 2800, 1);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) 
VALUES ("Junmyeon", 100, 2000, 2000, 2);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) 
VALUES ("Baekhyun", 10, 1000, 1500, 3);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) 
VALUES ("Jongdae", 1000, 1300, 1110, 4);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) 
VALUES ("Chanyeol", 500, 2300, 3000, 5);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) 
VALUES ("Kyungsoo", 400, 1800, 2200, 1);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) 
VALUES ("Jongin", 300, 1300, 850, 2);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) 
VALUES ("Sehun", 150, 2100, 900, 3);

-- Lista todos os Personagens
select * from tb_personagens;

-- Faça um select que retorne os personagens com o poder de ataque maior do que 2000.
select * from tb_personagens where ataque > 2000;

-- Faça um select trazendo  os personagens com poder de defesa entre 1000 e 2000.

-- Forma 01
select * from tb_personagens where defesa >= 1000 and defesa <= 2000;

-- Forma 02
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
