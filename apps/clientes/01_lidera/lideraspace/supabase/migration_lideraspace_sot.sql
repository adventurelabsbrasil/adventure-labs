-- ============================================================
-- LIDERASPACE — Migração completa para Supabase SOT
-- Projeto: xiqlaxjtngwecidyoxbs (contato@somoslidera.com.br)
-- Executar no SQL Editor do Supabase Dashboard
-- ============================================================

-- ─── 1. TABELAS ──────────────────────────────────────────────

CREATE TABLE IF NOT EXISTS lms_tenants (
  id             uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  slug           text UNIQUE NOT NULL,
  name           text NOT NULL,
  logo_url       text,
  primary_color  text NOT NULL DEFAULT '#C9A227',
  accent_color   text NOT NULL DEFAULT '#D4AF37',
  welcome_video_url text,
  domain         text,
  created_at     timestamptz NOT NULL DEFAULT now()
);

CREATE TABLE IF NOT EXISTS lms_users (
  id         uuid PRIMARY KEY REFERENCES auth.users(id) ON DELETE CASCADE,
  tenant_id  uuid REFERENCES lms_tenants(id),
  email      text NOT NULL,
  name       text,
  avatar_url text,
  role       text NOT NULL DEFAULT 'member' CHECK (role IN ('admin', 'member')),
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);

CREATE TABLE IF NOT EXISTS lms_programs (
  id          uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  tenant_id   uuid NOT NULL REFERENCES lms_tenants(id),
  title       text NOT NULL,
  description text,
  cover_url   text,
  "order"     integer NOT NULL DEFAULT 0,
  published   boolean NOT NULL DEFAULT false,
  created_at  timestamptz NOT NULL DEFAULT now(),
  updated_at  timestamptz NOT NULL DEFAULT now()
);

CREATE TABLE IF NOT EXISTS lms_modules (
  id          uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  program_id  uuid NOT NULL REFERENCES lms_programs(id) ON DELETE CASCADE,
  title       text NOT NULL,
  description text,
  "order"     integer NOT NULL DEFAULT 0,
  created_at  timestamptz NOT NULL DEFAULT now()
);

CREATE TABLE IF NOT EXISTS lms_lessons (
  id             uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  module_id      uuid NOT NULL REFERENCES lms_modules(id) ON DELETE CASCADE,
  title          text NOT NULL,
  type           text NOT NULL DEFAULT 'video',
  video_url      text,
  embed_url      text,
  content_md     text,
  content_blocks jsonb DEFAULT '[]'::jsonb,
  material_url   text,
  "order"        integer NOT NULL DEFAULT 0,
  created_at     timestamptz NOT NULL DEFAULT now(),
  updated_at     timestamptz NOT NULL DEFAULT now()
);

CREATE TABLE IF NOT EXISTS lms_progress (
  id           uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id      uuid NOT NULL REFERENCES lms_users(id) ON DELETE CASCADE,
  lesson_id    uuid NOT NULL REFERENCES lms_lessons(id) ON DELETE CASCADE,
  completed    boolean NOT NULL DEFAULT false,
  completed_at timestamptz,
  UNIQUE(user_id, lesson_id)
);

CREATE TABLE IF NOT EXISTS lms_notes (
  id         uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id    uuid NOT NULL REFERENCES lms_users(id) ON DELETE CASCADE,
  lesson_id  uuid NOT NULL REFERENCES lms_lessons(id) ON DELETE CASCADE,
  content    text NOT NULL DEFAULT '',
  updated_at timestamptz NOT NULL DEFAULT now(),
  UNIQUE(user_id, lesson_id)
);

CREATE TABLE IF NOT EXISTS lms_enrollments (
  id          uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id     uuid NOT NULL REFERENCES lms_users(id) ON DELETE CASCADE,
  program_id  uuid NOT NULL REFERENCES lms_programs(id) ON DELETE CASCADE,
  enrolled_at timestamptz NOT NULL DEFAULT now(),
  UNIQUE(user_id, program_id)
);

-- ─── 2. RLS ──────────────────────────────────────────────────

ALTER TABLE lms_tenants   ENABLE ROW LEVEL SECURITY;
ALTER TABLE lms_users     ENABLE ROW LEVEL SECURITY;
ALTER TABLE lms_programs  ENABLE ROW LEVEL SECURITY;
ALTER TABLE lms_modules   ENABLE ROW LEVEL SECURITY;
ALTER TABLE lms_lessons   ENABLE ROW LEVEL SECURITY;
ALTER TABLE lms_progress  ENABLE ROW LEVEL SECURITY;
ALTER TABLE lms_notes     ENABLE ROW LEVEL SECURITY;
ALTER TABLE lms_enrollments ENABLE ROW LEVEL SECURITY;

-- lms_tenants: leitura pública
CREATE POLICY "lms_tenants_public_read" ON lms_tenants FOR SELECT USING (true);

