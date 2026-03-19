-- Fix crítico: RLS multi-tenant real no CRM (adv_crm_*)
-- Substitui o tenant UUID fixo pelas políticas baseadas em memberships de tenant.
--
-- Observação:
-- - adv_org_members armazena user_email (não user_id), então usamos auth_user_email() como ponte com auth.uid().
-- - O subquery em adv_org_members depende de uma policy de SELECT que permita ao usuário ler seu próprio membership.

-- Pré-requisitos para ambientes onde a migration de tenants ainda não rodou.
CREATE TABLE IF NOT EXISTS adv_tenants (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  slug TEXT NOT NULL UNIQUE,
  name TEXT NOT NULL,
  is_internal BOOLEAN NOT NULL DEFAULT FALSE,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

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

ALTER TABLE adv_org_members ENABLE ROW LEVEL SECURITY;

CREATE OR REPLACE FUNCTION auth_user_email()
RETURNS TEXT AS $$
  SELECT COALESCE(
    (SELECT email FROM auth.users WHERE id = auth.uid()),
    auth.jwt()->>'email'
  );
$$ LANGUAGE SQL SECURITY DEFINER;

CREATE OR REPLACE FUNCTION auth_is_adventure_owner()
RETURNS BOOLEAN AS $$
  SELECT
    auth_user_email() = 'contato@adventurelabs.com.br'
    OR auth.jwt()->>'adv_role' = 'founder';
$$ LANGUAGE SQL SECURITY DEFINER;

-- Permitir que cada usuário autenticado leia seus próprios memberships de tenant
-- (necessário para o subquery nas policies de adv_crm_*).
DROP POLICY IF EXISTS adv_org_members_select ON adv_org_members;
CREATE POLICY adv_org_members_select ON adv_org_members
FOR SELECT TO authenticated
USING (
  auth_is_adventure_owner()
  OR user_email = auth_user_email()
);

-- CRM: tenant isolation por membership
DROP POLICY IF EXISTS adv_crm_funnel_stages_select ON adv_crm_funnel_stages;
DROP POLICY IF EXISTS adv_crm_funnel_stages_insert ON adv_crm_funnel_stages;
DROP POLICY IF EXISTS adv_crm_funnel_stages_update ON adv_crm_funnel_stages;
DROP POLICY IF EXISTS adv_crm_funnel_stages_delete ON adv_crm_funnel_stages;

CREATE POLICY adv_crm_funnel_stages_select ON adv_crm_funnel_stages FOR SELECT TO authenticated
  USING (
    tenant_id IN (
      SELECT m.tenant_id
      FROM adv_org_members m
      WHERE m.user_email = auth_user_email()
    )
  );

CREATE POLICY adv_crm_funnel_stages_insert ON adv_crm_funnel_stages FOR INSERT TO authenticated
  WITH CHECK (
    tenant_id IN (
      SELECT m.tenant_id
      FROM adv_org_members m
      WHERE m.user_email = auth_user_email()
    )
  );

CREATE POLICY adv_crm_funnel_stages_update ON adv_crm_funnel_stages FOR UPDATE TO authenticated
  USING (
    tenant_id IN (
      SELECT m.tenant_id
      FROM adv_org_members m
      WHERE m.user_email = auth_user_email()
    )
  )
  WITH CHECK (
    tenant_id IN (
      SELECT m.tenant_id
      FROM adv_org_members m
      WHERE m.user_email = auth_user_email()
    )
  );

CREATE POLICY adv_crm_funnel_stages_delete ON adv_crm_funnel_stages FOR DELETE TO authenticated
  USING (
    tenant_id IN (
      SELECT m.tenant_id
      FROM adv_org_members m
      WHERE m.user_email = auth_user_email()
    )
  );

DROP POLICY IF EXISTS adv_crm_companies_select ON adv_crm_companies;
DROP POLICY IF EXISTS adv_crm_companies_insert ON adv_crm_companies;
DROP POLICY IF EXISTS adv_crm_companies_update ON adv_crm_companies;
DROP POLICY IF EXISTS adv_crm_companies_delete ON adv_crm_companies;

CREATE POLICY adv_crm_companies_select ON adv_crm_companies FOR SELECT TO authenticated
  USING (
    tenant_id IN (
      SELECT m.tenant_id
      FROM adv_org_members m
      WHERE m.user_email = auth_user_email()
    )
  );

CREATE POLICY adv_crm_companies_insert ON adv_crm_companies FOR INSERT TO authenticated
  WITH CHECK (
    tenant_id IN (
      SELECT m.tenant_id
      FROM adv_org_members m
      WHERE m.user_email = auth_user_email()
    )
  );

CREATE POLICY adv_crm_companies_update ON adv_crm_companies FOR UPDATE TO authenticated
  USING (
    tenant_id IN (
      SELECT m.tenant_id
      FROM adv_org_members m
      WHERE m.user_email = auth_user_email()
    )
  )
  WITH CHECK (
    tenant_id IN (
      SELECT m.tenant_id
      FROM adv_org_members m
      WHERE m.user_email = auth_user_email()
    )
  );

CREATE POLICY adv_crm_companies_delete ON adv_crm_companies FOR DELETE TO authenticated
  USING (
    tenant_id IN (
      SELECT m.tenant_id
      FROM adv_org_members m
      WHERE m.user_email = auth_user_email()
    )
  );

DROP POLICY IF EXISTS adv_crm_contacts_select ON adv_crm_contacts;
DROP POLICY IF EXISTS adv_crm_contacts_insert ON adv_crm_contacts;
DROP POLICY IF EXISTS adv_crm_contacts_update ON adv_crm_contacts;
DROP POLICY IF EXISTS adv_crm_contacts_delete ON adv_crm_contacts;

CREATE POLICY adv_crm_contacts_select ON adv_crm_contacts FOR SELECT TO authenticated
  USING (
    tenant_id IN (
      SELECT m.tenant_id
      FROM adv_org_members m
      WHERE m.user_email = auth_user_email()
    )
  );

CREATE POLICY adv_crm_contacts_insert ON adv_crm_contacts FOR INSERT TO authenticated
  WITH CHECK (
    tenant_id IN (
      SELECT m.tenant_id
      FROM adv_org_members m
      WHERE m.user_email = auth_user_email()
    )
  );

CREATE POLICY adv_crm_contacts_update ON adv_crm_contacts FOR UPDATE TO authenticated
  USING (
    tenant_id IN (
      SELECT m.tenant_id
      FROM adv_org_members m
      WHERE m.user_email = auth_user_email()
    )
  )
  WITH CHECK (
    tenant_id IN (
      SELECT m.tenant_id
      FROM adv_org_members m
      WHERE m.user_email = auth_user_email()
    )
  );

CREATE POLICY adv_crm_contacts_delete ON adv_crm_contacts FOR DELETE TO authenticated
  USING (
    tenant_id IN (
      SELECT m.tenant_id
      FROM adv_org_members m
      WHERE m.user_email = auth_user_email()
    )
  );

DROP POLICY IF EXISTS adv_crm_deals_select ON adv_crm_deals;
DROP POLICY IF EXISTS adv_crm_deals_insert ON adv_crm_deals;
DROP POLICY IF EXISTS adv_crm_deals_update ON adv_crm_deals;
DROP POLICY IF EXISTS adv_crm_deals_delete ON adv_crm_deals;

CREATE POLICY adv_crm_deals_select ON adv_crm_deals FOR SELECT TO authenticated
  USING (
    tenant_id IN (
      SELECT m.tenant_id
      FROM adv_org_members m
      WHERE m.user_email = auth_user_email()
    )
  );

CREATE POLICY adv_crm_deals_insert ON adv_crm_deals FOR INSERT TO authenticated
  WITH CHECK (
    tenant_id IN (
      SELECT m.tenant_id
      FROM adv_org_members m
      WHERE m.user_email = auth_user_email()
    )
  );

CREATE POLICY adv_crm_deals_update ON adv_crm_deals FOR UPDATE TO authenticated
  USING (
    tenant_id IN (
      SELECT m.tenant_id
      FROM adv_org_members m
      WHERE m.user_email = auth_user_email()
    )
  )
  WITH CHECK (
    tenant_id IN (
      SELECT m.tenant_id
      FROM adv_org_members m
      WHERE m.user_email = auth_user_email()
    )
  );

CREATE POLICY adv_crm_deals_delete ON adv_crm_deals FOR DELETE TO authenticated
  USING (
    tenant_id IN (
      SELECT m.tenant_id
      FROM adv_org_members m
      WHERE m.user_email = auth_user_email()
    )
  );

DROP POLICY IF EXISTS adv_crm_products_select ON adv_crm_products;
DROP POLICY IF EXISTS adv_crm_products_insert ON adv_crm_products;
DROP POLICY IF EXISTS adv_crm_products_update ON adv_crm_products;
DROP POLICY IF EXISTS adv_crm_products_delete ON adv_crm_products;

CREATE POLICY adv_crm_products_select ON adv_crm_products FOR SELECT TO authenticated
  USING (
    tenant_id IN (
      SELECT m.tenant_id
      FROM adv_org_members m
      WHERE m.user_email = auth_user_email()
    )
  );

CREATE POLICY adv_crm_products_insert ON adv_crm_products FOR INSERT TO authenticated
  WITH CHECK (
    tenant_id IN (
      SELECT m.tenant_id
      FROM adv_org_members m
      WHERE m.user_email = auth_user_email()
    )
  );

CREATE POLICY adv_crm_products_update ON adv_crm_products FOR UPDATE TO authenticated
  USING (
    tenant_id IN (
      SELECT m.tenant_id
      FROM adv_org_members m
      WHERE m.user_email = auth_user_email()
    )
  )
  WITH CHECK (
    tenant_id IN (
      SELECT m.tenant_id
      FROM adv_org_members m
      WHERE m.user_email = auth_user_email()
    )
  );

CREATE POLICY adv_crm_products_delete ON adv_crm_products FOR DELETE TO authenticated
  USING (
    tenant_id IN (
      SELECT m.tenant_id
      FROM adv_org_members m
      WHERE m.user_email = auth_user_email()
    )
  );

DROP POLICY IF EXISTS adv_crm_whatsapp_sync_select ON adv_crm_whatsapp_sync;
DROP POLICY IF EXISTS adv_crm_whatsapp_sync_insert ON adv_crm_whatsapp_sync;
DROP POLICY IF EXISTS adv_crm_whatsapp_sync_update ON adv_crm_whatsapp_sync;
DROP POLICY IF EXISTS adv_crm_whatsapp_sync_delete ON adv_crm_whatsapp_sync;

CREATE POLICY adv_crm_whatsapp_sync_select ON adv_crm_whatsapp_sync FOR SELECT TO authenticated
  USING (
    tenant_id IN (
      SELECT m.tenant_id
      FROM adv_org_members m
      WHERE m.user_email = auth_user_email()
    )
  );

CREATE POLICY adv_crm_whatsapp_sync_insert ON adv_crm_whatsapp_sync FOR INSERT TO authenticated
  WITH CHECK (
    tenant_id IN (
      SELECT m.tenant_id
      FROM adv_org_members m
      WHERE m.user_email = auth_user_email()
    )
  );

CREATE POLICY adv_crm_whatsapp_sync_update ON adv_crm_whatsapp_sync FOR UPDATE TO authenticated
  USING (
    tenant_id IN (
      SELECT m.tenant_id
      FROM adv_org_members m
      WHERE m.user_email = auth_user_email()
    )
  )
  WITH CHECK (
    tenant_id IN (
      SELECT m.tenant_id
      FROM adv_org_members m
      WHERE m.user_email = auth_user_email()
    )
  );

CREATE POLICY adv_crm_whatsapp_sync_delete ON adv_crm_whatsapp_sync FOR DELETE TO authenticated
  USING (
    tenant_id IN (
      SELECT m.tenant_id
      FROM adv_org_members m
      WHERE m.user_email = auth_user_email()
    )
  );

