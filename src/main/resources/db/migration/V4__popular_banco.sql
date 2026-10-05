-- V4__popular_banco.sql
-- Dados adicionais para testes de relatorios. Preserva V1/V2/V3.

-- 29 usuarios novos (total esperado: 30)

INSERT INTO usuarios (nome_usuarios,email_usuarios,cpf_usuarios,senha_hash,FK_perfil_id)
SELECT 'Ana Carolina Silva', 'ana.silva@gmsbank.com', '111.111.111-01', 'e7d80ffeefa212b7c5c55700e4f7193e', PK_id_perfis FROM perfis WHERE nome_perfis='ADMIN';

INSERT INTO usuarios (nome_usuarios,email_usuarios,cpf_usuarios,senha_hash,FK_perfil_id)
SELECT 'Joao Pedro Santos', 'joao.santos@gmsbank.com', '111.111.111-02', 'e7d80ffeefa212b7c5c55700e4f7193e', PK_id_perfis FROM perfis WHERE nome_perfis='GERENTE';

INSERT INTO usuarios (nome_usuarios,email_usuarios,cpf_usuarios,senha_hash,FK_perfil_id)
SELECT 'Mariana Oliveira', 'mariana.oliveira@gmsbank.com', '111.111.111-03', 'e7d80ffeefa212b7c5c55700e4f7193e', PK_id_perfis FROM perfis WHERE nome_perfis='GERENTE';

INSERT INTO usuarios (nome_usuarios,email_usuarios,cpf_usuarios,senha_hash,FK_perfil_id)
SELECT 'Lucas Almeida', 'lucas.almeida@gmsbank.com', '111.111.111-04', 'e7d80ffeefa212b7c5c55700e4f7193e', PK_id_perfis FROM perfis WHERE nome_perfis='CAIXA';

INSERT INTO usuarios (nome_usuarios,email_usuarios,cpf_usuarios,senha_hash,FK_perfil_id)
SELECT 'Beatriz Costa', 'beatriz.costa@gmsbank.com', '111.111.111-05', 'e7d80ffeefa212b7c5c55700e4f7193e', PK_id_perfis FROM perfis WHERE nome_perfis='CAIXA';

INSERT INTO usuarios (nome_usuarios,email_usuarios,cpf_usuarios,senha_hash,FK_perfil_id)
SELECT 'Rafael Martins', 'rafael.martins@gmsbank.com', '111.111.111-06', 'e7d80ffeefa212b7c5c55700e4f7193e', PK_id_perfis FROM perfis WHERE nome_perfis='CAIXA';

INSERT INTO usuarios (nome_usuarios,email_usuarios,cpf_usuarios,senha_hash,FK_perfil_id)
SELECT 'Juliana Ferreira', 'juliana.ferreira@gmsbank.com', '111.111.111-07', 'e7d80ffeefa212b7c5c55700e4f7193e', PK_id_perfis FROM perfis WHERE nome_perfis='CAIXA';

INSERT INTO usuarios (nome_usuarios,email_usuarios,cpf_usuarios,senha_hash,FK_perfil_id)
SELECT 'Gabriel Souza', 'gabriel.souza@gmsbank.com', '111.111.111-08', 'e7d80ffeefa212b7c5c55700e4f7193e', PK_id_perfis FROM perfis WHERE nome_perfis='CAIXA';

INSERT INTO usuarios (nome_usuarios,email_usuarios,cpf_usuarios,senha_hash,FK_perfil_id)
SELECT 'Larissa Rocha', 'larissa.rocha@gmsbank.com', '111.111.111-09', 'e7d80ffeefa212b7c5c55700e4f7193e', PK_id_perfis FROM perfis WHERE nome_perfis='CAIXA';

INSERT INTO usuarios (nome_usuarios,email_usuarios,cpf_usuarios,senha_hash,FK_perfil_id)
SELECT 'Pedro Lima', 'pedro.lima@gmsbank.com', '111.111.111-10', 'e7d80ffeefa212b7c5c55700e4f7193e', PK_id_perfis FROM perfis WHERE nome_perfis='CAIXA';

INSERT INTO usuarios (nome_usuarios,email_usuarios,cpf_usuarios,senha_hash,FK_perfil_id)
SELECT 'Camila Mendes', 'camila.mendes@gmsbank.com', '111.111.111-11', 'e7d80ffeefa212b7c5c55700e4f7193e', PK_id_perfis FROM perfis WHERE nome_perfis='CAIXA';

INSERT INTO usuarios (nome_usuarios,email_usuarios,cpf_usuarios,senha_hash,FK_perfil_id)
SELECT 'Thiago Barbosa', 'thiago.barbosa@gmsbank.com', '111.111.111-12', 'e7d80ffeefa212b7c5c55700e4f7193e', PK_id_perfis FROM perfis WHERE nome_perfis='CAIXA';

INSERT INTO usuarios (nome_usuarios,email_usuarios,cpf_usuarios,senha_hash,FK_perfil_id)
SELECT 'Fernanda Nunes', 'fernanda.nunes@gmsbank.com', '111.111.111-13', 'e7d80ffeefa212b7c5c55700e4f7193e', PK_id_perfis FROM perfis WHERE nome_perfis='CAIXA';

INSERT INTO usuarios (nome_usuarios,email_usuarios,cpf_usuarios,senha_hash,FK_perfil_id)
SELECT 'Diego Ramos', 'diego.ramos@gmsbank.com', '111.111.111-14', 'e7d80ffeefa212b7c5c55700e4f7193e', PK_id_perfis FROM perfis WHERE nome_perfis='CAIXA';

INSERT INTO usuarios (nome_usuarios,email_usuarios,cpf_usuarios,senha_hash,FK_perfil_id)
SELECT 'Amanda Castro', 'amanda.castro@gmsbank.com', '111.111.111-15', 'e7d80ffeefa212b7c5c55700e4f7193e', PK_id_perfis FROM perfis WHERE nome_perfis='CAIXA';

INSERT INTO usuarios (nome_usuarios,email_usuarios,cpf_usuarios,senha_hash,FK_perfil_id)
SELECT 'Bruno Teixeira', 'bruno.teixeira@gmsbank.com', '111.111.111-16', 'e7d80ffeefa212b7c5c55700e4f7193e', PK_id_perfis FROM perfis WHERE nome_perfis='CAIXA';

INSERT INTO usuarios (nome_usuarios,email_usuarios,cpf_usuarios,senha_hash,FK_perfil_id)
SELECT 'Isabela Monteiro', 'isabela.monteiro@gmsbank.com', '111.111.111-17', 'e7d80ffeefa212b7c5c55700e4f7193e', PK_id_perfis FROM perfis WHERE nome_perfis='CAIXA';

INSERT INTO usuarios (nome_usuarios,email_usuarios,cpf_usuarios,senha_hash,FK_perfil_id)
SELECT 'Vinicius Carvalho', 'vinicius.carvalho@gmsbank.com', '111.111.111-18', 'e7d80ffeefa212b7c5c55700e4f7193e', PK_id_perfis FROM perfis WHERE nome_perfis='CAIXA';

INSERT INTO usuarios (nome_usuarios,email_usuarios,cpf_usuarios,senha_hash,FK_perfil_id)
SELECT 'Leticia Dias', 'leticia.dias@gmsbank.com', '111.111.111-19', 'e7d80ffeefa212b7c5c55700e4f7193e', PK_id_perfis FROM perfis WHERE nome_perfis='CAIXA';

INSERT INTO usuarios (nome_usuarios,email_usuarios,cpf_usuarios,senha_hash,FK_perfil_id)
SELECT 'Gustavo Freitas', 'gustavo.freitas@gmsbank.com', '111.111.111-20', 'e7d80ffeefa212b7c5c55700e4f7193e', PK_id_perfis FROM perfis WHERE nome_perfis='CAIXA';

INSERT INTO usuarios (nome_usuarios,email_usuarios,cpf_usuarios,senha_hash,FK_perfil_id)
SELECT 'Nathalia Lopes', 'nathalia.lopes@gmsbank.com', '111.111.111-21', 'e7d80ffeefa212b7c5c55700e4f7193e', PK_id_perfis FROM perfis WHERE nome_perfis='CAIXA';

INSERT INTO usuarios (nome_usuarios,email_usuarios,cpf_usuarios,senha_hash,FK_perfil_id)
SELECT 'Eduardo Vieira', 'eduardo.vieira@gmsbank.com', '111.111.111-22', 'e7d80ffeefa212b7c5c55700e4f7193e', PK_id_perfis FROM perfis WHERE nome_perfis='CAIXA';

