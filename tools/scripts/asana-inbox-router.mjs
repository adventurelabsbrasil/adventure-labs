#!/usr/bin/env node

/**
 * Asana Inbox Router (dry-run by default)
 *
 * Moves tasks from Inbox project to Core/Clientes/Labs projects.
 *
 * Ordem de decisão (maior prioridade primeiro):
 * 1. Campo custom "Nível de Projeto" (Core / Labs / Cliente)
 * 2. Campo custom "Cliente" (reference → projeto de cliente conhecido)
 * 3. C-Suite (fallback conservador → Core para papéis internos)
 * 4. Departamento (fallback conservador → Core para Tecnologia/Financeiro)
 * 5. Tags (core / labs / clientes + cliente)
 * 6. Prefixos e heurísticas no título
 *
 * Auth env (one of):
 * - ASANA_ACCESS_TOKEN
 * - ASANA_CLIENT_ID + ASANA_CLIENT_SECRET + ASANA_REFRESH_TOKEN
 *
 * Optional env:
 * - ASANA_WORKSPACE_GID
 * - ASANA_INBOX_PROJECT_ID
 * - ASANA_CORE_PROJECT_ID (sem default: veja nota abaixo)
 * - ASANA_LABS_PROJECT_ID
 * - ASANA_CLIENT_ROSE_PROJECT_ID
 * - ASANA_CLIENT_YOUNG_PROJECT_ID
 * - ASANA_CLIENT_LIDERA_PROJECT_ID
 * - ASANA_CLIENT_BENDITTA_PROJECT_ID
 *
 * Referência — projetos no team Adventure Labs (GIDs estáveis para docs / .env):
 * | Uso                         | GID            | Nome no Asana   |
 * |-----------------------------|----------------|-----------------|
 * | Inbox (origem do router)    | 1213744799182607 | Inbox        |
 * | Campanha Martech (mídia)    | 1213709221981135 | Martech MVP  |
 * | Marketing geral             | 1213709303845547 | Marketing    |
 * | Labs interno                | 1213783203433082 | Labs         |
 *
 * Martech MVP é projeto de **campanha** (plano de mídia, criativos, canais). Não use
 * esse GID como ASANA_CORE_PROJECT_ID — tarefas Core/CTO/ops iriam parar no mesmo quadro
 * da campanha. Defina ASANA_CORE_PROJECT_ID quando existir um projeto Core dedicado; até
 * lá, o default vazio mantém tarefas “Core” no Inbox (dry-run / skip no --apply).
 */

const DEFAULTS = {
  workspaceGid: "1213725900473628",
  inboxProjectId: "1213744799182607",
  coreProjectId: "",
  labsProjectId: "",
  clientRoseProjectId: "1213756022506822",
  clientYoungProjectId: "1213756022506816",
  clientLideraProjectId: "1213756022506819",
  clientBendittaProjectId: "1213756022506825",
};

const config = {
  workspaceGid: process.env.ASANA_WORKSPACE_GID || DEFAULTS.workspaceGid,
  inboxProjectId: process.env.ASANA_INBOX_PROJECT_ID || DEFAULTS.inboxProjectId,
  coreProjectId: process.env.ASANA_CORE_PROJECT_ID || DEFAULTS.coreProjectId,
  labsProjectId: process.env.ASANA_LABS_PROJECT_ID || DEFAULTS.labsProjectId,
  clientRoseProjectId:
    process.env.ASANA_CLIENT_ROSE_PROJECT_ID || DEFAULTS.clientRoseProjectId,
  clientYoungProjectId:
    process.env.ASANA_CLIENT_YOUNG_PROJECT_ID || DEFAULTS.clientYoungProjectId,
  clientLideraProjectId:
    process.env.ASANA_CLIENT_LIDERA_PROJECT_ID ||
    DEFAULTS.clientLideraProjectId,
  clientBendittaProjectId:
    process.env.ASANA_CLIENT_BENDITTA_PROJECT_ID ||
    DEFAULTS.clientBendittaProjectId,
};

