#!/usr/bin/env node
// Adventure Labs — Mercado Pago CLI (leitura/conciliação interna)
//
// Objetivo: sincronizar pagamentos (e, futuramente, saldo/atividades) da conta
// Mercado Pago da Adventure Labs para o Supabase, alimentando Sueli (financeiro AI),
// Buffett (CFO agente) e dashboards do Metabase.
//
// Uso:
//   infisical run --env=dev --path=/mp -- node tools/scripts/mercadopago-cli.mjs <comando> [flags]
//
// Comandos:
//   verify                          Valida credenciais e imprime /users/me
//   payments:search [--from YYYY-MM-DD] [--to YYYY-MM-DD] [--limit N]
//                                   Busca pagamentos e imprime JSON (stdout, sem persistir)
//   sync:payments   [--from YYYY-MM-DD] [--to YYYY-MM-DD] [--full]
//                                   Sincroniza pagamentos -> adv_mp_payments (upsert por id)
//                                   Por padrão, incremental: parte de MAX(date_created) no Supabase.
//                                   --full força desde --from (default 2024-01-01).
//   sync:all                        Alias de sync:payments (reservado para expandir balance/activities).
//   help
//
// Env obrigatórias (via Infisical path=/mp):
//   MP_ACCESS_TOKEN        Access Token de produção (APP_USR-...)
//   SUPABASE_URL           URL do projeto Supabase
//   SUPABASE_SERVICE_ROLE_KEY   service_role key (RLS de adv_mp_* é service_role-only)
//
// Env opcionais:
//   MP_USER_ID             User ID numérico (só para log/telemetria)
//   TELEGRAM_BOT_TOKEN     Se presente, erros críticos notificam ceo_buzz_Bot
//   TELEGRAM_CHAT_ID       Chat destino (padrão 1069502175)

import process from "node:process";

const MP_API_BASE = "https://api.mercadopago.com";
const TELEGRAM_DEFAULT_CHAT = "1069502175";
const DEFAULT_FULL_FROM = "2024-01-01";
const SYNC_PAGE_SIZE = 100;
const MAX_PAGES_PER_RUN = 500; // segurança: ~50k pagamentos por execução

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

function mustEnv(name, { optional = false } = {}) {
  const value = process.env[name];
  if ((!value || !value.trim()) && !optional) {
    throw new Error(`Missing env var: ${name}`);
  }
  return value?.trim() || "";
}

function parseFlags(argv) {
  const flags = {};
  for (let i = 0; i < argv.length; i += 1) {
    const arg = argv[i];
    if (!arg.startsWith("--")) continue;
    const key = arg.slice(2);
    const next = argv[i + 1];
    if (!next || next.startsWith("--")) {
      flags[key] = true;
    } else {
      flags[key] = next;
      i += 1;
    }
  }
  return flags;
}

function isoDate(d) {
  return new Date(d).toISOString();
}

function todayIso() {
  return new Date().toISOString();
}

async function notifyTelegram(message) {
  const token = process.env.TELEGRAM_BOT_TOKEN;
  if (!token) return;
  const chatId = process.env.TELEGRAM_CHAT_ID || TELEGRAM_DEFAULT_CHAT;
  try {
    await fetch(`https://api.telegram.org/bot${token}/sendMessage`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({
        chat_id: chatId,
        text: message,
        parse_mode: "Markdown",
        disable_web_page_preview: true,
      }),
    });
  } catch (error) {
    // Fallback silencioso — não queremos que o erro de notificação mate o sync.
    console.error("telegram notify failed:", error.message);
  }
}

// ---------------------------------------------------------------------------
// Mercado Pago API
// ---------------------------------------------------------------------------

async function mpRequest(path, { method = "GET", query = null } = {}) {
  const token = mustEnv("MP_ACCESS_TOKEN");
  let url = `${MP_API_BASE}${path}`;
  if (query) {
    const params = new URLSearchParams();
    for (const [k, v] of Object.entries(query)) {
      if (v !== undefined && v !== null && v !== "") params.set(k, String(v));
    }
    url += `?${params.toString()}`;
  }

  const response = await fetch(url, {
    method,
    headers: {
      Authorization: `Bearer ${token}`,
      "Content-Type": "application/json",
    },
  });

  if (!response.ok) {
    const body = await response.text();
    throw new Error(
      `Mercado Pago API error ${response.status} on ${method} ${path}: ${body}`,
    );
  }

  return response.json();
}

