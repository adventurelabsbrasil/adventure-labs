-- Critical security fix: restrict time bank RLS to authenticated user.
-- Original issue: USING/WITH CHECK (true) allowed reads/inserts for any user_email.

-- 1) Remove permissive legacy policies (PT + EN names).
DROP POLICY IF EXISTS "Enable read access for all users" ON public.adv_time_bank_locations;
DROP POLICY IF EXISTS "Leitura pública para o tenant" ON public.adv_time_bank_locations;
DROP POLICY IF EXISTS "Enable insert/update for admins" ON public.adv_time_bank_locations;
DROP POLICY IF EXISTS "Admins podem tudo" ON public.adv_time_bank_locations;

DROP POLICY IF EXISTS "Users can insert their own entries" ON public.adv_time_bank_entries;
DROP POLICY IF EXISTS "Usuários inserem seu próprio ponto" ON public.adv_time_bank_entries;
DROP POLICY IF EXISTS "Users can view entries for their tenant" ON public.adv_time_bank_entries;
DROP POLICY IF EXISTS "Usuários vêem seus próprios registros" ON public.adv_time_bank_entries;

DROP POLICY IF EXISTS "Users can insert their own usages" ON public.adv_time_bank_usages;
DROP POLICY IF EXISTS "Usuários inserem seus usos" ON public.adv_time_bank_usages;
DROP POLICY IF EXISTS "Users can view usages for their tenant" ON public.adv_time_bank_usages;
DROP POLICY IF EXISTS "Usuários vêem seus usos" ON public.adv_time_bank_usages;

-- 2) Locations: authenticated read-only.
-- (no write policy => INSERT/UPDATE/DELETE blocked for authenticated clients)
CREATE POLICY "time_bank_locations_read_authenticated"
ON public.adv_time_bank_locations
FOR SELECT
TO authenticated
USING (tenant_id = '00000000-0000-0000-0000-000000000000'::uuid);

-- 3) Entries: each user can only insert/read own email records.
CREATE POLICY "time_bank_entries_insert_own_email"
ON public.adv_time_bank_entries
FOR INSERT
TO authenticated
WITH CHECK (
  tenant_id = '00000000-0000-0000-0000-000000000000'::uuid
  AND lower(user_email) = lower(coalesce(auth.jwt() ->> 'email', ''))
);

CREATE POLICY "time_bank_entries_select_own_email"
ON public.adv_time_bank_entries
FOR SELECT
TO authenticated
USING (
  tenant_id = '00000000-0000-0000-0000-000000000000'::uuid
  AND lower(user_email) = lower(coalesce(auth.jwt() ->> 'email', ''))
);

-- 4) Usages: each user can only insert/read own email records.
CREATE POLICY "time_bank_usages_insert_own_email"
ON public.adv_time_bank_usages
FOR INSERT
TO authenticated
WITH CHECK (
  tenant_id = '00000000-0000-0000-0000-000000000000'::uuid
  AND lower(user_email) = lower(coalesce(auth.jwt() ->> 'email', ''))
);

CREATE POLICY "time_bank_usages_select_own_email"
ON public.adv_time_bank_usages
FOR SELECT
TO authenticated
USING (
  tenant_id = '00000000-0000-0000-0000-000000000000'::uuid
  AND lower(user_email) = lower(coalesce(auth.jwt() ->> 'email', ''))
);
