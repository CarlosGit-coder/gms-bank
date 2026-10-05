CREATE TABLE perfis (
                        PK_id_perfis BIGSERIAL PRIMARY KEY,
                        nome_perfis VARCHAR(250) NOT NULL UNIQUE,
                        descricao_perfis VARCHAR(300),
                        data_criacao_perfis TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE usuarios (
                          PK_id_usuarios BIGSERIAL PRIMARY KEY,
                          nome_usuarios VARCHAR(100) NOT NULL,
                          email_usuarios VARCHAR(100) NOT NULL UNIQUE,
                          cpf_usuarios VARCHAR(14) NOT NULL UNIQUE,
                          senha_hash VARCHAR(255) NOT NULL,
                          ativo_usuarios BOOLEAN DEFAULT TRUE,
                          ultimo_login TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                          criado_em_usuarios TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                          FK_perfil_id BIGINT NOT NULL REFERENCES perfis(PK_id_perfis)
);

CREATE TABLE auditoria_login (
                                 PK_id_auditoria BIGSERIAL PRIMARY KEY,
                                 ip_address_auditoria VARCHAR(45),
                                 sucesso_auditoria BOOLEAN NOT NULL,
                                 tentativa_em_auditoria TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                                 FK_usuario_id BIGINT REFERENCES usuarios(PK_id_usuarios)
);

CREATE TABLE clientes (
                          PK_id_clientes BIGSERIAL PRIMARY KEY,
                          nome_clientes VARCHAR(100) NOT NULL,
                          cpf_clientes VARCHAR(14) NOT NULL UNIQUE,
                          data_nascimento_clientes TIMESTAMP NOT NULL,
                          telefone_clientes VARCHAR(20),
                          email_clientes VARCHAR(100) UNIQUE,
                          endereco_clientes TEXT,
                          ativo_clientes BOOLEAN DEFAULT TRUE,
                          criado_em_clientes TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE tipos_conta (
                             PK_id_tipos_conta BIGSERIAL PRIMARY KEY,
                             nome_tipos_conta VARCHAR(50) NOT NULL UNIQUE,
                             descricao_tipos_conta TEXT,
                             rendimento_anual_tipos_conta NUMERIC(10,2) DEFAULT 0.00
);

CREATE TABLE contas (
                        PK_id_contas BIGSERIAL PRIMARY KEY,
                        numero_contas VARCHAR(20) NOT NULL UNIQUE,
                        saldo_contas DECIMAL(10,2) DEFAULT 0.00,
                        limite_contas DECIMAL(10,2) DEFAULT 0.00,
                        ativa_conta BOOLEAN DEFAULT TRUE,
                        criado_em_contas TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                        FK_tipos_contas BIGINT NOT NULL REFERENCES tipos_conta(PK_id_tipos_conta),
                        FK_id_clientes BIGINT NOT NULL REFERENCES clientes(PK_id_clientes)
);

CREATE TABLE tipos_transacao (
                                 PK_id_tipos_transacao BIGSERIAL PRIMARY KEY,
                                 nome_tipos_transacao VARCHAR(50) NOT NULL UNIQUE,
                                 descricao_tipos_transacao TEXT
);

CREATE TABLE transacoes (
                            PK_id_transacoes BIGSERIAL PRIMARY KEY,
                            valor_transacoes DECIMAL(10,2) NOT NULL CHECK (valor_transacoes > 0),
                            descricao_transacoes TEXT,
                            saldo_apos_transacoes DECIMAL(10,2) NOT NULL,
                            realizado_em_transacoes TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                            FK_id_conta_origem BIGINT NOT NULL REFERENCES contas(PK_id_contas),
                            FK_id_conta_destino BIGINT REFERENCES contas(PK_id_contas),
                            FK_id_tipos_transacao BIGINT NOT NULL REFERENCES tipos_transacao(PK_id_tipos_transacao)
);