async function mpVerify() {
  const me = await mpRequest("/users/me");
  return {
    id: me.id,
    nickname: me.nickname,
    email: me.email,
    site_id: me.site_id,
    country_id: me.country_id,
    status: me.status?.site_status,
  };
}

async function mpSearchPayments({ from, to, limit = 50, offset = 0 }) {
  return mpRequest("/v1/payments/search", {
    query: {
      sort: "date_created",
      criteria: "asc",
      range: "date_created",
      begin_date: from,
      end_date: to,
      limit,
      offset,
    },
  });
}

// ---------------------------------------------------------------------------
// Supabase (persistência)
// ---------------------------------------------------------------------------

async function loadSupabase() {
  const { createClient } = await import("@supabase/supabase-js");
  const url = mustEnv("SUPABASE_URL");
  const key = mustEnv("SUPABASE_SERVICE_ROLE_KEY");
  return createClient(url, key, {
    auth: { persistSession: false, autoRefreshToken: false },
  });
}

async function getLastPaymentCursor(supabase) {
  const { data, error } = await supabase
    .from("adv_mp_payments")
    .select("date_created")
    .order("date_created", { ascending: false })
    .limit(1)
    .maybeSingle();
  if (error) throw new Error(`supabase cursor read: ${error.message}`);
  return data?.date_created || null;
}

function paymentToRow(p) {
  const feeAmount = Array.isArray(p.fee_details)
    ? p.fee_details.reduce((acc, f) => acc + Number(f.amount || 0), 0)
    : null;

  return {
    id: p.id,
    date_created: p.date_created,
    date_approved: p.date_approved || null,
    date_last_updated: p.date_last_updated || null,
    status: p.status || null,
    status_detail: p.status_detail || null,
    operation_type: p.operation_type || null,
    payment_method_id: p.payment_method_id || null,
    payment_type_id: p.payment_type_id || null,
    currency_id: p.currency_id || null,
    description: p.description || null,
    transaction_amount: p.transaction_amount ?? null,
    transaction_amount_refunded: p.transaction_amount_refunded ?? null,
    net_received_amount: p.transaction_details?.net_received_amount ?? null,
    fee_amount: feeAmount,
    external_reference: p.external_reference || null,
    payer_email: p.payer?.email || null,
    payer_doc_type: p.payer?.identification?.type || null,
    payer_doc_number: p.payer?.identification?.number || null,
    raw: p,
    synced_at: new Date().toISOString(),
  };
}

async function upsertPayments(supabase, payments) {
  if (!payments.length) return { inserted: 0, updated: 0 };
  const rows = payments.map(paymentToRow);
  const { error, count } = await supabase
    .from("adv_mp_payments")
    .upsert(rows, { onConflict: "id", count: "exact" });
  if (error) throw new Error(`supabase upsert: ${error.message}`);
  // O Supabase não diferencia insert/update num upsert; reportamos total afetado.
  return { affected: count ?? rows.length };
}

async function writeSyncLog(supabase, entry) {
  const { error } = await supabase.from("adv_mp_sync_log").insert({
    kind: entry.kind,
    ran_at: new Date().toISOString(),
    from_cursor: entry.from || null,
    to_cursor: entry.to || null,
    rows_affected: entry.rowsAffected ?? 0,
    pages_fetched: entry.pagesFetched ?? 0,
    duration_ms: entry.durationMs ?? 0,
    error: entry.error || null,
  });
  if (error) {
    // Não queremos que falha de log derrube sync — só avisamos.
    console.error("sync log insert failed:", error.message);
  }
}

// ---------------------------------------------------------------------------
// Comandos
// ---------------------------------------------------------------------------

async function cmdVerify() {
  const info = await mpVerify();
  console.log(JSON.stringify({ ok: true, ...info }, null, 2));
}

