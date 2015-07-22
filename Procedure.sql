/*
	A ideia do nosso stored procedure é de fazer uma verificação nas datas de vencimento das contas. Caso ele
	encontre alguma conta que está vencida ele aplica um juros de 7% no valor da conta. Para cada tupla no resultado
	da seleção executada que retorna os dados do cliente e da conta que ainda nao foi paga o procedure vai verificar
	as datas de vencimento caso a data de vencimento seja menor que a data atual ele aplica o juros.
*/
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
