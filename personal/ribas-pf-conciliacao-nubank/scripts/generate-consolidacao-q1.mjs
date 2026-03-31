#!/usr/bin/env node
import fs from "fs";
import path from "path";
import { fileURLToPath } from "url";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const root = path.join(__dirname, "..");
const dadosDir = path.join(root, "dados");
const relDir = path.join(root, "relatorios");

const MONTHS = ["2026-01", "2026-02", "2026-03"];

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

function money(n) {
  return n.toLocaleString("pt-BR", { style: "currency", currency: "BRL" });
}

function categorize(memo) {
  const s = (memo || "").toLowerCase();
  if (/pagamento de fatura/i.test(memo)) return { code: "F1", label: "Pagamento fatura cartão", conf: "alta" };
  if (/mercado|padaria|restaur|ifood|rappi|delivery|lanche|burger|pizza|hortifruti|mercearia|supermerc/i.test(s))
    return { code: "D2", label: "Alimentação", conf: "media" };
  if (/uber|99|taxi|posto|combust|pedágio|estacion|concessionaria|allpark|buffon|free way|rota/i.test(s))
    return { code: "D3", label: "Transporte", conf: "media" };
  if (/farmácia|farmacia|drog|saúde|saude|hospital|clínica|clinica|dentista/i.test(s))
    return { code: "D4", label: "Saúde", conf: "media" };
  if (/youtube|google one|apple|openai|cursor|adobe|assin|software|netflix|spotify/i.test(s))
    return { code: "D7", label: "Serviços e assinaturas", conf: "baixa" };
  if (/barbeiro|cinema|diversoes|arcoplex|lazer/i.test(s))
    return { code: "D6", label: "Lazer / cuidados", conf: "baixa" };
  if (/iof|taxa/i.test(s)) return { code: "D9", label: "Impostos e taxas", conf: "media" };
  if (/transferência enviada|transferencia enviada|pix -/i.test(memo) && !/recebida/i.test(memo))
    return { code: "T1", label: "Transferência / Pix saída", conf: "baixa" };
  if (/transferência recebida|recebida pelo pix|pix recebido|pagamento recebido/i.test(memo))
    return { code: "R2", label: "Receitas / entradas diversas", conf: "baixa" };
  return { code: "T2", label: "Não classificado", conf: "pendente" };
}

function loadBundle() {
  const files = selectPreferredFiles(
    fs.readdirSync(dadosDir).filter((f) => f.toLowerCase().endsWith(".ofx")),
  );
  const out = [];
  for (const name of files) {
    const content = fs.readFileSync(path.join(dadosDir, name), "utf8");
    out.push({ name, kind: fileKind(content), tx: parseTransactions(content) });
  }
  return out;
}

function normalizeTx(bundle) {
  const rows = [];
  for (const b of bundle) {
    for (const t of b.tx) {
      const month = (t.dtposted || "").slice(0, 7);
      if (!MONTHS.includes(month)) continue;
      rows.push({
        month,
        sourceType: b.kind,
        sourceFile: b.name,
        ...t,
      });
    }
  }

  // remove exact duplicates (same date/amount/memo/fitid), keeping first source
  const seen = new Set();
  const dedup = [];
  for (const r of rows) {
    const key = `${r.dtposted}|${r.trnamt}|${r.memo}|${r.fitid}|${r.sourceType}`;
    if (seen.has(key)) continue;
    seen.add(key);
    dedup.push(r);
  }
  return dedup.sort((a, b) => `${a.dtposted}${a.fitid}`.localeCompare(`${b.dtposted}${b.fitid}`));
}

