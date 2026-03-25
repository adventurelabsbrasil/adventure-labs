#!/usr/bin/env node
/**
 * Cria designs vazios no Canva via Connect API (POST /v1/designs).
 * Uso: na pasta tools/canva-connect, copie .env.example → .env e preencha CANVA_ACCESS_TOKEN.
 *   node scripts/create-adventure-tofu-designs.mjs
 *
 * Limite: ~20 pedidos/minuto por utilizador (espaçamento aplicado entre chamadas).
 * Docs: https://www.canva.dev/docs/connect/api-reference/designs/create-design/
 */

import { readFileSync, writeFileSync, mkdirSync } from "node:fs";
import { resolve, dirname } from "node:path";
import { fileURLToPath } from "node:url";

const __dirname = dirname(fileURLToPath(import.meta.url));
const root = resolve(__dirname, "..");

function loadDotEnv() {
  try {
    const raw = readFileSync(resolve(root, ".env"), "utf8");
    for (const line of raw.split("\n")) {
      const t = line.trim();
      if (!t || t.startsWith("#")) continue;
      const i = t.indexOf("=");
      if (i === -1) continue;
      const k = t.slice(0, i).trim();
      let v = t.slice(i + 1).trim();
      if ((v.startsWith('"') && v.endsWith('"')) || (v.startsWith("'") && v.endsWith("'"))) {
        v = v.slice(1, -1);
      }
      if (!process.env[k]) process.env[k] = v;
    }
  } catch {
    /* sem .env */
  }
}

loadDotEnv();

const token = process.env.CANVA_ACCESS_TOKEN;
if (!token) {
  console.error(
    "Defina CANVA_ACCESS_TOKEN (ficheiro tools/canva-connect/.env ou variável de ambiente).",
  );
  process.exit(1);
}

const API = "https://api.canva.com/rest/v1/designs";

/** 10 conceitos × (feed + stories) = 20 designs */
const SPECS = [];
for (let i = 1; i <= 10; i++) {
  const n = String(i).padStart(2, "0");
  SPECS.push({ title: `Adventure_TOFU_${n}_feed_1080x1035`, width: 1080, height: 1035 });
  SPECS.push({ title: `Adventure_TOFU_${n}_stories_1080x1920`, width: 1080, height: 1920 });
}

const DELAY_MS = 3500;
const results = [];

async function createOne({ title, width, height }) {
  const body = {
    title,
    design_type: { type: "custom", width, height },
  };
  const res = await fetch(API, {
    method: "POST",
    headers: {
      Authorization: `Bearer ${token}`,
      "Content-Type": "application/json",
    },
    body: JSON.stringify(body),
  });
  const data = await res.json().catch(() => ({}));
  if (!res.ok) {
    throw new Error(`${res.status} ${res.statusText}: ${JSON.stringify(data)}`);
  }
  const d = data.design;
  return {
    title: d?.title,
    id: d?.id,
    edit_url: d?.urls?.edit_url,
    view_url: d?.urls?.view_url,
  };
}

for (let i = 0; i < SPECS.length; i++) {
  const spec = SPECS[i];
  process.stdout.write(`[${i + 1}/${SPECS.length}] ${spec.title} ... `);
  try {
    const row = await createOne(spec);
    results.push(row);
    console.log("ok");
    if (row.edit_url) console.log(`   → ${row.edit_url}`);
  } catch (e) {
    console.log("erro");
    console.error(e.message || e);
    process.exitCode = 1;
    break;
  }
  if (i < SPECS.length - 1) {
    await new Promise((r) => setTimeout(r, DELAY_MS));
  }
}

const outDir = resolve(root, "output");
const outPath = resolve(outDir, "adventure-tofu-designs.json");
try {
  mkdirSync(outDir, { recursive: true });
  writeFileSync(
    outPath,
    JSON.stringify({ created_at: new Date().toISOString(), designs: results }, null, 2),
    "utf8",
  );
  console.log(`\nJSON: ${outPath}`);
} catch {
  console.log("\n(resumo)", JSON.stringify(results, null, 2));
}
