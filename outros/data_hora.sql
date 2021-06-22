create database rh_gen;

use rh_gen;

CREATE TABLE tb_funcionarios (
	id bigint NOT NULL AUTO_INCREMENT,
	nome varchar(255) NOT NULL,
	data_nasc DATE NOT NULL, -- Atributo do tipo Data
    hora_nasc TIME, -- Atributo do tipo Hora
	email varchar(255) NOT NULL,
	data_criacao TIMESTAMP NOT NULL, -- Atributo do tipo Data e hora baseado fuso horário atual
	data_atualizacao TIMESTAMP NOT NULL,
	PRIMARY KEY (`id`)
);

/*
CURRENT_TIMESTAMP(): O atributo receberá a data e a hora do servidor no momento da gravação dos dados
A Data sempre será gravada no formato ano-mês-dia
*/

insert into tb_funcionarios (nome, data_nasc, hora_nasc, email, data_criacao, data_atualizacao) 
values ("João", "1980-02-07", "23:59:00", "joao@teste.com", CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()); 

insert into tb_funcionarios (nome, data_nasc, hora_nasc, email, data_criacao, data_atualizacao) 
values ("Maria", "1988-02-07", "13:59:00", "maria@teste.com", CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP());

select * from tb_funcionarios;

/*
DATE_FORMAT(): Formata a sáida da Data na consulta, porém não altera no servidor 
TIME_FORMAT(): Formata a sáida da Hora na consulta, porém não altera no servidor
*/

select id, nome, email, 
DATE_FORMAT(data_nasc, "%d/%m/%Y") as Data_de_Nascimento, 
TIME_FORMAT(hora_nasc, "%H:%i:%s") as Horário_do_Nascimento
from tb_funcionarios;

-- Neste exemplo os atributos data_criacao e data_atualizacao foram divididos em Data e Hora para exibição na consulta 
select id, nome, email,
DATE_FORMAT(data_criacao, "%d/%m/%Y") as Data_de_Criação,
TIME_FORMAT(data_criacao, "%H:%i") as Horário_da_Criação,
DATE_FORMAT(data_atualizacao, "%d/%m/%Y") as Data_de_Atualização,
TIME_FORMAT(data_atualizacao, "%H:%i") as Horário_da_Atualização
from tb_funcionarios;

/*
Neste exemplo utilizamos a função curdate() para obter a data do dia e 
a função datediff() para calcular o total de dias entre a data de nascimento e a data de hoje

Também existem as funções curtime() e timediff() equivalentes para hora
*/
select nome as Nome, 
DATE_FORMAT(curdate(), "%d/%m/%Y") as Hoje,
DATE_FORMAT(data_nasc, "%d/%m/%Y") as Data_de_Nascimento,
DATEDIFF (curdate(), data_nasc) AS Dias_de_vida
from tb_funcionarios;