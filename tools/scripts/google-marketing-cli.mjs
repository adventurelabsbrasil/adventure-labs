#!/usr/bin/env node

import process from "node:process";
import fs from "node:fs";

const OAUTH_TOKEN_URL = "https://oauth2.googleapis.com/token";
const ADS_API_BASE = "https://googleads.googleapis.com";
const GTM_API_BASE = "https://tagmanager.googleapis.com/tagmanager/v2";

function mustEnv(name, optional = false) {
  const value = process.env[name];
  if ((!value || !value.trim()) && !optional) {
    throw new Error(`Missing env var: ${name}`);
  }
  return value?.trim() || "";
}

function normalizeAdsCustomerId(customerId) {
  return String(customerId).replace(/-/g, "");
}

async function getToken(service = "ads") {
  const isGtm = service === "gtm";
  const body = new URLSearchParams({
    client_id:
      mustEnv(isGtm ? "GTM_CLIENT_ID" : "GOOGLE_ADS_CLIENT_ID", isGtm) ||
      mustEnv("GOOGLE_ADS_CLIENT_ID"),
    client_secret:
      mustEnv(isGtm ? "GTM_CLIENT_SECRET" : "GOOGLE_ADS_CLIENT_SECRET", isGtm) ||
      mustEnv("GOOGLE_ADS_CLIENT_SECRET"),
    refresh_token:
      mustEnv(isGtm ? "GTM_REFRESH_TOKEN" : "GOOGLE_ADS_REFRESH_TOKEN", isGtm) ||
      mustEnv("GOOGLE_ADS_REFRESH_TOKEN"),
    grant_type: "refresh_token",
  });

  const response = await fetch(OAUTH_TOKEN_URL, {
    method: "POST",
    headers: { "Content-Type": "application/x-www-form-urlencoded" },
    body,
  });

  if (!response.ok) {
    throw new Error(`OAuth error ${response.status}: ${await response.text()}`);
  }
  return response.json();
}

async function adsRequest(path, method = "GET", body = null, version = "v20") {
  const token = await getToken("ads");
  const headers = {
    Authorization: `Bearer ${token.access_token}`,
    "developer-token": mustEnv("GOOGLE_ADS_DEVELOPER_TOKEN"),
    "Content-Type": "application/json",
  };

  const loginCustomerId = mustEnv("GOOGLE_ADS_LOGIN_CUSTOMER_ID", true);
  if (loginCustomerId) {
    headers["login-customer-id"] = normalizeAdsCustomerId(loginCustomerId);
  }

  const response = await fetch(`${ADS_API_BASE}/${version}${path}`, {
    method,
    headers,
    body: body ? JSON.stringify(body) : undefined,
  });

  if (!response.ok) {
    throw new Error(`Google Ads API error ${response.status}: ${await response.text()}`);
  }

  return response.json();
}

async function adsMutate(customerId, mutateOperations, partialFailure = false) {
  const apiVersions = ["v20"];
  let data = null;
  let lastError = null;
  for (const version of apiVersions) {
    try {
      data = await adsRequest(
        `/customers/${normalizeAdsCustomerId(customerId)}/googleAds:mutate`,
        "POST",
        {
          mutateOperations,
          partialFailure,
        },
        version,
      );
      lastError = null;
      break;
    } catch (error) {
      lastError = error;
    }
  }
  if (lastError) throw lastError;
  return data;
}

async function gtmRequest(path, method = "GET", body = null) {
  const token = await getToken("gtm");
  const normalizedPath = path.startsWith("/") ? path : `/${path}`;
  const response = await fetch(`${GTM_API_BASE}${normalizedPath}`, {
    method,
    headers: {
      Authorization: `Bearer ${token.access_token}`,
      "Content-Type": "application/json",
    },
    body: body ? JSON.stringify(body) : undefined,
  });

  if (!response.ok) {
    throw new Error(`GTM API error ${response.status}: ${await response.text()}`);
  }

  return response.json();
}

