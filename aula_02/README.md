﻿<h1>Enviando os Scripts SQL para o Github</h1>

Este guia irá auxiliar no processo de criação e inicialização de uma pasta como um Repositório Local do Git e associar este Repositório Local ao Repositório Remoto que será criado no Github para o envio dos Scripts SQL. Desta forma, toda vez que você efetuar um *git push* no Repositório Local, todos os Scripts serão encaminhados para o Repositório Remoto no Github.

<h2>👣 Passo 01 - Criar o Repositório Remoto no Github</h2>

Vamos criar o Repositório Remoto no Github:

 1. Acesse a sua conta no Github (**https://github.com**).

 2. Na tela inicial do seu Github, clique no link <img src="https://i.imgur.com/YZktqfP.png?1" title="source: imgur.com" />, 

 3. Em **Repositories**, clique no botão **New** para adicionar um novo Repositório.

    <div align="center"><img src="https://i.imgur.com/I8fT17R.png" title="source: imgur.com" /></div>

 4. Crie um **Repositório Público**, chamado **bd_mysql** e adicione o arquivo **README**, como mostra a figura abaixo. Em seguida clique no botão **Create Repository**.

<div align="center"><img src="https://i.imgur.com/58vg2QN.png" title="source: imgur.com" /></div>

5. Repositório Criado!

<div align="center"><img src="https://i.imgur.com/WD3R6Tp.png" title="source: imgur.com" /></div>

<h2>👣 Passo 02 - Criar o Repositório Local</h2>

Vamos criar o repositório local na  **Área de Trabalho do Windows**, que será conectada ao Repositório Remoto **bd_mysql** no Github.

1. Na Área de Trabalho do seu Computador, clique com o botão direito do mouse, no menu que será aberto clique na opção: **Novo 🡪 Pasta**.

   <div align="center"><img src="https://i.imgur.com/uUISXrj.png" title="source: imgur.com" width="550px"/></div>

2. Crie a pasta **bd_mysql**.

	<div align="center"><img src="https://i.imgur.com/e5lc1AR.png" title="source: imgur.com" width="400px"/></div>


3. Abra a pasta **bd_mysql**, clique com o botão direito do mouse dentro da pasta e clique na opção: **Git Bash Here**

<div align="center"><img src="https://i.imgur.com/A93QtUn.png" title="source: imgur.com" width="230px"/></div>

4. No **Git Bash**, execute a sequência de comandos abaixo para conectar com o repositório remoto.
```bash
git init
git branch -M master main
git remote add origin https://github.com/rafaelq80/bd_mysql.git
git pull origin main
git remote -v
```
<table width=100%>
	<tr>
        <td width=30%><b>Comando</b></td>
		<td width=70%><b>Descrição
	</tr>
	<tr>
        <td><i>git init</i></td>
        <td>Inicializa um repositório git local dentro da pasta bd_mysql.</td>
	</tr>
	<tr>
        <td><i>git branch -M master main</i></td>
		<td>Renomeia a branch local master para main.</td>
	</tr>
	<tr>
        <td><i> git remote add origin endereço_remoto</i></td>
        <td>Associa o repositório local ao repositório remoto. O endereço_remoto será o endereço do seu repositório.</td>
	</tr>
	<tr>
        <td><i>git pull origin main</i></td>
        <td>Atualiza o seu repositório local com o conteúdo do repositório remoto.</td>
	</tr>
	<tr>
        <td><i>git remote -v </i></td>
        <td>Checa se o seu repositório local está conectado ao repositório remoto</td>
	</tr>
</table>

5. Para obter o endereço Remoto do seu Repositório, clique no botão **Code** e copie o endereço disponível no item **HTTPS**, como mostra a figura abaixo:

   <div align="center"><img src="https://i.imgur.com/vsv92nr.png" title="source: imgur.com" /></div>

6. A sua pasta **bd_mysql** ficará com seguinte estrutura após a execução da sequência de comandos acima:

<div><img src="https://i.imgur.com/bIKFf6K.png?1" title="source: imgur.com" /></div>

7. Crie a pasta **aula_02** para salvar os Scripts SQL da 1ª aula prática.

<div><img src="https://i.imgur.com/fOVsbl4.png?1" title="source: imgur.com" /></div>

<h2>👣 Passo 03 - Criar o Script da aula</h2>

Siga as instruções da Live Code.

<h2>👣 Passo 04 - Salvar o Script SQL</h2>

Para Salvar o Script SQL, siga as instruções abaixo:

1. Clique no botão <img src="https://i.imgur.com/tBxeU64.png" title="source: imgur.com" /> (Salvar).

   <div align="center"><img src="https://i.imgur.com/pv9Z8yL.png?1" title="source: imgur.com" width="550px"/></div>

2. Será aberta a janela **Save SQL Script**

3. Localize a pasta **aula_02** dentro da pasta **bd_mysql** na sua **Área de Trabalho**. No campo **Nome** informe o nome do arquivo e clique no botão **Salvar** para concluir o processo.

   <div align="center"><img src="https://i.imgur.com/CSpKCCF.png" title="source: imgur.com" /></div>



<h2>👣 Passo 05 - Atualizar o Repositório Remoto</h2>

Vamos enviar o Script salvo para o Repositório Remoto no Github

1. Volte para o **GitBash** e confirme se os arquivos do projeto estão aguardando para serem adicionados no Git com o comando <b>git status</b>

```bash
git status
```

<div><img src="https://i.imgur.com/tygTPhl.png" title="source: imgur.com" /></div>

2. Agora vamos atualizar o Repositório Local e enviar todo o conteúdo para o Repositório Remoto no Github, através da sequência de comandos abaixo:

```bash
 git add .
 
 git commit -m “Projeto Hello World”
 
 git push -u origin main
```
3. O resultado dos comandos acima será semelhante a imagem abaixo:

<div><img src="https://i.imgur.com/ImVFxSA.png" title="source: imgur.com" /></div>

<br /><br /><br /><br /><br /><br /><br />

4. Acesse o Repositório Remoto do Github e verifique se ele foi atualizado.

<div align="center"><img src="https://i.imgur.com/7cahP2M.png" title="source: imgur.com" /></div>



<div align="center"><h2>⚠ IMPORTANTE</h2></div>

Toda vez que você precisar enviar conteúdos para este repositório, salve todos os Scripts dentro da pasta **bd_mysql**, acesse a pasta através do **GitBash** e execute a sequência de comandos abaixo:

```bash
 git add .
 
 git commit -m “Mensagem do Commit”
 
 git push
```

