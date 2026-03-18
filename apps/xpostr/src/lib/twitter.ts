import { TwitterApi } from "twitter-api-v2";

export async function publishTweet(text: string): Promise<{
  ok: boolean;
  tweetId?: string;
  error?: string;
}> {
  const key = process.env.X_API_KEY;
  const secret = process.env.X_API_SECRET;
  const token = process.env.X_ACCESS_TOKEN;
  const tokenSecret = process.env.X_ACCESS_SECRET;

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
    const msg = e instanceof Error ? e.message : String(e);
    return { ok: false, error: msg };
  }
}
