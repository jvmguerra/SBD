/* A primeira consulta tem o objetivo de mostrar quantos dependentes cada funcionário possui. */
	select f.nome,count(*)
		from funcionario f, dependente d
		where f.cod_func=d.cod_func
		group by f.nome
/* 2-A segunda consulta nos mostra a quantidade de servicos que estão pendentes, ou seja, servicos que foram requisitados pelos clientes e ainda não foram concluidos */
	SELECT count(*) as Servicos_pendentes
		FROM agenda_manutencao a
		WHERE a.realizado = false
/* 3-Como é importante ter facíl o acesso a informações de contato dos clientes a terceira consulta facilita essa visualização. */
	select nome,email,telefone1 from cliente
/* 4-A quarta consulta mostra dados de um cliente que possui uma conta disponível para pagamento. */
SELECT cl.CPF, Cl.nome, p.conta, c.valor, c.data_emissao, c.Data_vencimento 
		FROM Conta c, Pagamento p, Cliente Cl 
		WHERE p.esta_pago = False AND
		      cl.cpf = p.Cliente_cpf AND 
		      c.Id_conta = p.conta
/* 5-A quinta consulta mostra qual funcionário estará executando qual servico. Diferente da tabela realiza nesta consulta obtemos o nome do funcionário e do servico ao invés de números. */
	select Nome,tipo as Servico
		from realiza r, funcionario f, servico s
		where r.servico_realizado = s.nro_servico and
	    	  r.funcionario = f.cod_func
/* 6-Uma consulta simples para verificar a quantia de dinheiro arrecadada com o pagamento das contas. */
	select sum(c.valor) as Valor_recebido
		from conta c, pagamento p
		where p.conta = c.id_conta and
		      p.esta_pago = true
/* 7-A sétima consulta mostra a quantidade de funcionário por setores. */
	select (select count(*) from funcionario_manutencao) as quantidade_manutencao,
     	  (select count(*) from funcionario_engenharia) as quantidade_engenharia,
       	  (select count(*) from funcionario_rh) as quantidade_rh,
       	  (select count(*) from funcionario_ti) as quantidade_ti
/* 8-Mostra informações detalhadas sobre servicos que nao foram realizados ainda; */
	select c.Nome,c.cpf,s.tipo,a.data_agendamento
		from cliente c, servico s, agenda_manutencao a
		where s.nro_servico =  a.servico_id and
	     	  c.cpf = a.cliente_cpf and
	    	  a.realizado = false
