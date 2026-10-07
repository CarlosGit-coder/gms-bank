CREATE OR REPLACE VIEW vw_clientes_contas AS
SELECT
	c.PK_id_clientes AS cliente_id,
	c.nome_clientes AS cliente_nome,
	c.cpf_clientes AS cliente_cpf,
	co.PK_id_contas AS conta_id,
	co.numero_contas As numero_conta,
	co.saldo_contas AS saldo,
	co.ativa_conta AS ativa
 FROM clientes c
 JOIN contas co
 ON co.FK_id_clientes = c.PK_id_clientes;

CREATE OR REPLACE VIEW vw_dashboard_ultimas_transacoes AS
SELECT
    t.PK_id_transacoes AS transacso_id,
    t.valor_transacoes AS valor_transacao,
    t.realizado_em_transacoes AS realizado_em,
    tt.PK_id_tipos_transacao AS id_tipos_transacao,
    tt.nome_tipos_transacao AS tipo_transacao,
    co.PK_id_contas AS id_conta,
    co.numero_contas As numero_conta
FROM transacoes t
JOIN tipos_transacao tt
ON t.FK_id_tipos_transacao = tt.PK_id_tipos_transacao
JOIN contas co
ON t.FK_id_conta_origem = co.PK_id_contas
ORDER BY realizado_em DESC LIMIT 10;

CREATE OR REPLACE VIEW vw_relatorio_maiores_saldos AS
SELECT
    co.PK_id_contas AS id_conta,
    co.numero_contas AS numero_conta,
    co.saldo_contas As saldo,
    c.PK_id_clientes AS id_clientes,
    c.nome_clientes As nome_clientes
FROM contas co
JOIN clientes c
ON co.FK_id_clientes = c.PK_id_clientes
ORDER BY saldo DESC NULLS LAST LIMIT 10;

CREATE OR REPLACE VIEW vw_relatorio_transacoes AS
SELECT
    t.PK_id_transacoes AS id_transacao,
    tt.nome_tipos_transacao AS tipo,
    co.numero_contas AS conta_origem,
    cd.numero_contas AS conta_destino,
    t.valor_transacoes AS valor,
    t.saldo_apos_transacoes AS saldo_apos,
    t.descricao_transacoes AS descricao,
    t.realizado_em_transacoes AS realizado_em
FROM transacoes t
JOIN tipos_transacao tt
ON tt.PK_id_tipos_transacao = t.FK_id_tipos_transacao
JOIN contas co
ON co.PK_id_contas = t.FK_id_conta_origem
LEFT JOIN contas cd
ON cd.PK_id_contas = t.FK_id_conta_destino
ORDER BY t.realizado_em_transacoes DESC;



 	