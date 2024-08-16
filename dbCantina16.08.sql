-- apagando banco de dados

drop database dbcantina;

--criando banco de dados

create database dbcantina;

--acessando banco de dados

use dbcantina;

--criando as tabelas

create table tbfuncionarios (
codFunc int not null auto_increment,
nome varchar(100) not null unique,
email varchar(100) not null unique,
cpf char(14) not null unique,
sexo char (1) default 'F' check (sexo in ('F','M')),
salario decimal (9,2) default 0 check(salario >=0),
nascimento date,
telefone char (10),
primary key (codFunc));



create table tbFornecedores(
codForn int not null auto_increment,
email varchar (100)not null,
nome varchar (100)not null,
cnpj char (17) not null unique,
primary key (codForn));



create table tbClientes(
codCli int not null auto_increment,
nome varchar(100) not null,
email varchar (100),
telCelular char(10),
primary key(codCli));



create table tbUsuarios(
	codUsu int not null auto_increment,
	nome varchar (25) not null unique,
	senha varchar (10) not null,
	codFunc int not null,
	primary key (codUsu),
	foreign key (codFunc)references tbfuncionarios(codFunc));




create table tbProdutos(
codProd int not null auto_increment,
descricao varchar (100),
quantidade int,
valor decimal(9,2),
validade date,
dataEntrada date,
horaEntrada time,
codForn int not null,
primary key (codProd),
foreign key (codForn)references tbFornecedores(codForn));




create table tbVendas(
codVenda int not null auto_increment,
dataVenda date,
horaVenda time,
quantidade int,
codUsu int not null,
codCli int not null,
codProd int not null,
 primary key(codVenda),
 foreign key(codUsu)references tbUsuarios(codUsu),
 foreign key(codCli)references tbClientes(codCli),
 foreign key(codProd)references tbProdutos(codProd));





--visualizando tabela

desc tbfuncionarios;
desc tbFornecedores;
desc tbClientes;
desc tbUsuarios;
desc tbProdutos;
desc tbVendas;



-- inserindo registros nas tabelas
insert into tbfuncionarios(nome,email,cpf,sexo,salario,nascimento,telefone) values('Antonio','antoniomarcosbs1@outlook.com', '111.222.333-45','M',1870.00,'1996/12/31','8498745288');
insert into tbfuncionarios(nome,email,cpf,sexo,salario,nascimento,telefone) values('jose','jose@outlook.com', '111.225.333-45','M',1870.00,'1996/12/31','8498742222');


	insert into tbFornecedores(nome,email,cnpj) values('Kombi eireli','kombieireli@kombi.com.br','25.154.168.0001-08');
		insert into tbFornecedores(nome,email,cnpj) values('moto eireli','motinha12@motos.com.br','35.255.668.0001-99');


insert into tbClientes(nome,email,telCelular)values('Angelica','angelica@angelica.com.br', '986451757');
	insert into tbClientes(nome,email,telCelular)values('julio','julio@padrao.com.br', '986451757');
		insert into tbClientes(nome,email,telCelular)values('charles','charles@padrao.com.br', '986451757');


insert into tbUsuarios(nome,senha,codFunc) values('jose@@padrao.com.br', '123456', 1);
	insert into tbUsuarios(nome,senha,codFunc) values('pedro@@padrao.com.br', '123456', 2);

insert into tbProdutos(descricao,quantidade,valor,validade,dataEntrada,horaEntrada,codForn) values ('Cadeira',15,1000.00, '2030/08/18','2024/08/18','19:50:34',1);
	insert into tbProdutos(descricao,quantidade,valor,validade,dataEntrada,horaEntrada,codForn) values ('Mesa',15,1400.00, '2030/08/21','2024/08/20','18:50:34',2);
		insert into tbProdutos(descricao,quantidade,valor,validade,dataEntrada,horaEntrada,codForn) values ('Secadora',15,1100.00, '2030/09/18','2024/09/18','17:50:34',1);

			insert into tbVendas (dataVenda,horaVenda,quantidade,codUsu,codCli,codProd) values('2024/08/16','19:51:31',1,2,3,3);
				insert into tbVendas (dataVenda,horaVenda,quantidade,codUsu,codCli,codProd) values('2024/08/16','19:51:31',2,1,2,2);

-- visualizando os registros de tabelas
select * from tbfuncionarios;
select * from tbFornecedores;
select * from tbClientes;
select * from tbUsuarios;
select * from tbProdutos;
select * from tbVendas;
--outra forma 

--check(sexo = 'F' or sexo = 'M');