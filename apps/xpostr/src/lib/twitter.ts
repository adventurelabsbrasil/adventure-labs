import { TwitterApi } from "twitter-api-v2";

function formatXError(e: unknown): string {
  const base = e instanceof Error ? e.message : String(e);
  if (base.includes("403") || base.toLowerCase().includes("forbidden")) {
    return `${base} — 403: o X recusou postar. Veja checklist em apps/xpostr/docs/X_PUBLICACAO.md (permissão Read+Write + token novo + plano API).`;
  }
  if (typeof e === "object" && e !== null && "data" in e) {
    try {
      const d = (e as { data: unknown }).data;
      const extra = typeof d === "object" && d !== null ? JSON.stringify(d) : String(d);
      if (extra.length < 400) return `${base} | ${extra}`;
    } catch {
      /* ignore */
    }
  }
  return base;
}

export async function publishTweet(text: string): Promise<{
  ok: boolean;
  tweetId?: string;
  error?: string;
}> {
  const key = process.env.X_API_KEY?.trim();
  const secret = process.env.X_API_SECRET?.trim();
  const token = process.env.X_ACCESS_TOKEN?.trim();
  const tokenSecret = process.env.X_ACCESS_SECRET?.trim();

  if (!key || !secret || !token || !tokenSecret) {
    return { ok: false, error: "Credenciais X não configuradas (dry run)" };
  }

  const client = new TwitterApi({
    appKey: key,
    appSecret: secret,
    accessToken: token,
    accessSecret: tokenSecret,
  });

  const rw = client.readWrite;
  const trimmed = text.trim().slice(0, 280);
  try {
    const tweet = await rw.v2.tweet(trimmed);
    return { ok: true, tweetId: tweet.data.id };
  } catch (e) {
    return { ok: false, error: formatXError(e) };
  }
}
