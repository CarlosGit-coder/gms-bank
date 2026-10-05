-- ============================================================
-- GMS BANK SYSTEM
-- V3 - UPDATES
-- PostgreSQL
-- ============================================================


-- ============================================================
-- Atualização da senha do usuário ADMIN
-- ============================================================

UPDATE usuarios
SET senha_hash = 'e7d80ffeefa212b7c5c55700e4f7193e'
WHERE email_usuarios = 'marcosribeiro1899@gmail.com';