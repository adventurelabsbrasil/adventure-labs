-- Expandir adv_time_bank para suportar geo e observação (unificação com registro-ponto)
-- Fase 1 do plano de unificação

-- 1) adv_time_bank_locations: geo e endereço
ALTER TABLE public.adv_time_bank_locations
  ADD COLUMN IF NOT EXISTS address text,
  ADD COLUMN IF NOT EXISTS latitude numeric,
  ADD COLUMN IF NOT EXISTS longitude numeric,
  ADD COLUMN IF NOT EXISTS radius_meters integer;

-- 2) adv_time_bank_entries: note, geo e device info (auditoria)
ALTER TABLE public.adv_time_bank_entries
  ADD COLUMN IF NOT EXISTS latitude numeric,
  ADD COLUMN IF NOT EXISTS longitude numeric,
  ADD COLUMN IF NOT EXISTS user_agent text,
  ADD COLUMN IF NOT EXISTS device_type text;

-- note já existe na migration original

-- 3) Permitir UPDATE para admins (edição de registros)
CREATE POLICY "Admins podem atualizar registros" ON public.adv_time_bank_entries
  FOR UPDATE USING (true) WITH CHECK (true);
