import Anthropic from "@anthropic-ai/sdk";

const MODEL =
  process.env.ANTHROPIC_MODEL ?? "claude-sonnet-4-20250514";
const FALLBACK = "claude-3-5-sonnet-20241022";

export async function completeAssistant(
  system: string,
  user: string,
  maxTokens = 1500
): Promise<string> {
  const key = process.env.ANTHROPIC_API_KEY;
  if (!key) {
    return `[sem ANTHROPIC_API_KEY] Simulação: resumo sobre o tema solicitado — configure a chave para conteúdo real.`;
  }

  const client = new Anthropic({ apiKey: key });
  const run = async (model: string) => {
    const res = await client.messages.create({
      model,
      max_tokens: maxTokens,
      system,
      messages: [{ role: "user", content: user }],
    });
    const block = res.content.find((b) => b.type === "text");
    return block && block.type === "text" ? block.text : "";
  };

  try {
    return await run(MODEL);
  } catch {
    if (MODEL !== FALLBACK) return await run(FALLBACK);
    throw new Error("Falha nas chamadas Anthropic");
  }
}