INSERT INTO usuarios (nome_usuarios,email_usuarios,cpf_usuarios,senha_hash,FK_perfil_id)
SELECT 'Sofia Martins', 'sofia.martins@gmsbank.com', '111.111.111-23', 'e7d80ffeefa212b7c5c55700e4f7193e', PK_id_perfis FROM perfis WHERE nome_perfis='CAIXA';

INSERT INTO usuarios (nome_usuarios,email_usuarios,cpf_usuarios,senha_hash,FK_perfil_id)
SELECT 'Renato Alves', 'renato.alves@gmsbank.com', '111.111.111-24', 'e7d80ffeefa212b7c5c55700e4f7193e', PK_id_perfis FROM perfis WHERE nome_perfis='CAIXA';

INSERT INTO usuarios (nome_usuarios,email_usuarios,cpf_usuarios,senha_hash,FK_perfil_id)
SELECT 'Clara Moreira', 'clara.moreira@gmsbank.com', '111.111.111-25', 'e7d80ffeefa212b7c5c55700e4f7193e', PK_id_perfis FROM perfis WHERE nome_perfis='CAIXA';

INSERT INTO usuarios (nome_usuarios,email_usuarios,cpf_usuarios,senha_hash,FK_perfil_id)
SELECT 'Henrique Duarte', 'henrique.duarte@gmsbank.com', '111.111.111-26', 'e7d80ffeefa212b7c5c55700e4f7193e', PK_id_perfis FROM perfis WHERE nome_perfis='CAIXA';

INSERT INTO usuarios (nome_usuarios,email_usuarios,cpf_usuarios,senha_hash,FK_perfil_id)
SELECT 'Bianca Cardoso', 'bianca.cardoso@gmsbank.com', '111.111.111-27', 'e7d80ffeefa212b7c5c55700e4f7193e', PK_id_perfis FROM perfis WHERE nome_perfis='CAIXA';

INSERT INTO usuarios (nome_usuarios,email_usuarios,cpf_usuarios,senha_hash,FK_perfil_id)
SELECT 'Murilo Batista', 'murilo.batista@gmsbank.com', '111.111.111-28', 'e7d80ffeefa212b7c5c55700e4f7193e', PK_id_perfis FROM perfis WHERE nome_perfis='CAIXA';

INSERT INTO usuarios (nome_usuarios,email_usuarios,cpf_usuarios,senha_hash,FK_perfil_id)
SELECT 'Alice Correia', 'alice.correia@gmsbank.com', '111.111.111-29', 'e7d80ffeefa212b7c5c55700e4f7193e', PK_id_perfis FROM perfis WHERE nome_perfis='CAIXA';

-- 39 clientes novos
INSERT INTO clientes (nome_clientes,cpf_clientes,data_nascimento_clientes,telefone_clientes,email_clientes,endereco_clientes) VALUES
                                                                                                                                  ('Ana Carolina Silva', '222.222.222-01', '1991-02-02', '(86) 98811-1001', 'ana_carolina_silva@email.com', 'Rua de Teste, 1'),
                                                                                                                                  ('Joao Pedro Santos', '222.222.222-02', '1992-03-03', '(86) 98811-1002', 'joao_pedro_santos@email.com', 'Rua de Teste, 2'),
                                                                                                                                  ('Mariana Oliveira', '222.222.222-03', '1993-04-04', '(86) 98811-1003', 'mariana_oliveira@email.com', 'Rua de Teste, 3'),
                                                                                                                                  ('Lucas Almeida', '222.222.222-04', '1994-05-05', '(86) 98811-1004', 'lucas_almeida@email.com', 'Rua de Teste, 4'),
                                                                                                                                  ('Beatriz Costa', '222.222.222-05', '1995-06-06', '(86) 98811-1005', 'beatriz_costa@email.com', 'Rua de Teste, 5'),
                                                                                                                                  ('Rafael Martins', '222.222.222-06', '1996-07-07', '(86) 98811-1006', 'rafael_martins@email.com', 'Rua de Teste, 6'),
                                                                                                                                  ('Juliana Ferreira', '222.222.222-07', '1997-08-08', '(86) 98811-1007', 'juliana_ferreira@email.com', 'Rua de Teste, 7'),
                                                                                                                                  ('Gabriel Souza', '222.222.222-08', '1998-09-09', '(86) 98811-1008', 'gabriel_souza@email.com', 'Rua de Teste, 8'),
                                                                                                                                  ('Larissa Rocha', '222.222.222-09', '1999-10-10', '(86) 98811-1009', 'larissa_rocha@email.com', 'Rua de Teste, 9'),
                                                                                                                                  ('Pedro Lima', '222.222.222-10', '1990-11-11', '(86) 98811-1010', 'pedro_lima@email.com', 'Rua de Teste, 10'),
                                                                                                                                  ('Camila Mendes', '222.222.222-11', '1991-12-12', '(86) 98811-1011', 'camila_mendes@email.com', 'Rua de Teste, 11'),
                                                                                                                                  ('Thiago Barbosa', '222.222.222-12', '1992-01-13', '(86) 98811-1012', 'thiago_barbosa@email.com', 'Rua de Teste, 12'),
                                                                                                                                  ('Fernanda Nunes', '222.222.222-13', '1993-02-14', '(86) 98811-1013', 'fernanda_nunes@email.com', 'Rua de Teste, 13'),
                                                                                                                                  ('Diego Ramos', '222.222.222-14', '1994-03-15', '(86) 98811-1014', 'diego_ramos@email.com', 'Rua de Teste, 14'),
                                                                                                                                  ('Amanda Castro', '222.222.222-15', '1995-04-16', '(86) 98811-1015', 'amanda_castro@email.com', 'Rua de Teste, 15'),
                                                                                                                                  ('Bruno Teixeira', '222.222.222-16', '1996-05-17', '(86) 98811-1016', 'bruno_teixeira@email.com', 'Rua de Teste, 16'),
                                                                                                                                  ('Isabela Monteiro', '222.222.222-17', '1997-06-18', '(86) 98811-1017', 'isabela_monteiro@email.com', 'Rua de Teste, 17'),
                                                                                                                                  ('Vinicius Carvalho', '222.222.222-18', '1998-07-19', '(86) 98811-1018', 'vinicius_carvalho@email.com', 'Rua de Teste, 18'),
                                                                                                                                  ('Leticia Dias', '222.222.222-19', '1999-08-20', '(86) 98811-1019', 'leticia_dias@email.com', 'Rua de Teste, 19'),
                                                                                                                                  ('Gustavo Freitas', '222.222.222-20', '1990-09-21', '(86) 98811-1020', 'gustavo_freitas@email.com', 'Rua de Teste, 20'),
                                                                                                                                  ('Nathalia Lopes', '222.222.222-21', '1991-10-22', '(86) 98811-1021', 'nathalia_lopes@email.com', 'Rua de Teste, 21'),
                                                                                                                                  ('Eduardo Vieira', '222.222.222-22', '1992-11-23', '(86) 98811-1022', 'eduardo_vieira@email.com', 'Rua de Teste, 22'),
                                                                                                                                  ('Sofia Martins', '222.222.222-23', '1993-12-24', '(86) 98811-1023', 'sofia_martins@email.com', 'Rua de Teste, 23'),
                                                                                                                                  ('Renato Alves', '222.222.222-24', '1994-01-25', '(86) 98811-1024', 'renato_alves@email.com', 'Rua de Teste, 24'),
                                                                                                                                  ('Clara Moreira', '222.222.222-25', '1995-02-26', '(86) 98811-1025', 'clara_moreira@email.com', 'Rua de Teste, 25'),
                                                                                                                                  ('Henrique Duarte', '222.222.222-26', '1996-03-27', '(86) 98811-1026', 'henrique_duarte@email.com', 'Rua de Teste, 26'),
                                                                                                                                  ('Bianca Cardoso', '222.222.222-27', '1997-04-01', '(86) 98811-1027', 'bianca_cardoso@email.com', 'Rua de Teste, 27'),
                                                                                                                                  ('Murilo Batista', '222.222.222-28', '1998-05-02', '(86) 98811-1028', 'murilo_batista@email.com', 'Rua de Teste, 28'),
                                                                                                                                  ('Alice Correia', '222.222.222-29', '1999-06-03', '(86) 98811-1029', 'alice_correia@email.com', 'Rua de Teste, 29');

-- 39 contas novas
INSERT INTO contas (numero_contas,saldo_contas,limite_contas,FK_tipos_contas,FK_id_clientes)
SELECT '0002-1', 2450.00, 1000.00, t.PK_id_tipos_conta, c.PK_id_clientes FROM tipos_conta t CROSS JOIN clientes c WHERE t.nome_tipos_conta='Conta Corrente' AND c.cpf_clientes='222.222.222-01';

