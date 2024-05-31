-- TABELA cliente

insert into cliente (cod_cliente, nome, endereco) value (14, 'Arnaldo da Silva Gomes', 'Rua Amazonas, 4512');
insert into cliente (cod_cliente, nome, endereco) value (7, 'Manoela Lurdes de Grato', 'Rua Floriano Siqueira, 8612');
insert into cliente (cod_cliente, nome, endereco) value (9, 'Gomes Ferreira', 'Av. Brasil, 3050');
insert into cliente (cod_cliente, nome, endereco) value (10, 'Julia garcia', 'Rua Arthur Sales, 41');
insert into cliente (cod_cliente, nome, endereco) value (22, 'Armando Nunes', 'Rua B');
insert into cliente (cod_cliente, nome, endereco) value (48, 'Joana Silveira de Castro', 'Av. Atlântica');
insert into cliente (cod_cliente, nome, endereco) value (44, 'Ramon Gales Estácio', 'Rua Siqueira, 7845');
insert into cliente (cod_cliente, nome, endereco) value (59, 'Carlos Garcia Roster', 'Rua Amapá, 3478');
insert into cliente (cod_cliente, nome, endereco) value (61, 'Eduaro Mattos', 'Av. Jair Flores, 9000');
insert into cliente (cod_cliente, nome, endereco) value (73, 'Mônica da Silva Lopes', 'Rua Peter Chan, 99');

-- TABELA carro

insert into carro (registro, marca) value (412, 'Audi');
insert into carro (registro, marca) value (246, 'BMW');
insert into carro (registro, marca) value (350, 'Alfa Romeu');
insert into carro (registro, marca) value (183, 'Dodge');
insert into carro (registro, marca) value (498, 'Ford');
insert into carro (registro, marca) value (351, 'Jaguar');
insert into carro (registro, marca) value (251, 'Honda');

-- TABELA apolice

insert into apolice (cod_apolice, valor, numero, registro) value (1757, '25444.00', 14, 412);
insert into apolice (cod_apolice, valor, numero, registro) value (1319, '36929.00', 7, 498);
insert into apolice (cod_apolice, valor, numero, registro) value (1868, '15435.00', 9, 351);
insert into apolice (cod_apolice, valor, numero, registro) value (1505, '22703.00', 10, 251);
insert into apolice (cod_apolice, valor, numero, registro) value (1147, '19205.00', 48, 246);
insert into apolice (cod_apolice, valor, numero, registro) value (1601, '13327.00', 44, 183);
insert into apolice (cod_apolice, valor, numero, registro) value (2005, '22567.56', 14, 498);

-- TABELA acidente

insert into acidente (cod_acidente, registro, hora, localizacao, periodo) value (84, 412, '20:35:00', 'Jales', '30/04/2019');
insert into acidente (cod_acidente, registro, hora, localizacao, periodo) value (77, 246, '12:39:00', 'Votuporanga', '19/05/2018');
insert into acidente (cod_acidente, registro, hora, localizacao, periodo) value (60, 183, '14:15:00', 'Santa Fé do Sul', '05/10/2018');
insert into acidente (cod_acidente, registro, hora, localizacao, periodo) value (79, 246, '09:45:00', 'Votuporanga', '10/10/2011');
insert into acidente (cod_acidente, registro, hora, localizacao, periodo) value (65, 351, '10:55:00', 'Riolândia', '08/09/2008');
insert into acidente (cod_acidente, registro, hora, localizacao, periodo) value (69, 351, '14:54:00', 'Cardoso', '05/04/2019');
insert into acidente (cod_acidente, registro, hora, localizacao, periodo) value (85, 251, '21:58:00', 'Valentim Gentil', '10/11/2018');

-- UPDATE

-- TABELA cliente

alter table cliente add column cidade varchar(50);

alter table apolice modify column valor decimal(10,2);

update cliente
set nome = 'Gomes Ferreira da Rocha'
where cod_cliente = 9;

update cliente
set nome = 'Mônica da Silva Lopes Camargo'
where cod_cliente = 73;

update cliente
set endereco = 'Rua Acre, 4512'
where cod_cliente = 14;

update cliente
set endereco = 'Rua B, 8599'
where cod_cliente = 22;

update cliente
set endereco = 'Av. Atlântica, 9625'
where cod_cliente = 48;

update cliente
set endereco = 'Rua Arnaldo Prestes, 6788'
where cod_cliente = 59;

update cliente
set cidade = 'Votuporanga'
where cod_cliente = 14;

update cliente
set cidade = 'Jales'
where cod_cliente = 8;

update cliente
set cidade = 'Mirassol'
where cod_cliente = 9;

update cliente
set cidade = 'Jales'
where cod_cliente = 10;

update cliente
set cidade = 'Valentim Gentil'
where cod_cliente = 22;

update cliente
set cidade = 'Votuporanga'
where cod_cliente = 48;

update cliente
set cidade = 'Jales'
where cod_cliente = 44;

update cliente
set cidade = 'Araçatuba'
where cod_cliente = 59;

update cliente
set cidade = 'São José do Rio Preto'
where cod_cliente = 73;

-- TABELA acidente

update acidente
set hora = '14:39:00'
where cod_acidente = 60;

update acidente
set hora = '11:42:00'
where cod_acidente = 65;

update acidente
set localizacao = 'Jales'
where cod_acidente = 65;

-- TABELA apolice

update apolice
set valor = '29700.42'
where cod_apolice = 1757;

update apolice
set valor = '16.433.12'
where cod_apolice = 1868;

update apolice
set valor = '22567.56'
where cod_apolice = 2005;