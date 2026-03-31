#!/usr/bin/env node
/**
 * Lê todos os .ofx em ../dados/ e imprime JSON com transações + metadados do arquivo.
 * Uso: node scripts/parse-ofx.mjs
 */
import fs from "fs";
import path from "path";
import { fileURLToPath } from "url";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const dadosDir = path.join(__dirname, "..", "dados");

function selectPreferredFiles(files) {
  const skip = new Set();
  if (files.includes("Nubank_2026-03-07.ofx") && files.includes("Nubank_2026-03-07 (1) pessoal.ofx")) {
    skip.add("Nubank_2026-03-07.ofx");
  }
  if (files.includes("Nubank_2026-04-07.ofx") && files.includes("Nubank_2026-04-07 (1) pessoal.ofx")) {
    skip.add("Nubank_2026-04-07.ofx");
  }
  return files.filter((f) => !skip.has(f));
}

function parseDtPosted(raw) {
  if (!raw) return null;
  const m = String(raw).match(/^(\d{4})(\d{2})(\d{2})/);
  if (!m) return null;
  return `${m[1]}-${m[2]}-${m[3]}`;
}

function getTag(block, tag) {
  const re = new RegExp(`<${tag}>([^<\\n]*)`, "i");
  const mm = block.match(re);
  return mm ? mm[1].trim() : "";
}

function parseStmtRange(content) {
  const start = parseDtPosted(
    (content.match(/<BANKTRANLIST>\s*<DTSTART>([^<]+)/i) || [])[1] ||
      (content.match(/<DTSTART>([^<]+)/i) || [])[1],
  );
  const end = parseDtPosted(
    (content.match(/<BANKTRANLIST>[\s\S]*?<DTEND>([^<]+)/i) || [])[1] ||
      (content.match(/<DTEND>([^<]+)/i) || [])[1],
  );
  return { start, end };
}

function parseTransactions(content) {
  const list = [];
  const re = /<STMTTRN>([\s\S]*?)<\/STMTTRN>/gi;
  let m;
  while ((m = re.exec(content))) {
    const b = m[1];
    list.push({
      trntype: getTag(b, "TRNTYPE"),
      dtposted: parseDtPosted(getTag(b, "DTPOSTED")),
      trnamt: parseFloat(getTag(b, "TRNAMT") || "0", 10),
      fitid: getTag(b, "FITID"),
      memo: getTag(b, "MEMO"),
    });
  }
  return list;
}

function fileKind(content) {
  if (content.includes("<CREDITCARDMSGSRSV1>")) return "credit_card";
  if (content.includes("<BANKMSGSRSV1>") && content.includes("CHECKING")) return "checking";
  return "unknown";
}

function main() {
  if (!fs.existsSync(dadosDir)) {
    console.error(JSON.stringify({ error: "missing_dados_dir", dadosDir }));
    process.exit(1);
  }
  const files = selectPreferredFiles(
    fs.readdirSync(dadosDir).filter((f) => f.toLowerCase().endsWith(".ofx")),
  );
  const bundle = [];
  for (const name of files) {
    const full = path.join(dadosDir, name);
    const content = fs.readFileSync(full, "utf8");
    const kind = fileKind(content);
    const range = parseStmtRange(content);
    bundle.push({
      file: name,
      kind,
      range,
      transactions: parseTransactions(content),
    });
  }
  console.log(JSON.stringify(bundle, null, 2));
}

main();