INSERT INTO contas (numero_contas,saldo_contas,limite_contas,FK_tipos_contas,FK_id_clientes)
SELECT '0003-1', 18750.50, 1500.00, t.PK_id_tipos_conta, c.PK_id_clientes FROM tipos_conta t CROSS JOIN clientes c WHERE t.nome_tipos_conta='Conta Corrente' AND c.cpf_clientes='222.222.222-02';

INSERT INTO contas (numero_contas,saldo_contas,limite_contas,FK_tipos_contas,FK_id_clientes)
SELECT '0004-1', 820.75, 2000.00, t.PK_id_tipos_conta, c.PK_id_clientes FROM tipos_conta t CROSS JOIN clientes c WHERE t.nome_tipos_conta='Conta Corrente' AND c.cpf_clientes='222.222.222-03';

INSERT INTO contas (numero_contas,saldo_contas,limite_contas,FK_tipos_contas,FK_id_clientes)
SELECT '0005-1', 34200.00, 2500.00, t.PK_id_tipos_conta, c.PK_id_clientes FROM tipos_conta t CROSS JOIN clientes c WHERE t.nome_tipos_conta='Conta Corrente' AND c.cpf_clientes='222.222.222-04';

INSERT INTO contas (numero_contas,saldo_contas,limite_contas,FK_tipos_contas,FK_id_clientes)
SELECT '0006-1', 5600.25, 3000.00, t.PK_id_tipos_conta, c.PK_id_clientes FROM tipos_conta t CROSS JOIN clientes c WHERE t.nome_tipos_conta='Conta Corrente' AND c.cpf_clientes='222.222.222-05';

INSERT INTO contas (numero_contas,saldo_contas,limite_contas,FK_tipos_contas,FK_id_clientes)
SELECT '0007-1', 910.40, 3500.00, t.PK_id_tipos_conta, c.PK_id_clientes FROM tipos_conta t CROSS JOIN clientes c WHERE t.nome_tipos_conta='Conta Corrente' AND c.cpf_clientes='222.222.222-06';

INSERT INTO contas (numero_contas,saldo_contas,limite_contas,FK_tipos_contas,FK_id_clientes)
SELECT '0008-1', 12600.00, 4000.00, t.PK_id_tipos_conta, c.PK_id_clientes FROM tipos_conta t CROSS JOIN clientes c WHERE t.nome_tipos_conta='Conta Corrente' AND c.cpf_clientes='222.222.222-07';

INSERT INTO contas (numero_contas,saldo_contas,limite_contas,FK_tipos_contas,FK_id_clientes)
SELECT '0009-1', 330.99, 500.00, t.PK_id_tipos_conta, c.PK_id_clientes FROM tipos_conta t CROSS JOIN clientes c WHERE t.nome_tipos_conta='Conta Corrente' AND c.cpf_clientes='222.222.222-08';

INSERT INTO contas (numero_contas,saldo_contas,limite_contas,FK_tipos_contas,FK_id_clientes)
SELECT '0010-1', 7250.00, 1000.00, t.PK_id_tipos_conta, c.PK_id_clientes FROM tipos_conta t CROSS JOIN clientes c WHERE t.nome_tipos_conta='Conta Corrente' AND c.cpf_clientes='222.222.222-09';

INSERT INTO contas (numero_contas,saldo_contas,limite_contas,FK_tipos_contas,FK_id_clientes)
SELECT '0011-1', 1540.30, 1500.00, t.PK_id_tipos_conta, c.PK_id_clientes FROM tipos_conta t CROSS JOIN clientes c WHERE t.nome_tipos_conta='Conta Corrente' AND c.cpf_clientes='222.222.222-10';

INSERT INTO contas (numero_contas,saldo_contas,limite_contas,FK_tipos_contas,FK_id_clientes)
SELECT '0012-1', 48600.00, 2000.00, t.PK_id_tipos_conta, c.PK_id_clientes FROM tipos_conta t CROSS JOIN clientes c WHERE t.nome_tipos_conta='Conta Corrente' AND c.cpf_clientes='222.222.222-11';

INSERT INTO contas (numero_contas,saldo_contas,limite_contas,FK_tipos_contas,FK_id_clientes)
SELECT '0013-1', 2300.80, 2500.00, t.PK_id_tipos_conta, c.PK_id_clientes FROM tipos_conta t CROSS JOIN clientes c WHERE t.nome_tipos_conta='Conta Corrente' AND c.cpf_clientes='222.222.222-12';

INSERT INTO contas (numero_contas,saldo_contas,limite_contas,FK_tipos_contas,FK_id_clientes)
SELECT '0014-1', 6750.00, 3000.00, t.PK_id_tipos_conta, c.PK_id_clientes FROM tipos_conta t CROSS JOIN clientes c WHERE t.nome_tipos_conta='Conta Corrente' AND c.cpf_clientes='222.222.222-13';

INSERT INTO contas (numero_contas,saldo_contas,limite_contas,FK_tipos_contas,FK_id_clientes)
SELECT '0015-1', 11900.45, 3500.00, t.PK_id_tipos_conta, c.PK_id_clientes FROM tipos_conta t CROSS JOIN clientes c WHERE t.nome_tipos_conta='Conta Corrente' AND c.cpf_clientes='222.222.222-14';

INSERT INTO contas (numero_contas,saldo_contas,limite_contas,FK_tipos_contas,FK_id_clientes)
SELECT '0016-1', 450.00, 4000.00, t.PK_id_tipos_conta, c.PK_id_clientes FROM tipos_conta t CROSS JOIN clientes c WHERE t.nome_tipos_conta='Conta Corrente' AND c.cpf_clientes='222.222.222-15';

INSERT INTO contas (numero_contas,saldo_contas,limite_contas,FK_tipos_contas,FK_id_clientes)
SELECT '0017-1', 28900.00, 500.00, t.PK_id_tipos_conta, c.PK_id_clientes FROM tipos_conta t CROSS JOIN clientes c WHERE t.nome_tipos_conta='Conta Corrente' AND c.cpf_clientes='222.222.222-16';

INSERT INTO contas (numero_contas,saldo_contas,limite_contas,FK_tipos_contas,FK_id_clientes)
SELECT '0018-1', 3600.20, 1000.00, t.PK_id_tipos_conta, c.PK_id_clientes FROM tipos_conta t CROSS JOIN clientes c WHERE t.nome_tipos_conta='Conta Corrente' AND c.cpf_clientes='222.222.222-17';

INSERT INTO contas (numero_contas,saldo_contas,limite_contas,FK_tipos_contas,FK_id_clientes)
SELECT '0019-1', 14250.00, 1500.00, t.PK_id_tipos_conta, c.PK_id_clientes FROM tipos_conta t CROSS JOIN clientes c WHERE t.nome_tipos_conta='Conta Corrente' AND c.cpf_clientes='222.222.222-18';

INSERT INTO contas (numero_contas,saldo_contas,limite_contas,FK_tipos_contas,FK_id_clientes)
SELECT '0020-1', 780.10, 2000.00, t.PK_id_tipos_conta, c.PK_id_clientes FROM tipos_conta t CROSS JOIN clientes c WHERE t.nome_tipos_conta='Conta Corrente' AND c.cpf_clientes='222.222.222-19';

INSERT INTO contas (numero_contas,saldo_contas,limite_contas,FK_tipos_contas,FK_id_clientes)
SELECT '0021-1', 22100.00, 2500.00, t.PK_id_tipos_conta, c.PK_id_clientes FROM tipos_conta t CROSS JOIN clientes c WHERE t.nome_tipos_conta='Conta Corrente' AND c.cpf_clientes='222.222.222-20';

INSERT INTO contas (numero_contas,saldo_contas,limite_contas,FK_tipos_contas,FK_id_clientes)
SELECT '0022-1', 1940.75, 3000.00, t.PK_id_tipos_conta, c.PK_id_clientes FROM tipos_conta t CROSS JOIN clientes c WHERE t.nome_tipos_conta='Conta Corrente' AND c.cpf_clientes='222.222.222-21';

INSERT INTO contas (numero_contas,saldo_contas,limite_contas,FK_tipos_contas,FK_id_clientes)
SELECT '0023-1', 9800.00, 3500.00, t.PK_id_tipos_conta, c.PK_id_clientes FROM tipos_conta t CROSS JOIN clientes c WHERE t.nome_tipos_conta='Conta Corrente' AND c.cpf_clientes='222.222.222-22';

INSERT INTO contas (numero_contas,saldo_contas,limite_contas,FK_tipos_contas,FK_id_clientes)
SELECT '0024-1', 3100.50, 4000.00, t.PK_id_tipos_conta, c.PK_id_clientes FROM tipos_conta t CROSS JOIN clientes c WHERE t.nome_tipos_conta='Conta Corrente' AND c.cpf_clientes='222.222.222-23';

