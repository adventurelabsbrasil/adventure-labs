-- =============================================================================
-- Lideraspace — Schema Multi-tenant (Fase 1)
-- =============================================================================

-- ---------------------------------------------------------------------------
-- 1. Tenants (clientes whitelabel)
-- ---------------------------------------------------------------------------
CREATE TABLE public.lms_tenants (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  slug TEXT NOT NULL UNIQUE,
  name TEXT NOT NULL,
  logo_url TEXT,
  primary_color TEXT NOT NULL DEFAULT '#C9A227',
  accent_color TEXT NOT NULL DEFAULT '#D4AF37',
  welcome_video_url TEXT,
  domain TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- ---------------------------------------------------------------------------
-- 2. LMS Users (extends auth.users com tenant + role)
-- ---------------------------------------------------------------------------
CREATE TABLE public.lms_users (
  id UUID PRIMARY KEY REFERENCES auth.users(id) ON DELETE CASCADE,
  tenant_id UUID REFERENCES public.lms_tenants(id) ON DELETE SET NULL,
  email TEXT NOT NULL,
  name TEXT,
  avatar_url TEXT,
  role TEXT NOT NULL DEFAULT 'member' CHECK (role IN ('admin', 'member')),
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- Trigger: criar lms_users ao cadastrar em auth.users
CREATE OR REPLACE FUNCTION public.handle_lms_new_user()
RETURNS TRIGGER
LANGUAGE plpgsql
SECURITY DEFINER SET search_path = public
AS $$
BEGIN
  INSERT INTO public.lms_users (id, email)
  VALUES (NEW.id, COALESCE(NEW.email, ''))
  ON CONFLICT (id) DO NOTHING;
  RETURN NEW;
END;
$$;

CREATE TRIGGER on_lms_auth_user_created
  AFTER INSERT ON auth.users
  FOR EACH ROW EXECUTE FUNCTION public.handle_lms_new_user();

-- ---------------------------------------------------------------------------
-- 3. Programas
-- ---------------------------------------------------------------------------
CREATE TABLE public.lms_programs (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  tenant_id UUID NOT NULL REFERENCES public.lms_tenants(id) ON DELETE CASCADE,
  title TEXT NOT NULL,
  description TEXT,
  cover_url TEXT,
  "order" INT NOT NULL DEFAULT 0,
  published BOOLEAN NOT NULL DEFAULT FALSE,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- ---------------------------------------------------------------------------
-- 4. Módulos
-- ---------------------------------------------------------------------------
CREATE TABLE public.lms_modules (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  program_id UUID NOT NULL REFERENCES public.lms_programs(id) ON DELETE CASCADE,
  title TEXT NOT NULL,
  description TEXT,
  "order" INT NOT NULL DEFAULT 0,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- ---------------------------------------------------------------------------
-- 5. Aulas
-- ---------------------------------------------------------------------------
CREATE TABLE public.lms_lessons (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  module_id UUID NOT NULL REFERENCES public.lms_modules(id) ON DELETE CASCADE,
  title TEXT NOT NULL,
  type TEXT NOT NULL DEFAULT 'video' CHECK (type IN ('video', 'doc', 'page')),
  video_url TEXT,
  content_md TEXT,
  material_url TEXT,
  "order" INT NOT NULL DEFAULT 0,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- ---------------------------------------------------------------------------
-- 6. Progresso do usuário
-- ---------------------------------------------------------------------------
CREATE TABLE public.lms_progress (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID NOT NULL REFERENCES public.lms_users(id) ON DELETE CASCADE,
  lesson_id UUID NOT NULL REFERENCES public.lms_lessons(id) ON DELETE CASCADE,
  completed BOOLEAN NOT NULL DEFAULT FALSE,
  completed_at TIMESTAMPTZ,
  UNIQUE(user_id, lesson_id)
);

-- ---------------------------------------------------------------------------
-- 7. Matrículas (quais programas o membro pode acessar)
-- ---------------------------------------------------------------------------
CREATE TABLE public.lms_enrollments (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID NOT NULL REFERENCES public.lms_users(id) ON DELETE CASCADE,
  program_id UUID NOT NULL REFERENCES public.lms_programs(id) ON DELETE CASCADE,
  enrolled_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  UNIQUE(user_id, program_id)
);

-- ---------------------------------------------------------------------------
-- 8. RLS Policies
-- ---------------------------------------------------------------------------
ALTER TABLE public.lms_tenants ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.lms_users ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.lms_programs ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.lms_modules ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.lms_lessons ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.lms_progress ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.lms_enrollments ENABLE ROW LEVEL SECURITY;

-- Tenants: leitura pública (necessário para branding)
CREATE POLICY "tenants_public_read"
  ON public.lms_tenants FOR SELECT USING (true);

-- lms_users: usuário vê apenas o próprio perfil
CREATE POLICY "lms_users_own"
  ON public.lms_users FOR ALL
  USING (id = auth.uid());

-- lms_programs: membros veem programas publicados do seu tenant nos quais estão matriculados
CREATE POLICY "lms_programs_enrolled_read"
  ON public.lms_programs FOR SELECT
  USING (
    published = true
    AND EXISTS (
      SELECT 1 FROM public.lms_enrollments e
      WHERE e.program_id = lms_programs.id
        AND e.user_id = auth.uid()
    )
  );

-- admins do tenant veem tudo
CREATE POLICY "lms_programs_admin_all"
  ON public.lms_programs FOR ALL
  USING (
    EXISTS (
      SELECT 1 FROM public.lms_users u
      WHERE u.id = auth.uid()
        AND u.tenant_id = lms_programs.tenant_id
        AND u.role = 'admin'
    )
  );

-- lms_modules: acessível se o programa for acessível
CREATE POLICY "lms_modules_read"
  ON public.lms_modules FOR SELECT
  USING (
    EXISTS (
      SELECT 1 FROM public.lms_programs p
      JOIN public.lms_enrollments e ON e.program_id = p.id
      WHERE p.id = lms_modules.program_id
        AND e.user_id = auth.uid()
        AND p.published = true
    )
    OR EXISTS (
      SELECT 1 FROM public.lms_programs p
      JOIN public.lms_users u ON u.tenant_id = p.tenant_id
      WHERE p.id = lms_modules.program_id
        AND u.id = auth.uid()
        AND u.role = 'admin'
    )
  );

-- lms_lessons: mesma lógica dos módulos
CREATE POLICY "lms_lessons_read"
  ON public.lms_lessons FOR SELECT
  USING (
    EXISTS (
      SELECT 1 FROM public.lms_modules m
      JOIN public.lms_programs p ON p.id = m.program_id
      JOIN public.lms_enrollments e ON e.program_id = p.id
      WHERE m.id = lms_lessons.module_id
        AND e.user_id = auth.uid()
        AND p.published = true
    )
    OR EXISTS (
      SELECT 1 FROM public.lms_modules m
      JOIN public.lms_programs p ON p.id = m.program_id
      JOIN public.lms_users u ON u.tenant_id = p.tenant_id
      WHERE m.id = lms_lessons.module_id
        AND u.id = auth.uid()
        AND u.role = 'admin'
    )
  );

-- lms_progress: usuário gerencia apenas o próprio progresso
CREATE POLICY "lms_progress_own"
  ON public.lms_progress FOR ALL
  USING (user_id = auth.uid());

-- lms_enrollments: usuário vê próprias matrículas; admin gerencia todas do tenant
CREATE POLICY "lms_enrollments_own_read"
  ON public.lms_enrollments FOR SELECT
  USING (user_id = auth.uid());

CREATE POLICY "lms_enrollments_admin_all"
  ON public.lms_enrollments FOR ALL
  USING (
    EXISTS (
      SELECT 1 FROM public.lms_users u
      JOIN public.lms_programs p ON p.tenant_id = u.tenant_id
      WHERE u.id = auth.uid()
        AND u.role = 'admin'
        AND p.id = lms_enrollments.program_id
    )
  );
