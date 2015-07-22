CREATE OR REPLACE FUNCTION checa_vencimento ()
RETURNS VOID AS $$
DECLARE tupla record;
BEGIN
	FOR tupla IN SELECT cl.CPF, Cl.nome, p.conta, c.valor, c.data_emissao, c.Data_vencimento 
		     FROM Conta c, Pagamento p, Cliente Cl 
		     WHERE p.esta_pago = False AND
		         cl.cpf = p.Cliente_cpf AND 
		         c.Id_conta = p.conta
	LOOP
		IF tupla.data_vencimento < current_date THEN
		RAISE NOTICE 'Voce atrasou seu pagamento';
		UPDATE CONTA SET valor = valor*1.07 WHERE tupla.conta = conta.id_conta;
		RETURN;
		END IF;
	END LOOP;
	RETURN;
END $$ LANGUAGE 'plpgsql';
