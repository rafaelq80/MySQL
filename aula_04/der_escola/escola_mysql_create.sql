CREATE TABLE `Aluno` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`nome` varchar(255) NOT NULL,
	`turma_id` bigint NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Nota` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`avaliacao` varchar(255) NOT NULL,
	`nota` DECIMAL(4,2) NOT NULL,
	`aluno_id` bigint NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Turma` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`turma` varchar(255) NOT NULL,
	`periodo` varchar(1) NOT NULL,
	`professor` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `Aluno` ADD CONSTRAINT `Aluno_fk0` FOREIGN KEY (`turma_id`) REFERENCES `Turma`(`id`);

ALTER TABLE `Nota` ADD CONSTRAINT `Nota_fk0` FOREIGN KEY (`aluno_id`) REFERENCES `Aluno`(`id`);




