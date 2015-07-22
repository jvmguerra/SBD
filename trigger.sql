/*
	Este trigger foi criado com o propósito de estar verificando se um cliente está tentando abrir duas ordens de
	um mesmo serviço se já existe uma ordem anterior que ainda não foi finalizada. Quando o cliente tenta fazer o pedido
	do serviço é realizada uma inserção na tabela agenda_manutencao. Quando ele for tentar realizar o pedido o trigger é
	disparado e verifica se ja existe uma ordem para aquele serviço no nome do cliente se sim o trigger barra a inserção
	caso contrario ele deixa a inserção ocorrer normalmente.
*/
CREATE OR REPLACE FUNCTION checa_servico ()
RETURNS trigger AS $$
DECLARE tupla record;
BEGIN
	FOR tupla IN SELECT * FROM Agenda_manutencao WHERE new.cliente_cpf = cliente_cpf AND new.servico_id = servico_id
	LOOP
		IF tupla.realizado = false THEN
		RAISE NOTICE 'Voce ainda possui uma manutenção pendente!';
		RETURN NULL;
		END IF;
	END LOOP;
	RETURN NEW;
END $$ LANGUAGE 'plpgsql';

CREATE TRIGGER Servico_disponivel BEFORE INSERT
ON agenda_manutencao FOR EACH ROW
EXECUTE PROCEDURE checa_servico();
