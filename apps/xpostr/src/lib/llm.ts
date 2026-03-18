import OpenAI from "openai";
import Anthropic from "@anthropic-ai/sdk";

/**
 * Prioridade: OPENAI_API_KEY → ANTHROPIC_API_KEY → simulação.
 */
export async function completeAssistant(
  system: string,
  user: string,
  maxTokens = 1500
): Promise<string> {
  const openaiKey = process.env.OPENAI_API_KEY?.trim();
  if (openaiKey) {
    const client = new OpenAI({ apiKey: openaiKey });
    const model = process.env.OPENAI_MODEL?.trim() || "gpt-4o-mini";
    const res = await client.chat.completions.create({
      model,
      max_tokens: maxTokens,
      messages: [
        { role: "system", content: system },
        { role: "user", content: user },
      ],
    });
    const text = res.choices[0]?.message?.content?.trim();
    if (!text) throw new Error("OpenAI retornou resposta vazia");
    return text;
  }

  const anthropicKey = process.env.ANTHROPIC_API_KEY?.trim();
  if (anthropicKey) {
    const model =
      process.env.ANTHROPIC_MODEL?.trim() ?? "claude-sonnet-4-20250514";
    const fallback = "claude-3-5-sonnet-20241022";
    const client = new Anthropic({ apiKey: anthropicKey });
    const run = async (m: string) => {
      const res = await client.messages.create({
        model: m,
        max_tokens: maxTokens,
        system,
        messages: [{ role: "user", content: user }],
      });
      const block = res.content.find((b) => b.type === "text");
      return block && block.type === "text" ? block.text : "";
    };
    try {
      return await run(model);
    } catch {
      if (model !== fallback) return await run(fallback);
      throw new Error("Falha nas chamadas Anthropic");
    }
  }

  return `[sem OPENAI_API_KEY nem ANTHROPIC_API_KEY] Simulação: configure uma das chaves para conteúdo real.`;
}
