-- Cria do Banco de dados
create database db_game_online;

-- Seleciona o Banco de dados para uso
use db_game_online;

-- Cria a tabela classe
create table tb_classe(
id bigint auto_increment,
nome varchar(255),
habilidade varchar(150),
primary key (id)
);

-- Dados da tabela classe
insert into tb_classe(nome, habilidade) values ("Feiticeiro", "Magia");
insert into tb_classe(nome, habilidade) values ("Arqueiro", "Usar arco e flecha");
insert into tb_classe(nome, habilidade) values ("Guerreiro", "Usar espada");
insert into tb_classe(nome, habilidade) values ("Cavaleiro", "Cavalgar");
insert into tb_classe(nome, habilidade) values ("Ninja", "Camuflagem");

-- Cria a tabela personagem
create table tb_personagem(
id bigint auto_increment,
nome varchar(100),
nivel int,
ataque int,
defesa int,
classe_id bigint,
primary key (id),
foreign key (classe_id) references tb_classe(id)
);

-- Dados da tabela personagem
INSERT INTO tb_personagem (nome, nivel, ataque, defesa, classe_id) VALUES ("Minseok", 100, 3000, 2800, 1);
INSERT INTO tb_personagem (nome, nivel, ataque, defesa, classe_id) VALUES ("Junmyeon", 100, 2000, 2000, 2);
INSERT INTO tb_personagem (nome, nivel, ataque, defesa, classe_id) VALUES ("Baekhyun", 10, 1000, 1500, 3);
INSERT INTO tb_personagem (nome, nivel, ataque, defesa, classe_id) VALUES ("Jongdae", 1000, 1300, 1110, 4);
INSERT INTO tb_personagem (nome, nivel, ataque, defesa, classe_id) VALUES ("Chanyeol", 500, 2300, 3000, 5);
INSERT INTO tb_personagem (nome, nivel, ataque, defesa, classe_id) VALUES ("Kyungsoo", 400, 1800, 2200, 1);
INSERT INTO tb_personagem (nome, nivel, ataque, defesa, classe_id) VALUES ("Jongin", 300, 1300, 850, 2);
INSERT INTO tb_personagem (nome, nivel, ataque, defesa, classe_id) VALUES ("Sehun", 150, 2100, 900, 3);

select * from tb_personagem;

select * from tb_classe;

-- Faça um select que retorne os personagens com o poder de ataque maior do que 2000.
select * from tb_personagem where ataque > 2000;

-- Faça um select trazendo  os personagens com poder de defesa entre 1000 e 2000.
select * from tb_personagem where defesa between 1000 and 2000;

-- Faça um select  utilizando LIKE buscando os personagens com a letra C.
select * from tb_personagem where nome like "%c%";

-- Faça um um select com Inner join entre  tabela classe e personagem.
select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id;

-- Faça um select onde traga todos os personagem de uma classe específica (exemplo todos os personagens que são arqueiros).
select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id where tb_classe.id = 2;
