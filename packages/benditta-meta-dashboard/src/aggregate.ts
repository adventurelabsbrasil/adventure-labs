import { parseISO, isWithinInterval, startOfDay, endOfDay } from "date-fns";
import type {
  BendittaFiltersState,
  CampaignCpl,
  DaySeriesPoint,
  MetaReportRow,
  TotalsAgg,
} from "./types";

function inDateRange(row: MetaReportRow, from: string, to: string): boolean {
  if (!from.trim() || !to.trim()) return true;
  try {
    const d = parseISO(row.dia + "T12:00:00");
    const start = startOfDay(parseISO(from + "T12:00:00"));
    const end = endOfDay(parseISO(to + "T12:00:00"));
    return isWithinInterval(d, { start, end });
  } catch {
    return false;
  }
}

export function applyFilters(
  rows: MetaReportRow[],
  f: BendittaFiltersState,
): MetaReportRow[] {
  return rows.filter((r) => {
    if (!inDateRange(r, f.dateFrom, f.dateTo)) return false;
    if (f.campanha && f.campanha !== "__all__" && r.nomeConjunto !== f.campanha)
      return false;
    if (f.objetivo && f.objetivo !== "__all__" && r.objetivo !== f.objetivo)
      return false;
    if (f.anuncio && f.anuncio !== "__all__" && r.nomeAnuncio !== f.anuncio)
      return false;
    if (f.idade && f.idade !== "__all__" && r.idade !== f.idade) return false;
    if (f.genero && f.genero !== "__all__" && r.genero !== f.genero)
      return false;
    return true;
  });
}

export function computeTotals(filtered: MetaReportRow[]): TotalsAgg {
  let spend = 0;
  let leads = 0;
  let clicks = 0;
  let impressions = 0;
  let reach = 0;
  const creatives = new Set<string>();
  const campaigns = new Set<string>();

  for (const r of filtered) {
    spend += r.valorUsado;
    leads += r.resultados;
    clicks += r.cliques;
    impressions += r.impressoes;
    reach += r.alcance;
    if (r.nomeAnuncio) creatives.add(r.nomeAnuncio);
    if (r.nomeConjunto) campaigns.add(r.nomeConjunto);
  }

  const cpc = clicks > 0 ? spend / clicks : null;
  const cpm = impressions > 0 ? (spend / impressions) * 1000 : null;
  const ctr = impressions > 0 ? (clicks / impressions) * 100 : null;
  const cpl = leads > 0 ? spend / leads : null;

  return {
    spend,
    leads,
    clicks,
    impressions,
    reach,
    cpl,
    cpc,
    cpm,
    ctr,
    creativeCount: creatives.size,
    campaignCount: campaigns.size,
  };
}

export function seriesByDay(filtered: MetaReportRow[]): DaySeriesPoint[] {
  const byDay = new Map<string, MetaReportRow[]>();
  for (const r of filtered) {
    const list = byDay.get(r.dia) ?? [];
    list.push(r);
    byDay.set(r.dia, list);
  }
  const dias = Array.from(byDay.keys()).sort();
  return dias.map((dia) => {
    const dayRows = byDay.get(dia) ?? [];
    let spend = 0;
    let leads = 0;
    let clicks = 0;
    let impressions = 0;
    for (const r of dayRows) {
      spend += r.valorUsado;
      leads += r.resultados;
      clicks += r.cliques;
      impressions += r.impressoes;
    }
    const cpc = clicks > 0 ? spend / clicks : null;
    const cpm = impressions > 0 ? (spend / impressions) * 1000 : null;
    const cpl = leads > 0 ? spend / leads : null;
    return {
      dia,
      impressoes: impressions,
      cliques: clicks,
      spend,
      leads,
      cpc,
      cpm,
      cpl,
    };
  });
}

export function campaignCplRanking(filtered: MetaReportRow[]): CampaignCpl[] {
  const byCamp = new Map<string, MetaReportRow[]>();
  for (const r of filtered) {
    if (!r.nomeConjunto) continue;
    const list = byCamp.get(r.nomeConjunto) ?? [];
    list.push(r);
    byCamp.set(r.nomeConjunto, list);
  }
  const out: CampaignCpl[] = [];
  for (const [nome, list] of Array.from(byCamp.entries())) {
    let spend = 0;
    let leads = 0;
    for (const r of list) {
      spend += r.valorUsado;
      leads += r.resultados;
    }
    out.push({
      nome,
      spend,
      leads,
      cpl: leads > 0 ? spend / leads : null,
    });
  }
  return out;
}

