import OpenAI from "openai";
import Anthropic from "@anthropic-ai/sdk";

function isOpenAIQuotaError(e: unknown): boolean {
  if (e instanceof OpenAI.APIError) {
    return e.status === 429 || String(e.message).toLowerCase().includes("quota");
  }
  const s = String(e);
  return s.includes("429") && s.includes("quota");
}

function isAnthropicBillingError(e: unknown): boolean {
  const s = String(e);
  return (
    s.includes("credit balance") ||
    s.includes("too low") ||
    s.includes("billing")
  );
}

async function completeWithAnthropic(
  system: string,
  user: string,
  maxTokens: number
): Promise<string> {
  const anthropicKey = process.env.ANTHROPIC_API_KEY!.trim();
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
  } catch (e) {
    if (isAnthropicBillingError(e)) {
      throw new Error(
        "Anthropic: sem crédito — console.anthropic.com/settings/plans"
      );
    }
    if (model !== fallback) {
      try {
        return await run(fallback);
      } catch (e2) {
        if (isAnthropicBillingError(e2)) {
          throw new Error(
            "Anthropic: sem crédito — console.anthropic.com/settings/plans"
          );
        }
        throw e2;
      }
    }
    throw e;
  }
}

/**
 * Prioridade: OpenAI → (se 429 e houver chave) Anthropic → só Anthropic → simulação.
 */
export async function completeAssistant(
  system: string,
  user: string,
  maxTokens = 1500
): Promise<string> {
  const openaiKey = process.env.OPENAI_API_KEY?.trim();
  const anthropicKey = process.env.ANTHROPIC_API_KEY?.trim();

  if (openaiKey) {
    const client = new OpenAI({ apiKey: openaiKey });
    const model = process.env.OPENAI_MODEL?.trim() || "gpt-4o-mini";
    try {
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
    } catch (e) {
      if (anthropicKey && isOpenAIQuotaError(e)) {
        try {
          return await completeWithAnthropic(system, user, maxTokens);
        } catch {
          throw new Error(
            "OpenAI: cota excedida (429) e Anthropic também falhou — adicione crédito em platform.openai.com/account/billing ou na Anthropic."
          );
        }
      }
      if (isOpenAIQuotaError(e)) {
        throw new Error(
          "OpenAI: cota excedida — platform.openai.com/account/billing (ou defina ANTHROPIC_API_KEY como fallback)"
        );
      }
      throw e;
    }
  }

  if (anthropicKey) {
    return completeWithAnthropic(system, user, maxTokens);
  }

  return `[sem OPENAI_API_KEY nem ANTHROPIC_API_KEY] Simulação: configure uma das chaves para conteúdo real.`;
}
