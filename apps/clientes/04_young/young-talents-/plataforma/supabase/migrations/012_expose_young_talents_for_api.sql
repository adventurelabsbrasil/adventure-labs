-- Expor o schema young_talents na API (PostgREST).
-- Sem isso, criar empresa/cidade/setor/cargo/vaga pode dar erro de schema.
-- Se esta migration falhar (permissão), adicione young_talents em Dashboard → Settings → API → Exposed schemas.
-- Ver docs/TROUBLESHOOTING_SCHEMA.md

ALTER ROLE authenticator SET pgrst.db_schemas = 'public, young_talents';
