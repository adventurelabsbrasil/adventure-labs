#!/usr/bin/env node

import process from "node:process";

const OAUTH_TOKEN_URL = "https://oauth2.googleapis.com/token";
const ADS_API_BASE = "https://googleads.googleapis.com";
const GTM_API_BASE = "https://tagmanager.googleapis.com/tagmanager/v2";

const tokenCache = new Map();

function readStdin() {
  return new Promise((resolve) => {
    let input = "";
    process.stdin.setEncoding("utf8");
    process.stdin.on("data", (chunk) => {
      input += chunk;
    });
    process.stdin.on("end", () => resolve(input));
  });
}

function writeJsonRpc(id, result) {
  process.stdout.write(`${JSON.stringify({ jsonrpc: "2.0", id, result })}\n`);
}

function writeJsonRpcError(id, message, code = -32000, data = undefined) {
  const payload = { jsonrpc: "2.0", id, error: { code, message } };
  if (data !== undefined) {
    payload.error.data = data;
  }
  process.stdout.write(`${JSON.stringify(payload)}\n`);
}

function mustEnv(name, options = {}) {
  const value = process.env[name];
  if (!value || !value.trim()) {
    if (options.optional) return null;
    throw new Error(`Missing env var: ${name}`);
  }
  return value.trim();
}

async function fetchGoogleAccessToken(service = "ads") {
  const cacheKey = service === "gtm" ? "gtm" : "ads";
  const cached = tokenCache.get(cacheKey);
  const now = Date.now();
  if (cached && now < cached.expiresAt - 60_000) {
    return cached.token;
  }

  const isGtm = service === "gtm";
  const clientId = mustEnv(isGtm ? "GTM_CLIENT_ID" : "GOOGLE_ADS_CLIENT_ID", {
    optional: isGtm,
  }) || mustEnv("GOOGLE_ADS_CLIENT_ID");
  const clientSecret = mustEnv(isGtm ? "GTM_CLIENT_SECRET" : "GOOGLE_ADS_CLIENT_SECRET", {
    optional: isGtm,
  }) || mustEnv("GOOGLE_ADS_CLIENT_SECRET");
  const refreshToken = mustEnv(isGtm ? "GTM_REFRESH_TOKEN" : "GOOGLE_ADS_REFRESH_TOKEN", {
    optional: isGtm,
  }) || mustEnv("GOOGLE_ADS_REFRESH_TOKEN");

  const body = new URLSearchParams({
    client_id: clientId,
    client_secret: clientSecret,
    refresh_token: refreshToken,
    grant_type: "refresh_token",
  });

  const response = await fetch(OAUTH_TOKEN_URL, {
    method: "POST",
    headers: { "Content-Type": "application/x-www-form-urlencoded" },
    body,
  });

  if (!response.ok) {
    const text = await response.text();
    throw new Error(`OAuth token error (${response.status}): ${text}`);
  }

  const data = await response.json();
  const token = data.access_token;
  tokenCache.set(cacheKey, {
    token,
    expiresAt: Date.now() + Number(data.expires_in || 3600) * 1000,
  });
  return token;
}

function normalizeAdsCustomerId(customerId) {
  return String(customerId).replace(/-/g, "");
}

async function adsApiRequest(path, options = {}, version = "v20") {
  const accessToken = await fetchGoogleAccessToken("ads");
  const developerToken = mustEnv("GOOGLE_ADS_DEVELOPER_TOKEN");
  const loginCustomerId = mustEnv("GOOGLE_ADS_LOGIN_CUSTOMER_ID", { optional: true });

  const headers = {
    Authorization: `Bearer ${accessToken}`,
    "developer-token": developerToken,
    "Content-Type": "application/json",
    ...(options.headers || {}),
  };

  if (loginCustomerId) {
    headers["login-customer-id"] = normalizeAdsCustomerId(loginCustomerId);
  }

  const response = await fetch(`${ADS_API_BASE}/${version}${path}`, {
    method: options.method || "GET",
    headers,
    body: options.body ? JSON.stringify(options.body) : undefined,
  });

  if (!response.ok) {
    const text = await response.text();
    throw new Error(`Google Ads API error (${response.status}): ${text}`);
  }

  const contentType = response.headers.get("content-type") || "";
  if (contentType.includes("application/json")) {
    return response.json();
  }

  const text = await response.text();
  throw new Error(`Google Ads API retornou payload não-JSON: ${text}`);
}

