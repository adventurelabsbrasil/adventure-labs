"use client";

import { useCallback, useEffect, useMemo, useState } from "react";
import type { ComponentType, ReactNode } from "react";
import { parseMetaReportCsv } from "../parseCsv";
import {
  aggregateByAge,
  aggregateByGender,
  applyFilters,
  campaignCplRanking,
  computeBottlenecks,
  computeTotals,
  minMaxDates,
  pickWinningCampaign,
  seriesByDay,
  uniqueAds,
  uniqueAges,
  uniqueCampaigns,
  uniqueGenders,
  uniqueObjectives,
} from "../aggregate";
import type { BendittaFiltersState, MetaReportRow } from "../types";
import { useMetaCsv } from "../hooks/useMetaCsv";
import { BendittaFiltersBar } from "./BendittaFiltersBar";
import { BendittaScorecards } from "./BendittaScorecards";
import {
  ChartCard,
  ClicksLineChart,
  EfficiencyLineChart,
  LeadsDonutChart,
  ImpressionsLineChart,
  LeadsCostBarChart,
} from "./BendittaCharts";
import { BendittaDemographics } from "./BendittaDemographics";
import { BendittaExecutive } from "./BendittaExecutive";
import { BendittaFunnel } from "./BendittaFunnel";
import { bendittaTheme } from "../theme";

export type BendittaDashboardProps = {
  csvUrl: string;
  /** Rota da tabela no mesmo app (ex.: /dashboard/benditta/tabela) */
  tableHref: string;
  /** Opcional: componente de navegação (ex.: `next/link`) */
  NavLinkComponent?: ComponentType<{
    href: string;
    className?: string;
    children: ReactNode;
  }>;
};

function DefaultNavLink({
  href,
  className,
  children,
}: {
  href: string;
  className?: string;
  children: ReactNode;
}) {
  return (
    <a href={href} className={className}>
      {children}
    </a>
  );
}