-- lms_users: próprio row + admins veem todos
CREATE POLICY "lms_users_own" ON lms_users FOR ALL USING (id = auth.uid());
CREATE POLICY "lms_users_admin_read" ON lms_users FOR SELECT USING (
  id = auth.uid()
  OR EXISTS (SELECT 1 FROM lms_users u WHERE u.id = auth.uid() AND u.role = 'admin')
);

-- lms_programs: membros inscritos leem publicados; admins tudo
CREATE POLICY "lms_programs_enrolled_read" ON lms_programs FOR SELECT USING (
  published = true AND EXISTS (
    SELECT 1 FROM lms_enrollments e
    WHERE e.program_id = lms_programs.id AND e.user_id = auth.uid()
  )
);
CREATE POLICY "lms_programs_admin_all" ON lms_programs FOR ALL USING (
  EXISTS (
    SELECT 1 FROM lms_users u
    WHERE u.id = auth.uid() AND u.tenant_id = lms_programs.tenant_id AND u.role = 'admin'
  )
);

-- lms_modules
CREATE POLICY "lms_modules_read" ON lms_modules FOR SELECT USING (
  EXISTS (
    SELECT 1 FROM lms_programs p JOIN lms_enrollments e ON e.program_id = p.id
    WHERE p.id = lms_modules.program_id AND e.user_id = auth.uid() AND p.published = true
  ) OR EXISTS (
    SELECT 1 FROM lms_programs p JOIN lms_users u ON u.tenant_id = p.tenant_id
    WHERE p.id = lms_modules.program_id AND u.id = auth.uid() AND u.role = 'admin'
  )
);
CREATE POLICY "lms_modules_admin_write" ON lms_modules FOR ALL USING (
  EXISTS (
    SELECT 1 FROM lms_programs p JOIN lms_users u ON u.tenant_id = p.tenant_id
    WHERE p.id = lms_modules.program_id AND u.id = auth.uid() AND u.role = 'admin'
  )
);

-- lms_lessons
CREATE POLICY "lms_lessons_read" ON lms_lessons FOR SELECT USING (
  EXISTS (
    SELECT 1 FROM lms_modules m
      JOIN lms_programs p ON p.id = m.program_id
      JOIN lms_enrollments e ON e.program_id = p.id
    WHERE m.id = lms_lessons.module_id AND e.user_id = auth.uid() AND p.published = true
  ) OR EXISTS (
    SELECT 1 FROM lms_modules m
      JOIN lms_programs p ON p.id = m.program_id
      JOIN lms_users u ON u.tenant_id = p.tenant_id
    WHERE m.id = lms_lessons.module_id AND u.id = auth.uid() AND u.role = 'admin'
  )
);
CREATE POLICY "lms_lessons_admin_write" ON lms_lessons FOR ALL USING (
  EXISTS (
    SELECT 1 FROM lms_modules m
      JOIN lms_programs p ON p.id = m.program_id
      JOIN lms_users u ON u.tenant_id = p.tenant_id
    WHERE m.id = lms_lessons.module_id AND u.id = auth.uid() AND u.role = 'admin'
  )
);

-- lms_progress: próprio
CREATE POLICY "lms_progress_own" ON lms_progress FOR ALL USING (user_id = auth.uid());

-- lms_notes: próprio
CREATE POLICY "lms_notes_owner" ON lms_notes FOR ALL USING (auth.uid() = user_id);

-- lms_enrollments
CREATE POLICY "lms_enrollments_own_read" ON lms_enrollments FOR SELECT USING (user_id = auth.uid());
CREATE POLICY "lms_enrollments_admin_all" ON lms_enrollments FOR ALL USING (
  EXISTS (
    SELECT 1 FROM lms_users u JOIN lms_programs p ON p.tenant_id = u.tenant_id
    WHERE u.id = auth.uid() AND u.role = 'admin' AND p.id = lms_enrollments.program_id
  )
);

-- ─── 3. TRIGGER: auto-cria lms_users no primeiro login ───────

CREATE OR REPLACE FUNCTION handle_lms_new_user()
RETURNS TRIGGER AS $$
DECLARE
  v_role      text := 'member';
  v_tenant_id uuid := '00000000-0000-0000-0000-000000000001';
  admin_emails text[] := ARRAY[
    'contato@somoslidera.com.br',
    'contato@adventurelabs.com.br',
    'rodrigo.ribas1991@gmail.com',
    'igor@adventurelabs.com.br'
  ];
