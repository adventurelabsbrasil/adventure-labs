"use client";

import { useCallback, useEffect, useMemo, useState } from "react";
import type { ComponentType, ReactNode } from "react";
import { parseMetaReportCsv } from "../parseCsv";
import {
  applyFilters,
  computeTotals,
  minMaxDates,
  tableRowsAggregated,
  type TableGroupRow,
  uniqueAds,
  uniqueAges,
  uniqueCampaigns,
  uniqueGenders,
  uniqueObjectives,
} from "../aggregate";
import type { BendittaFiltersState, MetaReportRow } from "../types";
import { useMetaCsv } from "../hooks/useMetaCsv";
import { BendittaFiltersBar } from "./BendittaFiltersBar";
import { bendittaTheme } from "../theme";

export type BendittaTablePageProps = {
  csvUrl: string;
  dashboardHref: string;
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

type SortKey = keyof TableGroupRow;
type SortDir = "asc" | "desc";

function money(n: number) {
  return n.toLocaleString("pt-BR", { style: "currency", currency: "BRL" });
}

function pct(n: number | null) {
  if (n == null) return "—";
  return `${n.toFixed(2)}%`;
}

export function BendittaTablePage({
  csvUrl,
  dashboardHref,
  NavLinkComponent = DefaultNavLink,
}: BendittaTablePageProps) {
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

  const flatRows = useMemo(
    () => tableRowsAggregated(filtered),
    [filtered],
  );

  const totals = useMemo(() => computeTotals(filtered), [filtered]);

  const frequencyAvg = useMemo(() => {
    let freqSum = 0;
    let w = 0;
    for (const r of filtered) {
      if (r.impressoes > 0 && Number.isFinite(r.frequencia)) {
        freqSum += r.frequencia * r.impressoes;
        w += r.impressoes;
      }
    }
    return w > 0 ? freqSum / w : null;
  }, [filtered]);

  const [sortKey, setSortKey] = useState<SortKey>("dia");
  const [sortDir, setSortDir] = useState<SortDir>("desc");

  const sortedRows = useMemo(() => {
    const copy = [...flatRows];
    const mult = sortDir === "asc" ? 1 : -1;
    copy.sort((a, b) => {
      const va = a[sortKey];
      const vb = b[sortKey];
      if (va == null && vb == null) return 0;
      if (va == null) return 1;
      if (vb == null) return -1;
      if (typeof va === "string" && typeof vb === "string") {
        return va.localeCompare(vb, "pt-BR") * mult;
      }
      if (typeof va === "number" && typeof vb === "number") {
        return (va - vb) * mult;
      }
      return String(va).localeCompare(String(vb)) * mult;
    });
    return copy;
  }, [flatRows, sortKey, sortDir]);

  const byDay = useMemo(() => {
    const m = new Map<string, TableGroupRow[]>();
    for (const r of sortedRows) {
      const list = m.get(r.dia) ?? [];
      list.push(r);
      m.set(r.dia, list);
    }
    const dias = Array.from(m.keys()).sort((a, b) => b.localeCompare(a));
    return dias.map((dia) => ({ dia, rows: m.get(dia) ?? [] }));
  }, [sortedRows]);

  const [expanded, setExpanded] = useState<Record<string, boolean>>({});
  const [allOpen, setAllOpen] = useState(true);

  useEffect(() => {
    const next: Record<string, boolean> = {};
    for (const g of byDay) {
      next[g.dia] = allOpen;
    }
    setExpanded(next);
  }, [byDay, allOpen]);

  const toggleDay = useCallback((dia: string) => {
    setExpanded((e) => ({ ...e, [dia]: !e[dia] }));
  }, []);

  const onSort = useCallback((key: SortKey) => {
    setSortKey((prev) => {
      if (prev === key) {
        setSortDir((d) => (d === "asc" ? "desc" : "asc"));
        return prev;
      }
      setSortDir("desc");
      return key;
    });
  }, []);

  const onFile = useCallback((file: File | null) => {
    if (!file) return;
    const reader = new FileReader();
    reader.onload = () => {
      const text = String(reader.result ?? "");
      try {
        setOverrideRows(parseMetaReportCsv(text));
      } catch {
        setOverrideRows([]);
      }
    };
    reader.readAsText(file);
  }, []);

  const th =
    "cursor-pointer select-none px-1 sm:px-2 py-2 text-left text-[9px] sm:text-[10px] font-semibold uppercase tracking-wider text-[hsl(35_8%_58%)] hover:text-[hsl(40_20%_92%)]";
  const td = "px-1 sm:px-2 py-2 text-[10px] sm:text-xs text-[hsl(40_20%_92%)]";

  return (
    <div className="space-y-6" style={{ backgroundColor: bendittaTheme.bg }}>
      <div className="flex flex-col gap-3 sm:flex-row sm:items-center sm:justify-between">
        <div className="flex items-start gap-4">
          <div>
            <h1 className="text-2xl font-semibold tracking-tight text-[hsl(40_20%_96%)]">
              Benditta — visão detalhada
            </h1>
            <p className="text-sm text-[hsl(35_8%_58%)]">
              Filtre por período e campanha e veja os números por conjunto e anúncio.
            </p>
          </div>
          <img
            src="/benditta/logo.png"
            alt="Benditta Marcenaria"
            className="h-9 w-auto opacity-95 sm:h-11"
          />
        </div>
        <div className="flex flex-wrap items-center gap-3">
          <label className="cursor-pointer rounded-lg border border-[hsl(30_8%_22%)] bg-[hsl(30_10%_9%)] px-3 py-2 text-xs font-medium text-[hsl(40_20%_92%)]">
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
            className="rounded-lg border border-[hsl(30_8%_22%)] px-3 py-2 text-xs text-[hsl(40_20%_92%)]"
          >
            Recarregar padrão
          </button>
          <NavLinkComponent
            href={dashboardHref}
            className="text-sm font-medium text-[hsl(32_42%_55%)] hover:underline"
          >
            ← Voltar ao dashboard
          </NavLinkComponent>
        </div>
      </div>

      {loading ? (
        <p className="text-sm text-[hsl(35_8%_58%)]">Carregando…</p>
      ) : null}
      {error ? <p className="text-sm text-red-400">{error}</p> : null}

      <BendittaFiltersBar
        filters={filters}
        onChange={setFilters}
        campaigns={filterOptions.campaigns}
        objectives={filterOptions.objectives}
        ads={filterOptions.ads}
        ages={filterOptions.ages}
        genders={filterOptions.genders}
      />

      <div className="grid gap-4 lg:grid-cols-5">
        <div className="lg:col-span-3 rounded-xl border border-[hsl(30_8%_20%)] bg-[hsl(30_10%_11%)]/95 p-4">
          <p className="text-sm font-semibold text-[hsl(40_20%_96%)]">
            Totalizador do período
          </p>
          <p className="mt-1 text-xs text-[hsl(35_8%_58%)]">
            {filters.dateFrom} até {filters.dateTo} · {sortedRows.length} linha(s) agregadas
          </p>
          <div className="mt-3 grid grid-cols-2 gap-2">
            <div className="text-xs text-[hsl(35_8%_58%)]">Gasto</div>
            <div className="text-right text-xs font-semibold text-[hsl(40_20%_92%)]">{money(totals.spend)}</div>
            <div className="text-xs text-[hsl(35_8%_58%)]">Leads</div>
            <div className="text-right text-xs font-semibold text-[hsl(40_20%_92%)]">{totals.leads.toLocaleString("pt-BR")}</div>
            <div className="text-xs text-[hsl(35_8%_58%)]">CPL</div>
            <div className="text-right text-xs font-semibold text-[hsl(40_20%_92%)]">{totals.cpl != null ? money(totals.cpl) : "—"}</div>
            <div className="text-xs text-[hsl(35_8%_58%)]">CPC</div>
            <div className="text-right text-xs font-semibold text-[hsl(40_20%_92%)]">{totals.cpc != null ? money(totals.cpc) : "—"}</div>
            <div className="text-xs text-[hsl(35_8%_58%)]">CPM</div>
            <div className="text-right text-xs font-semibold text-[hsl(40_20%_92%)]">{totals.cpm != null ? money(totals.cpm) : "—"}</div>
            <div className="text-xs text-[hsl(35_8%_58%)]">CTR</div>
            <div className="text-right text-xs font-semibold text-[hsl(40_20%_92%)]">{pct(totals.ctr)}</div>
          </div>
        </div>

        <div className="lg:col-span-2 flex flex-col gap-2 rounded-xl border border-[hsl(30_8%_20%)] bg-[hsl(30_10%_11%)]/95 p-4">
          <p className="text-sm font-semibold text-[hsl(40_20%_96%)]">Ordenação</p>
          <p className="text-xs text-[hsl(35_8%_58%)]">
            {String(sortKey)} ({sortDir}) — clique no cabeçalho
          </p>
          <p className="text-xs text-[hsl(35_8%_58%)]">
            Frequência média (ponderada): {frequencyAvg != null ? frequencyAvg.toFixed(2) : "—"}
          </p>
        </div>
      </div>

      <div className="overflow-x-auto border-t border-[hsl(30_8%_18%)] pt-4">
        <table className="w-full table-fixed border-collapse">
          <thead>
            <tr className="border-b border-[hsl(30_8%_18%)] bg-[hsl(30_10%_9%)]">
              <th className={th} onClick={() => onSort("dia")}>
                Dia
              </th>
              <th className={th} onClick={() => onSort("nomeConjunto")}>
                Conjunto
              </th>
              <th className={th} onClick={() => onSort("nomeAnuncio")}>
                Anúncio
              </th>
              <th className={th} onClick={() => onSort("alcance")}>
                Alcance
              </th>
              <th className={th} onClick={() => onSort("impressoes")}>
                Impr.
              </th>
              <th className={th} onClick={() => onSort("cliques")}>
                Cliques
              </th>
              <th className={th} onClick={() => onSort("leads")}>
                Leads
              </th>
              <th className={th} onClick={() => onSort("spend")}>
                Gasto
              </th>
              <th className={th} onClick={() => onSort("frequenciaMedia")}>
                Freq.
              </th>
              <th className={th} onClick={() => onSort("ctr")}>
                CTR
              </th>
              <th className={th} onClick={() => onSort("cpc")}>
                CPC
              </th>
              <th className={th} onClick={() => onSort("cpm")}>
                CPM
              </th>
              <th className={th} onClick={() => onSort("cpl")}>
                CPL
              </th>
            </tr>
          </thead>
          <tbody>
            {sortedRows.length === 0 && !loading ? (
              <tr>
                <td colSpan={12} className="py-6 text-center text-sm text-[hsl(35_8%_58%)]">
                  Nenhuma linha com os filtros atuais.
                </td>
              </tr>
            ) : null}
            {sortedRows.map((r, i) => (
              <tr
                key={`${r.dia}-${r.nomeConjunto}-${r.nomeAnuncio}-${i}`}
                className="border-b border-[hsl(30_8%_14%)]/80 hover:bg-[hsl(30_10%_13%)]/80"
              >
                <td className={td}>{r.dia}</td>
                <td className={`${td} max-w-[170px] truncate`} title={r.nomeConjunto}>
                  {r.nomeConjunto}
                </td>
                <td className={`${td} max-w-[160px] truncate`} title={r.nomeAnuncio}>
                  {r.nomeAnuncio}
                </td>
                <td className={td}>{r.alcance.toLocaleString("pt-BR")}</td>
                <td className={td}>{r.impressoes.toLocaleString("pt-BR")}</td>
                <td className={td}>{r.cliques.toLocaleString("pt-BR")}</td>
                <td className={td}>{r.leads.toLocaleString("pt-BR")}</td>
                <td className={td}>{money(r.spend)}</td>
                <td className={td}>
                  {r.frequenciaMedia != null ? r.frequenciaMedia.toFixed(2) : "—"}
                </td>
                <td className={td}>{pct(r.ctr)}</td>
                <td className={td}>{r.cpc != null ? money(r.cpc) : "—"}</td>
                <td className={td}>{r.cpm != null ? money(r.cpm) : "—"}</td>
                <td className={td}>{r.cpl != null ? money(r.cpl) : "—"}</td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
    </div>
  );
}
