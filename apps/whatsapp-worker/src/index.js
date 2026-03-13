/**
 * WhatsApp Worker — Zazu (adv_zazu)
 *
 * Mantém sessão WhatsApp Web (whatsapp-web.js) e expõe GET /daily-messages
 * para o n8n buscar mensagens do dia nos grupos configurados.
 * Uso: leitura apenas; não envia mensagens a clientes.
 *
 * Variáveis de ambiente:
 *   PORT — porta HTTP (default 3333)
 *   WHATSAPP_GROUP_IDS — IDs dos grupos separados por vírgula (ex.: 123456@g.us,789@g.us)
 *     OU
 *   WHATSAPP_GROUP_NAMES — nomes parciais dos grupos separados por vírgula (match por includes)
 *   SESSION_PATH — pasta para LocalAuth (default .wwebjs_auth)
 */

require("dotenv").config();

const express = require("express");
const qrcodeTerminal = require("qrcode-terminal");
const qrcode = require("qrcode");
// whatsapp-web.js (Puppeteer) carregado só em startWhatsApp() para o HTTP subir antes

const PORT = parseInt(process.env.PORT || "3333", 10);
const SESSION_PATH = process.env.SESSION_PATH || ".wwebjs_auth";

// Grupos: IDs exatos (ex.: 123456789-123456@g.us) ou nomes parciais
const GROUP_IDS = (process.env.WHATSAPP_GROUP_IDS || "")
  .split(",")
  .map((s) => s.trim())
  .filter(Boolean);
const GROUP_NAMES = (process.env.WHATSAPP_GROUP_NAMES || "")
  .split(",")
  .map((s) => s.trim().toLowerCase())
  .filter(Boolean);

let client = null;
let ready = false;
/** Último QR em data URL (para GET /qr no browser, ex.: Railway) */
let lastQrDataUrl = null;

const app = express();
app.use(express.json());

/** GET / — Resposta rápida para health check do Railway (evita "Application failed to respond") */
app.get("/", (_req, res) => {
  res.json({ service: "zazu", ok: true });
});

app.get("/health", (_req, res) => {
  res.json({
    ok: true,
    ready,
    hasGroupFilter: GROUP_IDS.length > 0 || GROUP_NAMES.length > 0,
  });
});

/**
 * GET /qr
 *
 * Retorna HTML com a imagem do QR para escanear no celular (útil quando o QR nos logs
 * do Railway vem fragmentado). Enquanto não estiver conectado, o QR é atualizado a cada
 * evento; após conectar, retorna mensagem "Já conectado".
 */
app.get("/qr", async (_req, res) => {
  if (ready) {
    return res.type("html").send(
      "<!DOCTYPE html><html><head><meta charset=\"utf-8\"><title>Zazu</title></head><body>" +
      "<p>WhatsApp já conectado.</p><p><a href=\"/health\">/health</a></p></body></html>"
    );
  }
  if (!lastQrDataUrl) {
    return res.status(503).type("html").send(
      "<!DOCTYPE html><html><head><meta charset=\"utf-8\"><title>Zazu</title></head><body>" +
      "<p>Aguardando QR do WhatsApp. Recarregue esta página em alguns segundos.</p></body></html>"
    );
  }
  res.type("html").send(
    "<!DOCTYPE html><html><head><meta charset=\"utf-8\"><meta name=\"viewport\" content=\"width=device-width,initial-scale=1\">" +
    "<title>Escanear WhatsApp — Zazu</title></head><body style=\"font-family:sans-serif;text-align:center;padding:1rem;\">" +
    "<h1>Escanear com o WhatsApp</h1>" +
    "<p>Abra o WhatsApp → Dispositivos conectados → Conectar um dispositivo</p>" +
    "<img src=\"" + lastQrDataUrl + "\" alt=\"QR Code\" style=\"max-width:100%;height:auto;\">" +
    "<p>Se expirar, recarregue esta página.</p></body></html>"
  );
});

/**
 * GET /qr.json
 *
 * JSON para integração (ex.: Admin frontend). Retorna { connected, qr? }.
 */
app.get("/qr.json", (_req, res) => {
  if (ready) {
    return res.json({ connected: true });
  }
  if (!lastQrDataUrl) {
    return res.status(503).json({ connected: false, error: "Aguardando QR" });
  }
  res.json({ connected: false, qr: lastQrDataUrl });
});

/**
 * GET /groups
 *
 * Lista todos os grupos (id, name) para você copiar nomes/IDs e configurar
 * WHATSAPP_GROUP_NAMES ou WHATSAPP_GROUP_IDS no .env. Só responde quando ready.
 */
app.get("/groups", async (_req, res) => {
  if (!ready || !client) {
    return res.status(503).json({
      error: "WhatsApp client not ready. Scan QR first.",
      groups: [],
    });
  }
  try {
    const chats = await client.getChats();
    const groupChats = chats.filter((c) => c.isGroup);
    const groups = groupChats.map((chat) => ({
      id: chat.id._serialized || chat.id,
      name: chat.name || "(sem nome)",
    }));
    res.json({ groups });
  } catch (err) {
    console.error("[groups]", err);
    res.status(500).json({ error: err.message, groups: [] });
  }
});

