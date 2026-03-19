-- Backlog de ideias (copy, publicações, referências) para cronograma editorial e futuros agentes de criativos.
-- RLS por tenant_id.

CREATE TABLE IF NOT EXISTS adv_ideias (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  tenant_id UUID NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000',
  titulo TEXT NOT NULL,
  descricao TEXT,
  tipo TEXT NOT NULL DEFAULT 'referencia' CHECK (tipo IN ('copy', 'publicacao', 'referencia', 'criativo')),
  fonte TEXT NOT NULL DEFAULT 'skill-diaria' CHECK (fonte IN ('skill-diaria', 'manual', 'cursor', 'n8n')),
  status TEXT NOT NULL DEFAULT 'backlog' CHECK (status IN ('backlog', 'aprovado', 'no_cronograma', 'produzido')),
  list_slug TEXT,
  scheduled_for DATE,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE INDEX IF NOT EXISTS idx_adv_ideias_tenant ON adv_ideias(tenant_id);
CREATE INDEX IF NOT EXISTS idx_adv_ideias_tipo ON adv_ideias(tipo);
CREATE INDEX IF NOT EXISTS idx_adv_ideias_status ON adv_ideias(status);
CREATE INDEX IF NOT EXISTS idx_adv_ideias_created_at ON adv_ideias(created_at DESC);
CREATE INDEX IF NOT EXISTS idx_adv_ideias_scheduled_for ON adv_ideias(scheduled_for) WHERE scheduled_for IS NOT NULL;

DROP TRIGGER IF EXISTS adv_ideias_updated_at ON adv_ideias;
CREATE TRIGGER adv_ideias_updated_at
  BEFORE UPDATE ON adv_ideias
  FOR EACH ROW EXECUTE PROCEDURE adv_set_updated_at();

ALTER TABLE adv_ideias ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS adv_ideias_select ON adv_ideias;
DROP POLICY IF EXISTS adv_ideias_insert ON adv_ideias;
DROP POLICY IF EXISTS adv_ideias_update ON adv_ideias;
DROP POLICY IF EXISTS adv_ideias_delete ON adv_ideias;

CREATE POLICY adv_ideias_select ON adv_ideias FOR SELECT TO authenticated USING (true);
CREATE POLICY adv_ideias_insert ON adv_ideias FOR INSERT TO authenticated WITH CHECK (true);
CREATE POLICY adv_ideias_update ON adv_ideias FOR UPDATE TO authenticated USING (true);
CREATE POLICY adv_ideias_delete ON adv_ideias FOR DELETE TO authenticated USING (true);

COMMENT ON TABLE adv_ideias IS 'Backlog de ideias (editorial, copy, referências) para cronograma e agentes de criativos.';