async function cmdPaymentsSearch(flags) {
  const from = flags.from ? isoDate(flags.from) : isoDate(DEFAULT_FULL_FROM);
  const to = flags.to ? isoDate(flags.to) : todayIso();
  const limit = Number(flags.limit || 50);
  const data = await mpSearchPayments({ from, to, limit, offset: 0 });
  console.log(
    JSON.stringify(
      {
        paging: data.paging,
        count: data.results?.length ?? 0,
        sample_ids: (data.results || []).slice(0, 5).map((r) => r.id),
        results: data.results,
      },
      null,
      2,
    ),
  );
}

async function cmdSyncPayments(flags) {
  const supabase = await loadSupabase();
  const started = Date.now();

  let from;
  if (flags.full) {
    from = isoDate(flags.from || DEFAULT_FULL_FROM);
  } else {
    const cursor = await getLastPaymentCursor(supabase);
    from = cursor ? isoDate(cursor) : isoDate(flags.from || DEFAULT_FULL_FROM);
  }
  const to = flags.to ? isoDate(flags.to) : todayIso();

  let offset = 0;
  let pages = 0;
  let totalAffected = 0;
  let totalFetched = 0;

  try {
    // eslint-disable-next-line no-constant-condition
    while (true) {
      if (pages >= MAX_PAGES_PER_RUN) {
        throw new Error(
          `MAX_PAGES_PER_RUN (${MAX_PAGES_PER_RUN}) atingido — rode novamente para continuar`,
        );
      }
      const data = await mpSearchPayments({
        from,
        to,
        limit: SYNC_PAGE_SIZE,
        offset,
      });
      const results = data.results || [];
      totalFetched += results.length;

      if (results.length === 0) break;

      const { affected } = await upsertPayments(supabase, results);
      totalAffected += affected;
      pages += 1;

      // paging.total informa o total; avançamos offset pelo tamanho da página.
      offset += results.length;
      if (results.length < SYNC_PAGE_SIZE) break;
    }

    await writeSyncLog(supabase, {
      kind: "payments",
      from,
      to,
      rowsAffected: totalAffected,
      pagesFetched: pages,
      durationMs: Date.now() - started,
    });

    console.log(
      JSON.stringify(
        {
          ok: true,
          kind: "payments",
          from,
          to,
          pages_fetched: pages,
          rows_fetched: totalFetched,
          rows_affected: totalAffected,
          duration_ms: Date.now() - started,
        },
        null,
        2,
      ),
    );
  } catch (error) {
    await writeSyncLog(supabase, {
      kind: "payments",
      from,
      to,
      rowsAffected: totalAffected,
      pagesFetched: pages,
      durationMs: Date.now() - started,
      error: error.message,
    });
    await notifyTelegram(
      `🚨 *mercadopago-sync* falhou em \`sync:payments\`\n\n\`\`\`\n${error.message}\n\`\`\``,
    );
    throw error;
  }
}

async function cmdSyncAll(flags) {
  // Por ora só payments. Quando implementarmos balance/activities, entram aqui.
  await cmdSyncPayments(flags);
}

// ---------------------------------------------------------------------------
// Main
// ---------------------------------------------------------------------------

async function main() {
  const [, , command, ...rest] = process.argv;
  const flags = parseFlags(rest);

  if (!command || command === "help" || command === "--help") {
    console.log(`Mercado Pago CLI — Adventure Labs

Comandos:
  verify
  payments:search [--from YYYY-MM-DD] [--to YYYY-MM-DD] [--limit N]
  sync:payments   [--from YYYY-MM-DD] [--to YYYY-MM-DD] [--full]
  sync:all

Exemplos:
  infisical run --env=dev --path=/mp -- node tools/scripts/mercadopago-cli.mjs verify
  infisical run --env=dev --path=/mp -- node tools/scripts/mercadopago-cli.mjs sync:payments
  infisical run --env=prod --path=/mp -- node tools/scripts/mercadopago-cli.mjs sync:payments --full --from 2024-01-01
`);
    return;
  }

  switch (command) {
    case "verify":
      await cmdVerify();
      return;
    case "payments:search":
      await cmdPaymentsSearch(flags);
      return;
    case "sync:payments":
      await cmdSyncPayments(flags);
      return;
    case "sync:all":
      await cmdSyncAll(flags);
      return;
    default:
      console.error(`Comando desconhecido: ${command}`);
      process.exit(2);
  }
}

main().catch((err) => {
  console.error(err.message || err);
  process.exit(1);
});
