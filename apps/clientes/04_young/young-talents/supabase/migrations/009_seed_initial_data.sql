-- Dados iniciais de exemplo (empresas, cidades, setores, cargos, vagas, candidatos, candidaturas)
-- Executado após 007 e 008. Candidatos são inseridos em young_talents.candidates.

-- Cidades (id explícito para poder reexecutar o seed sem duplicar)
INSERT INTO young_talents.cities (id, name) VALUES
  ('a1000000-0000-4000-8000-000000000001', 'Porto Alegre'),
  ('a1000000-0000-4000-8000-000000000002', 'Caxias do Sul'),
  ('a1000000-0000-4000-8000-000000000003', 'Pelotas'),
  ('a1000000-0000-4000-8000-000000000004', 'Santa Maria'),
  ('a1000000-0000-4000-8000-000000000005', 'Gravataí')
ON CONFLICT (id) DO NOTHING;

-- Empresas
INSERT INTO young_talents.companies (id, name, city) VALUES
  ('b2000000-0000-4000-8000-000000000001', 'Young Empreendimentos', 'Porto Alegre'),
  ('b2000000-0000-4000-8000-000000000002', 'Tech Sul Ltda', 'Caxias do Sul'),
  ('b2000000-0000-4000-8000-000000000003', 'Indústria RS', 'Pelotas')
ON CONFLICT (id) DO NOTHING;

-- Setores (name é UNIQUE)
INSERT INTO young_talents.sectors (id, name) VALUES
  ('c3000000-0000-4000-8000-000000000001', 'Tecnologia'),
  ('c3000000-0000-4000-8000-000000000002', 'Administrativo'),
  ('c3000000-0000-4000-8000-000000000003', 'Comercial'),
  ('c3000000-0000-4000-8000-000000000004', 'Operações')
ON CONFLICT (name) DO NOTHING;

-- Cargos (positions)
INSERT INTO young_talents.positions (id, name, level) VALUES
  ('d4000000-0000-4000-8000-000000000001', 'Analista', 'Pleno'),
  ('d4000000-0000-4000-8000-000000000002', 'Assistente', 'Júnior'),
  ('d4000000-0000-4000-8000-000000000003', 'Coordenador', 'Sênior'),
  ('d4000000-0000-4000-8000-000000000004', 'Estagiário', 'Trainee')
ON CONFLICT (id) DO NOTHING;

-- Vagas (jobs) – referenciam company/city como texto para manter compatibilidade com o front
INSERT INTO young_talents.jobs (id, title, code, company, city, interest_area, sector, position, status, contract_type, work_model, vacancies, priority, description, requirements, created_at) VALUES
  ('e5000000-0000-4000-8000-000000000001', 'Analista de TI', 'VAG-001', 'Young Empreendimentos', 'Porto Alegre', 'Tecnologia', 'Tecnologia', 'Analista', 'Aberta', 'CLT', 'Presencial', 1, 'Alta', 'Atuar no suporte e desenvolvimento de sistemas internos.', 'Conhecimento em JavaScript, SQL. Experiência com atendimento.', NOW() - INTERVAL '10 days'),
  ('e5000000-0000-4000-8000-000000000002', 'Assistente Administrativo', 'VAG-002', 'Young Empreendimentos', 'Porto Alegre', 'Administrativo', 'Administrativo', 'Assistente', 'Aberta', 'CLT', 'Híbrido', 2, 'Média', 'Apoio à área administrativa e financeira.', 'Excel intermediário, organização.', NOW() - INTERVAL '5 days'),
  ('e5000000-0000-4000-8000-000000000003', 'Estagiário Comercial', 'VAG-003', 'Tech Sul Ltda', 'Caxias do Sul', 'Comercial', 'Comercial', 'Estagiário', 'Aberta', 'Estágio', 'Presencial', 1, 'Média', 'Auxiliar no relacionamento com clientes e prospecção.', 'Cursando ensino superior. Boa comunicação.', NOW() - INTERVAL '2 days')
ON CONFLICT (id) DO NOTHING;

-- Candidatos de exemplo (young_talents.candidates) – IDs fixos para poder referenciar em applications
-- ON CONFLICT (id): email pode não ser UNIQUE após migration 011
INSERT INTO young_talents.candidates (
  id, full_name, email, phone, city, schooling_level, interest_areas, source, status, origin, created_by, created_at
) VALUES
  ('f6000000-0000-4000-8000-000000000001', 'Maria Silva', 'maria.silva@email.com', '(51) 99999-1001', 'Porto Alegre', 'Superior completo', 'Tecnologia, Administrativo', 'LinkedIn', 'Inscrito', 'seed', 'Sistema', NOW() - INTERVAL '8 days'),
  ('f6000000-0000-4000-8000-000000000002', 'João Santos', 'joao.santos@email.com', '(51) 99999-1002', 'Caxias do Sul', 'Superior em andamento', 'Comercial', 'Indicação', 'Considerado', 'seed', 'Sistema', NOW() - INTERVAL '6 days'),
  ('f6000000-0000-4000-8000-000000000003', 'Ana Oliveira', 'ana.oliveira@email.com', '(51) 99999-1003', 'Porto Alegre', 'Superior completo', 'Administrativo', 'Formulário Público', 'Inscrito', 'seed', 'Sistema', NOW() - INTERVAL '3 days')
ON CONFLICT (id) DO NOTHING;

-- Candidaturas (applications) – ligam candidatos às vagas
INSERT INTO young_talents.applications (candidate_id, job_id, candidate_name, candidate_email, job_title, job_company, status, applied_at, created_by) VALUES
  ('f6000000-0000-4000-8000-000000000001', 'e5000000-0000-4000-8000-000000000001', 'Maria Silva', 'maria.silva@email.com', 'Analista de TI', 'Young Empreendimentos', 'Inscrito', NOW() - INTERVAL '7 days', 'Sistema'),
  ('f6000000-0000-4000-8000-000000000002', 'e5000000-0000-4000-8000-000000000003', 'João Santos', 'joao.santos@email.com', 'Estagiário Comercial', 'Tech Sul Ltda', 'Considerado', NOW() - INTERVAL '5 days', 'Sistema'),
  ('f6000000-0000-4000-8000-000000000003', 'e5000000-0000-4000-8000-000000000002', 'Ana Oliveira', 'ana.oliveira@email.com', 'Assistente Administrativo', 'Young Empreendimentos', 'Inscrito', NOW() - INTERVAL '2 days', 'Sistema')
ON CONFLICT (candidate_id, job_id) DO NOTHING;
