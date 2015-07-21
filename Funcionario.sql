SET datestyle TO SQL, MDY;
INSERT INTO Funcionario VALUES ('110','Alessandro Batista Maia','99781067',
	'03/23/2014',160,1500.00,'84991176352','Rua Iracy Florêncio','55022756','Caruaru');
INSERT INTO Funcionario VALUES ('111','Leandro Correia Couto','99981955',
	'10/12/2012',160,1700.00,'62865643140','Rua Jovelino Antônio','36047450','Juiz de Fora');
INSERT INTO Funcionario VALUES ('112','Júlio Cerqueira Duarte','99980091',
	'10/02/2000',160,2400.00,'23963458267','Rua Marly Pinheiro','14098592','Ribeirão Preto');
INSERT INTO Funcionario VALUES ('113','Guilherme Salvador Dias','99911517',
	'05/11/2010',160,1700.00,'67764741094','Rua Rio Branco','47813638','Barreiras');
INSERT INTO Funcionario VALUES ('114','Mário Salvador Eiras','99982004',
	'06/11/2015',120,900.00,'73753398217','Rua Rio Grande','29164821','Serra');

INSERT INTO Funcionario VALUES ('220','Bárbara Manuela Carvalho','99988373',
	'12/12/2014',160,1600.00,'69473164726','Rua Tamoio','97504008','Salvador');
INSERT INTO Funcionario VALUES ('221','Elisa Marina Catarina Barros','99919827',
	'10/03/2010',160,2000.00,'54056481407','Rua A','72906502','Salvador');
INSERT INTO Funcionario VALUES ('222','Larissa Betina Sabrina','99987611',
	'05/04/2013',160,1700.00,'49702023700','Rua Miguel Pedro','75091020','Igarassu');
INSERT INTO Funcionario VALUES ('223','Maitê Giovanna da Silva','99781428',
	'06/08/2012',160,1800.00,'03657346678','Rua Barão','26196280','Campinas');
INSERT INTO Funcionario VALUES ('224','Jennifer Nina Raquel','99987611',
	'04/10/2012',160,1800.00,'13433705747','Rua Umbelino Francisco','13053304','Campinas');

INSERT INTO Funcionario VALUES ('330','Alícia Mirella Rebeca','99369991',
	'12/24/2010',160,4500.00,'00618083421','SCEN Trecho 2','70800900','Brasilia');
INSERT INTO Funcionario VALUES ('331','Lorenzo Augusto Cavalcanti','99367731',
	'11/12/2011',160,4200.00,'52308645326','Rua Príncipe Francisco','13184019','Hortolândia');
INSERT INTO Funcionario VALUES ('332','Juan Gustavo Ribeiro','99989827',
	'01/30/2014',160,2700.00,'18397722041','Quadra Quadra 605','72641112','Brasília');
INSERT INTO Funcionario VALUES ('333','Letícia Mariah Betina','99988617',
	'05/01/2012',160,4000.00,'34639086032','Rua Capitão Bernardo','79645340','Três Lagoas');
INSERT INTO Funcionario VALUES ('334','Stefany Flávia Isabelle','99781620',
	'07/12/2013',160,3500.00,'54655845724','Rua Bortolo Zanrosso','95045080','Caxias do Sul');

INSERT INTO Funcionario VALUES ('440','Evelyn Beatriz Mariane','99912999',
	'12/13/2011',160,3500.00,'05823641400','Rua Carena','20540218','Rio de Janeiro');
INSERT INTO Funcionario VALUES ('441','Anthony Raul Barbosa','99367611',
	'11/23/2011',160,3500.00,'50871400413','Rua Cururu','26423010','Japeri');
INSERT INTO Funcionario VALUES ('442','Caio Marcelo Ribeiro','99989827',
	'03/15/2013',160,2500.00,'85934123602','Rua Pioneira Laura','87065490','Maringá');
INSERT INTO Funcionario VALUES ('443','Danilo Fernando Lucas','99366617',
	'05/24/2014',160,2000.00,'14495654330','Rua João Acquati','04160040','São Paulo');
INSERT INTO Funcionario VALUES ('444','Yuri Renato Ian','99782115',
	'09/16/2014',160,2000.00,'41463641249','Rua Botafogo','14704066','Bebedouro');
	
/* ESPECIALIZACOES */
	
INSERT INTO FUNCIONARIO_TI (Cod_func, Setor, Experiencia, Funcao) VALUES(110, 'TECH', 'Senior', 'Engenheiro de Software');
INSERT INTO FUNCIONARIO_TI (Cod_func, Setor, Experiencia, Funcao) VALUES(111, 'TECH', 'Pleno', 'Analista de Sistemas');
INSERT INTO FUNCIONARIO_TI (Cod_func, Setor, Experiencia, Funcao) VALUES(112, 'TECH', 'Junior', 'Desenvolvedor Web');
INSERT INTO FUNCIONARIO_TI (Cod_func, Setor, Experiencia, Funcao) VALUES(113, 'DB', 'Senior', 'Administrador de Banco de Dados');
INSERT INTO FUNCIONARIO_TI (Cod_func, Setor, Experiencia, Funcao) VALUES(114, 'SEC', 'Pleno', 'Chefe de Seguranca');

INSERT INTO FUNCIONARIO_Engenharia(Cod_func, Area) VALUES (220, 'Engenharia Eletrica');
INSERT INTO FUNCIONARIO_Engenharia(Cod_func, Area) VALUES (221, 'Engenharia de Telecomunicacoes');
INSERT INTO FUNCIONARIO_Engenharia(Cod_func, Area) VALUES (222, 'Engenharia Eletronica');
INSERT INTO FUNCIONARIO_Engenharia(Cod_func, Area) VALUES (223, 'Engenharia de Eletronica/Telecomunicacao');
INSERT INTO FUNCIONARIO_Engenharia(Cod_func, Area) VALUES (224, 'Engenharia de Telecomunicaoes');

INSERT INTO FUNCIONARIO_RH (Cod_func, Funcao) VALUES (330, 'Recrutamento');
INSERT INTO FUNCIONARIO_RH (Cod_func, Funcao) VALUES (331, 'Gerente de RH');
INSERT INTO FUNCIONARIO_RH (Cod_func, Funcao) VALUES (332, 'Recrutamento');
INSERT INTO FUNCIONARIO_RH (Cod_func, Funcao) VALUES (333, 'Headhunting');
INSERT INTO FUNCIONARIO_RH (Cod_func, Funcao) VALUES (334, 'Assessment');

INSERT INTO FUNCIONARIO_MANUTENCAO (Cod_func, Setor, Funcao) VALUES (440, 'Manutencao', 'Instalacao Fisica');
INSERT INTO FUNCIONARIO_MANUTENCAO (Cod_func, Setor, Funcao) VALUES (441, 'Manutencao', 'Reparos');
INSERT INTO FUNCIONARIO_MANUTENCAO (Cod_func, Setor, Funcao) VALUES (442, 'Atendimento', 'Atendimento SAC');
INSERT INTO FUNCIONARIO_MANUTENCAO (Cod_func, Setor, Funcao) VALUES (443, 'Atendimento', 'Atendimento SAC');
INSERT INTO FUNCIONARIO_MANUTENCAO (Cod_func, Setor, Funcao) VALUES (444, 'Manutencao', 'Reparos');
