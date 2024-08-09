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
salario decimal (9,2),
nascimento date,
telefone char (10),
primary key (codFunc));









--outra forma 

--check(sexo = 'F' or sexo = 'M');