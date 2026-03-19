-- Ativos PLL (Programa Lucro e Liberdade) — Planilha CEF e Apps Script.
-- Cliente Lidera. Entrega 10/03/2026. Ref.: knowledge/04_PROJETOS_DE_CLIENTES/lidera-pll-planilha-cef-2026-03-10.md

INSERT INTO adv_client_accesses (tenant_id, client_id, service_name, url, login, password, notes)
SELECT c.tenant_id, c.id, 'PLL — Planilha CEF (Google Sheets)', 'https://docs.google.com/spreadsheets/d/1wjBKqA33x69f6aMHItrXLIYFPfbA092fOhTr6FwzK98/edit?gid=902744795#gid=902744795', NULL, NULL, 'Sistema CEF: gestão de estoque e lista de compras para restaurantes. Programa Lucro e Liberdade.'
FROM adv_clients c
WHERE c.nome ILIKE '%Lidera%'
LIMIT 1;

INSERT INTO adv_client_accesses (tenant_id, client_id, service_name, url, login, password, notes)
SELECT c.tenant_id, c.id, 'PLL — Apps Script (Planilha CEF)', 'https://script.google.com/u/0/home/projects/1uiZ3d4LVTNFbNRKnyJhQCND28eVs8_MGYGydQZwJ9hLoZrlhgRDPk70T/edit', NULL, NULL, 'Código do menu e limparCicloDeCompras para a planilha CEF.'
FROM adv_clients c
WHERE c.nome ILIKE '%Lidera%'
LIMIT 1;