BEGIN
  IF NEW.email = ANY(admin_emails) THEN
    v_role := 'admin';
  END IF;

  INSERT INTO public.lms_users (id, tenant_id, email, name, avatar_url, role)
  VALUES (
    NEW.id,
    v_tenant_id,
    COALESCE(NEW.email, ''),
    COALESCE(
      NEW.raw_user_meta_data->>'full_name',
      NEW.raw_user_meta_data->>'name',
      split_part(COALESCE(NEW.email, ''), '@', 1)
    ),
    NEW.raw_user_meta_data->>'avatar_url',
    v_role
  )
  ON CONFLICT (id) DO UPDATE SET
    role       = EXCLUDED.role,
    tenant_id  = COALESCE(lms_users.tenant_id, EXCLUDED.tenant_id),
    name       = COALESCE(EXCLUDED.name, lms_users.name),
    avatar_url = COALESCE(EXCLUDED.avatar_url, lms_users.avatar_url),
    updated_at = now();

  RETURN NEW;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

DROP TRIGGER IF EXISTS on_auth_user_created ON auth.users;
CREATE TRIGGER on_auth_user_created
  AFTER INSERT ON auth.users
  FOR EACH ROW EXECUTE FUNCTION handle_lms_new_user();

-- ─── 4. TENANT ───────────────────────────────────────────────

INSERT INTO lms_tenants (id, slug, name, primary_color, accent_color, welcome_video_url, domain)
VALUES (
  '00000000-0000-0000-0000-000000000001',
  'lidera',
  'Lidera',
  '#C9A227',
  '#D4AF37',
  'https://www.youtube.com/embed/dQw4w9WgXcQ',
  'lideraspace.adventurelabs.com.br'
)
ON CONFLICT (id) DO NOTHING;

-- ─── 5. PROGRAMAS SEED ───────────────────────────────────────

INSERT INTO lms_programs (id, tenant_id, title, description, published, "order") VALUES
  ('aaaaaaaa-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000001',
   'Gestão e Liderança de Alta Performance',
   'Desenvolva as competências essenciais para liderar equipes de alta performance em ambientes complexos.',
   true, 0),
  ('aaaaaaaa-0000-0000-0000-000000000002', '00000000-0000-0000-0000-000000000001',
   'Finanças para Líderes: DRE e Fluxo de Caixa',
   'Domine os principais indicadores financeiros e tome decisões baseadas em dados.',
   true, 1),
  ('aaaaaaaa-0000-0000-0000-000000000003', '00000000-0000-0000-0000-000000000001',
   'Cultura e Clima Organizacional',
   'Aprenda a construir e manter uma cultura organizacional forte e positiva.',
   false, 2)
ON CONFLICT (id) DO NOTHING;

INSERT INTO lms_modules (id, program_id, title, "order") VALUES
  ('bbbbbbbb-0000-0000-0000-000000000001', 'aaaaaaaa-0000-0000-0000-000000000001', 'Fundamentos da Liderança', 0),
  ('bbbbbbbb-0000-0000-0000-000000000002', 'aaaaaaaa-0000-0000-0000-000000000001', 'Gestão de Pessoas', 1),
  ('bbbbbbbb-0000-0000-0000-000000000003', 'aaaaaaaa-0000-0000-0000-000000000002', 'Indicadores Financeiros', 0)
ON CONFLICT (id) DO NOTHING;

INSERT INTO lms_lessons (id, module_id, title, type, "order") VALUES
  ('cccccccc-0000-0000-0000-000000000001', 'bbbbbbbb-0000-0000-0000-000000000001', 'O que é liderança transformacional?', 'video', 0),
  ('cccccccc-0000-0000-0000-000000000002', 'bbbbbbbb-0000-0000-0000-000000000001', 'Estilos de liderança', 'video', 1),
  ('cccccccc-0000-0000-0000-000000000003', 'bbbbbbbb-0000-0000-0000-000000000002', 'Feedback eficaz', 'page', 0),
  ('cccccccc-0000-0000-0000-000000000004', 'bbbbbbbb-0000-0000-0000-000000000002', 'Gestão de conflitos', 'video', 1),
  ('cccccccc-0000-0000-0000-000000000005', 'bbbbbbbb-0000-0000-0000-000000000002', 'Material de apoio', 'doc', 2),
  ('cccccccc-0000-0000-0000-000000000006', 'bbbbbbbb-0000-0000-0000-000000000003', 'Lendo o DRE', 'video', 0),
  ('cccccccc-0000-0000-0000-000000000007', 'bbbbbbbb-0000-0000-0000-000000000003', 'Fluxo de caixa na prática', 'video', 1)
ON CONFLICT (id) DO NOTHING;

-- ─── FIM ─────────────────────────────────────────────────────
-- Após rodar este SQL, atualize as env vars no Vercel:
--   NEXT_PUBLIC_SUPABASE_URL   = https://xiqlaxjtngwecidyoxbs.supabase.co
--   NEXT_PUBLIC_SUPABASE_ANON_KEY = <obter no Supabase Dashboard > Project Settings > API>
--   SUPABASE_SERVICE_ROLE_KEY  = <obter no Supabase Dashboard > Project Settings > API — NUNCA commitar>
