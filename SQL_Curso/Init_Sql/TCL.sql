--criando de teste
create table cadastro
(
 nome varchar(50) not null,
 docto varchar(20) not null
 );

--INICIA TRANSAÇÃO
BEGIN TRANSACTION ;

--INSERE REGISTROS
INSERT INTO cadastro VALUES      ('Andre', '12341244');
INSERT INTO cadastro VALUES      ('Joao',  '12341248');
INSERT INTO cadastro VALUES      ('Pedro', '12341246');

--SELECT DOS REGISTRO INSERIDOS
SELECT * FROM   cadastro ;

--RETORNA O TABELA NAO ESTADO ANTERIOR DO BEGIN TRANSACTION
ROLLBACK ;

--EFETIVA AS INFORMACOES NA TABELAS DO BANCO DE DADOS
COMMIT TRANSACTION;


--SELECT DOS REGISTRO INSERIDOS
SELECT * FROM   cadastro ;






--limpando a tabela
delete from cadastro;
--INICIA TRANSACAO

BEGIN TRANSACTION 
--INSERE REGISTRO
INSERT INTO cadastro  VALUES ('Andre', '12341244') ;
--CRIA UM PONTO DE RECUPERACAO
SAVE TRANSACTION a1;
--INSERE REGISTRO
INSERT INTO cadastro  VALUES ('Joao','12341244') ;
--CRIA UM PONTO DE RECUPERACAO
SAVE TRANSACTION a2 ;
--INSERE REGISTRO
INSERT INTO cadastro VALUES ('Pedro', '12341244') ;
--CRIA UM PONTO DE RECUPERACAO
SAVE TRANSACTION a3 ;

--VERIFICA REGISTROS
SELECT * FROM   cadastro;

--RESTAURA A TABELA ATE O PONTO A2 
ROLLBACK TRANSACTION a2 ;

--VERIFICA REGISTROS
SELECT * FROM   cadastro;

--RETORNA A TABELA NO ESTADO ANTERIOR AO BEGIN TRANSACTION
ROLLBACK ;

--EFETIVA AS INFORMAÇOES NA TABELA
COMMIT TRANSACTION;


--VERIFICA REGISTROS
SELECT * FROM   cadastro;