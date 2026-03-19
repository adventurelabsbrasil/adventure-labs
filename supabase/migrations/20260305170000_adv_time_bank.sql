-- ==========================================
-- SISTEMA DE BANCO DE HORAS (ATTENDANCE)
-- ==========================================

-- 1) Tabela de Localizações
CREATE TABLE IF NOT EXISTS public.adv_time_bank_locations (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  tenant_id uuid NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000',
  name text NOT NULL,
  active boolean NOT NULL DEFAULT true,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);

ALTER TABLE public.adv_time_bank_locations ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Leitura pública para o tenant" ON public.adv_time_bank_locations FOR SELECT USING (true);
CREATE POLICY "Admins podem tudo" ON public.adv_time_bank_locations FOR ALL USING (true);

-- 2) Registros de Ponto (Entries)
CREATE TABLE IF NOT EXISTS public.adv_time_bank_entries (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  tenant_id uuid NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000',
  user_email text NOT NULL,
  location_id uuid NOT NULL REFERENCES public.adv_time_bank_locations(id),
  type text NOT NULL CHECK (type IN ('clock_in', 'clock_out')),
  note text,
  recorded_at timestamptz NOT NULL DEFAULT now(),
  created_at timestamptz NOT NULL DEFAULT now()
);

CREATE INDEX IF NOT EXISTS idx_adv_time_bank_entries_user_recorded ON public.adv_time_bank_entries(user_email, recorded_at DESC);

ALTER TABLE public.adv_time_bank_entries ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Usuários inserem seu próprio ponto" ON public.adv_time_bank_entries FOR INSERT WITH CHECK (true);
CREATE POLICY "Usuários vêem seus próprios registros" ON public.adv_time_bank_entries FOR SELECT USING (true);

-- 3) Uso de Banco (Usages)
CREATE TABLE IF NOT EXISTS public.adv_time_bank_usages (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  tenant_id uuid NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000',
  user_email text NOT NULL,
  type text NOT NULL CHECK (type IN ('folga', 'sair_mais_cedo', 'horas_usadas')),
  hours_used numeric NOT NULL CHECK (hours_used > 0),
  usage_date date NOT NULL,
  note text,
  created_at timestamptz NOT NULL DEFAULT now()
);

ALTER TABLE public.adv_time_bank_usages ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Usuários inserem seus usos" ON public.adv_time_bank_usages FOR INSERT WITH CHECK (true);
CREATE POLICY "Usuários vêem seus usos" ON public.adv_time_bank_usages FOR SELECT USING (true);

-- 4) Carga Inicial de Locais
INSERT INTO public.adv_time_bank_locations (name, active) VALUES
  ('Escritório', true),
  ('Trabalho remoto 1', true),
  ('Trabalho remoto 2', true)
ON CONFLICT DO NOTHING;
