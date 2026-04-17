import { createClient as createSupabaseClient } from "@supabase/supabase-js";

/**
 * Admin (service-role) Supabase client.
 * Requires SUPABASE_SERVICE_ROLE_KEY in Vercel env vars.
 * Never expose this key client-side.
 */
export function createAdminClient() {
  const url = process.env.NEXT_PUBLIC_SUPABASE_URL!;
  const serviceKey = process.env.SUPABASE_SERVICE_ROLE_KEY;

  if (!serviceKey) {
    throw new Error(
      "SUPABASE_SERVICE_ROLE_KEY não configurado. Adicione a variável de ambiente no Vercel."
    );
  }

  return createSupabaseClient(url, serviceKey, {
    auth: { autoRefreshToken: false, persistSession: false },
  });
}