const args = new Set(process.argv.slice(2));
const apply = args.has("--apply");
const removeFromInbox = !args.has("--keep-in-inbox");

if (args.has("--help")) {
  console.log(`
Uso:
  node tools/scripts/asana-inbox-router.mjs           # dry-run
  node tools/scripts/asana-inbox-router.mjs --apply   # aplica mudanças

Opções:
  --apply            Executa adição/remoção de projetos
  --keep-in-inbox    Não remove do projeto Inbox após rotear
  --help             Mostra esta ajuda
`);
  process.exit(0);
}

let accessToken = "";

function hasOauthCredentials() {
  return (
    !!process.env.ASANA_CLIENT_ID &&
    !!process.env.ASANA_CLIENT_SECRET &&
    !!process.env.ASANA_REFRESH_TOKEN
  );
}

async function getAccessToken() {
  if (process.env.ASANA_ACCESS_TOKEN) {
    return process.env.ASANA_ACCESS_TOKEN;
  }

  if (!hasOauthCredentials()) {
    throw new Error(
      "Defina ASANA_ACCESS_TOKEN ou ASANA_CLIENT_ID + ASANA_CLIENT_SECRET + ASANA_REFRESH_TOKEN."
    );
  }

  const body = new URLSearchParams({
    grant_type: "refresh_token",
    client_id: process.env.ASANA_CLIENT_ID,
    client_secret: process.env.ASANA_CLIENT_SECRET,
    refresh_token: process.env.ASANA_REFRESH_TOKEN,
  });

  const res = await fetch("https://app.asana.com/-/oauth_token", {
    method: "POST",
    headers: { "Content-Type": "application/x-www-form-urlencoded" },
    body,
  });

  if (!res.ok) {
    const txt = await res.text();
    throw new Error(`Falha ao renovar token OAuth (${res.status}): ${txt}`);
  }

  const json = await res.json();
  if (!json?.access_token) {
    throw new Error("Resposta OAuth sem access_token.");
  }
  return json.access_token;
}

function buildHeaders() {
  return {
    Authorization: `Bearer ${accessToken}`,
    "Content-Type": "application/json",
  };
}

async function asanaGet(path, params = {}) {
  const url = new URL(`https://app.asana.com/api/1.0${path}`);
  for (const [k, v] of Object.entries(params)) {
    if (v !== undefined && v !== null && `${v}`.length > 0) {
      url.searchParams.set(k, `${v}`);
    }
  }
  const res = await fetch(url, { headers: buildHeaders() });
  if (!res.ok) {
    const body = await res.text();
    throw new Error(`GET ${path} falhou (${res.status}): ${body}`);
  }
  return res.json();
}

async function asanaPost(path, payload = {}) {
  const res = await fetch(`https://app.asana.com/api/1.0${path}`, {
    method: "POST",
    headers: buildHeaders(),
    body: JSON.stringify({ data: payload }),
  });
  if (!res.ok) {
    const body = await res.text();
    throw new Error(`POST ${path} falhou (${res.status}): ${body}`);
  }
  return res.json();
}

function normalizeName(name) {
  return (name || "").toLowerCase();
}

function containsAny(name, terms) {
  return terms.some((t) => name.includes(t));
}

function normalizeTags(task) {
  return (task.tags || [])
    .map((t) => normalizeName(t.name))
    .filter(Boolean);
}

function hasAnyTag(task, candidateTags) {
  const tags = normalizeTags(task);
  return candidateTags.some((c) => tags.includes(normalizeName(c)));
}

function pickClientProjectByName(taskName) {
  const n = normalizeName(taskName);
  if (containsAny(n, ["[rose]", " rose"])) return config.clientRoseProjectId;
  if (containsAny(n, ["[young]", "young talents", "young"])) {
    return config.clientYoungProjectId;
  }
  if (containsAny(n, ["[lidera]", " lidera"])) return config.clientLideraProjectId;
  if (containsAny(n, ["[benditta]", " benditta"])) {
    return config.clientBendittaProjectId;
  }
  return "";
}

