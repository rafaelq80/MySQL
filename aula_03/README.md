<h1>Modelagem de Dados - Introdução</h1>



Modelagem de dados significa criar um Modelo que explique as características de funcionamento e comportamento de um Software a partir do qual ele  será criado, facilitando seu entendimento e seu projeto, através das  características principais que evitarão erros de programação, projeto e  funcionamento.

Modelagem do Banco de dados é o processo de **levantamento, análise, categorização e exploração de todos os dados e tipos de informações** que irão sustentar uma aplicação. Esta é uma etapa primordial no  trabalho do desenvolvimento de sistemas, porque todo software é criado  com determinados objetivos, para atender às necessidades dos usuários  dentro deste cenário.

<h2>Qual o objetivo da modelagem de dados ? Por quê  modelar ?</h2>

- Representar o ambiente observado
- Documentar e normalizar
- Fornecer processos de validação
- Observar processos de relacionamentos entre   objetos

<h2>Etapas da Modelagem de dados</h2>

<h3>👣 Passo 01 - Análise dos Dados Brutos</h3>

Nesta etapa, geralmente você receberá uma ou mais planilhas ou uma lista em papel com amostras dos dados que farão parte do sistema. Nesta etapa precisaremos analisar, normalizar e modelar até encontrarmos um modelo que atenda aos Requisitos do Sistema.

<h3>👣 Passo 02 - Modelo Conceitual</h3>

Nesta etapa, através de um Diagrama Entidade Relacionamento (DER), criaremos uma representação das regras de negócio, sem limitações tecnológicas ou de implementação. Por este motivo, esta é a melhor etapa para o envolver o usuário/cliente , que geralmente não possui conhecimentos  técnicos. Esse Diagrama representa o **MER** (Modelo Entidade Relacionamento).

<h3>👣 Passo 03 - Modelo Lógico</h3>

Nesta etapa, através de Diagramas Entidade Relacionamento (DER), criaremos a mesma representação, entretanto levaremos em conta os limites impostos por algum tipo de tecnologia de Banco de dados.

<h3>👣 Passo 04 - Modelo Físico</h3>

Nesta etapa, através de Diagramas, criaremos a mesma representação, entretanto levaremos em consideração os limites  impostos pelo SGBD (Sistema Gerenciador de Banco de dados) e pelos requisitos  não funcionais dos programas que acessam os dados.

Nesta etapa também criamos o **Dicionário de Dados**, que é um documento que formaliza todas as características de cada **Atributo** de cada **Tabela** do Banco de dados, de acordo com as especificações do DER.

<h2>Entidade e Atributo</h2>

Antes de continuarmos é importante compreendermos alguns conceitos fundamentais. São eles: **Entidade** e **Atributo**.

Uma **Entidade** pode ser definida como  qualquer coisa do mundo real , abstrata ou concreta , na qual se deseja guardar  informações. No contexto de Banco de dados Relacionais, uma Entidade é uma Tabela. Exemplos de entidades : Cliente ,  Produto , Contrato , Vendas , etc.

Um **Atributo** é tudo o que se pode  relacionar como propriedade da entidade. No contexto de Banco de dados Relacionais, um Atributo é uma Coluna na Tabela. Exemplos de atributos : Código do Produto (Entidade Produto) , Nome do Cliente  (Entidade Cliente).

<h2>Normalização</h2>

É uma técnica, baseada no conceito Matemático da Teoria dos Conjuntos, **cujo objetivo é eliminar as anomalias de atualização (inclusão, alteração e exclusão) das entidades**, que podem causar certos problemas na sua Base de dados, tais como: grupos repetitivos de dados, redundâncias de dados desnecessários,  perdas acidentais de informação, dificuldade na apresentação de fatos da realidade observada etc.

Veja a tabela abaixo, que possui os Dados Brutos de uma Quitanda:

<div align="center"><h2>Tabela de Produtos</h2></div>

