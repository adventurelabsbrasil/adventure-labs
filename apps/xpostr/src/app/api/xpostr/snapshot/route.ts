import { NextResponse } from "next/server";
import { createServerSupabase } from "@/lib/supabase/server";
import { requireXpostrUser } from "@/lib/auth-check";

export async function GET() {
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
    },
  });
}
