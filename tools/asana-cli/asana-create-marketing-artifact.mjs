#!/usr/bin/env node
/**
 * Cria tarefa no Asana (backlog marketing) com links para artefatos: FigJam, Google Doc, markdown no repo.
 *
 * Env (token em apps/core/admin/.env.local ou tools/asana-cli/.env):
 *   ASANA_ACCESS_TOKEN
 *   ASANA_PROJECT_GIDS ou ASANA_TEST_PROJECT_GID (primeiro projeto usado se lista)
 *
 * Opcional:
 *   ASANA_MARKETING_TASK_NAME — título da tarefa
 *   ASANA_MARKETING_NOTES — sobrescreve o corpo inteiro (texto livre)
 *   ASANA_MARKETING_ASSIGNEE_GID — usuário Asana (se omitido, tarefa sem assignee)
 *   ASANA_MARKETING_GDOC_URL, ASANA_MARKETING_FIGJAM_CONNECTION_URL, ASANA_MARKETING_FIGJAM_GANTT_URL
 *   ASANA_MARKETING_MD_PATH — path relativo no monorepo (default abaixo)
 *
 * Flags:
 *   --dry-run   imprime payload, não cria
 *   --project=GID  força projeto
 */

import { readFileSync, existsSync } from "fs";
import { dirname, join } from "path";
import { fileURLToPath } from "url";

const __dirname = dirname(fileURLToPath(import.meta.url));
const API = "https://app.asana.com/api/1.0";

const DEFAULTS = {
  taskName: "[Marketing] FigJam — Plano de mídia lançamento Assessoria Martech",
  gdocUrl:
    "https://docs.google.com/document/d/1p2IAIfm8v9j19o9iAazF4yHFfmriLXH9741Z3eyfyLY/edit",
  figjamConnectionUrl:
    "https://www.figma.com/online-whiteboard/create-diagram/03f2aa1e-8695-433a-bcc0-ef227641d4a8?utm_source=cursor&utm_content=edit_in_figjam",
  figjamGanttUrl:
    "https://www.figma.com/online-whiteboard/create-diagram/c0fcb081-b3d0-40c2-bb4e-49e4b28143b4?utm_source=cursor&utm_content=edit_in_figjam",
  mdPath: "knowledge/02_MARKETING/figjam-plano-midia-lancamento-assessoria-martech.md",
};

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
  join(__dirname, "..", "..", "apps", "admin", ".env.local"),
]);

const dryRun = process.argv.includes("--dry-run");
let projectOverride = null;
for (const a of process.argv) {
  if (a.startsWith("--project=")) projectOverride = a.slice("--project=".length).trim();
}

async function asana(token, path, opts = {}) {
  const res = await fetch(`${API}${path}`, {
    ...opts,
    headers: {
      Authorization: `Bearer ${token}`,
      Accept: "application/json",
      ...(opts.body ? { "Content-Type": "application/json" } : {}),
      ...opts.headers,
    },
  });
  const j = await res.json();
  if (!res.ok) {
    const msg = j.errors?.map((e) => e.message).join("; ") || JSON.stringify(j);
    throw new Error(`${path} → ${res.status}: ${msg}`);
  }
  return j;
}

function buildNotes() {
  if (process.env.ASANA_MARKETING_NOTES?.trim()) {
    return process.env.ASANA_MARKETING_NOTES.trim();
  }
  const gdoc = process.env.ASANA_MARKETING_GDOC_URL || DEFAULTS.gdocUrl;
  const fig1 =
    process.env.ASANA_MARKETING_FIGJAM_CONNECTION_URL || DEFAULTS.figjamConnectionUrl;
  const fig2 = process.env.ASANA_MARKETING_FIGJAM_GANTT_URL || DEFAULTS.figjamGanttUrl;
  const md = process.env.ASANA_MARKETING_MD_PATH || DEFAULTS.mdPath;
  return [
    "Artefatos — plano de mídia (lançamento Assessoria Martech)",
    "",
    `Google Doc (fonte): ${gdoc}`,
    `FigJam — diagrama de conexões (claim): ${fig1}`,
    `FigJam — cronograma Gantt (claim): ${fig2}`,
    `Markdown no monorepo: ${md}`,
    "",
    "Após claim no Figma: consolidar frames num único board e preencher tabela de etapas no FigJam (ver md).",
  ].join("\n");
}

async function main() {
  const token = process.env.ASANA_ACCESS_TOKEN;
  const projectGid =
    projectOverride ||
    process.env.ASANA_TEST_PROJECT_GID?.trim() ||
    (process.env.ASANA_PROJECT_GIDS || "")
      .split(",")
      .map((s) => s.trim())
      .filter(Boolean)[0];

  if (!token) {
    console.error("ASANA_ACCESS_TOKEN ausente (admin .env.local ou tools/asana-cli/.env)");
    process.exit(1);
  }
  if (!projectGid) {
    console.error(
      "Defina ASANA_TEST_PROJECT_GID ou ASANA_PROJECT_GIDS (primeiro GID usado)."
    );
    process.exit(1);
  }

  const name =
    process.env.ASANA_MARKETING_TASK_NAME?.trim() || DEFAULTS.taskName;
  const notes = buildNotes();
  const assignee = process.env.ASANA_MARKETING_ASSIGNEE_GID?.trim();

  const payload = {
    data: {
      name,
      notes,
      projects: [projectGid],
      ...(assignee ? { assignee } : {}),
    },
  };

  if (dryRun) {
    console.log("[--dry-run] POST /tasks\n", JSON.stringify(payload, null, 2));
    return;
  }

  const created = await asana(token, "/tasks", {
    method: "POST",
    body: JSON.stringify(payload),
  });

  const task = created.data;
  console.log("OK — gid:", task.gid);
  console.log("Link:", task.permalink_url || `https://app.asana.com/0/${projectGid}/${task.gid}`);
}

main().catch((e) => {
  console.error(e.message || e);
  process.exit(1);
});
