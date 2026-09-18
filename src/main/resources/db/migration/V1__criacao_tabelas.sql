-- ============================================================
-- GMS BANK SYSTEM
-- DDL - CRIAÇÃO DAS TABELAS
-- PostgreSQL
-- ============================================================


-- ============================================================
-- Tab1_Perfis
-- ============================================================

CREATE TABLE perfis (
    PK_id_perfis SERIAL PRIMARY KEY,
    nome_perfis VARCHAR(250) NOT NULL UNIQUE,
    descricao_perfis VARCHAR(300),
    data_criacao_perfis TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- ============================================================
-- Tab2_Usuarios
-- ============================================================

CREATE TABLE usuarios (
    PK_id_usuarios SERIAL PRIMARY KEY,
    nome_usuarios VARCHAR(100) NOT NULL,
    email_usuarios VARCHAR(100) NOT NULL UNIQUE,
    cpf_usuarios VARCHAR(14) NOT NULL UNIQUE,
    senha_hash VARCHAR(255) NOT NULL,
    ativo_usuarios BOOLEAN DEFAULT TRUE,
    ultimo_login TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    criado_em_usuarios TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FK_perfil_id INT NOT NULL REFERENCES perfis(PK_id_perfis)
);


-- ============================================================
-- Tab3_Auditoria_Login
-- ============================================================

CREATE TABLE auditoria_login (
    PK_id_auditoria SERIAL PRIMARY KEY,
    ip_address_auditoria VARCHAR(45),
    sucesso_auditoria BOOLEAN NOT NULL,
    tentativa_em_auditoria TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FK_usuario_id INT REFERENCES usuarios(PK_id_usuarios)
);


-- ============================================================
-- Tab4_Clientes
-- ============================================================

CREATE TABLE clientes (
    PK_id_clientes SERIAL PRIMARY KEY,
    nome_clientes VARCHAR(100) NOT NULL,
    cpf_clientes VARCHAR(14) NOT NULL UNIQUE,
    data_nascimento_clientes DATE NOT NULL,
    telefone_clientes VARCHAR(20),
    email_clientes VARCHAR(100) UNIQUE,
    endereco_clientes TEXT,
    ativo_clientes BOOLEAN DEFAULT TRUE,
    criado_em_clientes TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- ============================================================
-- Tab5_Tipos_Conta
-- ============================================================

CREATE TABLE tipos_conta (
    PK_id_tipos_conta SERIAL PRIMARY KEY,
    nome_tipos_conta VARCHAR(50) NOT NULL UNIQUE,
    descricao_tipos_conta TEXT,
    rendimento_anual_tipos_conta NUMERIC(10,2) DEFAULT 0.00
);


-- ============================================================
-- Tab6_Contas
-- ============================================================

CREATE TABLE contas (
    PK_id_contas SERIAL PRIMARY KEY,
    numero_contas VARCHAR(20) NOT NULL UNIQUE,
    saldo_contas DECIMAL(10,2) DEFAULT 0.00,
    limite_contas DECIMAL(10,2) DEFAULT 0.00,
    ativa_conta BOOLEAN DEFAULT TRUE,
    criado_em_contas TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FK_tipos_contas INT NOT NULL REFERENCES tipos_conta(PK_id_tipos_conta),
    FK_id_clientes INT NOT NULL REFERENCES clientes(PK_id_clientes)
);


-- ============================================================
-- Tab7_Tipos_Transacao
-- ============================================================

CREATE TABLE tipos_transacao (
    PK_id_tipos_transacao SERIAL PRIMARY KEY,
    nome_tipos_transacao VARCHAR(50) NOT NULL UNIQUE,
    descricao_tipos_transacao TEXT
);


-- ============================================================
-- Tab8_Transacoes
-- ============================================================

CREATE TABLE transacoes (
    PK_id_transacoes SERIAL PRIMARY KEY,
    valor_transacoes DECIMAL(10,2) NOT NULL CHECK (valor_transacoes > 0),
    descricao_transacoes TEXT,
    saldo_apos_transacoes DECIMAL(10,2) NOT NULL,
    realizado_em_transacoes TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FK_id_conta_origem INT NOT NULL REFERENCES contas(PK_id_contas),
    FK_id_conta_destino INT REFERENCES contas(PK_id_contas),
    FK_id_tipos_transacao INT NOT NULL REFERENCES tipos_transacao(PK_id_tipos_transacao)
);
