import type { SupabaseClient } from "@supabase/supabase-js";

export async function groveOpenCycle(
  supabase: SupabaseClient,
  cycleNumber: number,
  topic: string
) {
  await supabase
    .from("adv_xpostr_agents")
    .update({
      status: "working",
      current_task: `Ciclo ${cycleNumber}: orquestrando`,
      updated_at: new Date().toISOString(),
    })
    .eq("name", "Grove");

  await supabase.from("adv_xpostr_feed_events").insert({
    agent_name: "Grove",
    event_type: "cycle_start",
    message: `Ciclo ${cycleNumber} — tópico: ${topic.slice(0, 80)}…`,
    cycle_number: cycleNumber,
  });

  await supabase.from("adv_xpostr_agent_messages").insert({
    from_agent: "Grove",
    to_agent: "Zazu",
    message: `Ciclo ${cycleNumber}. Zazu: pesquise tendências acionáveis sobre: "${topic}". Foco B2B serviço Brasil, martech, faturamento 100k+.`,
    message_type: "directive",
    cycle_number: cycleNumber,
  });
}

export async function groveAfterZazu(
  supabase: SupabaseClient,
  cycleNumber: number
) {
  await supabase.from("adv_xpostr_agent_messages").insert({
    from_agent: "Grove",
    to_agent: "Ogilvy",
    message: `Zazu entregou o briefing. Ogilvy: transforme em post para ${cycleNumber} — educativo, técnico, útil para a comunidade. Máx. 260 caracteres no texto final.`,
    message_type: "directive",
    cycle_number: cycleNumber,
  });

  await supabase.from("adv_xpostr_feed_events").insert({
    agent_name: "Grove",
    event_type: "handoff",
    message: "Briefing → Ogilvy (copy)",
    cycle_number: cycleNumber,
  });
}

export async function groveCloseCycle(
  supabase: SupabaseClient,
  cycleNumber: number,
  success: boolean,
  detail?: string
) {
  const msg = success
    ? `Ciclo ${cycleNumber} concluído. Post ${detail ?? "processado"}.`
    : `Ciclo ${cycleNumber} encerrado com erro: ${detail ?? "—"}`;

  await supabase.from("adv_xpostr_agent_messages").insert({
    from_agent: "Grove",
    to_agent: null,
    message: msg,
    message_type: "directive",
    cycle_number: cycleNumber,
  });

  await supabase
    .from("adv_xpostr_agents")
    .update({
      status: "idle",
      current_task: null,
      updated_at: new Date().toISOString(),
    })
    .eq("name", "Grove");

  await supabase.from("adv_xpostr_feed_events").insert({
    agent_name: "Grove",
    event_type: success ? "cycle_end" : "cycle_error",
    message: msg.slice(0, 500),
    cycle_number: cycleNumber,
  });
}
