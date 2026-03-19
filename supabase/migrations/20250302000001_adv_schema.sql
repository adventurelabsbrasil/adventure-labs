-- Adventure Labs Admin — tabelas com prefixo adv_ (projeto ftctmseyrqhckutpfdeq)
-- RLS: apenas usuários autenticados (equipe interna)

-- Enum para status de cliente
CREATE TYPE adv_client_status AS ENUM ('ativo', 'inativo', 'prospect');

-- Enum para etapa do ciclo de vida do projeto
CREATE TYPE adv_project_stage AS ENUM ('briefing', 'implementacao', 'execucao', 'relatorio');

-- Tabela de clientes (tenant_id para multitenant; MVP pode usar valor fixo da agência)
CREATE TABLE adv_clients (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  tenant_id UUID NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000',
  nome TEXT NOT NULL,
  cnpj TEXT,
  contato TEXT,
  status adv_client_status NOT NULL DEFAULT 'ativo',
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

-- Tabela de projetos (client_id NULL = projeto interno; NOT NULL = projeto de cliente)
CREATE TABLE adv_projects (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  tenant_id UUID NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000',
  client_id UUID REFERENCES adv_clients(id) ON DELETE SET NULL,
  nome TEXT NOT NULL,
  stage adv_project_stage NOT NULL DEFAULT 'briefing',
  sub_status TEXT,
  assignee_email TEXT,
  link TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

-- Índices para filtros comuns
CREATE INDEX idx_adv_clients_tenant ON adv_clients(tenant_id);
CREATE INDEX idx_adv_clients_status ON adv_clients(status);
CREATE INDEX idx_adv_projects_tenant ON adv_projects(tenant_id);
CREATE INDEX idx_adv_projects_client ON adv_projects(client_id);
CREATE INDEX idx_adv_projects_stage ON adv_projects(stage);

-- Trigger updated_at
CREATE OR REPLACE FUNCTION adv_set_updated_at()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = now();
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER adv_clients_updated_at
  BEFORE UPDATE ON adv_clients
  FOR EACH ROW EXECUTE PROCEDURE adv_set_updated_at();

CREATE TRIGGER adv_projects_updated_at
  BEFORE UPDATE ON adv_projects
  FOR EACH ROW EXECUTE PROCEDURE adv_set_updated_at();

-- RLS
ALTER TABLE adv_clients ENABLE ROW LEVEL SECURITY;
ALTER TABLE adv_projects ENABLE ROW LEVEL SECURITY;

-- Políticas: usuários autenticados da equipe têm acesso total (admin interno)
CREATE POLICY adv_clients_select ON adv_clients FOR SELECT TO authenticated USING (true);
CREATE POLICY adv_clients_insert ON adv_clients FOR INSERT TO authenticated WITH CHECK (true);
CREATE POLICY adv_clients_update ON adv_clients FOR UPDATE TO authenticated USING (true);
CREATE POLICY adv_clients_delete ON adv_clients FOR DELETE TO authenticated USING (true);

CREATE POLICY adv_projects_select ON adv_projects FOR SELECT TO authenticated USING (true);
CREATE POLICY adv_projects_insert ON adv_projects FOR INSERT TO authenticated WITH CHECK (true);
CREATE POLICY adv_projects_update ON adv_projects FOR UPDATE TO authenticated USING (true);
CREATE POLICY adv_projects_delete ON adv_projects FOR DELETE TO authenticated USING (true);