| Nome         | Quantidade | Data Validade | Preço        | Categoria |
| ------------ | ---------- | ------------- | ------------ | --------- |
| Maçã         | 1000       | 07/03/2022    | R$      1,99 | Fruta     |
| Banana       | 1300       | 08/03/2022    | R$      5,00 | Fruta     |
| Batata doce  | 2000       | 09/03/2022    | R$     10,00 | Legumes   |
| Alface       | 300        | 10/03/2022    | R$      7,00 | Verduras  |
| Cebola       | 1020       | 08/03/2022    | R$      5,00 | Legumes   |
| Ovo Branco   | 1000       | 07/03/2022    | R$     15,00 | Ovos      |
| Agrião       | 1500       | 06/03/2022    | R$      3,00 | Verduras  |
| Cenoura      | 1800       | 09/03/2022    | R$      3,50 | Legumes   |
| Pimenta      | 1100       | 15/03/2022    | R$     10,00 | Temperos  |
| Alecrim      | 130        | 10/03/2022    | R$      5,00 | Temperos  |
| Manga        | 200        | 07/03/2022    | R$      5,49 | Fruta     |
| Laranja      | 3000       | 13/03/2022    | R$     10,00 | Fruta     |
| Couve        | 100        | 12/03/2022    | R$      1,50 | Verduras  |
| Tomate       | 1105       | 15/03/2022    | R$      3,00 | Legumes   |
| Rabanete     | 1200       | 15/03/2022    | R$     13,00 | Legumes   |
| Sacola Cinza | 1118       |               | R$      0,50 |           |
| Sacola Verde | 1118       |               | R$      0,50 |           |

Observe em nosso exemplo que os dados da **Coluna Categoria (Atributo)** se repetem muitas vezes. A categoria **Legumes** (🍅) se repete 5 vezes, **Fruta** (🍏) se repete 4 vezes, **Verduras** (🥦) se repete 3 vezes, **Temperos** (🌶) se repete 2 vezes e **Ovos** (🥚) aparece apenas 1 vez.

<div align="center"><h2>Tabela de Produtos</h2></div>

| Nome         | Quantidade | Data Validade | Preço        | Categoria  |
| ------------ | ---------- | ------------- | ------------ | ---------- |
| Maçã         | 1000       | 07/03/2022    | R$      1,99 | 🍏 Fruta    |
| Banana       | 1300       | 08/03/2022    | R$      5,00 | 🍏 Fruta    |
| Batata doce  | 2000       | 09/03/2022    | R$     10,00 | 🍅 Legumes  |
| Alface       | 300        | 10/03/2022    | R$      7,00 | 🥦Verduras  |
| Cebola       | 1020       | 08/03/2022    | R$      5,00 | 🍅 Legumes  |
| Ovo Branco   | 1000       | 07/03/2022    | R$     15,00 | 🥚 Ovos     |
| Agrião       | 1500       | 06/03/2022    | R$      3,00 | 🥦Verduras  |
| Cenoura      | 1800       | 09/03/2022    | R$      3,50 | 🍅 Legumes  |
| Pimenta      | 1100       | 15/03/2022    | R$     10,00 | 🌶 Temperos |
| Alecrim      | 130        | 10/03/2022    | R$      5,00 | 🌶 Temperos |
| Manga        | 200        | 07/03/2022    | R$      5,49 | 🍏 Fruta    |
| Laranja      | 3000       | 13/03/2022    | R$     10,00 | 🍏 Fruta    |
| Couve        | 100        | 12/03/2022    | R$      1,50 | 🥦Verduras  |
| Tomate       | 1105       | 15/03/2022    | R$      3,00 | 🍅 Legumes  |
| Rabanete     | 1200       | 15/03/2022    | R$     13,00 | 🍅 Legumes  |
| Sacola Cinza | 1118       |               | R$      0,50 |            |
| Sacola Verde | 1118       |               | R$      0,50 |            |

Para alterar o nome de uma Categoria. seria necessário percorrer toda a Tabela para alterar o nome da Categoria em todos os Produtos associados na Tabela. Este problema é uma **anomalia de atualização**. Para evitar este problema, seria muito mais simples separar a Categoria da tabela Produtos e criar duas tabelas:

