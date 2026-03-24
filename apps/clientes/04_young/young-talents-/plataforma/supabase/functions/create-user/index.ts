// Edge Function: criar usuário com email/senha (apenas para admins)
// Permite que administradores criem novos usuários diretamente pelo frontend

import "jsr:@supabase/functions-js/edge-runtime.d.ts";
import { createClient } from "npm:@supabase/supabase-js@2";

const corsHeaders = {
  "Access-Control-Allow-Origin": "*",
  "Access-Control-Allow-Headers": "authorization, x-client-info, apikey, content-type",
};

interface CreateUserPayload {
  email: string;
  password: string;
  name?: string;
  role?: "admin" | "editor" | "viewer";
}

async function isAdminOrDeveloper(supabaseUrl: string, anonKey: string, jwt: string): Promise<boolean> {
  const client = createClient(supabaseUrl, anonKey, {
    global: { headers: { Authorization: `Bearer ${jwt}` } },
  });

  const { data: { user }, error } = await client.auth.getUser(jwt);
  if (error || !user?.email) return false;

  const devEmails = ["dev@local", "dev@adventurelabs.com.br", "developer@adventurelabs.com.br"];
  if (devEmails.includes(user.email.toLowerCase())) return true;

  const { data: roleRow } = await client
    .schema("young_talents")
    .from("user_roles")
    .select("role")
    .eq("email", user.email.toLowerCase())
    .maybeSingle();

  return roleRow?.role === "admin";
}

Deno.serve(async (req) => {
  if (req.method === "OPTIONS") {
    return new Response("ok", { headers: corsHeaders });
  }

  if (req.method !== "POST") {
    return new Response(
      JSON.stringify({ error: "Method not allowed" }),
      { status: 405, headers: { ...corsHeaders, "Content-Type": "application/json" } }
    );
  }

  const authHeader = req.headers.get("Authorization");
  if (!authHeader?.startsWith("Bearer ")) {
    return new Response(
      JSON.stringify({ error: "Missing or invalid Authorization header" }),
      { status: 401, headers: { ...corsHeaders, "Content-Type": "application/json" } }
    );
  }

  const jwt = authHeader.replace("Bearer ", "").trim();
  const supabaseUrl = Deno.env.get("SUPABASE_URL")!;
  const anonKey = Deno.env.get("SUPABASE_ANON_KEY")!;
  const serviceRoleKey = Deno.env.get("SUPABASE_SERVICE_ROLE_KEY")!;

  if (!supabaseUrl || !serviceRoleKey) {
    return new Response(
      JSON.stringify({ error: "Server configuration error" }),
      { status: 500, headers: { ...corsHeaders, "Content-Type": "application/json" } }
    );
  }

  const isAdmin = await isAdminOrDeveloper(supabaseUrl, anonKey, jwt);
  if (!isAdmin) {
    return new Response(
      JSON.stringify({ error: "Apenas administradores podem criar usuários" }),
      { status: 403, headers: { ...corsHeaders, "Content-Type": "application/json" } }
    );
  }

  let payload: CreateUserPayload;
  try {
    payload = await req.json();
  } catch {
    return new Response(
      JSON.stringify({ error: "Invalid JSON body" }),
      { status: 400, headers: { ...corsHeaders, "Content-Type": "application/json" } }
    );
  }

  const email = (payload?.email || "").trim().toLowerCase();
  const password = payload?.password;
  const name = (payload?.name || "").trim() || null;
  const role = ["admin", "editor", "viewer"].includes(payload?.role || "") ? payload.role : "editor";

  if (!email || !email.includes("@")) {
    return new Response(
      JSON.stringify({ error: "Email inválido" }),
      { status: 400, headers: { ...corsHeaders, "Content-Type": "application/json" } }
    );
  }

  if (!password || typeof password !== "string" || password.length < 6) {
    return new Response(
      JSON.stringify({ error: "Senha deve ter pelo menos 6 caracteres" }),
      { status: 400, headers: { ...corsHeaders, "Content-Type": "application/json" } }
    );
  }

  const supabaseAdmin = createClient(supabaseUrl, serviceRoleKey, {
    auth: { autoRefreshToken: false, persistSession: false },
  });

  const { data: authData, error: authError } = await supabaseAdmin.auth.admin.createUser({
    email,
    password,
    email_confirm: true,
    user_metadata: { name: name || undefined },
  });

  if (authError) {
    const msg = authError.message || "Erro ao criar usuário";
    const status = authError.message?.includes("already") ? 409 : 400;
    return new Response(
      JSON.stringify({ error: msg }),
      { status, headers: { ...corsHeaders, "Content-Type": "application/json" } }
    );
  }

  if (!authData.user) {
    return new Response(
      JSON.stringify({ error: "Usuário não foi criado" }),
      { status: 500, headers: { ...corsHeaders, "Content-Type": "application/json" } }
    );
  }

  const { error: roleError } = await supabaseAdmin
    .schema("young_talents")
    .from("user_roles")
    .upsert(
      {
        user_id: authData.user.id,
        email,
        name,
        role,
        updated_at: new Date().toISOString(),
      },
      { onConflict: "email" }
    );

  if (roleError) {
    return new Response(
      JSON.stringify({ error: "Usuário criado, mas erro ao definir permissão: " + roleError.message }),
      { status: 500, headers: { ...corsHeaders, "Content-Type": "application/json" } }
    );
  }

  return new Response(
    JSON.stringify({
      success: true,
      user: { id: authData.user.id, email, name, role },
    }),
    { status: 201, headers: { ...corsHeaders, "Content-Type": "application/json" } }
  );
});