async function gtmLookupByTagId(tagId) {
  const accountsData = await gtmRequest("/accounts");
  const accounts = accountsData.account || [];

  for (const account of accounts) {
    const accountId = account.accountId;
    const containersData = await gtmRequest(`/accounts/${accountId}/containers`);
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

async function main() {
  const command = process.argv[2];

  if (!command || command === "help") {
    console.log(`Uso:
  node tools/scripts/google-marketing-cli.mjs verify
  node tools/scripts/google-marketing-cli.mjs ads:diag <customerId>
  node tools/scripts/google-marketing-cli.mjs ads:conversions <customerId>
  node tools/scripts/google-marketing-cli.mjs ads:conversion-get <customerId> <conversionActionId>
  node tools/scripts/google-marketing-cli.mjs ads:create-click-conversion <customerId> <conversionName>
  node tools/scripts/google-marketing-cli.mjs ads:create-budget-proposal <customerId> <billingSetupId> <amountBrl> [accountBudgetId]
  node tools/scripts/google-marketing-cli.mjs gtm:lookup <GTM-TAG-ID>
  node tools/scripts/google-marketing-cli.mjs gtm:create-workspace <accountId> <containerId> <workspaceName>
  node tools/scripts/google-marketing-cli.mjs gtm:workspaces <accountId> <containerId>
  node tools/scripts/google-marketing-cli.mjs gtm:tags <accountId> <containerId> <workspaceId>
  node tools/scripts/google-marketing-cli.mjs gtm:triggers <accountId> <containerId> <workspaceId>
  node tools/scripts/google-marketing-cli.mjs gtm:versions <accountId> <containerId>
  node tools/scripts/google-marketing-cli.mjs gtm:environments <accountId> <containerId>
  node tools/scripts/google-marketing-cli.mjs gtm:publish-version <accountId> <containerId> <versionId>
  node tools/scripts/google-marketing-cli.mjs gtm:create-raw <accountId> <containerId> <workspaceId> <tags|triggers|variables> <payload.json>
  node tools/scripts/google-marketing-cli.mjs gtm:version-publish <accountId> <containerId> <workspaceId> <versionName> [versionNotes]`);
    return;
  }

  if (command === "verify") {
    const token = await getToken("ads");
    console.log(
      JSON.stringify(
        {
          ok: true,
          tokenType: token.token_type,
          expiresIn: token.expires_in,
          hasDeveloperToken: Boolean(process.env.GOOGLE_ADS_DEVELOPER_TOKEN),
          hasGtmTagId: Boolean(process.env.GTM_TAG_ID),
        },
        null,
        2,
      ),
    );
    return;
  }

  if (command === "ads:diag") {
    const customerId = process.argv[3] || mustEnv("GOOGLE_ADS_CUSTOMER_ID");
    const query = `
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
        data = await adsRequest(
          `/customers/${normalizeAdsCustomerId(customerId)}/googleAds:searchStream`,
          "POST",
          { query },
          version,
        );
        lastError = null;
        break;
      } catch (error) {
        lastError = error;
      }
    }
    if (lastError) throw lastError;

    console.log(JSON.stringify(data, null, 2));
    return;
  }

  if (command === "ads:conversions") {
    const customerId = process.argv[3] || mustEnv("GOOGLE_ADS_CUSTOMER_ID");
    const query = `
      SELECT
        conversion_action.id,
        conversion_action.name,
        conversion_action.status,
        conversion_action.type,
        conversion_action.category,
        conversion_action.resource_name,
        conversion_action.tag_snippets
      FROM conversion_action
      WHERE conversion_action.status != 'REMOVED'
      ORDER BY conversion_action.name
      LIMIT 100
    `;
    const apiVersions = ["v20", "v19", "v18", "v17"];
    let data = null;
    let lastError = null;
    for (const version of apiVersions) {
      try {
        data = await adsRequest(
          `/customers/${normalizeAdsCustomerId(customerId)}/googleAds:searchStream`,
          "POST",
          { query },
          version,
        );
        lastError = null;
        break;
      } catch (error) {
        lastError = error;
      }
    }
    if (lastError) throw lastError;
    console.log(JSON.stringify(data, null, 2));
    return;
  }

  if (command === "ads:conversion-get") {
    const customerId = process.argv[3] || mustEnv("GOOGLE_ADS_CUSTOMER_ID");
    const conversionActionId = process.argv[4];
    if (!conversionActionId) {
      throw new Error("Use: ads:conversion-get <customerId> <conversionActionId>");
    }
    const apiVersions = ["v20", "v19", "v18", "v17"];
    let data = null;
    let lastError = null;
    for (const version of apiVersions) {
      try {
        data = await adsRequest(
          `/customers/${normalizeAdsCustomerId(customerId)}/conversionActions/${conversionActionId}`,
          "GET",
          null,
          version,
        );
        lastError = null;
        break;
      } catch (error) {
        lastError = error;
      }
    }
    if (lastError) throw lastError;
    console.log(JSON.stringify(data, null, 2));
    return;
  }

  if (command === "ads:create-click-conversion") {
    const customerId = process.argv[3] || mustEnv("GOOGLE_ADS_CUSTOMER_ID");
    const conversionName = process.argv[4];
    if (!conversionName) {
      throw new Error("Use: ads:create-click-conversion <customerId> <conversionName>");
    }

    const mutate = await adsMutate(customerId, [
      {
        conversionActionOperation: {
          create: {
            name: conversionName,
            status: "ENABLED",
            type: "WEBPAGE",
            category: "CONTACT",
            viewThroughLookbackWindowDays: 1,
            clickThroughLookbackWindowDays: 30,
            valueSettings: {
              defaultValue: 1,
              defaultCurrencyCode: "BRL",
              alwaysUseDefaultValue: true,
            },
            primaryForGoal: true,
          },
        },
      },
    ]);

    const createdResource =
      mutate?.mutateOperationResponses?.[0]?.conversionActionResult?.resourceName || null;
    console.log(
      JSON.stringify(
        {
          createdResource,
          mutate,
          nextStep:
            "Rode ads:conversions para extrair o send_to (conversionLabel) em conversion_action.tag_snippets.",
        },
        null,
        2,
      ),
    );
    return;
  }

  if (command === "ads:create-budget-proposal") {
    const customerId = process.argv[3] || mustEnv("GOOGLE_ADS_CUSTOMER_ID");
    const billingSetupId = process.argv[4];
    const amountBrl = Number(process.argv[5]);
    const accountBudgetId = process.argv[6] || "";
    if (!billingSetupId || Number.isNaN(amountBrl)) {
      throw new Error(
        "Use: ads:create-budget-proposal <customerId> <billingSetupId> <amountBrl> [accountBudgetId]",
      );
    }

    const micros = Math.round(amountBrl * 1_000_000);
    const create = {
      billingSetup: `customers/${normalizeAdsCustomerId(customerId)}/billingSetups/${billingSetupId}`,
      proposedSpendingLimitMicros: micros,
      proposedName: `Adventure CLI budget ${amountBrl} BRL`,
      proposalType: accountBudgetId ? "UPDATE" : "CREATE",
    };

    if (accountBudgetId) {
      create.accountBudget = `customers/${normalizeAdsCustomerId(customerId)}/accountBudgets/${accountBudgetId}`;
    }

    const mutate = await adsMutate(customerId, [
      {
        accountBudgetProposalOperation: { create },
      },
    ]);

    console.log(
      JSON.stringify(
        {
          customerId,
          billingSetupId,
          accountBudgetId: accountBudgetId || null,
          amountBrl,
          mutate,
        },
        null,
        2,
      ),
    );
    return;
  }

  if (command === "gtm:lookup") {
    const tagId = process.argv[3] || mustEnv("GTM_TAG_ID");
    const data = await gtmLookupByTagId(tagId);
    console.log(JSON.stringify(data, null, 2));
    return;
  }

  if (command === "gtm:workspaces") {
    const accountId = process.argv[3];
    const containerId = process.argv[4];
    if (!accountId || !containerId) {
      throw new Error("Use: gtm:workspaces <accountId> <containerId>");
    }
    const data = await gtmRequest(`/accounts/${accountId}/containers/${containerId}/workspaces`);
    console.log(JSON.stringify(data, null, 2));
    return;
  }

  if (command === "gtm:create-workspace") {
    const accountId = process.argv[3];
    const containerId = process.argv[4];
    const workspaceName = process.argv[5];
    if (!accountId || !containerId || !workspaceName) {
      throw new Error("Use: gtm:create-workspace <accountId> <containerId> <workspaceName>");
    }
    const data = await gtmRequest(`/accounts/${accountId}/containers/${containerId}/workspaces`, "POST", {
      name: workspaceName,
      description: "Criado via CLI Adventure Labs",
    });
    console.log(JSON.stringify(data, null, 2));
    return;
  }

  if (command === "gtm:tags") {
    const accountId = process.argv[3];
    const containerId = process.argv[4];
    const workspaceId = process.argv[5];
    if (!accountId || !containerId || !workspaceId) {
      throw new Error("Use: gtm:tags <accountId> <containerId> <workspaceId>");
    }
    const data = await gtmRequest(`/accounts/${accountId}/containers/${containerId}/workspaces/${workspaceId}/tags`);
    console.log(JSON.stringify(data, null, 2));
    return;
  }

  if (command === "gtm:triggers") {
    const accountId = process.argv[3];
    const containerId = process.argv[4];
    const workspaceId = process.argv[5];
    if (!accountId || !containerId || !workspaceId) {
      throw new Error("Use: gtm:triggers <accountId> <containerId> <workspaceId>");
    }
    const data = await gtmRequest(
      `/accounts/${accountId}/containers/${containerId}/workspaces/${workspaceId}/triggers`,
    );
    console.log(JSON.stringify(data, null, 2));
    return;
  }

  if (command === "gtm:versions") {
    const accountId = process.argv[3];
    const containerId = process.argv[4];
    if (!accountId || !containerId) {
      throw new Error("Use: gtm:versions <accountId> <containerId>");
    }
    const data = await gtmRequest(`/accounts/${accountId}/containers/${containerId}/version_headers`);
    console.log(JSON.stringify(data, null, 2));
    return;
  }

  if (command === "gtm:environments") {
    const accountId = process.argv[3];
    const containerId = process.argv[4];
    if (!accountId || !containerId) {
      throw new Error("Use: gtm:environments <accountId> <containerId>");
    }
    const data = await gtmRequest(`/accounts/${accountId}/containers/${containerId}/environments`);
    console.log(JSON.stringify(data, null, 2));
    return;
  }

  if (command === "gtm:publish-version") {
    const accountId = process.argv[3];
    const containerId = process.argv[4];
    const versionId = process.argv[5];
    if (!accountId || !containerId || !versionId) {
      throw new Error("Use: gtm:publish-version <accountId> <containerId> <versionId>");
    }
    const data = await gtmRequest(
      `/accounts/${accountId}/containers/${containerId}/versions/${versionId}:publish`,
      "POST",
      {},
    );
    console.log(JSON.stringify(data, null, 2));
    return;
  }

  if (command === "gtm:create-raw") {
    const accountId = process.argv[3];
    const containerId = process.argv[4];
    const workspaceId = process.argv[5];
    const entityType = process.argv[6];
    const payloadFile = process.argv[7];
    if (!accountId || !containerId || !workspaceId || !entityType || !payloadFile) {
      throw new Error(
        "Use: gtm:create-raw <accountId> <containerId> <workspaceId> <tags|triggers|variables> <payload.json>",
      );
    }
    const payload = JSON.parse(fs.readFileSync(payloadFile, "utf8"));
    const data = await gtmRequest(
      `/accounts/${accountId}/containers/${containerId}/workspaces/${workspaceId}/${entityType}`,
      "POST",
      payload,
    );
    console.log(JSON.stringify(data, null, 2));
    return;
  }

  if (command === "gtm:version-publish") {
    const accountId = process.argv[3];
    const containerId = process.argv[4];
    const workspaceId = process.argv[5];
    const versionName = process.argv[6];
    const versionNotes = process.argv[7] || "";
    if (!accountId || !containerId || !workspaceId || !versionName) {
      throw new Error(
        "Use: gtm:version-publish <accountId> <containerId> <workspaceId> <versionName> [versionNotes]",
      );
    }

    const versionResult = await gtmRequest(
      `/accounts/${accountId}/containers/${containerId}/workspaces/${workspaceId}:create_version`,
      "POST",
      { name: versionName, notes: versionNotes },
    );
    const containerVersionPath = versionResult?.containerVersion?.path;
    if (!containerVersionPath) {
      throw new Error("Não foi possível obter containerVersion.path no create_version.");
    }

    const publish = await gtmRequest(`${containerVersionPath}:publish`, "POST", {});

    console.log(JSON.stringify({ versionResult, publish }, null, 2));
    return;
  }

  throw new Error(`Comando não suportado: ${command}`);
}

main().catch((error) => {
  console.error(error.message);
  process.exit(1);
});
