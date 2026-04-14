-- ==========================================================================
-- PINGOSTUDIO-264 — Role read-only `looker_reader` para Looker Studio (Young)
-- ==========================================================================
-- Contexto:
--   A Pingolead (Young Empreendimentos) é o banco operacional completo da
--   incorporadora — 123 tabelas em `public` cobrindo CRM, RH, cobrança,
--   construção, Sienge, ATS. O escopo deste dashboard Looker é APENAS CRM
--   (leads, deals, funil, consultores) — por decisão do Founder em
--   2026-04-14.
--
--   Esta migration faz GRANT SELECT APENAS nas tabelas `crm_*`. Qualquer
--   outra tabela (incluindo sienge_*, comercial_*, cidades, empreendimentos
--   globais) fica fora do alcance do `looker_reader`. Se o Looker precisar
--   de dimensões extras no futuro, um GRANT avulso é adicionado sem recriar
--   o role.
--
--   Schema confirmado pela introspecção (scripts/01_introspect.out.txt):
--   `public` (único schema de dados).
--
-- Como aplicar (da VPS, pelo Buzz após confirmação do Founder):
--   1. Substituir <SENHA_GERADA> pela senha real (HANDOFF.md).
--   2. psql "postgresql://postgres:<pwd>@db.vvtympzatclvjaqucebr.supabase.co:5432/postgres?sslmode=require" \
--          -f apps/clientes/04_young/pingostudio/supabase/migrations/20260413000000_create_looker_reader.sql
--   3. Reverter o placeholder (deixar <SENHA_GERADA>) antes de commit.
--
-- Gaps conhecidos (não bloqueiam esta migration):
--   ⚠️ Pingolead NÃO tem tabelas de marketing/ads (impressões, cliques,
--      investimento, CTR, CPC, CPA, CPL, canais). KPIs de ads do dashboard
--      atual virão do Sheets via data source híbrida no Looker novo
--      (Postgres p/ vendas + Sheets p/ ads). Futuro: criar tabela daily_ads
--      na Pingolead quando Eduardo implementar pipeline.
-- ==========================================================================

BEGIN;

-- 1. Role de leitura (logable, sem herança de outros roles)
CREATE ROLE looker_reader WITH LOGIN PASSWORD '<SENHA_GERADA>' NOINHERIT;

-- 2. BYPASSRLS — Looker Studio é BI externo; precisa ignorar RLS
--    que o Supabase liga por default em tabelas com auth/tenant-scoped.
ALTER ROLE looker_reader BYPASSRLS;

-- 3. Conexão e USAGE
GRANT CONNECT ON DATABASE postgres TO looker_reader;
GRANT USAGE ON SCHEMA public TO looker_reader;

-- 4. GRANT SELECT APENAS em crm_*
--    Enumeração via catalog garante que só tabelas existentes são alcançadas
--    e que novas tabelas crm_* (se Pingolead criar) podem ser pegas ao
--    reaplicar esta migration.
DO $$
DECLARE
  t record;
  n int := 0;
BEGIN
  FOR t IN
    SELECT table_name
    FROM information_schema.tables
    WHERE table_schema = 'public'
      AND table_type  = 'BASE TABLE'
      AND table_name LIKE 'crm\_%'  -- underscore literal
    ORDER BY table_name
  LOOP
    EXECUTE format('GRANT SELECT ON public.%I TO looker_reader', t.table_name);
    RAISE NOTICE 'GRANT SELECT ON public.% → looker_reader', t.table_name;
    n := n + 1;
  END LOOP;
  RAISE NOTICE 'Total de tabelas crm_* liberadas: %', n;
END $$;

-- 5. Default privileges para tabelas crm_* futuras NÃO são configuradas
--    globalmente (evita que tabelas não-CRM herdem acesso). Para uma nova
--    crm_*, reaplicar esta migration ou rodar GRANT avulso.

COMMIT;

-- ==========================================================================
-- Validação pós-apply (como looker_reader via pooler)
-- ==========================================================================
--   # DEVE retornar uma contagem
--   SELECT COUNT(*) FROM public.crm_deals;
--
--   # DEVE falhar com "permission denied" (tabela fora do escopo CRM)
--   SELECT COUNT(*) FROM public.rh_folha_mensal;
--   SELECT COUNT(*) FROM public.sienge_contratos_de_vendas;
--   SELECT COUNT(*) FROM public.cidades;
--
--   # DEVE falhar (role é read-only)
--   INSERT INTO public.crm_deals (id) VALUES (gen_random_uuid());
-- ==========================================================================
