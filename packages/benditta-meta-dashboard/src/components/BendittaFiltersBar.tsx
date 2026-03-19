"use client";

import type { BendittaFiltersState } from "../types";
import { cn } from "../cn";

const ALL = "__all__";

type Props = {
  filters: BendittaFiltersState;
  onChange: (next: BendittaFiltersState) => void;
  campaigns: string[];
  objectives: string[];
  ads: string[];
  ages: string[];
  genders: string[];
  className?: string;
};

function labelGenero(g: string) {
  if (g === ALL) return "Todos";
  if (g === "male") return "Masculino";
  if (g === "female") return "Feminino";
  if (g === "unknown") return "Desconhecido";
  return g;
}

export function BendittaFiltersBar({
  filters,
  onChange,
  campaigns,
  objectives,
  ads,
  ages,
  genders,
  className,
}: Props) {
  const sel =
    "rounded-lg border border-[hsl(30_8%_22%)] bg-[hsl(30_10%_9%)] px-3 py-2 text-sm text-[hsl(40_20%_92%)] focus:outline-none focus:ring-2 focus:ring-[hsl(32_42%_48%)]/40";

  return (
    <div
      className={cn(
        "rounded-xl border border-[hsl(30_8%_20%)] bg-[hsl(30_10%_11%)]/90 p-4 backdrop-blur-sm",
        className,
      )}
    >
      <p className="mb-3 text-xs font-semibold uppercase tracking-wider text-[hsl(35_8%_58%)]">
        Filtros
      </p>
      <div className="grid gap-3 sm:grid-cols-2 lg:grid-cols-4 xl:grid-cols-7">
        <label className="flex flex-col gap-1 text-xs text-[hsl(35_8%_58%)]">
          De
          <input
            type="date"
            className={sel}
            value={filters.dateFrom}
            onChange={(e) =>
              onChange({ ...filters, dateFrom: e.target.value })
            }
          />
        </label>
        <label className="flex flex-col gap-1 text-xs text-[hsl(35_8%_58%)]">
          Até
          <input
            type="date"
            className={sel}
            value={filters.dateTo}
            onChange={(e) =>
              onChange({ ...filters, dateTo: e.target.value })
            }
          />
        </label>
        <label className="flex flex-col gap-1 text-xs text-[hsl(35_8%_58%)]">
          Campanha (conjunto)
          <select
            className={sel}
            value={filters.campanha || ALL}
            onChange={(e) =>
              onChange({ ...filters, campanha: e.target.value })
            }
          >
            <option value={ALL}>Todas</option>
            {campaigns.map((c) => (
              <option key={c} value={c}>
                {c.length > 48 ? `${c.slice(0, 45)}…` : c}
              </option>
            ))}
          </select>
        </label>
        <label className="flex flex-col gap-1 text-xs text-[hsl(35_8%_58%)]">
          Objetivo
          <select
            className={sel}
            value={filters.objetivo || ALL}
            onChange={(e) =>
              onChange({ ...filters, objetivo: e.target.value })
            }
          >
            <option value={ALL}>Todos</option>
            {objectives.map((o) => (
              <option key={o} value={o}>
                {o}
              </option>
            ))}
          </select>
        </label>
        <label className="flex flex-col gap-1 text-xs text-[hsl(35_8%_58%)]">
          Anúncio
          <select
            className={sel}
            value={filters.anuncio || ALL}
            onChange={(e) =>
              onChange({ ...filters, anuncio: e.target.value })
            }
          >
            <option value={ALL}>Todos</option>
            {ads.map((a) => (
              <option key={a} value={a}>
                {a.length > 40 ? `${a.slice(0, 37)}…` : a}
              </option>
            ))}
          </select>
        </label>
        <label className="flex flex-col gap-1 text-xs text-[hsl(35_8%_58%)]">
          Idade
          <select
            className={sel}
            value={filters.idade || ALL}
            onChange={(e) =>
              onChange({ ...filters, idade: e.target.value })
            }
          >
            <option value={ALL}>Todas</option>
            {ages.map((x) => (
              <option key={x} value={x}>
                {x}
              </option>
            ))}
          </select>
        </label>
        <label className="flex flex-col gap-1 text-xs text-[hsl(35_8%_58%)]">
          Gênero
          <select
            className={sel}
            value={filters.genero || ALL}
            onChange={(e) =>
              onChange({ ...filters, genero: e.target.value })
            }
          >
            <option value={ALL}>Todos</option>
            {genders.map((g) => (
              <option key={g} value={g}>
                {labelGenero(g)}
              </option>
            ))}
          </select>
        </label>
      </div>
    </div>
  );
}

export { ALL as FILTER_ALL };
