-- Acessos adicionais Roselaine Portal Advocacia. Senhas: preencher no App Admin.
-- Cliente: Rose / Roselaine Portal Advocacia

INSERT INTO adv_client_accesses (tenant_id, client_id, service_name, url, login, password, notes)
SELECT c.tenant_id, c.id, 'Google Workspace (conta principal)', 'https://admin.google.com', 'roselaine@roseportaladvocacia.com.br', NULL, 'Admin Console da cliente'
FROM adv_clients c
WHERE c.nome ILIKE 'Rose' OR c.nome ILIKE '%Roselaine%'
LIMIT 1;

INSERT INTO adv_client_accesses (tenant_id, client_id, service_name, url, login, password, notes)
SELECT c.tenant_id, c.id, 'Google Workspace (conta backup)', 'https://admin.google.com', 'contato@roseportaladvocacia.com.br', NULL, 'Migração do Google Drive antigo para o novo workspace. Senha no app.'
FROM adv_clients c
WHERE c.nome ILIKE 'Rose' OR c.nome ILIKE '%Roselaine%'
LIMIT 1;

INSERT INTO adv_client_accesses (tenant_id, client_id, service_name, url, login, password, notes)
SELECT c.tenant_id, c.id, 'Gmail antigo', 'https://mail.google.com', 'roselaineportaladvocacia@gmail.com', NULL, 'Conta antiga. Senha no app.'
FROM adv_clients c
WHERE c.nome ILIKE 'Rose' OR c.nome ILIKE '%Roselaine%'
LIMIT 1;

INSERT INTO adv_client_accesses (tenant_id, client_id, service_name, url, login, password, notes)
SELECT c.tenant_id, c.id, 'Registro.br', 'https://registro.br/painel', 'ROPTE52', NULL, 'Acesso para roseportaladvocacia.com.br. Domínio expira em 22/08/2026. Autenticação em novo dispositivo: rosetportal@hotmail.com'
FROM adv_clients c
WHERE c.nome ILIKE 'Rose' OR c.nome ILIKE '%Roselaine%'
LIMIT 1;
