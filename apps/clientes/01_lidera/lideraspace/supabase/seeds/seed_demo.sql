-- =============================================================================
-- Lideraspace — Seed Demo (desenvolvimento / prototipagem)
-- Execute após criar um usuário no Supabase Auth e substituir o UUID abaixo.
-- =============================================================================

-- 1. Tenant Lidera
INSERT INTO public.lms_tenants (id, slug, name, primary_color, accent_color, welcome_video_url, domain)
VALUES (
  '00000000-0000-0000-0000-000000000001',
  'lidera',
  'Lidera',
  '#C9A227',
  '#D4AF37',
  'https://www.youtube.com/embed/dQw4w9WgXcQ',  -- substitua pelo vídeo real
  'localhost'
)
ON CONFLICT (id) DO NOTHING;

-- 2. Atualizar usuário existente com tenant + role
-- Substitua 'SEU-USER-UUID' pelo UUID do usuário criado no Supabase Auth
-- UPDATE public.lms_users
-- SET tenant_id = '00000000-0000-0000-0000-000000000001', role = 'member'
-- WHERE id = 'SEU-USER-UUID';

-- 3. Programa demo
INSERT INTO public.lms_programs (id, tenant_id, title, description, published, "order")
VALUES (
  '00000000-0000-0000-0000-000000000010',
  '00000000-0000-0000-0000-000000000001',
  'Liderança de Alta Performance',
  'Desenvolva as habilidades essenciais para liderar equipes com propósito, resultados e humanidade.',
  true,
  1
)
ON CONFLICT (id) DO NOTHING;

-- 4. Módulos
INSERT INTO public.lms_modules (id, program_id, title, description, "order")
VALUES
  ('00000000-0000-0000-0000-000000000020', '00000000-0000-0000-0000-000000000010', 'Fundamentos da Liderança', 'O que define um líder de verdade', 0),
  ('00000000-0000-0000-0000-000000000021', '00000000-0000-0000-0000-000000000010', 'Comunicação Assertiva', 'Como se comunicar com clareza e impacto', 1),
  ('00000000-0000-0000-0000-000000000022', '00000000-0000-0000-0000-000000000010', 'Gestão de Equipes', 'Ferramentas para liderar pessoas com eficiência', 2)
ON CONFLICT (id) DO NOTHING;

-- 5. Aulas — Módulo 1
INSERT INTO public.lms_lessons (id, module_id, title, type, "order")
VALUES
  ('00000000-0000-0000-0001-000000000001', '00000000-0000-0000-0000-000000000020', 'Bem-vindo ao programa', 'video', 0),
  ('00000000-0000-0000-0001-000000000002', '00000000-0000-0000-0000-000000000020', 'O que é liderança situacional', 'video', 1),
  ('00000000-0000-0000-0001-000000000003', '00000000-0000-0000-0000-000000000020', 'Planilha de autoavaliação de liderança', 'doc', 2)
ON CONFLICT (id) DO NOTHING;

-- Aulas — Módulo 2
INSERT INTO public.lms_lessons (id, module_id, title, type, "order")
VALUES
  ('00000000-0000-0000-0002-000000000001', '00000000-0000-0000-0000-000000000021', 'Os 4 pilares da comunicação eficaz', 'video', 0),
  ('00000000-0000-0000-0002-000000000002', '00000000-0000-0000-0000-000000000021', 'Como dar feedback estruturado', 'video', 1),
  ('00000000-0000-0000-0002-000000000003', '00000000-0000-0000-0000-000000000021', 'Template de 1:1 semanal', 'doc', 2),
  ('00000000-0000-0000-0002-000000000004', '00000000-0000-0000-0000-000000000021', 'Resumo do módulo', 'page', 3)
ON CONFLICT (id) DO NOTHING;

-- Aulas — Módulo 3
INSERT INTO public.lms_lessons (id, module_id, title, type, "order")
VALUES
  ('00000000-0000-0000-0003-000000000001', '00000000-0000-0000-0000-000000000022', 'Delegação com responsabilidade', 'video', 0),
  ('00000000-0000-0000-0003-000000000002', '00000000-0000-0000-0000-000000000022', 'OKRs para líderes', 'video', 1),
  ('00000000-0000-0000-0003-000000000003', '00000000-0000-0000-0000-000000000022', 'Planilha de OKRs da equipe', 'doc', 2)
ON CONFLICT (id) DO NOTHING;

-- 6. Matrícula: substitua 'SEU-USER-UUID' pelo UUID real do usuário
-- INSERT INTO public.lms_enrollments (user_id, program_id)
-- VALUES ('SEU-USER-UUID', '00000000-0000-0000-0000-000000000010')
-- ON CONFLICT DO NOTHING;