|                           PRODUTO                            |                          CATEGORIA                           |
| :----------------------------------------------------------: | :----------------------------------------------------------: |
| <img src="https://i.imgur.com/JdzPbzQ.png" title="source: imgur.com" /> | <img src="https://i.imgur.com/4yDSPSA.png" title="source: imgur.com" /> |

Observe que ainda temos alguns problemas:

1. As 2 tabelas não possuem um Identificador único;
2. A Tabela Categoria ainda está com dados repetidos;
3. Não temos como criar um Relacionamento entre as 2 tabelas.

A primeira coisa que faremos é definir um Identificador único na nossa Tabela Produto, que será a nossa Chave Primária:

<div align="center"><h2>Tabela de Produtos</h2></div>

|   Id   | Nome         | Quantidade | Data Validade | Preço        |
| :----: | ------------ | ---------- | ------------- | ------------ |
| **1**  | Maçã         | 1000       | 07/03/2022    | R$      1,99 |
| **2**  | Banana       | 1300       | 08/03/2022    | R$      5,00 |
| **3**  | Batata doce  | 2000       | 09/03/2022    | R$     10,00 |
| **4**  | Alface       | 300        | 10/03/2022    | R$      7,00 |
| **5**  | Cebola       | 1020       | 08/03/2022    | R$      5,00 |
| **6**  | Ovo Branco   | 1000       | 07/03/2022    | R$     15,00 |
| **7**  | Agrião       | 1500       | 06/03/2022    | R$      3,00 |
| **8**  | Cenoura      | 1800       | 09/03/2022    | R$      3,50 |
| **9**  | Pimenta      | 1100       | 15/03/2022    | R$     10,00 |
| **10** | Alecrim      | 130        | 10/03/2022    | R$      5,00 |
| **11** | Manga        | 200        | 07/03/2022    | R$      5,49 |
| **12** | Laranja      | 3000       | 13/03/2022    | R$     10,00 |
| **13** | Couve        | 100        | 12/03/2022    | R$      1,50 |
| **14** | Tomate       | 1105       | 15/03/2022    | R$      3,00 |
| **15** | Rabanete     | 1200       | 15/03/2022    | R$     13,00 |
| **16** | Sacola Cinza | 1118       |               | R$      0,50 |
| **17** | Sacola Verde | 1118       |               | R$      0,50 |

O próximo passo é eliminar os dados repetidos da Tabela Categorias e definir um Identificador único, que será a nossa Chave Primária:

<div align="center"><h2>Tabela de Categorias</h2></div>

|  Id   | Nome     |
| :---: | -------- |
| **1** | Frutas   |
| **2** | Verduras |
| **3** | Legumes  |
| **4** | Temperos |
| **5** | Ovos     |
| **6** | Outros   |

Para finalizar, vamos criar a nossa **Chave Estrangeira** (Categoria_id), na Tabela de Produtos e associar com a Tabela de Categorias

<div align="center"><h2>Tabela de Produtos</h2></div>

|   Id   | Nome         | Quantidade | Data Validade | Preço        | Categoria_id |
| :----: | ------------ | ---------- | ------------- | ------------ | :----------: |
| **1**  | Maçã         | 1000       | 07/03/2022    | R$      1,99 |     *1*      |
| **2**  | Banana       | 1300       | 08/03/2022    | R$      5,00 |     *1*      |
| **3**  | Batata doce  | 2000       | 09/03/2022    | R$     10,00 |     *3*      |
| **4**  | Alface       | 300        | 10/03/2022    | R$      7,00 |     *2*      |
| **5**  | Cebola       | 1020       | 08/03/2022    | R$      5,00 |     *3*      |
| **6**  | Ovo Branco   | 1000       | 07/03/2022    | R$     15,00 |     *5*      |
| **7**  | Agrião       | 1500       | 06/03/2022    | R$      3,00 |     *2*      |
| **8**  | Cenoura      | 1800       | 09/03/2022    | R$      3,50 |     *3*      |
| **9**  | Pimenta      | 1100       | 15/03/2022    | R$     10,00 |     *4*      |
| **10** | Alecrim      | 130        | 10/03/2022    | R$      5,00 |     *4*      |
| **11** | Manga        | 200        | 07/03/2022    | R$      5,49 |     *1*      |
| **12** | Laranja      | 3000       | 13/03/2022    | R$     10,00 |     *1*      |
| **13** | Couve        | 100        | 12/03/2022    | R$      1,50 |     *2*      |
| **14** | Tomate       | 1105       | 15/03/2022    | R$      3,00 |     *3*      |
| **15** | Rabanete     | 1200       | 15/03/2022    | R$     13,00 |     *3*      |
| **16** | Sacola Cinza | 1118       |               | R$      0,50 |              |
| **17** | Sacola Verde | 1118       |               | R$      0,50 |              |

