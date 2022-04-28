Escolhi essa atividade, porque foi tranquila de fazer.

create table fornecedores(
	CNPJ  varchar (18) primary key,
	nome_fantasia varchar,
	tipo_roupa varchar,
	local varchar
);

insert into fornecedores
(CNPJ, nome_fantasia, tipo_roupa, local)
values

('123456789123456789', 'gucci', 'linho', 'Italia'),
('123456234422432222', 'luli', 'jeans', 'Brasil')


create table funcionarios(
	nume_carteira_trabalho varchar primary key,
	nome varchar,
	cpf varchar,
	carga_horaria varchar,
	salario decimal (9,9),
	turno varchar
);

create table funcionarios(
	nume_carteira_trabalho varchar primary key,
	nome varchar,
	cpf varchar,
	carga_horaria varchar,
	salario decimal (9,9),
	turno varchar
);

create table clientess(
	cpf  varchar,
	nome varchar,
	email varchar,
	telefone varchar,
	endereço varchar
);	

create table clientes(
	cpf  varchar,
	nome varchar,
	email varchar,
	telefone varchar,
	endereço varchar
);	
create table produtos(
	cod_produto int primary key,
	tamanho varchar,
	tecido varchar,
	modelo varchar,
	estilo varchar,
	marca varchar,
	preco decimal (7,2),
	cod_fornecedores varchar,
	foreign key (cod_fornecedores) references fornecedores
);



insert into produtos
(cod_produto, tamanho, tecido, modelo, estilo, marca, preco, cod_fornecedores)
values

(15, 'P', 'linho', 'praia', 'casual', 'gucci', 49.90, '123456789123456789'),
(14, 'M', 'jeans', 'skinny', 'casual', 'luli', 59.90, '123456234422432222')
;



create table vendas(
	data date,
	cod_funcionarios varchar references funcionarios,
	cod_produtos int references produtos,
	cod_clientess varchar references clientess
	);

insert into vendas
	(data, cod_funcionarios, cod_produtos, cod_clientess)
	values
	
	('2022-02-16', '1234567', '15', '123456765431'),
	('2022-01-02', '7654321', '14', '134567654321')
	;





