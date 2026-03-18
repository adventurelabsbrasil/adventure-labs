#!/usr/bin/env node
/**
 * Login Asana via OAuth (localhost ou OOB) ou PAT.
 *
 *   node asana-login.mjs oauth [--write-admin-env]     → callback 127.0.0.1:47823
 *   node asana-login.mjs oauth-oob [--write-admin-env] → código na página Asana
 *   node asana-login.mjs pat [--write-admin-env]
 */

import http from "http";
import { execSync } from "child_process";
import { readFileSync, appendFileSync, existsSync, mkdirSync } from "fs";
import { createInterface } from "readline";
import { fileURLToPath } from "url";
import { dirname, join } from "path";

const __dirname = dirname(fileURLToPath(import.meta.url));
const PORT = 47823;
const REDIRECT_LOCAL = `http://127.0.0.1:${PORT}/callback`;
const REDIRECT_OOB = "urn:ietf:wg:oauth:2.0:oob";
const AUTH_URL = "https://app.asana.com/-/oauth_authorize";
const TOKEN_URL = "https://app.asana.com/-/oauth_token";
const ASANA_API = "https://app.asana.com/api/1.0";
const DEFAULT_OOB_SCOPES = "openid email profile default identity";

function loadDotEnv() {
  const p = join(__dirname, ".env");
  if (!existsSync(p)) return;
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

function adminEnvPath() {
  return join(__dirname, "..", "..", "apps", "admin", ".env.local");
}

function appendAdminEnv(key, value) {
  const target = adminEnvPath();
  const dir = dirname(target);
  if (!existsSync(dir)) mkdirSync(dir, { recursive: true });
  const line = `\n# Asana (${new Date().toISOString().slice(0, 10)} — tools/asana-cli)\n${key}=${value}\n`;
  appendFileSync(target, line, { flag: "a" });
  console.log("\nGravado em:", target);
}

function openUrl(url) {
  try {
    if (process.platform === "darwin") {
      execSync(`open "${url.replace(/"/g, '\\"')}"`, { stdio: "ignore" });
    } else if (process.platform === "win32") {
      execSync(`start "" "${url}"`, { shell: true, stdio: "ignore" });
    } else {
      execSync(`xdg-open "${url.replace(/"/g, '\\"')}"`, { stdio: "ignore" });
    }
  } catch {
    /* ignore */
  }
}

async function exchangeCode(clientId, clientSecret, redirectUri, code) {
  const body = new URLSearchParams({
    grant_type: "authorization_code",
    client_id: clientId,
    client_secret: clientSecret,
    redirect_uri: redirectUri,
    code,
  });
  const tokRes = await fetch(TOKEN_URL, {
    method: "POST",
    headers: { "Content-Type": "application/x-www-form-urlencoded" },
    body: body.toString(),
  });
  const tokJson = await tokRes.json();
  if (!tokRes.ok) {
    throw new Error(
      tokJson.error ||
        tokJson.errors?.[0]?.message ||
        JSON.stringify(tokJson)
    );
  }
  return tokJson;
}

function printTokens(tokJson, writeAdmin) {
  const access = tokJson.access_token;
  const refresh = tokJson.refresh_token;
  console.log("\n--- Variáveis (copie para Vercel ou .env.local) ---\n");
  console.log(`ASANA_ACCESS_TOKEN=${access}`);
  if (refresh) {
    console.log(`# refresh (renovação automática futura)`);
    console.log(`ASANA_REFRESH_TOKEN=${refresh}`);
  }
  console.log("");
  if (writeAdmin) appendAdminEnv("ASANA_ACCESS_TOKEN", access);
}

async function cmdOAuthOob(writeAdmin) {
  loadDotEnv();
  const clientId = process.env.ASANA_OAUTH_CLIENT_ID;
  const clientSecret = process.env.ASANA_OAUTH_CLIENT_SECRET;
  if (!clientId || !clientSecret) {
    console.error(
      "Faltam ASANA_OAUTH_CLIENT_ID / ASANA_OAUTH_CLIENT_SECRET em tools/asana-cli/.env"
    );
    process.exit(1);
  }

  const scopes =
    process.env.ASANA_OAUTH_SCOPES?.trim() || DEFAULT_OOB_SCOPES;
  const state =
    Math.random().toString(36).slice(2) + Math.random().toString(36).slice(2);

  const params = new URLSearchParams({
    response_type: "code",
    client_id: clientId,
    redirect_uri: REDIRECT_OOB,
    scope: scopes,
    state,
  });
  const authUrl = `${AUTH_URL}?${params.toString()}`;

  console.log("\n1) Abra esta URL no navegador (login + autorizar):\n");
  console.log(authUrl);
  console.log(
    "\n2) Após autorizar, o Asana mostra um **código** na página (não redireciona para localhost).\n"
  );
  openUrl(authUrl);

  const rl = createInterface({ input: process.stdin, output: process.stdout });
  const code = await new Promise((r) => {
    rl.question("Cole o código aqui: ", r);
  });
  rl.close();
  const trimmed = code.trim();
  if (!trimmed) {
    console.error("Código vazio.");
    process.exit(1);
  }

  try {
    const tokJson = await exchangeCode(
      clientId,
      clientSecret,
      REDIRECT_OOB,
      trimmed
    );
    printTokens(tokJson, writeAdmin);
  } catch (e) {
    console.error("Erro ao trocar código:", e.message || e);
    console.error(
      "Confira: no app Asana, Redirect URL deve incluir exatamente urn:ietf:wg:oauth:2.0:oob"
    );
    process.exit(1);
  }
}

async function cmdOAuth(writeAdmin) {
  loadDotEnv();
  const clientId = process.env.ASANA_OAUTH_CLIENT_ID;
  const clientSecret = process.env.ASANA_OAUTH_CLIENT_SECRET;
  if (!clientId || !clientSecret) {
    console.error(
      "Faltam ASANA_OAUTH_CLIENT_ID / ASANA_OAUTH_CLIENT_SECRET em tools/asana-cli/.env"
    );
    console.error("Redirect URI no app Asana:", REDIRECT_LOCAL);
    console.error("Ou use: node asana-login.mjs oauth-oob");
    process.exit(1);
  }

  const state =
    Math.random().toString(36).slice(2) + Math.random().toString(36).slice(2);
  const authUrl =
    `${AUTH_URL}?client_id=${encodeURIComponent(clientId)}` +
    `&redirect_uri=${encodeURIComponent(REDIRECT_LOCAL)}` +
    `&response_type=code&state=${encodeURIComponent(state)}`;

  await new Promise((resolve, reject) => {
    const server = http.createServer(async (req, res) => {
      if (!req.url?.startsWith("/callback")) {
        res.writeHead(404);
        res.end();
        return;
      }
      const u = new URL(req.url, `http://127.0.0.1:${PORT}`);
      const code = u.searchParams.get("code");
      const err = u.searchParams.get("error");
      const st = u.searchParams.get("state");

      const html = (body) => {
        res.writeHead(200, { "Content-Type": "text/html; charset=utf-8" });
        res.end(
          `<!DOCTYPE html><html><body style="font-family:sans-serif;padding:2rem">${body}</body></html>`
        );
      };

      if (err) {
        html(`<h1>Asana: ${err}</h1>`);
        server.close();
        reject(new Error(err));
        return;
      }
      if (st !== state) {
        html("<h1>state inválido</h1>");
        server.close();
        reject(new Error("state"));
        return;
      }
      if (!code) {
        html("<h1>Sem código</h1>");
        server.close();
        reject(new Error("no code"));
        return;
      }

      let tokJson;
      try {
        tokJson = await exchangeCode(
          clientId,
          clientSecret,
          REDIRECT_LOCAL,
          code
        );
      } catch (e) {
        html(`<h1>Erro ao trocar código</h1><pre>${e.message}</pre>`);
        server.close();
        reject(e);
        return;
      }

      html("<h1>Autorizado</h1><p>Pode fechar esta aba e voltar ao terminal.</p>");
      server.close();
      resolve(tokJson);
    });

    server.listen(PORT, "127.0.0.1", () => {
      console.log("\nAbrindo o navegador para login Asana…\n");
      console.log("Se não abrir, acesse:\n", authUrl, "\n");
      openUrl(authUrl);
    });

    server.on("error", reject);
  })
    .then((tokJson) => {
      printTokens(tokJson, writeAdmin);
    })
    .catch((e) => {
      console.error(e.message || e);
      process.exit(1);
    });
}

async function cmdPat(writeAdmin) {
  const rl = createInterface({ input: process.stdin, output: process.stdout });
  const pat = await new Promise((r) => {
    rl.question("Cole o Personal Access Token Asana: ", r);
  });
  rl.close();
  const token = pat.trim();
  if (!token) {
    console.error("Token vazio.");
    process.exit(1);
  }
  const res = await fetch(`${ASANA_API}/users/me`, {
    headers: { Authorization: `Bearer ${token}` },
  });
  const j = await res.json();
  if (!res.ok) {
    console.error("Token inválido:", j.errors?.[0]?.message || res.status);
    process.exit(1);
  }
  console.log("\nOK — usuário Asana:", j.data?.name || j.data?.email || j.data?.gid);
  console.log("\nASANA_ACCESS_TOKEN=<o que você colou>\n");
  if (writeAdmin) appendAdminEnv("ASANA_ACCESS_TOKEN", token);
}

const cmd = process.argv[2] || "oauth";
const writeAdmin = process.argv.includes("--write-admin-env");

if (cmd === "oauth") {
  cmdOAuth(writeAdmin);
} else if (cmd === "oauth-oob") {
  cmdOAuthOob(writeAdmin).catch((e) => {
    console.error(e);
    process.exit(1);
  });
} else if (cmd === "pat") {
  cmdPat(writeAdmin).catch((e) => {
    console.error(e);
    process.exit(1);
  });
} else {
  console.error(
    "Uso: node asana-login.mjs oauth|oauth-oob|pat [--write-admin-env]"
  );
  console.error(
    "  oauth-oob = código na página (redirect urn:ietf:wg:oauth:2.0:oob)"
  );
  process.exit(1);
}
