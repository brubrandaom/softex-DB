# Processo de normalização
Normalização é o processo de organização de dados em um banco de dados. Isso inclui a criação de tabelas e o estabelecimento de relações entre essas tabelas de acordo com as regras projetadas para proteger os dados e tornar o banco de dados mais flexível, eliminando a redundância e a dependência inconsistente.

## Forma normal 1
Para chegar a primeira forma normal devemos: Determinar o atributo que possui característica de chave primária, tornar todos atributos atômicos, transformar o grupo repetitivo em uma nova tabela, levando a chave primária da tabela na qual estava, para manter a ligação entre a tabela criada e a original. Depois aplicamos também sobre essa nova tabela a primeira forma normal.

## Forma normal 2
Para chegar a segunda forma normal verifique se a chave primária dessa tabela é composta ou simples. Se for simples, já se encontra na segunda forma normal. Se for composta, verifique se todos os atributos da relação dependem de todos os atributos que compõem a chave primária. Por exemplo, se a chave primária é composta dos atributos A , B e o campo C em questão depende somente de B. Se sim, já está na segunda forma normal. Se não, pegue o atributo (C) que depende parcialmente da chave primária e crie uma nova tabela. Essa tabela terá como chave primária o campo da chave primária original que determinou o campo C (nesse exemplo é o B) e adicione como atributo simples da relação o C.

## Forma normal 3
Para chegar a terceira forma normal verifique os campos que não são chave primária. Se algum desses campos não chave possuir dependência com outro campo não chave, então essa tabela não se encontra na terceira forma normal.

## Forma normal 4 (FNBC)
Se analisarmos uma tupla e não encontrarmos um atributo não chave dependente de outro atributo não chave, podemos dizer que a entidade em questão está na terceira forma normal - contanto que esta não vá de encontro as especificações da primeira e da segunda forma normal.

*Fontes*
<br>
https://learn.microsoft.com/pt-br/office/troubleshoot/access/database-normalization-description
https://spaceprogrammer.com/bd/normalizando-um-banco-de-dados-por-meio-das-3-principais-formas/
https://medium.com/@diegobmachado/normaliza%C3%A7%C3%A3o-em-banco-de-dados-5647cdf84a12
