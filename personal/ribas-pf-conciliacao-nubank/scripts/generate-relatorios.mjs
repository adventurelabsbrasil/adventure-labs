#!/usr/bin/env node
/**
 * Gera relatorios/relatorio-mensal-YYYY-MM.md a partir de ../dados/*.ofx
 * Uso: node scripts/generate-relatorios.mjs
 */
import fs from "fs";
import path from "path";
import { fileURLToPath } from "url";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const root = path.join(__dirname, "..");
const dadosDir = path.join(root, "dados");
const relDir = path.join(root, "relatorios");

function selectPreferredFiles(files) {
  const skip = new Set();
  // Março: duplicado exato; manter versão "(1) pessoal".
  if (files.includes("Nubank_2026-03-07.ofx") && files.includes("Nubank_2026-03-07 (1) pessoal.ofx")) {
    skip.add("Nubank_2026-03-07.ofx");
  }
  // Abril: "(1) pessoal" é mais completo; manter essa versão.
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

function ym(d) {
  if (!d || d.length < 7) return null;
  return d.slice(0, 7);
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

function parseStmtRange(content) {
  const dtStart = (content.match(/<BANKTRANLIST>\s*<DTSTART>([^<]+)/i) || [])[1];
  const dtEnd = (content.match(/<BANKTRANLIST>[\s\S]*?<DTEND>([^<]+)/i) || [])[1];
  return {
    start: parseDtPosted(dtStart),
    end: parseDtPosted(dtEnd),
  };
}

function money(n) {
  return n.toLocaleString("pt-BR", { style: "currency", currency: "BRL" });
}

function categorize(memo) {
  const s = (memo || "").toLowerCase();
  if (/pagamento de fatura/i.test(memo)) return { code: "F1", label: "Pagamento fatura cartão", conf: "alta" };
  if (/mercado|padaria|restaur|ifood|rappi|zé delivery|lanche|burger|pizza|aliment/i.test(s))
    return { code: "D2", label: "Alimentação", conf: "media" };
  if (/uber|99|taxi|posto|combust|pedágio|estacion|concessionaria/i.test(s))
    return { code: "D3", label: "Transporte", conf: "media" };
  if (/farmácia|farmacia|drog|saúde|saude|hospital|clínica|clinica|dentista/i.test(s))
    return { code: "D4", label: "Saúde", conf: "media" };
  if (/netflix|spotify|amazon prime|assin|software|cursor|openai|github/i.test(s))
    return { code: "D7", label: "Serviços e assinaturas", conf: "baixa" };
  if (/barbeiro|salão|sala o|beauty|lazer|cinema/i.test(s)) return { code: "D6", label: "Lazer / cuidados", conf: "baixa" };
  if (/transferência enviada|transferencia enviada|pix -/i.test(memo) && !/recebida/i.test(memo))
    return { code: "T1", label: "Transferência / Pix saída", conf: "baixa" };
  if (/transferência recebida|recebida pelo pix|pix recebido/i.test(memo))
    return { code: "R2", label: "Receitas / entradas diversas", conf: "baixa" };
  if (/compra no débito/i.test(memo)) return { code: "D2", label: "Alimentação / débito (revisar)", conf: "baixa" };
  return { code: "T2", label: "Não classificado", conf: "pendente" };
}

function loadBundle() {
  const files = selectPreferredFiles(
    fs.readdirSync(dadosDir).filter((f) => f.toLowerCase().endsWith(".ofx")),
  );
  const bundle = [];
  for (const name of files) {
    const content = fs.readFileSync(path.join(dadosDir, name), "utf8");
    bundle.push({
      name,
      kind: fileKind(content),
      range: parseStmtRange(content),
      tx: parseTransactions(content),
    });
  }
  return bundle;
}

const MONTH_TOKEN = {
  JAN: "01",
  FEV: "02",
  MAR: "03",
  APR: "04",
  MAI: "05",
  JUN: "06",
  JUL: "07",
  AGO: "08",
  SET: "09",
  OUT: "10",
  NOV: "11",
  DEZ: "12",
};

function checkingForMonth(bundle, month) {
  const byName = bundle.filter((b) => b.kind === "checking" && b.name.startsWith("NU_"));
  for (const b of byName) {
    const m = b.name.match(/(\d{2})([A-Z]{3})(\d{4})/i);
    if (m) {
      const mm = `${m[3]}-${MONTH_TOKEN[m[2].toUpperCase()] || "??"}`;
      if (mm === month) return b;
    }
  }
  return null;
}

function cardTxInCalendarMonth(bundle, month) {
  const out = [];
  for (const b of bundle) {
    if (b.kind !== "credit_card") continue;
    for (const t of b.tx) {
      if (t.dtposted && t.dtposted.startsWith(month)) out.push({ ...t, sourceFile: b.name });
    }
  }
  return out;
}

function faturaPayments(checkingTx) {
  return checkingTx.filter((t) => /pagamento de fatura/i.test(t.memo || ""));
}

function statementTotals(bundle) {
  const rows = [];
  for (const b of bundle) {
    if (b.kind !== "credit_card") continue;
    const debits = b.tx.filter((t) => t.trnamt < 0);
    const total = debits.reduce((a, t) => a + t.trnamt, 0);
    rows.push({
      file: b.name,
      range: b.range,
      statementTotal: total,
      absTotal: Math.abs(total),
      lineCount: debits.length,
    });
  }
  return rows;
}

function aggregateByCategory(rows) {
  const map = new Map();
  for (const t of rows) {
    const { code, label } = categorize(t.memo);
    const key = `${code}|${label}`;
    if (!map.has(key)) map.set(key, { code, label, sum: 0, n: 0 });
    const e = map.get(key);
    e.sum += t.trnamt;
    e.n += 1;
  }
  return [...map.values()].sort((a, b) => a.code.localeCompare(b.code));
}

function buildReport(month, bundle) {
  const chk = checkingForMonth(bundle, month);
  const checkingTx = chk ? chk.tx : [];
  const payments = faturaPayments(checkingTx);
  const stmts = statementTotals(bundle);
  const cardMonth = cardTxInCalendarMonth(bundle, month);
  const catCard = aggregateByCategory(cardMonth);
  const catChecking = aggregateByCategory(
    checkingTx.filter((t) => !/pagamento de fatura/i.test(t.memo || "")),
  );

  const receitas = checkingTx.filter((t) => t.trnamt > 0).reduce((a, t) => a + t.trnamt, 0);
  const despesasContaSemFatura = checkingTx
    .filter((t) => t.trnamt < 0 && !/pagamento de fatura/i.test(t.memo || ""))
    .reduce((a, t) => a + t.trnamt, 0);
  const gastoCartaoMes = cardMonth.reduce((a, t) => a + (t.trnamt < 0 ? t.trnamt : 0), 0);
  const pagamentosFatura = payments.reduce((a, t) => a + t.trnamt, 0);

  let matchSection = "";
  for (const p of payments) {
    const alvo = Math.abs(p.trnamt);
    const hit = stmts.find((s) => Math.abs(s.absTotal - alvo) < 0.03);
    matchSection += `| ${p.dtposted} | ${money(p.trnamt)} | Pagamento de fatura | ${hit ? hit.file : "(nenhuma fatura com total exato)"} | ${hit ? "OK (total)" : "revisar"} |\n`;
  }
  if (!payments.length) matchSection = "| — | — | Nenhum pagamento de fatura no extrato da conta neste mês | — | — |\n";

  let catLines = "";
  for (const c of catCard) {
    catLines += `| ${c.label} (${c.code}) | ${money(Math.abs(c.sum))} | — |\n`;
  }
  if (!catLines) catLines = "| — | — | — |\n";

  const pendencias = [];
  for (const t of cardMonth) {
    const c = categorize(t.memo);
    if (c.conf === "pendente" || c.conf === "baixa")
      pendencias.push({ t, c });
  }
  for (const t of checkingTx) {
    if (/pagamento de fatura/i.test(t.memo || "")) continue;
    const c = categorize(t.memo);
    if (c.code === "T2" || (c.conf === "baixa" && Math.abs(t.trnamt) > 200))
      pendencias.push({ t, c });
  }

  let pendTable = "";
  let i = 1;
  for (const { t, c } of pendencias.slice(0, 40)) {
    pendTable += `| ${i} | ${t.dtposted || "—"} | ${money(t.trnamt)} | ${(t.memo || "").slice(0, 80)} | Confirmar categoria (hoje: ${c.label}) |\n`;
    i++;
  }
  if (!pendTable) pendTable = "| — | — | — | — | Nenhuma pendência automática |\n";

  const resultadoCorreto = checkingTx.reduce((a, t) => a + t.trnamt, 0);

  const md = `# Relatório mensal — ${month} (PF Nubank)

**Gerado por:** \`scripts/generate-relatorios.mjs\` (rascunho; validar pendências).  
**Conta corrente (arquivo):** ${chk ? chk.name : "— (coloque NU_* do mês em dados/)"}  
**Plano de contas:** \`templates/plano-de-contas-familiar.md\`

## 1. Resumo executivo

- Lançamentos na conta no mês: ${checkingTx.length}
- Compras no cartão (competência \`DTPOSTED\` em ${month}): ${cardMonth.length}
- Pagamentos de fatura na conta: ${payments.length}
- Fluxo líquido na conta (soma de todos os lançamentos do extrato mensal): ${money(resultadoCorreto)}

## 2. Cruzamento conta corrente × fatura (totais por arquivo de cartão)

| Arquivo fatura | Período OFX (DTSTART–DTEND) | Total compras (soma débitos) |
|----------------|----------------------------|------------------------------|
${stmts.map((s) => `| ${s.file} | ${s.range.start || "?"} → ${s.range.end || "?"} | ${money(s.absTotal)} (${s.lineCount} linhas) |`).join("\n")}

### Pagamentos de fatura neste mês de conta

| Data conta | Valor | Descrição | Fatura (arquivo) com total próximo | Batida |
|------------|-------|-----------|-----------------------------------|--------|
${matchSection}

## 3. Custos por categoria (cartão — competência ${month})

> Heurística por MEMO; revisar pendências abaixo.

| Categoria (código) | Total | Observação |
|--------------------|-------|------------|
${catLines}

## 4. Movimentos na conta (exceto pagamento de fatura) — agregado

| Categoria (código) | Total | N |
|--------------------|-------|---|
${catChecking.map((c) => `| ${c.label} (${c.code}) | ${money(Math.abs(c.sum))} | ${c.n} |`).join("\n") || "| — | — | — |"}

## 5. DRE familiar simplificado (${month}) — orientativo

| Linha | Valor |
|-------|-------|
| Receitas (entradas na conta no mês) | ${money(receitas)} |
| Gastos no cartão (compras com DTPOSTED no mês) | ${money(Math.abs(gastoCartaoMes))} |
| Outras saídas na conta (sem pagamento de fatura) | ${money(Math.abs(despesasContaSemFatura))} |
| Pagamentos de fatura (caixa) | ${money(Math.abs(pagamentosFatura))} |
| **Saldo líquido movimentação conta (extrato)** | **${money(resultadoCorreto)}** |

*Evite dupla contagem no orçamento:* compras no crédito já entram na linha do cartão; o **pagamento** da fatura é apenas caixa, não repete o consumo.

## 6. Pendências / dúvidas para o Founder

| # | Data | Valor | Memo (trecho) | Pergunta |
|---|------|-------|---------------|----------|
${pendTable}

---
Atualize categorias após respostas e regenere se necessário.
`;
  return md;
}

function main() {
  if (!fs.existsSync(dadosDir)) {
    fs.mkdirSync(dadosDir, { recursive: true });
    console.error("Crie personal/ribas-pf-conciliacao-nubank/dados/ e copie os OFX.");
    process.exit(1);
  }
  fs.mkdirSync(relDir, { recursive: true });
  const bundle = loadBundle();
  if (!bundle.length) {
    console.error("Nenhum .ofx em dados/");
    process.exit(1);
  }
  const months = new Set();
  for (const b of bundle) {
    if (b.kind === "checking" && b.name.startsWith("NU_")) {
      const m = b.name.match(/(\d{2})([A-Z]{3})(\d{4})/i);
      if (m) months.add(`${m[3]}-${MONTH_TOKEN[m[2].toUpperCase()]}`);
    }
  }
  for (const b of bundle) {
    for (const t of b.tx) {
      const y = ym(t.dtposted);
      if (y && y.startsWith("2026")) months.add(y);
    }
  }
  const sorted = [...months].filter(Boolean).sort();
  for (const month of sorted) {
    if (!/^\d{4}-\d{2}$/.test(month)) continue;
    const md = buildReport(month, bundle);
    const out = path.join(relDir, `relatorio-mensal-${month}.md`);
    fs.writeFileSync(out, md, "utf8");
    console.log("Wrote", out);
  }
}

main();