async function gtmApiRequest(path, options = {}) {
  const accessToken = await fetchGoogleAccessToken("gtm");
  const normalizedPath = path.startsWith("/") ? path : `/${path}`;

  const response = await fetch(`${GTM_API_BASE}${normalizedPath}`, {
    method: options.method || "GET",
    headers: {
      Authorization: `Bearer ${accessToken}`,
      "Content-Type": "application/json",
      ...(options.headers || {}),
    },
    body: options.body ? JSON.stringify(options.body) : undefined,
  });

  if (!response.ok) {
    const text = await response.text();
    throw new Error(`GTM API error (${response.status}): ${text}`);
  }

  return response.json();
}

async function gtmLookupByTagId(tagId) {
  const accountsData = await gtmApiRequest("/accounts");
  const accounts = accountsData.account || [];

  for (const account of accounts) {
    const accountId = account.accountId;
    const containersData = await gtmApiRequest(`/accounts/${accountId}/containers`);
    const containers = containersData.container || [];
    const match = containers.find((container) => container.publicId === tagId);
    if (match) {
      return {
        accountId,
        accountName: account.name,
        containerId: match.containerId,
        containerName: match.name,
        publicId: match.publicId,
      };
    }
  }

  throw new Error(`Container com Tag ID ${tagId} não encontrado nas contas acessíveis.`);
}

function buildToolsList() {
  return [
    {
      name: "verify_google_access",
      description: "Valida OAuth e presença de envs obrigatórias para Ads/GTM.",
      inputSchema: { type: "object", properties: {}, additionalProperties: false },
    },
    {
      name: "ads_customer_diagnostics",
      description: "Consulta dados básicos de conta/campanhas no Google Ads.",
      inputSchema: {
        type: "object",
        properties: {
          customerId: { type: "string", description: "Ex.: 167-722-6456" },
          query: {
            type: "string",
            description:
              "GAQL opcional. Se vazio, usa query padrão para diagnosticar campanha/impressões.",
          },
        },
        required: ["customerId"],
        additionalProperties: false,
      },
    },
    {
      name: "gtm_lookup_container",
      description: "Localiza account/container/workspace a partir do Tag ID (GTM-XXXX).",
      inputSchema: {
        type: "object",
        properties: {
          tagId: { type: "string", description: "Ex.: GTM-MN283T6L" },
        },
        required: ["tagId"],
        additionalProperties: false,
      },
    },
    {
      name: "gtm_list_workspaces",
      description: "Lista workspaces de um container GTM.",
      inputSchema: {
        type: "object",
        properties: {
          accountId: { type: "string" },
          containerId: { type: "string" },
        },
        required: ["accountId", "containerId"],
        additionalProperties: false,
      },
    },
    {
      name: "gtm_create_entity_raw",
      description: "Cria entidade GTM (tag/trigger/variable) com payload JSON bruto.",
      inputSchema: {
        type: "object",
        properties: {
          accountId: { type: "string" },
          containerId: { type: "string" },
          workspaceId: { type: "string" },
          entityType: { type: "string", enum: ["tags", "triggers", "variables"] },
          payload: { type: "object" },
        },
        required: ["accountId", "containerId", "workspaceId", "entityType", "payload"],
        additionalProperties: false,
      },
    },
    {
      name: "gtm_create_version_and_publish",
      description: "Cria versão do container e publica no ambiente live.",
      inputSchema: {
        type: "object",
        properties: {
          accountId: { type: "string" },
          containerId: { type: "string" },
          workspaceId: { type: "string" },
          versionName: { type: "string" },
          versionNotes: { type: "string" },
        },
        required: ["accountId", "containerId", "workspaceId", "versionName"],
        additionalProperties: false,
      },
    },
  ];
}

