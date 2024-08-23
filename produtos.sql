drop database dbprodutos;
 
create database dbprodutos;
 
use dbprodutos;
 
 
CREATE TABLE PRODUTOS 
( 
CODIGO INT, 
NOME VARCHAR(50), 
TIPO VARCHAR(25), 
QUANTIDADE INT, 
VALOR DECIMAL(10,2) 
);
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 1,'IMPRESSORA', 'INFORMATICA', 200, 600.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 2,'CAMERA DIGITAL', 'DIGITAIS', 300, 400.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 3,'DVD PLAYER', 'ELETRONICOS', 250, 500.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 4,'MONITOR', 'INFORMATICA', 400, 900.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 5,'TELEVISOR', 'ELETRONICOS', 350, 650.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 6,'FILMADORA DIGITAL', 'DIGITAIS', 500, 700.00 );
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 7,'CELULAR', 'TELEFONE', 450, 850.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 8,'TECLADO', 'INFORMATICA', 300, 450.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 9,'VIDEOCASSETE', 'ELETRONICOS', 200, 300.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 10,'MOUSE', 'INFORMATICA', 400, 60.00 );

show tables;

desc PRODUTOS;

--comandos select e suas variaveis.. ordem das solicitaçõs não afeta o resultado final, em tecnica apenas visual.

select * from PRODUTOS;
select nome, valor from PRODUTOS;

select codigo,nome from PRODUTOS;

-- este seria para alterar informações da tabela apenas no momento de mostrar a informação ao usuario.
select codigo as 'Código', nome as 'Nome' from PRODUTOS;

select distinct tipo from PRODUTOS;
--Para filtrar no banco de dados um resultado especifico
select *from produtos where quantidade >250;

select nome,tipo from produtos where valor <=150;

select * from produtos where QUANTIDADE >=30 and <=50;
select * from produtos where quantidade >=30 or <=50;

select * from produtos where nome= 'Monitor' and tipo = 'INFORMATICA';
select * from produtos where nome= 'Monitor' or tipo = 'INFORMATICA';
select * from produtos where tipo in('Informatica','Telefone');
--vai mostrar tudo menos os campos informados abaixo.
select * from produtos where tipo not in('Informatica','Telefone');
select * from produtos where between and 250 and 600;
select * from produtos where not between  250 and 600;

-- pesquisa por codigo, pesquisa por nome
--%nome
--nome%
--%nome%

select * from produtos where nome  like '%o';
select * from produtos where nome  like 'i%';
select * from produtos where nome  like '%a%';
select * from produtos where nome like '%a%';
select * from produtos where nome  like '%a%' and tipo = 'INFORMATICA';
select * from produtos where nome  like '%a%' or tipo ='INFORMATICA';
select * from produtos where nome  not like '%a%' tipo = 'INFORMATICA';

select valor from produtos where nome like 'f%';
select valor *1.20 as 'Valor' from produtos where nome like 'F%';

-- comando update
update produtos set valor = valor * 1.12 where nome like 'f%';
--Para verificar o update
select nome,valor from produtos where nome like 'f%';