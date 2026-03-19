-- Registro do snippet Google Tag Manager (gtag.js) da cliente Rose (Roselaine).
-- Página GreatPages com pageview; conta Google Ads AW-16549386051.
-- Origem: relatório Founder 04/03/2026. Ref.: registro-dia-2026-03-04.md, relatorio-founder-2026-03-04.md

INSERT INTO adv_client_accesses (tenant_id, client_id, service_name, url, login, password, notes)
SELECT
  c.tenant_id,
  c.id,
  'Google Tag Manager (GreatPages)',
  'https://www.roseportaladvocacia.com.br',
  'AW-16549386051',
  NULL,
  $snippet$
<!-- Google tag (gtag.js) -->
<script async src="https://www.googletagmanager.com/gtag/js?id=AW-16549386051"></script>
<script>
window.dataLayer = window.dataLayer || [];
function gtag(){dataLayer.push(arguments);}
gtag('js', new Date());

gtag('config', 'AW-16549386051');
</script>
$snippet$
FROM adv_clients c
WHERE c.tenant_id = '00000000-0000-0000-0000-000000000000'
  AND (c.nome ILIKE 'Rose' OR c.nome ILIKE '%Roselaine%')
LIMIT 1;

-- Nota: executar apenas uma vez. Se o acesso já tiver sido cadastrado manualmente
-- no App Admin, pular ou remover esta migration.
