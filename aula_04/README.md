<h1>Construíndo  o Diagrama de Entidades e Relacionamentos com o DB Designer</h1>

<br />

O DB Designer é uma ferramenta on-line utilizada na Modelagem de Banco de Dados e construção do Diagrama de Entidades e Relacionamentos. Para a modelagem do nosso Banco de dados utilizaremos a versão free. Importante destacar que a versão free permite a construção de apenas dois projetos.

<div align="center"><img src="https://i.imgur.com/2adsDpY.png" title="source: imgur.com" /></div>

<br />

Neste tutorial vamos utilizar o Diagrama de Entidade e Relacionamentos (DER) de uma Escola, conforme a figura abaixo:

<div align="center"><img src="https://i.imgur.com/ZKBT4lB.png" title="source: imgur.com" /></div>



<h2>Criando o meu primeiro DER no DB Designer</h2>



1. Acesse o link: **https://www.dbdesigner.net/**

2. Crie uma conta no site através do botão **Start design for free**

   <div align="center"><img src="https://i.imgur.com/isBPkeI.png" title="source: imgur.com" /></div>

3. Após o cadastro, será aberta a janela **Dashboard - DB Designer**

4. Para iniciar um novo projeto, clique no botão **New Project**

   <div align="center"><img src="https://i.imgur.com/GD1VOEH.png" title="source: imgur.com" /></div>

5. Para configurar o idioma do editor , clique no menu **View 🡢 Options** 

6. Configure conforme a janela abaixo e clique no botão **Save Changes**

   <div align="center"><img src="https://i.imgur.com/drQh0y6.png" title="source: imgur.com" /></div>

7. Para criar um Novo Diagrama, clique no menu **Esquema 🡢 Novo** 

8. Informe o título do projeto e o Banco de dados (**MySQL**), conforme a janela abaixo e clique no botão **Criar Novo Esquema**

   <div align="center"><img src="https://i.imgur.com/50CgByy.png" title="source: imgur.com" /></div>

   <br />

   <div align="center"><h2>⚠ IMPORTANTE</h2></div>

   <i>Selecionar o **Banco de Dados correto** é essencial para a construção do Diagrama. Caso você selecione o **tipo incorreto (diferente de MySQL), será necessário iniciar a construção do zero**. Uma vez escolhido um tipo de Banco de Dados não é possível alterar.</u></i>

   

9. Para Inserir uma nova tabela, clique no menu **Inserir 🡢 Tabela**

10. Clique no **lápis** para alterar o nome da tabela

    <div align="center"><img src="https://i.imgur.com/2hX32bc.png" title="source: imgur.com" /></div>

11. Para adicionar os atributos da tabela, clique no link **Adicionar campo** e preencha as **Constraints** (Restrições: Regras aplicadas nas colunas de uma tabela) do Atributo

    <div align="center"><img src="https://i.imgur.com/i3vzrx8.png" title="source: imgur.com" /></div>

12. Para criar uma **Chave Estrangeira** e o respectivo relacionamento, selecione a **Tabela** e o **Atributo** que a **Chave Estrangeira** irá se relacionar

<div align="center"><img src="https://i.imgur.com/QN6q2p8.png" title="source: imgur.com" /></div>

13. Utilize as cores para diferenciar a **Chave Primária** da **Chave Estrangeira**

14. Crie as 3 tabelas e os respectivos relacionamentos seguindo o Diagrama Modelo.

15. Após concluir o Diagrama, salve o projeto através do menu **Esquema  🡢 Salvar**

16. Exporte o Diagrama no formato PDF através do menu **Exportar 🡢 PDF** e faça o download do arquivo

17. Gere o código **SQL** do diagrama através do menu **Exportar 🡢 SQL**

18. Na janela abaixo, clique no botão **Gerar SQL**

    <div align="center"><img src="https://i.imgur.com/dEDgYtk.png" title="source: imgur.com" /></div>

19. Na próxima janela, clique no botão **Baixar arquivo SQL** para salvar o arquivo gerado.

    <div align="center"><img src="https://i.imgur.com/SZlpX0n.png" title="source: imgur.com" /></div>

    <br />

    <div align="center"><h2>⚠ IMPORTANTE</h2></div>

    <i>Para utilizar o código SQL acima no Workbench, adicione no inicio do código as linhas referentes a **Criação do Banco de dados (create database)** e **Seleção do Banco de dados (use)**.</i>

    <h3>Exemplo:</h3>

    ```sql
    CREATE DATABASE db_escola;
    
    USE db_escola;
    
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
    	`alunos_id` bigint NOT NULL,
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
    
    ALTER TABLE `Nota` ADD CONSTRAINT `Nota_fk0` FOREIGN KEY (`alunos_id`) REFERENCES `Aluno`(`id`);
    ```

20. A Construção do Diagrama está Concluída!



<h2>Engenharia Reversa</h2>



O DB Designer oferece o recurso de Engenharia Reversa, ou seja, a partir de um código SQL ele também consegue criar o DER automaticamente.

1. Inicie um novo projeto (clique no botão **New Project**)

   <div align="center"><img src="https://i.imgur.com/GD1VOEH.png" title="source: imgur.com" /></div>

2. Para criar um Novo Diagrama utilizando a Engenharia Reversa, clique no menu **Esquema 🡢 Importar** 

3. Selecione a Opção **MySQL** e cole o código SQL no item **Sql**, conforme a figura abaixo:

   <div align="center"><img src="https://i.imgur.com/6yz0igO.png" title="source: imgur.com" /></div>

4. Clique no Botão **Import SQL** para concluir.

5. O Diagrama será gerado automaticamente, como mostra a figura abaixo:

<div align="center"><img src="https://i.imgur.com/OhpwNLM.png" title="source: imgur.com" /></div>

6. Diagrama criado, agora é só fazer os ajustes visuais, conferir os dados e finalizar.