export function BendittaDashboard({
  csvUrl,
  tableHref,
  NavLinkComponent = DefaultNavLink,
}: BendittaDashboardProps) {
  const { rows: fetched, loading, error, reload } = useMetaCsv(csvUrl);
  const [overrideRows, setOverrideRows] = useState<MetaReportRow[] | null>(
    null,
  );
  const rows = overrideRows ?? fetched;

  const [filters, setFilters] = useState<BendittaFiltersState>({
    dateFrom: "",
    dateTo: "",
    campanha: "__all__",
    objetivo: "__all__",
    anuncio: "__all__",
    idade: "__all__",
    genero: "__all__",
  });

  useEffect(() => {
    if (rows.length === 0) return;
    const b = minMaxDates(rows);
    setFilters((f) => ({
      ...f,
      dateFrom: f.dateFrom || b.min,
      dateTo: f.dateTo || b.max,
    }));
  }, [rows]);

  const filterOptions = useMemo(
    () => ({
      campaigns: uniqueCampaigns(rows),
      objectives: uniqueObjectives(rows),
      ads: uniqueAds(rows),
      ages: uniqueAges(rows),
      genders: uniqueGenders(rows),
    }),
    [rows],
  );

  const filtered = useMemo(
    () => applyFilters(rows, filters),
    [rows, filters],
  );

  const totals = useMemo(() => computeTotals(filtered), [filtered]);
  const series = useMemo(() => seriesByDay(filtered), [filtered]);
  const byAge = useMemo(() => aggregateByAge(filtered), [filtered]);
  const byGender = useMemo(() => aggregateByGender(filtered), [filtered]);
  const campRank = useMemo(
    () => campaignCplRanking(filtered),
    [filtered],
  );
  const winner = useMemo(
    () => pickWinningCampaign(campRank),
    [campRank],
  );
  const bottlenecks = useMemo(
    () => computeBottlenecks(totals),
    [totals],
  );

  const efficiencyHighlights = useMemo(() => {
    const avg = (vals: number[]) => {
      if (vals.length === 0) return null;
      return vals.reduce((a, b) => a + b, 0) / vals.length;
    };

    const pickTone = (
      value: number | null,
      avgValue: number | null,
      dir: "lower" | "higher",
    ) => {
      if (value == null || avgValue == null) return "neutral" as const;
      if (!Number.isFinite(value) || !Number.isFinite(avgValue))
        return "neutral" as const;
      if (dir === "lower") return value <= avgValue ? ("good" as const) : ("bad" as const);
      return value >= avgValue ? ("good" as const) : ("bad" as const);
    };

    const dailyCpl = series.map((d) => d.cpl).filter((x): x is number => x != null);
    const dailyCpc = series.map((d) => d.cpc).filter((x): x is number => x != null);
    const dailyCpm = series.map((d) => d.cpm).filter((x): x is number => x != null);

    const dailyCtr = series
      .map((d) => (d.impressoes > 0 ? (d.cliques / d.impressoes) * 100 : null))
      .filter((x): x is number => x != null);

    return {
      cpl: pickTone(totals.cpl, avg(dailyCpl), "lower"),
      cpc: pickTone(totals.cpc, avg(dailyCpc), "lower"),
      cpm: pickTone(totals.cpm, avg(dailyCpm), "lower"),
      ctr: pickTone(totals.ctr, avg(dailyCtr), "higher"),
    };
  }, [series, totals]);

  const leadsDonutCampaigns = useMemo(() => {
    const m = new Map<string, number>();
    for (const r of filtered) {
      if (!r.nomeConjunto) continue;
      m.set(r.nomeConjunto, (m.get(r.nomeConjunto) ?? 0) + r.resultados);
    }
    const items = Array.from(m.entries()).map(([name, value]) => ({ name, value }));
    items.sort((a, b) => b.value - a.value);
    const top = items.slice(0, 6);
    const rest = items.slice(6);
    const otherValue = rest.reduce((acc, it) => acc + it.value, 0);
    if (otherValue > 0) top.push({ name: "Outros", value: otherValue });
    return top;
  }, [filtered]);

  const leadsDonutAds = useMemo(() => {
    const m = new Map<string, number>();
    for (const r of filtered) {
      if (!r.nomeAnuncio) continue;
      m.set(r.nomeAnuncio, (m.get(r.nomeAnuncio) ?? 0) + r.resultados);
    }
    const items = Array.from(m.entries()).map(([name, value]) => ({ name, value }));
    items.sort((a, b) => b.value - a.value);
    const top = items.slice(0, 6);
    const rest = items.slice(6);
    const otherValue = rest.reduce((acc, it) => acc + it.value, 0);
    if (otherValue > 0) top.push({ name: "Outros", value: otherValue });
    return top;
  }, [filtered]);

  const onFile = useCallback(
    (file: File | null) => {
      if (!file) return;
      const reader = new FileReader();
      reader.onload = () => {
        const text = String(reader.result ?? "");
        try {
          const parsed = parseMetaReportCsv(text);
          setOverrideRows(parsed);
        } catch {
          setOverrideRows([]);
        }
      };
      reader.readAsText(file);
    },
    [],
  );

  return (
    <div
      className="min-h-0 space-y-6"
      style={{ backgroundColor: bendittaTheme.bg }}
    >
      <div className="flex flex-col gap-3 sm:flex-row sm:items-center sm:justify-between">
        <div className="flex items-start gap-4">
          <div>
            <h1 className="text-2xl font-semibold tracking-tight text-[hsl(40_20%_96%)]">
              Benditta — performance Meta
            </h1>
            <p className="text-sm text-[hsl(35_8%_58%)]">
              Acompanhe gasto, leads, cliques, impressões e eficiência das campanhas no período.
            </p>
          </div>
          <img
            src="/benditta/logo.png"
            alt="Benditta Marcenaria"
            className="h-10 w-auto opacity-95 sm:h-12"
          />
        </div>
        <div className="flex flex-wrap items-center gap-3">
          <label className="cursor-pointer rounded-lg border border-[hsl(30_8%_22%)] bg-[hsl(30_10%_9%)] px-3 py-2 text-xs font-medium text-[hsl(40_20%_92%)] hover:bg-[hsl(30_10%_14%)]">
            Importar arquivo
            <input
              type="file"
              accept=".csv,text/csv"
              className="hidden"
              onChange={(e) => onFile(e.target.files?.[0] ?? null)}
            />
          </label>
          <button
            type="button"
            onClick={() => {
              setOverrideRows(null);
              void reload();
            }}
            className="rounded-lg border border-[hsl(30_8%_22%)] px-3 py-2 text-xs font-medium text-[hsl(40_20%_92%)] hover:bg-[hsl(30_10%_14%)]"
          >
            Recarregar padrão
          </button>
          <NavLinkComponent
            href={tableHref}
            className="text-sm font-medium text-[hsl(32_42%_55%)] hover:underline"
          >
            Ver tabela dinâmica →
          </NavLinkComponent>
        </div>
      </div>

      {loading ? (
        <p className="text-sm text-[hsl(35_8%_58%)]">Carregando dados…</p>
      ) : null}
      {error ? (
        <p className="text-sm text-red-400">Erro: {error}</p>
      ) : null}

      <BendittaFiltersBar
        filters={filters}
        onChange={setFilters}
        campaigns={filterOptions.campaigns}
        objectives={filterOptions.objectives}
        ads={filterOptions.ads}
        ages={filterOptions.ages}
        genders={filterOptions.genders}
      />

      <BendittaScorecards t={totals} efficiency={efficiencyHighlights} />

      <BendittaExecutive winner={winner} bottlenecks={bottlenecks} />

      <div className="grid gap-4 lg:grid-cols-2">
        <ChartCard title="Impressões ao longo do tempo">
          <ImpressionsLineChart data={series} />
        </ChartCard>
        <ChartCard title="Cliques ao longo do tempo">
          <ClicksLineChart data={series} />
        </ChartCard>
        <ChartCard
          title="Leads × CPL"
          description="Por dia — barras: leads; linha: CPL (R$)"
          className="lg:col-span-2"
        >
          <LeadsCostBarChart data={series} />
        </ChartCard>
        <ChartCard
          title="CPC, CPM e CPL"
          description="Valores diários (linhas podem omitir dias sem dado)"
          className="lg:col-span-2"
        >
          <EfficiencyLineChart data={series} />
        </ChartCard>
      </div>

      <BendittaDemographics byAge={byAge} byGender={byGender} />

      <div className="grid gap-4 lg:grid-cols-2">
        <ChartCard
          title="Leads por campanhas"
          description="Top 6 + Outros (período filtrado)"
        >
          <LeadsDonutChart data={leadsDonutCampaigns} />
        </ChartCard>
        <ChartCard
          title="Leads por anúncios"
          description="Top 6 + Outros (período filtrado)"
        >
          <LeadsDonutChart data={leadsDonutAds} />
        </ChartCard>
      </div>

      <BendittaFunnel t={totals} />
    </div>
  );
}
