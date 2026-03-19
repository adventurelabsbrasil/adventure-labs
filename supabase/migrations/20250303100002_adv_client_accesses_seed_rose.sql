-- Dados do acesso GreatPages (cliente Rose). Senha: preencher no App Admin.
INSERT INTO adv_client_accesses (tenant_id, client_id, service_name, url, login, password, notes)
SELECT
  c.tenant_id,
  c.id,
  'GreatPages',
  'https://greatpages.com.br',
  'rosetportal@hotmail.com',
  NULL,
  'Acesso para a página www.roseportaladvocacia.com.br no Great Pages'
FROM adv_clients c
WHERE c.nome ILIKE 'Rose' OR c.nome ILIKE '%Roselaine%'
LIMIT 1;
