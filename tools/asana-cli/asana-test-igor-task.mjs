#!/usr/bin/env node
/**
 * Teste Asana: lista tarefas abertas do projeto e cria uma tarefa atribuída ao Igor.
 *
 * Env (token em apps/core/admin/.env.local ou tools/asana-cli/.env):
 *   ASANA_ACCESS_TOKEN
 *   ASANA_PROJECT_GIDS ou ASANA_TEST_PROJECT_GID (projeto onde criar/listar)
 *
 * Opcional:
 *   IGOR_MATCH=igor          substring para achar usuário (nome ou email)
 *   IGOR_ASANA_USER_GID=...  se definido, pula busca e usa este GID como assignee
 *   ASANA_TEST_TASK_NAME=... nome da tarefa criada
 *
 * Flags:
 *   --dry-run   só lista tarefas + resolve Igor, não cria
 */

import { readFileSync, existsSync } from "fs";
import { dirname, join } from "path";
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

async function fetchAllTasksInProject(token, projectGid) {
  const out = [];
  let url = `${API}/projects/${projectGid}/tasks?opt_fields=name,due_on,completed,assignee.name,permalink_url&limit=100`;
  while (url) {
    const res = await fetch(url, {
      headers: { Authorization: `Bearer ${token}` },
    });
    const j = await res.json();
    if (!res.ok) throw new Error(j.errors?.[0]?.message || res.statusText);
    if (j.data?.length) out.push(...j.data);
    url = j.next_page?.uri || null;
  }
  return out;
}

async function fetchWorkspaceUsers(token, workspaceGid) {
  const bases = [
    `${API}/workspaces/${workspaceGid}/users?opt_fields=name,email&limit=100`,
    `${API}/users?workspace=${workspaceGid}&opt_fields=name,email&limit=100`,
  ];
  for (const base of bases) {
    const out = [];
    let url = base;
    try {
      while (url) {
        const res = await fetch(url, {
          headers: { Authorization: `Bearer ${token}` },
        });
        const j = await res.json();
        if (!res.ok) throw new Error(j.errors?.[0]?.message || res.statusText);
        if (j.data?.length) out.push(...j.data);
        url = j.next_page?.uri || null;
      }
      if (out.length) return out;
    } catch {
      /* tenta próximo endpoint */
    }
  }
  return [];
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

  const match = (process.env.IGOR_MATCH || "igor").toLowerCase();
  const igorGidEnv = process.env.IGOR_ASANA_USER_GID?.trim();

  console.log("\n=== Projeto ===\n");
  const proj = await asana(
    token,
    `/projects/${projectGid}?opt_fields=name,workspace`
  );
  const wsGid = proj.data?.workspace?.gid;
  console.log("Nome:", proj.data?.name);
  console.log("GID:", projectGid);
  console.log("Workspace GID:", wsGid || "(?)");

  console.log("\n=== Tarefas (amostra: abertas, máx. 30) ===\n");
  const all = await fetchAllTasksInProject(token, projectGid);
  const open = all.filter((t) => !t.completed).slice(0, 30);
  if (open.length === 0) {
    console.log("(nenhuma aberta nas primeiras páginas ou só concluídas)");
  } else {
    for (const t of open) {
      const a = t.assignee?.name || "—";
      console.log(`- ${t.name} | ${a} | ${t.permalink_url || ""}`);
    }
  }
  console.log(`\nTotal carregado no projeto: ${all.length} tarefas (paginado).`);

  console.log("\n=== Localizar Igor (assignee) ===\n");
  let igor;
  if (igorGidEnv) {
    const u = await asana(token, `/users/${igorGidEnv}?opt_fields=name,email`);
    igor = { gid: igorGidEnv, name: u.data?.name, email: u.data?.email };
    console.log("Usando IGOR_ASANA_USER_GID:", igor.gid, igor.name, igor.email || "");
  } else {
    if (!wsGid) {
      console.error("Não foi possível obter workspace do projeto.");
      process.exit(1);
    }
    const users = await fetchWorkspaceUsers(token, wsGid);
    igor = users.find((u) => {
      const name = (u.name || "").toLowerCase();
      const email = (u.email || "").toLowerCase();
      return name.includes(match) || email.includes(match);
    });
    if (!igor) {
      console.error(
        `Nenhum usuário com "${match}" no nome/email neste workspace. Membros (amostra):`
      );
      for (const u of users.slice(0, 40)) {
        console.log(`  ${u.gid}  ${u.name || ""}  <${u.email || ""}>`);
      }
      console.error(
        "\nDefina IGOR_ASANA_USER_GID=<gid> com o GID do Igor (copie da lista ou do perfil Asana)."
      );
      process.exit(1);
    }
    console.log("Assignee:", igor.name, igor.email || "", "gid:", igor.gid);
  }

  if (dryRun) {
    console.log("\n[--dry-run] Não criando tarefa.\n");
    return;
  }

  const now = new Date();
  const taskName =
    process.env.ASANA_TEST_TASK_NAME?.trim() ||
    `[Teste CLI Andon] Para Igor — ${now.toISOString().slice(0, 16).replace("T", " ")}`;

  console.log("\n=== Criar tarefa ===\n");
  console.log("Nome:", taskName);

  const created = await asana(token, "/tasks", {
    method: "POST",
    body: JSON.stringify({
      data: {
        name: taskName,
        projects: [projectGid],
        assignee: igor.gid,
        notes:
          "Criada automaticamente por tools/asana-cli/asana-test-igor-task.mjs (teste Adventure Labs).",
      },
    }),
  });

  const task = created.data;
  console.log("OK — gid:", task.gid);
  console.log("Link:", task.permalink_url || `https://app.asana.com/0/${projectGid}/${task.gid}`);
  console.log("");
}

main().catch((e) => {
  console.error(e.message || e);
  process.exit(1);
});
