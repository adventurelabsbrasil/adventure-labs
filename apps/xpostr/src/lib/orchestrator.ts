import type { SupabaseClient } from "@supabase/supabase-js";
import { groveOpenCycle, groveAfterZazu, groveCloseCycle } from "@/lib/agents/grove";
import { zazuResearch } from "@/lib/agents/zazu";
import { ogilvyWritePost } from "@/lib/agents/ogilvy";
import { publishTweet } from "@/lib/twitter";
import { getTopicForCycle } from "@/lib/topics";

const FIFTEEN_MIN_MS = 15 * 60 * 1000;

async function upsertTask(
  supabase: SupabaseClient,
  patch: Record<string, unknown>,
  id: string
) {
  await supabase.from("adv_xpostr_tasks").update(patch).eq("id", id);
}

export type CycleResult =
  | { ok: true; skipped: true; reason: string }
  | { ok: true; skipped: false; cycleNumber: number; tweetId?: string; dryRun?: boolean }
  | { ok: false; error: string };

export async function runPipelineCycle(
  supabase: SupabaseClient,
  opts: { fromCron?: boolean; forceIntervalBypass?: boolean }
): Promise<CycleResult> {
  const { data: stateRows, error: stateErr } = await supabase
    .from("adv_xpostr_run_state")
    .select("*")
    .eq("id", "default")
    .single();

  if (stateErr || !stateRows) {
    return { ok: false, error: "run_state não encontrado — rode a migration SQL." };
  }

  const state = stateRows as {
    paused: boolean;
    extra_context: string;
    last_published_at: string | null;
    cycle_in_progress: boolean;
  };

  if (opts.fromCron && state.paused) {
    return { ok: true, skipped: true, reason: "pausado" };
  }

  if (state.last_published_at && !opts.forceIntervalBypass) {
    const last = new Date(state.last_published_at).getTime();
    if (Date.now() - last < FIFTEEN_MIN_MS) {
      return {
        ok: true,
        skipped: true,
        reason: "intervalo mínimo 15 min entre publicações",
      };
    }
  }

  const { data: locked } = await supabase
    .from("adv_xpostr_run_state")
    .update({
      cycle_in_progress: true,
      last_cycle_started_at: new Date().toISOString(),
      updated_at: new Date().toISOString(),
    })
    .eq("id", "default")
    .eq("cycle_in_progress", false)
    .select("id")
    .maybeSingle();

  if (!locked) {
    return { ok: true, skipped: true, reason: "ciclo já em andamento" };
  }

  const { data: maxCycle } = await supabase
    .from("adv_xpostr_cycles")
    .select("cycle_number")
    .order("cycle_number", { ascending: false })
    .limit(1)
    .maybeSingle();

  const cycleNumber = (maxCycle?.cycle_number ?? 0) + 1;
  const topic = getTopicForCycle(cycleNumber);
  const extra = state.extra_context ?? "";

  const tasksIns = await supabase
    .from("adv_xpostr_tasks")
    .insert([
      {
        title: "Grove — abrir ciclo",
        kanban_column: "queue",
        status: "queue",
        agent_name: "Grove",
        cycle_number: cycleNumber,
      },
      {
        title: "Zazu — pesquisa martech",
        kanban_column: "queue",
        status: "queue",
        agent_name: "Zazu",
        cycle_number: cycleNumber,
      },
      {
        title: "Ogilvy — copy",
        kanban_column: "queue",
        status: "queue",
        agent_name: "Ogilvy",
        cycle_number: cycleNumber,
      },
      {
        title: "Publicar no X",
        kanban_column: "queue",
        status: "queue",
        agent_name: "Grove",
        cycle_number: cycleNumber,
      },
    ])
    .select("id");

  const taskIds = (tasksIns.data ?? []).map((t) => t.id);
  const [tGrove, tZazu, tOgilvy, tPub] = taskIds;

  await supabase.from("adv_xpostr_cycles").insert({
    cycle_number: cycleNumber,
    topic,
    status: "running",
  });

  try {
    if (tGrove) {
      await upsertTask(
        supabase,
        {
          kanban_column: "doing",
          status: "executing",
          started_at: new Date().toISOString(),
          progress: 10,
        },
        tGrove
      );
    }
    await groveOpenCycle(supabase, cycleNumber, topic);
    if (tGrove) {
      await upsertTask(supabase, {
        kanban_column: "doing",
        status: "done",
        progress: 100,
        completed_at: new Date().toISOString(),
        result: "Ciclo aberto",
      }, tGrove);
    }

    if (tZazu) {
      await upsertTask(
        supabase,
        {
          kanban_column: "doing",
          status: "executing",
          started_at: new Date().toISOString(),
          progress: 20,
        },
        tZazu
      );
    }
    const report = await zazuResearch(supabase, cycleNumber, topic, extra);
    if (tZazu) {
      await upsertTask(supabase, {
        kanban_column: "doing",
        status: "done",
        progress: 100,
        completed_at: new Date().toISOString(),
        result: report.slice(0, 500),
      }, tZazu);
    }

    await groveAfterZazu(supabase, cycleNumber);

    if (tOgilvy) {
      await upsertTask(
        supabase,
        {
          kanban_column: "doing",
          status: "executing",
          started_at: new Date().toISOString(),
          progress: 40,
        },
        tOgilvy
      );
    }
    const postText = await ogilvyWritePost(
      supabase,
      cycleNumber,
      topic,
      report,
      extra
    );
    if (tOgilvy) {
      await upsertTask(supabase, {
        kanban_column: "doing",
        status: "done",
        progress: 100,
        completed_at: new Date().toISOString(),
        result: postText.slice(0, 400),
      }, tOgilvy);
    }

    if (tPub) {
      await upsertTask(
        supabase,
        {
          kanban_column: "doing",
          status: "executing",
          started_at: new Date().toISOString(),
          progress: 80,
        },
        tPub
      );
    }

    const tw = await publishTweet(postText);
    const hasCreds =
      !!process.env.X_ACCESS_TOKEN && !!process.env.X_API_KEY;

    let postStatus: "published" | "dry_run" | "error" = "dry_run";
    let tweetId: string | undefined;

    if (tw.ok && tw.tweetId) {
      postStatus = "published";
      tweetId = tw.tweetId;
    } else if (hasCreds && !tw.ok) {
      postStatus = "error";
    }

    await supabase.from("adv_xpostr_posts").insert({
      content: postText,
      topic,
      cycle_number: cycleNumber,
      status: postStatus,
      x_tweet_id: tweetId ?? null,
      x_published_at: tweetId ? new Date().toISOString() : null,
      scout_report: report.slice(0, 12000),
      word_count: postText.split(/\s+/).length,
    });

    if (tPub) {
      await upsertTask(supabase, {
        kanban_column: "published",
        status: "done",
        progress: 100,
        completed_at: new Date().toISOString(),
        result: tweetId ? `tweet ${tweetId}` : tw.error ?? "dry run",
      }, tPub);
    }

    if (tGrove)
      await upsertTask(supabase, { kanban_column: "published" }, tGrove);
    if (tZazu)
      await upsertTask(supabase, { kanban_column: "published" }, tZazu);
    if (tOgilvy)
      await upsertTask(supabase, { kanban_column: "published" }, tOgilvy);

    await supabase
      .from("adv_xpostr_cycles")
      .update({
        status: postStatus === "error" ? "error" : "completed",
        completed_at: new Date().toISOString(),
        error_message: postStatus === "error" ? tw.error ?? null : null,
      })
      .eq("cycle_number", cycleNumber);

    const now = new Date().toISOString();
    await supabase
      .from("adv_xpostr_run_state")
      .update({
        cycle_in_progress: false,
        last_published_at: now,
        updated_at: now,
      })
      .eq("id", "default");

    await groveCloseCycle(
      supabase,
      cycleNumber,
      postStatus !== "error",
      tweetId ? `publicado ${tweetId}` : postStatus
    );

    return {
      ok: true,
      skipped: false,
      cycleNumber,
      tweetId,
      dryRun: postStatus === "dry_run",
    };
  } catch (e) {
    const msg = e instanceof Error ? e.message : String(e);
    await supabase
      .from("adv_xpostr_cycles")
      .update({
        status: "error",
        completed_at: new Date().toISOString(),
        error_message: msg,
      })
      .eq("cycle_number", cycleNumber);

    await supabase
      .from("adv_xpostr_run_state")
      .update({
        cycle_in_progress: false,
        updated_at: new Date().toISOString(),
      })
      .eq("id", "default");

    await groveCloseCycle(supabase, cycleNumber, false, msg);
    return { ok: false, error: msg };
  }
}
