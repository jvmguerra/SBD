
 # PROBLEMA : CANAIS DE TV!!! MODIFICAR PARA UMA DAS OPCOES:
 # CRIAR TABELA COM ID QUE REFERENCIA UM DETERMINADO PLANO DE TV (50,70,130,173 canais)
 # COLAR STRING COM TODOS OS CANAIS (Acho porco)

 INSERT INTO Plano(Valor,Nome,Descricao,Fixo_minutos,Movel_Minutos,Movel_LimiteSMS,Movel_LimiteInternet,Internet_velocidade,TV_Canais)
 VALUES(9,'Pexincha','Plano de Celular Basico',0,50,100,'100Kb',0,0);
 
INSERT INTO Plano(Valor,Nome,Descricao,Fixo_minutos,Movel_Minutos,Movel_LimiteSMS,Movel_LimiteInternet,Internet_velocidade,TV_Canais)
 VALUES(19,'SMS','Plano Celular com SMS ilimitado*',0,100,250,'300Kb',0,0);
 
INSERT INTO Plano(Valor,Nome,Descricao,Fixo_minutos,Movel_Minutos,Movel_LimiteSMS,Movel_LimiteInternet,Internet_velocidade,TV_Canais)
	VALUES (29,'Basico','TV50Canais, Net4MB, Fixo100Min',100,0,0,0,'4Mb',50);
 
INSERT INTO Plano(Valor,Nome,Descricao,Fixo_minutos,Movel_Minutos,Movel_LimiteSMS,Movel_LimiteInternet,Internet_velocidade,TV_Canais)
 VALUES(39,'Basico+','TV70Canais, Net4MB, Fixo100Min',100,0,0,0,'4Mb',70);
 
INSERT INTO Plano(Valor,Nome,Descricao,Fixo_minutos,Movel_Minutos,Movel_LimiteSMS,Movel_LimiteInternet,Internet_velocidade,TV_Canais)
 VALUES(49,'Avançado','TV70Canais, Net10MB, Fixo300Min',300,0,0,0,'10Mb',70);
 
INSERT INTO Plano(Valor,Nome,Descricao,Fixo_minutos,Movel_Minutos,Movel_LimiteSMS,Movel_LimiteInternet,Internet_velocidade,TV_Canais)
 VALUES(69,'HD','TV130CanaisHD,Net15MB,Fixo300Min',300,0,0,0,'15Mb',130);
 
INSERT INTO Plano(Valor,Nome,Descricao,Fixo_minutos,Movel_Minutos,Movel_LimiteSMS,Movel_LimiteInternet,Internet_velocidade,TV_Canais)
 VALUES(99,'Super','TV173CanaisHD,Net15MB,Fixo300Min',300,100,100,'500Mb', '15MB',173);
 
INSERT INTO Plano(Valor,Nome,Descricao,Fixo_minutos,Movel_Minutos,Movel_LimiteSMS,Movel_LimiteInternet,Internet_velocidade,TV_Canais)
 VALUES(119,'Mega','TV173CanaisHD,Net30MB,Fixo300Min',300,200,200,'500Mb','30MB',173);
 
INSERT INTO Plano(Valor,Nome,Descricao,Fixo_minutos,Movel_Minutos,Movel_LimiteSMS,Movel_LimiteInternet,Internet_velocidade,TV_Canais)
 VALUES(199,'Hiper','TV173CanaisHD,Net50MB,Fixo1000',1000,250,250,'1Gb','50MB',173);
 
INSERT INTO Plano(Valor,Nome,Descricao,Fixo_minutos,Movel_Minutos,Movel_LimiteSMS,Movel_LimiteInternet,Internet_velocidade,TV_Canais)
 VALUES(299,'Sem Limites','TV173CanaisHD,Net50MB,Fixo1000,3G2GB',1000,300,300,'2Gb','50MB',173);
