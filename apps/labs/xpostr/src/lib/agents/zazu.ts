import type { SupabaseClient } from "@supabase/supabase-js";
import { ADVENTURE_BRAND_BRIEF } from "@/lib/adventure-brand";
import { completeAssistantWithProvider } from "@/lib/llm";

export async function zazuResearch(
  supabase: SupabaseClient,
  cycleNumber: number,
  topic: string,
  extraContext: string
): Promise<string> {
  await supabase
    .from("adv_xpostr_agents")
    .update({
      status: "working",
      current_task: `Pesquisa ciclo ${cycleNumber}`,
      updated_at: new Date().toISOString(),
    })
    .eq("name", "Zazu");

  await supabase.from("adv_xpostr_feed_events").insert({
    agent_name: "Zazu",
    event_type: "research_start",
    message: "Coletando linhas de tendência martech…",
    cycle_number: cycleNumber,
  });

  const ctx = extraContext.trim()
    ? `\n\nContexto adicional do Suite:\n${extraContext.slice(0, 2000)}`
    : "";

  const system = `Você é Zazu, inteligência martech da Adventure Labs. ${ADVENTURE_BRAND_BRIEF}
Responda em português do Brasil. Seja factual e acionável. Sem hashtags na pesquisa.`;

  const user = `Tema do ciclo: ${topic}.${ctx}

Gere um briefing de 3 a 6 bullets curtos: tendências, implicações para empresas de serviço 100k+, e ângulos para post educativo no X.`;

  const { text: report, provider } = await completeAssistantWithProvider(
    system,
    user,
    1200
  );

  await supabase.from("adv_xpostr_agent_messages").insert({
    from_agent: "Zazu",
    to_agent: "Ogilvy",
    message: report.slice(0, 8000),
    message_type: "briefing",
    cycle_number: cycleNumber,
  });

  await supabase.from("adv_xpostr_feed_events").insert({
    agent_name: "Zazu",
    event_type: "research_done",
    message: "Briefing enviado ao Ogilvy",
    cycle_number: cycleNumber,
  });

  await supabase.from("adv_xpostr_feed_events").insert({
    agent_name: "Zazu",
    event_type: "llm_provider",
    message: `LLM provider (Zazu): ${provider}`,
    cycle_number: cycleNumber,
  });

  const { data: zazu } = await supabase
    .from("adv_xpostr_agents")
    .select("tasks_completed")
    .eq("name", "Zazu")
    .single();
  const n = (zazu?.tasks_completed ?? 0) + 1;
  await supabase
    .from("adv_xpostr_agents")
    .update({
      status: "idle",
      current_task: null,
      tasks_completed: n,
      updated_at: new Date().toISOString(),
    })
    .eq("name", "Zazu");

  return report;
}