const AGE_ORDER = [
  "18-24",
  "25-34",
  "35-44",
  "45-54",
  "55-64",
  "65+",
  "—",
  "unknown",
];

export function ageOrder(a: string, b: string): number {
  const ia = AGE_ORDER.indexOf(a);
  const ib = AGE_ORDER.indexOf(b);
  if (ia === -1 && ib === -1) return a.localeCompare(b);
  if (ia === -1) return 1;
  if (ib === -1) return -1;
  return ia - ib;
}

export function aggregateByAge(
  filtered: MetaReportRow[],
): { idade: string; impressoes: number; leads: number; spend: number }[] {
  const m = new Map<
    string,
    { impressoes: number; leads: number; spend: number }
  >();
  for (const r of filtered) {
    const cur = m.get(r.idade) ?? { impressoes: 0, leads: 0, spend: 0 };
    cur.impressoes += r.impressoes;
    cur.leads += r.resultados;
    cur.spend += r.valorUsado;
    m.set(r.idade, cur);
  }
  return Array.from(m.entries())
    .map(([idade, v]) => ({ idade, ...v }))
    .sort((x, y) => ageOrder(x.idade, y.idade));
}

export function aggregateByGender(
  filtered: MetaReportRow[],
): { genero: string; impressoes: number; leads: number; spend: number }[] {
  const m = new Map<
    string,
    { impressoes: number; leads: number; spend: number }
  >();
  for (const r of filtered) {
    const g = r.genero || "unknown";
    const cur = m.get(g) ?? { impressoes: 0, leads: 0, spend: 0 };
    cur.impressoes += r.impressoes;
    cur.leads += r.resultados;
    cur.spend += r.valorUsado;
    m.set(g, cur);
  }
  const label = (g: string) =>
    g === "male"
      ? "Masculino"
      : g === "female"
        ? "Feminino"
        : g === "unknown"
          ? "Desconhecido"
          : g;
  return Array.from(m.entries())
    .map(([genero, v]) => ({ genero: label(genero), key: genero, ...v }))
    .sort((a, b) => a.genero.localeCompare(b.genero));
}

export type FunnelStep = {
  name: string;
  value: number;
  fill: string;
  muted?: boolean;
};

export function buildFunnelData(t: TotalsAgg): FunnelStep[] {
  const max = Math.max(t.impressions, 1);
  const scale = 100 / max;
  return [
    {
      name: "Impressões",
      value: Math.round(t.impressions * scale),
      fill: "#b8956a",
    },
    {
      name: "Cliques",
      value: Math.round(t.clicks * scale),
      fill: "#8b7355",
    },
    {
      name: "Leads",
      value: Math.round(t.leads * scale),
      fill: "#6b8f7a",
    },
    {
      name: "Oportunidades",
      value: 0,
      fill: "#4a4a4a",
      muted: true,
    },
    {
      name: "Venda",
      value: 0,
      fill: "#3a3a3a",
      muted: true,
    },
  ];
}

export function pickWinningCampaign(ranked: CampaignCpl[]): CampaignCpl | null {
  const eligible = ranked.filter((c) => c.leads > 0 && c.cpl != null);
  if (eligible.length === 0) return null;
  eligible.sort((a, b) => {
    const ca = a.cpl ?? Infinity;
    const cb = b.cpl ?? Infinity;
    if (ca !== cb) return ca - cb;
    return b.leads - a.leads;
  });
  return eligible[0] ?? null;
}

export type BottleneckInsight = { title: string; detail: string };

