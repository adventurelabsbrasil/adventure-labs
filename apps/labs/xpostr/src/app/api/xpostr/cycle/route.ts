import { NextResponse } from "next/server";
import { createServerSupabase } from "@/lib/supabase/server";
import { runPipelineCycle } from "@/lib/orchestrator";
import { requireXpostrUser } from "@/lib/auth-check";

export const maxDuration = 300;

export async function POST(req: Request) {
  const user = await requireXpostrUser();
  if (!user) {
    return NextResponse.json({ error: "não autorizado" }, { status: 401 });
  }

  let forceIntervalBypass = false;
  try {
    const body = await req.json().catch(() => ({}));
    forceIntervalBypass = !!body.forceIntervalBypass;
  } catch {
    /* empty */
  }

  const supabase = createServerSupabase();
  const { data: st } = await supabase
    .from("adv_xpostr_run_state")
    .select("paused")
    .eq("id", "default")
    .single();

  if (st?.paused) {
    return NextResponse.json(
      { error: "Pipeline pausado. Inicie antes de rodar um ciclo." },
      { status: 400 }
    );
  }

  const result = await runPipelineCycle(supabase, {
    fromCron: false,
    forceIntervalBypass,
  });
  return NextResponse.json(result);
}