function build() {
  const bundle = loadBundle();
  const tx = normalizeTx(bundle);

  let idSeq = 1;
  for (const row of tx) {
    row.id = `L${String(idSeq).padStart(4, "0")}`;
    idSeq += 1;
    const cat = categorize(row.memo);
    row.categoryCode = cat.code;
    row.categoryLabel = cat.label;
    row.conf = cat.conf;
    row.kind = row.trnamt >= 0 ? "entrada" : "saida";
    row.status = cat.code === "T2" || cat.conf === "baixa" ? "PENDENTE_REVISAO" : "OK";
  }

  const byMonth = new Map();
  for (const m of MONTHS) byMonth.set(m, tx.filter((r) => r.month === m));

  let md = "# Consolidação Q1 2026 — PF Nubank (DRE detalhado)\n\n";
  md += "Arquivo de trabalho para classificação manual por **ID de linha**.\n\n";

  md += "## 1) DRE consolidado por mês (visão gerencial)\n\n";
  md += "| Mês | Receitas (entradas) | Saídas cartão | Saídas conta sem fatura | Pagto fatura conta | Resultado caixa conta |\n";
  md += "|-----|----------------------|---------------|--------------------------|--------------------|----------------------|\n";

  for (const m of MONTHS) {
    const rows = byMonth.get(m);
    const receitas = rows.filter((r) => r.sourceType === "checking" && r.trnamt > 0).reduce((a, r) => a + r.trnamt, 0);
    const saidaCartao = rows.filter((r) => r.sourceType === "credit_card" && r.trnamt < 0).reduce((a, r) => a + Math.abs(r.trnamt), 0);
    const pagtoFatura = rows
      .filter((r) => r.sourceType === "checking" && r.trnamt < 0 && /pagamento de fatura/i.test(r.memo || ""))
      .reduce((a, r) => a + Math.abs(r.trnamt), 0);
    const saidaContaSemFatura = rows
      .filter((r) => r.sourceType === "checking" && r.trnamt < 0 && !/pagamento de fatura/i.test(r.memo || ""))
      .reduce((a, r) => a + Math.abs(r.trnamt), 0);
    const resultadoConta = rows.filter((r) => r.sourceType === "checking").reduce((a, r) => a + r.trnamt, 0);
    md += `| ${m} | ${money(receitas)} | ${money(saidaCartao)} | ${money(saidaContaSemFatura)} | ${money(pagtoFatura)} | ${money(resultadoConta)} |\n`;
  }

  md += "\n## 2) Pendências para você responder por ID\n\n";
  md += "| ID | Mês | Data | Fonte | Valor | Memo | Categoria sugerida |\n";
  md += "|----|-----|------|-------|-------|------|--------------------|\n";
  const pend = tx.filter((r) => r.status === "PENDENTE_REVISAO");
  for (const r of pend) {
    md += `| ${r.id} | ${r.month} | ${r.dtposted} | ${r.sourceType} | ${money(r.trnamt)} | ${(r.memo || "").replace(/\|/g, "/").slice(0, 90)} | ${r.categoryCode} - ${r.categoryLabel} |\n`;
  }

  md += "\n## 3) Detalhamento completo (todas as linhas)\n\n";
  md += "| ID | Mês | Data | Tipo | Fonte | Arquivo | Valor | Cat. | Status | Memo |\n";
  md += "|----|-----|------|------|-------|---------|-------|------|--------|------|\n";
  for (const r of tx) {
    md += `| ${r.id} | ${r.month} | ${r.dtposted} | ${r.kind} | ${r.sourceType} | ${r.sourceFile} | ${money(r.trnamt)} | ${r.categoryCode} | ${r.status} | ${(r.memo || "").replace(/\|/g, "/").slice(0, 110)} |\n`;
  }

  md += "\n## 4) Como me responder\n\n";
  md += "Responda no formato: `ID -> Categoria final` (ex.: `L0042 -> D2 Alimentação`).\n";
  md += "Se quiser, pode enviar em lote por bloco de IDs.\n";

  fs.mkdirSync(relDir, { recursive: true });
  const out = path.join(relDir, "consolidacao-q1-2026-detalhada.md");
  fs.writeFileSync(out, md, "utf8");
  console.log(`Wrote ${out}`);
  console.log(`Total linhas: ${tx.length}`);
  console.log(`Pendências: ${pend.length}`);
}

if (!fs.existsSync(dadosDir)) {
  console.error("Pasta dados/ não encontrada.");
  process.exit(1);
}

build();
