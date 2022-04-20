create table animais(
	cod varchar primary key,
	nome varchar,
	ano_nascimento date,
	setor varchar,
	especie varchar,
	obs varchar,
	ultima_visita_vet date,
	peso varchar
);

create table funcionarios(
        pis varchar(22) primary key,
        nome varchar(22),
        carga_horaria varchar(22),
        salario varchar(22),
        email varchar(22),
        cpf varchar(40),
        cargo varchar(30),
        data_nasc date
);

create table estoque(
                cod varchar primary key,
                produto varchar, 
                validade date,
                preço decimal(5,2),
                qtd varchar,
                marca varchar,
                data_compra date,
                cod_fornecedor varchar, 
                FOREIGN KEY (cod_fornecedor) references fornecedor (cnpj)
);

create table fornecedor(
                cnpj varchar primary key,
                local varchar,
                email varchar,
                produto varchar
);

create table contas(
	cod varchar primary key,
	valor_total_estoque varchar,
	mes/ano varchar,
	valor_totl_bilheteria varchar,
	valor_total_funcionarios varchar,
	gastos_extra varchar,
	lucro varchar	
);

 create table empresas_parceiras(
                COD varchar primary key, 
                email varchar,
                funcao varchar,
                nome varchar,
                aluguel decimal(7,2)
);

create table visitantes(
	CPF varchar primary key,
	checkin date,
	nome varchar,
	idade int
);

create table bilheteria(
	n_pulseira varchar primary key,
	cod_visitante varchar,
	foreign key(cod_visitante) references visitantes,
	esta_zoo boolean	
);
