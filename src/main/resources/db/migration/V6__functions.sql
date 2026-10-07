CREATE OR REPLACE FUNCTION fn_buscar_transacoes_periodo(
       p_inicio TIMESTAMP,
       p_fim TIMESTAMP
)
RETURNS TABLE (
       id BIGINT,
       tipo VARCHAR,
       conta_origem BIGINT,
       conta_destino BIGINT,
       valor NUMERIC,
       descricao TEXT,
       realizado_em TIMESTAMP
)
LANGUAGE SQL
AS $$
SELECT
    t.pk_id_transacoes,
    tt.nome_tipos_transacao,
    t.fk_id_conta_origem,
    t.fk_id_conta_destino,
    t.valor_transacoes,
    t.descricao_transacoes,
    t.realizado_em_transacoes
FROM transacoes t
         JOIN tipos_transacao tt
              ON t.FK_id_tipos_transacao = tt.PK_id_tipos_transacao
WHERE t.realizado_em_transacoes >= p_inicio
  AND t.realizado_em_transacoes <= p_fim
ORDER BY t.realizado_em_transacoes DESC;
$$;

CREATE OR REPLACE FUNCTION fn_volume_total_transacoes()
RETURNS NUMERIC
LANGUAGE SQL
AS $$
SELECT COALESCE(SUM(transacoes.valor_transacoes),0)
FROM transacoes;
$$;