INSERT INTO contas (numero_contas,saldo_contas,limite_contas,FK_tipos_contas,FK_id_clientes)
SELECT '0025-1', 16400.00, 500.00, t.PK_id_tipos_conta, c.PK_id_clientes FROM tipos_conta t CROSS JOIN clientes c WHERE t.nome_tipos_conta='Conta Corrente' AND c.cpf_clientes='222.222.222-24';

INSERT INTO contas (numero_contas,saldo_contas,limite_contas,FK_tipos_contas,FK_id_clientes)
SELECT '0026-1', 670.90, 1000.00, t.PK_id_tipos_conta, c.PK_id_clientes FROM tipos_conta t CROSS JOIN clientes c WHERE t.nome_tipos_conta='Conta Corrente' AND c.cpf_clientes='222.222.222-25';

INSERT INTO contas (numero_contas,saldo_contas,limite_contas,FK_tipos_contas,FK_id_clientes)
SELECT '0027-1', 31750.00, 1500.00, t.PK_id_tipos_conta, c.PK_id_clientes FROM tipos_conta t CROSS JOIN clientes c WHERE t.nome_tipos_conta='Conta Corrente' AND c.cpf_clientes='222.222.222-26';

INSERT INTO contas (numero_contas,saldo_contas,limite_contas,FK_tipos_contas,FK_id_clientes)
SELECT '0028-1', 4280.35, 2000.00, t.PK_id_tipos_conta, c.PK_id_clientes FROM tipos_conta t CROSS JOIN clientes c WHERE t.nome_tipos_conta='Conta Corrente' AND c.cpf_clientes='222.222.222-27';

INSERT INTO contas (numero_contas,saldo_contas,limite_contas,FK_tipos_contas,FK_id_clientes)
SELECT '0029-1', 8950.00, 2500.00, t.PK_id_tipos_conta, c.PK_id_clientes FROM tipos_conta t CROSS JOIN clientes c WHERE t.nome_tipos_conta='Conta Corrente' AND c.cpf_clientes='222.222.222-28';

INSERT INTO contas (numero_contas,saldo_contas,limite_contas,FK_tipos_contas,FK_id_clientes)
SELECT '0030-1', 1250.60, 3000.00, t.PK_id_tipos_conta, c.PK_id_clientes FROM tipos_conta t CROSS JOIN clientes c WHERE t.nome_tipos_conta='Conta Corrente' AND c.cpf_clientes='222.222.222-29';

INSERT INTO contas (numero_contas,saldo_contas,limite_contas,FK_tipos_contas,FK_id_clientes)
SELECT '0031-1', 25300.00, 3500.00, t.PK_id_tipos_conta, c.PK_id_clientes FROM tipos_conta t CROSS JOIN clientes c WHERE t.nome_tipos_conta='Conta Corrente' AND c.cpf_clientes='222.222.222-30';

INSERT INTO contas (numero_contas,saldo_contas,limite_contas,FK_tipos_contas,FK_id_clientes)
SELECT '0032-1', 3700.00, 4000.00, t.PK_id_tipos_conta, c.PK_id_clientes FROM tipos_conta t CROSS JOIN clientes c WHERE t.nome_tipos_conta='Conta Corrente' AND c.cpf_clientes='222.222.222-31';

INSERT INTO contas (numero_contas,saldo_contas,limite_contas,FK_tipos_contas,FK_id_clientes)
SELECT '0033-1', 6800.45, 500.00, t.PK_id_tipos_conta, c.PK_id_clientes FROM tipos_conta t CROSS JOIN clientes c WHERE t.nome_tipos_conta='Conta Corrente' AND c.cpf_clientes='222.222.222-32';

INSERT INTO contas (numero_contas,saldo_contas,limite_contas,FK_tipos_contas,FK_id_clientes)
SELECT '0034-1', 11200.00, 1000.00, t.PK_id_tipos_conta, c.PK_id_clientes FROM tipos_conta t CROSS JOIN clientes c WHERE t.nome_tipos_conta='Conta Corrente' AND c.cpf_clientes='222.222.222-33';

INSERT INTO contas (numero_contas,saldo_contas,limite_contas,FK_tipos_contas,FK_id_clientes)
SELECT '0035-1', 920.00, 1500.00, t.PK_id_tipos_conta, c.PK_id_clientes FROM tipos_conta t CROSS JOIN clientes c WHERE t.nome_tipos_conta='Conta Corrente' AND c.cpf_clientes='222.222.222-34';

INSERT INTO contas (numero_contas,saldo_contas,limite_contas,FK_tipos_contas,FK_id_clientes)
SELECT '0036-1', 19800.00, 2000.00, t.PK_id_tipos_conta, c.PK_id_clientes FROM tipos_conta t CROSS JOIN clientes c WHERE t.nome_tipos_conta='Conta Corrente' AND c.cpf_clientes='222.222.222-35';

INSERT INTO contas (numero_contas,saldo_contas,limite_contas,FK_tipos_contas,FK_id_clientes)
SELECT '0037-1', 2860.75, 2500.00, t.PK_id_tipos_conta, c.PK_id_clientes FROM tipos_conta t CROSS JOIN clientes c WHERE t.nome_tipos_conta='Conta Corrente' AND c.cpf_clientes='222.222.222-36';

INSERT INTO contas (numero_contas,saldo_contas,limite_contas,FK_tipos_contas,FK_id_clientes)
SELECT '0038-1', 7400.00, 3000.00, t.PK_id_tipos_conta, c.PK_id_clientes FROM tipos_conta t CROSS JOIN clientes c WHERE t.nome_tipos_conta='Conta Corrente' AND c.cpf_clientes='222.222.222-37';

INSERT INTO contas (numero_contas,saldo_contas,limite_contas,FK_tipos_contas,FK_id_clientes)
SELECT '0039-1', 5200.25, 3500.00, t.PK_id_tipos_conta, c.PK_id_clientes FROM tipos_conta t CROSS JOIN clientes c WHERE t.nome_tipos_conta='Conta Corrente' AND c.cpf_clientes='222.222.222-38';

INSERT INTO contas (numero_contas,saldo_contas,limite_contas,FK_tipos_contas,FK_id_clientes)
SELECT '0040-1', 15300.00, 4000.00, t.PK_id_tipos_conta, c.PK_id_clientes FROM tipos_conta t CROSS JOIN clientes c WHERE t.nome_tipos_conta='Conta Corrente' AND c.cpf_clientes='222.222.222-39';

-- 100 transacoes novas (56 transferencias + 44 depositos)

