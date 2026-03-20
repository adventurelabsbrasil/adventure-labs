-- Role de um e-mail em young_talents.user_roles (SQL Editor, postgres)
-- Ex.: candidata que não deveria ter acesso ao painel

SELECT id, user_id, email, role, created_at, last_login
FROM young_talents.user_roles
WHERE lower(trim(email)) = lower(trim('bruscopel@gmail.com'));

-- Se aparecer role = 'viewer', era esse o motivo de entrar no CRM antes do hardening.
-- Para remover acesso ao painel sem apagar histórico: pode deletar a linha ou manter viewer
-- (com o app atual, viewer já não entra mais no interno).