export function computeBottlenecks(t: TotalsAgg): BottleneckInsight[] {
  const insights: BottleneckInsight[] = [];
  const ctr = t.ctr ?? 0;
  const leadRate = t.clicks > 0 ? (t.leads / t.clicks) * 100 : 0;
  const cpl = t.cpl;

  if (t.impressions > 0 && ctr < 0.5) {
    insights.push({
      title: "Topo do funil (CTR baixo)",
      detail: `CTR em ${ctr.toFixed(2)}% — poucos cliques por impressão; revisar criativo, oferta ou público.`,
    });
  }
  if (t.clicks > 0 && leadRate < 5) {
    insights.push({
      title: "Meio do funil (clique → lead)",
      detail: `Apenas ${leadRate.toFixed(1)}% dos cliques viraram lead — landing, formulário ou mensagem podem estar travando conversão.`,
    });
  }
  if (t.leads > 0 && cpl != null && cpl > 50) {
    insights.push({
      title: "Custo por lead elevado",
      detail: `CPL médio de R$ ${cpl.toFixed(2)} — testar novos criativos, públicos ou otimização de campanha de leads.`,
    });
  }
  if (insights.length === 0) {
    insights.push({
      title: "Funil equilibrado no período",
      detail:
        "Nenhum gargalo extremo detectado com os limiares heurísticos; ajuste filtros ou compare com outro período.",
    });
  }
  return insights.slice(0, 3);
}

export function uniqueCampaigns(rows: MetaReportRow[]): string[] {
  const s = new Set<string>();
  for (const r of rows) {
    if (r.nomeConjunto) s.add(r.nomeConjunto);
  }
  return Array.from(s).sort();
}

export function uniqueObjectives(rows: MetaReportRow[]): string[] {
  const s = new Set<string>();
  for (const r of rows) {
    if (r.objetivo) s.add(r.objetivo);
  }
  return Array.from(s).sort();
}

export function uniqueAds(rows: MetaReportRow[]): string[] {
  const s = new Set<string>();
  for (const r of rows) {
    if (r.nomeAnuncio) s.add(r.nomeAnuncio);
  }
  return Array.from(s).sort();
}

export function uniqueAges(rows: MetaReportRow[]): string[] {
  const s = new Set<string>();
  for (const r of rows) {
    s.add(r.idade);
  }
  return Array.from(s).sort(ageOrder);
}

export function uniqueGenders(rows: MetaReportRow[]): string[] {
  const s = new Set<string>();
  for (const r of rows) {
    s.add(r.genero || "unknown");
  }
  return Array.from(s).sort();
}

export function minMaxDates(rows: MetaReportRow[]): {
  min: string;
  max: string;
} {
  if (rows.length === 0) {
    const t = new Date().toISOString().slice(0, 10);
    return { min: t, max: t };
  }
  const sorted = Array.from(new Set(rows.map((r) => r.dia))).sort();
  return { min: sorted[0]!, max: sorted[sorted.length - 1]! };
}

export type TableGroupRow = {
  dia: string;
  nomeConjunto: string;
  nomeAnuncio: string;
  alcance: number;
  impressoes: number;
  cliques: number;
  leads: number;
  spend: number;
  frequenciaMedia: number | null;
  cpl: number | null;
  cpc: number | null;
  cpm: number | null;
  ctr: number | null;
};

export function tableRowsAggregated(filtered: MetaReportRow[]): TableGroupRow[] {
  const key = (r: MetaReportRow) =>
    `${r.dia}||${r.nomeConjunto}||${r.nomeAnuncio}`;
  const m = new Map<string, MetaReportRow[]>();
  for (const r of filtered) {
    const k = key(r);
    const list = m.get(k) ?? [];
    list.push(r);
    m.set(k, list);
  }
  const out: TableGroupRow[] = [];
  for (const list of Array.from(m.values())) {
    const first = list[0]!;
    let alcance = 0;
    let impressoes = 0;
    let cliques = 0;
    let leads = 0;
    let spend = 0;
    let freqSum = 0;
    let freqW = 0;
    for (const r of list) {
      alcance += r.alcance;
      impressoes += r.impressoes;
      cliques += r.cliques;
      leads += r.resultados;
      spend += r.valorUsado;
      if (r.impressoes > 0) {
        freqSum += r.frequencia * r.impressoes;
        freqW += r.impressoes;
      }
    }
    const ctr = impressoes > 0 ? (cliques / impressoes) * 100 : null;
    const cpc = cliques > 0 ? spend / cliques : null;
    const cpm = impressoes > 0 ? (spend / impressoes) * 1000 : null;
    const cpl = leads > 0 ? spend / leads : null;
    const frequenciaMedia = freqW > 0 ? freqSum / freqW : null;
    out.push({
      dia: first.dia,
      nomeConjunto: first.nomeConjunto,
      nomeAnuncio: first.nomeAnuncio,
      alcance,
      impressoes,
      cliques,
      leads,
      spend,
      frequenciaMedia,
      cpl,
      cpc,
      cpm,
      ctr,
    });
  }
  return out;
}