function pickClientProjectByTags(task) {
  if (hasAnyTag(task, ["rose", "cliente:rose", "client:rose"])) {
    return config.clientRoseProjectId;
  }
  if (hasAnyTag(task, ["young", "cliente:young", "client:young"])) {
    return config.clientYoungProjectId;
  }
  if (hasAnyTag(task, ["lidera", "cliente:lidera", "client:lidera"])) {
    return config.clientLideraProjectId;
  }
  if (hasAnyTag(task, ["benditta", "cliente:benditta", "client:benditta"])) {
    return config.clientBendittaProjectId;
  }
  return "";
}

/** @param {string} name */
function normalizeFieldName(name) {
  return normalizeName(name).normalize("NFD").replace(/[\u0300-\u036f]/g, "");
}

/**
 * @param {object} task
 * @param {string[]} matchers normalized ascii lowercase substrings
 */
function findCustomFieldByName(task, matchers) {
  const fields = task.custom_fields || [];
  for (const cf of fields) {
    const nm = normalizeFieldName(cf.name || "");
    for (const m of matchers) {
      if (nm.includes(m)) return cf;
    }
  }
  return null;
}

/**
 * @returns {"core"|"labs"|"cliente"|null}
 */
function getNivelFromCustomFields(task) {
  const cf = findCustomFieldByName(task, [
    "nivel de projeto",
    "nivel projeto",
    "project level",
  ]);
  const label = normalizeName(cf?.enum_value?.name || "");
  if (label === "core") return "core";
  if (label === "labs") return "labs";
  if (label === "cliente" || label === "clientes") return "cliente";
  return null;
}

function getReferenceProjectGids(task) {
  const cf = findCustomFieldByName(task, ["cliente", "referencia", "referência", "reference"]);
  const ref = cf?.reference_value;
  if (!Array.isArray(ref)) return [];
  return ref.map((r) => r?.gid).filter(Boolean);
}

function pickKnownClientProjectFromGids(projectGids) {
  const known = new Set(
    [
      config.clientRoseProjectId,
      config.clientYoungProjectId,
      config.clientLideraProjectId,
      config.clientBendittaProjectId,
    ].filter(Boolean)
  );
  for (const gid of projectGids) {
    if (known.has(`${gid}`)) return `${gid}`;
  }
  return "";
}

/**
 * Fallback conservador: papéis internos → Core (evita Labs/Cliente sem sinal explícito).
 * @returns {{ destinationProjectId: string, reason: string } | null}
 */
function routeByCsuiteFallback(task) {
  const cf = findCustomFieldByName(task, ["c-suite", "c suite", "csuite"]);
  const role = normalizeName(cf?.enum_value?.name || "");
  if (!role) return null;

  const internalCore = new Set([
    "founder",
    "comando estelar",
    "cto",
    "cfo",
    "coo",
  ]);
  if (internalCore.has(role)) {
    return {
      destinationProjectId: config.coreProjectId,
      reason: `C-Suite=${cf?.enum_value?.name || role} (fallback Core)`,
    };
  }
  return null;
}

/**
 * Só quando C-Suite não resolve: sinal fraco para frentes internas óbvias.
 * @returns {{ destinationProjectId: string, reason: string } | null}
 */
function routeByDepartamentoFallback(task) {
  const cf = findCustomFieldByName(task, ["departamento", "department"]);
  const vals = cf?.multi_enum_values || [];
  const names = vals.map((v) => normalizeName(v.name)).filter(Boolean);
  if (!names.length) return null;

  if (names.includes("tecnologia")) {
    return {
      destinationProjectId: config.coreProjectId,
      reason: "Departamento inclui Tecnologia (fallback Core)",
    };
  }
  if (names.includes("financeiro")) {
    return {
      destinationProjectId: config.coreProjectId,
      reason: "Departamento inclui Financeiro (fallback Core)",
    };
  }
  return null;
}