-- Transferencias
INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 125.00, 'Transferencia de teste', d.saldo_contas, '2026-09-02 09:07:00', o.PK_id_contas, d.PK_id_contas, t.PK_id_tipos_transacao FROM contas o CROSS JOIN contas d CROSS JOIN tipos_transacao t WHERE o.numero_contas='0002-1' AND d.numero_contas='0005-1' AND t.nome_tipos_transacao='Transferencia';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 150.00, 'Transferencia de teste', d.saldo_contas, '2026-09-03 10:14:00', o.PK_id_contas, d.PK_id_contas, t.PK_id_tipos_transacao FROM contas o CROSS JOIN contas d CROSS JOIN tipos_transacao t WHERE o.numero_contas='0003-1' AND d.numero_contas='0012-1' AND t.nome_tipos_transacao='Transferencia';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 175.00, 'Transferencia de teste', d.saldo_contas, '2026-09-04 11:21:00', o.PK_id_contas, d.PK_id_contas, t.PK_id_tipos_transacao FROM contas o CROSS JOIN contas d CROSS JOIN tipos_transacao t WHERE o.numero_contas='0004-1' AND d.numero_contas='0019-1' AND t.nome_tipos_transacao='Transferencia';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 200.00, 'Transferencia de teste', d.saldo_contas, '2026-09-05 12:28:00', o.PK_id_contas, d.PK_id_contas, t.PK_id_tipos_transacao FROM contas o CROSS JOIN contas d CROSS JOIN tipos_transacao t WHERE o.numero_contas='0005-1' AND d.numero_contas='0026-1' AND t.nome_tipos_transacao='Transferencia';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 225.00, 'Transferencia de teste', d.saldo_contas, '2026-09-06 13:35:00', o.PK_id_contas, d.PK_id_contas, t.PK_id_tipos_transacao FROM contas o CROSS JOIN contas d CROSS JOIN tipos_transacao t WHERE o.numero_contas='0006-1' AND d.numero_contas='0033-1' AND t.nome_tipos_transacao='Transferencia';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 250.00, 'Transferencia de teste', d.saldo_contas, '2026-09-07 14:42:00', o.PK_id_contas, d.PK_id_contas, t.PK_id_tipos_transacao FROM contas o CROSS JOIN contas d CROSS JOIN tipos_transacao t WHERE o.numero_contas='0007-1' AND d.numero_contas='0040-1' AND t.nome_tipos_transacao='Transferencia';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 275.00, 'Transferencia de teste', d.saldo_contas, '2026-09-08 15:49:00', o.PK_id_contas, d.PK_id_contas, t.PK_id_tipos_transacao FROM contas o CROSS JOIN contas d CROSS JOIN tipos_transacao t WHERE o.numero_contas='0008-1' AND d.numero_contas='0009-1' AND t.nome_tipos_transacao='Transferencia';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 300.00, 'Transferencia de teste', d.saldo_contas, '2026-09-09 16:56:00', o.PK_id_contas, d.PK_id_contas, t.PK_id_tipos_transacao FROM contas o CROSS JOIN contas d CROSS JOIN tipos_transacao t WHERE o.numero_contas='0009-1' AND d.numero_contas='0015-1' AND t.nome_tipos_transacao='Transferencia';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 325.00, 'Transferencia de teste', d.saldo_contas, '2026-09-10 17:03:00', o.PK_id_contas, d.PK_id_contas, t.PK_id_tipos_transacao FROM contas o CROSS JOIN contas d CROSS JOIN tipos_transacao t WHERE o.numero_contas='0010-1' AND d.numero_contas='0022-1' AND t.nome_tipos_transacao='Transferencia';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 350.00, 'Transferencia de teste', d.saldo_contas, '2026-09-11 08:10:00', o.PK_id_contas, d.PK_id_contas, t.PK_id_tipos_transacao FROM contas o CROSS JOIN contas d CROSS JOIN tipos_transacao t WHERE o.numero_contas='0011-1' AND d.numero_contas='0029-1' AND t.nome_tipos_transacao='Transferencia';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 375.00, 'Transferencia de teste', d.saldo_contas, '2026-09-12 09:17:00', o.PK_id_contas, d.PK_id_contas, t.PK_id_tipos_transacao FROM contas o CROSS JOIN contas d CROSS JOIN tipos_transacao t WHERE o.numero_contas='0012-1' AND d.numero_contas='0036-1' AND t.nome_tipos_transacao='Transferencia';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 400.00, 'Transferencia de teste', d.saldo_contas, '2026-09-13 10:24:00', o.PK_id_contas, d.PK_id_contas, t.PK_id_tipos_transacao FROM contas o CROSS JOIN contas d CROSS JOIN tipos_transacao t WHERE o.numero_contas='0013-1' AND d.numero_contas='0004-1' AND t.nome_tipos_transacao='Transferencia';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 425.00, 'Transferencia de teste', d.saldo_contas, '2026-09-14 11:31:00', o.PK_id_contas, d.PK_id_contas, t.PK_id_tipos_transacao FROM contas o CROSS JOIN contas d CROSS JOIN tipos_transacao t WHERE o.numero_contas='0014-1' AND d.numero_contas='0011-1' AND t.nome_tipos_transacao='Transferencia';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 450.00, 'Transferencia de teste', d.saldo_contas, '2026-09-15 12:38:00', o.PK_id_contas, d.PK_id_contas, t.PK_id_tipos_transacao FROM contas o CROSS JOIN contas d CROSS JOIN tipos_transacao t WHERE o.numero_contas='0015-1' AND d.numero_contas='0018-1' AND t.nome_tipos_transacao='Transferencia';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 475.00, 'Transferencia de teste', d.saldo_contas, '2026-09-16 13:45:00', o.PK_id_contas, d.PK_id_contas, t.PK_id_tipos_transacao FROM contas o CROSS JOIN contas d CROSS JOIN tipos_transacao t WHERE o.numero_contas='0016-1' AND d.numero_contas='0025-1' AND t.nome_tipos_transacao='Transferencia';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 500.00, 'Transferencia de teste', d.saldo_contas, '2026-09-17 14:52:00', o.PK_id_contas, d.PK_id_contas, t.PK_id_tipos_transacao FROM contas o CROSS JOIN contas d CROSS JOIN tipos_transacao t WHERE o.numero_contas='0017-1' AND d.numero_contas='0032-1' AND t.nome_tipos_transacao='Transferencia';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 525.00, 'Transferencia de teste', d.saldo_contas, '2026-09-18 15:59:00', o.PK_id_contas, d.PK_id_contas, t.PK_id_tipos_transacao FROM contas o CROSS JOIN contas d CROSS JOIN tipos_transacao t WHERE o.numero_contas='0018-1' AND d.numero_contas='0039-1' AND t.nome_tipos_transacao='Transferencia';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 550.00, 'Transferencia de teste', d.saldo_contas, '2026-09-19 16:06:00', o.PK_id_contas, d.PK_id_contas, t.PK_id_tipos_transacao FROM contas o CROSS JOIN contas d CROSS JOIN tipos_transacao t WHERE o.numero_contas='0019-1' AND d.numero_contas='0007-1' AND t.nome_tipos_transacao='Transferencia';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 575.00, 'Transferencia de teste', d.saldo_contas, '2026-09-20 17:13:00', o.PK_id_contas, d.PK_id_contas, t.PK_id_tipos_transacao FROM contas o CROSS JOIN contas d CROSS JOIN tipos_transacao t WHERE o.numero_contas='0020-1' AND d.numero_contas='0014-1' AND t.nome_tipos_transacao='Transferencia';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 600.00, 'Transferencia de teste', d.saldo_contas, '2026-09-21 08:20:00', o.PK_id_contas, d.PK_id_contas, t.PK_id_tipos_transacao FROM contas o CROSS JOIN contas d CROSS JOIN tipos_transacao t WHERE o.numero_contas='0021-1' AND d.numero_contas='0022-1' AND t.nome_tipos_transacao='Transferencia';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 625.00, 'Transferencia de teste', d.saldo_contas, '2026-09-22 09:27:00', o.PK_id_contas, d.PK_id_contas, t.PK_id_tipos_transacao FROM contas o CROSS JOIN contas d CROSS JOIN tipos_transacao t WHERE o.numero_contas='0022-1' AND d.numero_contas='0028-1' AND t.nome_tipos_transacao='Transferencia';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 650.00, 'Transferencia de teste', d.saldo_contas, '2026-09-23 10:34:00', o.PK_id_contas, d.PK_id_contas, t.PK_id_tipos_transacao FROM contas o CROSS JOIN contas d CROSS JOIN tipos_transacao t WHERE o.numero_contas='0023-1' AND d.numero_contas='0035-1' AND t.nome_tipos_transacao='Transferencia';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 675.00, 'Transferencia de teste', d.saldo_contas, '2026-09-24 11:41:00', o.PK_id_contas, d.PK_id_contas, t.PK_id_tipos_transacao FROM contas o CROSS JOIN contas d CROSS JOIN tipos_transacao t WHERE o.numero_contas='0024-1' AND d.numero_contas='0003-1' AND t.nome_tipos_transacao='Transferencia';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 700.00, 'Transferencia de teste', d.saldo_contas, '2026-09-25 12:48:00', o.PK_id_contas, d.PK_id_contas, t.PK_id_tipos_transacao FROM contas o CROSS JOIN contas d CROSS JOIN tipos_transacao t WHERE o.numero_contas='0025-1' AND d.numero_contas='0010-1' AND t.nome_tipos_transacao='Transferencia';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 725.00, 'Transferencia de teste', d.saldo_contas, '2026-09-26 13:55:00', o.PK_id_contas, d.PK_id_contas, t.PK_id_tipos_transacao FROM contas o CROSS JOIN contas d CROSS JOIN tipos_transacao t WHERE o.numero_contas='0026-1' AND d.numero_contas='0017-1' AND t.nome_tipos_transacao='Transferencia';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 750.00, 'Transferencia de teste', d.saldo_contas, '2026-09-27 14:02:00', o.PK_id_contas, d.PK_id_contas, t.PK_id_tipos_transacao FROM contas o CROSS JOIN contas d CROSS JOIN tipos_transacao t WHERE o.numero_contas='0027-1' AND d.numero_contas='0024-1' AND t.nome_tipos_transacao='Transferencia';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 775.00, 'Transferencia de teste', d.saldo_contas, '2026-09-28 15:09:00', o.PK_id_contas, d.PK_id_contas, t.PK_id_tipos_transacao FROM contas o CROSS JOIN contas d CROSS JOIN tipos_transacao t WHERE o.numero_contas='0028-1' AND d.numero_contas='0031-1' AND t.nome_tipos_transacao='Transferencia';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 800.00, 'Transferencia de teste', d.saldo_contas, '2026-09-01 16:16:00', o.PK_id_contas, d.PK_id_contas, t.PK_id_tipos_transacao FROM contas o CROSS JOIN contas d CROSS JOIN tipos_transacao t WHERE o.numero_contas='0029-1' AND d.numero_contas='0038-1' AND t.nome_tipos_transacao='Transferencia';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 825.00, 'Transferencia de teste', d.saldo_contas, '2026-09-02 17:23:00', o.PK_id_contas, d.PK_id_contas, t.PK_id_tipos_transacao FROM contas o CROSS JOIN contas d CROSS JOIN tipos_transacao t WHERE o.numero_contas='0030-1' AND d.numero_contas='0006-1' AND t.nome_tipos_transacao='Transferencia';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 850.00, 'Transferencia de teste', d.saldo_contas, '2026-09-03 08:30:00', o.PK_id_contas, d.PK_id_contas, t.PK_id_tipos_transacao FROM contas o CROSS JOIN contas d CROSS JOIN tipos_transacao t WHERE o.numero_contas='0031-1' AND d.numero_contas='0013-1' AND t.nome_tipos_transacao='Transferencia';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 875.00, 'Transferencia de teste', d.saldo_contas, '2026-09-04 09:37:00', o.PK_id_contas, d.PK_id_contas, t.PK_id_tipos_transacao FROM contas o CROSS JOIN contas d CROSS JOIN tipos_transacao t WHERE o.numero_contas='0032-1' AND d.numero_contas='0020-1' AND t.nome_tipos_transacao='Transferencia';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 900.00, 'Transferencia de teste', d.saldo_contas, '2026-09-05 10:44:00', o.PK_id_contas, d.PK_id_contas, t.PK_id_tipos_transacao FROM contas o CROSS JOIN contas d CROSS JOIN tipos_transacao t WHERE o.numero_contas='0033-1' AND d.numero_contas='0027-1' AND t.nome_tipos_transacao='Transferencia';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 925.00, 'Transferencia de teste', d.saldo_contas, '2026-09-06 11:51:00', o.PK_id_contas, d.PK_id_contas, t.PK_id_tipos_transacao FROM contas o CROSS JOIN contas d CROSS JOIN tipos_transacao t WHERE o.numero_contas='0034-1' AND d.numero_contas='0035-1' AND t.nome_tipos_transacao='Transferencia';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 950.00, 'Transferencia de teste', d.saldo_contas, '2026-09-07 12:58:00', o.PK_id_contas, d.PK_id_contas, t.PK_id_tipos_transacao FROM contas o CROSS JOIN contas d CROSS JOIN tipos_transacao t WHERE o.numero_contas='0035-1' AND d.numero_contas='0002-1' AND t.nome_tipos_transacao='Transferencia';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 975.00, 'Transferencia de teste', d.saldo_contas, '2026-09-08 13:05:00', o.PK_id_contas, d.PK_id_contas, t.PK_id_tipos_transacao FROM contas o CROSS JOIN contas d CROSS JOIN tipos_transacao t WHERE o.numero_contas='0036-1' AND d.numero_contas='0009-1' AND t.nome_tipos_transacao='Transferencia';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 1000.00, 'Transferencia de teste', d.saldo_contas, '2026-09-09 14:12:00', o.PK_id_contas, d.PK_id_contas, t.PK_id_tipos_transacao FROM contas o CROSS JOIN contas d CROSS JOIN tipos_transacao t WHERE o.numero_contas='0037-1' AND d.numero_contas='0016-1' AND t.nome_tipos_transacao='Transferencia';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 1025.00, 'Transferencia de teste', d.saldo_contas, '2026-09-10 15:19:00', o.PK_id_contas, d.PK_id_contas, t.PK_id_tipos_transacao FROM contas o CROSS JOIN contas d CROSS JOIN tipos_transacao t WHERE o.numero_contas='0038-1' AND d.numero_contas='0023-1' AND t.nome_tipos_transacao='Transferencia';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 1050.00, 'Transferencia de teste', d.saldo_contas, '2026-09-11 16:26:00', o.PK_id_contas, d.PK_id_contas, t.PK_id_tipos_transacao FROM contas o CROSS JOIN contas d CROSS JOIN tipos_transacao t WHERE o.numero_contas='0039-1' AND d.numero_contas='0030-1' AND t.nome_tipos_transacao='Transferencia';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 1075.00, 'Transferencia de teste', d.saldo_contas, '2026-09-12 17:33:00', o.PK_id_contas, d.PK_id_contas, t.PK_id_tipos_transacao FROM contas o CROSS JOIN contas d CROSS JOIN tipos_transacao t WHERE o.numero_contas='0040-1' AND d.numero_contas='0037-1' AND t.nome_tipos_transacao='Transferencia';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 1100.00, 'Transferencia de teste', d.saldo_contas, '2026-09-13 08:40:00', o.PK_id_contas, d.PK_id_contas, t.PK_id_tipos_transacao FROM contas o CROSS JOIN contas d CROSS JOIN tipos_transacao t WHERE o.numero_contas='0002-1' AND d.numero_contas='0005-1' AND t.nome_tipos_transacao='Transferencia';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 1125.00, 'Transferencia de teste', d.saldo_contas, '2026-09-14 09:47:00', o.PK_id_contas, d.PK_id_contas, t.PK_id_tipos_transacao FROM contas o CROSS JOIN contas d CROSS JOIN tipos_transacao t WHERE o.numero_contas='0003-1' AND d.numero_contas='0012-1' AND t.nome_tipos_transacao='Transferencia';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 1150.00, 'Transferencia de teste', d.saldo_contas, '2026-09-15 10:54:00', o.PK_id_contas, d.PK_id_contas, t.PK_id_tipos_transacao FROM contas o CROSS JOIN contas d CROSS JOIN tipos_transacao t WHERE o.numero_contas='0004-1' AND d.numero_contas='0019-1' AND t.nome_tipos_transacao='Transferencia';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 1175.00, 'Transferencia de teste', d.saldo_contas, '2026-09-16 11:01:00', o.PK_id_contas, d.PK_id_contas, t.PK_id_tipos_transacao FROM contas o CROSS JOIN contas d CROSS JOIN tipos_transacao t WHERE o.numero_contas='0005-1' AND d.numero_contas='0026-1' AND t.nome_tipos_transacao='Transferencia';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 1200.00, 'Transferencia de teste', d.saldo_contas, '2026-09-17 12:08:00', o.PK_id_contas, d.PK_id_contas, t.PK_id_tipos_transacao FROM contas o CROSS JOIN contas d CROSS JOIN tipos_transacao t WHERE o.numero_contas='0006-1' AND d.numero_contas='0033-1' AND t.nome_tipos_transacao='Transferencia';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 1225.00, 'Transferencia de teste', d.saldo_contas, '2026-09-18 13:15:00', o.PK_id_contas, d.PK_id_contas, t.PK_id_tipos_transacao FROM contas o CROSS JOIN contas d CROSS JOIN tipos_transacao t WHERE o.numero_contas='0007-1' AND d.numero_contas='0040-1' AND t.nome_tipos_transacao='Transferencia';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 1250.00, 'Transferencia de teste', d.saldo_contas, '2026-09-19 14:22:00', o.PK_id_contas, d.PK_id_contas, t.PK_id_tipos_transacao FROM contas o CROSS JOIN contas d CROSS JOIN tipos_transacao t WHERE o.numero_contas='0008-1' AND d.numero_contas='0009-1' AND t.nome_tipos_transacao='Transferencia';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 1275.00, 'Transferencia de teste', d.saldo_contas, '2026-09-20 15:29:00', o.PK_id_contas, d.PK_id_contas, t.PK_id_tipos_transacao FROM contas o CROSS JOIN contas d CROSS JOIN tipos_transacao t WHERE o.numero_contas='0009-1' AND d.numero_contas='0015-1' AND t.nome_tipos_transacao='Transferencia';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 1300.00, 'Transferencia de teste', d.saldo_contas, '2026-09-21 16:36:00', o.PK_id_contas, d.PK_id_contas, t.PK_id_tipos_transacao FROM contas o CROSS JOIN contas d CROSS JOIN tipos_transacao t WHERE o.numero_contas='0010-1' AND d.numero_contas='0022-1' AND t.nome_tipos_transacao='Transferencia';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 1325.00, 'Transferencia de teste', d.saldo_contas, '2026-09-22 17:43:00', o.PK_id_contas, d.PK_id_contas, t.PK_id_tipos_transacao FROM contas o CROSS JOIN contas d CROSS JOIN tipos_transacao t WHERE o.numero_contas='0011-1' AND d.numero_contas='0029-1' AND t.nome_tipos_transacao='Transferencia';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 1350.00, 'Transferencia de teste', d.saldo_contas, '2026-09-23 08:50:00', o.PK_id_contas, d.PK_id_contas, t.PK_id_tipos_transacao FROM contas o CROSS JOIN contas d CROSS JOIN tipos_transacao t WHERE o.numero_contas='0012-1' AND d.numero_contas='0036-1' AND t.nome_tipos_transacao='Transferencia';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 1375.00, 'Transferencia de teste', d.saldo_contas, '2026-09-24 09:57:00', o.PK_id_contas, d.PK_id_contas, t.PK_id_tipos_transacao FROM contas o CROSS JOIN contas d CROSS JOIN tipos_transacao t WHERE o.numero_contas='0013-1' AND d.numero_contas='0004-1' AND t.nome_tipos_transacao='Transferencia';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 1400.00, 'Transferencia de teste', d.saldo_contas, '2026-09-25 10:04:00', o.PK_id_contas, d.PK_id_contas, t.PK_id_tipos_transacao FROM contas o CROSS JOIN contas d CROSS JOIN tipos_transacao t WHERE o.numero_contas='0014-1' AND d.numero_contas='0011-1' AND t.nome_tipos_transacao='Transferencia';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 1425.00, 'Transferencia de teste', d.saldo_contas, '2026-09-26 11:11:00', o.PK_id_contas, d.PK_id_contas, t.PK_id_tipos_transacao FROM contas o CROSS JOIN contas d CROSS JOIN tipos_transacao t WHERE o.numero_contas='0015-1' AND d.numero_contas='0018-1' AND t.nome_tipos_transacao='Transferencia';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 1450.00, 'Transferencia de teste', d.saldo_contas, '2026-09-27 12:18:00', o.PK_id_contas, d.PK_id_contas, t.PK_id_tipos_transacao FROM contas o CROSS JOIN contas d CROSS JOIN tipos_transacao t WHERE o.numero_contas='0016-1' AND d.numero_contas='0025-1' AND t.nome_tipos_transacao='Transferencia';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 1475.00, 'Transferencia de teste', d.saldo_contas, '2026-09-28 13:25:00', o.PK_id_contas, d.PK_id_contas, t.PK_id_tipos_transacao FROM contas o CROSS JOIN contas d CROSS JOIN tipos_transacao t WHERE o.numero_contas='0017-1' AND d.numero_contas='0032-1' AND t.nome_tipos_transacao='Transferencia';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 1500.00, 'Transferencia de teste', d.saldo_contas, '2026-09-01 14:32:00', o.PK_id_contas, d.PK_id_contas, t.PK_id_tipos_transacao FROM contas o CROSS JOIN contas d CROSS JOIN tipos_transacao t WHERE o.numero_contas='0018-1' AND d.numero_contas='0039-1' AND t.nome_tipos_transacao='Transferencia';

