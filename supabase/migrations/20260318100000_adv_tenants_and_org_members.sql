-- ============================================
-- Tenants (organizações) e membros (funcionários) com roles padrão
-- ============================================
-- Tabelas centrais para multi-tenant:
-- - adv_tenants: organizações/tenants (clientes ou interno Adventure)
-- - adv_org_members: vínculo usuário ↔ tenant com role ('owner','admin','member','viewer')
-- Inclui funções auxiliares para resolver tenant e role a partir do JWT/Clerk.
-- ============================================

-- Tabela de tenants (organizações)
CREATE TABLE IF NOT EXISTS adv_tenants (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  slug TEXT NOT NULL UNIQUE,
  name TEXT NOT NULL,
  is_internal BOOLEAN NOT NULL DEFAULT FALSE,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE INDEX IF NOT EXISTS idx_adv_tenants_slug ON adv_tenants(slug);

DROP TRIGGER IF EXISTS adv_tenants_updated_at ON adv_tenants;
CREATE TRIGGER adv_tenants_updated_at
  BEFORE UPDATE ON adv_tenants
  FOR EACH ROW EXECUTE PROCEDURE adv_set_updated_at();

ALTER TABLE adv_tenants ENABLE ROW LEVEL SECURITY;

-- Por padrão, apenas authenticated podem listar tenants;
-- políticas mais restritivas podem ser adicionadas conforme necessidade.
DROP POLICY IF EXISTS adv_tenants_select ON adv_tenants;
CREATE POLICY adv_tenants_select ON adv_tenants
FOR SELECT TO authenticated
USING (true);

-- Tabela de membros da organização (funcionários por tenant)
CREATE TABLE IF NOT EXISTS adv_org_members (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  tenant_id UUID NOT NULL REFERENCES adv_tenants(id) ON DELETE CASCADE,
  user_email TEXT NOT NULL,
  role TEXT NOT NULL DEFAULT 'member' CHECK (role IN ('owner','admin','member','viewer')),
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  UNIQUE (tenant_id, user_email)
);

CREATE INDEX IF NOT EXISTS idx_adv_org_members_tenant ON adv_org_members(tenant_id);
CREATE INDEX IF NOT EXISTS idx_adv_org_members_user_email ON adv_org_members(user_email);

DROP TRIGGER IF EXISTS adv_org_members_updated_at ON adv_org_members;
CREATE TRIGGER adv_org_members_updated_at
  BEFORE UPDATE ON adv_org_members
  FOR EACH ROW EXECUTE PROCEDURE adv_set_updated_at();

ALTER TABLE adv_org_members ENABLE ROW LEVEL SECURITY;

-- Por padrão, apenas Adventure owner pode ler/escrever membros;
-- apps podem evoluir estas políticas conforme caso de uso.
DROP POLICY IF EXISTS adv_org_members_select ON adv_org_members;
DROP POLICY IF EXISTS adv_org_members_insert ON adv_org_members;
DROP POLICY IF EXISTS adv_org_members_update ON adv_org_members;
DROP POLICY IF EXISTS adv_org_members_delete ON adv_org_members;

-- ============================================
-- Funções de identidade Adventure / tenant / role
-- ============================================

-- Usa auth_user_email() existente para obter e-mail do JWT/Clerk.
CREATE OR REPLACE FUNCTION auth_is_adventure_owner()
RETURNS BOOLEAN AS $$
  SELECT
    auth_user_email() = 'contato@adventurelabs.com.br'
    OR auth.jwt()->>'adv_role' = 'founder';
$$ LANGUAGE SQL SECURITY DEFINER;

-- Slug do tenant atual a partir do JWT (setado pelo app).
CREATE OR REPLACE FUNCTION current_tenant_slug()
RETURNS TEXT AS $$
  SELECT NULLIF(auth.jwt()->>'current_tenant_slug', '');
$$ LANGUAGE SQL SECURITY DEFINER;

-- Id do tenant atual (resolve slug → id); NULL se não houver slug.
CREATE OR REPLACE FUNCTION current_tenant_id()
RETURNS UUID AS $$
  SELECT id
  FROM adv_tenants
  WHERE slug = current_tenant_slug();
$$ LANGUAGE SQL SECURITY DEFINER;

-- Role do usuário na organização (owner/admin/member/viewer) para o tenant atual.
-- Se for Adventure owner, trata como owner em qualquer tenant.
CREATE OR REPLACE FUNCTION org_member_role(tenant_id_val UUID)
RETURNS TEXT AS $$
  SELECT COALESCE(
    CASE
      WHEN auth_is_adventure_owner() THEN 'owner'
      ELSE (
        SELECT role
        FROM adv_org_members
        WHERE tenant_id = tenant_id_val
          AND user_email = auth_user_email()
      )
    END,
    'viewer'
  );
$$ LANGUAGE SQL SECURITY DEFINER;

-- Políticas mínimas para adv_org_members:
-- por padrão apenas Adventure owner gerencia; leitura pode ser aberta para autenticados
-- conforme necessidade futura.
CREATE POLICY adv_org_members_select ON adv_org_members
FOR SELECT TO authenticated
USING (auth_is_adventure_owner());

CREATE POLICY adv_org_members_insert ON adv_org_members
FOR INSERT TO authenticated
WITH CHECK (auth_is_adventure_owner());

CREATE POLICY adv_org_members_update ON adv_org_members
FOR UPDATE TO authenticated
USING (auth_is_adventure_owner())
WITH CHECK (auth_is_adventure_owner());

CREATE POLICY adv_org_members_delete ON adv_org_members
FOR DELETE TO authenticated
USING (auth_is_adventure_owner());