function routeTask(task) {
  const n = normalizeName(task.name);

  // 1) Nível de Projeto (custom field)
  const nivel = getNivelFromCustomFields(task);
  if (nivel === "core") {
    return {
      destinationProjectId: config.coreProjectId,
      reason: "campo Nível de Projeto=Core",
    };
  }
  if (nivel === "labs") {
    if (!config.labsProjectId) {
      return {
        destinationProjectId: "",
        reason: "campo Nível de Projeto=Labs sem ASANA_LABS_PROJECT_ID",
      };
    }
    return {
      destinationProjectId: config.labsProjectId,
      reason: "campo Nível de Projeto=Labs",
    };
  }
  if (nivel === "cliente") {
    const fromRef = pickKnownClientProjectFromGids(getReferenceProjectGids(task));
    if (fromRef) {
      return {
        destinationProjectId: fromRef,
        reason: "campo Nível=Cliente + referência projeto cliente",
      };
    }
    const byTag = pickClientProjectByTags(task);
    if (byTag) {
      return {
        destinationProjectId: byTag,
        reason: "campo Nível=Cliente + cliente por tag",
      };
    }
    const byTitle = pickClientProjectByName(task.name);
    if (byTitle) {
      return {
        destinationProjectId: byTitle,
        reason: "campo Nível=Cliente + cliente no título",
      };
    }
    return {
      destinationProjectId: "",
      reason: "campo Nível=Cliente sem cliente detectado",
    };
  }

  // 2) Referência Cliente (mesmo sem Nível preenchido): primeiro projeto conhecido
  const refOnly = pickKnownClientProjectFromGids(getReferenceProjectGids(task));
  if (refOnly) {
    return {
      destinationProjectId: refOnly,
      reason: "campo Cliente (referência) → projeto conhecido",
    };
  }

  // 3) C-Suite / Departamento (fallback interno)
  const csRoute = routeByCsuiteFallback(task);
  if (csRoute) return csRoute;
  const deptRoute = routeByDepartamentoFallback(task);
  if (deptRoute) return deptRoute;

  // 4) Tags (Asana Free-friendly)
  if (hasAnyTag(task, ["core", "nivel:core", "level:core"])) {
    return {
      destinationProjectId: config.coreProjectId,
      reason: "tag core",
    };
  }
  if (hasAnyTag(task, ["labs", "nivel:labs", "level:labs"])) {
    return {
      destinationProjectId: config.labsProjectId,
      reason: "tag labs",
    };
  }
  if (hasAnyTag(task, ["clientes", "nivel:clientes", "level:clientes"])) {
    const byTagClient = pickClientProjectByTags(task);
    return {
      destinationProjectId: byTagClient,
      reason: byTagClient
        ? "tag clientes + cliente detectado"
        : "tag clientes sem cliente detectado",
    };
  }

  const byTagClient = pickClientProjectByTags(task);
  if (byTagClient) {
    return {
      destinationProjectId: byTagClient,
      reason: "cliente detectado por tag",
    };
  }

  // 5) Prefixos explícitos no título
  if (n.includes("[core]")) {
    return {
      destinationProjectId: config.coreProjectId,
      reason: "prefixo [Core]",
    };
  }
  if (n.includes("[labs]")) {
    return {
      destinationProjectId: config.labsProjectId,
      reason: "prefixo [Labs]",
    };
  }
  if (n.includes("[clientes]")) {
    const project = pickClientProjectByName(task.name);
    return {
      destinationProjectId: project,
      reason: project
        ? "prefixo [Clientes] + cliente detectado"
        : "prefixo [Clientes] sem cliente detectado",
    };
  }

  // Cliente no título
  const clientProject = pickClientProjectByName(task.name);
  if (clientProject) {
    return {
      destinationProjectId: clientProject,
      reason: "cliente detectado no título",
    };
  }

  // Heurística Core (título)
  if (
    containsAny(n, [
      "martech",
      "acore",
      "workos",
      "multitenant",
      "securityrls",
      "supabase",
      "vercel",
      "cursor",
      "gtd",
      "governança",
      "governanca",
    ])
  ) {
    return {
      destinationProjectId: config.coreProjectId,
      reason: "heurística Core",
    };
  }

  return {
    destinationProjectId: "",
    reason: "sem regra de roteamento",
  };
}

