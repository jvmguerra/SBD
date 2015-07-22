CREATE OR REPLACE FUNCTION checa_servico ()
RETURNS trigger AS $$
DECLARE tupla record;
BEGIN
RAISE NOTICE 'X is %', new.cliente_cpf; 
	FOR tupla IN SELECT * FROM Agenda_manutencao WHERE new.cliente_cpf = cliente_cpf AND new.servico_id = servico_id
	LOOP
		RAISE NOTICE 'Y is %', tupla.cliente_cpf;
		IF tupla.Data_concretizacao = NULL THEN
		RAISE NOTICE 'Voce ainda possui uma manutenção pendente!';
		RETURN NULL;
		END IF;
	END LOOP;
	RETURN NEW;
END $$ LANGUAGE 'plpgsql';

CREATE TRIGGER Servico_disponivel BEFORE INSERT
ON agenda_manutencao FOR EACH ROW
EXECUTE PROCEDURE checa_servico();
