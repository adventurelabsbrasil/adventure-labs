-- ============================================
-- CRM no Admin: schema adv_crm_* com tenant_id e RLS
-- ============================================
-- Auth: Supabase Auth + adv_profiles (sem crm_users). RLS usa is_adv_admin() e tenant_id.
-- Central tenant: mesmo UUID usado no restante do Admin (Trello, etc.).
-- ============================================

-- Estágios do funil (por tenant; seed default pode ser adicionado em migration separada)
CREATE TABLE adv_crm_funnel_stages (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  tenant_id UUID NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000',
  name TEXT NOT NULL,
  sort_order INT NOT NULL DEFAULT 0,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  UNIQUE(tenant_id, name)
);

CREATE INDEX idx_adv_crm_funnel_stages_tenant ON adv_crm_funnel_stages(tenant_id);
CREATE INDEX idx_adv_crm_funnel_stages_tenant_sort ON adv_crm_funnel_stages(tenant_id, sort_order);

CREATE TRIGGER adv_crm_funnel_stages_updated_at
  BEFORE UPDATE ON adv_crm_funnel_stages
  FOR EACH ROW EXECUTE PROCEDURE adv_set_updated_at();

-- Empresas (clientes no CRM)
CREATE TABLE adv_crm_companies (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  tenant_id UUID NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000',
  name TEXT NOT NULL,
  notes TEXT,
  adv_client_id UUID REFERENCES adv_clients(id) ON DELETE SET NULL,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE INDEX idx_adv_crm_companies_tenant ON adv_crm_companies(tenant_id);
CREATE INDEX idx_adv_crm_companies_name ON adv_crm_companies(tenant_id, name);

CREATE TRIGGER adv_crm_companies_updated_at
  BEFORE UPDATE ON adv_crm_companies
  FOR EACH ROW EXECUTE PROCEDURE adv_set_updated_at();

-- Contatos / leads (whatsapp_id para sync com worker)
CREATE TABLE adv_crm_contacts (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  tenant_id UUID NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000',
  company_id UUID REFERENCES adv_crm_companies(id) ON DELETE SET NULL,
  name TEXT,
  email TEXT,
  phone TEXT,
  whatsapp_id TEXT,
  source TEXT,
  tags TEXT[] DEFAULT '{}',
  notes TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE INDEX idx_adv_crm_contacts_tenant ON adv_crm_contacts(tenant_id);
CREATE INDEX idx_adv_crm_contacts_company ON adv_crm_contacts(company_id);
CREATE INDEX idx_adv_crm_contacts_whatsapp ON adv_crm_contacts(tenant_id, whatsapp_id);
CREATE INDEX idx_adv_crm_contacts_phone ON adv_crm_contacts(tenant_id, phone);

CREATE TRIGGER adv_crm_contacts_updated_at
  BEFORE UPDATE ON adv_crm_contacts
  FOR EACH ROW EXECUTE PROCEDURE adv_set_updated_at();

-- Negociações / deals (estágio no funil, responsável = auth.uid() do Admin)
CREATE TABLE adv_crm_deals (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  tenant_id UUID NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000',
  contact_id UUID REFERENCES adv_crm_contacts(id) ON DELETE SET NULL,
  company_id UUID REFERENCES adv_crm_companies(id) ON DELETE SET NULL,
  stage_id UUID NOT NULL REFERENCES adv_crm_funnel_stages(id) ON DELETE RESTRICT,
  title TEXT NOT NULL,
  value_cents BIGINT,
  assigned_to UUID,
  tags TEXT[] DEFAULT '{}',
  notes TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE INDEX idx_adv_crm_deals_tenant ON adv_crm_deals(tenant_id);
CREATE INDEX idx_adv_crm_deals_stage ON adv_crm_deals(stage_id);
CREATE INDEX idx_adv_crm_deals_contact ON adv_crm_deals(contact_id);
CREATE INDEX idx_adv_crm_deals_company ON adv_crm_deals(company_id);

CREATE TRIGGER adv_crm_deals_updated_at
  BEFORE UPDATE ON adv_crm_deals
  FOR EACH ROW EXECUTE PROCEDURE adv_set_updated_at();

-- Projetos / produtos por empresa (vínculo futuro com funções/subfunções)
CREATE TABLE adv_crm_products (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  tenant_id UUID NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000',
  company_id UUID REFERENCES adv_crm_companies(id) ON DELETE CASCADE,
  name TEXT NOT NULL,
  notes TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE INDEX idx_adv_crm_products_tenant ON adv_crm_products(tenant_id);
CREATE INDEX idx_adv_crm_products_company ON adv_crm_products(company_id);

CREATE TRIGGER adv_crm_products_updated_at
  BEFORE UPDATE ON adv_crm_products
  FOR EACH ROW EXECUTE PROCEDURE adv_set_updated_at();

-- Cache/sync de contatos vindos do WhatsApp (para cruzar com adv_crm_contacts)
CREATE TABLE adv_crm_whatsapp_sync (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  tenant_id UUID NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000',
  chat_id TEXT NOT NULL,
  name TEXT,
  is_group BOOLEAN NOT NULL DEFAULT false,
  last_message_at TIMESTAMPTZ,
  synced_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  UNIQUE(tenant_id, chat_id)
);

CREATE INDEX idx_adv_crm_whatsapp_sync_tenant ON adv_crm_whatsapp_sync(tenant_id);
CREATE INDEX idx_adv_crm_whatsapp_sync_chat ON adv_crm_whatsapp_sync(tenant_id, chat_id);

CREATE TRIGGER adv_crm_whatsapp_sync_updated_at
  BEFORE UPDATE ON adv_crm_whatsapp_sync
  FOR EACH ROW EXECUTE PROCEDURE adv_set_updated_at();

-- ============================================
-- RLS: tenant isolation (mesmo padrão adv_trello)
-- ============================================
-- Apenas usuários autenticados; filtro por tenant_id fixo (Adventure).
-- Futuro: adv_crm_can_access_tenant(tenant_id) quando houver multi-tenant.
-- ============================================

ALTER TABLE adv_crm_funnel_stages ENABLE ROW LEVEL SECURITY;
ALTER TABLE adv_crm_companies ENABLE ROW LEVEL SECURITY;
ALTER TABLE adv_crm_contacts ENABLE ROW LEVEL SECURITY;
ALTER TABLE adv_crm_deals ENABLE ROW LEVEL SECURITY;
ALTER TABLE adv_crm_products ENABLE ROW LEVEL SECURITY;
ALTER TABLE adv_crm_whatsapp_sync ENABLE ROW LEVEL SECURITY;

-- adv_crm_funnel_stages
CREATE POLICY adv_crm_funnel_stages_select ON adv_crm_funnel_stages FOR SELECT TO authenticated
  USING (tenant_id = '00000000-0000-0000-0000-000000000000');
CREATE POLICY adv_crm_funnel_stages_insert ON adv_crm_funnel_stages FOR INSERT TO authenticated
  WITH CHECK (tenant_id = '00000000-0000-0000-0000-000000000000');
CREATE POLICY adv_crm_funnel_stages_update ON adv_crm_funnel_stages FOR UPDATE TO authenticated
  USING (tenant_id = '00000000-0000-0000-0000-000000000000')
  WITH CHECK (tenant_id = '00000000-0000-0000-0000-000000000000');
CREATE POLICY adv_crm_funnel_stages_delete ON adv_crm_funnel_stages FOR DELETE TO authenticated
  USING (tenant_id = '00000000-0000-0000-0000-000000000000');

-- adv_crm_companies
CREATE POLICY adv_crm_companies_select ON adv_crm_companies FOR SELECT TO authenticated
  USING (tenant_id = '00000000-0000-0000-0000-000000000000');
CREATE POLICY adv_crm_companies_insert ON adv_crm_companies FOR INSERT TO authenticated
  WITH CHECK (tenant_id = '00000000-0000-0000-0000-000000000000');
CREATE POLICY adv_crm_companies_update ON adv_crm_companies FOR UPDATE TO authenticated
  USING (tenant_id = '00000000-0000-0000-0000-000000000000')
  WITH CHECK (tenant_id = '00000000-0000-0000-0000-000000000000');
CREATE POLICY adv_crm_companies_delete ON adv_crm_companies FOR DELETE TO authenticated
  USING (tenant_id = '00000000-0000-0000-0000-000000000000');

-- adv_crm_contacts
CREATE POLICY adv_crm_contacts_select ON adv_crm_contacts FOR SELECT TO authenticated
  USING (tenant_id = '00000000-0000-0000-0000-000000000000');
CREATE POLICY adv_crm_contacts_insert ON adv_crm_contacts FOR INSERT TO authenticated
  WITH CHECK (tenant_id = '00000000-0000-0000-0000-000000000000');
CREATE POLICY adv_crm_contacts_update ON adv_crm_contacts FOR UPDATE TO authenticated
  USING (tenant_id = '00000000-0000-0000-0000-000000000000')
  WITH CHECK (tenant_id = '00000000-0000-0000-0000-000000000000');
CREATE POLICY adv_crm_contacts_delete ON adv_crm_contacts FOR DELETE TO authenticated
  USING (tenant_id = '00000000-0000-0000-0000-000000000000');

-- adv_crm_deals
CREATE POLICY adv_crm_deals_select ON adv_crm_deals FOR SELECT TO authenticated
  USING (tenant_id = '00000000-0000-0000-0000-000000000000');
CREATE POLICY adv_crm_deals_insert ON adv_crm_deals FOR INSERT TO authenticated
  WITH CHECK (tenant_id = '00000000-0000-0000-0000-000000000000');
CREATE POLICY adv_crm_deals_update ON adv_crm_deals FOR UPDATE TO authenticated
  USING (tenant_id = '00000000-0000-0000-0000-000000000000')
  WITH CHECK (tenant_id = '00000000-0000-0000-0000-000000000000');
CREATE POLICY adv_crm_deals_delete ON adv_crm_deals FOR DELETE TO authenticated
  USING (tenant_id = '00000000-0000-0000-0000-000000000000');

-- adv_crm_products
CREATE POLICY adv_crm_products_select ON adv_crm_products FOR SELECT TO authenticated
  USING (tenant_id = '00000000-0000-0000-0000-000000000000');
CREATE POLICY adv_crm_products_insert ON adv_crm_products FOR INSERT TO authenticated
  WITH CHECK (tenant_id = '00000000-0000-0000-0000-000000000000');
CREATE POLICY adv_crm_products_update ON adv_crm_products FOR UPDATE TO authenticated
  USING (tenant_id = '00000000-0000-0000-0000-000000000000')
  WITH CHECK (tenant_id = '00000000-0000-0000-0000-000000000000');
CREATE POLICY adv_crm_products_delete ON adv_crm_products FOR DELETE TO authenticated
  USING (tenant_id = '00000000-0000-0000-0000-000000000000');

-- adv_crm_whatsapp_sync
CREATE POLICY adv_crm_whatsapp_sync_select ON adv_crm_whatsapp_sync FOR SELECT TO authenticated
  USING (tenant_id = '00000000-0000-0000-0000-000000000000');
CREATE POLICY adv_crm_whatsapp_sync_insert ON adv_crm_whatsapp_sync FOR INSERT TO authenticated
  WITH CHECK (tenant_id = '00000000-0000-0000-0000-000000000000');
CREATE POLICY adv_crm_whatsapp_sync_update ON adv_crm_whatsapp_sync FOR UPDATE TO authenticated
  USING (tenant_id = '00000000-0000-0000-0000-000000000000')
  WITH CHECK (tenant_id = '00000000-0000-0000-0000-000000000000');
CREATE POLICY adv_crm_whatsapp_sync_delete ON adv_crm_whatsapp_sync FOR DELETE TO authenticated
  USING (tenant_id = '00000000-0000-0000-0000-000000000000');

-- Comentários
COMMENT ON TABLE adv_crm_funnel_stages IS 'Estágios do funil de vendas do CRM Admin.';
COMMENT ON TABLE adv_crm_companies IS 'Empresas (clientes) no CRM; opcional adv_client_id para vínculo com adv_clients.';
COMMENT ON TABLE adv_crm_contacts IS 'Contatos/leads; whatsapp_id para sync com WhatsApp worker.';
COMMENT ON TABLE adv_crm_deals IS 'Negociações/leads no funil; assigned_to = auth.uid().';
COMMENT ON TABLE adv_crm_products IS 'Projetos/produtos por empresa; vínculo futuro com funções/subfunções.';
COMMENT ON TABLE adv_crm_whatsapp_sync IS 'Cache de chats do WhatsApp para importação de contatos no CRM.';
