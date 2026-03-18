import OpenAI from "openai";
import Anthropic from "@anthropic-ai/sdk";
import { GoogleGenerativeAI } from "@google/generative-ai";

function geminiKey(): string | undefined {
  return (
    process.env.GEMINI_API_KEY?.trim() ||
    process.env.GOOGLE_GENERATIVE_AI_API_KEY?.trim()
  );
}

function isOpenAIQuotaError(e: unknown): boolean {
  if (e instanceof OpenAI.APIError) {
    return e.status === 429 || String(e.message).toLowerCase().includes("quota");
  }
  const s = String(e).toLowerCase();
  return s.includes("429") && s.includes("quota");
}

function isAnthropicBillingError(e: unknown): boolean {
  const s = String(e).toLowerCase();
  return (
    s.includes("credit balance") ||
    s.includes("too low to access the anthropic")
  );
}

function isGeminiQuotaError(e: unknown): boolean {
  const s = String(e).toLowerCase();
  return (
    s.includes("429") ||
    s.includes("resource_exhausted") ||
    s.includes("quota") ||
    s.includes("rate limit") ||
    s.includes("too many requests")
  );
}

function shouldTryNextProvider(e: unknown): boolean {
  return (
    isOpenAIQuotaError(e) ||
    isAnthropicBillingError(e) ||
    isGeminiQuotaError(e)
  );
}

async function completeOpenAI(
  system: string,
  user: string,
  maxTokens: number
): Promise<string> {
  const client = new OpenAI({
    apiKey: process.env.OPENAI_API_KEY!.trim(),
  });
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

async function completeAnthropic(
  system: string,
  user: string,
  maxTokens: number
): Promise<string> {
  const model =
    process.env.ANTHROPIC_MODEL?.trim() ?? "claude-sonnet-4-20250514";
  const fallback = "claude-3-5-sonnet-20241022";
  const client = new Anthropic({
    apiKey: process.env.ANTHROPIC_API_KEY!.trim(),
  });
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
    if (isAnthropicBillingError(e)) throw e;
    if (model !== fallback) {
      try {
        return await run(fallback);
      } catch (e2) {
        throw e2;
      }
    }
    throw e;
  }
}

async function completeGemini(
  system: string,
  user: string,
  maxTokens: number
): Promise<string> {
  const key = geminiKey()!;
  const genAI = new GoogleGenerativeAI(key);
  const modelName =
    process.env.GEMINI_MODEL?.trim() || "gemini-2.0-flash";
  const model = genAI.getGenerativeModel({
    model: modelName,
    systemInstruction: system,
    generationConfig: { maxOutputTokens: maxTokens },
  });
  const r = await model.generateContent(user);
  const text = r.response.text();
  if (!text?.trim()) throw new Error("Gemini retornou resposta vazia");
  return text.trim();
}

type Provider = "openai" | "anthropic" | "gemini";

/**
 * Ordem fixa: OpenAI → Anthropic → Gemini (só entra quem tem chave).
 * Se um falhar por cota/crédito, tenta o próximo.
 */
export async function completeAssistant(
  system: string,
  user: string,
  maxTokens = 1500
): Promise<string> {
  const chain: { id: Provider; run: () => Promise<string> }[] = [];

  if (process.env.OPENAI_API_KEY?.trim()) {
    chain.push({
      id: "openai",
      run: () => completeOpenAI(system, user, maxTokens),
    });
  }
  if (process.env.ANTHROPIC_API_KEY?.trim()) {
    chain.push({
      id: "anthropic",
      run: () => completeAnthropic(system, user, maxTokens),
    });
  }
  if (geminiKey()) {
    chain.push({
      id: "gemini",
      run: () => completeGemini(system, user, maxTokens),
    });
  }

  if (chain.length === 0) {
    return `[sem LLM] Defina OPENAI_API_KEY, ANTHROPIC_API_KEY ou GEMINI_API_KEY (Google AI Studio).`;
  }

  const tried: Provider[] = [];
  let lastError: unknown;

  for (let i = 0; i < chain.length; i++) {
    const { id, run } = chain[i]!;
    tried.push(id);
    try {
      return await run();
    } catch (e) {
      lastError = e;
      const hasNext = i < chain.length - 1;
      if (hasNext && shouldTryNextProvider(e)) {
        continue;
      }
      const names = tried.join(" → ");
      const hint =
        "OpenAI: platform.openai.com/account/billing | Anthropic: console.anthropic.com | Gemini: aistudio.google.com/apikey";
      throw new Error(
        `LLM falhou (${names}). Último: ${e instanceof Error ? e.message : String(e)}. ${hint}`
      );
    }
  }

  throw lastError;
}
