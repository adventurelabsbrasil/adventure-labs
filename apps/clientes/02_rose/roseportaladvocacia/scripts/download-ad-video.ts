/**
 * Download video from Meta Ad Creative via Marketing API.
 * Usage: npx tsx scripts/download-ad-video.ts [creative-or-ad-id]
 *
 * Default ID: 2053917445371070 (from Ads Manager library)
 */
import path from "path";
import fs from "fs";
import { config } from "dotenv";

config({ path: path.resolve(process.cwd(), ".env.local") });

const BASE = "https://graph.facebook.com/v21.0";
const CREATIVE_ID = process.argv[2] || "2053917445371070";
const ASSETS_DIR = path.resolve(process.cwd(), "assets");

function getToken(): string {
  const t = process.env.META_ACCESS_TOKEN;
  if (!t) throw new Error("META_ACCESS_TOKEN required in .env.local");
  return t;
}

function extractVideoId(data: Record<string, unknown>): string | null {
  if (typeof data.video_id === "string") return data.video_id;
  const oss = data.object_story_spec as Record<string, unknown> | undefined;
  if (oss?.video_data && typeof oss.video_data === "object") {
    const vd = oss.video_data as Record<string, unknown>;
    if (typeof vd.video_id === "string") return vd.video_id;
  }
  const afs = data.asset_feed_spec as { videos?: Array<{ video_id?: string }> } | undefined;
  if (afs?.videos?.length && typeof afs.videos[0]?.video_id === "string") {
    return afs.videos[0].video_id;
  }
  return null;
}

async function fetchCreative(id: string, token: string): Promise<Record<string, unknown>> {
  const url = `${BASE}/${id}?fields=id,name,video_id,object_story_spec,thumbnail_url&access_token=${token}`;
  const res = await fetch(url);
  const text = await res.text();
  if (!res.ok) throw new Error(`Creative API ${res.status}: ${text}`);
  return JSON.parse(text) as Record<string, unknown>;
}

async function fetchAdCreative(adId: string, token: string): Promise<Record<string, unknown>> {
  const url = `${BASE}/${adId}?fields=creative{id,video_id,object_story_spec,asset_feed_spec}&access_token=${token}`;
  const res = await fetch(url);
  const text = await res.text();
  if (!res.ok) throw new Error(`Ad API ${res.status}: ${text}`);
  const data = JSON.parse(text) as Record<string, unknown>;
  const creative = data.creative as Record<string, unknown> | undefined;
  if (!creative) throw new Error("Ad has no creative");
  return creative;
}

async function getVideoSourceUrl(videoId: string, token: string): Promise<string> {
  const url = `${BASE}/${videoId}?fields=source&access_token=${token}`;
  const res = await fetch(url);
  const text = await res.text();
  if (!res.ok) throw new Error(`Video API ${res.status}: ${text}`);
  const data = JSON.parse(text) as Record<string, unknown>;
  const source = data.source;
  if (typeof source !== "string") throw new Error("Video has no source URL");
  return source;
}

async function downloadToFile(url: string, destPath: string): Promise<void> {
  const res = await fetch(url, { redirect: "follow" });
  if (!res.ok) throw new Error(`Download failed ${res.status}: ${res.statusText}`);
  const buffer = Buffer.from(await res.arrayBuffer());
  fs.writeFileSync(destPath, buffer);
}

async function main() {
  const token = getToken();
  if (!fs.existsSync(ASSETS_DIR)) fs.mkdirSync(ASSETS_DIR, { recursive: true });

  console.log("Fetching creative/ad:", CREATIVE_ID);

  let creative: Record<string, unknown>;
  try {
    creative = await fetchCreative(CREATIVE_ID, token);
  } catch (e) {
    console.log("Not a creative, trying as Ad...");
    creative = await fetchAdCreative(CREATIVE_ID, token);
  }

  const videoId = extractVideoId(creative);
  if (!videoId) {
    console.error("No video_id found in creative. Raw response:", JSON.stringify(creative, null, 2));
    process.exit(1);
  }

  console.log("Video ID:", videoId);
  const sourceUrl = await getVideoSourceUrl(videoId, token);
  console.log("Source URL:", sourceUrl.slice(0, 80) + "...");

  const ext = sourceUrl.includes(".mp4") ? "mp4" : "mp4";
  const destPath = path.join(ASSETS_DIR, `ad-video-${CREATIVE_ID}.${ext}`);
  await downloadToFile(sourceUrl, destPath);
  console.log("Saved to:", destPath);
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
