CREATE OR REPLACE PROCEDURE pr_realizar_deposito(
       p_conta_id BIGINT,
       p_valor NUMERIC,
       p_descricao TEXT
)
LANGUAGE plpgsql
AS $$
DECLARE
       v_saldo NUMERIC;
       v_tipo BIGINT;
BEGIN
        IF p_valor <= 0 THEN
           RAISE EXCEPTION 'O valor da transação deve ser positivo';
        END iF;

SELECT tipos_transacao.PK_id_tipos_transacao INTO v_tipo
FROM tipos_transacao
WHERE nome_tipos_transacao = 'Deposito';

    IF v_tipo IS NULL THEN
       RAISE EXCEPTION 'Tipo de transação Deposito  não cadastrado';
    END IF;

SELECT saldo_contas INTO v_saldo
FROM contas
WHERE PK_id_contas = p_conta_id
AND ativa_conta = TRUE
FOR UPDATE;

IF NOT FOUND THEN
   RAISE EXCEPTION 'Conta de origem não encontrada ou inativa';
END IF;

UPDATE contas
SET saldo_contas = saldo_contas + p_valor
WHERE PK_id_contas = p_conta_id;

INSERT INTO transacoes (valor_transacoes,
                        descricao_transacoes,
                        saldo_apos_transacoes,
                        FK_id_conta_origem,
                        FK_id_tipos_transacao
)
SELECT
    p_valor,
    p_descricao,
    saldo_contas,
    p_conta_id,
    v_tipo
FROM contas
WHERE PK_id_contas = p_conta_id;
END;
$$;

CREATE OR REPLACE PROCEDURE pr_realizar_saque(
       p_conta_id BIGINT,
       p_valor NUMERIC,
       p_descricao TEXT
)
LANGUAGE plpgsql
AS $$
DECLARE
v_saldo NUMERIC;
       v_tipo BIGINT;
BEGIN
       IF p_valor <= 0 THEN
          RAISE EXCEPTION 'O valor da transação deve ser positivo';
END IF;

SELECT tipos_transacao.PK_id_tipos_transacao INTO v_tipo
FROM tipos_transacao
WHERE nome_tipos_transacao = 'Saque';

IF v_tipo IS NULL THEN
          RAISE EXCEPTION 'Tipo de transação Saque não cadastrado';
END IF;

SELECT saldo_contas INTO v_saldo
FROM contas
WHERE PK_id_contas = p_conta_id
  AND ativa_conta = TRUE
    FOR UPDATE;

IF NOT FOUND THEN
          RAISE EXCEPTION 'Conta de origem não encontrada ou inativa';
END IF;

       IF v_saldo < p_valor THEN
          RAISE EXCEPTION 'Saldo insuficiente para realizar o saque';
END IF;

UPDATE contas
SET saldo_contas = saldo_contas - p_valor
WHERE PK_id_contas = p_conta_id;

INSERT INTO transacoes (
    valor_transacoes,
    descricao_transacoes,
    saldo_apos_transacoes,
    FK_id_conta_origem,
    FK_id_tipos_transacao
)
SELECT
    p_valor,
    p_descricao,
    saldo_contas,
    p_conta_id,
    v_tipo
FROM contas
WHERE PK_id_contas = p_conta_id;

END;
$$;


CREATE OR REPLACE PROCEDURE pr_realizar_transferencia(
       p_conta_origem_id BIGINT,
       p_conta_destino_id BIGINT,
       p_valor NUMERIC,
       p_descricao TEXT
)
LANGUAGE plpgsql
AS $$
DECLARE
v_saldo NUMERIC;
       v_tipo BIGINT;
BEGIN
       IF p_valor <= 0 THEN
          RAISE EXCEPTION 'O valor da transação deve ser positivo';
END IF;

       IF p_conta_origem_id = p_conta_destino_id THEN
          RAISE EXCEPTION 'A conta de origem e destino não podem ser iguais';
END IF;

SELECT tipos_transacao.PK_id_tipos_transacao INTO v_tipo
FROM tipos_transacao
WHERE nome_tipos_transacao = 'Transferencia';

IF v_tipo IS NULL THEN
          RAISE EXCEPTION 'Tipo de transação Transferencia não cadastrado';
END IF;

SELECT saldo_contas INTO v_saldo
FROM contas
WHERE PK_id_contas = p_conta_origem_id
  AND ativa_conta = TRUE
    FOR UPDATE;

IF NOT FOUND THEN
          RAISE EXCEPTION 'Conta de origem não encontrada ou inativa';
END IF;

       IF v_saldo < p_valor THEN
          RAISE EXCEPTION 'Saldo insuficiente para realizar a transferência';
END IF;

       PERFORM 1
       FROM contas
       WHERE PK_id_contas = p_conta_destino_id
       AND ativa_conta = TRUE
       FOR UPDATE;

IF NOT FOUND THEN
          RAISE EXCEPTION 'Conta de destino não encontrada ou inativa';
END IF;

UPDATE contas
SET saldo_contas = saldo_contas - p_valor
WHERE PK_id_contas = p_conta_origem_id;

UPDATE contas
SET saldo_contas = saldo_contas + p_valor
WHERE PK_id_contas = p_conta_destino_id;

INSERT INTO transacoes (
    valor_transacoes,
    descricao_transacoes,
    saldo_apos_transacoes,
    FK_id_conta_origem,
    FK_id_conta_destino,
    FK_id_tipos_transacao
)
SELECT
    p_valor,
    p_descricao,
    saldo_contas,
    p_conta_origem_id,
    p_conta_destino_id,
    v_tipo
FROM contas
WHERE PK_id_contas = p_conta_origem_id;

END;
$$;
