import { NextResponse } from "next/server";
import { createServerSupabase } from "@/lib/supabase/server";
import { requireXpostrUser } from "@/lib/auth-check";

export const dynamic = "force-dynamic";

export async function GET() {
  try {
    const user = await requireXpostrUser();
    if (!user) {
      return NextResponse.json({ error: "não autorizado" }, { status: 401 });
    }

    const supabase = createServerSupabase();

    const [
    agents,
    tasks,
    messages,
    posts,
    cycles,
    feed,
    runState,
  ] = await Promise.all([
    supabase.from("adv_xpostr_agents").select("*").order("name"),
    supabase
      .from("adv_xpostr_tasks")
      .select("*")
      .order("created_at", { ascending: false })
      .limit(80),
    supabase
      .from("adv_xpostr_agent_messages")
      .select("*")
      .order("created_at", { ascending: false })
      .limit(50),
    supabase
      .from("adv_xpostr_posts")
      .select("*")
      .order("created_at", { ascending: false })
      .limit(20),
    supabase
      .from("adv_xpostr_cycles")
      .select("*")
      .order("cycle_number", { ascending: false })
      .limit(15),
    supabase
      .from("adv_xpostr_feed_events")
      .select("*")
      .order("created_at", { ascending: false })
      .limit(100),
    supabase.from("adv_xpostr_run_state").select("*").eq("id", "default").single(),
  ]);

    const errs = [
      agents.error,
      tasks.error,
      messages.error,
      posts.error,
      cycles.error,
      feed.error,
      runState.error,
    ].filter(Boolean);

    return NextResponse.json({
      agents: agents.data ?? [],
      tasks: tasks.data ?? [],
      messages: messages.data ?? [],
      posts: posts.data ?? [],
      cycles: cycles.data ?? [],
      feed: feed.data ?? [],
      runState: runState.data,
      errors: {
        agents: agents.error?.message,
        tasks: tasks.error?.message,
        supabase:
          errs.length > 0
            ? errs.map((e) => e?.message).join(" | ")
            : undefined,
      },
    });
  } catch (e) {
    const msg = e instanceof Error ? e.message : String(e);
    return NextResponse.json(
      {
        error: msg,
        hint:
          "Confira NEXT_PUBLIC_SUPABASE_URL e SUPABASE_SERVICE_ROLE_KEY. No monorepo, o arquivo é apps/xpostr/.env.local (não use só a raiz). Na Vercel, defina essas vars no projeto do Xpostr.",
      },
      { status: 500 }
    );
  }
}
