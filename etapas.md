# Etapas para implementação de um banco de dados
## Análise de requisitos
A primeira etapa do projeto de banco de dados é a identificação dos requisitos que o banco de dados deve atender. Nesta fase devem ser realizadas entrevistas com as pessoas envolvidas no processo, cria-se uma descrição textual macro do processo (texto conhecido como mini-mundo), modelos externos (que devem ser entendidos por todos).

Este é o momento em que as regras de negócio devem ser identificadas, se a fase de análise de requisitos for mal executada e se identificar regras de negócio que não representam a realidade, tudo o que for feito em seguida no projeto será perda de tempo. Por isso, esta é considerada a parte mais importante do projeto.

## Projeto conceitual
O Projeto Conceitual se baseia na especificação de requisitos criada na etapa anterior. A partir deste insumo de informações é gerado um esquema conceitual do banco de dados. Esquema conceitual é uma visão macro do banco de dados, uma descrição de alto nível da estrutura.

Os modelos de Entidade-Relacionamento são muito utilizados para descrever os esquemas conceituais. É importante frisar que nesta fase descreve-se o conteúdo de informação e não a estrutura onde elas serão armazenadas (tabelas, colunas, visões, etc...)

## Projeto lógico

O Projeto Lógico é a etapa onde mapeamos o conceito dos modelos de entidade-relacionamento em objetivos de bancos de dados. Nesta fase criamos os modelos internos de bancos de dados, com detalhes sobre tabelas, relacionamentos, regras, metadados das colunas (tipo, tamanho, obrigatoriedade, ...), visões, etc.

Ao final, o resultado de um projeto lógico é um esquema do banco de dados parecido com o modelo conceitual, porém com mais detalhes de banco de dados e não apenas conceitos.

## Projeto físico

O Projeto Físico é a parte final do projeto de banco de dado, nesta etapa define-se detalhes técnicos da implementação do banco de dados, por exemplo a forma como os dados serão armazenados, os scripts para a criação dos objetos no banco de dados (tabelas, visões, colunas, funções, ...), permissão de acesso de usuário, etc. Esta etapa é fortemente ligada ao SGBD que será utilizado. A otimização de desempenho do banco de dados é trabalhada nesta fase do projeto.

