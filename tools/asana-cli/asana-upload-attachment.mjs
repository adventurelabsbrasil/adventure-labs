#!/usr/bin/env node
/**
 * Upload de anexo para uma task no Asana (multipart/form-data).
 *
 * Env:
 *   ASANA_ACCESS_TOKEN
 *
 * Uso:
 *   node tools/asana-cli/asana-upload-attachment.mjs --task=<TASK_GID> --file=/abs/path/to/file.pdf
 */

import { readFileSync, existsSync } from "fs";
import { basename, dirname, join, resolve } from "path";
import { fileURLToPath } from "url";

const __dirname = dirname(fileURLToPath(import.meta.url));
const API = "https://app.asana.com/api/1.0";

function loadEnvFiles(paths) {
  for (const p of paths) {
    if (!existsSync(p)) continue;
    for (const line of readFileSync(p, "utf8").split("\n")) {
      const t = line.trim();
      if (!t || t.startsWith("#")) continue;
      const i = t.indexOf("=");
      if (i < 1) continue;
      const k = t.slice(0, i).trim();
      let v = t.slice(i + 1).trim();
      if (
        (v.startsWith('"') && v.endsWith('"')) ||
        (v.startsWith("'") && v.endsWith("'"))
      ) {
        v = v.slice(1, -1);
      }
      if (!process.env[k]) process.env[k] = v;
    }
  }
}

loadEnvFiles([
  join(__dirname, ".env"),
  join(__dirname, "..", "..", "apps", "core", "admin", ".env.local"),
  join(__dirname, "..", "..", "apps", "core", "admin", ".env"),
]);

function getArg(name) {
  const prefix = `--${name}=`;
  const a = process.argv.find((x) => x.startsWith(prefix));
  return a ? a.slice(prefix.length).trim() : null;
}

async function main() {
  const token = process.env.ASANA_ACCESS_TOKEN;
  const taskGid = getArg("task");
  const filePath = getArg("file");

  if (!token) {
    console.error("ASANA_ACCESS_TOKEN ausente (admin .env.local ou tools/asana-cli/.env)");
    process.exit(1);
  }
  if (!taskGid) {
    console.error("Uso: --task=<TASK_GID>");
    process.exit(1);
  }
  if (!filePath) {
    console.error("Uso: --file=/abs/path/to/file");
    process.exit(1);
  }

  const abs = resolve(filePath);
  if (!existsSync(abs)) {
    console.error(`Arquivo não encontrado: ${abs}`);
    process.exit(1);
  }

  const buf = readFileSync(abs);
  const fd = new FormData();
  fd.append("parent", taskGid);
  fd.append("file", new Blob([buf], { type: "application/pdf" }), basename(abs));

  const res = await fetch(`${API}/attachments`, {
    method: "POST",
    headers: { Authorization: `Bearer ${token}` },
    body: fd,
  });
  const j = await res.json();
  if (!res.ok) {
    const msg = j?.errors?.map((e) => e.message).join("; ") || JSON.stringify(j);
    throw new Error(`/attachments → ${res.status}: ${msg}`);
  }
  const att = j?.data;
  console.log("OK — attachment gid:", att?.gid);
  console.log("Nome:", att?.name || "(sem nome)");
  console.log("View URL:", att?.view_url || "");
}

main().catch((e) => {
  console.error(e.message || e);
  process.exit(1);
});

