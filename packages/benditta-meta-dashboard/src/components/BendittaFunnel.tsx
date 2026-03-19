"use client";

import type { TotalsAgg } from "../types";
import { bendittaTheme } from "../theme";
import { ChartCard } from "./BendittaCharts";

function money(n: number) {
  return n.toLocaleString("pt-BR", { style: "currency", currency: "BRL" });
}

export function BendittaFunnel({ t }: { t: TotalsAgg }) {
  const max = Math.max(t.impressions, 1);
  const steps = [
    {
      label: "Impressões",
      value: t.impressions,
      pct: 100,
      active: true,
      color: bendittaTheme.funnel.impression,
    },
    {
      label: "Cliques",
      value: t.clicks,
      pct: (t.clicks / max) * 100,
      active: true,
      color: bendittaTheme.funnel.click,
    },
    {
      label: "Leads",
      value: t.leads,
      pct: (t.leads / max) * 100,
      active: true,
      color: bendittaTheme.funnel.lead,
    },
    {
      label: "Oportunidades",
      value: null as number | null,
      pct: 0,
      active: false,
      color: bendittaTheme.funnel.opportunity,
    },
    {
      label: "Venda",
      value: null as number | null,
      pct: 0,
      active: false,
      color: bendittaTheme.funnel.sale,
    },
  ];

  return (
    <ChartCard
      title="Funil de marketing"
      description="Impressão até venda — as etapas finais ficam em cinza até termos dados do CRM."
    >
      <div className="mx-auto flex max-w-lg flex-col gap-2 py-2">
        {steps.map((s, i) => {
          const widthPct = s.active
            ? Math.max(18, Math.min(100, 28 + s.pct * 0.65))
            : 22;
          return (
            <div key={i} className="flex flex-col items-center gap-1">
              <div
                className="relative flex h-12 items-center justify-center rounded-md border transition-all"
                style={{
                  width: `${widthPct}%`,
                  backgroundColor: s.active ? s.color : s.color,
                  borderColor: bendittaTheme.border,
                  opacity: s.active ? 1 : 0.45,
                }}
              >
                <span className="px-2 text-center text-xs font-medium text-white drop-shadow-sm">
                  {s.label}
                </span>
              </div>
              <span className="text-[10px] text-[hsl(35_8%_58%)]">
                {s.active
                  ? `${s.value!.toLocaleString("pt-BR")}${
                      s.label === "Leads" && t.leads > 0 && t.spend > 0
                        ? ` · CPL médio ${money(t.spend / t.leads)}`
                        : ""
                    }`
                  : "Sem dados do CRM ainda"}
              </span>
            </div>
          );
        })}
      </div>
    </ChartCard>
  );
}
