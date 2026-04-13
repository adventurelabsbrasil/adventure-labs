-- ==========================================================================
-- PINGOSTUDIO-264 — Role read-only `looker_reader` para Looker Studio
-- ==========================================================================
-- Contexto:
--   A Young Empreendimentos migrou a fonte do dashboard Looker Studio
--   de Google Sheets para o Supabase `vvtympzatclvjaqucebr`, onde o CRM
--   Pingolead escreve. Este role dá SELECT read-only para o conector
--   PostgreSQL do Looker, com BYPASSRLS para contornar policies que
--   bloqueiam leitura externa ao fluxo auth-based do Supabase.
--
-- Como aplicar (executar em máquina com acesso à internet):
--
--   1. Abrir este arquivo e substituir <SENHA_GERADA> pela senha real
--      (ver HANDOFF.md, item "Senha gerada"). NÃO commitar a senha.
--   2. Rodar:
--        export PGPASSWORD='lg9S6Iz8y4LKSjxu'
--        psql "postgresql://postgres@db.vvtympzatclvjaqucebr.supabase.co:5432/postgres?sslmode=require" \
--             -f apps/clientes/04_young/pingostudio/supabase/migrations/20260413000000_create_looker_reader.sql
--   3. Reverter a substituição (deixar <SENHA_GERADA> de volta) antes de commitar.
--
-- IMPORTANTE: ajustar o nome do SCHEMA da Pingolead antes de rodar.
-- Por padrão abaixo está `public`. Se o schema real for outro (ex.: `pingolead`,
-- `crm`, `young`), substituir em TODOS os lugares marcados com
-- "PINGOLEAD_SCHEMA" ou rodar o passo 0 para aplicar em múltiplos schemas.
-- ==========================================================================

BEGIN;

-- 1. Criar role (se já existir, o usuário deve DROP ROLE primeiro)
CREATE ROLE looker_reader WITH LOGIN PASSWORD '<SENHA_GERADA>' NOINHERIT;

-- 2. BYPASSRLS — necessário para um BI externo ler tabelas com RLS ativo
--    (Supabase liga RLS por padrão; sem isso o Looker veria zero linhas).
ALTER ROLE looker_reader BYPASSRLS;

-- 3. Conectar ao banco
GRANT CONNECT ON DATABASE postgres TO looker_reader;

-- 4. USAGE no schema da Pingolead
--    >>> TROCAR "public" pelo schema real da Pingolead, se diferente <<<
GRANT USAGE ON SCHEMA public TO looker_reader;

-- 5. SELECT em todas as tabelas existentes no schema
GRANT SELECT ON ALL TABLES IN SCHEMA public TO looker_reader;

-- 6. Default privileges — qualquer tabela nova criada no schema já
--    nasce com SELECT para o looker_reader (evita grant manual
--    toda vez que a Pingolead criar tabela nova)
ALTER DEFAULT PRIVILEGES IN SCHEMA public
  GRANT SELECT ON TABLES TO looker_reader;

COMMIT;

-- ==========================================================================
-- Pós-aplicação: validar
-- ==========================================================================
--   # conectar como looker_reader via pooler IPv4 (Looker Studio usa esse host)
--   psql "postgresql://looker_reader.vvtympzatclvjaqucebr@aws-0-sa-east-1.pooler.supabase.com:6543/postgres?sslmode=require"
--
--   # deve retornar 1
--   SELECT 1;
--
--   # deve listar linhas (ou 0 se tabelas zeradas)
--   SELECT COUNT(*) FROM <tabela_pingolead>;
--
--   # deve falhar com "permission denied"
--   INSERT INTO <tabela_pingolead> DEFAULT VALUES;
-- ==========================================================================