Observe que os dados cadastrados na coluna **Categoria_id** da Tabela Categorias existem na coluna **Id** da Tabela Produtos:

|                           PRODUTO                            |                          CATEGORIA                           |
| :----------------------------------------------------------: | :----------------------------------------------------------: |
| <img src="https://i.imgur.com/1rkagGe.png" title="source: imgur.com" /> | <img src="https://i.imgur.com/Ur4Efcw.png" title="source: imgur.com" /> |

A partir deste ponto, podemos criar o nosso **Modelo Conceitual**. Temos 2 Entidades definidas: **CATEGORIA** e **PRODUTO**, que estão relacionadas entre si, de modo que 1 Categoria classifica N Produtos, conforme representado no Diagrama abaixo:

<div align="center"><img src="https://i.imgur.com/WYHFO0X.png" title="source: imgur.com" /></div>

A partir do Modelo Conceitual, podemos criar o nosso **Modelo Lógico**, onde os **Atributos** de cada entidade são definidos:

<div align="center"><img src="https://i.imgur.com/g67MO6u.png" title="source: imgur.com" width="80%"/></div>

A partir do Modelo Lógico, podemos criar o **Modelo Físico**, onde as **Entidades se transformam em Tabelas** e os **Atributos recebem o Tipo de dado** mais adequado de acordo com o **SGBD** escolhido. Em nosso exemplo o **MySQL**:

<div align="center"><img src="https://i.imgur.com/xDqZ0wL.png" title="source: imgur.com" /></div>

A partir do Modelo Físico é possível criar o **Dicionário de Dados** das nossas tabelas.

**Tabela tb_categorias**

| Chave | Atributo                  | Descrição                                |
| :---- | ------------------------- | ---------------------------------------- |
| 🔑     | id BIGINT NN AI           | Identificador único da tabela categorias |
|       | descricao VARCHAR(255) NN | Descrição da categoria                   |

**Tabela tb_produtos**

| Chave | Atributo             | Descrição                              |
| :---- | -------------------- | -------------------------------------- |
| 🔑     | id BIGINT NN AI      | Identificador único da tabela produtos |
|       | nome VARCHAR(255) NN | Nome do produto                        |
|       | quantidade INT       | Quantidade em estoque do produto       |
|       | dtvalidade DATE      | Data de validade do produto            |
|       | preco DECIMAL(6,2)   | Preço do produto                       |
| 🔶     | categoria_id BIGINT  | Chave Estrangeira da tabela categorias |

Agora estamos prontos para criar o **Código SQL** no **MySQL Workbench**:

```sql
-- Cria o Banco de dados db_quitanda
CREATE DATABASE db_quitanda;

-- Seleciona o Banco de Dados db_quitanda
USE db_quitanda;

-- Cria a tabela tb_categorias
CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
descricao varchar(255) NOT NULL,
PRIMARY KEY (id)
);

-- Cria a Tabela tb_produtos
CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
quantidade int, 
dtvalidade date NULL,
preco decimal(6, 2),
categoria_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

```

Observe que na tabela tb_ produtos foi adicionada a clausula **FOREIGN KEY**. Uma FOREIGN KEY é um Atributo em uma tabela, que se refere à **PRIMARY KEY** em outra tabela. A tabela com a Chave Estrangeira é chamada de tabela filha e a tabela com a Chave Primária é chamada de tabela referenciada ou pai. A Tabela pai deve ser criada antes da tabela filha.