async function handleToolCall(name, args) {
  if (name === "verify_google_access") {
    const required = [
      "GOOGLE_ADS_CLIENT_ID",
      "GOOGLE_ADS_CLIENT_SECRET",
      "GOOGLE_ADS_REFRESH_TOKEN",
      "GOOGLE_ADS_DEVELOPER_TOKEN",
    ];

    const missing = required.filter((key) => !process.env[key]);
    if (missing.length) {
      throw new Error(`Missing required env vars: ${missing.join(", ")}`);
    }

    await fetchGoogleAccessToken();
    return {
      ok: true,
      message: "OAuth token obtido com sucesso e envs obrigatórias presentes.",
      optionalVars: {
        GOOGLE_ADS_LOGIN_CUSTOMER_ID: Boolean(process.env.GOOGLE_ADS_LOGIN_CUSTOMER_ID),
        GTM_TAG_ID: Boolean(process.env.GTM_TAG_ID),
        GTM_CLIENT_ID: Boolean(process.env.GTM_CLIENT_ID),
        GTM_CLIENT_SECRET: Boolean(process.env.GTM_CLIENT_SECRET),
        GTM_REFRESH_TOKEN: Boolean(process.env.GTM_REFRESH_TOKEN),
      },
    };
  }

  if (name === "ads_customer_diagnostics") {
    const customerId = normalizeAdsCustomerId(args.customerId);
    const query =
      args.query ||
      `
      SELECT
        customer.id,
        customer.descriptive_name,
        campaign.id,
        campaign.name,
        campaign.status,
        metrics.impressions,
        metrics.clicks
      FROM campaign
      WHERE segments.date DURING LAST_7_DAYS
      ORDER BY metrics.impressions DESC
      LIMIT 20
    `;

    const apiVersions = ["v20", "v19", "v18", "v17"];
    let data = null;
    let lastError = null;
    for (const version of apiVersions) {
      try {
        data = await adsApiRequest(`/customers/${customerId}/googleAds:searchStream`, {
          method: "POST",
          body: { query },
        }, version);
        lastError = null;
        break;
      } catch (error) {
        lastError = error;
      }
    }
    if (lastError) throw lastError;

    return {
      customerId,
      rows: data,
      note: "Resultado retornado em formato searchStream (blocos).",
    };
  }

  if (name === "gtm_lookup_container") {
    const lookup = await gtmLookupByTagId(args.tagId);
    return lookup;
  }

  if (name === "gtm_list_workspaces") {
    return gtmApiRequest(
      `/accounts/${args.accountId}/containers/${args.containerId}/workspaces`,
      { method: "GET" },
    );
  }

  if (name === "gtm_create_entity_raw") {
    const { accountId, containerId, workspaceId, entityType, payload } = args;
    return gtmApiRequest(
      `/accounts/${accountId}/containers/${containerId}/workspaces/${workspaceId}/${entityType}`,
      {
        method: "POST",
        body: payload,
      },
    );
  }

  if (name === "gtm_create_version_and_publish") {
    const { accountId, containerId, workspaceId, versionName, versionNotes } = args;

    const versionResult = await gtmApiRequest(
      `/accounts/${accountId}/containers/${containerId}/workspaces/${workspaceId}:create_version`,
      {
        method: "POST",
        body: {
          name: versionName,
          notes: versionNotes || "",
        },
      },
    );

    const containerVersionId = versionResult?.containerVersion?.containerVersionId;
    if (!containerVersionId) {
      throw new Error("Não foi possível obter containerVersionId após create_version.");
    }

    const publishResult = await gtmApiRequest(`${versionResult.containerVersion.path}:publish`, {
      method: "POST",
      body: {},
    });

    return {
      versionResult,
      publishResult,
      publishedVersionId: containerVersionId,
    };
  }

  throw new Error(`Tool not found: ${name}`);
}

async function run() {
  const raw = await readStdin();
  if (!raw.trim()) return;

  const requests = raw
    .split("\n")
    .map((line) => line.trim())
    .filter(Boolean)
    .map((line) => JSON.parse(line));

  for (const request of requests) {
    const id = request.id ?? null;
    const method = request.method;

    try {
      if (method === "initialize") {
        writeJsonRpc(id, {
          protocolVersion: "2024-11-05",
          capabilities: { tools: {} },
          serverInfo: { name: "google-marketing-mcp", version: "0.1.0" },
        });
        continue;
      }

      if (method === "tools/list") {
        writeJsonRpc(id, { tools: buildToolsList() });
        continue;
      }

      if (method === "tools/call") {
        const toolName = request.params?.name;
        const args = request.params?.arguments || {};
        const result = await handleToolCall(toolName, args);

        writeJsonRpc(id, {
          content: [{ type: "text", text: JSON.stringify(result, null, 2) }],
          isError: false,
        });
        continue;
      }

      if (method === "notifications/initialized") {
        continue;
      }

      writeJsonRpcError(id, `Unsupported method: ${method}`, -32601);
    } catch (error) {
      writeJsonRpcError(id, error.message, -32000);
    }
  }
}

run();
