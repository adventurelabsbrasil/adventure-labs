import { NextResponse } from "next/server";
import { createServerSupabase } from "@/lib/supabase/server";
import { runPipelineCycle } from "@/lib/orchestrator";

export const dynamic = "force-dynamic";
export const maxDuration = 300;

export async function GET(req: Request) {
  const secret = process.env.CRON_SECRET;
  const auth = req.headers.get("authorization");
  const ok =
    secret &&
    auth === `Bearer ${secret}`;

  if (!ok) {
    return NextResponse.json({ error: "não autorizado" }, { status: 401 });
  }

  try {
    const supabase = createServerSupabase();
    const result = await runPipelineCycle(supabase, { fromCron: true });
    return NextResponse.json(result);
  } catch (e) {
    const msg = e instanceof Error ? e.message : String(e);
    return NextResponse.json({ ok: false, error: msg }, { status: 500 });
  }
}
