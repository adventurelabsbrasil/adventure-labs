import type { SupabaseClient } from "@supabase/supabase-js";
import { ADVENTURE_BRAND_BRIEF, X_HANDLE } from "@/lib/adventure-brand";
import { completeAssistantWithProvider } from "@/lib/llm";

export async function ogilvyWritePost(
  supabase: SupabaseClient,
  cycleNumber: number,
  topic: string,
  scoutReport: string,
  extraContext: string
): Promise<string> {
  await supabase
    .from("adv_xpostr_agents")
    .update({
      status: "working",
      current_task: `Copy ciclo ${cycleNumber}`,
      updated_at: new Date().toISOString(),
    })
    .eq("name", "Ogilvy");

  await supabase.from("adv_xpostr_feed_events").insert({
    agent_name: "Ogilvy",
    event_type: "copy_start",
    message: "Gerando post educativo…",
    cycle_number: cycleNumber,
  });

  const ctx = extraContext.trim()
    ? `\nContexto Suite: ${extraContext.slice(0, 1500)}`
    : "";

  const system = `Você é Ogilvy (CMO) da Adventure Labs. ${ADVENTURE_BRAND_BRIEF}
Tom: confiável, técnico quando fizer sentido, ousadia calculada. Público: gestores de empresas de serviço.
Saída: APENAS o texto do post, em português, máximo 260 caracteres, sem aspas envolvendo. Pode usar 1-2 hashtags relevantes ou nenhuma. Conta: ${X_HANDLE}.`;

  const user = `Tema: ${topic}

Briefing (Zazu):
${scoutReport.slice(0, 4000)}
${ctx}

Escreva UM único tweet pronto para publicar.`;

  const { text, provider } = await completeAssistantWithProvider(
    system,
    user,
    500
  );

  let content = text.trim();
  content = content.replace(/^["']|["']$/g, "").slice(0, 280);

  const { data: og } = await supabase
    .from("adv_xpostr_agents")
    .select("tasks_completed")
    .eq("name", "Ogilvy")
    .single();

  await supabase
    .from("adv_xpostr_agents")
    .update({
      status: "idle",
      current_task: null,
      tasks_completed: (og?.tasks_completed ?? 0) + 1,
      updated_at: new Date().toISOString(),
    })
    .eq("name", "Ogilvy");

  await supabase.from("adv_xpostr_feed_events").insert({
    agent_name: "Ogilvy",
    event_type: "copy_done",
    message: `Rascunho: ${content.slice(0, 120)}…`,
    cycle_number: cycleNumber,
  });

  await supabase.from("adv_xpostr_feed_events").insert({
    agent_name: "Ogilvy",
    event_type: "llm_provider",
    message: `LLM provider (Ogilvy): ${provider}`,
    cycle_number: cycleNumber,
  });

  return content;
}
