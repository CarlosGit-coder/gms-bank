-- ============================================================
-- GMS BANK SYSTEM
-- DML - INSERTS E ATUALIZAÇÕES
-- PostgreSQL
-- ============================================================


-- ============================================================
-- Insert Tab1_Perfis
-- ============================================================

INSERT INTO perfis (nome_perfis, descricao_perfis)
VALUES ('ADMIN', 'Acesso total ao sistema');

INSERT INTO perfis (nome_perfis, descricao_perfis)
VALUES ('GERENTE', 'Acesso gerencial ao sistema');

INSERT INTO perfis (nome_perfis, descricao_perfis)
VALUES ('CAIXA', 'Acesso operacional basico ao sistema');


-- ============================================================
-- Insert Tab2_Usuarios
-- ============================================================

INSERT INTO usuarios (
    nome_usuarios,
    email_usuarios,
    cpf_usuarios,
    senha_hash,
    FK_perfil_id
)
VALUES (
    'Marcos Ribeiro',
    'marcosribeiro1899@gmail.com',
    '025.556.565-45',
    'senha123',
    1
);

INSERT INTO usuarios (
    nome_usuarios,
    email_usuarios,
    cpf_usuarios,
    senha_hash,
    FK_perfil_id
)
VALUES (
    'Arlyon José',
    'arlyonjose1999@gmail.com',
    '156.597.459-12',
    'senha123',
    2
);

UPDATE usuarios
SET senha_hash = 'e7d80ffeefa212b7c5c55700e4f7193e'
WHERE email_usuarios = 'marcosribeiro1899@gmail.com';


-- ============================================================
-- Insert Tab3_Auditoria_Login
-- ============================================================

-- Não há INSERT de dados de auditoria no README.


-- ============================================================
-- Insert Tab4_Clientes
-- ============================================================

INSERT INTO clientes (
    nome_clientes,
    cpf_clientes,
    data_nascimento_clientes,
    telefone_clientes,
    email_clientes,
    endereco_clientes
)
VALUES (
    'Carlos Gabriel',
    '044.034.743-22',
    '2006-07-20',
    '(86) 98816-6764',
    'carlosgabrielmonteiro2006@gmail.com',
    'Mocambinho'
);


-- ============================================================
-- Insert Tab5_Tipos_Conta
-- ============================================================

INSERT INTO tipos_conta (
    nome_tipos_conta,
    descricao_tipos_conta,
    rendimento_anual_tipos_conta
)
VALUES (
    'Conta Corrente',
    'Uso diário',
    0.00
);


-- ============================================================
-- Insert Tab6_Contas
-- ============================================================

INSERT INTO contas (
    numero_contas,
    saldo_contas,
    limite_contas,
    FK_tipos_contas,
    FK_id_clientes
)
VALUES (
    '0001-1',
    1000000.00,
    99999999.00,
    1,
    1
);


-- ============================================================
-- Insert Tab7_Tipos_Transacao
-- ============================================================

-- Não há INSERT de tipos de transação no README.


-- ============================================================
-- Insert Tab8_Transacoes
-- ============================================================

INSERT INTO transacoes (
    valor_transacoes,
    descricao_transacoes,
    saldo_apos_transacoes,
    FK_id_conta_origem,
    FK_id_tipos_transacao
)
VALUES (
    20.00,
    'Deposito mensal',
    1000020.00,
    1,
    2
);

UPDATE transacoes
SET saldo_apos_transacoes = 1000020.00
WHERE PK_id_transacoes = 1;
