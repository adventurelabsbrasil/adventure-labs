-- Tabela de log de atividades (admin e auditoria)
CREATE TABLE IF NOT EXISTS young_talents.activity_log (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID REFERENCES auth.users(id) ON DELETE SET NULL,
  user_email TEXT,
  user_name TEXT,
  action TEXT NOT NULL,
  entity_type TEXT,
  entity_id TEXT,
  details TEXT,
  meta JSONB,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_activity_log_created_at ON young_talents.activity_log(created_at DESC);
CREATE INDEX IF NOT EXISTS idx_activity_log_entity ON young_talents.activity_log(entity_type, entity_id);
CREATE INDEX IF NOT EXISTS idx_activity_log_user ON young_talents.activity_log(user_email);

ALTER TABLE young_talents.activity_log ENABLE ROW LEVEL SECURITY;

-- Leitura: apenas admins (quem tem role admin em user_roles)
DROP POLICY IF EXISTS "Admin pode ler activity_log" ON young_talents.activity_log;
CREATE POLICY "Admin pode ler activity_log"
  ON young_talents.activity_log
  FOR SELECT
  TO authenticated
  USING (
    EXISTS (
      SELECT 1 FROM young_talents.user_roles ur
      WHERE ur.user_id = auth.uid()
      AND ur.role = 'admin'
    )
  );

-- Inserção: qualquer autenticado pode registrar sua própria ação
DROP POLICY IF EXISTS "Autenticado pode inserir activity_log" ON young_talents.activity_log;
CREATE POLICY "Autenticado pode inserir activity_log"
  ON young_talents.activity_log
  FOR INSERT
  TO authenticated
  WITH CHECK (true);

GRANT SELECT, INSERT ON young_talents.activity_log TO authenticated;

-- View pública para o app (ler via public)
CREATE OR REPLACE VIEW public.activity_log AS
SELECT id, user_id, user_email, user_name, action, entity_type, entity_id, details, meta, created_at
FROM young_talents.activity_log;

GRANT SELECT ON public.activity_log TO authenticated;

-- INSTEAD OF INSERT para que supabase.from('activity_log').insert() funcione (view em public)
CREATE OR REPLACE FUNCTION public.activity_log_insert()
RETURNS TRIGGER AS $$
BEGIN
  INSERT INTO young_talents.activity_log (user_id, user_email, user_name, action, entity_type, entity_id, details, meta)
  VALUES (NEW.user_id, NEW.user_email, NEW.user_name, NEW.action, NEW.entity_type, NEW.entity_id, NEW.details, NEW.meta);
  RETURN NEW;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

DROP TRIGGER IF EXISTS activity_log_insert_trigger ON public.activity_log;
CREATE TRIGGER activity_log_insert_trigger
  INSTEAD OF INSERT ON public.activity_log
  FOR EACH ROW EXECUTE FUNCTION public.activity_log_insert();

GRANT INSERT ON public.activity_log TO authenticated;

-- RLS na view: usar security_invoker ou policies na tabela base (já aplicadas)
-- A view herda acesso; SELECT é permitido apenas para quem passa RLS na tabela young_talents.activity_log