-- Depositos
INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 150.00, 'Deposito de teste', c.saldo_contas, '2026-09-02 09:00:00', c.PK_id_contas, c.PK_id_contas, t.PK_id_tipos_transacao FROM contas c CROSS JOIN tipos_transacao t WHERE c.numero_contas='0002-1' AND t.nome_tipos_transacao='Deposito';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 275.00, 'Deposito de teste', c.saldo_contas, '2026-09-03 10:11:00', c.PK_id_contas, c.PK_id_contas, t.PK_id_tipos_transacao FROM contas c CROSS JOIN tipos_transacao t WHERE c.numero_contas='0003-1' AND t.nome_tipos_transacao='Deposito';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 400.00, 'Deposito de teste', c.saldo_contas, '2026-09-04 11:22:00', c.PK_id_contas, c.PK_id_contas, t.PK_id_tipos_transacao FROM contas c CROSS JOIN tipos_transacao t WHERE c.numero_contas='0004-1' AND t.nome_tipos_transacao='Deposito';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 525.00, 'Deposito de teste', c.saldo_contas, '2026-09-05 12:33:00', c.PK_id_contas, c.PK_id_contas, t.PK_id_tipos_transacao FROM contas c CROSS JOIN tipos_transacao t WHERE c.numero_contas='0005-1' AND t.nome_tipos_transacao='Deposito';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 650.00, 'Deposito de teste', c.saldo_contas, '2026-09-06 13:44:00', c.PK_id_contas, c.PK_id_contas, t.PK_id_tipos_transacao FROM contas c CROSS JOIN tipos_transacao t WHERE c.numero_contas='0006-1' AND t.nome_tipos_transacao='Deposito';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 775.00, 'Deposito de teste', c.saldo_contas, '2026-09-07 14:55:00', c.PK_id_contas, c.PK_id_contas, t.PK_id_tipos_transacao FROM contas c CROSS JOIN tipos_transacao t WHERE c.numero_contas='0007-1' AND t.nome_tipos_transacao='Deposito';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 900.00, 'Deposito de teste', c.saldo_contas, '2026-09-08 15:06:00', c.PK_id_contas, c.PK_id_contas, t.PK_id_tipos_transacao FROM contas c CROSS JOIN tipos_transacao t WHERE c.numero_contas='0008-1' AND t.nome_tipos_transacao='Deposito';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 1025.00, 'Deposito de teste', c.saldo_contas, '2026-09-09 16:17:00', c.PK_id_contas, c.PK_id_contas, t.PK_id_tipos_transacao FROM contas c CROSS JOIN tipos_transacao t WHERE c.numero_contas='0009-1' AND t.nome_tipos_transacao='Deposito';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 1150.00, 'Deposito de teste', c.saldo_contas, '2026-09-10 09:28:00', c.PK_id_contas, c.PK_id_contas, t.PK_id_tipos_transacao FROM contas c CROSS JOIN tipos_transacao t WHERE c.numero_contas='0010-1' AND t.nome_tipos_transacao='Deposito';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 1275.00, 'Deposito de teste', c.saldo_contas, '2026-09-11 10:39:00', c.PK_id_contas, c.PK_id_contas, t.PK_id_tipos_transacao FROM contas c CROSS JOIN tipos_transacao t WHERE c.numero_contas='0011-1' AND t.nome_tipos_transacao='Deposito';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 1400.00, 'Deposito de teste', c.saldo_contas, '2026-09-12 11:50:00', c.PK_id_contas, c.PK_id_contas, t.PK_id_tipos_transacao FROM contas c CROSS JOIN tipos_transacao t WHERE c.numero_contas='0012-1' AND t.nome_tipos_transacao='Deposito';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 1525.00, 'Deposito de teste', c.saldo_contas, '2026-09-13 12:01:00', c.PK_id_contas, c.PK_id_contas, t.PK_id_tipos_transacao FROM contas c CROSS JOIN tipos_transacao t WHERE c.numero_contas='0013-1' AND t.nome_tipos_transacao='Deposito';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 150.00, 'Deposito de teste', c.saldo_contas, '2026-09-14 13:12:00', c.PK_id_contas, c.PK_id_contas, t.PK_id_tipos_transacao FROM contas c CROSS JOIN tipos_transacao t WHERE c.numero_contas='0014-1' AND t.nome_tipos_transacao='Deposito';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 275.00, 'Deposito de teste', c.saldo_contas, '2026-09-15 14:23:00', c.PK_id_contas, c.PK_id_contas, t.PK_id_tipos_transacao FROM contas c CROSS JOIN tipos_transacao t WHERE c.numero_contas='0015-1' AND t.nome_tipos_transacao='Deposito';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 400.00, 'Deposito de teste', c.saldo_contas, '2026-09-16 15:34:00', c.PK_id_contas, c.PK_id_contas, t.PK_id_tipos_transacao FROM contas c CROSS JOIN tipos_transacao t WHERE c.numero_contas='0016-1' AND t.nome_tipos_transacao='Deposito';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 525.00, 'Deposito de teste', c.saldo_contas, '2026-09-17 16:45:00', c.PK_id_contas, c.PK_id_contas, t.PK_id_tipos_transacao FROM contas c CROSS JOIN tipos_transacao t WHERE c.numero_contas='0017-1' AND t.nome_tipos_transacao='Deposito';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 650.00, 'Deposito de teste', c.saldo_contas, '2026-09-18 09:56:00', c.PK_id_contas, c.PK_id_contas, t.PK_id_tipos_transacao FROM contas c CROSS JOIN tipos_transacao t WHERE c.numero_contas='0018-1' AND t.nome_tipos_transacao='Deposito';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 775.00, 'Deposito de teste', c.saldo_contas, '2026-09-19 10:07:00', c.PK_id_contas, c.PK_id_contas, t.PK_id_tipos_transacao FROM contas c CROSS JOIN tipos_transacao t WHERE c.numero_contas='0019-1' AND t.nome_tipos_transacao='Deposito';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 900.00, 'Deposito de teste', c.saldo_contas, '2026-09-20 11:18:00', c.PK_id_contas, c.PK_id_contas, t.PK_id_tipos_transacao FROM contas c CROSS JOIN tipos_transacao t WHERE c.numero_contas='0020-1' AND t.nome_tipos_transacao='Deposito';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 1025.00, 'Deposito de teste', c.saldo_contas, '2026-09-21 12:29:00', c.PK_id_contas, c.PK_id_contas, t.PK_id_tipos_transacao FROM contas c CROSS JOIN tipos_transacao t WHERE c.numero_contas='0021-1' AND t.nome_tipos_transacao='Deposito';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 1150.00, 'Deposito de teste', c.saldo_contas, '2026-09-22 13:40:00', c.PK_id_contas, c.PK_id_contas, t.PK_id_tipos_transacao FROM contas c CROSS JOIN tipos_transacao t WHERE c.numero_contas='0022-1' AND t.nome_tipos_transacao='Deposito';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 1275.00, 'Deposito de teste', c.saldo_contas, '2026-09-23 14:51:00', c.PK_id_contas, c.PK_id_contas, t.PK_id_tipos_transacao FROM contas c CROSS JOIN tipos_transacao t WHERE c.numero_contas='0023-1' AND t.nome_tipos_transacao='Deposito';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 1400.00, 'Deposito de teste', c.saldo_contas, '2026-09-24 15:02:00', c.PK_id_contas, c.PK_id_contas, t.PK_id_tipos_transacao FROM contas c CROSS JOIN tipos_transacao t WHERE c.numero_contas='0024-1' AND t.nome_tipos_transacao='Deposito';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 1525.00, 'Deposito de teste', c.saldo_contas, '2026-09-25 16:13:00', c.PK_id_contas, c.PK_id_contas, t.PK_id_tipos_transacao FROM contas c CROSS JOIN tipos_transacao t WHERE c.numero_contas='0025-1' AND t.nome_tipos_transacao='Deposito';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 150.00, 'Deposito de teste', c.saldo_contas, '2026-09-26 09:24:00', c.PK_id_contas, c.PK_id_contas, t.PK_id_tipos_transacao FROM contas c CROSS JOIN tipos_transacao t WHERE c.numero_contas='0026-1' AND t.nome_tipos_transacao='Deposito';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 275.00, 'Deposito de teste', c.saldo_contas, '2026-09-27 10:35:00', c.PK_id_contas, c.PK_id_contas, t.PK_id_tipos_transacao FROM contas c CROSS JOIN tipos_transacao t WHERE c.numero_contas='0027-1' AND t.nome_tipos_transacao='Deposito';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 400.00, 'Deposito de teste', c.saldo_contas, '2026-09-28 11:46:00', c.PK_id_contas, c.PK_id_contas, t.PK_id_tipos_transacao FROM contas c CROSS JOIN tipos_transacao t WHERE c.numero_contas='0028-1' AND t.nome_tipos_transacao='Deposito';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 525.00, 'Deposito de teste', c.saldo_contas, '2026-09-02 12:57:00', c.PK_id_contas, c.PK_id_contas, t.PK_id_tipos_transacao FROM contas c CROSS JOIN tipos_transacao t WHERE c.numero_contas='0029-1' AND t.nome_tipos_transacao='Deposito';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 650.00, 'Deposito de teste', c.saldo_contas, '2026-09-03 13:08:00', c.PK_id_contas, c.PK_id_contas, t.PK_id_tipos_transacao FROM contas c CROSS JOIN tipos_transacao t WHERE c.numero_contas='0030-1' AND t.nome_tipos_transacao='Deposito';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 775.00, 'Deposito de teste', c.saldo_contas, '2026-09-04 14:19:00', c.PK_id_contas, c.PK_id_contas, t.PK_id_tipos_transacao FROM contas c CROSS JOIN tipos_transacao t WHERE c.numero_contas='0031-1' AND t.nome_tipos_transacao='Deposito';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 900.00, 'Deposito de teste', c.saldo_contas, '2026-09-05 15:30:00', c.PK_id_contas, c.PK_id_contas, t.PK_id_tipos_transacao FROM contas c CROSS JOIN tipos_transacao t WHERE c.numero_contas='0032-1' AND t.nome_tipos_transacao='Deposito';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 1025.00, 'Deposito de teste', c.saldo_contas, '2026-09-06 16:41:00', c.PK_id_contas, c.PK_id_contas, t.PK_id_tipos_transacao FROM contas c CROSS JOIN tipos_transacao t WHERE c.numero_contas='0033-1' AND t.nome_tipos_transacao='Deposito';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 1150.00, 'Deposito de teste', c.saldo_contas, '2026-09-07 09:52:00', c.PK_id_contas, c.PK_id_contas, t.PK_id_tipos_transacao FROM contas c CROSS JOIN tipos_transacao t WHERE c.numero_contas='0034-1' AND t.nome_tipos_transacao='Deposito';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 1275.00, 'Deposito de teste', c.saldo_contas, '2026-09-08 10:03:00', c.PK_id_contas, c.PK_id_contas, t.PK_id_tipos_transacao FROM contas c CROSS JOIN tipos_transacao t WHERE c.numero_contas='0035-1' AND t.nome_tipos_transacao='Deposito';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 1400.00, 'Deposito de teste', c.saldo_contas, '2026-09-09 11:14:00', c.PK_id_contas, c.PK_id_contas, t.PK_id_tipos_transacao FROM contas c CROSS JOIN tipos_transacao t WHERE c.numero_contas='0036-1' AND t.nome_tipos_transacao='Deposito';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 1525.00, 'Deposito de teste', c.saldo_contas, '2026-09-10 12:25:00', c.PK_id_contas, c.PK_id_contas, t.PK_id_tipos_transacao FROM contas c CROSS JOIN tipos_transacao t WHERE c.numero_contas='0037-1' AND t.nome_tipos_transacao='Deposito';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 150.00, 'Deposito de teste', c.saldo_contas, '2026-09-11 13:36:00', c.PK_id_contas, c.PK_id_contas, t.PK_id_tipos_transacao FROM contas c CROSS JOIN tipos_transacao t WHERE c.numero_contas='0038-1' AND t.nome_tipos_transacao='Deposito';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 275.00, 'Deposito de teste', c.saldo_contas, '2026-09-12 14:47:00', c.PK_id_contas, c.PK_id_contas, t.PK_id_tipos_transacao FROM contas c CROSS JOIN tipos_transacao t WHERE c.numero_contas='0039-1' AND t.nome_tipos_transacao='Deposito';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 400.00, 'Deposito de teste', c.saldo_contas, '2026-09-13 15:58:00', c.PK_id_contas, c.PK_id_contas, t.PK_id_tipos_transacao FROM contas c CROSS JOIN tipos_transacao t WHERE c.numero_contas='0040-1' AND t.nome_tipos_transacao='Deposito';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 525.00, 'Deposito de teste', c.saldo_contas, '2026-09-14 16:09:00', c.PK_id_contas, c.PK_id_contas, t.PK_id_tipos_transacao FROM contas c CROSS JOIN tipos_transacao t WHERE c.numero_contas='0002-1' AND t.nome_tipos_transacao='Deposito';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 650.00, 'Deposito de teste', c.saldo_contas, '2026-09-15 09:20:00', c.PK_id_contas, c.PK_id_contas, t.PK_id_tipos_transacao FROM contas c CROSS JOIN tipos_transacao t WHERE c.numero_contas='0003-1' AND t.nome_tipos_transacao='Deposito';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 775.00, 'Deposito de teste', c.saldo_contas, '2026-09-16 10:31:00', c.PK_id_contas, c.PK_id_contas, t.PK_id_tipos_transacao FROM contas c CROSS JOIN tipos_transacao t WHERE c.numero_contas='0004-1' AND t.nome_tipos_transacao='Deposito';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 900.00, 'Deposito de teste', c.saldo_contas, '2026-09-17 11:42:00', c.PK_id_contas, c.PK_id_contas, t.PK_id_tipos_transacao FROM contas c CROSS JOIN tipos_transacao t WHERE c.numero_contas='0005-1' AND t.nome_tipos_transacao='Deposito';

INSERT INTO transacoes (valor_transacoes,descricao_transacoes,saldo_apos_transacoes,realizado_em_transacoes,FK_id_conta_origem,FK_id_conta_destino,FK_id_tipos_transacao)
SELECT 1025.00, 'Deposito de teste', c.saldo_contas, '2026-09-18 12:53:00', c.PK_id_contas, c.PK_id_contas, t.PK_id_tipos_transacao FROM contas c CROSS JOIN tipos_transacao t WHERE c.numero_contas='0006-1' AND t.nome_tipos_transacao='Deposito';
