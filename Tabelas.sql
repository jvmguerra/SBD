CREATE SCHEMA TELECOM;
SET search_path to TELECOM;


CREATE SEQUENCE Nro_plano_seq;
CREATE TABLE  PLANO (
	Nro_plano integer DEFAULT nextval('Nro_plano_seq'),
	Valor numeric NOT NULL,
	Nome  varchar(20) NOT NULL,
	Descricao varchar(50) NOT NULL,
	Fixo_Numero varchar(15),
	Fixo_Minutos integer,
	Movel_Numero varchar(15),
	Movel_Minutos integer,
	Movel_LimiteSMS integer,
	Movel_LimiteInternet integer,
	Internet_Velocidade integer,
	TV_Canais varchar(50),

	CONSTRAINT plano_pk PRIMARY KEY (Nro_plano) 	
);
CREATE TABLE EMPRESA(
	CNPJ varchar(15),
	Nome varchar(20) NOT NULL,
	Rua varchar(30) NOT NULL,
	CEP varchar(10) NOT NULL,
	Cidade varchar(15) NOT NULL,
	Pais varchar(15) NOT NULL,
	Telefone varchar(15) NOT NULL,

	CONSTRAINT empresa_pk PRIMARY KEY (CNPJ)
);
CREATE TABLE CLIENTE(
	CPF varchar(11) ,
	Nome varchar(20) NOT NULL,
	Rua varchar(30) NOT NULL,
	CEP varchar(10) NOT NULL,
	Cidade varchar(15) NOT NULL,
	Pais varchar(15) NOT NULL,
	Email varchar(20) NOT NULL,
	Senha varchar(10) NOT NULL,
	Telefone1 varchar(15) NOT NULL,
	Telefone2 varchar(15),
	Plano_assinado integer,

	CONSTRAINT cliente_pk PRIMARY KEY (CPF),
	CONSTRAINT cliente_fk FOREIGN KEY (Plano_assinado) REFERENCES PLANO(Nro_plano)
);
CREATE SEQUENCE Id_conta_seq;
CREATE TABLE CONTA(
	Id_conta integer DEFAULT nextval('Id_conta_seq'),
	Valor numeric NOT NULL,
	Data_emissao date NOT NULL,
	Data_vencimento date NOT NULL,

	CONSTRAINT conta_pk PRIMARY KEY (Id_conta)
);
CREATE SEQUENCE Nro_servico_seq;
CREATE TABLE SERVICO(
	Nro_servico integer DEFAULT nextval('Nro_servico_seq'),
	Tipo varchar NOT NULL,

	CONSTRAINT servico_pk PRIMARY KEY (Nro_servico)

);
CREATE TABLE FUNCIONARIO(
	Cod_func integer ,
	Nome varchar(20) NOT NULL,
	Telefone varchar(15) NOT NULL,
	Data_admissão date NOT NULL,
	Carga_Horaria integer NOT NULL,
	Salario numeric NOT NULL,
	CPF varchar(12) NOT NULL,
	Rua varchar(20) NOT NULL,
	CEP varchar(10) NOT NULL,
	Cidade varchar(15) NOT NULL,
	Pais varchar(15) NOT NULL,

	CONSTRAINT funcionario_pk PRIMARY KEY (Cod_func)
); 

CREATE TABLE FUNCIONARIO_TI(
	Cod_func integer,
	Setor varchar,
	Experiencia varchar,
	Funcao varchar,

	CONSTRAINT funcionario_ti_pk PRIMARY KEY (Cod_func),
	CONSTRAINT funcionario_ti_fk FOREIGN KEY (Cod_func) REFERENCES FUNCIONARIO(Cod_func)
);

CREATE TABLE FUNCIONARIO_Engenharia(
	Cod_func integer,
	Area varchar,

	CONSTRAINT funcionario_eng_pk PRIMARY KEY (Cod_func),
	CONSTRAINT funcionario_eng_fk FOREIGN KEY (Cod_func) REFERENCES FUNCIONARIO(Cod_func)
);

CREATE TABLE FUNCIONARIO_RH(
	Cod_func integer,
	Funcao varchar,

	CONSTRAINT funcionario_rh_pk PRIMARY KEY (Cod_func),
	CONSTRAINT funcionario_rh_fk FOREIGN KEY (Cod_func) REFERENCES FUNCIONARIO(Cod_func)
);

CREATE TABLE FUNCIONARIO_MANUTENCAO(
	Cod_func integer,
	Setor varchar,
	Funcao varchar,

	CONSTRAINT funcionario_man_pk PRIMARY KEY (Cod_func),
	CONSTRAINT funcionario_man_fk FOREIGN KEY (Cod_func) REFERENCES FUNCIONARIO(Cod_func)
);

CREATE TABLE PAGAMENTO(
	Cliente_cpf varchar(11),
	Conta integer,
	Data_pagamento date,
	Esta_pago boolean,

	CONSTRAINT pagamento_pk PRIMARY KEY (Cliente_cpf,Conta),
	CONSTRAINT pagamento_fk1 FOREIGN KEY (Cliente_cpf) REFERENCES CLIENTE(CPF),
	CONSTRAINT pagamento_fk2 FOREIGN KEY (Conta) REFERENCES CONTA(Id_conta)

);

CREATE TABLE AGENDA_MANUTENCAO(
	Servico_id integer,
	Cliente_cpf varchar,
	Data_agendamento date,
	Data_concretizacao date,
	Funcionario_agendamento integer,

	CONSTRAINT agendaman_pk PRIMARY KEY (Servico_id),
	CONSTRAINT agendaman_fk1 FOREIGN KEY (Servico_id) REFERENCES SERVICO(Nro_Servico),
	CONSTRAINT agendaman_fk2 FOREIGN KEY (Cliente_cpf) REFERENCES CLIENTE(CPF),
	CONSTRAINT agendaman_fk3 FOREIGN KEY (Funcionario_agendamento) REFERENCES FUNCIONARIO(Cod_func) 

);

CREATE TABLE REALIZA (
	Servico_realizado integer,
	Funcionario integer,

	CONSTRAINT realiza_pk PRIMARY KEY (Servico_realizado,Funcionario),
	CONSTRAINT realiza_fk1 FOREIGN KEY (Servico_realizado) REFERENCES Servico(Nro_servico),
	CONSTRAINT realiza_fk2 FOREIGN KEY (Funcionario) REFERENCES FUNCIONARIO(Cod_func)

);

ALTER TABLE PLANO DROP COLUMN Fixo_numero;
ALTER TABLE PLANO DROP COLUMN Movel_numero;

CREATE TABLE ASSINA(
        CPF_Cliente varchar(11),
        Nro_Plano integer,
	Fixo_Numero varchar(15),
	Movel_Numero varchar(15),
        CONSTRAINT assina_pk PRIMARY KEY (CPF_Cliente, Nro_Plano),
	CONSTRAINT assina_fk FOREIGN KEY (CPF_Cliente) REFERENCES Cliente(CPF),
	CONSTRAINT assina_fk1 FOREIGN KEY (Nro_plano) REFERENCES Plano(Nro_plano)
);

ALTER TABLE PLANO ALTER COLUMN Movel_LimiteInternet SET DATA TYPE varchar(10);
ALTER TABLE PLANO ALTER COLUMN internet_velocidade SET DATA TYPE varchar(10);

















