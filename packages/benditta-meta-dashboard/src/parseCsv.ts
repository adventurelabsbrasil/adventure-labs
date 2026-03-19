import Papa from "papaparse";
import type { MetaReportRow } from "./types";

function num(v: string | undefined): number {
  if (v == null || v.trim() === "") return 0;
  const n = Number(String(v).replace(",", "."));
  return Number.isFinite(n) ? n : 0;
}

function numOrNull(v: string | undefined): number | null {
  if (v == null || v.trim() === "") return null;
  const n = Number(String(v).replace(",", "."));
  return Number.isFinite(n) ? n : null;
}

/**
 * Parseia o CSV exportado do Meta (PT-BR) para linhas tipadas.
 */
export function parseMetaReportCsv(csvText: string): MetaReportRow[] {
  const parsed = Papa.parse<Record<string, string>>(csvText, {
    header: true,
    skipEmptyLines: true,
    transformHeader: (h) => h.trim(),
  });

  if (parsed.errors.length > 0 && parsed.data.length === 0) {
    throw new Error(parsed.errors.map((e) => e.message).join("; "));
  }

  const rows: MetaReportRow[] = [];
  for (const r of parsed.data) {
    if (!r["Dia"]?.trim()) continue;
    const objetivo = (r["Objetivo"] ?? "").trim();
    /** Leads: apenas linhas de campanha de leads; ignorar resultados de alcance/outros objetivos. */
    const resultadosLeads =
      objetivo === "OUTCOME_LEADS" ? num(r["Resultados"]) : 0;

    rows.push({
      dia: (r["Dia"] ?? "").trim(),
      objetivo,
      nomeConjunto: (r["Nome do conjunto de anúncios"] ?? "").trim(),
      nomeAnuncio: (r["Nome do anúncio"] ?? "").trim(),
      idade: (r["Idade"] ?? "").trim() || "—",
      genero: (r["Gênero"] ?? "").trim() || "unknown",
      alcance: num(r["Alcance"]),
      impressoes: num(r["Impressões"]),
      frequencia: num(r["Frequência"]),
      tipoResultado: (r["Tipo de resultado"] ?? "").trim(),
      resultados: resultadosLeads,
      valorUsado: num(r["Valor usado (BRL)"]),
      custoPorResultado: numOrNull(r["Custo por resultado"]),
      cpc: numOrNull(r["CPC (custo por clique no link)"]),
      cpm: numOrNull(r["CPM (custo por 1.000 impressões)"]),
      cliques: num(r["Cliques (todos)"]),
      ctr: numOrNull(r["CTR (todos)"]),
      inicioRelatorios: (r["Início dos relatórios"] ?? "").trim(),
      terminoRelatorios: (r["Término dos relatórios"] ?? "").trim(),
    });
  }

  return rows;
}