/**
 * GET /daily-messages?date=YYYY-MM-DD
 *
 * Retorna mensagens do dia nos grupos configurados.
 * date: opcional; default = ontem (UTC).
 * Resposta: { date, groups: [ { id, name, messages: [ { from, body, timestamp } ] } ], error?: string }
 */
app.get("/daily-messages", async (req, res) => {
  if (!ready || !client) {
    return res.status(503).json({
      date: req.query.date || getDefaultDate(),
      groups: [],
      error: "WhatsApp client not ready",
    });
  }

  const dateParam = req.query.date;
  const dateStr =
    dateParam && /^\d{4}-\d{2}-\d{2}$/.test(dateParam)
      ? dateParam
      : getDefaultDate();
  const dayStart = new Date(dateStr + "T00:00:00.000Z");
  const dayEnd = new Date(dateStr + "T23:59:59.999Z");
  const dayStartTs = Math.floor(dayStart.getTime() / 1000);
  const dayEndTs = Math.floor(dayEnd.getTime() / 1000);

  try {
    const chats = await client.getChats();
    const groupChats = chats.filter((c) => c.isGroup);

    const toFetch = groupChats.filter((chat) => {
      if (GROUP_IDS.length > 0) {
        const id = chat.id._serialized || chat.id;
        return GROUP_IDS.some((g) => id === g || id.endsWith(g));
      }
      if (GROUP_NAMES.length > 0) {
        const name = (chat.name || "").toLowerCase();
        return GROUP_NAMES.some((n) => name.includes(n));
      }
      return true;
    });

    const groups = [];
    const FETCH_LIMIT = 150;

    for (const chat of toFetch) {
      const id = chat.id._serialized || chat.id;
      const name = chat.name || id;
      const messagesInDay = [];

      try {
        const messages = await chat.fetchMessages({ limit: FETCH_LIMIT, fromMe: false });
        for (const msg of messages) {
          const ts = msg.timestamp || 0;
          if (ts >= dayStartTs && ts <= dayEndTs) {
            const from = msg.fromMe ? "me" : (msg.author || msg.from || "unknown");
            const body = typeof msg.body === "string" ? msg.body : (msg.body?.text || "");
            if (body.trim()) {
              messagesInDay.push({
                from: String(from),
                body: body.trim(),
                timestamp: ts,
              });
            }
          }
        }
        // Ordenar do mais antigo ao mais recente no dia
        messagesInDay.sort((a, b) => a.timestamp - b.timestamp);
      } catch (err) {
        console.error(`[daily-messages] Error fetching group ${name}:`, err.message);
      }

      groups.push({
        id,
        name,
        messages: messagesInDay,
      });
    }

    res.json({
      date: dateStr,
      groups,
    });
  } catch (err) {
    console.error("[daily-messages]", err);
    res.status(500).json({
      date: dateStr,
      groups: [],
      error: err.message || "Failed to fetch messages",
    });
  }
});

function getDefaultDate() {
  const d = new Date();
  d.setUTCDate(d.getUTCDate() - 1);
  return d.toISOString().slice(0, 10);
}

async function startWhatsApp() {
  const { Client, LocalAuth } = require("whatsapp-web.js");
  client = new Client({
    authStrategy: new LocalAuth({ dataPath: SESSION_PATH }),
    puppeteer: {
      headless: true,
      args: ["--no-sandbox", "--disable-setuid-sandbox"],
    },
  });

  client.on("qr", (qr) => {
    console.log("[WhatsApp] Escaneie o QR code abaixo com o app WhatsApp (Dispositivos conectados):\n");
    qrcodeTerminal.generate(qr, { small: true });
    console.log("\n");
    // Guardar data URL para GET /qr (útil no Railway, onde os logs fragmentam o QR)
    qrcode.toDataURL(qr, { margin: 2 }).then((dataUrl) => {
      lastQrDataUrl = dataUrl;
    }).catch((err) => {
      console.error("[QR]", err.message);
    });
  });

  client.on("ready", () => {
    ready = true;
    lastQrDataUrl = null;
    console.log("[WhatsApp] Client ready.");
  });

  client.on("auth_failure", (msg) => {
    console.error("[WhatsApp] Auth failure:", msg);
    ready = false;
  });

  client.on("disconnected", (reason) => {
    ready = false;
    console.log("[WhatsApp] Disconnected:", reason);
  });

  await client.initialize();
}

async function main() {
  if (GROUP_IDS.length === 0 && GROUP_NAMES.length === 0) {
    console.warn("[Config] WHATSAPP_GROUP_IDS or WHATSAPP_GROUP_NAMES not set; all groups will be fetched.");
  }

  app.listen(PORT, "0.0.0.0", () => {
    console.log(`[Server] HTTP on 0.0.0.0:${PORT}. GET /, /health, /qr, /qr.json, /groups, /daily-messages?date=YYYY-MM-DD`);
  });

  // Inicializa WhatsApp em background para o HTTP responder logo (evita timeout no Railway)
  startWhatsApp().catch((err) => {
    console.error("[Startup] WhatsApp init failed:", err);
  });
}

main().catch((err) => {
  console.error("[Startup]", err);
  process.exit(1);
});