async function main() {
  accessToken = await getAccessToken();
  console.log(
    `[router] Modo: ${apply ? "APPLY" : "DRY-RUN"} | removeFromInbox=${removeFromInbox}`
  );

  const tasksResp = await asanaGet(`/projects/${config.inboxProjectId}/tasks`, {
    opt_fields: [
      "gid",
      "name",
      "completed",
      "tags.name",
      "tags.gid",
      "memberships.project.gid",
      "memberships.project.name",
      "custom_fields.name",
      "custom_fields.resource_subtype",
      "custom_fields.enum_value",
      "custom_fields.enum_value.name",
      "custom_fields.enum_value.gid",
      "custom_fields.multi_enum_values",
      "custom_fields.multi_enum_values.name",
      "custom_fields.reference_value",
      "custom_fields.reference_value.gid",
      "custom_fields.reference_value.name",
      "custom_fields.reference_value.resource_type",
    ].join(","),
    limit: 100,
  });

  const tasks = (tasksResp.data || []).filter((t) => !t.completed);
  console.log(`[router] Tarefas abertas no Inbox: ${tasks.length}`);

  const stats = {
    moved: 0,
    skippedNoRule: 0,
    skippedNoDestinationConfig: 0,
    skippedAlreadyInDestination: 0,
    failed: 0,
  };

  for (const task of tasks) {
    const route = routeTask(task);
    if (!route.destinationProjectId) {
      if (route.reason.includes("sem cliente detectado")) {
        stats.skippedNoDestinationConfig++;
      } else {
        stats.skippedNoRule++;
      }
      console.log(`- SKIP ${task.gid} | ${task.name} | ${route.reason}`);
      continue;
    }

    const currentProjectIds = (task.memberships || [])
      .map((m) => m.project?.gid)
      .filter(Boolean);

    if (currentProjectIds.includes(route.destinationProjectId)) {
      stats.skippedAlreadyInDestination++;
      console.log(`- SKIP ${task.gid} | ${task.name} | já no destino`);
      continue;
    }

    console.log(
      `- ROUTE ${task.gid} | ${task.name} | -> ${route.destinationProjectId} (${route.reason})`
    );

    if (!apply) continue;

    try {
      await asanaPost(`/tasks/${task.gid}/addProject`, {
        project: route.destinationProjectId,
      });

      if (removeFromInbox) {
        await asanaPost(`/tasks/${task.gid}/removeProject`, {
          project: config.inboxProjectId,
        });
      }

      stats.moved++;
    } catch (err) {
      stats.failed++;
      console.error(
        `  ! FAIL ${task.gid} | ${task.name} | ${err instanceof Error ? err.message : String(err)}`
      );
    }
  }

  console.log("\n[router] Resumo:");
  console.log(`- moved: ${stats.moved}`);
  console.log(`- skippedNoRule: ${stats.skippedNoRule}`);
  console.log(
    `- skippedNoDestinationConfig: ${stats.skippedNoDestinationConfig}`
  );
  console.log(
    `- skippedAlreadyInDestination: ${stats.skippedAlreadyInDestination}`
  );
  console.log(`- failed: ${stats.failed}`);
}

main().catch((err) => {
  console.error(`[router] erro fatal: ${err instanceof Error ? err.message : String(err)}`);
  process.exit(1);
});

