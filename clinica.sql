create database clinica;

create table ambulatorios (
nroa int(5),
andar numeric(3) not null,
capacidade varchar(15),
primary key(nroa));

create table medicos (
codm int(5),
nome varchar(40) not null,
idade int(2) not null,
especialidade varchar(20),
cpf numeric(11) unique,
cidade varchar(30),
nroa int(5),
primary key (codm));

alter table medicos add constraint fk_ambulatorios_nroa
foreign key(nroa)
references ambulatorios (nroa);

create table pacientes (
codp int(5),
nome varchar(40) not null,
idade int(2) not null,
cpf numeric(11) unique,
cidade varchar(30),
doenca varchar(40) not null,
primary key (codp));

create table funcionarios (
codf int(5),
nome varchar(40) not null,
idade int(2) not null,
cpf numeric(11) unique,
cidade varchar(30),
salario numeric(10),
cargo varchar(20),
primary key (codf));

create table consultas (
codm int(5),
codp int(5),
dataa date,
hora time);

alter table consultas add constraint fk_medicos_codm
foreign key (codm)
references medicos (codm);

alter table consultas add constraint fk_pacientes_codp
foreign key (codp)
references pacientes (codp);