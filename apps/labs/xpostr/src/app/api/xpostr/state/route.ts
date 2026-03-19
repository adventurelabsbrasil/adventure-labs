import { NextResponse } from "next/server";
import { createServerSupabase } from "@/lib/supabase/server";
import { requireXpostrUser } from "@/lib/auth-check";

export async function GET() {
  const user = await requireXpostrUser();
  if (!user) {
    return NextResponse.json({ error: "não autorizado" }, { status: 401 });
  }

  const supabase = createServerSupabase();
  const { data, error } = await supabase
    .from("adv_xpostr_run_state")
    .select("*")
    .eq("id", "default")
    .single();

  if (error) {
    return NextResponse.json({ error: error.message }, { status: 500 });
  }
  return NextResponse.json(data);
}

export async function PATCH(req: Request) {
  const user = await requireXpostrUser();
  if (!user) {
    return NextResponse.json({ error: "não autorizado" }, { status: 401 });
  }

  const body = (await req.json().catch(() => ({}))) as {
    paused?: boolean;
    extra_context?: string;
  };

  const supabase = createServerSupabase();
  const patch: Record<string, unknown> = {
    updated_at: new Date().toISOString(),
  };
  if (typeof body.paused === "boolean") patch.paused = body.paused;
  if (typeof body.extra_context === "string") {
    patch.extra_context = body.extra_context.slice(0, 8000);
  }

  const { data, error } = await supabase
    .from("adv_xpostr_run_state")
    .update(patch)
    .eq("id", "default")
    .select()
    .single();

  if (error) {
    return NextResponse.json({ error: error.message }, { status: 500 });
  }
  return NextResponse.json(data);
}
